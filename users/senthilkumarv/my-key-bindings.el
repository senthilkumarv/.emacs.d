;; Edit beginnings of lines
(global-set-key (kbd "C-x C-e") 'mc/edit-beginnings-of-lines)

;; Expand/Contract regions
(global-set-key (kbd "C-M-e") 'er/expand-region)
(global-set-key (kbd "C-M-c") 'er/contract-region)

;;Split windows
(global-set-key [f5] 'split-window-horizontally )
(global-set-key [f6] 'split-window-vertically )

;;Move windows
(windmove-default-keybindings 'meta)
(define-key input-decode-map "\e\e[A" [(meta up)])
(define-key input-decode-map "\e\e[B" [(meta down)])
(define-key input-decode-map "\e\e[D" [(meta left)])
(define-key input-decode-map "\e\e[C" [(meta right)])
(define-key input-decode-map "\e\eOA" [(meta up)])
(define-key input-decode-map "\e\eOB" [(meta down)])
(define-key input-decode-map "\e\eOD" [(meta left)])
(define-key input-decode-map "\e\eOC" [(meta right)])

;; FFIP
(global-set-key (kbd "C-x C-o sc") (ffip-create-pattern-file-finder "*.scala"))

;; Disable arrow keys
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))

;; Speedbar
(global-set-key [f8] 'sr-speedbar-toggle)

(provide 'my-key-bindings)
