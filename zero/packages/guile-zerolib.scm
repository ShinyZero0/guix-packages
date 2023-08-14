(define-module (zero packages zerolib))
(use-modules
  (guix packages)
  (gnu packages guile)
  (guix gexp)
  (guix utils)
  (guix git-download)
  (guix licenses)
  (guix build-system guile))
(define-public
  guile-zerolib
  (package
    (name "guile-zerolib")
    (version "0.0")
    (source (local-file
              (string-append (getenv "HOME") "/dev/scheme/zerolib")
              #:recursive? #t))
    (build-system guile-build-system)
    (native-inputs (list guile-3.0))
    (synopsis "")
    (description "")
    (license osl2.1)
    (home-page "")))
guile-zerolib
