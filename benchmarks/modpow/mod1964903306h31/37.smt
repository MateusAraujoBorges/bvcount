(declare-fun h8 () (_ BitVec 32))
(assert (bvsge h8 (_ bv1 32)) )
(assert (bvsle h8 (_ bv31 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1964903306 32)) )

(define-fun PC37 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and ( bvsle h8 #x0000001F) (not ( = ( bvsmod h8 #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv h8 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvsdiv ( bvsdiv h8 #x00000002) #x00000002) #x00000000)) (not ( = ( bvsmod ( bvsdiv ( bvsdiv h8 #x00000002) #x00000002) #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv ( bvsdiv ( bvsdiv h8 #x00000002) #x00000002) #x00000002) #x00000002) #x00000001))) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

(assert (PC37 l0_0)) 
(check-sat)
