(use-package helm-projectile
  :ensure t
  :config

  (global-set-key (kbd "C-p") 'helm-projectile-find-file)
  (define-key evil-normal-state-map (kbd "C-p") 'helm-projectile-find-file)

  (define-key evil-normal-state-map (kbd "SPC") 'helm-mini)

  (display-in-buffer (rx bos "*helm-ag*")))

(provide 'init-file-finder)
