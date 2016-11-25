(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1964903306 32)) )

(declare-fun h9 () (_ BitVec 32))
(assert (bvsge h9 (_ bv1 32)) )
(assert (bvsle h9 (_ bv31 32)) )

(define-fun PC85 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and (and (and ( bvsle h9 #x0000001F) ( = ( bvsmod h9 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h9 #x00000002) #x00000000)) (not ( = ( bvsmod ( bvsdiv h9 #x00000002) #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv ( bvsdiv h9 #x00000002) #x00000002) #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv ( bvsdiv ( bvsdiv h9 #x00000002) #x00000002) #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsgt ( bvsdiv ( bvsdiv ( bvsdiv ( bvsdiv h9 #x00000002) #x00000002) #x00000002) #x00000002) #x00000000)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A) #x751E0B8A) ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

(assert (PC85 l0_0)) 
(check-sat)
