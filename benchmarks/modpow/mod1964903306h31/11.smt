(declare-fun h5 () (_ BitVec 32))
(assert (bvsge h5 (_ bv1 32)) )
(assert (bvsle h5 (_ bv31 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1964903306 32)) )

(define-fun PC11 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and (and (and ( bvsle h5 #x0000001F) ( = ( bvsmod h5 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h5 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h5 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsgt ( bvsdiv ( bvsdiv h5 #x00000002) #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv ( bvsdiv h5 #x00000002) #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) #x751E0B8A) ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsle ( bvsdiv ( bvsdiv ( bvsdiv h5 #x00000002) #x00000002) #x00000002) #x00000000)) 
)

(assert (PC11 l0_0)) 
(check-sat)
