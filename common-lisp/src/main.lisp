(defpackage traductor
  (:use :cl)
  (:export :file-trad))

(in-package :traductor)

(defparameter *lang* '((#\e "/¯¯-") (#\a "///") (#\o "-//") (#\s "-//-") (#\r "//¯/") (#\n "¯//-/")
		      (#\i "/-/¯¯") (#\d "/¯/¯") (#\l "/ _//") (#\c "¯¯/-") (#\t "-//¯") (#\u "///¯")
		      (#\m "/") (#\p "///-") (#\b "//¯") (#\g "/ /") (#\v "/¯/¯-") (#\y "//")
		      (#\q "--//") (#\h "/¯-¯/") (#\f "¯/") (#\z "//_/") (#\j "/") (#\ñ "//-")
		       (#\x "/¯¯--_/") (#\k "--/") (#\w "-")))

(defun get-char (elem lst-of-duples)
  (if (equal nil lst-of-duples)
      nil
      (if (equal (caar lst-of-duples) elem)
	  (cadar lst-of-duples)
	  (get-char elem (cdr lst-of-duples)))))

(defun string-to-charlst (long-str &optional (position 0))
  "The input is a string the output a list of characters, run from character 0
for default or for any other character, minor to length string."
  (if (not (numberp position))
      (format t "~A is not type numb~%" position)
      (if (or (>= position (length long-str)) (< position 0))
	  nil
	  (let ((end (length long-str)))
	    (if (equal position end)
		nil
		(cons (char long-str position)
		      (string-to-charlst long-str (+ 1 position))))))))

(defun trad-lst (lst-chars)
  (if (equal nil lst-chars)
      nil
      (cons (get-char (car lst-chars) *lang*)
	    (trad-lst (cdr lst-chars)))))

(defun trad (lst-strs)
  (if (equal nil lst-strs)
      nil
      (concatenate 'string (car lst-strs) (trad (cdr lst-strs)))))

(defun line-trad (line)
  (trad (trad-lst (string-to-charlst line))))

(defun file-trad (in-file out-file)
  (with-open-file (stram in-file)
    (with-open-file (strom out-file
			   :direction :output
			   :if-does-not-exist :create
			   :if-exists :append)
      (when stram
	(loop for line = (read-line stram nil)
	     while line do (format strom "~A~%" (line-trad line)))))))
