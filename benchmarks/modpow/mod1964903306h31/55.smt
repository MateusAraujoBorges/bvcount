(declare-fun h8 () (_ BitVec 32))
(assert (bvsge h8 (_ bv1 32)) )
(assert (bvsle h8 (_ bv31 32)) )

(define-fun PC55 ( ) Bool
	(and (and (and (and ( bvsle h8 #x0000001F) (not ( = ( bvsmod h8 #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv h8 #x00000002) #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv ( bvsdiv h8 #x00000002) #x00000002) #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv ( bvsdiv ( bvsdiv h8 #x00000002) #x00000002) #x00000002) #x00000002) #x00000001))) 
)

(assert PC55) 
(check-sat)
