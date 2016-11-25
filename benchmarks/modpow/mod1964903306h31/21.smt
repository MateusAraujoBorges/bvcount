(declare-fun h6 () (_ BitVec 32))
(assert (bvsge h6 (_ bv1 32)) )
(assert (bvsle h6 (_ bv31 32)) )

(define-fun PC21 ( ) Bool
	(and (and (and (and (and ( bvsle h6 #x0000001F) (not ( = ( bvsmod h6 #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv h6 #x00000002) #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv ( bvsdiv h6 #x00000002) #x00000002) #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv ( bvsdiv ( bvsdiv h6 #x00000002) #x00000002) #x00000002) #x00000002) #x00000001)) ( bvsle ( bvsdiv ( bvsdiv ( bvsdiv ( bvsdiv h6 #x00000002) #x00000002) #x00000002) #x00000002) #x00000000)) 
)

(assert PC21) 
(check-sat)
