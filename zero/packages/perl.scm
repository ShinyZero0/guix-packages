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
(define-public perl-dbd-anydata
  (package
    (name "perl-dbd-anydata")
    (version "0.110")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "mirror://cpan/authors/id/R/RE/REHSACK/DBD-AnyData-"
                            version ".tar.gz"))
        (sha256
          (base32 "1axfvh52h7715szykggr3v62zml9g59gvwvvdhzzsxjhwn40szr4"))))
    (build-system perl-build-system)
    (native-inputs (list perl-module-build))
    (propagated-inputs (list perl-anydata perl-dbi perl-params-util
                             perl-sql-statement))
    (home-page "https://metacpan.org/release/DBD-AnyData")
    (synopsis "DBI access to XML, CSV and other formats")
    (description "")
    (license license:perl-license)))
(define-public perl-anydata
  (package
    (name "perl-anydata")
    (version "0.12")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "mirror://cpan/authors/id/R/RE/REHSACK/AnyData-"
                            version ".tar.gz"))
        (sha256
          (base32 "1z5wmmzmcx9ylqhv55djbm2izfnfvqrb2djm62dvmzm20izrasmy"))))
    (build-system perl-build-system)
    (native-inputs (list perl-test-output))
    (propagated-inputs (list perl-cgi))
    (home-page "https://metacpan.org/release/AnyData")
    (synopsis "(DEPRECATED) easy access to data in many formats")
    (description "")
    (license license:perl-license)))
(define-public perl-sql-statement
  (package
    (name "perl-sql-statement")
    (version "1.414")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
                "mirror://cpan/authors/id/R/RE/REHSACK/SQL-Statement-" version
                ".tar.gz"))
        (sha256
           (base32 "0j8sg36wc3nwfb2gj3fv75f0iv7s7q7vl6b5l3fywdm1lv7vvs6x"))))
    (build-system perl-build-system)
    (native-inputs (list perl-dbd-anydata
                         perl-dbd-csv
                         perl-dbi
                         perl-math-base-convert
                         perl-sql-statement
                         perl-test-deep
                         perl-text-soundex))
    (propagated-inputs (list perl-clone
                             perl-dbd-anydata
                             perl-dbd-csv
                             perl-dbi
                             perl-math-base-convert
                             perl-module-runtime
                             perl-params-util
                             perl-sql-statement
                             perl-text-soundex))
    (home-page "https://metacpan.org/release/SQL-Statement")
    (synopsis "SQL parsing and processing engine")
    (description "")
    (license license:perl-license)))
(define-public perl-dbd-csv
  (package
    (name "perl-dbd-csv")
    (version "0.60")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "mirror://cpan/authors/id/H/HM/HMBRAND/DBD-CSV-"
                            version ".tgz"))
        (sha256
          (base32 "1rxlai91j648hi3fghxxc3giq068n7448c1wijy7k6br1yiq72q1"))))
    (build-system perl-build-system)
    (native-inputs (list perl-dbi))
    (propagated-inputs (list perl-dbi perl-sql-statement perl-text-csv_xs))
    (home-page "https://metacpan.org/release/DBD-CSV")
    (synopsis "DBI driver for CSV files")
    (description "")
    (license license:perl-license)))
(define-public perl-crypt-bcrypt
  (package
    (name "perl-crypt-bcrypt")
    (version "0.011")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "mirror://cpan/authors/id/L/LE/LEONT/Crypt-Bcrypt-"
                            version ".tar.gz"))
        (sha256
           (base32 "1853prmscba2yd63xxmbhzjikhq1mlmv7ijvv7i39rr60n5sdz37"))))
    (build-system perl-build-system)
    (home-page "https://metacpan.org/release/Crypt-Bcrypt")
    (synopsis "A modern bcrypt implementation")
    (description "")
    (license license:perl-license)))
