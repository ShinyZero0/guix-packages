(define-module (zero home services shellutils))
(use-modules (gnu home services)
             (gnu home services)
             (gnu home-services shells)
             (gnu packages rust-apps))

(define-public home-zsh-zoxide-service-type
  (service-type
   (name 'home-zsh-zoxide)
   (extensions
    (list
     (service-extension
      home-profile-service-type
      (const (list zoxide)))
     (service-extension
      home-zsh-service-type
      (const (home-zsh-extension
	      (zshrc (list "eval \"$(zoxide init zsh)\"")))))))
   (default-value #f)
   (description "Enable Zoxide integration for Zsh.")))
