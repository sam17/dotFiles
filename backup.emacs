(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; If there are no archived package contents, refresh them
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(
	elpy
	flycheck
	blacken
	magit
	material-theme
	)
  )

;; Scans the list in myPackages
;; If the package listed is not already installed, install it
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      myPackages)

(load-theme 'material t)            ;; Load material theme

(setq inhibit-splash-screen t)

(global-linum-mode t)
(require 'cc-mode)

(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)
;̣(set-scroll-bar-mode 'nil)

;(load-theme 'tango-dark t)

(setq-default c-basic-offset 4 c-default-style "bsd")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
	(material-theme elpy org-roam whitespace-cleanup-mode json-mode go-mode yaml-mode markdown-mode magit gh ecb autopair))))


;;Parenthesis Highlighting
(show-paren-mode 1)

;;Ido
(ido-mode t)
(setq
 ido-ignore-buffers ; ignore these guys
 '("\\` " "^\*Mess" "^\*Back" ".*Completion" "^\*Ido")
 ido-case-fold t ; be case-insensitive
 ido-use-filename-at-point nil ; don't use filename at point (annoying)
 ido-use-url-at-point nil ; don't use url at point (annoying)
 ido-enable-flex-matching t ; be flexible
 ;; ido-max-prospects 100 ; don't spam minibuffer
 ido-confirm-unique-completion nil ; don't wait for RET with unique completion
 ido-default-file-method 'selected-window ; open files in selected window
 ido-default-buffer-method 'selected-window ; open buffers in selected window
 ido-max-directory-size 100000)


;; something about ourselves
(setq mu4e-reply-to-address "soumyadeep9@gmail.com"
 user-mail-address "soumyadeep9@gmail.com"
 user-full-name  "Soumyadeep Mukherjee")

;; Tramp mode
(setq tramp-default-method "ssh")

;; Developmental Setup
(elpy-enable)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
