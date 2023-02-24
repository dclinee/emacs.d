;;; init-avy.el --- Support for the avy package -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(global-set-key (kbd "M-g ;") 'avy-goto-char-timer)
(global-set-key (kbd "M-s") 'avy-goto-char)
(global-set-key (kbd "M-C") 'avy-goto-char-2)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)
(global-set-key (kbd "M-g g") 'avy-goto-line)

(provide 'init-avy)
;;; init-avy.el ends here
