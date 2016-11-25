(declare-fun h1 () (_ BitVec 32))
(assert (bvsge h1 (_ bv1 32)) )
(assert (bvsle h1 (_ bv31 32)) )

(define-fun PC1 ( ) Bool
	(and (and ( bvsle h1 #x0000001F) ( = ( bvsmod h1 #x00000002) #x00000001)) ( bvsle ( bvsdiv h1 #x00000002) #x00000000)) 
)

(assert PC1) 
(check-sat)
