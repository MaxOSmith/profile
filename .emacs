;; MELPA
(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

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


(require 'ido)
(ido-mode t)

(require 'auto-complete)
(ac-config-default)

;; (add-to-list 'load-path "~/profile/emacs/fill-column-indicator.el")
;; (require 'fill-column-indicator)
;; (global-fci-mode t)

;; Python mode.
(require 'python-mode)
;;; Switch to the interpreter after executing code.
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
;;; Don't split windows.
(setq py-split-windows-on-execute-p nil)
;;; Try to automatically figure out indentation.
(setq py-smart-idnentation t)

(require 'hlinum)
(hlinum-activate)


;; Installed packages:
;; - auto-complete
;; - fill-column-indicator
;; - python-mode
;; - neotree

;; Neo-Tree
(add-to-list 'load-path "~/profile/emacs/neotree")
(require 'neotree)
(global-set-key (kbd "<backtab>") 'neotree-toggle)
