(use-package nord-theme
  :ensure t
  :config
  (set-face-attribute 'font-lock-comment-face nil :foreground "#81A1C1"))

(use-package powerline
  :ensure t
  :config
  (powerline-center-evil-theme))

(use-package airline-themes
  :ensure t
  :config
  (load-theme 'airline-molokai))

(provide 'init-appearance)
