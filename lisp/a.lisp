(print "hello welcome to this program")




(defmacro salam(input)
  (print input)
  (setq input 10)
)

(setq a 12)
(print a)
(salam a)
(print a)


(defmacro setTo10(num)
  (setq num 10)
  (print num)
)

(setq x 25)
(print x)
(setTo10 x)
(print x)
