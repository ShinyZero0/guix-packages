(define-module (zero packages rust-stylua))
(use-modules (gnu packages)
             (gnu packages crates-io)
             (guix packages)
             ((guix licenses) #:prefix license:)
             (guix download)
             (guix build-system cargo))
(define-public rust-linux-raw-sys-0.3
  (package
    (name "rust-linux-raw-sys")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "linux-raw-sys" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "068mbigb3frrxvbi5g61lx25kksy98f2qgkvc4xg8zxznwp98lzg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/sunfishcode/linux-raw-sys")
    (synopsis "Generated bindings for Linux's userspace API")
    (description "Generated bindings for Linux's userspace API")
    (license (list license:asl2.0  license:asl2.0
                   license:expat))))

(define-public rust-io-lifetimes-1
  (package
    (name "rust-io-lifetimes")
    (version "1.0.11")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "io-lifetimes" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1hph5lz4wd3drnn6saakwxr497liznpfnv70via6s0v8x6pbkrza"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                       ("rust-fs-err" ,rust-fs-err-2)
                       ("rust-hermit-abi" ,rust-hermit-abi-0.3)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-mio" ,rust-mio-0.8)
                       ("rust-os-pipe" ,rust-os-pipe-1)
                       ("rust-socket2" ,rust-socket2-0.4)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/sunfishcode/io-lifetimes")
    (synopsis "A low-level I/O ownership and borrowing library")
    (description
     "This package provides a low-level I/O ownership and borrowing library")
    (license (list license:asl2.0  license:asl2.0
                   license:expat))))

(define-public rust-rustix-0.37
  (package
    (name "rust-rustix")
    (version "0.37.23")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rustix" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "01mbsk0q93rh5ji6k27zq09r5fz88akl8kn6knj2fq8wz25p2sad"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-errno" ,rust-errno-0.3)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-1)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-linux-raw-sys" ,rust-linux-raw-sys-0.3)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/bytecodealliance/rustix")
    (synopsis "Safe Rust bindings to POSIX/Unix/Linux/Winsock2-like syscalls")
    (description
     "Safe Rust bindings to POSIX/Unix/Linux/Winsock2-like syscalls")
    (license (list license:asl2.0  license:asl2.0
                   license:expat))))

(define-public rust-terminal-size-0.2
  (package
    (name "rust-terminal-size")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "terminal_size" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0drj7gb77kay5r1cv53ysq3g9g4f8n0jkhld0kadi3lzkvqzcswf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-rustix" ,rust-rustix-0.37)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/eminence/terminal-size")
    (synopsis "Gets the size of your Linux or Windows terminal")
    (description "Gets the size of your Linux or Windows terminal")
    (license (list license:expat license:asl2.0))))

(define-public rust-linux-raw-sys-0.4
  (package
    (name "rust-linux-raw-sys")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "linux-raw-sys" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1w6kxhk91ncwjfrggd1xxkifc8ym69nvvqwk9h29zjqjrb921z09"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/sunfishcode/linux-raw-sys")
    (synopsis "Generated bindings for Linux's userspace API")
    (description "Generated bindings for Linux's userspace API")
    (license (list license:asl2.0  license:asl2.0
                   license:expat))))

