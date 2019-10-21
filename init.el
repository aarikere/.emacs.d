;; (require 'package)

;; ;; Some setup to direct to local repo instead of online ones since
;; ;; they fail due to Volvo's firewall
;; (setq package-archives '(("gnu" . "~/.emacs.d/gnu/")
;; 			 ("melpa" . "~/.emacs.d/melpa/")
;; 			 ("org" . "~/.emacs.d/org/")))
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
 '(LaTeX-command-style (quote (("" "%(PDF)%(latex) -shell-escape %S%(PDFout)"))))
 '(TeX-PDF-mode t)
 '(TeX-engine (quote luatex))
 '(TeX-fold-env-spec-list
   (quote
    (("[comment]"
      ("comment"))
     ("[tikzpicture]"
      ("tikzpicture"))
     ("[tabular]"
      ("tabular")))))
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(display-time-mode t)
 '(magit-log-section-commit-count 30)
 '(magit-status-sections-hook
   (quote
    (magit-insert-status-headers magit-insert-merge-log magit-insert-rebase-sequence magit-insert-am-sequence magit-insert-sequencer-sequence magit-insert-bisect-output magit-insert-bisect-rest magit-insert-bisect-log magit-insert-untracked-files magit-insert-unstaged-changes magit-insert-staged-changes magit-insert-stashes magit-insert-unpulled-from-pushremote magit-insert-unpulled-from-upstream magit-insert-unpushed-to-pushremote magit-insert-unpushed-to-upstream magit-insert-recent-commits)))
 '(package-selected-packages
   (quote
    (el-get req-package use-package libgit magit-libgit graphviz-dot-mode plantuml-mode eide realgud realgud-ipdb elpy elpygen bmx-mode powershell matlab-mode magit-lfs magit counsel flyspell-correct-ivy imenu-anywhere ivy-bibtex ivy-dired-history ivy-pages ivy solarized-theme auctex org)))
 '(preview-auto-reveal
   (quote
    (eval
     (preview-arrived-via
      (key-binding
       [left])
      (key-binding
       [right])))))
 '(preview-default-option-list (quote ("displaymath" "floats" "graphics" "textmath")))
 '(preview-default-preamble
   (quote
    ("\\RequirePackage["
     ("," . preview-default-option-list)
     "]{preview}[2004/11/05]" "\\PreviewEnvironment{tikzpicture}" "\\PreviewEnvironment{tabular}")))
 '(preview-inner-environments
   (quote
    ("Bmatrix" "Vmatrix" "aligned" "array" "bmatrix" "cases" "gathered" "matrix" "pmatrix" "smallmatrix" "split" "subarray" "vmatrix" "axis")))
 '(preview-scale-function 1.75)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 113 :width normal))))
 '(font-lock-builtin-face ((t (:foreground "#268bd2" :slant italic :weight bold))))
 '(font-lock-doc-face ((t (:foreground "#2aa198" :slant italic)))))
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; (setq url-proxy-services
;;        '(("no_proxy" . "^\\(localhost\\|10.*\\)")
;;          ("http" . "pxgot4.srv.volvo.com:8080")
;;          ("https" . "pxgot4.srv.volvo.com:8080")))

(setq url-proxy-services
       '(("no_proxy" . "^\\(localhost\\|10.*\\)")
         ("http" . "cloudpxgot1.srv.volvo.com:8080")
         ("https" . "cloudpxgot1.srv.volvo.com:8080")))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))

(menu-bar-mode 0)
(tool-bar-mode 0)
(show-paren-mode 1)
(linum-mode 1)

(require 'use-package)
(require 'req-package)

(require 'powerline)
(powerline-default-theme)

(ivy-mode 1)
(setq ivy-display-style 'fancy)

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

;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)
   (dot . t)))

(setq org-plantuml-jar-path
      (expand-file-name "~/AppData/Local/Programs/plantuml.jar"))

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

(setq ispell-program-name "C:/Users/arikera/AppData/Local/Hunspell/bin/hunspell.exe")
(setq ispell-dictionary "en_GB")    ;set the default dictionary

;;(server-start)
(setq vc-handled-backends (delq 'Git vc-handled-backends))

(put 'magit-clean 'disabled nil)
(setenv "GIT_ASKPASS" "git-gui--askpass")
