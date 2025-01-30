;;; init-avy.el --- Support for the avy package -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(require 'avy)


(global-set-key (kbd "M-g ;") #'avy-goto-char-timer)
(global-set-key (kbd "C-:") #'avy-goto-char)
(global-set-key (kbd "M-g v") #'avy-goto-char-2)
(global-set-key (kbd "M-g w") #'avy-goto-word-1)
(global-set-key (kbd "M-g e") #'avy-goto-word-0)
(global-set-key (kbd "M-g g") #'avy-goto-line)
(global-set-key (kbd "M-g l") #'avy-copy-line)
(global-set-key (kbd "M-g r") #'avy-copy-region)
;;
;;;Jumping to conditionals in Elisp
(defun avy-goto-conditional ()
"Jump to conditional keywords like 'if', 'cond', 'when', 'unless' in the text."
  (interactive)
  (avy--generic-jump "\\s(\\(if\\|cond\\|when\\|unless\\)\\b" nil 0))
(global-set-key (kbd "M-g c") 'avy-goto-conditional)
;;


(provide 'init-avy)
;;; init-avy.el ends here
