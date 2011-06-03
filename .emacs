(add-to-list 'load-path "~/.emacs.d")
(require 'color-theme)
  (load-file "~/.emacs.d/color-theme-railscasts.el")
  (color-theme-railscasts)
  ;(load-file "~/.emacs.d/color-theme-blackboard.el")
  ;(color-theme-blackboard)
  (require 'color-theme-autoloads "color-theme-autoloads")

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

;; Haskell mode
(load "~/lib/emacs/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(setq haskell-program-name "/home/ben/local/ghc/bin/ghci")
