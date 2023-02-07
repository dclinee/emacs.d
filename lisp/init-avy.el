;;; init-avy.el --- Support for the avy package -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(global-set-key (kbd "M-s") 'avy-goto-char)
(global-set-key (kbd "M-c") 'avy-goto-char-2)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(provide 'init-avy)
;;; init-avy.el ends here