(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1717 32)) )

(declare-fun h13 () (_ BitVec 32))
(assert (bvsge h13 (_ bv1 32)) )
(assert (bvsle h13 (_ bv7 32)) )

(define-fun PC13 () Bool  (and (and (and (and (and (and ( bvsle h13 #x00000007) ( = ( bvsmod h13 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h13 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h13 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5)) ( bvsgt ( bvsdiv ( bvsdiv h13 #x00000002) #x00000002) #x00000000)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5) #x000006B5) ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5) #x000006B5)) #x000006B5)) #x000006B5)) )

(assert PC13)