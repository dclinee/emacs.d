;;; init-helm.el --- Support for the helm package -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package helm
  :ensure t
  :defer t
  :commands (helm-mode helm-autoresize-mode
                       helm-command-prefix helm-mini helm-find-files
                       helm-show-kill-ring)
  :bind (("M-x" . helm-M-x)
         ("C-x b" . helm-mini)
         ("M-y" . helm-show-kill-ring)
         ("C-x C-f" . helm-find-files))
  :config
  ;; Enable Helm mode
  (helm-mode t)
  ;; Enable Helm auto-resize mode
  (helm-autoresize-mode t)

  ;; Group the settings of Helm-related variables to improve code readability
  (setq helm-move-to-line-cycle-in-source nil)
  (setq helm-M-x-fuzzy-match t)
  (setq helm-buffers-fuzzy-match t)
  (setq helm-recentf-fuzzy-match t)

  (global-set-key (kbd "C-c h") #'helm-command-prefix)
  (global-unset-key (kbd "C-x c"))
  )

(provide 'init-helm)
;;; init-helm.el ends here
