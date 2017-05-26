;; Set theme
;; (load-theme 'tsdh-dark)
(load "~/profile/themes/base16-eighties-dark.el")

;; 4 tab spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;; Show columns
(setq column-number-mode t)

;; Whitespace
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Line numbering
(global-linum-mode 1)
(set-face-foreground 'linum "#f2777a")
(setq linum-format "%3d|")

;; Yes/No questions
(fset 'yes-or-no-p 'y-or-n-p)

;; C++ mode in header files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
