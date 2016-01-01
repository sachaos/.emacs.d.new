;;;;;;;;;;;;;;;;;;;
;; Base Settings ;;
;;;;;;;;;;;;;;;;;;;

;; theme
(require 'material-theme)

;; indent
(setq-default indent-tabs-mode nil)

;; auto-complete
(setq ac-use-menu-map t)
(setq ac-use-fuzzy t)

;; linum-relative
(global-linum-mode)

;; anzu
(global-anzu-mode +1)

;; undo-tree
(global-undo-tree-mode)

;; show-parent-mode
(show-paren-mode 1)

;; disable tool-bar
(tool-bar-mode -1)
(menu-bar-mode -1)

;; others
(put 'upcase-region 'disabled nil)
(setq vc-follow-symlinks t)
