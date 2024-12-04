(declare-datatypes () ((Tile t1 t2 t3 t4 t5 t6 t7 t8 t9)))

(declare-fun Right (Tile) Int)
(declare-fun Left (Tile) Int)
(declare-fun Up (Tile) Int)
(declare-fun Down (Tile) Int)

(declare-fun Position (Tile) Int)
(assert (forall ((x Tile)) (and (<= 1 (Position x)) (<= (Position x) 9))))
(assert (forall ((x Tile) (y Tile)) (=> (not(= x y)) (not (= (Position x) (Position y))))))

(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 1) (= (Position y) 2)) (= (Right x) (Left y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 2) (= (Position y) 3)) (= (Right x) (Left y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 4) (= (Position y) 5)) (= (Right x) (Left y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 5) (= (Position y) 6)) (= (Right x) (Left y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 7) (= (Position y) 8)) (= (Right x) (Left y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 8) (= (Position y) 9)) (= (Right x) (Left y)))))

(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 1) (= (Position y) 4)) (= (Down x) (Up y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 2) (= (Position y) 5)) (= (Down x) (Up y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 3) (= (Position y) 6)) (= (Down x) (Up y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 4) (= (Position y) 7)) (= (Down x) (Up y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 5) (= (Position y) 8)) (= (Down x) (Up y)))))
(assert (forall ((x Tile) (y Tile)) (=> (and (= (Position x) 6) (= (Position y) 9)) (= (Down x) (Up y)))))

(assert (= (Left t1) 3))
(assert (= (Right t1) 8))
(assert (= (Up t1) 3))
(assert (= (Down t1) 1))

(assert (= (Left t2) 8))
(assert (= (Right t2) 1))
(assert (= (Up t2) 1))
(assert (= (Down t2) 6))

(assert (= (Left t3) 3))
(assert (= (Right t3) 8))
(assert (= (Up t3) 0))
(assert (= (Down t3) 3))

(assert (= (Left t4) 7))
(assert (= (Right t4) 2))
(assert (= (Up t4) 6))
(assert (= (Down t4) 6))

(assert (= (Left t5) 2))
(assert (= (Right t5) 5))
(assert (= (Up t5) 4))
(assert (= (Down t5) 0))

(assert (= (Left t6) 4))
(assert (= (Right t6) 7))
(assert (= (Up t6) 3))
(assert (= (Down t6) 5))

(assert (= (Left t7) 5))
(assert (= (Right t7) 3))
(assert (= (Up t7) 9))
(assert (= (Down t7) 0))

(assert (= (Left t8) 1))
(assert (= (Right t8) 1))
(assert (= (Up t8) 4))
(assert (= (Down t8) 4))

(assert (= (Left t9) 8))
(assert (= (Right t9) 8))
(assert (= (Up t9) 4))
(assert (= (Down t9) 4))

(check-sat)
(get-value ((Position t1) (Position t2) (Position t3) (Position t4) (Position t5) (Position t6) (Position t7) (Position t8) (Position t9)))