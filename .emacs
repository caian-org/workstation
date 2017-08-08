;; el-get as elisp manager
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
    (require 'package)
    (add-to-list 'package-archives
		                  '("melpa" . "http://melpa.org/packages/"))
    (package-refresh-contents)
    (package-initialize)
    (package-install 'el-get)
    (require 'el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; evil mode as default
(require 'evil)
(evil-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;; default font: terminus 12
 '(default ((t (:family "Terminus" :foundry "xos4" :slant normal :weight normal :height 120 :width normal)))))
