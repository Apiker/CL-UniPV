; All cats are felines
; All felines have whiskers.
; ---------------------------------------------
; If Tom doesn’t have whiskers he is not a cat.

(declare-sort D) 
(declare-fun Cats (D) Bool) 
(declare-fun Felines (D) Bool)
(declare-fun Whiskers (D) Bool)
(declare-const t D)

(assert (forall ((x D)) (=> (Cats x) (Felines x))))
(assert (forall ((x D)) (=> (Felines x) (Whiskers x))))

(assert (not (=> (not(Whiskers t)) (not (Cats t)))))
(check-sat)