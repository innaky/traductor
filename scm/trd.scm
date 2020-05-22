(import (chicken process-context))
(import format)

(define *lang* '((#\e "/¯¯-") (#\a "///") (#\o "-//") (#\s "-//-") (#\r "//¯/") (#\n "¯//-/")
		      (#\i "/-/¯¯") (#\d "/¯/¯") (#\l "/ _//") (#\c "¯¯/-") (#\t "-//¯") (#\u "///¯")
		      (#\m "/") (#\p "///-") (#\b "//¯") (#\g "/ /") (#\v "/¯/¯-") (#\y "//")
		      (#\q "--//") (#\h "/¯-¯/") (#\f "¯/") (#\z "//_/") (#\j "/") (#\ñ "//-")
		      (#\x "/¯¯--_/") (#\k "--/") (#\w "-")))

(define (get-char elem lst-of-duples)
  (if (null? lst-of-duples)
      ""
      (if (equal? (caar lst-of-duples) elem)
	  (cadar lst-of-duples)
	  (get-char elem (cdr lst-of-duples)))))

(define (string-to-charlst string . position)
  (let ((pos (if (null? position) 0 (car position))))
    (if (not (number? pos))
	(format #t "~A is not type number~%" pos)
	(if (or (>= pos (string-length string)) (< pos 0))
	    '()
	    (let ((end (string-length string)))
	      (if (equal? pos end)
		  '()
		  (cons (string-ref string pos)
			(string-to-charlst string (+ 1 pos)))))))))

(define (trad-lst lst-chars)
  (if (null? lst-chars)
      '()
      (cons (get-char (car lst-chars) *lang*)
	    (trad-lst (cdr lst-chars)))))

(define (trad lst-strs)
  (if (null? lst-strs)
      ""
      (string-append (car lst-strs) (trad (cdr lst-strs)))))

(define (line-trad line)
  (trad (trad-lst (string-to-charlst line))))

(let ((arg (car (command-line-arguments))))
  (display
   (line-trad arg))
   (newline))
  
