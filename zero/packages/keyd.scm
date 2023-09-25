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
        #:make-flags '(list "CC=gcc"
                            "PREFIX="
                            (string-append "DESTDIR="
                                           (assoc-ref %outputs "out")))
        #:phases '(modify-phases %standard-phases
                                 (delete 'configure))))
    (build-system gnu-build-system)
    (inputs
      (list
        linux-libre-headers))
    (synopsis "A key remapping daemon for linux.")
    (description "Keyd is a keyboard remapping utility with intuitive ini
                 config file format. Keyd has several unique features, many of
                 which are traditionally only found in custom keyboard firmware
                 like QMK")
                 (home-page "https://github.com/rvaiya/keyd")
                 (license license:expat)))
