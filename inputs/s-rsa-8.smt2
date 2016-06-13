(declare-fun h8 () (_ BitVec 32))
(assert (bvsge h8 (_ bv1 32)) )
(assert (bvsle h8 (_ bv7 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1717 32)) )


(define-fun PC8 () Bool  (and (and (and (and ( bvsle h8 #x00000007) (not ( = ( bvsmod h8 #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv h8 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvsdiv ( bvsdiv h8 #x00000002) #x00000002) #x00000000)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5)) )

(assert PC8)