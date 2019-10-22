;;; lsp-rust.el --- Rust Client settings             -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Ivan Yonchovski

;; Author: Ivan Yonchovski <yyoncho@gmail.com>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; lsp-rust client

;;; Code:

(require 'lsp-mode)
(require 'ht)
(require 'dash)

(defgroup lsp-rust nil
  "LSP support for Rust, using Rust Language Server."
  :group 'lsp-mode
  :link '(url-link "https://github.com/rust-lang/rls")
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-server 'rls
  "Choose LSP server."
  :type '(choice (symbol :tag 'rls "rls")
                 (symbol :tag 'rust-analyzer "rust-analyzer"))
  :group 'lsp-mode
  :package-version '(lsp-mode . "6.2"))

(defcustom lsp-rust-library-directories '("~/.cargo/registry/src" "~/.rustup/toolchains")
  "List of directories which will be considered to be libraries."
  :risky t
  :type '(repeat string)
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-sysroot nil
  "If non-nil, use the given path as the sysroot for all rustc invocations instead of trying
to detect the sysroot automatically."
  :type '(choice
          (const :tag "None" nil)
          (string :tag "Sysroot"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-target nil
  "If non-nil, use the given target triple for all rustc invocations."
  :type '(choice
          (const :tag "None" nil)
          (string :tag "Target"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-rustflags nil
  "Flags added to RUSTFLAGS."
  :type '(choice
          (const :tag "None" nil)
          (string :tag "Flags"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-clear-env-rust-log t
  "Clear the RUST_LOG environment variable before running rustc or cargo."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-build-lib nil
  "If non-nil, checks the project as if you passed the `--lib' argument to cargo.
Mutually exclusive with, and preferred over, `lsp-rust-build-bin'. (Unstable)"
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-build-bin nil
  "If non-nil, checks the project as if you passed `-- bin <build_bin>' argument to cargo.
Mutually exclusive with `lsp-rust-build-lib'. (Unstable)"
  :type '(choice
          (const :tag "None" nil)
          (string :tag "Binary"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-cfg-test nil
  "If non-nil, checks the project as if you were running `cargo test' rather than cargo build.
I.e., compiles (but does not run) test code."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-unstable-features nil
  "Enable unstable features."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-wait-to-build nil
  "Time in milliseconds between receiving a change notification
and starting build. If not specified, automatically inferred by
the latest build duration."
  :type '(choice
          (const :tag "Auto" nil)
          (number :tag "Time"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-show-warnings t
  "Show warnings."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-crate-blacklist  [
                                      "cocoa"
                                      "gleam"
                                      "glium"
                                      "idna"
                                      "libc"
                                      "openssl"
                                      "rustc_serialize"
                                      "serde"
                                      "serde_json"
                                      "typenum"
                                      "unicode_normalization"
                                      "unicode_segmentation"
                                      "winapi"
                                      ]
  "A list of Cargo crates to blacklist."
  :type 'lsp-string-vector
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-build-on-save nil
  "Only index the project when a file is saved and not on
change."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-features []
  "A list of Cargo features to enable."
  :type 'lsp-string-vector
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-all-features nil
  "Enable all Cargo features."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-no-default-features nil
  "Do not enable default Cargo features."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-racer-completion t
  "Enables code completion using racer."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-clippy-preference "opt-in"
  "Controls eagerness of clippy diagnostics when available. Valid
  values are (case-insensitive):\n - \"off\": Disable clippy
  lints.\n - \"opt-in\": Clippy lints are shown when crates
  specify `#![warn(clippy)]`.\n - \"on\": Clippy lints enabled
  for all crates in workspace.\nYou need to install clippy via
  rustup if you haven't already."
  :type '(choice
          (const "on")
          (const "opt-in")
          (const "off"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-jobs nil
  "Number of Cargo jobs to be run in parallel."
  :type '(choice
          (const :tag "Auto" nil)
          (number :tag "Jobs"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-all-targets t
  "Checks the project as if you were running cargo check --all-targets.
I.e., check all targets and integration tests too."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-target-dir nil
  "When specified, it places the generated analysis files at the
specified target directory. By default it is placed target/rls
directory."
  :type '(choice
          (const :tag "Default" nil)
          (string :tag "Directory"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-rustfmt-path nil
  "When specified, RLS will use the Rustfmt pointed at the path
instead of the bundled one"
  :type '(choice
          (const :tag "Bundled" nil)
          (string :tag "Path"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-build-command nil
  "EXPERIMENTAL (requires `unstable_features`)\nIf set, executes
a given program responsible for rebuilding save-analysis to be
loaded by the RLS. The program given should output a list of
resulting .json files on stdout. \nImplies `rust.build_on_save`:
true."
  :type '(choice
          (const :tag "None" nil)
          (string :tag "Command"))
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-full-docs nil
  "Instructs cargo to enable full documentation extraction during
save-analysis while building the crate."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-rust-show-hover-context t
  "Show additional context in hover tooltips when available. This
is often the type local variable declaration."
  :type 'boolean
  :group 'lsp-rust
  :package-version '(lsp-mode . "6.1"))

(lsp-register-custom-settings
 '(("rust.show_hover_context" lsp-rust-show-hover-context t)
   ("rust.full_docs" lsp-rust-full-docs t)
   ("rust.build_command" lsp-rust-build-command)
   ("rust.rustfmt_path" lsp-rust-rustfmt-path)
   ("rust.target_dir" lsp-rust-target-dir)
   ("rust.all_targets" lsp-rust-all-targets t)
   ("rust.jobs" lsp-rust-jobs)
   ("rust.clippy_preference" lsp-rust-clippy-preference)
   ("rust.racer_completion" lsp-rust-racer-completion t)
   ("rust.no_default_features" lsp-rust-no-default-features t)
   ("rust.all_features" lsp-rust-all-features t)
   ("rust.features" lsp-rust-features)
   ("rust.build_on_save" lsp-rust-build-on-save t)
   ("rust.crate_blacklist" lsp-rust-crate-blacklist)
   ("rust.show_warnings" lsp-rust-show-warnings t)
   ("rust.wait_to_build" lsp-rust-wait-to-build)
   ("rust.unstable_features" lsp-rust-unstable-features t)
   ("rust.cfg_test" lsp-rust-cfg-test t)
   ("rust.build_bin" lsp-rust-build-bin)
   ("rust.build_lib" lsp-rust-build-lib t)
   ("rust.clear_env_rust_log" lsp-rust-clear-env-rust-log t)
   ("rust.rustflags" lsp-rust-rustflags)
   ("rust.target" lsp-rust-target)
   ("rust.sysroot" lsp-rust-sysroot)))

(defvar lsp-clients-rust-progress-string ""
  "Rust progress status as reported by the RLS server.")

(put 'lsp-rust-progress-string 'risky-local-variable t)
(add-to-list 'global-mode-string (list '(t lsp-clients-rust-progress-string)))

(defun lsp-clients--rust-window-progress (_workspace params)
  "Progress report handling.
PARAMS progress report notification data."
  (-let (((&hash "done" "message" "title") params))
    (if (or done (s-blank-str? message))
        (setq lsp-clients-rust-progress-string nil)
      (setq lsp-clients-rust-progress-string (format "%s - %s" title (or message "")))
      (lsp-log lsp-clients-rust-progress-string))))

(defcustom lsp-rust-rls-server-command '("rls")
  "Command to start RLS."
  :type '(repeat string)
  :package-version '(lsp-mode . "6.1"))

(cl-defmethod lsp-execute-command
  (_server (command (eql rls.run)) params)
  (-let* (((&hash "env" "binary" "args" "cwd") (seq-first params))
          (default-directory (or cwd (lsp-workspace-root) default-directory) ))
    (compile
     (format "%s %s %s"
             (s-join " " (ht-amap (format "%s=%s" key value) env))
             binary
             (s-join " " args)))))

(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection (lambda () lsp-rust-rls-server-command))
                  :major-modes '(rust-mode rustic-mode)
                  :priority (if (eq lsp-rust-server 'rls) 1 -1)
                  :initialization-options '((omitInitBuild . t)
                                            (cmdRun . t))
                  :notification-handlers (ht ("window/progress" 'lsp-clients--rust-window-progress))
                  :action-handlers (ht ("rls.run" 'lsp-rust--rls-run))
                  :library-folders-fn (lambda (_workspace) lsp-rust-library-directories)
                  :initialized-fn (lambda (workspace)
                                    (with-lsp-workspace workspace
                                      (lsp--set-configuration
                                       (lsp-configuration-section "rust"))))
                  :server-id 'rls))


;; rust-analyzer

(defcustom lsp-rust-analyzer-server-command '("ra_lsp_server")
  "Command to start rust-analyzer."
  :type '(repeat string)
  :package-version '(lsp-mode . "6.2"))

(defconst lsp-rust-notification-handlers
  '(("rust-analyzer/publishDecorations" . (lambda (_w _p)))))

(defconst lsp-rust-action-handlers
  '(("rust-analyzer.applySourceChange" .
     (lambda (p) (lsp-rust-apply-source-change-command p)))))

(defun lsp-rust-apply-source-change-command (p)
  (let ((data (-> p (ht-get "arguments") (seq-first))))
    (lsp-rust-apply-source-change data)))

(defun lsp-rust-uri-filename (text-document)
  (lsp--uri-to-path (gethash "uri" text-document)))

(defun lsp-rust-apply-text-document-edit (edit)
  "Like lsp--apply-text-document-edit, but it allows nil version."
  (let* ((ident (gethash "textDocument" edit))
         (filename (lsp-rust-uri-filename ident))
         (version (gethash "version" ident)))
    (with-current-buffer (find-file-noselect filename)
      (when (or (not version) (= version (lsp--cur-file-version)))
        (lsp--apply-text-edits (gethash "edits" edit))))))

(defun lsp-rust-apply-source-change (data)
  (seq-doseq (it (-> data (ht-get "workspaceEdit") (ht-get "documentChanges")))
    (lsp-rust-apply-text-document-edit it))
  (-when-let (cursor-position (ht-get data "cursorPosition"))
    (let ((filename (lsp-rust-uri-filename (ht-get cursor-position "textDocument")))
          (position (ht-get cursor-position "position")))
      (find-file filename)
      (lsp-rust-goto-lsp-loc position))))

(define-derived-mode lsp-rust-analyzer-syntax-tree-mode special-mode "Rust-Analyzer-Syntax-Tree"
  "Mode for the rust-analyzer status buffer.")

(defun lsp-rust-analyzer-syntax-tree ()
  "Display syntax tree for current buffer."
  (interactive)
  (-if-let* ((workspace (lsp-find-workspace 'rust-analyzer default-directory))
             (root (lsp-workspace-root default-directory))
             (params (list :textDocument (lsp--text-document-identifier)
                           :range (if (use-region-p)
                                      (lsp--region-to-range (region-beginning) (region-end))
                                    (lsp--region-to-range (point-min) (point-max)))))
             (results (with-lsp-workspace workspace
                        (lsp-send-request (lsp-make-request
                                           "rust-analyzer/syntaxTree"
                                           params)))))
      (let ((buf (get-buffer-create (format "*rust-analyzer syntax tree %s*" root)))
            (inhibit-read-only t))
        (with-current-buffer buf
          (lsp-rust-analyzer-syntax-tree-mode)
          (erase-buffer)
          (insert results)
          (goto-char (point-min)))
        (pop-to-buffer buf))
    (message "rust-analyzer not running.")))

(define-derived-mode lsp-rust-analyzer-status-mode special-mode "Rust-Analyzer-Status"
  "Mode for the rust-analyzer status buffer.")

(defun lsp-rust-analyzer-status ()
  "Displays status information for rust-analyzer."
  (interactive)
  (-if-let* ((workspace (lsp-find-workspace 'rust-analyzer default-directory))
             (root (lsp-workspace-root default-directory))
             (results (with-lsp-workspace workspace
                        (lsp-send-request (lsp-make-request
                                           "rust-analyzer/analyzerStatus")))))
      (let ((buf (get-buffer-create (format "*rust-analyzer status %s*" root)))
            (inhibit-read-only t))
        (with-current-buffer buf
          (lsp-rust-analyzer-status-mode)
          (erase-buffer)
          (insert results)
          (pop-to-buffer buf)))
    (message "rust-analyzer not running.")))

(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection (lambda () lsp-rust-analyzer-server-command))
  :major-modes '(rust-mode rustic-mode)
  :priority (if (eq lsp-rust-server 'rust-analyzer) 1 -1)
  :notification-handlers (ht<-alist lsp-rust-notification-handlers)
  :action-handlers (ht<-alist lsp-rust-action-handlers)
  :ignore-messages nil
  :server-id 'rust-analyzer))

(defun lsp-rust-switch-server ()
  "Switch priorities of lsp servers."
  (interactive)
  (dolist (server '(rls rust-analyzer))
    (when (natnump (setf (lsp--client-priority (gethash server lsp-clients))
                         (* (lsp--client-priority (gethash server lsp-clients)) -1)))
      (message (format "Switched to server %s." server)))))

(provide 'lsp-rust)
;;; lsp-rust.el ends here

;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc)
;; End:
