(defun display-in-buffer (regex)
  (add-to-list 'display-buffer-alist
    `(,regex
      (display-buffer-reuse-window display-buffer-in-side-window)
      (side . bottom)
      (reusable-frames . visible)
      (window-height . 0.33))))

(provide 'buffers)
