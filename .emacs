;; Awesome color scheme!
(require 'color-theme)
(load-file "~/elisp/color-theme-railscasts.el")
(color-theme-railscasts)

;; Disable loading of default.el at startup
(setq inhibit-default-init t)

;; Enable useful disabled commands
;(put 'narrow-to-region 'disabled nil)
;(put 'erase-buffer 'disabled nil)

;; Disable toolbar and scrollbar in X
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; Just never create backup files at all
(setq make-backup-files nil)

;; Always indent using space
(setq-default indent-tabs-mode nil)