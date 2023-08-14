#!/usr/bin/env -S guile -e main
!#
(use-modules
  (zerolib)
  (ice-9 pretty-print))
(define (main args)
  (let* ((name-s (cadr args))
         (name (string->symbol name-s))
         (url (string-append "https://github.com/" name-s "/" name-s)))
    (pretty-print
      `((define-module (zero packages ,name))
        (use-modules
          (guix packages)
          (guix gexp)
          (guix build utils)
          (guix build-system gnu)
          (guix git-download)
          ((guix licenses) #:prefix license:))
        (define-public ,name
                       (package
                         (name ,name-s)
                         (version "master")
                         (source
                           (origin
                             (method git-fetch)
                             (uri
                               (git-reference
                                 (url ,url)
                                 (commit version)))
                             (sha256
                               (base32 "0000000000000000000000000000000000000000000000000000"))))
                         (build-system gnu-build-system)
                         (arguments
                           (list))
                         (inputs 
                           (list))
                         (native-inputs
                           (list))
                         (synopsis ,name-s)
                         (description ,name-s)
                         (home-page ,url)
                         (license license:expat)))
        ,name))))
