(declare-const a Bool)
(declare-const b Bool)
(declare-const c Bool)

(define-fun func1 () Bool (or (and (not a) b (not c)) (and a b (not c)) (and a b c)))
(define-fun func2 () Bool (or (and a b) (and b (not c))))

(assert (not(= func1 func2)))

(check-sat)