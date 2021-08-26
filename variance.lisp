;;;; variance.lisp

(in-package #:variance)


(defun moyenne (liste)
  (let ((nombres-additionés 0))
    (dolist (i liste
	   (/ nombres-additionés (length liste)))
    (setf nombres-additionés (+ nombres-additionés i)))))

(defun puissance-2 (nombre)
  (* nombre nombre))

(defun variance (liste)
  (let ((nombre 0.0))
    (dolist (i liste (/ nombre (length liste)))
      (setf nombre (+ nombre (puissance-2 (- i (moyenne liste))))))))
