(define-module (zero packages jiq))
(use-modules (guix packages)
             ((guix licenses) #:prefix license:)
             (guix build-system go)
             (gnu packages golang)
             (gnu packages web)
             (gnu packages golang-check)
             (guix git-download))
(define-public go-github-com-nsf-termbox-go
  (package
    (name "go-github-com-nsf-termbox-go")
    (version "1.1.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nsf/termbox-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0n5jwnx53nkjvq8rcqzv2scs532iq9w06pd83w6cipniccqp4m2i"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/nsf/termbox-go"))
    (propagated-inputs `(("go-github-com-mattn-go-runewidth" ,go-github-com-mattn-go-runewidth)))
    (home-page "https://github.com/nsf/termbox-go")
    (synopsis "IMPORTANT")
    (description
     "termbox is a library for creating cross-platform text-based interfaces")
    (license license:expat)))

(define-public go-github-com-fiatjaf-jiq
  (package
    (name "go-github-com-fiatjaf-jiq")
    (version "0.7.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/fiatjaf/jiq")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0a7f9x247dbsn5r0zfl6jm2x34si35wagn0dgilffdz0i6sns65p"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/fiatjaf/jiq"))
    (propagated-inputs `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
                         ("go-github-com-nsf-termbox-go" ,go-github-com-nsf-termbox-go)
                         ("jq" ,jq)
                         ("go-github-com-mattn-go-runewidth" ,go-github-com-mattn-go-runewidth)))
    (home-page "https://github.com/fiatjaf/jiq")
    (synopsis "jiq")
    (description "It's @@url{https://github.com/simeji/jid,jid} with
@@url{https://stedolan.github.io/jq/,jq}.")
    (license license:expat)))
go-github-com-fiatjaf-jiq