(define-public rust-libc-0.2
  (package
    (name "rust-libc")
    (version "0.2.147")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "libc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1cwv2lkzk3p5lby79fm42qhsh29lvbqwayhjjkq1s746xaq8yrml"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/rust-lang/libc")
    (synopsis "Raw FFI bindings to platform libraries like libc.
")
    (description "Raw FFI bindings to platform libraries like libc.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-msvc-0.48
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_x86_64_msvc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "12ipr1knzj2rwjygyllfi5mkd0ihnbi3r61gag5n2jgyk5bmyl8s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnullvm-0.48
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_x86_64_gnullvm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0lxryz3ysx0145bf3i38jkr7f9nxiym8p3syklp8f20yyk0xp5kq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnu-0.48
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_x86_64_gnu" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1cblz5m6a8q6ha09bz4lz233dnq5sw2hpra06k9cna3n3xk8laya"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-msvc-0.48
  (package
    (name "rust-windows-i686-msvc")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_i686_msvc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "004fkyqv3if178xx9ksqc4qqv8sz8n72mpczsr2vy8ffckiwchj5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnu-0.48
  (package
    (name "rust-windows-i686-gnu")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_i686_gnu" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hd2v9kp8fss0rzl83wzhw0s5z8q1b4875m6s1phv0yvlxi1jak2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-msvc-0.48
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_aarch64_msvc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1wvwipchhywcjaw73h998vzachf668fpqccbhrxzrz5xszh2gvxj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-gnullvm-0.48
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_aarch64_gnullvm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1g71yxi61c410pwzq05ld7si4p9hyx6lf5fkw21sinvr3cp5gbli"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-targets-0.48
  (package
    (name "rust-windows-targets")
    (version "0.48.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows-targets" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0pz9ad4mpp06h80hkmzlib78b5r9db7isycy1gr9j17pj1sb3m05"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.48)
                       ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.48)
                       ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.48)
                       ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.48)
                       ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.48)
                       ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.48)
                       ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.48))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import libs for Windows")
    (description "Import libs for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-sys-0.48
  (package
    (name "rust-windows-sys")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows-sys" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1aan23v5gs7gya1lc46hqn9mdh8yph3fhxmhxlw36pn6pqc28zb7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.48))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "Rust for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-errno-0.3
  (package
    (name "rust-errno")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "errno" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0fp7qy6fwagrnmi45msqnl01vksqwdb2qbbv60n9cz7rf0xfrksb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-errno-dragonfly" ,rust-errno-dragonfly-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/lambda-fairy/rust-errno")
    (synopsis "Cross-platform interface to the `errno` variable.")
    (description "Cross-platform interface to the `errno` variable.")
    (license (list license:expat license:asl2.0))))

(define-public rust-bitflags-2
  (package
    (name "rust-bitflags")
    (version "2.3.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "bitflags" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hifjw3191g3w5cwqqvbx8knrr3zchdwfc3rs6mn11p5si9yf2v3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bitflags/bitflags")
    (synopsis "A macro to generate structures which behave like bitflags.
")
    (description
     "This package provides a macro to generate structures which behave like bitflags.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rustix-0.38
  (package
    (name "rust-rustix")
    (version "0.38.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rustix" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1rfngxmm0wz2nszypp4a91b0jv6cbb2nvg4l51cl9ml8x8c2k5ha"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-errno" ,rust-errno-0.3)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-linux-raw-sys" ,rust-linux-raw-sys-0.4)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/bytecodealliance/rustix")
    (synopsis "Safe Rust bindings to POSIX/Unix/Linux/Winsock2-like syscalls")
    (description
     "Safe Rust bindings to POSIX/Unix/Linux/Winsock2-like syscalls")
    (license (list license:asl2.0  license:asl2.0
                   license:expat))))

(define-public rust-is-terminal-0.4
  (package
    (name "rust-is-terminal")
    (version "0.4.9")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "is-terminal" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "12xgvc7nsrp3pn8hcxajfhbli2l5wnh3679y2fmky88nhj4qj26b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-hermit-abi" ,rust-hermit-abi-0.3)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/sunfishcode/is-terminal")
    (synopsis "Test whether a given stream is a terminal")
    (description "Test whether a given stream is a terminal")
    (license license:expat)))

(define-public rust-concolor-query-0.3
  (package
    (name "rust-concolor-query")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "concolor-query" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ks4g514kx31nnv3bxa7cj5xgg6vwkljn8a001njxjnpqd91vlc8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-sys" ,rust-windows-sys-0.45))))
    (home-page "https://github.com/rust-cli/concolor")
    (synopsis "Look up colored console capabilities")
    (description "Look up colored console capabilities")
    (license (list license:expat license:asl2.0))))

(define-public rust-colorchoice-1
  (package
    (name "rust-colorchoice")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "colorchoice" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ix7w85kwvyybwi2jdkl3yva2r2bvdcc3ka2grjfzfgrapqimgxc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/rust-cli/anstyle")
    (synopsis "Global override of color control")
    (description "Global override of color control")
    (license (list license:expat license:asl2.0))))

(define-public rust-concolor-override-1
  (package
    (name "rust-concolor-override")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "concolor-override" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "140yb63zrbdvxvy3zaqvldgrjh5rm9qijy14w0imk7g3i1995920"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-colorchoice" ,rust-colorchoice-1))))
    (home-page "https://github.com/rust-cli/concolor")
    (synopsis "Global override of color control")
    (description "Global override of color control")
    (license (list license:expat license:asl2.0))))

(define-public rust-anstyle-wincon-0.2
  (package
    (name "rust-anstyle-wincon")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "anstyle-wincon" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1yil703c9gp5hn1d8fn5m3dr4mlwml80v6mvhwr9y52v2kv7l4n3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-anstyle" ,rust-anstyle-0.3)
                       ("rust-windows-sys" ,rust-windows-sys-0.45))))
    (home-page "https://github.com/rust-cli/anstyle")
    (synopsis "Styling legacy Windows terminals")
    (description "Styling legacy Windows terminals")
    (license (list license:expat license:asl2.0))))

(define-public rust-utf8parse-0.2
  (package
    (name "rust-utf8parse")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "utf8parse" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "02ip1a0az0qmc2786vxk2nqwsgcwf17d3a38fkf0q7hrmwh9c6vi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/alacritty/vte")
    (synopsis "Table-driven UTF-8 parser")
    (description "Table-driven UTF-8 parser")
    (license (list license:asl2.0 license:expat))))

(define-public rust-anstyle-parse-0.1
  (package
    (name "rust-anstyle-parse")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "anstyle-parse" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "05h1zy6y2ha2k8cnah9s0a296w2g3bfyfi2z7r7x3zly9r9vpld7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arrayvec" ,rust-arrayvec-0.7)
                       ("rust-utf8parse" ,rust-utf8parse-0.2))))
    (home-page "https://github.com/rust-cli/anstyle")
    (synopsis "Parse ANSI Style Escapes")
    (description "Parse ANSI Style Escapes")
    (license (list license:expat license:asl2.0))))

(define-public rust-anstyle-stream-0.2
  (package
    (name "rust-anstyle-stream")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "anstyle-stream" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1l695l55mwxfz3iaw524cy89j57bm5y9y8xv63z5bldslmmrd0qk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-anstyle" ,rust-anstyle-0.3)
                       ("rust-anstyle-parse" ,rust-anstyle-parse-0.1)
                       ("rust-anstyle-wincon" ,rust-anstyle-wincon-0.2)
                       ("rust-concolor-override" ,rust-concolor-override-1)
                       ("rust-concolor-query" ,rust-concolor-query-0.3)
                       ("rust-is-terminal" ,rust-is-terminal-0.4)
                       ("rust-utf8parse" ,rust-utf8parse-0.2))))
    (home-page "https://github.com/rust-cli/anstyle")
    (synopsis
     "A simple cross platform library for writing colored text to a terminal.")
    (description
     "This package provides a simple cross platform library for writing colored text
to a terminal.")
    (license (list license:expat license:asl2.0))))

