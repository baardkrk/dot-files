(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(setq paradox-github-token  'f6ca0ea55b807a41c4c7424a97d2710c10bc0429)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/monokai")
(load-theme 'monokai t)
;; (setq monokai-user-variable-pitch t)

;; auto complete and config
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas-global-mode 1)

;; function for auto complete c headers
(defun c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/include/c++/5"))
(add-hook 'c++-mode-hook 'c-header-init)
(add-hook 'c-mode-hook 'c-header-init)
