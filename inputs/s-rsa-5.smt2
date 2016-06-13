(declare-fun h5 () (_ BitVec 32))
(assert (bvsge h5 (_ bv1 32)) )
(assert (bvsle h5 (_ bv7 32)) )

(define-fun PC5 () Bool  (and (and ( bvsle h5 #x00000007) (not ( = ( bvsmod h5 #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv h5 #x00000002) #x00000002) #x00000001))) )

(assert PC5)