(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv834443 32)) )

(declare-fun h4 () (_ BitVec 32))
(assert (bvsge h4 (_ bv1 32)) )
(assert (bvsle h4 (_ bv7 32)) )

(define-fun PC5 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and ( bvsle h4 #x00000007) ( = ( bvsmod h4 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h4 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h4 #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) ( bvsgt ( bvsdiv ( bvsdiv h4 #x00000002) #x00000002) #x00000000)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B) ( bvsmod ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) 
)

(assert (PC5 l0_0)) 
(check-sat)
