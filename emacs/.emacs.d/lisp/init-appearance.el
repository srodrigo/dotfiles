(use-package nord-theme
  :ensure t
  :config
  (set-face-attribute 'font-lock-comment-face nil :foreground "#81A1C1"))

(use-package powerline
  :ensure t
  :config
  (powerline-center-evil-theme))

(use-package flycheck-color-mode-line
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(use-package rainbow-delimiters
  :ensure t)

(provide 'init-appearance)
