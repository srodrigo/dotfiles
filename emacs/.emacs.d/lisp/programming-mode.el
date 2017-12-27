(define-minor-mode programming-mode
  :lighter " Prog"
  :group 'programming

  (progn
    (flycheck-mode +1)
    (rainbow-delimiters-mode +1)))

(provide 'programming-mode)
