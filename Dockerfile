# if downloading things via apt-get fail, check http://stackoverflow.com/a/24991137
# or just add --dns 8.8.8.8

# TODO merge all the apt-gets

FROM ubuntu:16.04

# Configure basic utilities for apt-get
RUN apt-get update && \
	apt-get -y install software-properties-common python python-dev build-essential \
	autoconf make gcc mercurial g++ git cmake libgmp-dev 
	
RUN apt-get update && \
	apt-get -y install wget zlib1g-dev csh perl

# Define working directory.
WORKDIR /tools

# install Minisat

RUN wget http://minisat.se/downloads/minisat-2.2.0.tar.gz && \
	tar -xf minisat-2.2.0.tar.gz && \
	cd minisat && \
	export MROOT=$PWD && \
	cd simp  && \
	make rs && \
	cp minisat_static /bin/minisat && \
	make libr 

# install dsharp (with projection)
# Had to clone the dsharp-p repo to change the makefile to use minisat (faster)
RUN hg clone https://MateusAraujoBorges@bitbucket.org/MateusAraujoBorges/dsharp && \
	cd dsharp && \
	make

# install sharpSAT (with projection)
RUN git clone https://github.com/MateusAraujoBorges/sharpSAT.git && \
	cd sharpSAT/Release && \
	make 

# install samplecount (plus approxcount and cachet)
RUN wget http://www.cs.cornell.edu/~sabhar/software/samplecount/samplecount-1.0-04092007.tgz && \
	tar -xf samplecount-1.0-04092007.tgz && \
	mv samplecount-1.0-04092007 samplecount && \
	cd samplecount && \
	make

# install mbound (just a bunch of scripts to add xor constraints)
RUN wget http://www.cs.cornell.edu/~sabhar/software/xor-scripts/xor-scripts.tgz && \
	tar -xf xor-scripts.tgz

# install ApproxMC
RUN wget http://www.cs.rice.edu/CS/Verification/Projects/ApproxMC/SourceCode/ApproxMC/ApproxMC.tgz && \
	tar -xf ApproxMC.tgz && \
	cd ApproxMC && \
	rm cryptominisat doalarm && \
	cd doalarm-0.1.7 && \
    make && \
    cd ..  && \
    tar -xf cryptominisat-2.9.4.tar.gz  && \
    cd cryptominisat-2.9.4  && \
    ./configure  && \
    make  && \
    cd .. && \
	cp cryptominisat-2.9.4/cryptominisat . && \
	cp doalarm-0.1.7/doalarm .

# install CryptoMinisat (approxMC-p dep.)
RUN git clone --depth 1 https://github.com/msoos/cryptominisat.git && \
	cd cryptominisat && \
	apt-get update && \
	apt-get install -y libm4ri-dev vim-common && \
	mkdir build && \
	cd build && \
	cmake .. && \
	make -j4 && \
	make install && \
	ldconfig && \
	mv /usr/local/bin/cryptominisat4_simple /usr/local/bin/cryptominisat4

# install approxMC-p[y]
RUN wget http://formal.iti.kit.edu/weigl/software/approxmc-py/approxmc-py-3-QAPL2016.tar.gz && \
	tar -xf approxmc-py-3-QAPL2016.tar.gz && \
	cd approxmc-py && \
	apt-get update && \
	apt-get install -y python3-pip python-pip && \
	pip3 install scipy && \
	python3 setup.py build

# install samplesearch
RUN wget http://www.hlt.utdallas.edu/~vgogate/satss

# install searchtreesampler
RUN wget https://cs.stanford.edu/~ermon/code/STS.zip && \
	apt-get update && \
	apt-get install -y unzip && \
	unzip STS.zip && \
	cd STS && \
	export MROOT="$PWD" && \
	cd core && \
	make -j4

# install smtapprox
RUN git clone https://MateusAraujoBorges@bitbucket.org/kuldeepmeel/smtapproxmc.git && \
	cd smtapproxmc && \
	cd boolector-mc && \
	make && \
	cp /tools/ApproxMC/doalarm-0.1.7/doalarm /bin/

CMD ["bash"]