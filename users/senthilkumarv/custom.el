;; Added for hooking linum-mode to all major modes
(global-linum-mode)
;; Added to introduce space after line number in linum-mode
(setq linum-format "%d ")

;;Pasteboard integration
(defun mac-copy ()
  (shell-command-to-string "pbpaste"))

(defun mac-paste (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'mac-paste)
(setq interprogram-paste-function 'mac-copy)

;; Modifier keys
(setq mac-command-modifier 'super)
(setq ns-function-modifier 'hyper)
(setq mac-option-modifier 'meta)



(custom-set-variables
 '(default-frame-alist
    (quote
     ((tool-bar-lines . 0)
      (menu-bar-lines . 0)
      (cursor-type . box)
      (internal-border-width . 0)
      (left-fringe . 1)
      (right-fringe)
      (fringe)
      (vertical-scroll-bars)
      (background-color . "black")
      (background-mode . dark)
      (border-color . "white")
      (cursor-color . "yellow")
      (foreground-color . "white")
      (mouse-color . "white")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 300 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(default-frame-alist (quote ((tool-bar-lines . 0) (menu-bar-lines . 0) (cursor-type . box) (internal-border-width . 0) (left-fringe . 1) (right-fringe) (fringe) (vertical-scroll-bars) (background-color . "black") (background-mode . dark) (border-color . "white") (cursor-color . "yellow") (foreground-color . "white") (mouse-color . "white"))))
 '(display-time-mode nil)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(ido-use-filename-at-point nil)
 '(ns-tool-bar-display-mode nil t)
 '(ns-tool-bar-size-mode nil t)
 '(safe-local-variable-values (quote ((eval font-lock-add-keywords nil (quote (("defexamples\\|def-example-group\\| => " (0 (quote font-lock-keyword-face)))))) (eval when (and (buffer-file-name) (file-regular-p (buffer-file-name)) (string-match-p "^[^.]" (buffer-file-name))) (emacs-lisp-mode)) (eval font-lock-add-keywords nil (quote (("defexamples\\| => " (0 (quote font-lock-keyword-face)))))) (encoding . utf-8))))
 '(visible-bell nil)
 '(visual-line-mode nil t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t))

;; Font overrides
;; mac friendly font
(when window-system
  (setq magnars/default-font "-apple-Monaco-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
  (setq magnars/presentation-font "-apple-Monaco-medium-normal-normal-*-18-*-*-*-m-0-iso10646-1")
  (set-face-attribute 'default nil :font magnars/default-font))

(set-face-background 'region "#186369")
