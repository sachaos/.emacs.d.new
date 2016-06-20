;;;;;;;;;;;;;;;;;;;;;
;; javascript mode ;;
;;;;;;;;;;;;;;;;;;;;;

(require 'js2-mode)

;; indent
(setq js-indent-level 2)
(setq js2-basic-offset 2)

(add-hook 'js2-jsx-mode-hook 'emmet-mode)
