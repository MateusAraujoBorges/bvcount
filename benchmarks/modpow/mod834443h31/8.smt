(declare-fun h4 () (_ BitVec 32))
(assert (bvsge h4 (_ bv1 32)) )
(assert (bvsle h4 (_ bv31 32)) )

(define-fun PC8 ( ) Bool
	(and (and (and (and ( bvsle h4 #x0000001F) (not ( = ( bvsmod h4 #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv h4 #x00000002) #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv ( bvsdiv h4 #x00000002) #x00000002) #x00000002) #x00000001)) ( bvsle ( bvsdiv ( bvsdiv ( bvsdiv h4 #x00000002) #x00000002) #x00000002) #x00000000)) 
)

(assert PC8) 
(check-sat)
