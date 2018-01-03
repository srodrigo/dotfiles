(require 'programming-mode)
(require 'git-gutter)

(use-package dockerfile-mode
  :ensure t)

(add-hook 'dockerfile-mode-hook 'programming-mode)
(add-hook 'dockerfile-mode-hook 'gutter-mode)

(provide 'init-docker)
