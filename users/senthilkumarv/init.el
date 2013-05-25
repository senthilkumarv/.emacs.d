;; Install extensions if they're missing
(defun init--additional-install-packages ()
  (packages-install
   '(exec-path-from-shell
     haskell-mode
     scala-mode2
     auto-complete
     popup)))

(condition-case nil
    (init--additional-install-packages)
  (error
   (package-refresh-contents)
   (init--additional-install-packages)))

(require 'my-key-bindings)
(require 'setup-modes)
(require 'setup-mail-client)
