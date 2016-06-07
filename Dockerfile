# if downloading things via apt-get fail, check http://stackoverflow.com/a/24991137
# or just add --dns 8.8.8.8

FROM ubuntu:16.04

# Configure basic utilities for apt-get
RUN apt-get update && \
	apt-get -y install software-properties-common python python-dev build-essential \
	autoconf make gcc mercurial g++ git cmake libgmp-dev 
	
RUN apt-get update && \
	apt-get -y install wget zlib1g-dev

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

# install sharpSat (with projection)
RUN hg clone https://MateusAraujoBorges@bitbucket.org/MateusAraujoBorges/dsharp && \
	cd dsharp && \
	make



# # Install cvc4
# RUN echo "deb http://cvc4.cs.nyu.edu/debian/ unstable/" >> /etc/apt/sources.list
# RUN echo "deb-src http://cvc4.cs.nyu.edu/debian/ unstable/" >> /etc/apt/sources.list
# RUN apt-get update && \
# 	apt-get -y install cvc4 --force-yes


# # Install maven, gradle, git, python, pip, nano, vim
# # use gradle ppa (ubuntu repo is too old)
# RUN echo 'deb http://ppa.launchpad.net/cwchien/gradle/ubuntu vivid main' >> /etc/apt/sources.list
# RUN echo 'deb-src http://ppa.launchpad.net/cwchien/gradle/ubuntu vivid main' >> /etc/apt/sources.list

# RUN	apt-get update && apt-get install -y --force-yes maven git gradle python python-pip python-dev build-essential autoconf autotools-dev m4 libtool nano vim

# # Install python modules
# RUN pip install --upgrade pip numpy ghalton shutilwhich

# # Install barvinok
# RUN apt-get -y install build-essential libgmp-dev libntl-dev libglpk-dev --force-yes
# RUN git clone http://repo.or.cz/barvinok.git
# RUN cd barvinok && \
# 	autoreconf --install && \
# 	./get_submodules.sh && \
# 	sh autogen.sh && \
# 	./configure && \
# 	make && \
# 	make install
# #RUN wget http://barvinok.gforge.inria.fr/barvinok-0.39.tar.xz && \
# #	tar -xf barvinok-0.39.tar.xz && \
# #	mv barvinok-0.39 barvinok
# #RUN cd barvinok && \
# #	./configure && \
# #	make && \
# #	make install

# #add github deploy keys, pull repositories
# RUN mkdir /root/.ssh
# ADD repo* /root/.ssh/
# ADD githubKey /root/.ssh/
# RUN chmod 600 /root/.ssh/repo*

# RUN cat /root/.ssh/githubKey >> /root/.ssh/known_hosts

# RUN ssh-agent bash -c 'ssh-add /root/.ssh/repo-key; git clone git@github.com:RSSRuntimeGroup/PathConditionsProbability.git'
# RUN ssh-agent bash -c  'ssh-add /root/.ssh/repo-key-qjanala; git clone git@github.com:RSSRuntimeGroup/Quantolic-janala2.git; cd Quantolic-janala2; git checkout janala-update'
# RUN git clone https://github.com/brettwooldridge/NuProcess.git



# # compile, set up local variables, install

# RUN cd NuProcess && \
# 	mvn install -DskipTests=true
# RUN cd PathConditionsProbability/PathConditionsProbability && \
# 	mvn dependency:build-classpath -Dmdep.outputFile=classpath && \
# 	mvn clean antlr4:antlr4 generate-sources compile dependency:copy-dependencies package assembly:single install
# RUN cd Quantolic-janala2 && \
# 	gradle assemble jar integrationTest copyDependencies && \
# 	mkdir results

# ENV LD_LIBRARY_PATH=/usr/local/lib/

CMD ["bash"]