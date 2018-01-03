(require 'programming-mode)
(require 'gutter-mode)

(add-hook 'sh-mode-hook 'programming-mode)
(add-hook 'sh-mode-hook 'gutter-mode)
(add-hook 'sh-mode-hook 'company-mode)

(provide 'init-bash)
