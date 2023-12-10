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
    (version "ab9cf70389cb77b9001bd9f5553f310b57e645d0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://codeberg.org/shinyzero0/marks.zsh")
               (commit version)))
        (sha256
          (base32
            "0j14yal7rlabf09cagml6h852dgnlg6ff84nkd2cmsg4787cdgbh"))))
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
