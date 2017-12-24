(use-package key-chord
    :ensure t
    :init)

(use-package evil
    :ensure t
    :config
    (evil-mode 1)
    (setq key-chord-two-keys-delay 0.3)
    (key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
    (key-chord-mode 1))

(provide 'init-vim)
