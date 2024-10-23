;Exercise 3

(declare-const p Bool)
(declare-const q Bool)

;(push)
;    (assert(and (=> p q) (not (and p q))))
;    (check-sat)
;(pop)

(assert(not (and (=> p q) (not (and p q)))))
(check-sat)