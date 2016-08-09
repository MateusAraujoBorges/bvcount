(declare-fun h1 () (_ BitVec 32))
(declare-fun h2 () (_ BitVec 32))


(define-fun PC1 () Bool  (= (bvsmod (bvxor h1 h2) #x00000002) #x00000000))

(assert PC1)


