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
              (commit "bc4c38d6eec5c4dc23e78c42566ea63a71e99854")))
       (sha256
         (base32
           "0688rgn1qylkyvm7kp76l3l8rha8rny4gz2vcc6qv7nwl74x6alm"))))
   (build-system guile-build-system)
   (inputs
     (list
       guile-3.0))
   (synopsis "")
   (description "")
   (home-page "")
   (license license:osl2.1)))
