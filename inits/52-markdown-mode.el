;;;;;;;;;;;;;;;;;;;
;; markdown-mode ;;
;;;;;;;;;;;;;;;;;;;

(defun markdown-mode-hooks ()
  (progn
    (set-face-foreground 'markdown-header-delimiter-face "brightmagenta")
    (set-face-foreground 'markdown-header-face-1 "brightred")
    (set-face-foreground 'markdown-header-face-2 "brightyellow")
    (set-face-foreground 'markdown-header-face-3 "brightgreen")
    (set-face-foreground 'markdown-header-face-4 "brightcyan")
    (set-face-foreground 'markdown-header-face-4 "brightblue")))

(add-hook 'markdown-mode-hook 'markdown-mode-hooks)
