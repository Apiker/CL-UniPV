(declare-const smallBox Int)
(declare-const mediumBox Int)
(declare-const bigBox Int)
(assert (>= smallBox 0))
(assert (>= mediumBox 0))
(assert (>= bigBox 0))

(declare-const maxNum Int)
(assert (= maxNum (+ (* 5 smallBox) (* 10 mediumBox) (* 20 bigBox))))
(assert (>= 100 (+ (* 5 smallBox) (* 10 mediumBox) (* 20 bigBox))))

(push)
    (assert (= 245 maxNum))
    (check-sat)
(pop)

(push)
    (assert (< 245 maxNum))
    (check-sat)
(pop)

(assert (> 245 maxNum))
(check-sat)

