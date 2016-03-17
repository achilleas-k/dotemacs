;;; init-company.el --- Enable code completion

;; Copyright (C) 2015 Mathieu Marques

;; Author: Mathieu Marques <mathieumarques78@gmail.com>
;; Created: 27 May 2015
;; Homepage: https://bitbucket.org/angrybacon/dotemacs

;;; Code:


;;=============================================================================
;; Configure company
;;=============================================================================


;; https://github.com/company-mode/company-mode
(use-package company
  :config
  (setq-default
   company-idle-delay .1
   company-minimum-prefix-length 1)
  (add-hook 'prog-mode-hook 'company-mode)
  (set-face-attribute 'company-tooltip-common nil :inherit 'company-tooltip)
  (set-face-attribute 'company-tooltip-common-selection nil :inherit 'company-tooltip-selection))


;;=============================================================================
;; Configure company-tern
;;=============================================================================


;; https://github.com/proofit404/company-tern
(use-package company-tern
  :defer t
  :init
  (setq-default
   company-tern-meta-as-single-line t
   company-tern-property-marker " *"
   company-tooltip-align-annotations t)
  (add-to-list 'company-backends 'company-tern))


(provide 'init-company)
;;; init-company.el ends here
