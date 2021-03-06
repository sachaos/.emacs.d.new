;;;;;;;;;;;;;;;;;;;
;; Base Settings ;;
;;;;;;;;;;;;;;;;;;;

;; theme
(require 'material-theme)

;; indent
(setq-default indent-tabs-mode nil)
(setq css-indent-offset 2) ;; CSS

;; show-parent-mode
(show-paren-mode 1)

;; disable tool-bar
(menu-bar-mode -1)

;; linum
(setq linum-format "%4d ")
(global-linum-mode)

;; anzu
(global-anzu-mode +1)

;; undo-tree
(global-undo-tree-mode)

;; redspace
(redspace-mode t)

;; enable delete region
(delete-selection-mode t)

;; 
(setq nobreak-char-display nil)

;; others
(put 'upcase-region 'disabled nil)
(setq vc-follow-symlinks t)
