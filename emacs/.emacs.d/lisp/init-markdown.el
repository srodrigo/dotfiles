(require 'programming-mode)
(require 'git-gutter)

(use-package markdown-mode
  :ensure t
  :defer t)

(add-hook 'markdown-mode-hook 'programming-mode)
(add-hook 'markdown-mode-hook 'gutter-mode)

(provide 'init-markdown)
