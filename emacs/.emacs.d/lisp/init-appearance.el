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

(use-package whitespace
  :ensure t

  :config
  (progn
    (setq whitespace-style '(face
                             trailing
                             space-after-tab::tab
                             space-before-tab::tab))
    (setq whitespace-display-mappings '((space-mark 32 [183] [46])))
    (set-face-attribute 'whitespace-trailing nil :background "magenta")
    (evil-leader/set-key "w" 'whitespace-cleanup)))

(global-whitespace-mode +1)

(setq initial-scratch-message nil)

(setq inhibit-startup-message t)

(menu-bar-mode -1)

(use-package ansi-color
  :ensure t)
(defun endless/colorize-compilation ()
  "Colorize from `compilation-filter-start' to `point'."
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region
      compilation-filter-start (point))))

(add-hook 'compilation-filter-hook 'endless/colorize-compilation)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-appearance)
