;; init-company.el --- Initialize company configurations.      -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Company configurations.
;;

;;; Code:

(use-package company
  :after lsp-mode
  :hook (prog-mode . company-mode)
  :bind
  (:map company-active-map
		("<tab>" . company-complete-selection))
  (:map lsp-mode-map
		("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))

(provide 'init-company)

;;; init-company.el ends here