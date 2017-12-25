(define-minor-mode
  gutter-mode
  :lighter " Gutter"
  :group 'gutter

  (if gutter-mode
    (progn
      (display-line-numbers-mode +1))
    (progn
      (display-line-numbers-mode -1))))

(provide 'gutter-mode)
