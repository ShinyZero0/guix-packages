(define-module (zero packages polybar-latest))
(use-modules
  (guix packages)
  (guix git-download)
  (gnu packages wm))
(define polybar-latest
  (package
    (inherit polybar)
    (source
      (origin
        (method git-fetch)
        (uri
          (git-reference
            (url "https://github.com/polybar/polybar.git")
            (commit "53661e995ad54ca57faebc9e151ce2cdffa1916d")))
        (sha256
          (base32
            "1bfd9jf5qlgpa7rrhz0y1ccqis0xqzrw5wdsj1mdzmns47z6rcqp"))))
    (inputs (modify-inputs (package-inputs polybar)
                           (delete "i3-wm")
                           (delete "alsa-lib")
                           (delete "libmpdclient")
                           (delete "jsoncpp")))))
polybar-latest
