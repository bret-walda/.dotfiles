;; Basic Org Mode setup
(require 'org)  ;; Load Org Mode

;; Set the directory for your Org files
(setq org-directory "~/org/")  ;; Change this to the directory where you store your Org files
(setq org-agenda-files '("~/org"))

;; Follow the links
(setq org-return-follows-link  t)

;; Hide the markers so you just see bold text as BOLD-TEXT and not *BOLD-TEXT*
(setq org-hide-emphasis-markers t)

;; Make the indentation look nicer
(add-hook 'org-mode-hook 'org-indent-mode)

;; Set a default file for capturing notes and tasks
(setq org-default-notes-file (concat org-directory "notes.org"))

;; Define TODO keywords
(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(p)" "|" "DONE(d)" "CANCELED(c)")))

;; Setup Org Capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-default-notes-file "Tasks")
         "* TODO %?\n  %U\n  %a")
        ("n" "Note" entry (file+headline org-default-notes-file "Notes")
         "* %? :NOTE:\n%U\n  %a")))

;; Shortcuts for storing links, viewing the agenda, and starting a capture
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)

;; Enable Org Mode for .org files automatically
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Wrap the lines in org mode so that things are easier to read
(add-hook 'org-mode-hook 'visual-line-mode)

;;font-lock substitution for list markers
(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
;;fonts for headlines
(let* ((variable-tuple
          (cond ((x-list-fonts "ETBembo")         '(:font "ETBembo"))))
         (base-font-color     (face-foreground 'default nil 'default))
         (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

(custom-theme-set-faces
     'user
     `(org-level-8 ((t (,@headline ,@variable-tuple))))
     `(org-level-7 ((t (,@headline ,@variable-tuple))))
     `(org-level-6 ((t (,@headline ,@variable-tuple))))
     `(org-level-5 ((t (,@headline ,@variable-tuple))))
     `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
     `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
     `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
     `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
     `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))))

;;variable pitch and fixed pitch faces
(custom-theme-set-faces
   'user
   '(variable-pitch ((t (:family "ETBembo" :height 140 :weight thin))))
   '(fixed-pitch ((t ( :family "Iosevka Nerd Font" :height 120)))))

;;configure faces for specific org elements
(custom-theme-set-faces
   'user
   '(org-block ((t (:inherit fixed-pitch))))
   '(org-code ((t (:inherit (shadow fixed-pitch)))))
   '(org-document-info ((t (:foreground "dark orange"))))
   '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
   '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
   '(org-link ((t (:foreground "royal blue" :underline t))))
   '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
   '(org-property-value ((t (:inherit fixed-pitch))) t)
   '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
   '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
   '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
   '(org-verbatim ((t (:inherit (shadow fixed-pitch))))))

;;org-mode-hook for variable-pitch-mode
(add-hook 'org-mode-hook 'variable-pitch-mode)

;;org-mode-hook for visual-line-mode
(add-hook 'org-mode-hook 'visual-line-mode)

;; Ensure org-bullets is installed or loaded
(require 'org-bullets)

;; Add org-bullets-mode to org-mode-hook
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
