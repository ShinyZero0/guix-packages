(define-module (zero home services wallpapers)
               #:export (home-wallpapers-configuration))
(use-modules
  (gnu packages wm)
  (guix packages)
  (gnu services configuration)
  (gnu home services mcron)
  (gnu home services)
  (guix gexp))
(define-configuration/no-serialization
  home-wallpapers-configuration
  (package (package nitrogen) "Nitrogen package to use")
  (random? (boolean #f) "Whether to shuffle wallpapers")
  (display (integer 0) "x11 display")
  (dir (file-like (configuration-missing-field 'home-wallpapers-configuration 'dir)) "Directory to search wallpapers in"))
(define (home-wallpapers-mcron-jobs config)
    (list #~(job
              '(next-minute)
              (lambda _
                (setenv "DISPLAY"
                  (string-append
                    ":"
                    (number->string
                      #$(home-wallpapers-configuration-display config))))
                (apply system*
                  `(,#$(file-append nitrogen "/bin/nitrogen")
                     "--set-zoom-fill"
                     ,#$@(if (home-wallpapers-configuration-random? config)
                           '("--random") '())
                     ,#$(home-wallpapers-configuration-dir config))
                  )))))
(define-public home-wallpapers-service-type
  (service-type
    (name 'wallpapers)
    (extensions
      (list (service-extension home-mcron-service-type
                               home-wallpapers-mcron-jobs)
            (service-extension home-profile-service-type
                               (compose
                                 list
                                 home-wallpapers-configuration-package))))
    (description
      "Install and configure @command{nitrogen} for wallpaper switching as a Shepherd service.")))
