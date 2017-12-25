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

(use-package nlinum
  :ensure t
  :init
  (add-hook 'nlinum-mode-hook #'my-nlinum-mode-hook))

(defun my-nlinum-mode-hook ()
  (when nlinum-mode
    (setq-local nlinum-format
      (concat "%" (number-to-string
        ;; Guesstimate number of buffer lines.
        (ceiling (log (max 1 (/ (buffer-size) 80)) 10)))
        "d "))))

(provide 'init-appearance)
