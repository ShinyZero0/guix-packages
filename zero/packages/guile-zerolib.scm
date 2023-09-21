(define-module (zero packages guile-zerolib))
(use-modules
  (guix packages)
  (gnu packages guile)
  (guix git-download)
  ((guix licenses) #:prefix license:)
  (guix build-system guile))
(define-public guile-zerolib
  (package
   (name "guile-zerolib")
   (version "latest")
   (source
     (origin
       (method git-fetch)
       (uri (git-reference
              (url "https://codeberg.org/shinyzero0/zerolib.scm.git")
              (commit "1c12e135d44dc105e3c0de29df106016a154da77")))
       (sha256
         (base32
           "0m5zz8a8pnw69ffprrdgj84fmssxpdhsb94ial01xnxxxrflcs01"))))
   (build-system guile-build-system)
   (inputs
     (list
       guile-3.0))
   (synopsis "")
   (description "")
   (home-page "")
   (license license:osl2.1)))
