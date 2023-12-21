(define-module (zero packages polybar))
(use-modules (guix packages)
             (guix transformations)
             (gnu packages wm))
(define-public
  polybar-3.7.1
  ((options->transformation
     '((with-version . "polybar=3.7.1"))) polybar))
