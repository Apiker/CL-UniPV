(declare-datatypes () ((Task t0 t1 t2 t3 t4 t5 t6 t7)))
(declare-fun Execute (Task) Int)

(assert (forall ((x Task) (y Task)) (=> (not(= x y)) (not (= (Execute x) (Execute y))))))
(assert (forall ((x Task)) (and (<= 0 (Execute x)) (>= 7 (Execute x)))))

(assert (<= (Execute t0) (Execute t6)))

(assert (<= (Execute t1) (Execute t2)))
(assert (<= (Execute t1) (Execute t4)))
(assert (<= (Execute t1) (Execute t6)))

(assert (<= (Execute t3) (Execute t0)))
(assert (<= (Execute t3) (Execute t4)))

(assert (<= (Execute t5) (Execute t1)))

(assert (<= (Execute t7) (Execute t0)))
(assert (<= (Execute t7) (Execute t1)))

(check-sat)
(get-model)