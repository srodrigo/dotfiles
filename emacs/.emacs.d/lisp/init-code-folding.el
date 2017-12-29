(use-package origami
  :ensure t
  :config

  (evil-leader/set-key "fo" 'origami-open-node)
  (evil-leader/set-key "fc" 'origami-close-node)
  (evil-leader/set-key "fn" 'origami-next-fold)
  (evil-leader/set-key "fp" 'origami-previous-fold)
  (evil-leader/set-key "ft" 'origami-toggle-node)
  (evil-leader/set-key "fr" 'origami-recursively-toggle-node)
  (evil-leader/set-key "fa" 'origami-toggle-all-nodes))

(provide 'init-code-folding)
