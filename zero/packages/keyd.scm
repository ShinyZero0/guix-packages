(define-module (zero packages keyd))
(use-modules
  (guix packages)
  (gnu packages linux)
  (guix git-download)
  ((guix licenses) #:prefix license:)
  (guix build-system gnu))
(define-public keyd
  (package
   (name "keyd")
   (version "2.4.3")
   (source
     (origin
       (method git-fetch)
       (uri (git-reference
              (url "https://github.com/rvaiya/keyd")
              (commit (string-append "v" version))))
       (sha256
         (base32
           "1awdp863amq95y990fi4wj389ssv3ip2daqz2ph23lsahwa6f5in"))))
   (arguments
     (list
       #:tests? #f
       #:make-flags '(list "CC=gcc" "PREFIX=" (string-append "DESTDIR=" (assoc-ref %outputs "out")))
       #:phases '(modify-phases %standard-phases
                                (delete 'configure))
       ))
   (build-system gnu-build-system)
   (inputs
     (list
       linux-libre-headers))
   (synopsis "")
   (description "")
   (home-page "")
   (license license:expat)))
