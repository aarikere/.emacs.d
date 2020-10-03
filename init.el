;;; All --- Summary
;;; Commentary:

;;; Code:
;; (require 'package)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command-style '(("" "%(PDF)%(latex) -shell-escape %S%(PDFout)")))
 '(TeX-PDF-mode t)
 '(TeX-engine 'luatex)
 '(TeX-fold-env-spec-list
   '(("[comment]"
      ("comment"))
     ("[tikzpicture]"
      ("tikzpicture"))
     ("[tabular]"
      ("tabular"))))
 '(custom-enabled-themes '(solarized-dark-high-contrast))
 '(custom-safe-themes
   '("7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))
 '(display-time-mode t)
 '(magit-log-margin '(t age-abbreviated magit-log-margin-width t 18))
 '(magit-log-section-commit-count 50)
 '(magit-log-select-margin '(t age-abbreviated magit-log-margin-width t 18))
 '(magit-status-margin '(t age-abbreviated magit-log-margin-width nil 18))
 '(magit-status-sections-hook
   '(magit-insert-status-headers magit-insert-merge-log magit-insert-rebase-sequence magit-insert-am-sequence magit-insert-sequencer-sequence magit-insert-bisect-output magit-insert-bisect-rest magit-insert-bisect-log magit-insert-untracked-files magit-insert-unstaged-changes magit-insert-staged-changes magit-insert-stashes magit-insert-unpulled-from-pushremote magit-insert-unpulled-from-upstream magit-insert-unpushed-to-pushremote magit-insert-unpushed-to-upstream magit-insert-recent-commits))
 '(org-agenda-files
   '("c:/Users/A323747/org-notes/ASIL_qualification.org" "c:/Users/A323747/org-notes/DAVA-support.org" "c:/Users/A323747/org-notes/EMobMeeting.org" "c:/Users/A323747/org-notes/General.org" "c:/Users/A323747/org-notes/ManualVMM.org" "c:/Users/A323747/org-notes/NominalSpeedEstimation.org" "c:/Users/A323747/org-notes/VERA.org" "c:/Users/A323747/org-notes/eTruckGen3.org"))
 '(org-export-backends '(ascii html latex odt confluence))
 '(org-modules
   '(org-bbdb org-bibtex org-docview org-eww org-gnus org-info org-irc org-mhe org-rmail org-tempo org-w3m))
 '(package-selected-packages
   '(wanderlust solarized-theme company-ghc slime slime-company elgrep org-ref company-anaconda anaconda-mode org-bullets confluence ox-gfm spaceline-all-the-icons doom-modeline all-the-icons all-the-icons-ivy company-irony company-irony-c-headers company-quickhelp treemacs-icons-dired treemacs-evil lsp-julia flycheck lsp-mode ac-octave ccls company company-lsp dap-mode flycheck-haskell flycheck-julia flymake flymake-haskell-multi ghc ghc-imported-from haskell-emacs haskell-emacs-base haskell-emacs-text haskell-mode julia-mode julia-repl julia-shell lsp-haskell lsp-python lsp-treemacs lsp-ui lua-mode projectile projectile-git-autofetch treemacs treemacs-magit treemacs-projectile markdown-mode markdown-mode+ markdown-preview-mode markdown-toc el-get req-package use-package libgit magit-libgit graphviz-dot-mode plantuml-mode eide realgud realgud-ipdb elpy elpygen bmx-mode powershell matlab-mode magit counsel flyspell-correct-ivy imenu-anywhere ivy-bibtex ivy-dired-history ivy-pages ivy auctex org))
 '(preview-auto-reveal
   '(eval
     (preview-arrived-via
      (key-binding
       [left])
      (key-binding
       [right]))))
 '(preview-default-option-list '("displaymath" "floats" "graphics" "textmath"))
 '(preview-default-preamble
   '("\\RequirePackage["
     ("," . preview-default-option-list)
     "]{preview}[2004/11/05]" "\\PreviewEnvironment{tikzpicture}" "\\PreviewEnvironment{tabular}"))
 '(preview-inner-environments
   '("Bmatrix" "Vmatrix" "aligned" "array" "bmatrix" "cases" "gathered" "matrix" "pmatrix" "smallmatrix" "split" "subarray" "vmatrix" "axis"))
 '(preview-scale-function 1.75)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(italic ((t (:underline nil :slant italic)))))

