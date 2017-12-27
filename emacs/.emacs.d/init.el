(require 'package)
(setq package-archives
  '(("gnu" . "http://elpa.gnu.org/packages/")
    ("marmalade" . "http://marmalade-repo.org/packages/")
    ("melpa" . "http://melpa.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(let ((file-name-handler-alist nil))
  (require 'init-vim)
  (require 'init-file-explorer)
  (require 'init-file-finder)
  (require 'init-file-search)
  (require 'init-appearance)
  (require 'init-auto-complete)
  (require 'init-syntax-check)
  (require 'init-text)
  (require 'init-el)
  (require 'init-python))

(setq-default major-mode 'text-mode)

(setq initial-scratch-message nil)
