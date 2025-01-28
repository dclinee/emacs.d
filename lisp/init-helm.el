;;; init-helm.el --- Support for the helm package -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'helm)
(global-set-key (kbd "C-c h") #'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
;;Command:helm-M-x configuration
;;Optional fuzzy matching for helm-M-x

(setq helm-move-to-line-cycle-in-source nil)
(setq helm-M-x-fuzzy-match t)
(global-set-key (kbd "C-x b") #'helm-mini)
(setq helm-buffers-fuzzy-match t
      helm-recentf-fuzzy-match t      )
(global-set-key (kbd "M-y") #'helm-show-kill-ring)
(global-set-key (kbd "M-x") #'helm-M-x)

;;Command: helm-find-files
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)
(helm-autoresize-mode t)
(provide 'init-helm)
;;; init-helm.el ends here
