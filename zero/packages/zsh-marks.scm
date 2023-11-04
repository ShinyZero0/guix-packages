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
    (version "34dc5585c74c559e487436e535744f7c8147312b")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://codeberg.org/shinyzero0/marks.zsh")
               (commit version)))
        (sha256
          (base32
            "1w2mgyszmvkldprmh90bn0gqrx0fzpk9gk1k15bha8hdqqqdv731"))))
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
