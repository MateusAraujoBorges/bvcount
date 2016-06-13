(declare-fun h12 () (_ BitVec 32))
(assert (bvsge h12 (_ bv1 32)) )
(assert (bvsle h12 (_ bv7 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1717 32)) )

(define-fun PC12 () Bool  (and (and (and (and ( bvsle h12 #x00000007) (not ( = ( bvsmod h12 #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv h12 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvsdiv ( bvsdiv h12 #x00000002) #x00000002) #x00000000)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5)) )

(assert PC12)