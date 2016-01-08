;;;;;;;;;;;;;;;;;;;
;; Base Settings ;;
;;;;;;;;;;;;;;;;;;;

;; theme
(require 'material-theme)

;; indent
(setq-default indent-tabs-mode nil)

;; show-parent-mode
(show-paren-mode 1)

;; disable tool-bar
(menu-bar-mode -1)

;; auto-complete
(ac-config-default)
(setq ac-use-menu-map t)
(setq ac-use-fuzzy t)
(global-auto-complete-mode t)

;; linum
(setq linum-format "%4d ")
(global-linum-mode)

;; anzu
(global-anzu-mode +1)

;; undo-tree
(global-undo-tree-mode)

;; redspace
(redspace-mode t)

;; others
(put 'upcase-region 'disabled nil)
(setq vc-follow-symlinks t)
