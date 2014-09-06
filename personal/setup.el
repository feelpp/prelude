;;; package -- setup
;;; commentary :

;;; set the frame to be transparent
(set-frame-parameter (selected-frame) 'alpha '(90 90))
(add-to-list 'default-frame-alist '(alpha 90 90))

;;; warn only about
(setq guru-warn-only t)
