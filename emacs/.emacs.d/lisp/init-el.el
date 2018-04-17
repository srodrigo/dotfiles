(require 'programming-mode)
(require 'gutter-mode)
(require 'init-parenthesis)

(add-hook 'emacs-lisp-mode-hook 'programming-mode)
(add-hook 'emacs-lisp-mode-hook 'gutter-mode)
(add-hook 'emacs-lisp-mode-hook 'company-mode)
(add-hook 'emacs-lisp-mode-hook 'smartparens-strict-mode)
(add-hook 'flycheck-mode-hook
  (lambda () (
    add-to-list 'flycheck-disabled-checkers 'emacs-lisp-checkdoc)))

(provide 'init-el)
