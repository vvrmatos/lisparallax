(ql:quickload :hunchentoot)
(ql:quickload :spinneret)
(ql:quickload :lass)

(defparameter *server* (make-instance 'tbnl:easy-acceptor
                                      :port 33333
                                      :address "0.0.0.0"))
(defun start ()
  (tbnl:start *server*))
(tbnl:define-easy-handler (main :uri "/")
  ()
  (spinneret:with-html-string
    (:html
      (:head
        (:h1 "Hello, Lisp")))
    (:body)))


(start)
