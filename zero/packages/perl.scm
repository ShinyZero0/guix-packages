(define-module (zero packages perl))
(use-modules (gnu packages web)
             (zero packages web)
             (gnu packages perl)
             (gnu packages databases)
             (gnu packages bash)
             (gnu packages perl-check)
             (gnu packages xml)
             (guix packages)
             (guix gexp)
             (guix download)
             (guix build-system perl)
             ((guix licenses) #:prefix license:))
(define-public perl-class-autoaccess
  (package
    (name "perl-class-autoaccess")
    (version "0.03")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "mirror://cpan/authors/id/J/JE/JETEVE/Class-AutoAccess-" version
               ".tar.gz"))
        (sha256
          (base32 "063jp0n2wkgq5347lhx4kp9cjypvw70l2fccwi6dgl8fh8ny25y1"))))
    (build-system perl-build-system)
    (home-page "https://metacpan.org/release/Class-AutoAccess")
    (synopsis "Zero code dynamic accessors implementation.")
    (description "")
    (license #f)))
(define-public perl-ntlm
  (package
    (name "perl-ntlm")
    (version "1.09")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "mirror://cpan/authors/id/N/NB/NBEBOUT/NTLM-" version
                            ".tar.gz"))
        (sha256
          (base32 "118z2n9qhjalfj7l9hhpjppyxdg2c34h4hsqdriibg3nv86f68y8"))))
    (build-system perl-build-system)
    (propagated-inputs (list perl-digest-hmac))
    (home-page "https://metacpan.org/release/NTLM")
    (synopsis "An NTLM authentication module")
    (description "")
    (license license:perl-license)))
(define-public perl-libwww-perl
  (package
    (name "perl-libwww-perl")
    (version "6.72")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "mirror://cpan/authors/id/O/OA/OALDERS/libwww-perl-"
                            version ".tar.gz"))
        (sha256
          (base32 "0pd0wpda2jv8rzg7gh4dk61bynfd9xcdsgg2mw3y42z2sm7kbf79"))))
    (build-system perl-build-system)
    (native-inputs (list perl-http-daemon perl-test-fatal perl-test-leaktrace
                         perl-test-needs perl-test-requiresinternet))
    (propagated-inputs (list perl-data-dump
                             perl-encode-locale
                             perl-file-listing
                             perl-html-parser
                             perl-http-cookiejar
                             perl-http-cookies
                             perl-http-date
                             perl-http-message
                             perl-http-negotiate
                             perl-lwp-mediatypes
                             perl-lwp-protocol-https
                             perl-net-http
                             perl-ntlm
                             perl-try-tiny
                             perl-uri
                             perl-www-robotrules))
    (home-page "https://metacpan.org/release/libwww-perl")
    (synopsis "The World-Wide Web library for Perl")
    (description "")
    (license license:perl-license)))
(define-public perl-rest-client
  (package
    (name "perl-rest-client")
    (version "281")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "mirror://cpan/authors/id/A/AK/AKHUETTEL/REST-Client-" version
               ".tar.gz"))
        (sha256
          (base32 "1xn8n9wsd268jfg240dajh855xwgfn576rpy3rh85rip00dd447s"))))
    (build-system perl-build-system)
    (native-inputs (list perl-http-server-simple))
    (propagated-inputs (list perl-libwww-perl perl-lwp-protocol-https perl-uri
                             perl-xml-libxml))
    (home-page "https://metacpan.org/release/REST-Client")
    (synopsis
      "A simple client for interacting with RESTful http/https resources")
    (description "")
    (license license:perl-license)))
(define perl-apache2-rest
  (package
   (name "perl-apache2-rest")
   (version "0.07")
   (source
     (origin
       (method url-fetch)
       (uri (string-append "mirror://cpan/authors/id/J/JE/JETEVE/Apache2-REST-"
                           version ".tar.gz"))
       (sha256
         (base32 "1dgwxzq19vzf2chg6md4j790sgsma598sz5jfl49j8hv0jdrz25w"))))
   (build-system perl-build-system)
   (propagated-inputs (list perl-class-autoaccess
                            perl-http-message
                            perl-json-xs
                            perl-libapreq2
                            mod-perl
                            perl-rest-client
                            perl-xml-simple
                            perl-yaml))
   (home-page "https://metacpan.org/release/Apache2-REST")
   (synopsis
     "Micro framework for REST API implementation under apache2/mod_perl2/apreq2")
   (description "")
   (license #f)))

(define-public perl-apache-test
  (package
   (name "perl-apache-test")
   (version "1.43")
   (source
     (origin
       (method url-fetch)
       (uri (string-append "mirror://cpan/authors/id/S/SH/SHAY/Apache-Test-"
                           version ".tar.gz"))
       (sha256
         (base32 "1b40asvgqbdjrgjpb5ghb9s5lj8wq5wii6sqichqk9c1lw19z6d9"))))
   (build-system perl-build-system)
   (native-inputs (list httpd))
   (arguments
     (list #:tests? #f))
   ;; (propagated-inputs (list perl-win32-process))
   (home-page "https://metacpan.org/release/Apache-Test")
   (synopsis "Apache::Test change logfile")
   (description "")
   (license #f)))
(define-public perl-extutils-xsbuilder
  (package
   (name "perl-extutils-xsbuilder")
   (version "0.28")
   (source
     (origin
       (method url-fetch)
       (uri (string-append
              "mirror://cpan/authors/id/G/GR/GRICHTER/ExtUtils-XSBuilder-"
              version ".tar.gz"))
       (sha256
         (base32 "02p85wklahkwm1yq0v4sxb1czsvjbc2ysfpb5pncai6mwf3d7klc"))))
   (build-system perl-build-system)
   (propagated-inputs (list perl-parse-recdescent perl-tie-ixhash))
   (home-page "https://metacpan.org/release/ExtUtils-XSBuilder")
   (synopsis "Automatic Perl XS glue code generation")
   (description "")
   (license #f)))
(define-public perl-crypt-jwt
  (package
    (name "perl-crypt-jwt")
    (version "0.035")
    (source
       (origin
         (method url-fetch)
         (uri (string-append "mirror://cpan/authors/id/M/MI/MIK/Crypt-JWT-"
                             version ".tar.gz"))
         (sha256
          (base32 "0hcny3ypj9kwpg7j12nflkhx7db7x2n57h2gcxnx7bn3mmgxbysw"))))
    (build-system perl-build-system)
    (propagated-inputs (list perl-cryptx perl-json))
    (home-page "https://metacpan.org/release/Crypt-JWT")
    (synopsis "JSON Web Token")
    (description synopsis)
    (license license:perl-license)))
(define-public perl-apache-dbi
  (package
    (name "perl-apache-dbi")
    (version "1.12")
    (source
      (origin
         (method url-fetch)
         (uri (string-append "mirror://cpan/authors/id/P/PH/PHRED/Apache-DBI-"
                            version ".tar.gz"))
         (sha256
          (base32 "0xz6cv3b627a1izpdpwhmrgkwfhswvdvq8900dm7ayg5lw6m4zcx"))))
    (build-system perl-build-system)
    (propagated-inputs (list perl-dbi perl-digest-sha1))
    (home-page "https://metacpan.org/release/Apache-DBI")
    (synopsis "Initiate a persistent database connection")
    (description "")
    (license #f)))
