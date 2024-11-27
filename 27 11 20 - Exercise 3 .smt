(declare-datatypes () ((P andrea beatrice carlo davide)))
(declare-fun Honest (P) Bool)
(declare-fun Liar (P) Bool)
(declare-fun Ate (P) Bool)
(assert (forall ((x P)) (= (not (Honest x)) (Liar x)))) 

(assert (= (Honest andrea) (Ate beatrice)))
(assert (= (Honest beatrice) (Ate davide)))
(assert (= (Honest carlo) (not (Ate carlo))))
(assert (= (Honest davide) (Liar beatrice)))


(assert ((_ at-most 1) (Honest andrea) (Honest beatrice) (Honest carlo) (Honest davide)))
(assert ((_ at-most 1) (Ate andrea) (Ate beatrice) (Ate carlo) (Ate davide)))

(check-sat)
(echo "")
(echo "Chi è onesto:")
(get-value ((Honest andrea) (Honest beatrice) (Honest carlo) (Honest davide)))

(echo "")
(echo "Chi ha mangiato le salsicce:")
(get-value ((Ate andrea) (Ate beatrice) (Ate carlo) (Ate davide)))