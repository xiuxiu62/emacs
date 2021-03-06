;; init-lsp.el --- Initialize lsp configurations.      -*- lexical-binding: t -*-

;;; Commentary:
;;
;; LSP configurations.
;;

;;; Code:

(use-package lsp-mode
  :ensure t
  :commands lsp
  :hook ((typescript-mode js2-mode web-mode go-mode haskell-mode) . lsp)
  :bind (:map lsp-mode-map
			  ("TAB" . completion-at-point))
  :custom (lsp-headerline-breadcrumb-enable t))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :config
  ;; (lsp-ui-doc-show)
  (setq lsp-ui-sideline-enable t
		lsp-ui-sideline-show-hover nil
		lsp-ui-doc-position 'bottom))

(xiu/leader-key-def
  "l"  '(:ignore t :which-key "lsp")
  "ld" 'xref-find-definitions
  "lr" 'xref-find-references
  "ln" 'lsp-ui-find-next-reference
  "lp" 'lsp-ui-find-prev-reference
  "ls" 'counsel-imenu
  "le" 'lsp-ui-flycheck-list
  "lS" 'lsp-ui-sideline-mode
  "lX" 'lsp-execute-code-action)

(use-package hover
  :after (lsp-mode lsp-ui)
  :ensure t)

(provide 'init-lsp)

;;; init-lsp.el ends here
