(require 'programming-mode)

(add-hook 'python-mode-hook 'programming-mode)

(add-hook 'flycheck-mode-hook
  (lambda ()
    (progn
      (flycheck-add-mode 'python-pylint 'python-mode-hook))))

(provide 'init-python)
