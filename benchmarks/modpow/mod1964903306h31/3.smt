(declare-fun h2 () (_ BitVec 32))
(assert (bvsge h2 (_ bv1 32)) )
(assert (bvsle h2 (_ bv31 32)) )

(define-fun PC3 ( ) Bool
	(and (and (and ( bvsle h2 #x0000001F) (not ( = ( bvsmod h2 #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv h2 #x00000002) #x00000002) #x00000001)) ( bvsle ( bvsdiv ( bvsdiv h2 #x00000002) #x00000002) #x00000000)) 
)

(assert PC3) 
(check-sat)
