;;;;;;;;;;;;;;
;; web-mode ;;
;;;;;;;;;;;;;;

;; indent
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
<<<<<<< 8cf952f73ad68d3c5cc427fff6b976a710a1a324
(setq css-indent-offset 2)
=======
>>>>>>> Modify indent settings

;; adapt filename
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tag$" . web-mode))

(add-hook 'web-mode-hook 'emmet-mode)
