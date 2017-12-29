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

(setq show-trailing-whitespace t)

(setq initial-scratch-message nil)

(setq inhibit-startup-message t)

(menu-bar-mode -1)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-appearance)
