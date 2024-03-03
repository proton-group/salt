(defpackage :salt
  (:use :common-lisp :alexandria)
  (:export
    #:split))

(in-package :salt)
(defun split (str)
    (defvar i -1)
    (defvar j 0)
    (loop 
    while (not (eql i nil)) 
    do
    (setf j (+ 1 i)) 
    (setq i (position #\linefeed str :start (+ i 1) :end nil))
    (print i)
    collect (subseq str j i))
)