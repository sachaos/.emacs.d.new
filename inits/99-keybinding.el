;; keybindings
(define-key global-map (kbd "C-h") 'delete-backward-char)

;; helm
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
(define-key global-map (kbd "C-c i")   'helm-imenu)
(define-key global-map (kbd "C-x b")   'helm-buffers-list)
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

;; helm-ls-git
(define-key global-map (kbd "C-c C-f") 'helm-ls-git-ls)
(define-key global-map (kbd "C-c C-g") 'helm-grep-do-git-grep)

;; mwim
(define-key global-map (kbd "C-a") 'mwim-beginning-of-code-or-line)
(define-key global-map (kbd "C-e") 'mwim-end-of-code-or-line)

;; expand-region
(define-key global-map (kbd "C-o") 'er/expand-region)
