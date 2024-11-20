(declare-sort D)
(declare-const Z D)
(declare-const A D)
(declare-fun Knight (D) Bool)
(declare-fun Knave (D) Bool)
(assert (forall ((x D)) (= (not (Knight x)) (Knave x)))) 

(assert (= (Knight Z) (or (Knight Z) (Knave A))))
(assert (= (Knight A) (= (Knight Z) (not (Knight A)))))

(check-sat)
(get-value ((Knight Z) (Knight A)))