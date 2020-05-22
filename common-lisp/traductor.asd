(defsystem "traductor"
  :version "0.1.0"
  :author "Innaky"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "traductor/tests"))))

(defsystem "traductor/tests"
  :author "Innaky"
  :license ""
  :depends-on ("traductor"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for traductor"
  :perform (test-op (op c) (symbol-call :rove :run c)))
