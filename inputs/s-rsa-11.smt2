(declare-fun h11 () (_ BitVec 32))
(assert (bvsge h11 (_ bv1 32)) )
(assert (bvsle h11 (_ bv7 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1717 32)) )

(define-fun PC11 () Bool  (and (and (and (and (and (and ( bvsle h11 #x00000007) ( = ( bvsmod h11 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h11 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h11 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5)) ( bvsgt ( bvsdiv ( bvsdiv h11 #x00000002) #x00000002) #x00000000)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5) #x000006B5) ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5) #x000006B5)) #x000006B5)) #x000006B5)) )

(assert PC11)