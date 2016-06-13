(declare-fun h1 () (_ BitVec 32))
(assert (bvsge h1 (_ bv1 32)) )
(assert (bvsle h1 (_ bv7 32)) )

(define-fun PC1 () Bool  (and (and ( bvsle h1 #x00000007) ( = ( bvsmod h1 #x00000002) #x00000001)) ( bvsle ( bvsdiv h1 #x00000002) #x00000000)) )

(assert PC1)

