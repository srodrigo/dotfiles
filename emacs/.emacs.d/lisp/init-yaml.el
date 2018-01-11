(require 'programming-mode)
(require 'gutter-mode)

(use-package yaml-mode
  :ensure t
  :defer t
  :config
  (add-hook 'yaml-mode-hook
    (lambda ()
      (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
  (add-hook 'yaml-mode-hook 'programming-mode)
  (add-hook 'yaml-mode-hook 'gutter-mode))

(provide 'init-yaml)
