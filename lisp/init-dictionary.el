;;; init-dictionary.el --- Support for dcitionary. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(global-set-key (kbd "C-c s") 'dictionary-search)
(setq dictionary-server "dict.org")

(provide 'init-dictionary)
;;; init-dictionary.el ends here
