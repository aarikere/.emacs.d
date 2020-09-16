(define-package "realgud" "20200831.2111" "A modular front-end for interacting with external debuggers"
  '((load-relative "1.3.1")
    (loc-changes "1.2")
    (test-simple "1.3.0")
    (emacs "25"))
  :commit "858b902919dfe85ca0e15f258927647a0a049da9" :keywords
  '("debugger" "gdb" "python" "perl" "go" "bash" "zsh" "bashdb" "zshdb" "remake" "trepan" "perldb" "pdb")
  :authors
  '(("Rocky Bernstein" . "rocky@gnu.org"))
  :maintainer
  '("Rocky Bernstein" . "rocky@gnu.org")
  :url "https://github.com/realgud/realgud/")
;; Local Variables:
;; no-byte-compile: t
;; End: