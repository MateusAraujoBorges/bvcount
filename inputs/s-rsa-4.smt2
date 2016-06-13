(declare-fun h4 () (_ BitVec 32))
(assert (bvsge h4 (_ bv1 32)) )
(assert (bvsle h4 (_ bv7 32)) )


(define-fun PC4 () Bool  (and (and (and (and (and ( bvsle h4 #x00000007) ( = ( bvsmod h4 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h4 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h4 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x000006B5) ( bvsmod l0_0 #x000006B5)) #x000006B5)) #x000006B5)) ( bvsle ( bvsdiv ( bvsdiv h4 #x00000002) #x00000002) #x00000000)) )

(assert PC4)