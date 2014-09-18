;;; package -- setup
;;; commentary :

;;; set the frame to be transparent
(set-frame-parameter (selected-frame) 'alpha '(90 90))
(add-to-list 'default-frame-alist '(alpha 90 90))

;;; warn only about
(setq guru-warn-only t)

(prelude-require-packages '(yasnippet))
(add-to-list 'load-path (concat prelude-personal-dir "/snippets"))
(require 'yasnippet)
(yas-global-mode 1)

(prelude-require-packages '(multiple-cursors))
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