(define-public perl-raisin
  (package
    (name "perl-raisin")
    (version "0.94")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "mirror://cpan/authors/id/R/RT/RTKH/Raisin-" version
                            ".tar.gz"))
        (sha256
          (base32 "0bzrqs4glqlcfpb52ckbns67xggh52h57r6yi6s288x7khf1pm3b"))))
    (build-system perl-build-system)
    (native-inputs (list perl-module-build perl-test-exception perl-test-pod))
    (propagated-inputs (list perl-hash-merge
                             perl-http-message
                             perl-json-maybexs
                             perl-plack
                             perl-plack-middleware-crossorigin
                             perl-type-tiny
                             perl-yaml))
    (arguments
      (list
        #:tests? #f))
    (home-page "https://metacpan.org/release/Raisin")
    (synopsis "A REST API microframework for Perl.")
    (description "")
    (license license:perl-license)))
(define-public perl-plack-middleware-crossorigin
  (package
   (name "perl-plack-middleware-crossorigin")
   (version "0.014")
   (source
     (origin
       (method url-fetch)
       (uri (string-append
              "mirror://cpan/authors/id/H/HA/HAARG/Plack-Middleware-CrossOrigin-"
              version ".tar.gz"))
       (sha256
         (base32 "1dzk0hqckarjk7kmqybsmfx99bn4x7yj027f3ayacmc4rjmhzs1m"))))
   (build-system perl-build-system)
   (native-inputs (list perl-plack))
   (propagated-inputs (list perl-plack))
   (home-page "https://metacpan.org/release/Plack-Middleware-CrossOrigin")
   (synopsis "Adds headers to allow Cross-Origin Resource Sharing")
   (description "")
   (license license:perl-license)))
(define-public perl-sereal-encoder
  (package
    (name "perl-sereal-encoder")
    (version "5.004")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "mirror://cpan/authors/id/Y/YV/YVES/Sereal-Encoder-" version
             ".tar.gz"))
       (sha256
        (base32 "06ybap5b4zmbjfkv1sg0blmpaacfqvjwnblkh3nk9bidsg68cnjy"))))
    (build-system perl-build-system)
    (native-inputs (list perl-devel-checklib
                         perl-sereal-decoder
                         perl-test-deep
                         perl-test-differences
                         perl-test-longstring
                         perl-test-warn))
    (propagated-inputs (list perl-sereal-decoder))
    (home-page "https://metacpan.org/release/Sereal-Encoder")
    (synopsis "Fast, compact, powerful binary serialization")
    (description "")
    (license license:perl-license)))

(define-public perl-sereal-decoder
  (package
    (name "perl-sereal-decoder")
    (version "5.004")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "mirror://cpan/authors/id/Y/YV/YVES/Sereal-Decoder-" version
             ".tar.gz"))
       (sha256
        (base32 "11377sfy71774mg2yhsl2zmwvjmj7vsgqrhgpdh6w6kxv0a07vv8"))))
    (build-system perl-build-system)
    (native-inputs (list perl-devel-checklib perl-test-deep
                         perl-test-differences perl-test-longstring
                         perl-test-warn))
    (home-page "https://metacpan.org/release/Sereal-Decoder")
    (synopsis "Fast, compact, powerful binary deserialization")
    (description "")
    (license license:perl-license)))

(define-public perl-mce
  (package
    (name "perl-mce")
    (version "1.889")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "mirror://cpan/authors/id/M/MA/MARIOROY/MCE-"
                           version ".tar.gz"))
       (sha256
        (base32 "1vdv16wfwvzmklmirlkprba4rn02832m7gsh60jzqinhfkj56qfv"))))
    (build-system perl-build-system)
    (propagated-inputs (list perl-sereal-decoder perl-sereal-encoder))
    (home-page "https://metacpan.org/release/MCE")
    (synopsis
     "Many-Core Engine for Perl providing parallel processing capabilities")
    (description "")
    (license license:perl-license)))

