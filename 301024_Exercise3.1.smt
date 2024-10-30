(declare-const a Bool)
(declare-const b Bool)
(declare-const c Bool)

;(or (and (not a) b (not c)) (and a b (not c)) (and a b c))
;(or (and a b) (and b (not c)))

(assert (not(= (or (and (not a) b (not c)) (and a b (not c)) (and a b c)) (or (and a b) (and b (not c))))))

(check-sat)