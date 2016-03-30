;; require basic packages
(require 'cl)

(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; settings for el-get
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;;;;;;;;;;;;;;;;;;
;; get packages ;;
;;;;;;;;;;;;;;;;;;

(el-get-bundle init-loader)
(el-get-bundle smartparens)
(el-get-bundle helm)
(el-get-bundle yasnippet)
(el-get-bundle undo-tree)
(el-get-bundle auto-complete)
(el-get-bundle yaml-mode)
(el-get-bundle lua-mode)
(el-get-bundle web-mode)
(el-get-bundle anzu)
(el-get-bundle mwim)
(el-get-bundle material-theme)
(el-get-bundle expand-region)
(el-get-bundle magit)
(el-get-bundle markdown-mode)
(el-get-bundle emmet-mode)
(el-get-bundle helm-ls-git)
(el-get-bundle git-gutter+)
(el-get-bundle flycheck)
(el-get-bundle redspace)
(el-get-bundle scss-mode)
(el-get-bundle coffee-mode)

;; ruby
(el-get-bundle enh-ruby-mode)
(el-get-bundle robe)

;; elixir
(el-get-bundle elixir-mode)
(el-get-bundle alchemist)

;; init-loader
(custom-set-variables
 '(setq-default init-loader-byte-compile t))
(init-loader-load)
(put 'narrow-to-region 'disabled nil)
