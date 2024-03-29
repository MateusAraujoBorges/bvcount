(declare-fun h7 () (_ BitVec 32))
(assert (bvsge h7 (_ bv1 32)) )
(assert (bvsle h7 (_ bv31 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv834443 32)) )

(define-fun PC28 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and (and (and (and ( bvsle h7 #x0000001F) (not ( = ( bvsmod h7 #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv h7 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvsdiv ( bvsdiv h7 #x00000002) #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv ( bvsdiv h7 #x00000002) #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) ( bvsgt ( bvsdiv ( bvsdiv ( bvsdiv h7 #x00000002) #x00000002) #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv ( bvsdiv ( bvsdiv h7 #x00000002) #x00000002) #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B) #x000CBB8B) ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B) #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) ( bvsle ( bvsdiv ( bvsdiv ( bvsdiv ( bvsdiv h7 #x00000002) #x00000002) #x00000002) #x00000002) #x00000000)) 
)

(assert (PC28 l0_0)) 
(check-sat)
