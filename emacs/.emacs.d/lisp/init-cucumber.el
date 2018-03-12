(require 'programming-mode)
(require 'gutter-mode)

(use-package feature-mode
  :ensure t
  :defer t

  :config
  (add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

  (add-hook 'feature-mode-hook 'programming-mode)
  (add-hook 'feature-mode-hook 'gutter-mode)

  (setq feature-step-search-path "features/**/*steps.rb"))

(provide 'init-cucumber)
