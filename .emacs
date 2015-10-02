(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(setq inhibit-splash-screen t)

(require 'cc-mode)

(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)
(set-scroll-bar-mode 'nil)

(load-theme 'tango-dark t)

(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

(custom-set-variables
'(initial-frame-alist (quote ((fullscreen . maximized)))))

;; Competitive programming frame
(global-set-key (kbd "C-x C-.") (kbd "C-x 3 C-u 9 C-x } C-x z z") )

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


;;; activate ecb
(require 'ecb)
;(require 'ecb-autoloads)  Bug in ecb

(setq ecb-layout-name "left8")

(setq ecb-show-sources-in-directories-buffer 'always)

(setq ecb-compile-window-height 12)

;;; activate and deactivate ecb
(global-set-key (kbd "C-x C-;") 'ecb-activate)
(global-set-key (kbd "C-x C-'") 'ecb-deactivate)
;;; show/hide ecb window
(global-set-key (kbd "C-;") 'ecb-show-ecb-windows)
(global-set-key (kbd "C-'") 'ecb-hide-ecb-windows)
;;; quick navigation between ecb windows
(global-set-key (kbd "C-M-0") 'ecb-goto-window-edit1)
(global-set-key (kbd "C-M-1") 'ecb-goto-window-directories)
(global-set-key (kbd "C-M-2") 'ecb-goto-window-sources)
(global-set-key (kbd "C-M-3") 'ecb-goto-window-methods)
(global-set-key (kbd "C-M-4") 'ecb-goto-window-compilation)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; something about ourselves
(setq mu4e-reply-to-address "soumyadeep9@gmail.com"
 user-mail-address "soumyadeep9@gmail.com"
 user-full-name  "Soumyadeep Mukherjee")

;;Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)


;; Tramp mode
(setq tramp-default-method "ssh")

