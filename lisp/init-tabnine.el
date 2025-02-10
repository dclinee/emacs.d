;;; init-tabnine.el --- Integration of the company-tabnine  -*- lexical-binding: t -*-
;;; Commentary:
;;; This file configures the company-tabnine package for Emacs.
;;; It integrates company-tabnine with the company completion framework,
;;; sets some completion-related parameters, and customizes the completion
;;; backends for programming modes.
;;; Code:

(use-package company-tabnine
  :ensure t
  :config
  (add-to-list 'company-backends #'company-tabnine)
  (setq company-tabnine--disable-auto-discover nil)
  (setq company-tabnine-show-deprecated-version nil)
  ;; Trigger completion immediately.
  (setq company-idle-delay 0.1)
  ;; Number the candidates (use M-1, M-2 etc to select completions).
  (setq company-show-numbers t)
  (setq company-tabnine-max-num-results 5)
  (setq company-tabnine-use-deep-completions t)
  )
;;
(defun my/company-tabnine-setup ()
  "Customized completion backend setting function."
  (setq-local company-backends
              '((company-tabnine :with company-capf :separate)
                company-files
                company-keywords)))
(add-hook 'prog-mode-hook #'my/company-tabnine-setup)


(provide 'init-tabnine)

;;; init-tabnine.el ends here
