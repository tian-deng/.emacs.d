;; set default font.
(cond
 ((string-equal system-type "windows-nt")
  (cond
   ((member "Fira Mono for Powerline" (font-family-list))
    (set-face-attribute 'default nil :font (font-spec :family "Fira Mono for Powerline")))
   ((member "Consolas" (font-family-list))
    (set-face-attribute 'default nil :font (font-spec :family "Consolas")))
   )
  (cond
   ((member "Sarasa Fixed SC" (font-family-list))
    (set-fontset-font t '(#x4e00 . #x9fff) "Sarasa Fixed SC"))
   ((member "Microsoft YaHei UI" (font-family-list))
    (set-fontset-font t '(#x4e00 . #x9fff) "Microsoft YaHei UI"))
   ))
 ((string-equal system-type "darwin"))
 ((string-equal system-type "gnu/linux")
  (cond
   ((member "Fira Mono for Powerline" (font-family-list))
    (set-face-attribute 'default nil :font (font-spec :family "Fira Mono for Powerline")))
   ((member "Noto Sans Mono for Powerline" (font-family-list))
    (set-face-attribute 'default nil :font (font-spec :family "Noto Sans Mono for Powerline")))
   ))
)

;; modeline configuration.
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 18))

(provide 'init-ui)
