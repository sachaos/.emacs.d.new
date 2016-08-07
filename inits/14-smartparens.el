;;;;;;;;;;;;;;;;;
;; smartparens ;;
;;;;;;;;;;;;;;;;;

(require 'smartparens-config)

(smartparens-global-mode)

(sp-with-modes '(elixir-mode)
  (sp-local-pair "fn" "end"
                 :when '(("SPC" "RET"))
                 :actions '(insert navigate))
  (sp-local-pair "do" "end"
                 :when '(("SPC" "RET"))
                 :post-handlers '(sp-ruby-def-post-handler)
                          :actions '(insert navigate)))

(sp-with-modes '(web-mode)
  (sp-local-pair "<%" "%>"
                 :when '(("SPC" "RET"))
                 :actions '(insert navigate))
  (sp-local-pair "<%=" "%>"
                 :when '(("SPC" "RET"))
                 :actions '(insert navigate))
  (sp-local-pair "<" nil
                 :when '(("SPC" "RET"))))

