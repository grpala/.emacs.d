;; To use this modular conf, ~/.emacs must NOT exist

(add-to-list 'load-path
  (setq dotfiles-dir
    (file-name-directory
      (if load-file-name  ;; set to path of init.el
         (file-truename load-file-name)
         (buffer-file-name) ) ) ) )

(add-to-list 'load-path
   (setq conf-dir (concat dotfiles-dir "conf")) )

;; Setting custom-file is necessary, so customizations are saved there too.
(load (setq custom-file (concat dotfiles-dir "custom.el")) 'noerror)
(mapc #'load (directory-files conf-dir nil ".*\.el$"))
