(prelude-require-packages '(yasnippet))
(add-to-list 'load-path (concat prelude-personal-dir "/snippets"))

(prelude-require-packages '(yaml-mode))
(prelude-require-packages '(dockerfile-mode))
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(add-to-list 'load-path (concat prelude-personal-dir))
(require 'gmsh)
(require 'yasnippet)
(yas-global-mode 1)


(defvar irony-cdb-search-directory-list '("/Users/prudhomme/scratch/feelpp/dev.clang.debug/"))

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
