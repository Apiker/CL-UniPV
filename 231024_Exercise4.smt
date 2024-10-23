;Show that three colors are sufficient to color the Central America country map

;xor3 function
(define-fun xor3 ((x Bool) (y Bool) (z Bool)) Bool (and (or x y z) ((_ at-most 1) x y z)))

;declaring countries
(declare-const belize1 Bool)
(declare-const belize2 Bool)
(declare-const belize3 Bool)
(assert (xor3 belize1 belize2 belize3))

(declare-const guatemala1 Bool)
(declare-const guatemala2 Bool)
(declare-const guatemala3 Bool)
(assert (xor3 guatemala1 guatemala2 guatemala3))

(declare-const elsalvador1 Bool)
(declare-const elsalvador2 Bool)
(declare-const elsalvador3 Bool)
(assert (xor3 elsalvador1 elsalvador2 elsalvador3))

(declare-const honduras1 Bool)
(declare-const honduras2 Bool)
(declare-const honduras3 Bool)
(assert (xor3 honduras1 honduras2 honduras3))

(declare-const nicaragua1 Bool)
(declare-const nicaragua2 Bool)
(declare-const nicaragua3 Bool)
(assert (xor3 nicaragua1 nicaragua2 nicaragua3))

(declare-const costarica1 Bool)
(declare-const costarica2 Bool)
(declare-const costarica3 Bool)
(assert (xor3 costarica1 costarica2 costarica3))

(declare-const panama1 Bool)
(declare-const panama2 Bool)
(declare-const panama3 Bool)
(assert (xor3 panama1 panama2 panama3))

;checking borders
(assert (not(and belize1 guatemala1)))
(assert (not(and belize2 guatemala2)))
(assert (not(and belize3 guatemala3)))

(assert (not(and guatemala1 elsalvador1)))
(assert (not(and guatemala2 elsalvador2)))
(assert (not(and guatemala3 elsalvador3)))

(assert (not(and guatemala1 honduras1)))
(assert (not(and guatemala2 honduras2)))
(assert (not(and guatemala3 honduras3)))

(assert (not(and elsalvador1 honduras1)))
(assert (not(and elsalvador2 honduras2)))
(assert (not(and elsalvador3 honduras3)))

(assert (not(and honduras1 nicaragua1)))
(assert (not(and honduras2 nicaragua2)))
(assert (not(and honduras3 nicaragua3)))

(assert (not(and nicaragua1 costarica1)))
(assert (not(and nicaragua2 costarica2)))
(assert (not(and nicaragua3 costarica3)))

(assert (not(and costarica1 panama1)))
(assert (not(and costarica2 panama2)))
(assert (not(and costarica3 panama3)))

(check-sat)
(get-model)


