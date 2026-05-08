
;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(custom-safe-themes
   '("dab1f7d14b327870ebaf358c0c35c6d5ff393e5c79b3e66a528a2e779f39834a"
     "d2ab3d4f005a9ad4fb789a8f65606c72f30ce9d281a9e42da55f7f4b9ef5bfc6"
     "10e5d4cc0f67ed5cafac0f4252093d2119ee8b8cb449e7053273453c1a1eb7cc"
     "ffafb0e9f63935183713b204c11d22225008559fa62133a69848835f4f4a758c"
     "113a135eb7a2ace6d9801469324f9f7624f8c696b72e3709feb7368b06ddaccc"
     "e129ccc499b0343029ec46e0b09706cb201da1d873e09e89d8892c13d22b08b4"
     "09e98c608045c7778c67d5671161cfbb741cc25350abe61e3eb2ce798bb88209"
     "c4a66d0d9557de08eadd6cc25112bd7eb776d8c8754ed8cc4e1b16d0c317433c"
     "48042425e84cd92184837e01d0b4fe9f912d875c43021c3bcb7eeb51f1be5710" default))
 '(elfeed-feeds '("https://www.opennet.ru/opennews/opennews_all_utf.rss"))
 '(safe-local-variable-values
   '((eval modify-syntax-entry 43 "'") (eval modify-syntax-entry 36 "'")
     (eval modify-syntax-entry 126 "'")
     (eval progn (require 'lisp-mode)
      (defun emacs27-lisp-fill-paragraph (&optional justify)
        (interactive "P")
        (or (fill-comment-paragraph justify)
            (let
                ((paragraph-start
                  (concat paragraph-start
                          "\\|\\s-*\\([(;\"]\\|\\s-:\\|`(\\|#'(\\)"))
                 (paragraph-separate
                  (concat paragraph-separate "\\|\\s-*\".*[,\\.]$"))
                 (fill-column
                  (if
                      (and (integerp emacs-lisp-docstring-fill-column)
                           (derived-mode-p 'emacs-lisp-mode))
                      emacs-lisp-docstring-fill-column
                    fill-column)))
              (fill-paragraph justify))
            t))
      (setq-local fill-paragraph-function #'emacs27-lisp-fill-paragraph))
     (geiser-insert-actual-lambda) (geiser-repl-per-project-p . t)
     (eval with-eval-after-load 'yasnippet
      (let
          ((guix-yasnippets
            (expand-file-name "etc/snippets/yas"
                              (locate-dominating-file default-directory
                                                      ".dir-locals.el"))))
        (unless (member guix-yasnippets yas-snippet-dirs)
          (add-to-list 'yas-snippet-dirs guix-yasnippets) (yas-reload-all))))
     (eval with-eval-after-load 'tempel
      (if (stringp tempel-path) (setq tempel-path (list tempel-path)))
      (let
          ((guix-tempel-snippets
            (concat
             (expand-file-name "etc/snippets/tempel"
                               (locate-dominating-file default-directory
                                                       ".dir-locals.el"))
             "/*.eld")))
        (unless (member guix-tempel-snippets tempel-path)
          (add-to-list 'tempel-path guix-tempel-snippets))))
     (eval with-eval-after-load 'git-commit
      (add-to-list 'git-commit-trailers "Change-Id"))
     (eval setq-local guix-directory
      (locate-dominating-file default-directory ".dir-locals.el"))
     (eval add-to-list 'completion-ignored-extensions ".go"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
