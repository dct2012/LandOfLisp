(defparameter *my-list* '(4 7 2 3))

; non functional
(defun nf-add-two ()
  (loop for n below (length *my-list*)
        do (setf (nth n *my-list*) (+ (nth n *my-list*) 2))))

;functional
(defun add-two (list)
  (when list
    (cons (+ 2 (car list)) (add-two (cdr list)))))

;high-order
(defun ho-add-two (list)
  (mapcar (lambda (x)
            (+ x 2))
          list))
