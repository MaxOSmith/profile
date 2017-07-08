;; Set theme
;; (load-theme 'tsdh-dark)
(load "~/profile/themes/base16-eighties-dark.el")

;; 2 tab spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;; Show columns
(setq column-number-mode t)

;; Whitespace
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Line numbering
(global-linum-mode 1)
(set-face-foreground 'linum "#515151")
(setq linum-format "%3d|")

;; Yes/No questions
(fset 'yes-or-no-p 'y-or-n-p)

;; C++ mode in header files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Spell Checking
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
