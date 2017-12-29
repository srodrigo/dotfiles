(require 'programming-mode)
(require 'gutter-mode)

(use-package elpy
  :ensure t)

(elpy-enable)

(add-hook 'python-mode-hook 'programming-mode)
(add-hook 'python-mode-hook 'gutter-mode)

(add-hook 'flycheck-mode-hook
  (lambda ()
    (progn
      (flycheck-add-mode 'python-pylint 'python-mode-hook))))

(add-hook 'python-mode-hook
  (lambda ()
    (progn
      (evil-leader/set-key "j" 'elpy-goto-definition)
      (evil-leader/set-key "t" 'elpy-test)
      (evil-leader/set-key "s" 'elpy-shell-switch-to-shell))))

(provide 'init-python)
