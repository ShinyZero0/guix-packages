(define-module (zero packages web))
(use-modules (gnu packages web)
             (gnu packages perl)
             (gnu packages bash)
             (gnu packages base)
             (guix packages)
             (guix gexp)
             (guix download)
             (guix build-system perl)
             ((guix licenses) #:prefix license:))

(define-public mod-perl
  (package
    (name "mod-perl")
    (version "2.0.13")
    (source (origin
             (method url-fetch)
             (uri (string-append "mirror://apache/perl/mod_perl-" version ".tar.gz"))
             (sha256
              (base32
               "1nnnh86zfd97yb2p7iy6p23xbmjqwangrkgyd6449f27qhqvxqxd"))))
    (arguments
      (list
        #:make-maker-flags
        #~(list
            (string-append "MP_APXS=" #$httpd "/bin/apxs"))
        #:tests? #f
        #:phases
        #~(modify-phases %standard-phases
            (replace 'install
                     (lambda _
                       (invoke "make" "install" (string-append "DESTDIR=" #$output))))
            (add-after
              'install 'move
              (lambda _
                (let
                  ((mv #$(file-append coreutils "/bin/mv")))
                  (invoke #$(file-append bash-minimal "/bin/bash")
                          "-c"
                          (string-join
                            (map
                              (lambda (x)
                                (string-join
                                  (list
                                    mv
                                    (string-append #$output x "/*")
                                    #$output) " "))
                              (list #$httpd #$output))
                            ";"))))))))
    (build-system perl-build-system)
    (home-page "https://perl.apache.org")
    (synopsis
      "mod_perl brings together the full power of the Perl programming language and the Apache HTTP server. You can use Perl to manage Apache, respond to requests for web pages and much more.")
    (description "mod_perl  is more than CGI scripting on steroids. It is a whole new way to create dynamic content by utilizing the full power of the Apache web server to create stateful sessions, customized user authentication systems, smart proxies and much more. Yet, magically, your old CGI scripts will continue to work and work very fast indeed. With mod_perl you give up nothing and gain so much!")
    (license license:asl2.0)))
mod-perl
