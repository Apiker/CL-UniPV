; Some fans are violent persons
; No violent person is a true sportsman
; -------------------------------------
; No fan is a true sportsman

(declare-sort D) 
(declare-fun Fan (D) Bool) 
(declare-fun Violent (D) Bool)
(declare-fun Sportsman (D) Bool)  

(assert (exists ((x D)) (and (Fan x) (Violent x))))
(assert (forall ((x D)) (=> (Violent x) (not (Sportsman x)))))

(assert (forall ((x D)) (not (not (=> (Fan x) (not (Sportsman x)))))))
(check-sat)