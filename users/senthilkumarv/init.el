;; Install extensions if they're missing
(defun init--additional-install-packages ()
  (packages-install
   '(exec-path-from-shell
     haskell-mode
     scala-mode2
     auto-complete
     popup
     flycheck
     color-theme
     sr-speedbar)))

(condition-case nil
    (init--additional-install-packages)
  (error
   (package-refresh-contents)
   (init--additional-install-packages)))

(setq ffip-find-options
      (ffip--create-exclude-find-options
       '("Build")))

(add-to-list 'ffip-patterns "*.m")
(add-to-list 'ffip-patterns "*.h")
(add-to-list 'ffip-patterns "*.tpl")
(add-to-list 'ffip-patterns "*.json")
(add-to-list 'ffip-patterns "*.scala")
(add-to-list 'ffip-patterns "Rakefile")

(require 'my-key-bindings)
(require 'setup-modes)
(require 'setup-mail-client)
(require 'setup-speedbar)
(require 'color-theme)
(require 'sweyla852454)
(color-theme-initialize)
(sweyla852454)
