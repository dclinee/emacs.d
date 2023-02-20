;;; init-company-tabnine.el --- Support for comapny tabnine -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package company-tabnine :ensure t)
(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)
;; Trigger completion immediately.
(setq company-idle-delay 0)
(setq company-backends '(company-tabnine :separate))

;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-numbers t)

(provide 'init-company-tabnine)
;;; init-company-tabnine.el ends here
