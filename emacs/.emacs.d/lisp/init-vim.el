(use-package key-chord
  :ensure t)

(use-package evil-leader
  :ensure t
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader ","))

(use-package evil
  :ensure t
  :config
  (evil-mode 1)

  ; Remap escape
  (setq key-chord-two-keys-delay 0.3)
  (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
  (key-chord-mode 1)

  ; Navigate between windows
  (define-key evil-motion-state-map (kbd "C-k") 'evil-window-up)
  (define-key evil-motion-state-map (kbd "C-j") 'evil-window-down)
  (define-key evil-motion-state-map (kbd "C-h") 'evil-window-left)
  (define-key evil-motion-state-map (kbd "C-l") 'evil-window-right)

  (evil-leader/set-key (kbd "b") 'evil-next-buffer)
  (evil-leader/set-key (kbd "B") 'evil-next-buffer)

  (define-key evil-motion-state-map (kbd "C-z") 'suspend-emacs))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package evil-nerd-commenter
  :ensure t
  :config
  (evilnc-default-hotkeys))

(provide 'init-vim)
