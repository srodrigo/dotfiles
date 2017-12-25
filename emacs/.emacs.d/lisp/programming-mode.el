(require 'gutter-mode)

(define-minor-mode
  programming-mode
  :lighter " Prog"
  :group 'programming

  (if programming-mode
    (progn
      (gutter-mode +1)
      (flycheck-mode +1))
    (progn
      (gutter-mode -1)
      (flycheck-mode -1))))

(provide 'programming-mode)
