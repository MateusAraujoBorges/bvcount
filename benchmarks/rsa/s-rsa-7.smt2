(declare-fun h7 () (_ BitVec 32))
(assert (bvsge h7 (_ bv1 32)) )
(assert (bvsle h7 (_ bv7 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1717 32)) )

(define-fun PC7 () Bool  (and (and (and (and (and (and ( bvsle h7 #x00000007) ( = ( bvsmod h7 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h7 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h7 #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5)) ( bvsgt ( bvsdiv ( bvsdiv h7 #x00000002) #x00000002) #x00000000)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5) ( bvsmod ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5)) #x000006B5)) #x000006B5)) )

(assert PC7)