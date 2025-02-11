;;; init-helm.el --- Support for the helm package -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
         ("C-x b" . helm-mini)
         ("M-y" . helm-show-kill-ring)
         ("C-x C-f" . helm-find-files))
  :config
  (helm-mode t)
  (helm-autoresize-mode t))


(global-set-key (kbd "C-c h") #'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(setq helm-move-to-line-cycle-in-source nil)
(setq helm-M-x-fuzzy-match t)
(setq helm-buffers-fuzzy-match t
      helm-recentf-fuzzy-match t)

(provide 'init-helm)
;;; init-helm.el ends here
