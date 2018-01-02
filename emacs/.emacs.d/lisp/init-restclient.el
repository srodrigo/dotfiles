(use-package restclient
  :ensure t
  :defer t
  :config
  (evil-leader/set-key "rs" 'restclient-http-send-current))

(provide 'init-restclient)
