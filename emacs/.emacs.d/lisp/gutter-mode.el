(define-minor-mode gutter-mode
  :lighter " Gutter"
  :group 'gutter

  (use-package git-gutter
    :ensure t
    :config

    (evil-leader/set-key "d" 'git-gutter:popup-hunk)
    (evil-leader/set-key "h" 'git-gutter:next-hunk)
    (evil-leader/set-key "H" 'git-gutter:previous-hunk)
    (evil-leader/set-key "z" 'git-gutter:revert-hunk)

    (custom-set-variables
      '(git-gutter:modified-sign "~")
      '(git-gutter:deleted-sign "–")
      '(git-gutter:verbosity 0)
      '(git-gutter:visual-line t)
      '(git-gutter:ask-p nil)
      '(git-gutter:lighter " GG")))

  (display-line-numbers-mode +1)
  (git-gutter-mode +1))

(provide 'gutter-mode)
