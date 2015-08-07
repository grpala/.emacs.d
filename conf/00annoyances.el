;; C-h is backspace
(keyboard-translate ?\C-h ?\C-?)

;; Inhibir mensaje inicial
(setq inhibit-splash-screen t)
(setq inhibit-startup-screen t)
(setq inhibit-startup-buffer-menu t)

;; *scratch* limpio
(setq initial-scratch-message nil)

;; Enable advanced functions
(put 'erase-buffer 'disabled nil)

;; Use legacy-style regions
(setq transient-mark-mode nil)

;; Use X clipboard for any copy-paste related action
(setq x-select-enable-clipboard nil)
(setq x-select-enable-primary t)

;; Add a new-line at the end of every file when saving
(setq-default require-final-newline t)

;; Remove every trailing whitespace when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Remove every trailing blank line when saving
(add-hook 'before-save-hook
   (lambda ()
      (interactive)
      (save-excursion
         (end-of-buffer)
         (delete-blank-lines) ) ) )

;; Disable overwrite-mode
(put 'overwrite-mode 'disabled t)

;; Disable windows-like crap
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control))))
(setq column-number-mode t)

;; Don't open once completed
(setq ido-confirm-unique-completion t)

;; OS X
(when (eq system-type 'darwin)
   ;; Fix system-name
   (setq system-name (car (split-string system-name "\\.")))
   ;; Right-alt is for symbols
   (setq ns-right-alternate-modifier 'none) )
