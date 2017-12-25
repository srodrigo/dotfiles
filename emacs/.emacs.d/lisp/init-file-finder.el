(use-package
  helm-projectile
  :ensure t
  :config

  (global-set-key (kbd "C-p") 'helm-projectile-find-file)
  (define-key evil-normal-state-map (kbd "C-p") 'helm-projectile-find-file)

  (global-set-key (kbd "SPC") 'helm-mini)
  (define-key evil-normal-state-map (kbd "SPC") 'helm-mini))

(provide 'init-file-finder)
