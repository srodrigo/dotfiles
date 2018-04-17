(require 'programming-mode)
(require 'git-gutter)

(use-package dockerfile-mode
  :ensure t
  :mode ("Dockerfile*" . dockerfile-mode))

(add-hook 'dockerfile-mode-hook 'programming-mode)
(add-hook 'dockerfile-mode-hook 'gutter-mode)

(provide 'init-docker)
