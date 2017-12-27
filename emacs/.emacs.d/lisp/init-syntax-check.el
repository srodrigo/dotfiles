(use-package flycheck
  :ensure t
  :config

  (evil-leader/set-key "e" 'flycheck-next-error)
  (evil-leader/set-key "E" 'flycheck-previous-error))

(provide 'init-syntax-check)
