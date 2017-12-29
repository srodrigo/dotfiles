(setq *is-mac* (eq system-type 'darwin))
(setq *is-cygwin* (eq system-type 'cygwin))
(setq *is-linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)))

(defun copy-to-x-clipboard ()
  (interactive)
  (if (region-active-p)
    (progn
      (cond
        ((and (display-graphic-p) x-select-enable-clipboard)
         (x-set-selection 'CLIPBOARD (buffer-substring (region-beginning) (region-end))))
        (t (shell-command-on-region (region-beginning) (region-end)
                                    (cond
                                      (*is-cygwin* "putclip")
                                      (*is-mac* "pbcopy")
                                      (*is-linux* "xsel -ib")))
	   (message "Yanked region to clipboard!")))
      (deactivate-mark))
    (message "No region active; can't yank to clipboard!")))

(define-key evil-motion-state-map (kbd "M-c") 'copy-to-x-clipboard)

(provide 'clipboard)