(define-public rust-anstyle-0.3
  (package
    (name "rust-anstyle")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "anstyle" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ll42s5ch4ldp0fw8laidqji540p7higd06h2v111qq2pn0rxsi3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/rust-cli/anstyle")
    (synopsis "ANSI text styling")
    (description "ANSI text styling")
    (license (list license:expat license:asl2.0))))

(define-public rust-winnow-0.5
  (package
    (name "rust-winnow")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "winnow" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "04cc5cnp5q2hlfk2zq5nmqz60zbdf9z94vwlmrkx02z1l8pqgd95"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-anstyle" ,rust-anstyle-0.3)
                       ("rust-anstyle-stream" ,rust-anstyle-stream-0.2)
                       ("rust-is-terminal" ,rust-is-terminal-0.4)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-terminal-size" ,rust-terminal-size-0.2))))
    (home-page "https://github.com/winnow-rs/winnow")
    (synopsis "A byte-oriented, zero-copy, parser combinators library")
    (description
     "This package provides a byte-oriented, zero-copy, parser combinators library")
    (license license:expat)))

(define-public rust-toml-edit-0.19
  (package
    (name "rust-toml-edit")
    (version "0.19.14")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "toml_edit" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "12hf91s6mrvjpa0d40j3nibryddyc2szs857zcylm5v9x4kky4pq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-kstring" ,rust-kstring-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-spanned" ,rust-serde-spanned-0.6)
                       ("rust-toml-datetime" ,rust-toml-datetime-0.6)
                       ("rust-winnow" ,rust-winnow-0.5))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "Yet another format-preserving TOML parser.")
    (description "Yet another format-preserving TOML parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-toml-datetime-0.6
  (package
    (name "rust-toml-datetime")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "toml_datetime" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0jsy7v8bdvmzsci6imj8fzgd255fmy5fzp6zsri14yrry7i77nkw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "A TOML-compatible datetime type")
    (description "This package provides a TOML-compatible datetime type")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-spanned-0.6
  (package
    (name "rust-serde-spanned")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "serde_spanned" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "11p1l83r5g3k18pi88cqri2r9ai03pm8b4azj4j02ypx6scnqhln"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "Serde-compatible spanned Value")
    (description "Serde-compatible spanned Value")
    (license (list license:expat license:asl2.0))))

(define-public rust-toml-0.7
  (package
    (name "rust-toml")
    (version "0.7.6")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "toml" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hk561jxv0zjs8k4i00wwz0skff21gc5gfbsrp51scwwh4x9czn1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-spanned" ,rust-serde-spanned-0.6)
                       ("rust-toml-datetime" ,rust-toml-datetime-0.6)
                       ("rust-toml-edit" ,rust-toml-edit-0.19))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis
     "A native Rust encoder and decoder of TOML-formatted files and streams. Provides
implementations of the standard Serialize/Deserialize traits for TOML data to
facilitate deserializing and serializing Rust structures.
")
    (description
     "This package provides a native Rust encoder and decoder of TOML-formatted files
and streams.  Provides implementations of the standard Serialize/Deserialize
traits for TOML data to facilitate deserializing and serializing Rust
structures.")
    (license (list license:expat license:asl2.0))))

(define-public rust-thiserror-impl-1
  (package
    (name "rust-thiserror-impl")
    (version "1.0.44")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "thiserror-impl" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "15nwh6qfwxlwimgij1p6ajb377p4rlvvc6sx7amiz11h959rh089"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/dtolnay/thiserror")
    (synopsis "Implementation detail of the `thiserror` crate")
    (description "Implementation detail of the `thiserror` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-thiserror-1
  (package
    (name "rust-thiserror")
    (version "1.0.44")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "thiserror" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "143zzmardcq447va2pw09iq9rajvr48v340riljghf84iah40431"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-thiserror-impl" ,rust-thiserror-impl-1))))
    (home-page "https://github.com/dtolnay/thiserror")
    (synopsis "derive(Error)")
    (description "derive(Error)")
    (license (list license:expat license:asl2.0))))

(define-public rust-heck-0.4
  (package
    (name "rust-heck")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "heck" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1a7mqsnycv5z4z5vnv1k34548jzmc0ajic7c1j8jsaspnhw5ql4m"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-unicode-segmentation" ,rust-unicode-segmentation-1))))
    (home-page "https://github.com/withoutboats/heck")
    (synopsis "heck is a case conversion library.")
    (description "heck is a case conversion library.")
    (license (list license:expat license:asl2.0))))

(define-public rust-strum-macros-0.25
  (package
    (name "rust-strum-macros")
    (version "0.25.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "strum_macros" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0ckj165p22s1ah1laciq3n273qgd32bslsn07j43z8vqv04wlsb0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-heck" ,rust-heck-0.4)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-rustversion" ,rust-rustversion-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/Peternator7/strum")
    (synopsis "Helpful macros for working with enums and strings")
    (description "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-strum-0.25
  (package
    (name "rust-strum")
    (version "0.25.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "strum" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "09g1q55ms8vax1z0mxlbva3vm8n2r1179kfvbccnkjcidzm58399"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-phf" ,rust-phf-0.10)
                       ("rust-strum-macros" ,rust-strum-macros-0.25))))
    (home-page "https://github.com/Peternator7/strum")
    (synopsis "Helpful macros for working with enums and strings")
    (description "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-rustc-rayon-core-0.5
  (package
    (name "rust-rustc-rayon-core")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rustc-rayon-core" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0zqbr87x58j2g9rgm2lc0254b6yqabb41jvddw99qd8fy2m8srk7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                       ("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8)
                       ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                       ("rust-num-cpus" ,rust-num-cpus-1))))
    (home-page "https://github.com/rust-lang/rustc-rayon")
    (synopsis "Core APIs for Rayon - fork for rustc")
    (description "Core APIs for Rayon - fork for rustc")
    (license (list license:expat license:asl2.0))))

