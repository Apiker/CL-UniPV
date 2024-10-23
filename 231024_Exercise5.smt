;Show that three colors are not sufficient to color the South America country map

;xor3 function
(define-fun xor3 ((x Bool) (y Bool) (z Bool)) Bool (and (or x y z) ((_ at-most 1) x y z)))

;declaring countries
(declare-const venezuela1 Bool)
(declare-const venezuela2 Bool)
(declare-const venezuela3 Bool)
(assert (xor3 venezuela1 venezuela2 venezuela3))

(declare-const colombia1 Bool)
(declare-const colombia2 Bool)
(declare-const colombia3 Bool)
(assert (xor3 colombia1 colombia2 colombia3))

(declare-const ecuador1 Bool)
(declare-const ecuador2 Bool)
(declare-const ecuador3 Bool)
(assert (xor3 ecuador1 ecuador2 ecuador3))

(declare-const peru1 Bool)
(declare-const peru2 Bool)
(declare-const peru3 Bool)
(assert (xor3 peru1 peru2 peru3))

(declare-const bolivia1 Bool)
(declare-const bolivia2 Bool)
(declare-const bolivia3 Bool)
(assert (xor3 bolivia1 bolivia2 bolivia3))

(declare-const chile1 Bool)
(declare-const chile2 Bool)
(declare-const chile3 Bool)
(assert (xor3 chile1 chile2 chile3))

(declare-const argentina1 Bool)
(declare-const argentina2 Bool)
(declare-const argentina3 Bool)
(assert (xor3 argentina1 argentina2 argentina3))

(declare-const uruguay1 Bool)
(declare-const uruguay2 Bool)
(declare-const uruguay3 Bool)
(assert (xor3 uruguay1 uruguay2 uruguay3))

(declare-const paraguay1 Bool)
(declare-const paraguay2 Bool)
(declare-const paraguay3 Bool)
(assert (xor3 paraguay1 paraguay2 paraguay3))

(declare-const brazil1 Bool)
(declare-const brazil2 Bool)
(declare-const brazil3 Bool)
(assert (xor3 brazil1 brazil2 brazil3))

(declare-const french_guiana1 Bool)
(declare-const french_guiana2 Bool)
(declare-const french_guiana3 Bool)
(assert (xor3 french_guiana1 french_guiana2 french_guiana3))

(declare-const suriname1 Bool)
(declare-const suriname2 Bool)
(declare-const suriname3 Bool)
(assert (xor3 suriname1 suriname2 suriname3))

(declare-const guyana1 Bool)
(declare-const guyana2 Bool)
(declare-const guyana3 Bool)
(assert (xor3 guyana1 guyana2 guyana3))

(declare-const falkland1 Bool)
(declare-const falkland2 Bool)
(declare-const falkland3 Bool)
(assert (xor3 falkland1 falkland2 falkland3))


;checking borders
(assert (not(and venezuela1 colombia1)))
(assert (not(and venezuela2 colombia2)))
(assert (not(and venezuela3 colombia3)))
(assert (not(and venezuela1 guyana1)))
(assert (not(and venezuela2 guyana2)))
(assert (not(and venezuela3 guyana3)))
(assert (not(and venezuela1 brazil1)))
(assert (not(and venezuela2 brazil2)))
(assert (not(and venezuela3 brazil3)))

(assert (not(and colombia1 brazil1)))
(assert (not(and colombia2 brazil2)))
(assert (not(and colombia3 brazil3)))
(assert (not(and colombia1 ecuador1)))
(assert (not(and colombia2 ecuador2)))
(assert (not(and colombia3 ecuador3)))
(assert (not(and colombia1 peru1)))
(assert (not(and colombia2 peru2)))
(assert (not(and colombia3 peru3)))

(assert (not(and peru1 ecuador1)))
(assert (not(and peru2 ecuador2)))
(assert (not(and peru3 ecuador3)))
(assert (not(and peru1 brazil1)))
(assert (not(and peru2 brazil2)))
(assert (not(and peru3 brazil3)))
(assert (not(and peru1 bolivia1)))
(assert (not(and peru2 bolivia2)))
(assert (not(and peru3 bolivia3)))
(assert (not(and peru1 chile1)))
(assert (not(and peru2 chile2)))
(assert (not(and peru3 chile3)))

(assert (not(and chile1 bolivia1)))
(assert (not(and chile2 bolivia2)))
(assert (not(and chile3 bolivia3)))
(assert (not(and chile1 argentina1)))
(assert (not(and chile2 argentina2)))
(assert (not(and chile3 argentina3)))

(assert (not(and argentina1 bolivia1)))
(assert (not(and argentina2 bolivia2)))
(assert (not(and argentina3 bolivia3)))
(assert (not(and argentina1 paraguay1)))
(assert (not(and argentina2 paraguay2)))
(assert (not(and argentina3 paraguay3)))
(assert (not(and argentina1 uruguay1)))
(assert (not(and argentina2 uruguay2)))
(assert (not(and argentina3 uruguay3)))
(assert (not(and argentina1 brazil1)))
(assert (not(and argentina2 brazil2)))
(assert (not(and argentina3 brazil3)))

(assert (not(and uruguay1 brazil1)))
(assert (not(and uruguay2 brazil2)))
(assert (not(and uruguay3 brazil3)))

(assert (not(and paraguay1 brazil1)))
(assert (not(and paraguay2 brazil2)))
(assert (not(and paraguay3 brazil3)))
(assert (not(and paraguay1 bolivia1)))
(assert (not(and paraguay2 bolivia2)))
(assert (not(and paraguay3 bolivia3)))

(assert (not(and bolivia1 brazil1)))
(assert (not(and bolivia2 brazil2)))
(assert (not(and bolivia3 brazil3)))

(assert (not(and french_guiana1 brazil1)))
(assert (not(and french_guiana2 brazil2)))
(assert (not(and french_guiana3 brazil3)))
(assert (not(and french_guiana1 suriname1)))
(assert (not(and french_guiana2 suriname2)))
(assert (not(and french_guiana3 suriname3)))

(assert (not(and suriname1 brazil1)))
(assert (not(and suriname2 brazil2)))
(assert (not(and suriname3 brazil3)))

(assert (not(and guyana1 brazil1)))
(assert (not(and guyana2 brazil2)))
(assert (not(and guyana3 brazil3)))
(assert (not(and guyana1 suriname1)))
(assert (not(and guyana2 suriname2)))
(assert (not(and guyana3 suriname3)))

(assert (not(and falkland1)))
(assert (not(and falkland1)))
(assert (not(and falkland1)))

(check-sat)
;(get-model) no model since unsat