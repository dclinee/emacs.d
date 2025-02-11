;;; init-helm.el --- Support for the helm package -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package helm
  :ensure t
  :bind (("M-x" . #'helm-M-x))
  :config
  (helm-mode 1)
  (helm-autoresize-mode t))

(global-set-key (kbd "C-x b") #'helm-mini)
(global-set-key (kbd "C-c h") #'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(setq helm-move-to-line-cycle-in-source nil)
(setq helm-M-x-fuzzy-match t)
(setq helm-buffers-fuzzy-match t
      helm-recentf-fuzzy-match t      )
(global-set-key (kbd "M-y") #'helm-show-kill-ring)

;;Command: helm-find-files
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(provide 'init-helm)
;;; init-helm.el ends here
