(use-package flycheck
  :ensure t
  :config

  (evil-leader/set-key "n" 'flycheck-next-error)
  (evil-leader/set-key "N" 'flycheck-previous-error))

(provide 'init-syntax-check)
