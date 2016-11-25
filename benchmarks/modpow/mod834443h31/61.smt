(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv834443 32)) )

(declare-fun h9 () (_ BitVec 32))
(assert (bvsge h9 (_ bv1 32)) )
(assert (bvsle h9 (_ bv31 32)) )

(define-fun PC61 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and ( bvsle h9 #x0000001F) (not ( = ( bvsmod h9 #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv h9 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvsdiv ( bvsdiv h9 #x00000002) #x00000002) #x00000000)) (not ( = ( bvsmod ( bvsdiv ( bvsdiv h9 #x00000002) #x00000002) #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv ( bvsdiv ( bvsdiv h9 #x00000002) #x00000002) #x00000002) #x00000002) #x00000001))) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B) ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B) ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B) ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) 
)

(assert (PC61 l0_0)) 
(check-sat)
