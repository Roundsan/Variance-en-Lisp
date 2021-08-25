;;;; variance.lisp

(in-package #:variance)


(defun moyenne (x)
  (let ((n 0))
    (dolist (i x
	   (/ n (length x)))
    (setf n (+ n i)))))

(defun puissance-2 (x)
  (* x x))

(defun variance (x)
  (let ((v 0.0))
    (dolist (i x (/ v (length x)))
      (setf v (+ v (puissance-2 (- i (moyenne x))))))))