(define-public rust-rustc-rayon-0.5
  (package
    (name "rust-rustc-rayon")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rustc-rayon" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "040p2am25g3isnpsixrcrjrv70yz2lzkbq8gpv76xjipi3fam0gb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-either" ,rust-either-1)
                       ("rust-rustc-rayon-core" ,rust-rustc-rayon-core-0.5))))
    (home-page "https://github.com/rust-lang/rustc-rayon")
    (synopsis "Simple work-stealing parallelism for Rust - fork for rustc")
    (description "Simple work-stealing parallelism for Rust - fork for rustc")
    (license (list license:expat license:asl2.0))))

(define-public rust-rkyv-derive-0.7
  (package
    (name "rust-rkyv-derive")
    (version "0.7.42")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rkyv_derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "07alynj16yqlyprlwqd8av157rrywvid2dm7swbhl8swbf8npq5j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/rkyv/rkyv")
    (synopsis "Derive macro for rkyv")
    (description "Derive macro for rkyv")
    (license license:expat)))

(define-public rust-bytecheck-derive-0.6
  (package
    (name "rust-bytecheck-derive")
    (version "0.6.11")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "bytecheck_derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0qdgfqx23gbjp5scbc8fhqc5kd014bpxn8hc9i9ssd8r4rplrv57"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/djkoloski/bytecheck")
    (synopsis "Derive macro for bytecheck")
    (description "Derive macro for bytecheck")
    (license license:expat)))

(define-public rust-bytecheck-0.6
  (package
    (name "rust-bytecheck")
    (version "0.6.11")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "bytecheck" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "09xnpjfhw36a973dpdd2mcmb93rrix539j49vkkgcqf878174qwb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytecheck-derive" ,rust-bytecheck-derive-0.6)
                       ("rust-ptr-meta" ,rust-ptr-meta-0.1)
                       ("rust-simdutf8" ,rust-simdutf8-0.1)
                       ("rust-uuid" ,rust-uuid-1))))
    (home-page "https://github.com/djkoloski/bytecheck")
    (synopsis "Derive macro for bytecheck")
    (description "Derive macro for bytecheck")
    (license license:expat)))

(define-public rust-rkyv-0.7
  (package
    (name "rust-rkyv")
    (version "0.7.42")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rkyv" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0n2wzwnghkr2ny16c08f5szbkljfqrp3s8fnnb096f011ciwh002"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arrayvec" ,rust-arrayvec-0.7)
                       ("rust-bitvec" ,rust-bitvec-1)
                       ("rust-bytecheck" ,rust-bytecheck-0.6)
                       ("rust-hashbrown" ,rust-hashbrown-0.12)
                       ("rust-indexmap" ,rust-indexmap-1)
                       ("rust-ptr-meta" ,rust-ptr-meta-0.1)
                       ("rust-rend" ,rust-rend-0.4)
                       ("rust-rkyv-derive" ,rust-rkyv-derive-0.7)
                       ("rust-seahash" ,rust-seahash-4)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-tinyvec" ,rust-tinyvec-1)
                       ("rust-uuid" ,rust-uuid-1))))
    (home-page "https://github.com/rkyv/rkyv")
    (synopsis "Zero-copy deserialization framework for Rust")
    (description "Zero-copy deserialization framework for Rust")
    (license license:expat)))

(define-public rust-allocator-api2-0.2
  (package
    (name "rust-allocator-api2")
    (version "0.2.16")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "allocator-api2" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1iayppgq4wqbfbfcqmsbwgamj0s65012sskfvyx07pxavk3gyhh9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/zakarumych/allocator-api2")
    (synopsis "Mirror of Rust's allocator API")
    (description "Mirror of Rust's allocator API")
    (license (list license:expat license:asl2.0))))

