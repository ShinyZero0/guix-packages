(define-module (zero packages inconsolatalgc-nerd-font))
(use-modules
  (guix packages)
  (guix download)
  ((guix licenses) #:prefix license:)
  (guix build-system font)
  )
(define-public inconsolatalgc-nerd-font
  (package
   (name "inconsolatalgc-nerd-font")
   (version "3.0.2")
   (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/ryanoasis/nerd-fonts/releases/download/v" version "/InconsolataLGC.tar.xz"))
       (sha256
         (base32
           "00s2051fz3k6jnsfmnlqnd2cghr9sj2pddi5gpid1i5x006rig7a"))))
   (build-system font-build-system)
   (synopsis "")
   (description "")
   (home-page "")
   (license license:osl2.1)))
