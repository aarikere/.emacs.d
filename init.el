Content-Type: text/enriched
Text-Width: 72

<x-color><param>#586e75</param>;; (require 'package)

</x-color>

<x-color><param>#586e75</param>;; ;; Some setup to direct to local repo instead of online ones since
;; ;; they fail due to Volvo's firewall

;; (setq package-archives '(("gnu" . "~/.emacs.d/gnu/")
;; 			 ("melpa" . "~/.emacs.d/melpa/")

;; 			 ("org" . "~/.emacs.d/org/")))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
</x-color>(package-initialize)

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
    (libgit magit-libgit graphviz-dot-mode plantuml-mode eide realgud realgud-ipdb elpy elpygen bmx-mode powershell matlab-mode magit-lfs magit counsel flyspell-correct-ivy imenu-anywhere ivy-bibtex ivy-dired-history ivy-pages ivy solarized-theme auctex org)))
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

(add-to-list 'load-path <x-color><param>#2aa198</param>"~/.emacs.d/lisp/"</x-color>)


<x-color><param>#586e75</param>;; (setq url-proxy-services
;;        '(("no_proxy" . "^\\(localhost\\|10.*\\)")
;;          ("http" . "pxgot4.srv.volvo.com:8080")
;;          ("https" . "pxgot4.srv.volvo.com:8080")))

</x-color>

(<x-color><param>#859900</param>setq</x-color> url-proxy-services
       '((<x-color><param>#2aa198</param>"no_proxy"</x-color> . <x-color><param>#2aa198</param>"^<x-color><param>#859900</param>\\</x-color><x-color><param>#b58900</param>(</x-color>localhost<x-color><param>#859900</param>\\</x-color><x-color><param>#b58900</param>|</x-color>10.*<x-color><param>#859900</param>\\</x-color><x-color><param>#b58900</param>)</x-color>"</x-color>)
         (<x-color><param>#2aa198</param>"http"</x-color> . <x-color><param>#2aa198</param>"cloudpxgot1.srv.volvo.com:8080"</x-color>)
         (<x-color><param>#2aa198</param>"https"</x-color> . <x-color><param>#2aa198</param>"cloudpxgot1.srv.volvo.com:8080"</x-color>)))


(<x-color><param>#859900</param>setq</x-color> package-archives '((<x-color><param>#2aa198</param>"gnu"</x-color> . <x-color><param>#2aa198</param>"http://elpa.gnu.org/packages/"</x-color>)
			 (<x-color><param>#2aa198</param>"melpa"</x-color> . <x-color><param>#2aa198</param>"http://melpa.org/packages/"</x-color>)))


(menu-bar-mode 0)
(tool-bar-mode 0)

(show-paren-mode 1)

(linum-mode 1)

(<x-color><param>#859900</param>require</x-color> '<x-color><param>#268bd2</param>powerline</x-color>)

(powerline-default-theme)


(ivy-mode 1)


(<x-color><param>#859900</param>setq-default</x-color> fill-column 72)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(<x-color><param>#859900</param>setq</x-color> TeX-fold-type-list (<x-color><param>#859900</param>quote</x-color> (env)))
(add-hook 'LaTeX-mode-hook (<x-color><param>#859900</param>lambda</x-color> ()
			     (TeX-fold-mode 1)
			     (TeX-fold-buffer)	
			     (TeX-source-correlate-mode 1)
			     (LaTeX-math-mode 1)
			     (turn-on-auto-fill)
			     (turn-on-reftex)
			     (outline-minor-mode 1)
			     (zotelo-minor-mode 1)
			     (TeX-run-style-hooks
			      <x-color><param>#2aa198</param>"latex2e"</x-color>
			      <x-color><param>#2aa198</param>"graphicx"</x-color>)
			     (flyspell-mode 1)
			     <x-color><param>#586e75</param>;;(ispell)
</x-color>			     ))


<x-color><param>#586e75</param>;; active Org-babel languages
</x-color>(org-babel-do-load-languages
 'org-babel-load-languages
 '(<x-color><param>#586e75</param>;; other Babel languages
</x-color>   (plantuml . t)

   (dot . t)))


(<x-color><param>#859900</param>setq</x-color> org-plantuml-jar-path
      (expand-file-name <x-color><param>#2aa198</param>"~/AppData/Local/Programs/plantuml.jar"</x-color>))


(<x-color><param>#859900</param>defun</x-color> <x-color><param>#268bd2</param>comment-or-uncomment-region-or-line</x-color> ()
    <x-color><param>#2aa198</param>"Comments or uncomments the region or the current line if there's no active region."</x-color>
    (<x-color><param>#859900</param>interactive</x-color>)
    (<x-color><param>#859900</param>let</x-color> (beg end)
        (<x-color><param>#859900</param>if</x-color> (region-active-p)
            (<x-color><param>#859900</param>setq</x-color> beg (region-beginning) end (region-end))
            (<x-color><param>#859900</param>setq</x-color> beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))


(global-set-key [?\C-\;] 'comment-or-uncomment-region-or-line)


(<x-color><param>#859900</param>setq</x-color> reftex-bibliography-commands '(<x-color><param>#2aa198</param>"bibliography"</x-color> <x-color><param>#2aa198</param>"nobibliography"</x-color> <x-color><param>#2aa198</param>"addbibresource"</x-color>))


(<x-color><param>#859900</param>setq</x-color> ispell-program-name <x-color><param>#2aa198</param>"C:/Users/arikera/AppData/Local/Hunspell/bin/hunspell.exe"</x-color>)

(<x-color><param>#859900</param>setq</x-color> ispell-dictionary <x-color><param>#2aa198</param>"en_GB"</x-color>)    <x-color><param>#586e75</param>;set the default dictionary
</x-color>

<x-color><param>#586e75</param>;;(server-start)
</x-color>(<x-color><param>#859900</param>setq</x-color> vc-handled-backends (delq 'Git vc-handled-backends))


(put 'magit-clean 'disabled nil)
