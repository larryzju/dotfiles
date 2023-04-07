;;; package
(setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
                         ("melpa" . "http://1.15.88.122/melpa/")))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-hide-urls 't)
 '(org-agenda-files '("~/org/tasks.org"))
 '(package-selected-packages
   '(centered-cursor-mode writeroom-mode yaml-imenu yaml-mode pomm terraform-mode ox-pandoc org-jira yaml edit-indirect jira-markup-mode rfc-mode nasm-mode magit lsp-treemacs lsp-ui company json-mode org-roam fzf paredit)))

;;; Mac key binding
(defun mac-meta-key ()
  (interactive)
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super))

(defun pc-meta-key ()
  (interactive)
  (setq mac-option-key-is-meta t)
  (setq mac-command-key-is-meta nil)
  (setq mac-command-modifier 'super)
  (setq mac-option-modifier 'meta))


;; todo add if branch to only run
(let ()
  (load-theme 'wombat)
  (mac-meta-key)
  (add-to-list 'default-frame-alist '(font . "Monaco 16"))
  (add-to-list 'default-frame-alist '(alpha 96 93)))

;; org mode
(add-hook
 'org-mode-hook
 (lambda ()
   (flyspell-mode)
   (plist-put (cdr (car org-preview-latex-process-alist)) :image-size-adjust '(1.8 . 1.8))))

(let ()
  (setq org-default-notes-file (concat "~/org/notes.org"))
  (setq org-capture-templates
	'(("s"
	   "Task to be done"
	   entry
	   (file+headline "~/org/tasks.org" "Tasks")
           "* TODO %?\n  :PROPERTIES:\n  :Created: %T\n  :END:  %i\n")))

  (setq org-link-file-path-type 'relative)
  (global-set-key (kbd "s-c") 'org-capture)
  (global-set-key (kbd "s-a") 'org-agenda)
  (global-set-key (kbd "s-s") 'org-store-link))

;;; prefer to use the last part of URL as the description
(setq org-link-make-description-function
      (lambda (url &optional descr)
	(if descr descr
	  (let ((name (last (split-string url "/")))) 
	    name))))

;; minor mode
(add-hook 'after-init-hook 'global-company-mode)
(global-linum-mode t)
(icomplete-mode t)

;; emacs-lisp mode
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (paredit-mode t)))

;;; markdown mode

;;; flyspell mode
(global-set-key (kbd "s-4") 'flyspell-correct-word-before-point)

;;; lsp mode
(require 'lsp-mode)
(add-hook 'markdown-mode-hook #'lsp)

;;; custom
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )





