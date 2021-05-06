;; init-haskell.el --- Initialize haskell configurations.      -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Haskell configurations.
;;

;;; Code:

(use-package haskell-mode
  :straight t
  :ensure t
  :mode "\\.hs\\'"
  :ensure t)

(provide 'init-haskell)

;;; init-haskell.el ends here
