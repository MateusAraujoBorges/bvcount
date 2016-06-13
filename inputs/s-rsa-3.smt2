(declare-fun h3 () (_ BitVec 32))
(assert (bvsge h3 (_ bv1 32)) )
(assert (bvsle h3 (_ bv7 32)) )

(define-fun PC3 () Bool  (and (and (and (and (and ( bvsle h3 #x00000007) ( = ( bvsmod h3 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h3 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h3 #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5)) ( bvsle ( bvsdiv ( bvsdiv h3 #x00000002) #x00000002) #x00000000)) )

(assert PC3)