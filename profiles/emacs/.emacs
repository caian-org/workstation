;        __    ___ ___      __      ___    ____
;      /'__`\/' __` __`\  /'__`\   /'___\ /',__\
;   __/\  __//\ \/\ \/\ \/\ \L\.\_/\ \__//\__, `\
;  /\_\ \____\ \_\ \_\ \_\ \__/.\_\ \____\/\____/
;  \/_/\/____/\/_/\/_/\/_/\/__/\/_/\/____/\/___/
;
; author: cai <caianrais@protonmail.com>
;   code: github.com/caianrais/init



; list of used packages
(setq package-list
      '(evil org-plus-contrib powerline powerline-evil dashboard
             xresources-theme linum-relative))

; list of package repositories
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

; initialize the packages
(require 'package)
(package-initialize)

; fetches the list of available packages
(unless package-archive-contents
  (or (file-exists-p package-user-dir) (package-refresh-contents)))

; iterates through the list of packages and install them
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

; require packages
(require 'evil)
(require 'powerline)
(require 'powerline-evil)
(require 'dashboard)
(require 'linum-relative)

; initializes evil mode
(evil-mode 1)

; initializes the dashboard
(dashboard-setup-startup-hook)

; uses the default theme in powerline
(powerline-default-theme)

; disables the menu bar
(menu-bar-mode -1)

; disables the tool bar
(tool-bar-mode -1)