;; Dunno why, but incremental search becomes very slow on big files with the inconsolata font on windows.
(setq inhibit-compacting-font-caches t)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")))

(menu-bar-mode 0)
(tool-bar-mode 0)
(show-paren-mode 1)
(scroll-bar-mode 0)
(global-linum-mode 1)

(require 'use-package)
(require 'req-package)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(load "~/.emacs.d/personalSettings.el")
;; Has username (user-full-name), email (user-mail-address) and
;; org-agenda-files variable which is locked to a particular system

(add-to-list 'load-path "~/.emacs.d/elpa/ox-confluence/")

(eval-after-load "org"
  '(progn
     (require 'ox-gfm nil t)
     (require 'ox-confluence nil t)
     (setq org-startup-folded nil)
     (global-set-key (kbd "C-c l") 'org-store-link)
     (global-set-key (kbd "C-c a") 'org-agenda)
     (global-set-key (kbd "C-c c") 'org-capture)
     (setq org-export-with-toc nil)
     (setq org-todo-keywords
	   '((sequence "TODO" "IN PROG" "|" "DONE")))
     (setq org-todo-keyword-faces
	   '(("IN PROG" . (:foreground "orange" :weight bold))))))

(use-package all-the-icons)
(use-package all-the-icons-ivy
  :ensure t
  :config
  (all-the-icons-ivy-setup))

(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(require 'powerline)
(powerline-default-theme)
;; (use-package doom-modeline
;;   :ensure t
;;   :config (setq doom-modeline-minor-modes 1)
;;   :hook (after-init . doom-modeline-mode))
;; (require 'spaceline-config)
;; (spaceline-all-the-icons-theme)

(ivy-mode 1)
(setq ivy-display-style 'fancy)
(setq ivy-initial-inputs-alist nil)

(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "<f2> j") 'counsel-set-variable)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-c v") 'ivy-push-view)
(global-set-key (kbd "C-c V") 'ivy-pop-view)
(global-set-key (kbd "C-c d") 'counsel-descbinds)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x g") 'magit-status)

(setq-default fill-column 72)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq TeX-fold-type-list (quote (env)))
(add-hook 'LaTeX-mode-hook (lambda ()
			     (TeX-fold-mode 1)
			     (TeX-fold-buffer)
			     (TeX-source-correlate-mode 1)
			     (LaTeX-math-mode 1)
			     (turn-on-auto-fill)
			     (turn-on-reftex)
			     (outline-minor-mode 1)
			     (zotelo-minor-mode 1)
			     (TeX-run-style-hooks
			      "latex2e"
			      "graphicx")
			     (flyspell-mode 1)
			     ;;(ispell)
			     ))

;; Setup for windows systems
(when (eq system-type 'windows-nt)
  ;; Docview setup
  (setq doc-view-ghostscript-program "C:/Program Files/gs/gs9.50/bin/gswin64c.exe")
    ;; Markdown setup
  (setq markdown-command "~/AppData/Local/Pandoc/pandoc.exe")
  (setq org-plantuml-jar-path
	(expand-file-name "~/AppData/Local/Programs/plantuml.jar"))
  (setq ispell-program-name "~/AppData/Local/Hunspell/bin/hunspell.exe")
  (setenv "GIT_ASKPASS" "git-gui--askpass")
  )

;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)
   (dot . t)))

(defun comment-or-uncomment-region-or-line ()
  "Comments or uncomments the region or the current line if there's no active region."
  (interactive)
  (let (beg end)
    (if (region-active-p)
	(setq beg (region-beginning) end (region-end))
      (setq beg (line-beginning-position) end (line-end-position)))
    (comment-or-uncomment-region beg end)))

(global-set-key [?\C-\;] 'comment-or-uncomment-region-or-line)

(setq reftex-bibliography-commands '("bibliography" "nobibliography" "addbibresource"))

(setq ispell-dictionary "en_GB")    ;set the default dictionary

(if (and (fboundp 'server-running-p)
         (not (server-running-p)))
    (server-start))

(setq vc-handled-backends (delq 'Git vc-handled-backends))


(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-collapse-dirs                 (if treemacs-python-executable 3 0)
          treemacs-deferred-git-apply-delay      0.5
          treemacs-display-in-side-window        t
          treemacs-eldoc-display                 t
          treemacs-file-event-delay              5000
          treemacs-file-follow-delay             0.2
          treemacs-follow-after-init             t
          treemacs-git-command-pipe              ""
          treemacs-goto-tag-strategy             'refetch-index
          treemacs-indentation                   2
          treemacs-indentation-string            " "
          treemacs-is-never-other-window         nil
          treemacs-max-git-entries               5000
          treemacs-missing-project-action        'ask
          treemacs-no-png-images                 nil
          treemacs-no-delete-other-windows       t
          treemacs-project-follow-cleanup        nil
          treemacs-persist-file                  (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-position                      'left
          treemacs-recenter-distance             0.1
          treemacs-recenter-after-file-follow    nil
          treemacs-recenter-after-tag-follow     nil
          treemacs-recenter-after-project-jump   'always
          treemacs-recenter-after-project-expand 'on-distance
          treemacs-show-cursor                   nil
          treemacs-show-hidden-files             t
          treemacs-silent-filewatch              nil
          treemacs-silent-refresh                nil
          treemacs-sorting                       'alphabetic-desc
          treemacs-space-between-root-nodes      t
          treemacs-tag-follow-cleanup            t
          treemacs-tag-follow-delay              1.5
          treemacs-width                         35)

    ;; The default width and height of the icons is 22 pixels. If you are
    ;; using a Hi-DPI display, uncomment this to double the icon size.
    ;;(treemacs-resize-icons 44)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode t)
    (pcase (cons (not (null (executable-find "git")))
                 (not (null treemacs-python-executable)))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag)))

(use-package treemacs-evil
  :after treemacs evil
  :ensure t)

(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

(use-package treemacs-icons-dired
  :after treemacs dired
  :ensure t
  :config (treemacs-icons-dired-mode))

(use-package treemacs-magit
  :after treemacs magit
  :ensure t)

;; Only set up dap for linux systems
(unless (eq system-type 'windows-nt)
  (dap-mode 1)
  (dap-ui-mode 1)
  ;; enables mouse hover support
  (dap-tooltip-mode 1)
  ;; use tooltips for mouse hover
  ;; if it is not enabled `dap-mode' will use the minibuffer.
  (tooltip-mode 1)
  (require 'dap-gdb-lldb)
  )

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package lsp-mode :commands lsp :ensure t)
(use-package lsp-ui :commands lsp-ui-mode :ensure t)
(use-package company-lsp
  :ensure t
  :commands company-lsp
  :config (push 'company-lsp company-backends)) ;; add company-lsp as a backend

(use-package ccls
  :ensure t
  :config
  (setq ccls-executable "ccls")
  (setq lsp-prefer-flymake nil)
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  :hook ((c-mode c++-mode objc-mode python-mode julia-mode) .
         (lambda () (require 'ccls) (lsp))))

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  (global-company-mode t)
  )

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(setq company-dabbrev-downcase nil)

(use-package anaconda-mode
  :ensure t
  :config
  (add-hook 'python-mode-hook 'anaconda-mode)
  ;;(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
  )
(use-package company-anaconda
  :ensure t
  :init (require 'rx)
  :after (company)
  :config
  (add-to-list 'company-backends 'company-anaconda)
  )

(use-package company-ghc
  :ensure t
  :after (company)
  :config
  (add-to-list 'company-backends 'company-ghc)
  )

(use-package rust-mode
  :hook (rust-mode . lsp))

(use-package company-quickhelp
  :config
  (company-quickhelp-mode 1)
  (setq company-quickhelp-delay 0.5)
  )

(when (eq system-type 'windows-nt)
  (defun git-bash () (interactive)
	 (let ((explicit-shell-file-name "C:/Program Files/Git/bin/bash.exe")
	       (explicit-bash.exe-args '("--login" "-i")))
	   (call-interactively 'shell))))
(prefer-coding-system 'utf-8)

(put 'magit-clean 'disabled nil)

;;; init.el ends here

