
; ;; for delight
; (use-package delight
;   :ensure t)

;; for flycheck
(use-package flycheck
  :ensure t
  :delight
  :config (global-flycheck-mode))

;; for ivy-erlang-complete
(use-package ivy-erlang-complete
  :ensure t)

; ;; for company-erlang: auto complete
; (add-hook 'erlang-mode-hook #'company-erlang-init)

;; for erlang
(use-package erlang
  :load-path ("~/kerl/25.0.4/lib/tools-3.5.3/emacs")
  :hook (after-save . ivy-erlang-complete-reparse)
  :custom (ivy-erlang-complete-erlang-root "~/kerl/25.0.4/lib")
  :config (ivy-erlang-complete-init)
  :mode (("\\.erl?$" . erlang-mode)
     ("rebar\\.config$" . erlang-mode)
     ("relx\\.config$" . erlang-mode)
     ("sys\\.config\\.src$" . erlang-mode)
     ("sys\\.config$" . erlang-mode)
     ("\\.config\\.src?$" . erlang-mode)
     ("\\.config\\.script?$" . erlang-mode)
     ("\\.hrl?$" . erlang-mode)
     ("\\.app?$" . erlang-mode)
     ("\\.app.src?$" . erlang-mode)
     ("\\Emakefile" . erlang-mode)))

(provide 'init-erlang)
