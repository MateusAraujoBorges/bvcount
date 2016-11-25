(declare-fun h4 () (_ BitVec 32))
(assert (bvsge h4 (_ bv1 32)) )
(assert (bvsle h4 (_ bv31 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1964903306 32)) )

(define-fun PC7 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and ( bvsle h4 #x0000001F) ( = ( bvsmod h4 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h4 #x00000002) #x00000000)) (not ( = ( bvsmod ( bvsdiv h4 #x00000002) #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv ( bvsdiv h4 #x00000002) #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsle ( bvsdiv ( bvsdiv ( bvsdiv h4 #x00000002) #x00000002) #x00000002) #x00000000)) 
)

(assert (PC7 l0_0)) 
(check-sat)
