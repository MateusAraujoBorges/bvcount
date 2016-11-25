(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv834443 32)) )

(declare-fun h5 () (_ BitVec 32))
(assert (bvsge h5 (_ bv1 32)) )
(assert (bvsle h5 (_ bv7 32)) )

(define-fun PC11 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and ( bvsle h5 #x00000007) ( = ( bvsmod h5 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h5 #x00000002) #x00000000)) (not ( = ( bvsmod ( bvsdiv h5 #x00000002) #x00000002) #x00000001))) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B) ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) 
)

(assert (PC11 l0_0)) 
(check-sat)