(define-public rust-hashbrown-0.14
  (package
    (name "rust-hashbrown")
    (version "0.14.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "hashbrown" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0yj3nf0w30pf30w503kgaw4sbjnh62l5cbmc7dd0mnczzywh2qic"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                       ("rust-allocator-api2" ,rust-allocator-api2-0.2)
                       ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-rayon" ,rust-rayon-1)
                       ("rust-rkyv" ,rust-rkyv-0.7)
                       ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rust-lang/hashbrown")
    (synopsis "A Rust port of Google's SwissTable hash map")
    (description
     "This package provides a Rust port of Google's @code{SwissTable} hash map")
    (license (list license:expat license:asl2.0))))

(define-public rust-equivalent-1
  (package
    (name "rust-equivalent")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "equivalent" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1malmx5f4lkfvqasz319lq6gb3ddg19yzf9s8cykfsgzdmyq0hsl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/cuviper/equivalent")
    (synopsis "Traits for key comparison in maps.")
    (description "Traits for key comparison in maps.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-indexmap-2
  (package
    (name "rust-indexmap")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "indexmap" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0pdnbvv6gnyxx2li8mks8p00fya3ynmhx3n6infpcy8a4gi7yiym"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-equivalent" ,rust-equivalent-1)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-quickcheck" ,rust-quickcheck-1)
                       ("rust-rayon" ,rust-rayon-1)
                       ("rust-rustc-rayon" ,rust-rustc-rayon-0.5)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bluss/indexmap")
    (synopsis "A hash table with consistent order and fast iteration.")
    (description
     "This package provides a hash table with consistent order and fast iteration.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-serde-json-1
  (package
    (name "rust-serde-json")
    (version "1.0.104")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "serde_json" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0v4pdqhgi29w4dgagpv5xn5i1ziji1x84c9af9dsr3h7y72ncq07"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/serde-rs/json")
    (synopsis "A JSON serialization file format")
    (description "This package provides a JSON serialization file format")
    (license (list license:expat license:asl2.0))))

(define-public rust-quote-1
  (package
    (name "rust-quote")
    (version "1.0.32")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "quote" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0rarx33n4sp7ihsiasrjip5qxh01f5sn80daxc6m885pryfb7wsh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1))))
    (home-page "https://github.com/dtolnay/quote")
    (synopsis "Quasi-quoting macro quote!(...)")
    (description "Quasi-quoting macro quote!(...)")
    (license (list license:expat license:asl2.0))))

(define-public rust-proc-macro2-1
  (package
    (name "rust-proc-macro2")
    (version "1.0.66")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "proc-macro2" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ngawak3lh5p63k5x2wk37qy65q1yylk1phwhbmb5pcv7zdk3yqq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-unicode-ident" ,rust-unicode-ident-1))))
    (home-page "https://github.com/dtolnay/proc-macro2")
    (synopsis
     "A substitute implementation of the compiler's `proc_macro` API to decouple token-based libraries from the procedural macro use case.")
    (description
     "This package provides a substitute implementation of the compiler's `proc_macro`
API to decouple token-based libraries from the procedural macro use case.")
    (license (list license:expat license:asl2.0))))

(define-public rust-syn-2
  (package
    (name "rust-syn")
    (version "2.0.27")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "syn" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1q25pa0d0i66dnq5b9c1vbr3bm4nlmkayzb5ijf5n9d88hznf3xn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-unicode-ident" ,rust-unicode-ident-1))))
    (home-page "https://github.com/dtolnay/syn")
    (synopsis "Parser for Rust source code")
    (description "Parser for Rust source code")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-derive-1
  (package
    (name "rust-serde-derive")
    (version "1.0.178")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "serde_derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0sspxpbvv7nqbhbcdz52npk1nbcj8y31bnkkn964ahb6ilqq517j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://serde.rs")
    (synopsis "Implementation of #[derive(Serialize, Deserialize)]")
    (description "Implementation of #[derive(Serialize, Deserialize)]")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-1
  (package
    (name "rust-serde")
    (version "1.0.178")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "serde" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0j0kk1md1ihf3zh032mhhzwx4hcjvigv5ni0lmk05gm777fkndk0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://serde.rs")
    (synopsis "A generic serialization/deserialization framework")
    (description
     "This package provides a generic serialization/deserialization framework")
    (license (list license:expat license:asl2.0))))

(define-public rust-hermit-abi-0.3
  (package
    (name "rust-hermit-abi")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "hermit-abi" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "12v66gy77sqrgmjlx01w9p054nvz4mnhbd6xaazkxnddrp448ca4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/hermitcore/rusty-hermit")
    (synopsis "Hermit system calls definitions.")
    (description "Hermit system calls definitions.")
    (license (list license:expat license:asl2.0))))

(define-public rust-num-cpus-1
  (package
    (name "rust-num-cpus")
    (version "1.16.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "num_cpus" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hra6ihpnh06dvfvz9ipscys0xfqa9ca9hzp384d5m02ssvgqqa1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-hermit-abi" ,rust-hermit-abi-0.3)
                       ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/seanmonstar/num_cpus")
    (synopsis "Get the number of CPUs on a machine.")
    (description "Get the number of CPUs on a machine.")
    (license (list license:expat license:asl2.0))))

(define-public rust-sval-test-2
  (package
    (name "rust-sval-test")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sval_test" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "10kmxysanpa0kvll716s7a4bqsfd8c0w0b4g1a1g3mv2mm8cbip2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-sval" ,rust-sval-2))))
    (home-page "https://github.com/sval-rs/sval")
    (synopsis "Utilities for testing sval::Value implementations")
    (description "Utilities for testing sval::Value implementations")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sval-serde-2
  (package
    (name "rust-sval-serde")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sval_serde" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0imhipninbxsj4l6ahiqb3dw8vvbbk9y9yhyspjw7xw10p6jc2c3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-sval" ,rust-sval-2)
                       ("rust-sval-buffer" ,rust-sval-buffer-2)
                       ("rust-sval-fmt" ,rust-sval-fmt-2))))
    (home-page "https://github.com/sval-rs/sval")
    (synopsis "Integration between serde::Serialize and sval::Value")
    (description "Integration between serde::Serialize and sval::Value")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sval-json-2
  (package
    (name "rust-sval-json")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sval_json" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "13c8hna2n7ykiz3l3ahx2iqmfjmwhyfm0j9n51h8ifwcwckzd9md"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-itoa" ,rust-itoa-1)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-sval" ,rust-sval-2))))
    (home-page "https://github.com/sval-rs/sval")
    (synopsis "JSON support for sval")
    (description "JSON support for sval")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sval-fmt-2
  (package
    (name "rust-sval-fmt")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sval_fmt" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "09j3ss5kayp6pb23wasc1k9mjcvv0x6v1xrqzasml162cj9rxh3x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-itoa" ,rust-itoa-1)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-sval" ,rust-sval-2))))
    (home-page "https://github.com/sval-rs/sval")
    (synopsis "Integration between std::fmt::Debug and sval::Value")
    (description "Integration between std::fmt::Debug and sval::Value")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sval-dynamic-2
  (package
    (name "rust-sval-dynamic")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sval_dynamic" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1kq3shbdfz74hhq4aaf27h99ax7piaqd3f4d6g9nx93pia765vx0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-sval" ,rust-sval-2))))
    (home-page "https://github.com/sval-rs/sval")
    (synopsis "Object-safe versions of sval::Stream and sval::Value")
    (description "Object-safe versions of sval::Stream and sval::Value")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sval-buffer-2
  (package
    (name "rust-sval-buffer")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sval_buffer" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0a30rw303lafs5n08xpb2sfmw45h490wri9c7wpk8szj590ykxvb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-sval" ,rust-sval-2)
                       ("rust-sval-ref" ,rust-sval-ref-2))))
    (home-page "https://github.com/sval-rs/sval")
    (synopsis "Value buffering for sval")
    (description "Value buffering for sval")
    (license (list license:asl2.0 license:expat))))

