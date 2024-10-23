;Exercise 4

(declare-const e Bool)
(declare-const s Bool)
(declare-const j Bool)

(assert(and (and (or e s) (not(or e s)) (=> s j ) (not j))))
(assert(not e))

(check-sat)