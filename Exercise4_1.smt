;Exercise 4

(declare-const e Bool)
(declare-const s Bool)
(declare-const j Bool)

(assert(and (or e s) (not(or e s))))
(assert(=> s j ))
(assert(not j))

(assert(not e))

(check-sat)