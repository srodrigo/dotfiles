(use-package flycheck
  :ensure t
  :config

  (evil-leader/set-key "e" 'flycheck-next-error)
  (evil-leader/set-key "E" 'flycheck-previous-error)

  (display-in-buffer (rx bos "*Flycheck errors*"))
  (display-in-buffer (rx bos "*Flycheck error messages*")))

(provide 'init-syntax-check)
