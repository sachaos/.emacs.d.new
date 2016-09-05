;; keybindings
(define-key global-map (kbd "C-h") 'delete-backward-char)

;; timestamp
(define-key global-map (kbd "C-c C-t C-d") 'insert-current-date)
(define-key global-map (kbd "C-c C-t C-t") 'insert-current-time)

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
(define-key global-map (kbd "C-x C-g C-f") 'helm-ls-git-ls)
(define-key global-map (kbd "C-x C-g C-g") 'helm-grep-do-git-grep)
(define-key global-map (kbd "C-x C-g C-g")
  (lambda () (interactive) (helm-grep-do-git-grep "")))
;; magit
(define-key global-map (kbd "C-x C-g C-s") 'magit-status)

;; mwim
(define-key global-map (kbd "C-a") 'mwim-beginning-of-code-or-line)
(define-key global-map (kbd "C-e") 'mwim-end-of-code-or-line)

;; expand-region
(define-key global-map (kbd "C-o") 'er/expand-region)

;; yasnippet
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)

;; translate
(define-key global-map (kbd "C-c t p p") 'google-translate-at-point)
(define-key global-map (kbd "C-c t p r") 'google-translate-at-point-reverse)
(define-key global-map (kbd "C-c t q q") 'google-translate-query-translate)
(define-key global-map (kbd "C-c t q r") 'google-translate-query-translate-reverse)

;; elixir
(eval-after-load "alchemist"
  #'(progn
      (eval-after-load "elixir-mode"
        #'(progn
            (define-key alchemist-mode-map (kbd "C-x C-e") 'alchemist-iex-send-last-sexp)

            (defun my-alchemist-iex-electric-send-thing (uarg)
              "Sends the code fragment to the inferior IEx process.
If universal argument (C-u) is given, jump to the buffer.
when region is active, sends the marked region.
Otherwise sends the current line."
              (interactive "P")
              (cond
               ;; regionがアクティブかつC-uが押されている
               ((and uarg (use-region-p))
                (alchemist-iex-send-region-and-go))
               ;; regionがアクティブ
               ((and (not uarg) (use-region-p))
                (alchemist-iex-send-region (point) (mark)))
               ;; regionなし、かつC-uが押されている
               ((and uarg (not (use-region-p)))
                (alchemist-iex-send-current-line-and-go))
               ;; なんにもなし
               ((and (not uarg) (not (use-region-p)))
                (alchemist-iex-send-current-line))))

            (define-key alchemist-mode-map (kbd "C-c C-c") 'my-alchemist-iex-electric-send-thing)))))
