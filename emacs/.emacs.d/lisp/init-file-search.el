(use-package helm-ag
  :ensure t
  :config

  (define-key evil-normal-state-map (kbd "C-f") 'helm-projectile-ag)
  (customize-set-variable 'grep-find-ignored-directories
			  (list "SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "objects" "build" "bin" "out" "lib" "dist" "node_modules" ".nyc_output"))
  (display-in-buffer (rx bos "*helm projectile*")))

(evil-define-command evil-ack (arg)
  (interactive "<a>")
  (progn
    (grep-compute-defaults)
    (rgrep arg "*.*" (projectile-project-root)))) ; In linux (getenv "PWD") works

(evil-ex-define-cmd "Ack" 'evil-ack)

(customize-set-variable
  'grep-find-ignored-directories
  (list "SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "objects" "build" "bin" "out" "lib" "dist" "node_modules" ".nyc_output"))

(provide 'init-file-search)
