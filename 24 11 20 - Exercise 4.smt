; Antonio, Michele and Giovanni are members of the Italian Alpine Club
; Any member of the club who is not a skier is a climber
; Climbers do not like rain
; Any person who does not love snow is not a skier
; Antonio does not love what Michele loves
; Antonio loves rain and snow
; Is there a CAI member who is a skier but not a climber?

(declare-sort M)
(declare-sort W)

(declare-const antonio M)
(declare-const michele M)
(declare-const giovanni M)

(declare-const rain W)
(declare-const snow W)

(declare-fun Climber (M) Bool)
(declare-fun Skier (M) Bool)
(declare-fun Likes (M W) Bool)


(assert (forall ((x M)) (= (not (Skier x)) (Climber x))))
(assert (forall ((x M)) (=> (Climber x) (not (Likes x rain)))))
(assert (forall ((x M)) (=> (not (Likes x snow)) (not (Skier x)))))

(assert (forall ((y W)) (= (not (Likes antonio y)) (Likes michele y))))
(assert (and (Likes antonio rain) (Likes antonio snow)))

(push)
    (assert (exists ((x M)) (= (Skier x) (not (Climber x)))))
    (check-sat)
    (get-value ((Climber antonio) (Skier antonio) (Climber michele) (Skier michele) (Climber giovanni) (Skier giovanni)))
(pop)

(assert (not (exists ((x M)) (= (Skier x) (not (Climber x))))))
(check-sat)
; (get-value ((Climber antonio) (Climber michele) (Climber giovanni))) >> no model bc unsat