;;; init-vertico.el --- Integrated for the vertico package -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package consult
  :ensure t)
(use-package vertico
  :ensure t
  :init (vertico-mode))
(use-package marginalia
  :ensure t
  :config (marginalia-mode))
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-dark+ t))
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(provide 'init-vertico)

;;; init-vertico.el ends here
