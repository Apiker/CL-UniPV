;(a) Golden casket: “the portrait is in this casket”
;(b) Silver casket: “the portrait is not in this casket”
;(c) Lead casket: “the portrait is not in the gold casket”.

(declare-const g Bool)
(declare-const s Bool)
(declare-const l Bool)
;(declare-const t Bool)
;(declare-const a Bool)

;xor3 function
(define-fun xor3 ((x Bool) (y Bool) (z Bool)) Bool (and (or x y z) ((_ at-most 1) x y z)))

(assert (xor3 g s l))
(assert ((_ at-most 1) g (not s) (not g)))

(check-sat)
(get-model)