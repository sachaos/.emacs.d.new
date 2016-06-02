;;;;;;;;;;;;;;;;;;;
;; markdown-mode ;;
;;;;;;;;;;;;;;;;;;;

(require 'markdown-mode)
(require 'mmm-mode)
(require 'org-table)
(setq mmm-global-mode 'maybe)

(defun my-mmm-markdown-auto-class (lang &optional submode)
  "Define a mmm-mode class for LANG in `markdown-mode' using SUBMODE.
If SUBMODE is not provided, use `LANG-mode' by default."
  (let ((class (intern (concat "markdown-" lang)))
        (submode (or submode (intern (concat lang "-mode"))))
        (front (concat "^```" lang "[\n\r]+"))
        (back "^```"))
    (mmm-add-classes (list (list class :submode submode :front front :back back)))
    (mmm-add-mode-ext-class 'markdown-mode nil class)))


;; Mode names that derive directly from the language name
(mapc 'my-mmm-markdown-auto-class
      '("yaml" "lua" "elixir" "ruby"))

;; Mode names that differ from the language name
(my-mmm-markdown-auto-class "shell" 'shell-script-mode)

;; color
(set-face-foreground 'markdown-header-delimiter-face "color-247")
(set-face-foreground 'markdown-header-face-1 "brightblue")
(set-face-foreground 'markdown-header-face-2 "brightcyan")
(set-face-foreground 'markdown-header-face-3 "brightgreen")
(set-face-foreground 'markdown-header-face-4 "brightyellow")

(defun cleanup-org-tables ()
  (save-excursion
    (goto-char (point-min))
    (while (search-forward "-+-" nil t) (replace-match "-|-"))))
(add-hook 'markdown-mode-hook 'orgtbl-mode)
(add-hook 'markdown-mode-hook
          #'(lambda()
              (add-hook 'after-save-hook 'cleanup-org-tables  nil 'make-it-local)))
