(set-option :smt.arith.solver 1) ; enables difference logic solver for sparse constraints
(set-option :smt.arith.solver 3) ; enables difference logic solver for dense constraints

(set-option :smt.macro-finder true)

(declare-fun h1 () (_ BitVec 32))
(assert (bvsge h1 (_ bv1 32)) )
(assert (bvsle h1 (_ bv7 32)) )

(declare-fun h2 () (_ BitVec 32))
(assert (bvsge h2 (_ bv1 32)) )
(assert (bvsle h2 (_ bv7 32)) )

(declare-fun h3 () (_ BitVec 32))
(assert (bvsge h3 (_ bv1 32)) )
(assert (bvsle h3 (_ bv7 32)) )

(declare-fun h4 () (_ BitVec 32))
(assert (bvsge h4 (_ bv1 32)) )
(assert (bvsle h4 (_ bv7 32)) )

(declare-fun h5 () (_ BitVec 32))
(assert (bvsge h5 (_ bv1 32)) )
(assert (bvsle h5 (_ bv7 32)) )

(declare-fun h6 () (_ BitVec 32))
(assert (bvsge h6 (_ bv1 32)) )
(assert (bvsle h6 (_ bv7 32)) )

(declare-fun l0_0 () (_ BitVec 32))
(assert (bvsge l0_0 (_ bv1 32)) )
(assert (bvsle l0_0 (_ bv1964903306 32)) )

(define-fun PC1 ( ) Bool
	(and (and ( bvsle h1 #x00000007) ( = ( bvsmod h1 #x00000002) #x00000001)) ( bvsle ( bvsdiv h1 #x00000002) #x00000000)) 
)

(define-fun PC2 ( ) Bool
	(and (and (and ( bvsle h2 #x00000007) (not ( = ( bvsmod h2 #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv h2 #x00000002) #x00000002) #x00000001)) ( bvsle ( bvsdiv ( bvsdiv h2 #x00000002) #x00000002) #x00000000)) 
)

(define-fun PC3 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and ( bvsle h2 #x00000007) ( = ( bvsmod h2 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h2 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h2 #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsle ( bvsdiv ( bvsdiv h2 #x00000002) #x00000002) #x00000000)) 
)

(define-fun PC4 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and ( bvsle h3 #x00000007) ( = ( bvsmod h3 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h3 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h3 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsle ( bvsdiv ( bvsdiv h3 #x00000002) #x00000002) #x00000000)) 
)

(define-fun PC5 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and ( bvsle h4 #x00000007) ( = ( bvsmod h4 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h4 #x00000002) #x00000000)) (not ( = ( bvsmod ( bvsdiv h4 #x00000002) #x00000002) #x00000001))) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

(define-fun PC6 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and ( bvsle h4 #x00000007) ( = ( bvsmod h4 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h4 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h4 #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsgt ( bvsdiv ( bvsdiv h4 #x00000002) #x00000002) #x00000000)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

(define-fun PC7 ( ) Bool
	(and (and ( bvsle h4 #x00000007) (not ( = ( bvsmod h4 #x00000002) #x00000001))) (not ( = ( bvsmod ( bvsdiv h4 #x00000002) #x00000002) #x00000001))) 
)

(define-fun PC8 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and ( bvsle h4 #x00000007) (not ( = ( bvsmod h4 #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv h4 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvsdiv ( bvsdiv h4 #x00000002) #x00000002) #x00000000)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

(define-fun PC9 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and ( bvsle h5 #x00000007) ( = ( bvsmod h5 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h5 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h5 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsgt ( bvsdiv ( bvsdiv h5 #x00000002) #x00000002) #x00000000)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) #x751E0B8A) ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

(define-fun PC10 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and ( bvsle h5 #x00000007) ( = ( bvsmod h5 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h5 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h5 #x00000002) #x00000002) #x00000001)) ( bvsle ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsgt ( bvsdiv ( bvsdiv h5 #x00000002) #x00000002) #x00000000)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

(define-fun PC11 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and ( bvsle h5 #x00000007) (not ( = ( bvsmod h5 #x00000002) #x00000001))) ( = ( bvsmod ( bvsdiv h5 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvsdiv ( bvsdiv h5 #x00000002) #x00000002) #x00000000)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

(define-fun PC12 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and ( bvsle h5 #x00000007) ( = ( bvsmod h5 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h5 #x00000002) #x00000000)) (not ( = ( bvsmod ( bvsdiv h5 #x00000002) #x00000002) #x00000001))) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A) ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

(define-fun PC13 ( (l0_0 (_ BitVec 32)) ) Bool
	(and (and (and (and (and (and ( bvsle h6 #x00000007) ( = ( bvsmod h6 #x00000002) #x00000001)) ( bvsgt ( bvsdiv h6 #x00000002) #x00000000)) ( = ( bvsmod ( bvsdiv h6 #x00000002) #x00000002) #x00000001)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) ( bvsgt ( bvsdiv ( bvsdiv h6 #x00000002) #x00000002) #x00000000)) ( bvsgt ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) #x751E0B8A) ( bvsmod ( bvsub ( bvmul l0_0 ( bvsmod ( bvmul ( bvsmod l0_0 #x751E0B8A) ( bvsmod l0_0 #x751E0B8A)) #x751E0B8A)) #x751E0B8A) #x751E0B8A)) #x751E0B8A)) #x751E0B8A)) 
)

;(assert PC1)
;(assert (PC2 l0_0))
(assert (PC13 l0_0))

(check-sat)
(get-model)

