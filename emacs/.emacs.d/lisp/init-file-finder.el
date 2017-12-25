(use-package
  helm-projectile
  :ensure t
  :config

  (global-set-key (kbd "C-p") 'helm-projectile-find-file)
  (define-key evil-normal-state-map (kbd "C-p") 'helm-projectile-find-file)

  (define-key evil-normal-state-map (kbd "C-b") 'helm-mini))

(provide 'init-file-finder)
