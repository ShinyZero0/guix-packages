(define-module (zero packages cascadia-nerd-font))
(use-modules
  (guix packages)
  (guix download)
  ((guix licenses) #:prefix license:)
  (guix build-system font)
  )
(define-public cascadia-nerd-font
  (package
   (name "cascadia-nerd-font")
   (version "3.0.2")
   (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/ryanoasis/nerd-fonts/releases/download/v" version "/CascadiaCode.tar.xz"))
       (sha256
         (base32
           "0bmzji880wbc3c4krw47kzf8mzb9abvv6wjybhynd1rjf31i27fj"))))
   (build-system font-build-system)
   (synopsis "")
   (description "")
   (home-page "")
   (license license:osl2.1)))
