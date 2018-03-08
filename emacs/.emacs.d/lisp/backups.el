(setq
  backup-by-copying t
  create-lockfiles nil
  delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  make-backup-files t)

(setq backup-directory-alist
  `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))

(setq vc-follow-symlinks t)

(provide 'backups)
