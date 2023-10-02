(define-module (zero packages zsh-marks))
(use-modules
  (guix packages)
  (gnu packages shells)
  (guix gexp)
  (guix build utils)
  (guix build-system copy)
  (guix git-download)
  ((guix licenses) #:prefix license:))
(define-public zsh-marks
  (package
    (name "zsh-marks")
    (version "49fa798fb22a69ba081e7018e0ffc51e03b66716")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://codeberg.org/shinyzero0/marks.zsh")
               (commit version)))
        (sha256
          (base32
            "0gw0y1g945nx4b7ky603kpw7jfqfy1zscg3dbj7d8rjbvg26rb03"))))
    (build-system copy-build-system)
    (arguments (list
                 #:install-plan
                 #~'(("marks.zsh" "bin/"))))
    (inputs (list zsh))
    (native-inputs (list))
    (synopsis "zsh-marks")
    (description "zsh-marks")
    (home-page
      "https://github.com/zsh-marks/zsh-marks")
    (license license:osl2.1)))
zsh-marks
