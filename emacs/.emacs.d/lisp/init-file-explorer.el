(use-package neotree
  :ensure t
  :init

  (global-set-key (kbd "C-n") 'neotree-toggle)
  (define-key evil-normal-state-map (kbd "C-n") 'neotree-toggle)

  (setq neo-hidden-regexp-list '("^\\." "\\.cs\\.meta$" "\\.pyc$" "__pycache__" "~$" "^#.*#$" "\\.elc$"))

  (evil-define-key
    'normal neotree-mode-map
    (kbd "SPC") 'neotree-quick-look
    (kbd "q") 'neotree-hide
    (kbd "RET") 'neotree-enter
    (kbd "o") 'neotree-enter
    (kbd "I") 'neotree-hidden-file-toggle
    (kbd "R") 'neotree-refresh
    (kbd "i") 'neotree-enter-horizontal-split
    (kbd "s") 'neotree-enter-vertical-split
    (kbd "m") 'neotree-modify-mode-menu)

  (evil-leader/set-key (kbd "ff") 'neotree-find))

(defun neotree-modify-mode-menu (option)
  "Asks for a mode and execute associated Neotree command"
  (interactive "c(a)dd node | (d)elete node | (c)opy node | (r)ename node")
  (cond
    ((eq option ?a) (call-interactively #'neotree-create-node))
    ((eq option ?d) (neotree-delete-node))
    ((eq option ?c) (neotree-copy-node))
    ((eq option ?r) (neotree-rename-node))
    (:else (message (format "Invalid option %c" option)))))

(provide 'init-file-explorer)
