(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv834443 32)) )

(declare-fun h5 () (_ BitVec 32))
(assert (bvsge h5 (_ bv1 32)) )
(assert (bvsle h5 (_ bv31 32)) )

(define-fun PC9 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and (and (and ( bvsle h5 #x0000001F) ( = ( bvsmod h5 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h5 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h5 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) ( bvsgt ( bvsdiv ( bvsdiv h5 #x00000002) #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv ( bvsdiv h5 #x00000002) #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B) #x000CBB8B) ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000CBB8B) ( bvsmod l0_0 #x000CBB8B)) #x000CBB8B)) #x000CBB8B) #x000CBB8B)) #x000CBB8B)) #x000CBB8B)) ( bvsle ( bvsdiv ( bvsdiv ( bvsdiv h5 #x00000002) #x00000002) #x00000002) #x00000000)) 
)

(assert (PC9 l0_0)) 
(check-sat)
