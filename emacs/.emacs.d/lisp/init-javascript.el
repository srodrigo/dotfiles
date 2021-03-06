(require 'programming-mode)
(require 'gutter-mode)

(use-package js2-mode
  :ensure t
  :mode ("\\.js$" . js2-mode )
  :mode ("\\.jsx$" . js2-jsx-mode )
  :interpreter "node"
  :config
  (setq js-indent-level 2
        evil-shift-width 2
        js2-basic-offset 2
        js2-bounce-indent-p t
        js2-assume-strict t
        sgml-basic-offset 2
        tab-width 2
        indent-line-function 'insert-tab
        js2-strict-missing-semi-warning nil)

  (add-hook 'js-mode-hook 'programming-mode)
  (add-hook 'js-mode-hook 'gutter-mode)
  (add-hook 'js-mode-hook 'company-mode)

  (add-hook 'flycheck-mode-hook
    (lambda ()
      (progn
        (flycheck-add-mode 'javascript-standard 'js2-mode)
        (flycheck-add-mode 'javascript-standard 'js2-jsx-mode)
        (add-to-list 'flycheck-disabled-checkers 'javascript-eslint))))

  (add-hook 'js-mode-hook
    (lambda ()
      (set (make-local-variable 'compile-command) "yarn test:unit")))
  (evil-leader/set-key "t" 'compile))

(use-package tern
  :defer t
  :config
  (add-hook 'js-mode-hook 'tern-mode))

(use-package company-tern
  :ensure t
  :defer t
  :config
  (add-hook 'js-mode-hook
    (lambda () (add-to-list 'company-backends 'company-tern))))

(provide 'init-javascript)
