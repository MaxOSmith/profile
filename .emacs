;; Set theme
;; (load-theme 'tsdh-dark)
;; (load "~/profile/themes/base16-eighties-dark.el")

;; 4 tab spaces
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;; Show columns
(setq column-number-mode t)

;; Line numbering
(global-linum-mode 1)
(set-face-foreground 'linum "#f2777a")
(setq linum-format "%3d|")
