;;;;;;;;;;;;;;
;; web-mode ;;
;;;;;;;;;;;;;;

;; indent
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; adapt filename
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tag$" . web-mode))

(add-hook 'web-mode-hook 'emmet-mode)
