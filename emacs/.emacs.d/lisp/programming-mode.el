(require 'paren)

(define-minor-mode programming-mode
  :lighter " Prog"
  :group 'programming

  (setq show-paren-delay 0)

  (if programming-mode
    (progn
      (flycheck-mode +1)
      (rainbow-delimiters-mode +1)
      (show-paren-mode +1))
    (progn
      (flycheck-mode -1)
      (rainbow-delimiters-mode -1)
      (show-paren-mode -1))))

(provide 'programming-mode)
