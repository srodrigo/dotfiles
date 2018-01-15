(require 'programming-mode)
(require 'gutter-mode)

(use-package web-mode
  :ensure t
  :defer t
  :mode "\\.x?html?$"
  :mode "\\.hbs$"
  :mode "\\.handlebars$"
  :config
  (setq
    web-mode-markup-indent-offset 2
    web-mode-code-indent-offset 2)
  (add-hook 'web-mode-hook 'programming-mode)
  (add-hook 'web-mode-hook 'gutter-mode))

(provide 'init-markup)
