;;;;;;;;;;;;;;;
;; ruby-mode ;;
;;;;;;;;;;;;;;;

;; ruby-block
(require 'ruby-block)

;; robe
(add-hook 'enh-ruby-mode-hook 'robe-mode)
(autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)
(autoload 'ac-robe-setup "ac-robe" "auto-complete robe" nil nil)
(add-hook 'robe-mode-hook 'ac-robe-setup)
(add-hook 'robe-mode-hook 'auto-complete-mode)

;; flycheck hook
;; enable auto checker of rubocop and ruby-lint
(add-hook 'enh-ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode 1)))

(custom-set-variables '(enh-ruby-add-encoding-comment-on-save nil))
(custom-set-variables '(enh-ruby-deep-indent-paren nil))
