;*Binary search* as a number guessing game from Conrad Barski's *Land of Lisp*

(defparameter *lower* 1)
(defparameter *upper* 100)

;use arithmetic shift to compute (rounded) number halfway between *upper* and *lower*  
(defun guess-number ()
 (ash (+ *lower* *upper*) -1)
  )

(defun smaller ()
  (setf *upper* (1- (guess-number)))
  (guess-number)
  )

(defun bigger ()
  (setf *lower* (1+ (guess-number)))
  (guess-number)
  )

(defun reset ()
  (setf *lower* 1)
  (setf *bigger* 100)
  (guess-number)
  )