(define-public rust-value-bag-sval2-1
  (package
    (name "rust-value-bag-sval2")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "value-bag-sval2" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0zdd1xj6vby5bv575vqc7in3gs9mzg8jgxfbj4g3dwxn8r0lzcih"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-sval" ,rust-sval-2)
                       ("rust-sval-buffer" ,rust-sval-buffer-2)
                       ("rust-sval-dynamic" ,rust-sval-dynamic-2)
                       ("rust-sval-fmt" ,rust-sval-fmt-2)
                       ("rust-sval-json" ,rust-sval-json-2)
                       ("rust-sval-ref" ,rust-sval-ref-2)
                       ("rust-sval-serde" ,rust-sval-serde-2)
                       ("rust-sval-test" ,rust-sval-test-2))))
    (home-page "")
    (synopsis "Implementation detail for value-bag")
    (description "Implementation detail for value-bag")
    (license (list license:asl2.0 license:expat))))

(define-public rust-serde-buf-0.1
  (package
    (name "rust-serde-buf")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "serde_buf" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1k2nc3pa7rbzyhhnjakw6nkx2wa6da6nrxf65s6p2d3xdjfvx1is"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/KodrAus/serde_buf.git")
    (synopsis "Generic buffering for serde")
    (description "Generic buffering for serde")
    (license (list license:asl2.0 license:expat))))

(define-public rust-value-bag-serde1-1
  (package
    (name "rust-value-bag-serde1")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "value-bag-serde1" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1523528ccb5pmba1pwz4nk5qns7wv2k435vysva50fj0xzzg7fdh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-erased-serde" ,rust-erased-serde-0.3)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-buf" ,rust-serde-buf-0.1)
                       ("rust-serde-fmt" ,rust-serde-fmt-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-test" ,rust-serde-test-1))))
    (home-page "")
    (synopsis "Implementation detail for value-bag")
    (description "Implementation detail for value-bag")
    (license (list license:asl2.0 license:expat))))

(define-public rust-value-bag-1
  (package
    (name "rust-value-bag")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "value-bag" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "18zl11ghirkc4mnkma1ms210gzgg0hm1an8vq1430l48zdkwsb6r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-value-bag-serde1" ,rust-value-bag-serde1-1)
                       ("rust-value-bag-sval2" ,rust-value-bag-sval2-1))))
    (home-page "https://github.com/sval-rs/value-bag")
    (synopsis "Anonymous structured values")
    (description "Anonymous structured values")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sval-ref-2
  (package
    (name "rust-sval-ref")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sval_ref" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0z1dy9mvqw9w63mz82h8il1r9dxlp1dadh54npcx0jwq5aaa2g3h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-sval" ,rust-sval-2))))
    (home-page "https://github.com/sval-rs/sval")
    (synopsis "A variant of sval::Value for types with internal references")
    (description
     "This package provides a variant of sval::Value for types with internal
references")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sval-derive-2
  (package
    (name "rust-sval-derive")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sval_derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1xp383009kz8lw0892fli31nbz17d7yw6f4gks1f5i70d1vcsadb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/sval-rs/sval")
    (synopsis "Derive support for sval")
    (description "Derive support for sval")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sval-2
  (package
    (name "rust-sval")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sval" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1cbq3cx67dw0my4cn8ldgf9p4hkxsmb5g6yggi3yklrllhh160wb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-sval-derive" ,rust-sval-derive-2))))
    (home-page "https://github.com/sval-rs/sval")
    (synopsis "Streaming, structured value serialization")
    (description "Streaming, structured value serialization")
    (license (list license:asl2.0 license:expat))))

