(set-face-attribute 'default nil :font (font-spec :family "Fira Mono for Powerline"))

(set-fontset-font t '(#x4e00 . #x9fff) "Sarasa Fixed SC")

(require 'init-editor)
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 18))
