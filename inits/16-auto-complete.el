;;;;;;;;;;;;;;;;;;;
;; auto-complete ;;
;;;;;;;;;;;;;;;;;;;

(ac-config-default)
(setq ac-use-menu-map t)
(setq ac-use-fuzzy t)
(global-auto-complete-mode t)

(defun auto-complete-mode-maybe ()
  "No maybe for you. Only AC!"
  (unless (minibufferp (current-buffer))
    (auto-complete-mode 1)))
