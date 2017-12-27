(use-package helm-projectile
  :ensure t
  :config

  (global-set-key (kbd "C-p") 'helm-projectile-find-file)
  (define-key evil-normal-state-map (kbd "C-p") 'helm-projectile-find-file)

  (define-key evil-normal-state-map (kbd "SPC") 'helm-mini))

(use-package helm-ag
  :ensure t
  :config

  (define-key evil-normal-state-map (kbd "C-f") 'helm-projectile-ag)
  (customize-set-variable 'grep-find-ignored-directories
    (list "SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "objects" "build" "bin" "out" "lib" "dist" "node_modules" ".nyc_output")))

(provide 'init-file-finder)
