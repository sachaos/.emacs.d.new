;;;;;;;;;;;;;;;
;; ruby-mode ;;
;;;;;;;;;;;;;;;

(setq ruby-insert-encoding-magic-comment nil)

;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)

;; ruby-end
(custom-set-variables '(ruby-end-insert-newline nil))

;; robe
(add-hook 'enh-ruby-mode-hook 'robe-mode)
(autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)
(autoload 'ac-robe-setup "ac-robe" "auto-complete robe" nil nil)
(add-hook 'robe-mode-hook 'ac-robe-setup)
