;If Paul joins our group, Mary and John will join too.
;If John joins the group, neither Peter nor Andrew will join.
;--------------------------------------------------------------------
;If either Peter or Andrew join the group, Paul does not.

(declare-const p Bool)
(declare-const m Bool)
(declare-const j Bool)
(declare-const t Bool)
(declare-const a Bool)

(assert (=> p (and m j))) 
(assert (=> j (not (or t a))))
(assert (not (=> (or t a) (not p))))

(check-sat)