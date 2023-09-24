(define-module (zero home services multimedia))
(use-modules
  (gnu packages music)
  (gnu home services shepherd)
  (gnu home services)
  (guix gexp)
  )
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
