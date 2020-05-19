(defpackage traductor/tests/main
  (:use :cl
        :traductor
        :rove))
(in-package :traductor/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :traductor)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
