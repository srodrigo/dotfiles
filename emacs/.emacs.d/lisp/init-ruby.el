(require 'programming-mode)
(require 'gutter-mode)

(add-hook 'ruby-mode-hook 'programming-mode)
(add-hook 'ruby-mode-hook 'gutter-mode)

(provide 'init-ruby)
