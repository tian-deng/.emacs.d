(use-package counsel
  :diminish ivy-mode counsel-mode
  :bind (("C-s" . swiper-isearch)
         ("C-r" . swiper-isearch-backward)
         ("M-x" . counsel-M-x)
         ("s-f" . swiper)
         ("C-S-s" . swiper-all)
         ("C-c C-r" . ivy-resume)
         ("C-c v p" . ivy-push-view)
         ("C-c v o" . ivy-pop-view)
         ("C-x d" . counsel-dired)
         ("C-x C-f" . counsel-find-file)
         ("C-h f" . counsel-describe-function)
         ("C-h v" . counsel-describe-variable)
         ("C-h l" . counsel-find-library)))

(provide 'init-ivy)