(define-public rust-log-0.4
  (package
    (name "rust-log")
    (version "0.4.19")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "log" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1d0442jg89rc56lyrj6vaz74i5bqvvwfzqw2cx21l9qg9kg4qsmh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-sval" ,rust-sval-2)
                       ("rust-sval-ref" ,rust-sval-ref-2)
                       ("rust-value-bag" ,rust-value-bag-1))))
    (home-page "https://github.com/rust-lang/log")
    (synopsis "A lightweight logging facade for Rust
")
    (description "This package provides a lightweight logging facade for Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-ignore-0.4
  (package
    (name "rust-ignore")
    (version "0.4.20")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "ignore" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "14kl9fv83klbnjxdv0y8lpwlj3gkypxf3vbrmm29m2jkmcyqgryv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-globset" ,rust-globset-0.4)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-same-file" ,rust-same-file-1)
                       ("rust-thread-local" ,rust-thread-local-1)
                       ("rust-walkdir" ,rust-walkdir-2)
                       ("rust-winapi-util" ,rust-winapi-util-0.1))))
    (home-page
     "https://github.com/BurntSushi/ripgrep/tree/master/crates/ignore")
    (synopsis
     "A fast library for efficiently matching ignore files such as `.gitignore`
against file paths.
")
    (description
     "This package provides a fast library for efficiently matching ignore files such
as `.gitignore` against file paths.")
    (license (list license:unlicense license:expat))))

(define-public rust-regex-1
  (package
    (name "rust-regex")
    (version "1.9.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "regex" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0xdmrvs8fy7yw2bdk76mjbhzqibms7g4ljg468jwzxr0qa7ydsmj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-regex-automata" ,rust-regex-automata-0.3)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.7))))
    (home-page "https://github.com/rust-lang/regex")
    (synopsis
     "An implementation of regular expressions for Rust. This implementation uses
finite automata and guarantees linear time matching on all inputs.
")
    (description
     "An implementation of regular expressions for Rust.  This implementation uses
finite automata and guarantees linear time matching on all inputs.")
    (license (list license:expat license:asl2.0))))

(define-public rust-regex-syntax-0.7
  (package
    (name "rust-regex-syntax")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "regex-syntax" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1qjczlc2w92kamn9ipjdr5pjql0jnccahpi9l3r6wp0rnsjr5sp5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1))))
    (home-page "https://github.com/rust-lang/regex/tree/master/regex-syntax")
    (synopsis "A regular expression parser.")
    (description "This package provides a regular expression parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-regex-automata-0.3
  (package
    (name "rust-regex-automata")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "regex-automata" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "156jmvsbzd9arih42ninzkfgv7g93g6i2fdxc5gki53m1ccxddmp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.7))))
    (home-page "https://github.com/rust-lang/regex/tree/master/regex-automata")
    (synopsis "Automata construction and matching using regular expressions.")
    (description
     "Automata construction and matching using regular expressions.")
    (license (list license:expat license:asl2.0))))

(define-public rust-bstr-1
  (package
    (name "rust-bstr")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "bstr" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "01bvsr3x9n75klbwxym0zf939vzim0plsmy786p0zzzvrj6i9637"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-memchr" ,rust-memchr-2)
                       ("rust-regex-automata" ,rust-regex-automata-0.3)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/BurntSushi/bstr")
    (synopsis "A string type that is not required to be valid UTF-8.")
    (description
     "This package provides a string type that is not required to be valid UTF-8.")
    (license (list license:expat license:asl2.0))))

(define-public rust-aho-corasick-1
  (package
    (name "rust-aho-corasick")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "aho-corasick" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0has59a3571irggpk5z8c0lpnx8kdx12qf4g2x0560i2y8dwpxj3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-memchr" ,rust-memchr-2))))
    (home-page "https://github.com/BurntSushi/aho-corasick")
    (synopsis "Fast multiple substring searching.")
    (description "Fast multiple substring searching.")
    (license (list license:unlicense license:expat))))

