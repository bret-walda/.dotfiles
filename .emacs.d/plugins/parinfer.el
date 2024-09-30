;; Disable indent-tabs-mode in Emacs Lisp, Lisp, and Scheme modes
(add-hook 'emacs-lisp-mode-hook (lambda () (setq indent-tabs-mode nil)))
(add-hook 'lisp-mode-hook (lambda () (setq indent-tabs-mode nil)))
(add-hook 'scheme-mode-hook (lambda () (setq indent-tabs-mode nil)))

;; Optionally, enable parinfer-rust-mode in these modes
(require 'parinfer-rust-mode)
;;(add-hook 'emacs-lisp-mode-hook #'parinfer-rust-mode)
(add-hook 'lisp-mode-hook #'parinfer-rust-mode)
(add-hook 'scheme-mode-hook #'parinfer-rust-mode)

(setq parinfer-rust-auto-download t)




