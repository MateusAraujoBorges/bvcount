(declare-fun y0 () (_ BitVec 32))
(declare-fun y1 () (_ BitVec 32))
(declare-fun y2 () (_ BitVec 32))
(declare-fun x0 () (_ BitVec 32))
(declare-fun x1 () (_ BitVec 32))
(declare-fun x2 () (_ BitVec 32))
(assert (bvsge y0 #x00000001))
(assert (bvsle y0 #x0000007f))
(assert (bvsge y1 #x00000001))
(assert (bvsle y1 #x0000007f))
(assert (bvsge y2 #x00000001))
(assert (bvsle y2 #x0000007f))
(assert (bvsge x0 #x00000001))
(assert (bvsle x0 #x0000007f))
(assert (bvsge x1 #x00000001))
(assert (bvsle x1 #x0000007f))
(assert (bvsge x2 #x00000001))
(assert (bvsle x2 #x0000007f))
(assert (let ((a!1 (bvand #xffffffff
                  (bvor (bvshl (bvand #x000000ff y0) #x00000010)
                        (bvshl (bvand #x000000ff y1) #x00000008)
                        (bvand #x000000ff y2))))
      (a!2 (bvand #xffffffff
                  (bvor (bvshl (bvand #x000000ff x0) #x00000010)
                        (bvshl (bvand #x000000ff x1) #x00000008)
                        (bvand #x000000ff x2)))))
  (= #x00000000 (bvlshr (bvmul a!1 a!2) #x00000020))))
(assert (let ((a!1 (bvshl (bvor (bvshl (bvand #x000000ff y0) #x00000010)
                        (bvshl (bvand #x000000ff y1) #x00000008)
                        (bvand #x000000ff y2))
                  #x00000008)))
(let ((a!2 (bvsub #x00000020
                  (bvsub #x0000000d (bvlshr (bvshl a!1 #x00000004) #x0000001f)))))
(let ((a!3 (bvlshr (bvmul #x0000cccd (bvlshr (bvmul #x0000cccd a!2) #x00000013))
                   #x00000013)))
  (= #x00000001
     (bvsub (bvlshr (bvmul #x0000cccd a!2) #x00000013)
            (bvadd (bvshl a!3 #x00000001) (bvshl a!3 #x00000003))))))))
(assert (let ((a!1 (bvshl (bvor (bvshl (bvand #x000000ff y0) #x00000010)
                        (bvshl (bvand #x000000ff y1) #x00000008)
                        (bvand #x000000ff y2))
                  #x00000008)))
(let ((a!2 (bvsub #x00000020
                  (bvsub #x0000000d (bvlshr (bvshl a!1 #x00000004) #x0000001f)))))
(let ((a!3 (bvadd (bvshl (bvlshr (bvmul #x0000cccd a!2) #x00000013) #x00000001)
                  (bvshl (bvlshr (bvmul #x0000cccd a!2) #x00000013) #x00000003))))
  (= #x00000009 (bvsub a!2 a!3))))))
(assert (let ((a!1 (bvshl (bvor (bvshl (bvand #x000000ff y0) #x00000010)
                        (bvshl (bvand #x000000ff y1) #x00000008)
                        (bvand #x000000ff y2))
                  #x00000008)))
  (not (= (bvlshr (bvshl a!1 #x00000004) #x0000001e) #x00000000))))
(assert (let ((a!1 (bvshl (bvor (bvshl (bvand #x000000ff y0) #x00000010)
                        (bvshl (bvand #x000000ff y1) #x00000008)
                        (bvand #x000000ff y2))
                  #x00000008)))
  (= (bvlshr a!1 #x0000001c) #x00000000)))
(assert (let ((a!1 (bvshl (bvor (bvshl (bvand #x000000ff x0) #x00000010)
                        (bvshl (bvand #x000000ff x1) #x00000008)
                        (bvand #x000000ff x2))
                  #x00000008)))
(let ((a!2 (bvsub #x00000020
                  (bvsub #x0000000b (bvlshr (bvshl a!1 #x00000002) #x0000001f)))))
(let ((a!3 (bvlshr (bvmul #x0000cccd (bvlshr (bvmul #x0000cccd a!2) #x00000013))
                   #x00000013)))
  (= #x00000002
     (bvsub (bvlshr (bvmul #x0000cccd a!2) #x00000013)
            (bvadd (bvshl a!3 #x00000001) (bvshl a!3 #x00000003))))))))
(assert (let ((a!1 (bvshl (bvor (bvshl (bvand #x000000ff x0) #x00000010)
                        (bvshl (bvand #x000000ff x1) #x00000008)
                        (bvand #x000000ff x2))
                  #x00000008)))
(let ((a!2 (bvsub #x00000020
                  (bvsub #x0000000b (bvlshr (bvshl a!1 #x00000002) #x0000001f)))))
(let ((a!3 (bvadd (bvshl (bvlshr (bvmul #x0000cccd a!2) #x00000013) #x00000001)
                  (bvshl (bvlshr (bvmul #x0000cccd a!2) #x00000013) #x00000003))))
  (= #x00000002 (bvsub a!2 a!3))))))
(assert (let ((a!1 (bvshl (bvor (bvshl (bvand #x000000ff x0) #x00000010)
                        (bvshl (bvand #x000000ff x1) #x00000008)
                        (bvand #x000000ff x2))
                  #x00000008)))
  (= (bvlshr a!1 #x0000001e) #x00000000)))
(assert (let ((a!1 (bvshl (bvor (bvshl (bvand #x000000ff x0) #x00000010)
                        (bvshl (bvand #x000000ff x1) #x00000008)
                        (bvand #x000000ff x2))
                  #x00000008)))
  (not (= (bvlshr a!1 #x0000001c) #x00000000))))


(check-sat)