(define-public rust-globset-0.4
  (package
    (name "rust-globset")
    (version "0.4.12")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "globset" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "01phmxrkr9d7lhh84b6nylgjb3r21ssfddxvm23ihz3hw3cbpa5c"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1)
                       ("rust-bstr" ,rust-bstr-1)
                       ("rust-fnv" ,rust-fnv-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page
     "https://github.com/BurntSushi/ripgrep/tree/master/crates/globset")
    (synopsis
     "Cross platform single glob and glob set matching. Glob set matching is the
process of matching one or more glob patterns against a single candidate path
simultaneously, and returning all of the globs that matched.
")
    (description
     "Cross platform single glob and glob set matching.  Glob set matching is the
process of matching one or more glob patterns against a single candidate path
simultaneously, and returning all of the globs that matched.")
    (license (list license:unlicense license:expat))))

(define-public rust-stacker-0.1
  (package
    (name "rust-stacker")
    (version "0.1.15")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "stacker" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1klz4mk1iqn3jixhnls6ia4ql4fpinnfjibxabpx6pqmh12bv1n8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-psm" ,rust-psm-0.1)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/rust-lang/stacker")
    (synopsis
     "A stack growth library useful when implementing deeply recursive algorithms that
may accidentally blow the stack.
")
    (description
     "This package provides a stack growth library useful when implementing deeply
recursive algorithms that may accidentally blow the stack.")
    (license (list license:expat license:asl2.0))))

(define-public rust-smol-str-0.1
  (package
    (name "rust-smol-str")
    (version "0.1.25")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "smol_str" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "10mndmcljjrqk96ndy7hffccjglaxkv4l8bd8sn2r4rbi4j8s9lx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rust-analyzer/smol_str")
    (synopsis "small-string optimized string type with O(1) clone")
    (description "small-string optimized string type with O(1) clone")
    (license (list license:expat license:asl2.0))))

(define-public rust-logos-derive-0.12
  (package
    (name "rust-logos-derive")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "logos-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0v295x78vcskab88hshl530w9d1vn61cmlaic4d6dydsila4kn51"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-beef" ,rust-beef-0.5)
                       ("rust-fnv" ,rust-fnv-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.6)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/maciejhirsz/logos")
    (synopsis "Create ridiculously fast Lexers")
    (description "Create ridiculously fast Lexers")
    (license (list license:expat license:asl2.0))))

(define-public rust-logos-0.12
  (package
    (name "rust-logos")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "logos" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1w82qm3hck5cr6ax3j3yzrpf4zzbffahz126ahyqwyn6h8b072xz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-logos-derive" ,rust-logos-derive-0.12))))
    (home-page "https://github.com/maciejhirsz/logos")
    (synopsis "Create ridiculously fast Lexers")
    (description "Create ridiculously fast Lexers")
    (license (list license:expat license:asl2.0))))

(define-public rust-full-moon-derive-0.11
  (package
    (name "rust-full-moon-derive")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "full_moon_derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1xy6lfi52lva7c2giy2zm0ybki58ir9233a7qlfpv4jnrq9bvd4r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-indexmap" ,rust-indexmap-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/Kampfkarren/full-moon")
    (synopsis "Internally used for the full_moon project. Do not use.")
    (description "Internally used for the full_moon project.  Do not use.")
    (license license:mpl2.0)))

(define-public rust-full-moon-0.18
  (package
    (name "rust-full-moon")
    (version "0.18.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "full_moon" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0747c1xnj6g24sb31jhxynhb06mhcs6l7qcvnps0iv1awksrp6kv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytecount" ,rust-bytecount-0.6)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-derive-more" ,rust-derive-more-0.99)
                       ("rust-full-moon-derive" ,rust-full-moon-derive-0.11)
                       ("rust-logos" ,rust-logos-0.12)
                       ("rust-paste" ,rust-paste-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-smol-str" ,rust-smol-str-0.1)
                       ("rust-stacker" ,rust-stacker-0.1))))
    (home-page "https://github.com/Kampfkarren/full-moon")
    (synopsis "A lossless Lua parser")
    (description "This package provides a lossless Lua parser")
    (license license:mpl2.0)))

(define-public rust-ec4rs-1
  (package
    (name "rust-ec4rs")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "ec4rs" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0dwlw73v0lyschcfx94fj196jdgn8311rp6gb3y1zajqshcpiryb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/TheDaemoness/ec4rs")
    (synopsis "EditorConfig For Rust")
    (description "@code{EditorConfig} For Rust")
    (license license:asl2.0)))

(define-public rust-crossbeam-channel-0.5
  (package
    (name "rust-crossbeam-channel")
    (version "0.5.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "crossbeam-channel" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "004jz4wxp9k26z657i7rsh9s7586dklx2c5aqf1n3w1dgzvjng53"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8))))
    (home-page
     "https://github.com/crossbeam-rs/crossbeam/tree/master/crossbeam-channel")
    (synopsis "Multi-producer multi-consumer channels for message passing")
    (description "Multi-producer multi-consumer channels for message passing")
    (license (list license:expat license:asl2.0))))

(define-public rust-console-0.15
  (package
    (name "rust-console")
    (version "0.15.7")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "console" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1y6cbwadid5g4fyn4xq9c0s7mfavqqfg6prs9p3gvphfqw6f09n9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-encode-unicode" ,rust-encode-unicode-0.3)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-unicode-width" ,rust-unicode-width-0.1)
                       ("rust-windows-sys" ,rust-windows-sys-0.45))))
    (home-page "https://github.com/console-rs/console")
    (synopsis "A terminal and console abstraction for Rust")
    (description
     "This package provides a terminal and console abstraction for Rust")
    (license license:expat)))

(define-public rust-anyhow-1
  (package
    (name "rust-anyhow")
    (version "1.0.72")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "anyhow" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0m08x5pwz8ndyjdxmyy41ix8mvjlrr5pihw0gdsapizch0nw64rv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3))))
    (home-page "https://github.com/dtolnay/anyhow")
    (synopsis "Flexible concrete Error type built on std::error::Error")
    (description "Flexible concrete Error type built on std::error::Error")
    (license (list license:expat license:asl2.0))))

(define-public rust-stylua-0.18
  (package
    (name "rust-stylua")
    (version "0.18.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "stylua" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1bh3bfj089agzcrz1zk9c4jf9j4rc775sqrix2n4hpa3vhsf3qh9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-clap" ,rust-clap-3)
                       ("rust-console" ,rust-console-0.15)
                       ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                       ("rust-ec4rs" ,rust-ec4rs-1)
                       ("rust-env-logger" ,rust-env-logger-0.10)
                       ("rust-full-moon" ,rust-full-moon-0.18)
                       ("rust-globset" ,rust-globset-0.4)
                       ("rust-ignore" ,rust-ignore-0.4)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-num-cpus" ,rust-num-cpus-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-similar" ,rust-similar-2)
                       ("rust-strum" ,rust-strum-0.25)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-threadpool" ,rust-threadpool-1)
                       ("rust-toml" ,rust-toml-0.7)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))
       #:cargo-development-inputs (("rust-assert-cmd" ,rust-assert-cmd-2)
                                   ("rust-criterion" ,rust-criterion-0.4)
                                   ("rust-insta" ,rust-insta-1))))
    (home-page "https://github.com/johnnymorganz/stylua")
    (synopsis "A code formatter for Lua")
    (description "This package provides a code formatter for Lua")
    (license license:mpl2.0)))

rust-stylua-0.18
