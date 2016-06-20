;;;;;;;;;;;;;;;;;;;;;
;; auto-mode-alist ;;
;;;;;;;;;;;;;;;;;;;;;

;; web-mode
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tag$" . web-mode))

;; js2-jsx-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-jsx-mode))

;; shell-mode
(add-to-list 'auto-mode-alist '("zsh" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.env$" . shell-script-mode))
