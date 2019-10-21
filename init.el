Content-Type: text/enriched
Text-Width: 72

<x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>(require 'package)

</x-color>

<x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>;; Some setup to direct to local repo instead of online ones since
</x-color><x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>;; they fail due to Volvo's firewall

</x-color><x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>(setq package-archives '(("gnu" . "~/.emacs.d/gnu/")
</x-color><x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>			 ("melpa" . "~/.emacs.d/melpa/")

</x-color><x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>			 ("org" . "~/.emacs.d/org/")))
</x-color><x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>Added by Package.el.  This must come before configurations of
</x-color><x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>installed packages.  Don't delete this line.  If you don't want it,
</x-color><x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>just comment it out by adding a semicolon to the start of the line.
</x-color><x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>You may delete these explanatory comments.
</x-color>(package-initialize)

(custom-set-variables
 <x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>custom-set-variables was added by Custom.
</x-color> <x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>If you edit it by hand, you could mess it up, so be careful.
</x-color> <x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>Your init file should contain only one such instance.
</x-color> <x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>If there is more than one, they won't work right.
</x-color> '(LaTeX-command-style (<x-color><param>#859900</param>quote</x-color> ((<x-color><param>#2aa198</param>""</x-color> <x-color><param>#2aa198</param>"%(PDF)%(latex) -shell-escape %S%(PDFout)"</x-color>))))
 '(TeX-PDF-mode t)
 '(TeX-engine (<x-color><param>#859900</param>quote</x-color> luatex))
 '(TeX-fold-env-spec-list

   (<x-color><param>#859900</param>quote</x-color>
    ((<x-color><param>#2aa198</param>"[comment]"</x-color>
      (<x-color><param>#2aa198</param>"comment"</x-color>))
     (<x-color><param>#2aa198</param>"[tikzpicture]"</x-color>
      (<x-color><param>#2aa198</param>"tikzpicture"</x-color>))
     (<x-color><param>#2aa198</param>"[tabular]"</x-color>
      (<x-color><param>#2aa198</param>"tabular"</x-color>)))))
 '(custom-enabled-themes (<x-color><param>#859900</param>quote</x-color> (solarized-dark)))
 '(custom-safe-themes

   (<x-color><param>#859900</param>quote</x-color>
    (<x-color><param>#2aa198</param>"0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f"</x-color> <x-color><param>#2aa198</param>"3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa"</x-color> <x-color><param>#2aa198</param>"84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279"</x-color> <x-color><param>#2aa198</param>"a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0"</x-color> <x-color><param>#2aa198</param>"8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4"</x-color> default)))
 '(display-time-mode t)
 '(magit-log-section-commit-count 30)
 '(magit-status-sections-hook

   (<x-color><param>#859900</param>quote</x-color>
    (magit-insert-status-headers magit-insert-merge-log magit-insert-rebase-sequence magit-insert-am-sequence magit-insert-sequencer-sequence magit-insert-bisect-output magit-insert-bisect-rest magit-insert-bisect-log magit-insert-untracked-files magit-insert-unstaged-changes magit-insert-staged-changes magit-insert-stashes magit-insert-unpulled-from-pushremote magit-insert-unpulled-from-upstream magit-insert-unpushed-to-pushremote magit-insert-unpushed-to-upstream magit-insert-recent-commits)))
 '(package-selected-packages

   (<x-color><param>#859900</param>quote</x-color>
    (libgit magit-libgit graphviz-dot-mode plantuml-mode eide realgud realgud-ipdb elpy elpygen bmx-mode powershell matlab-mode magit-lfs magit counsel flyspell-correct-ivy imenu-anywhere ivy-bibtex ivy-dired-history ivy-pages ivy solarized-theme auctex org)))
 '(preview-auto-reveal

   (<x-color><param>#859900</param>quote</x-color>
    (eval
     (preview-arrived-via
      (key-binding
       [left])
      (key-binding
       [right])))))
 '(preview-default-option-list (<x-color><param>#859900</param>quote</x-color> (<x-color><param>#2aa198</param>"displaymath"</x-color> <x-color><param>#2aa198</param>"floats"</x-color> <x-color><param>#2aa198</param>"graphics"</x-color> <x-color><param>#2aa198</param>"textmath"</x-color>)))
 '(preview-default-preamble

   (<x-color><param>#859900</param>quote</x-color>
    (<x-color><param>#2aa198</param>"\\RequirePackage["</x-color>
     (<x-color><param>#2aa198</param>","</x-color> . preview-default-option-list)
     <x-color><param>#2aa198</param>"]{preview}[2004/11/05]"</x-color> <x-color><param>#2aa198</param>"\\PreviewEnvironment{tikzpicture}"</x-color> <x-color><param>#2aa198</param>"\\PreviewEnvironment{tabular}"</x-color>)))
 '(preview-inner-environments

   (<x-color><param>#859900</param>quote</x-color>
    (<x-color><param>#2aa198</param>"Bmatrix"</x-color> <x-color><param>#2aa198</param>"Vmatrix"</x-color> <x-color><param>#2aa198</param>"aligned"</x-color> <x-color><param>#2aa198</param>"array"</x-color> <x-color><param>#2aa198</param>"bmatrix"</x-color> <x-color><param>#2aa198</param>"cases"</x-color> <x-color><param>#2aa198</param>"gathered"</x-color> <x-color><param>#2aa198</param>"matrix"</x-color> <x-color><param>#2aa198</param>"pmatrix"</x-color> <x-color><param>#2aa198</param>"smallmatrix"</x-color> <x-color><param>#2aa198</param>"split"</x-color> <x-color><param>#2aa198</param>"subarray"</x-color> <x-color><param>#2aa198</param>"vmatrix"</x-color> <x-color><param>#2aa198</param>"axis"</x-color>)))
 '(preview-scale-function 1.75)
 '(tool-bar-mode nil))
(custom-set-faces
 <x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>custom-set-faces was added by Custom.
</x-color> <x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>If you edit it by hand, you could mess it up, so be careful.
</x-color> <x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>Your init file should contain only one such instance.
</x-color> <x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>If there is more than one, they won't work right.
</x-color> '(default ((t (<x-color><param>#268bd2</param>:family</x-color> <x-color><param>#2aa198</param>"Consolas"</x-color> <x-color><param>#268bd2</param>:foundry</x-color> <x-color><param>#2aa198</param>"outline"</x-color> <x-color><param>#268bd2</param>:slant</x-color> normal <x-color><param>#268bd2</param>:weight</x-color> normal <x-color><param>#268bd2</param>:height</x-color> 113 <x-color><param>#268bd2</param>:width</x-color> normal))))
 '(font-lock-builtin-face ((t (<x-color><param>#268bd2</param>:foreground</x-color> <x-color><param>#2aa198</param>"#268bd2"</x-color> <x-color><param>#268bd2</param>:slant</x-color> italic <x-color><param>#268bd2</param>:weight</x-color> bold))))
 '(font-lock-doc-face ((t (<x-color><param>#268bd2</param>:foreground</x-color> <x-color><param>#2aa198</param>"#2aa198"</x-color> <x-color><param>#268bd2</param>:slant</x-color> italic)))))

(add-to-list 'load-path <x-color><param>#2aa198</param>"~/.emacs.d/lisp/"</x-color>)


<x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>(setq url-proxy-services
</x-color><x-color><param>#586e75</param>;;        </x-color><x-color><param>#586e75</param>'(("no_proxy" . "^\\(localhost\\|10.*\\)")
</x-color><x-color><param>#586e75</param>;;          </x-color><x-color><param>#586e75</param>("http" . "pxgot4.srv.volvo.com:8080")
</x-color><x-color><param>#586e75</param>;;          </x-color><x-color><param>#586e75</param>("https" . "pxgot4.srv.volvo.com:8080")))

</x-color>

(<x-color><param>#859900</param>setq</x-color> url-proxy-services
       '((<x-color><param>#2aa198</param>"no_proxy"</x-color> . <x-color><param>#2aa198</param>"^</x-color><x-color><param>#859900</param><x-color><param>#2aa198</param>\\</x-color></x-color><x-color><param>#2aa198</param><x-color><param>#b58900</param>(</x-color></x-color><x-color><param>#2aa198</param>localhost</x-color><x-color><param>#859900</param><x-color><param>#2aa198</param>\\</x-color></x-color><x-color><param>#2aa198</param><x-color><param>#b58900</param>|</x-color></x-color><x-color><param>#2aa198</param>10.*</x-color><x-color><param>#859900</param><x-color><param>#2aa198</param>\\</x-color></x-color><x-color><param>#2aa198</param><x-color><param>#b58900</param>)</x-color></x-color><x-color><param>#2aa198</param>"</x-color>)
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


(global-set-key (kbd <x-color><param>#2aa198</param>"C-s"</x-color>) 'swiper-isearch)
(global-set-key (kbd <x-color><param>#2aa198</param>"M-x"</x-color>) 'counsel-M-x)
(global-set-key (kbd <x-color><param>#2aa198</param>"C-x C-f"</x-color>) 'counsel-find-file)
(global-set-key (kbd <x-color><param>#2aa198</param>"M-y"</x-color>) 'counsel-yank-pop)
(global-set-key (kbd <x-color><param>#2aa198</param>"<<f1> f"</x-color>) 'counsel-describe-function)
(global-set-key (kbd <x-color><param>#2aa198</param>"<<f1> v"</x-color>) 'counsel-describe-variable)
(global-set-key (kbd <x-color><param>#2aa198</param>"<<f1> l"</x-color>) 'counsel-find-library)
(global-set-key (kbd <x-color><param>#2aa198</param>"<<f2> i"</x-color>) 'counsel-info-lookup-symbol)
(global-set-key (kbd <x-color><param>#2aa198</param>"<<f2> u"</x-color>) 'counsel-unicode-char)
(global-set-key (kbd <x-color><param>#2aa198</param>"<<f2> j"</x-color>) 'counsel-set-variable)
(global-set-key (kbd <x-color><param>#2aa198</param>"C-x b"</x-color>) 'ivy-switch-buffer)
(global-set-key (kbd <x-color><param>#2aa198</param>"C-c v"</x-color>) 'ivy-push-view)
(global-set-key (kbd <x-color><param>#2aa198</param>"C-c V"</x-color>) 'ivy-pop-view)

(global-set-key (kbd <x-color><param>#2aa198</param>"C-c d"</x-color>) 'counsel-descbinds)


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
			     <x-color><param>#586e75</param>;;</x-color><x-color><param>#586e75</param>(ispell)
</x-color>			     ))


<x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>active Org-babel languages
</x-color>(org-babel-do-load-languages
 'org-babel-load-languages
 '(<x-color><param>#586e75</param>;; </x-color><x-color><param>#586e75</param>other Babel languages
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

(<x-color><param>#859900</param>setq</x-color> ispell-dictionary <x-color><param>#2aa198</param>"en_GB"</x-color>)    <x-color><param>#586e75</param>;</x-color><x-color><param>#586e75</param>set the default dictionary
</x-color>

<x-color><param>#586e75</param>;;</x-color><x-color><param>#586e75</param>(server-start)
</x-color>(<x-color><param>#859900</param>setq</x-color> vc-handled-backends (delq 'Git vc-handled-backends))


(put 'magit-clean 'disabled nil)
