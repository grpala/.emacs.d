;; C-h is backspace
(keyboard-translate ?\C-h ?\C-?)

;; Inhibir mensaje inicial
(setq inhibit-splash-screen t)
(setq inhibit-startup-screen t)
(setq inhibit-startup-buffer-menu t)

;; *scratch* limpio
(setq initial-scratch-message nil)

;; Wrapping
(setq word-wrap t)

;; Use legacy-style regions
(setq transient-mark-mode nil)

;; Use X clipboard for any copy-paste related action
(setq x-select-enable-clipboard t)

;; Add a new-line at the end of every file when saving
(setq-default require-final-newline t)

;; Remove every trailing whitespace when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Remove every trailing blank line when saving
(add-hook 'before-save-hook 'delete-blank-lines)

;; Disable overwrite-mode
(put 'overwrite-mode 'disabled t)

;; Disable windows-like crap
(setq tool-bar-mode nil)
(setq menu-bar-mode nil)
(setq scroll-bar-mode nil)

;; Tabs
(setq tab-width 3)
(setq default-tab-width 3)
(setq indent-tabs-mode nil)

;; Fix system-name in OS X
(if (eq system-type 'darwin)
   (setq system-name (car (split-string system-name "\\."))) )
