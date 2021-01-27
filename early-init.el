;;; Personal configuration may override some variables
(let ((private-conf (expand-file-name "private.el" user-emacs-directory)))
  (when (file-exists-p private-conf)
    (load-file private-conf)))

(defvar +gc-cons-threshold gc-cons-threshold)

(defun +disable-gc () (setq gc-cons-threshold most-positive-fixnum))
(defun +enable-gc () (setq gc-cons-threshold +gc-cons-threshold))

(add-hook 'after-init-hook #'+enable-gc)
(add-hook 'minibuffer-setup-hook #'+disable-gc)
(add-hook 'minibuffer-exit-hook #'+enable-gc)
(+disable-gc)

(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))

(load (concat user-emacs-directory "core/core") nil 'nomessage)
(load (concat user-emacs-directory "core/core-ui") nil 'nomessage)
(load (concat user-emacs-directory "core/core-packages") nil 'nomessage)
