;; code for Task :
(print (+ 1 2))
;; the above expression throws an error

;; code for Task :
(format t "type something: ")
(setf input (read-line))
(if (string= input " ") (format t "nothing typed" )
(format t "you typed: ~a" input))

;; code for Task :
(let ((prg '(+ 1 n))) (when (= n 1) (print prg)))
;; The above Lisp expression first defines a very simple program,
;; and then prints the program.
