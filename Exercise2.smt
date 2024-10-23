;exercise 2

(declare-const p Bool)
(declare-const q Bool)

(assert(not(=> (=> (=> p q) p) p)))

(check-sat)