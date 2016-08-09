(declare-fun h6 () (_ BitVec 32))
(assert (bvsge h6 (_ bv1 32)) )
(assert (bvsle h6 (_ bv7 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1717 32)) )

(define-fun PC6 () Bool  (and (and (and (and ( bvsle h6 #x00000007) ( = ( bvsmod h6 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h6 #x00000002) #x00000000)) (not ( = ( bvsmod ( bvsdiv h6 #x00000002) #x00000002) #x00000001))) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5) ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5)) #x000006B5)) )

(assert PC6)