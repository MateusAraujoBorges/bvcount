(declare-fun h4 () (_ BitVec 32))
(assert (bvsge h4 (_ bv1 32)) )
(assert (bvsle h4 (_ bv7 32)) )

(define-fun PC6 ( ) Bool
	(and (and ( bvsle h4 #x00000007) (not ( = ( bvsmod h4 #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv h4 #x00000002) #x00000002) #x00000001))) 
)

(assert PC6) 
(check-sat)
