;; Makes that so the autosaves and backup files go to a specific directory
(setq backup-directory-alist `(("." . "~/.trash/emacs-backups/"))
      auto-save-file-name-transforms `((".*" "~/.trash/emacs-autosaves/" t)))
;;Run sly
(require 'sly-autoloads)
(setq inferior-lisp-program "sbcl")
