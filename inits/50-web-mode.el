;;;;;;;;;;;;;;
;; web-mode ;;
;;;;;;;;;;;;;;

(setq web-mode-markup-indent-offset 2)
(setq css-indent-offset 2)

(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tag$" . web-mode))

(add-hook 'web-mode-hook 'emmet-mode)
