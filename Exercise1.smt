;exercises 1 using push/pop

(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

;formula 1
(push)
    (assert (=> (=> p q) (not p)))
    (check-sat)
(pop)

;formula 2
(push)
    (assert (and (or p q) (=> p q) (or (not q) p) (not(and p q))))
    (check-sat)
(pop)

;formula 3
(assert (and (or (not p) (not q)) (or (not p) r) (or (not q) r)))
(check-sat)
(get-model)