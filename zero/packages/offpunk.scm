(define-module (zero packages offpunk))
  
(use-modules (gnu packages python-crypto)
             (gnu packages python-web)
             (gnu packages python-xyz)
             (gnu packages web)
             (gnu packages image-viewers)
             (gnu packages file)
             (gnu packages less)
             (gnu packages freedesktop)
             (guix packages)
             (guix gexp)
             (guix build utils)
             (guix build-system pyproject)
             (guix git-download)
             ((guix licenses)
              #:prefix license:))
(define-public offpunk
  (package
    (name "offpunk")
    (version "1.10")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://git.sr.ht/~lioploum/offpunk")
                    (commit (string-append "v" version))))
              (sha256
               (base32
                "0r8j01s3hdn3iq4ld6pj3v0h4hpakvkc4h55jzz7jr6az4y8lcgs"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (delete 'check)
                        (add-before 'wrap 'wrap-path
                          (lambda* (#:key inputs outputs #:allow-other-keys)
                            (wrap-program (string-append #$output
                                                         "/bin/offpunk")
                              `("PATH" ":" prefix
                                (,(string-append
                                    #$(this-package-input "less")
                                    "/bin")
                                  ,(string-append
                                     #$(this-package-input "file")
                                     "/bin")
                                 ,(string-append
                                    #$(this-package-input "xdg-utils")
                                    "/bin"))))))
                       (add-after 'install 'install-manpages
                                  (lambda _
                                    (let*
                                      ((sharedir (string-append #$output "/share"))
                                       (mandir (string-append sharedir "/man/man1")))
                                      (install-file "man/offpunk.1" mandir)))))))
    (inputs (list python-cryptography
                  python-requests
                  python-feedparser
                  python-beautifulsoup4
                  python-readability-lxml
                  python-flit
                  xdg-utils
                  file
                  less))
    (synopsis
      "Command-line browser/feed reader for Gemini, Gopher, Spartan and Web")
    (description
      "The goal of Offpunk is to be able to synchronise your content once
      (a day, a week, a month) and then browse/organise it while staying
      disconnected")
    (home-page "https://git.sr.ht/~lioploum/offpunk")
    (license license:bsd-2)))
offpunk
