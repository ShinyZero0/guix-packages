(define-module (zero home services multimedia))
(use-modules
  (gnu packages music)
  (guix packages)
  (guix git-download)
  (gnu home services shepherd)
  (gnu home services)
  (guix gexp)
  (ice-9 match)
  (srfi srfi-1))

(define home-playerctld-services
  (const
    (list (shepherd-service
            (documentation "Run playerctld.")
            (provision '(playerctld))
            (start #~(make-forkexec-constructor
                       (list #$(file-append playerctl "/bin/playerctld"))))
            (stop #~(make-kill-destructor))))))
(define-public home-playerctld-service-type
  (service-type
   (name 'playerctld)
   (default-value #f)
   (extensions
    (list (service-extension home-shepherd-service-type
                             home-playerctld-services)
          (service-extension home-profile-service-type
                             (const (list playerctl)))))
   (description
    "Install and configure @command{playerctld} as a Shepherd service.")))

(define (home-mpv-plugins-files plugins)
  (map
    (match-lambda
      ((file-path . rest) (cons (string-append "mpv/scripts/" file-path) rest)))
    plugins))
(define-public home-mpv-plugins-service-type
               (service-type
                 (name 'mpv-plugins)
                 (default-value '())
                 (compose concatenate)
                 (extend append)
                 (extensions
                   (list
                     (service-extension home-xdg-configuration-files-service-type
                                        home-mpv-plugins-files)))
                 (description "Installs list of file-likes as mpv plugins")))
(define (home-mpv-dmenu-plugin-files _)
  `(("mdmenu.lua" ,(file-append
                     (origin
                       (method git-fetch)
                       (uri (git-reference
                              (url "https://codeberg.org/NRK/mpv-toolbox")
                              (commit "b1b7fa4b64811e6f387fcb54fc7c51b8c280336e")))
                       (sha256
                         (base32
                           "15k8vph55js6xswc5wyns8sps159mbidbkqhbbx6s7dslr03yxrn")))
                     "/mdmenu/mdmenu.lua"))))
(define-public home-mpv-dmenu-plugin-service-type
  (service-type
    (name 'mpv-dmenu-plugin)
    (default-value #f)
    (extensions
      (list
        (service-extension home-mpv-plugins-service-type
                           home-mpv-dmenu-plugin-files)))
    (description "Installs dmenu mpv plugin")))
