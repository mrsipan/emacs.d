;; -*- lexical-binding: t -*-

;; (package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user-recipes")

(setq to-install
      '(; ace-jump-mode
        ; deft
        ; evil-paredit
        lispyville
        groovy-emacs-mode
        jinja2-mode
        auto-yasnippet
        avy
        babel
        browse-kill-ring
        cider
        clojure-mode
        company-mode
        dictem
        dictionary
        elscreen
        ensime
        evil
        evil-exchange
        evil-leader
        evil-magit
        evil-matchit
        evil-nerd-commenter
        evil-numbers
        evil-org-mode
        evil-surround
        exec-path-from-shell
        expand-region
        find-file-in-project
        flx
        flyspell-lazy
        gist
        go-mode
        google-this
        google-translate
        haskell-mode
        ibuffer-vc
        ido-completing-read+
        inf-ruby
        js2-mode
        json-mode
        lua-mode
        lispy
        magit
        markdown-mode
        monky
        org-journal
        org-mode
        php-mode
        pylookup
        python
        rainbow-delimiters
        rainbow-mode
        rubocop
        rust-mode
        sass-mode
        scala-mode
        swiper
        sipan-theme
        smartparens
        smex
        text-translator
        ;; tramp
        memoize
        vala-mode
        web-mode
        wgrep
        yaml-mode
        yasnippet))

(mapc (lambda (package-name)
        (eval `(el-get-bundle ,package-name)))
      to-install)

(el-get 'sync)

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'undo-tree)
(global-undo-tree-mode)

(setq evil-find-skip-newlines t)
(setq evil-move-cursor-back t)
(setq evil-default-cursor '("LightGoldenrod" bar))
;(setq evil-normal-state-cursor '("orange" box))
(setq evil-normal-state-cursor '("#e18942" box))
(setq evil-visual-state-cursor '("LightGoldenrod" box))
(setq evil-replace-state-cursor '("tomato" box))
;;(setq evil-operator-state-cursor '("LightGoldenrod3" box))
(setq evil-operator-state-cursor '("DarkOliveGreen2" box))
(setq evil-motion-state-cursor '("LightGoldenrod" box))
(setq evil-auto-indent t)
(setq evil-shift-width 2)
(setq evil-regexp-search t)
(setq evil-want-C-i-jump nil)
(setq evil-want-C-u-scroll t)
(setq evil-want-fine-undo t)
;; color taken from search-fail when in evil emacs state
(setq evil-emacs-state-tag (propertize "E" 'face '((:foreground "#e93c3c"))))

;; from http://goo.gl/kJ3W9
(setq evil-leader/in-all-states t)
(evil-leader/set-leader "SPC")
(evil-mode nil)
(global-evil-leader-mode 1)
(evil-mode 1)

(setq evilnc-hotkey-comment-operator "gc")
(require 'evil-nerd-commenter)
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cy" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "cc" 'evilnc-comment-operator)

;; like in vim-commentary
(eval-after-load 'evil-nerd-commenter-operator
  '(progn
     (define-key evil-normal-state-map "gc" 'evilnc-comment-operator)
     (define-key evil-visual-state-map "gc" 'evilnc-comment-operator)))

(evil-define-key 'normal yaml-mode-map [backspace] 'evil-scroll-up)
(evil-define-key 'motion yaml-mode-map [backspace] 'evil-scroll-up)
(evil-define-key 'insert yaml-mode-map [backspace] 'yaml-electric-backspace)

(evil-define-key 'normal shell-mode-map (kbd "<C-return>") 'find-file-at-point)

; (unless (version< emacs-version "24.4")
;   (require 'evil-smartparens)
;   (require 'smartparens-config)
;   (smartparens-global-mode nil))

(require 'evil-numbers)
;; (define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
;; (define-key evil-normal-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)

; (setq sp-autoescape-string-quote nil)
; (sp-with-modes sp--lisp-modes
;   ;; disable ', it's the quote character!
;   (sp-local-pair "'" nil :actions nil)
;   ;; also only use the pseudo-quote inside strings where it serve as
;   ;; hyperlink.
;   (sp-local-pair "`" "'" :when '(sp-in-string-p sp-in-comment-p))
;   (sp-local-pair "`" nil
;                  :skip-match (lambda (ms mb me)
;                                (cond
;                                 ((equal ms "'")
;                                  (or (sp--org-skip-markup ms mb me)
;                                      (not (sp-point-in-string-or-comment))))
;                                 (t (not (sp-point-in-string-or-comment)))))))

(evil-leader/set-key "w" 'evil-write)

(define-key evil-normal-state-map (kbd "Y") (kbd "y$"))

;; reload
(define-key evil-normal-state-map (kbd "gR")
  (lambda () (interactive) (evil-edit nil t) (message "File reloaded")))

(define-key evil-motion-state-map (kbd "TAB") 'evil-scroll-down)
(define-key evil-normal-state-map (kbd "DEL") 'evil-scroll-up)
(define-key evil-motion-state-map (kbd "C-6") 'evil-buffer)
;(define-key evil-normal-state-map (kbd ",l") 'pylookup-lookup)
;(define-key evil-normal-state-map (kbd ",g") 'show-file-name)
(evil-leader/set-key "sp" 'show-full-path)
;; ;; tabs with elscreen
;; (define-key evil-motion-state-map (kbd "gt") 'elscreen-next)
;; (define-key evil-motion-state-map (kbd "gT") 'elscreen-previous)
;; (define-key evil-motion-state-map (kbd "C-`") 'elscreen-toggle)
(evil-leader/set-key "dbf" 'diff-buffer-with-file)

;; open buffers and files
(define-key evil-normal-state-map (kbd "C-*") 'ido-switch-buffer)
(define-key evil-motion-state-map (kbd "C-*") 'ido-switch-buffer)
(define-key evil-normal-state-map (kbd "C-(") 'ido-find-file)
(define-key evil-motion-state-map (kbd "C-(") 'ido-find-file)
(define-key evil-normal-state-map (kbd "C-8") 'ido-switch-buffer-other-window)
(define-key evil-motion-state-map (kbd "C-8") 'ido-switch-buffer-other-window)
(define-key evil-normal-state-map (kbd "C-9") 'ido-find-file-other-window)
(define-key evil-motion-state-map (kbd "C-9") 'ido-find-file-other-window)

;; (evil-ex-define-cmd "[tabe]dit" 'elscreen-create)
;; (evil-ex-define-cmd "[tabc]lose" 'elscreen-kill)

(require 'evil-surround)
(global-evil-surround-mode 1)

; ;; Ace jump
; (require 'ace-jump-mode)
; (evil-leader/set-key "j" 'ace-jump-mode)

;; Set size for paragraphs
(setq-default fill-column 72)

;; Set indentation to 4
(setq-default c-basic-offset 4)

;; Whitespaces
(setq-default show-trailing-whitespace t)
(setq-default indicate-empty-lines t)

;; Delete trailing whitespace
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; Line wrapping
(setq default-truncate-lines nil)

;; use auto fill for text
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Dark background
(setq frame-background-mode 'dark)

; rst mode.
(require 'rst)

(setq auto-mode-alist
      (append
       '(("\\.txt$" . rst-mode)
         ("\\.test$" . rst-mode)
         ("\\.re?st$" . rst-mode))
       auto-mode-alist))

; Turn on font-lock in all modes that support it
(global-font-lock-mode t)

; Maximum colors
(setq font-lock-maximum-decoration t)


;;; It is always better to know current line and column number
(column-number-mode t)
(line-number-mode t)

;;; Make all yes-or-no questions as y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

; 80 column wide lines when Fill mode is on
;(setq set-fill-column 120)

; table mode
(require 'table)
(add-hook 'text-mode-hook 'table-recognize)

;; dictionary server
(load "dictionary-init")
; key bindings for dictionary mode
(global-set-key "\C-cs" 'dictionary-search)
(global-set-key "\C-cw" 'dictionary-match-words)
(global-set-key "\M-]" 'dictionary-lookup-definition)
;(global-set-key [mouse-3] 'dictionary-mouse-popup-matching-words)

;; Disable splash screen
(setq initial-scratch-message nil)

;; Don't add new lines if cursor goes past the end of the file
(setq next-line-add-newlines nil)

;(set-frame-parameter (selected-frame) 'alpha 90)

(if (string-equal "gnu/linux" (symbol-name system-type))
    (setq font-name "Droid Sans Mono Slashed-11"))

(if (string-equal "darwin" (symbol-name system-type))
    (setq font-name "Droid Sans Mono Slashed-13"))

(if (string-equal "windows-nt" (symbol-name system-type))
    (setq font-name "Inconsolata-15"))

(add-to-list 'default-frame-alist
             `(font . ,font-name))

; ;; paredit
; (require 'paredit)
; ; (require 'evil-paredit)

;; Clojure
(require 'clojure-mode)
(require 'clojure-mode-extra-font-locking)
(add-to-list 'auto-mode-alist '("\\.clj[sxc]?$" . clojure-mode))
(add-hook 'clojure-mode-hook
          #'(lambda ()
              ; (smartparens-strict-mode)
              ; (evil-smartparents-mode)
              ; (paredit-mode)
              ; (evil-paredit-mode)
              (rainbow-delimiters-mode)
              (define-key clojure-mode-map "\C-m" 'newline-and-indent)
              (clojure-enable-cider)))

;; javascript
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;; json
(autoload 'json-mode "json-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

;; xml
(add-to-list 'auto-mode-alist '("\\.genshi$" . nxml-mode))

;; Text translation
(require 'text-translator)
(global-set-key "\C-x\M-t" 'text-translator)
(global-set-key "\C-x\M-T" 'text-translator-translate-last-string)
(global-set-key "\C-x\M-a" 'text-translator-all)
(setq text-translator-default-engine "google.com_esen")

;; Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Disable bell
(setq ring-bell-function 'ignore)
(setq visible-bell t)

;; Disable menubar on terminals
(cond
  ((eq window-system 'nil)
   (tool-bar-mode 0) (menu-bar-mode 0))
  (t (tool-bar-mode 0) (menu-bar-mode 1)))

;; Python!
(require 'python)

;; python hooks
(add-hook 'python-mode-hook
          #'(lambda ()
              (electric-pair-mode 1)
              (define-key python-mode-map "\C-m" 'newline-and-indent)
              ;; set evil-shift-with to the indent size in python
              (setq evil-shift-width 4)
              (setq python-check-command "flake8")))

(evil-leader/set-key "pc" 'python-check)

;; always indent when editing js
(add-hook 'js2-mode-hook
          #'(lambda ()
              (setq js2-basic-offset 2)
              (define-key js2-mode-map "\C-m" 'newline-and-indent)))

(add-hook 'json-mode-hook
          (lambda ()
            (setq json-reformat:indent-width 2)
            (setq json-reformat:pretty-string? t)
            (setq js-indent-level 2)))

;; ido stuff
(require 'ido)
(require 'flx-ido)

(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-enable-tramp-completion nil)
(setq ido-enable-last-directory-history nil)
(setq ido-confirm-unique-completion nil)
(setq ido-show-dot-for-dired t)
(setq ido-use-filename-at-point nil)
(setq ido-use-virtual-buffers t)
(setq ido-save-directory-list-files "~/.emacs.d/ido-last")
(ido-mode t)
(ido-everywhere 1)
(flx-ido-mode 1)

(add-hook 'ido-setup-hook
          '(lambda ()
             (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
             (define-key ido-completion-map (kbd "SPC") 'ido-next-match)
             (define-key ido-completion-map (kbd "C-p") 'ido-prev-match)))

(add-to-list 'ido-work-directory-list-ignore-regexps tramp-file-name-regexp)


(require 'flyspell)
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(add-hook 'flyspell-mode-hook
          '(lambda ()
            (define-key flyspell-mode-map [(control ?.)] nil)
            (define-key flyspell-mode-map [(control ?,)] nil))
          'append)

;; be lazy
(require 'flyspell-lazy)
(flyspell-lazy-mode 1)

;;(add-hook 'message-mode-hook 'flyspell-mode)
(add-hook 'rst-mode-hook 'flyspell-mode)
(add-hook 'emacs-lisp-mode-hook
          #'(lambda ()
              ; (smartparens-mode)
              ; (smartparens-strict-mode)
              ; (evil-smartparents-mode)
              (paredit-mode)
              ; (evil-paredit-mode)
              (rainbow-delimiters-mode)
              ;(turn-on-eldoc-mode)
              (rainbow-mode)))

;; Highlight current line
(global-hl-line-mode 1)

;; backup files in one place
(setq backup-directory-alist '((".*" . "~/.emacs.d/tmp/backups/")))
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/tmp/auto-saves/\\1" t)))
(setq tramp-backup-directory-alist backup-directory-alist)

(show-paren-mode t)

;; server
(require 'server)
(if (not (server-running-p))
    (server-start))

;; org mode
(require 'org)
(setq auto-mode-alist
      (append
       '(("\\.org$" . org-mode)
         ("\\.org\\.asc$" . org-mode)
         ("\\.org\\.gpg$" . org-mode))
       auto-mode-alist))

(setq org-directory "~/Dropbox/notes")
(setq org-default-notes-file (concat org-directory "notes.org"))
(setq org-agenda-files (quote ("~/Dropbox/notes")))
;; mobile
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-mobile-inbox-for-pull "~/Dropbox/notes/inbox.org")

(setq org-completion-use-ido t)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c r") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!/!)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "#ff5996" :weight normal)
              ("NEXT" :foreground "#53a0ec" :weight normal)
              ("DONE" :foreground "#cae682" :weight normal)
              ("WAITING" :foreground "#f4a3a3" :weight normal)
              ("HOLD" :foreground "#a7a7d1" :weight normal)
              ("CANCELLED" :foreground "#cae682" :weight normal)
              ("PHONE" :foreground "#ffffba" :weight normal))))

(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/Dropbox/notes/refile.org")
               "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("r" "respond" entry (file "~/Dropbox/notes/refile.org")
               "* TODO Respond to %:from on %:subject\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
              ("n" "note" entry (file "~/Dropbox/notes/refile.org")
               "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
              ("j" "Journal" entry (file+datetree "~/Dropbox/notes/diary.org")
               "* %?\n%U\n" :clock-in t :clock-resume t))))


(add-hook 'org-mode-hook
          '(lambda ()
              (flyspell-mode 1)
              (local-unset-key [(control ?,)])
              (org-defkey org-mode-map "\C-c[" 'undefined)
              (org-defkey org-mode-map "\C-c]" 'undefined)
              (org-defkey org-mode-map "\C-i" nil)
              (org-defkey org-mode-map [(tab)] nil)
              (org-defkey org-mode-map "\C-c;" 'undefined))
          'append)

;; yasnippet
(require 'yasnippet)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
;(define-key yas-minor-mode-map (kbd "C-x C-y") 'yas-expand)
;(define-key yas-minor-mode-map (kbd "C-x C-y") 'company-yasnippet)
(define-key yas-minor-mode-map (kbd "C-x C-y") 'yas-insert-snippet)
(define-key yas-minor-mode-map (kbd "C-x C-y")
  '(lambda ()
     (interactive)
     (if (string= evil-state "normal")
         (evil-insert-state))
     (yas-insert-snippet)))

(yas/global-mode 1)
(setq yas/prompt-functions '(yas/ido-prompt yas/dropdown-prompt))
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

;; pylookup
(setq pylookup-program "~/.emacs.d/pylookup/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/pylookup/pylookup.db")
(autoload 'pylookup-lookup "pylookup" t)
(autoload 'pylookup-update "pylookup" t)

;; web browser
; (require 'w3m-load)
; (setq browse-url-browser-function 'w3m-browse-url)

;; rainbow mode
(require 'rainbow-mode)

;; get the full path
(defun show-full-path ()
  "Show the full path of a file in the minibuffer."
  (interactive)
  (message (concat "Full Path: " (buffer-file-name)))
  (kill-new (file-truename buffer-file-name)))

(setf (getenv "EDITOR") "emacsclient"
      (getenv "VISUAL") "emacsclient")

;; use escape to quit minibuffer.
;(define-key evil-normal-state-map (kbd "<escape>") 'keyboard-quit)
(define-key evil-visual-state-map (kbd "<escape>") 'keyboard-quit)
(define-key isearch-mode-map (kbd "<escape>") 'isearch-cancel)
(define-key minibuffer-local-map (kbd "<escape>") 'keyboard-escape-quit)
(define-key minibuffer-local-ns-map (kbd "<escape>") 'keyboard-escape-quit)
(define-key minibuffer-local-completion-map (kbd "<escape>") 'keyboard-escape-quit)
(define-key minibuffer-local-must-match-map (kbd "<escape>") 'keyboard-escape-quit)
(define-key minibuffer-local-isearch-map (kbd "<escape>") 'keyboard-escape-quit)

;; ; ElScreen
;; (load "elscreen" "ElScreen" t)

(define-key global-map (kbd "C-, C-,") 'smex)
(evil-leader/set-key "," 'smex)
(global-set-key (kbd "M-x") 'smex)
;; in console mode
(define-key global-map (kbd "C-x x") 'smex)
(define-key global-map (kbd "C-x c") 'keyboard-quit)

;; (define-key global-map (kbd "C-, f") 'ido-find-file-other-window)
;; (define-key global-map (kbd "C-, b") 'ido-switch-buffer-other-window)
;; (define-key global-map (kbd "C-, C-b") 'buffer-menu-other-window)

(define-key global-map (kbd "C-, f") 'ido-find-file)
(evil-leader/set-key "ff" 'ido-find-file)

(define-key global-map (kbd "C-, b") 'ido-switch-buffer)
(evil-leader/set-key "b" 'ido-switch-buffer)
(evil-leader/set-key "fR"
  (lambda () (interactive) (evil-edit nil t) (message "File Reloaded")))

(define-key global-map (kbd "C-, C-b") 'buffer-menu)

;; tramp.
(require `tramp)
(setq tramp-debug-buffer 1)
(setq tramp-persistency-file-name "~/.emacs.d/tmp/tramp")
;(setq tramp-default-user "")
(setq tramp-default-method "ssh")
(add-to-list 'tramp-default-proxies-alist
             '(nil "\\`root\\'" "/ssh:%h:"))
(add-to-list 'tramp-default-proxies-alist
             '((regexp-quote (system-name)) nil nil))

(require 'dictem)

;; ediff
(setq ediff-window-setup-function 'ediff-setup-windows-plain
      ediff-split-window-function 'split-window-horizontally)
(evil-set-initial-state 'ediff-mode 'motion)
(add-hook 'ediff-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)))

;; eshell
(add-hook 'eshell-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)))

;; vc-diff mode
(add-hook 'diff-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)))

;; calendar mode
(add-hook 'calendar-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)))

(add-hook 'compilation-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)))

(add-hook 'buffer-menu-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)))

;; this may not be the right way
(add-hook 'minibuffer-setup-hook
          (lambda ()
            (setq show-trailing-whitespace nil)))

;; use ZZ to check-in
(evil-define-key 'normal vc-log-mode-map (kbd "ZZ") 'log-edit-done)

;; puppet
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests" t)
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

;; make buffer names unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

;; rust
(setq rust-indent-unit 4)

;; ibuffer
(evil-set-initial-state 'ibuffer 'motion)
(setq-default ibuffer-expert t)
(setq ibuffer-shrink-to-minimum-size t)
(setq ibuffer-always-show-last-buffer nil)
(setq ibuffer-sorting-mode 'recency)
(setq ibuffer-use-header-line t)

;; smex
(setq smex-save-file "~/.emacs.d/tmp/smex_items")
(require 'smex)
(smex-initialize)

;; remove old buffers
(require 'midnight)

;; seve sessions
(setq desktop-dirname "~/.emacs.d/tmp/desktop/"
      desktop-base-file-name "emacs-desktop"
      desktop-base-lock-name "lock"
      desktop-path (list desktop-dirname)
      ;desktop-save t
      desktop-save 'if-exists
      desktop-files-not-to-save "^$" ;reload tramp paths
      desktop-load-locked-desktop nil)

(desktop-save-mode 1)
;; from http://goo.gl/qNgSo
(setq desktop-globals-to-save
      (append '((extended-command-history . 30)
                (file-name-history . 100)
                (grep-history . 30)
                (compile-history . 30)
                (minibuffer-history . 50)
                (query-replace-history . 60)
                (read-expression-history . 60)
                (regexp-history . 60)
                (regexp-search-ring . 20)
                (search-ring . 20)
                (shell-command-history . 50)
                tags-file-name
                register-alist)))

;;save cursor position
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/tmp/saved-places")

;;lisp check doc
(require 'checkdoc)

;; browse kill ring
(require 'browse-kill-ring)

;; expand selection
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C--") 'er/contract-region)

;; eshell aliases
(defalias 'eshell/ff 'find-file)
(defalias 'eshell/ffow 'find-file-other-window)

;; sh-mode indentation
(add-hook 'sh-mode-hook
          (lambda ()
            (setq sh-basic-offset 2
                  sh-indentation 2)))

(require 'wgrep)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

(autoload 'LilyPond-mode "lilypond-mode")
(add-to-list 'auto-mode-alist '("\\.ly$" . LilyPond-mode))
(put 'dired-find-alternate-file 'disabled nil)

;; winner-mode undo/redo windows arrangement
(when (fboundp 'winner-mode)
  (winner-mode 1))

;; scroll bar to the right
(if (display-graphic-p)
  (progn
    (set-scroll-bar-mode 'right)))

;; use ZZ to commit in git
(evil-define-key 'normal git-commit-mode-map (kbd "ZZ") 'git-commit-commit)

;; winner mode
(define-key global-map (kbd "C-, C-u") 'winner-undo)
(define-key global-map (kbd "C-, C-j") 'winner-redo)

(define-key evil-motion-state-map (kbd "C-w u") 'winner-undo)
(define-key evil-motion-state-map (kbd "C-w U") 'winner-redo)

(require 'rainbow-delimiters)

; (require 'scala-mode2)
(add-hook 'scala-mode-hook
          #'(lambda ()
              ;(flyspell-prog-mode)
              (define-key scala-mode-map "\C-m" 'newline-and-indent)))

(setq cider-repl-use-clojure-font-lock t)
(require 'cider)
(add-hook 'cider-mode-hook
          #'(lambda ()
              (rainbow-delimiters-mode)))

(require 'find-file-in-project)

(require 'evil-org)

;; google translate
(setq google-translate-enable-ido-completion t)
(setq google-translate-default-source-language "es")
(setq google-translate-default-target-language "en")
(setq google-translate-show-phonetic t)
(evil-leader/set-key "ts" 'google-translate-query-translate)
(evil-leader/set-key "te" 'google-translate-query-translate-reverse)

(require 'google-translate)
(global-set-key (kbd "C-c t") 'google-translate-at-point)
(global-set-key (kbd "C-c T") 'google-translate-query-translate)
(global-set-key (kbd "C-c r") 'google-translate-at-point-reverse)
(global-set-key (kbd "C-c R") 'google-translate-query-translate-reverse)

;; googling
(require 'google-this)
(google-this-mode 1)
(global-set-key (kbd "C-x g") 'google-this-mode-submap)


;; deft
; (require 'deft)
; (setq deft-extension "org")
; (setq deft-directory "~/Dropbox/deft")
; (setq deft-text-mode 'org-mode)
;(setq deft-use-filename-as-title t)
; (global-set-key [f7] 'deft)

;; ;; use hunspell
;; (unless (boundp 'aquamacs-version)
;;     (setq ispell-program-name "hunspell"))

;; vala
(autoload 'vala-mode "vala-mode" "Major mode for Vala." t)
(add-to-list 'auto-mode-alist '("\\.vala$" . vala-mode))
(add-to-list 'auto-mode-alist '("\\.vapi$" . vala-mode))
(add-to-list 'file-coding-system-alist '("\\.vala$" . utf-8))
(add-to-list 'file-coding-system-alist '("\\.vapi$" . utf-8))

(add-hook 'vala-mode-hook
          #'(lambda ()
              (setq indent-tabs-mode nil)
              (setq c-basic-offset 4)
              (setq tab-width 4)
              ))

;; Ocaml
(autoload 'tuareg-mode "tuareg" "Mode for editing ocaml" t)
(autoload 'camldebug "camldebug" "Caml debugger" t)
(autoload 'tuareg-imenu-set-imenu "tuareg" "config for imenu" t)
(add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)

(setq auto-mode-alist
      (append '(("\\.ml[ily]?$" . tuareg-mode)
                ("\\.topml$" . tuareg-mode))
              auto-mode-alist))

; (add-to-list 'custom-theme-load-path "~/.emacs.d/sipan-theme")
; (load-theme 'sipan t)
(load-theme 'sipan t)

(if (boundp 'aquamacs-version)
    (progn
      (setq aquamacs-scratch-file "~/tmp/aquamacs_scratch")
      (add-to-list 'el-get-recipe-path
                   "~/Library/Preferences/Aquamacs Emacs/Packages/el-get/el-get/recipes")))

(setq epa-file-select-keys "2F267E644C611230")
(setq epa-file-name-regexp "\\.\\(gpg\\|asc\\)$" epa-armor t)
(setq epa-file-inhibit-auto-save t)
(setq epg-gpg-program "gpg2")
(require 'epa-file)
(epa-file-name-regexp-update)

(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance '("crypt"))
(setq org-crypt-key "2F267E644C611230")

(setq org-journal-dir "~/Dropbox/journal/")
;; (require 'org-journal)

; dired
(evil-define-key 'normal dired-mode-map (kbd "n") 'evil-search-next)
(evil-define-key 'normal dired-mode-map (kbd "N") 'evil-search-previous)
(evil-define-key 'normal dired-mode-map (kbd "Q") 'kill-this-buffer)
(evil-define-key 'normal dired-mode-map (kbd "gg") 'evil-goto-first-line)

(define-key evil-insert-state-map (kbd "C-x C-o") 'company-complete)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(define-key company-active-map (kbd "C-n") (lambda () (interactive) (company-complete-common-or-cycle 1)))
(define-key company-active-map (kbd "C-p") (lambda () (interactive) (company-complete-common-or-cycle -1)))
(define-key company-active-map (kbd "C-[") 'company-abort)
(define-key company-active-map (kbd "C-;") 'company-complete-selection)

;; Split window and go to new one
(define-key evil-window-map "v" '(lambda ()
                                   (interactive)
                                   (progn
                                     (split-window-horizontally)
                                     (evil-window-right 1)
                                     (evil-scroll-line-to-center nil))))

(define-key evil-window-map "s" '(lambda ()
                                   (interactive)
                                   (progn
                                     (split-window-vertically)
                                     (evil-window-down 1)
                                     (evil-scroll-line-to-center nil))))
;; reload files
(global-auto-revert-mode 1)

;; load custom file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; evil in buffer select mode
(evil-define-key 'normal bs-mode-map (kbd "RET") 'bs-select)
(evil-define-key 'normal bs-mode-map (kbd "q") 'bs-abort)

; (setq evil-lisp-state-major-modes '(emacs-lisp-mode clojure-mode))
; (require 'evil-lisp-state)

(require 'rubocop)

(require 're-builder)
(setq reb-re-syntax 'string)

;; ;; use q to "close" message
;; (evil-define-key 'normal messages-buffer-mode-map (kbd "q") 'evil-buffer)

;; show path in frame title
(setq-default frame-title-format "%f")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((sh . t)
   (ruby . t)
   (scala . t)
   (js . t)
   (perl . t)
   (sqlite . t)
   (clojure . t)
   (emacs-lisp . t)
   (python . t)))

(setq org-edit-src-content-indentation 0
      org-src-tab-acts-natively t
      org-src-fontify-natively t
      org-babel-python-command "~/opt/bin/py"
      org-confirm-babel-evaluate nil)

;; eshell
(setq eshell-prefer-lisp-functions t)

;; inf-ruby
(autoload 'inf-ruby-minor-mode "inf-ruby" "Run inf ruby" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

(setq initial-major-mode 'org-mode)

;; ruby hooks
(add-hook 'ruby-mode-hook
          #'(lambda ()
              (inf-ruby-minor-mode 1)
              (electric-pair-mode 1)
              (setq evil-shift-width 2)))

(add-to-list 'auto-mode-alist
             '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

;; (require 'go-mode-autoloads)

(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
             (groovy-electric-mode)))

;; groovy
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\\.groovy\\'" . groovy-mode))

;; evil matchit
(require 'evil-matchit)
(global-evil-matchit-mode 1)

;; No footer
(setq org-export-html-postamble nil)

;; evil-exchange
(evil-exchange-install)

;; magit
(setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)

(evil-leader/set-key "gs" 'magit-status)

;; compilation
(evil-leader/set-key "cn" 'next-error)
(evil-leader/set-key "cp" 'previous-error)

(eval-after-load 'yasnippet
  '(progn
     (define-key yas-keymap (kbd "C-<return>") 'yas-prev-field)
     (define-key yas-keymap (kbd "<return>") 'yas-next-field-or-maybe-expand)))

;; org-mode
(evil-leader/set-key-for-mode 'org-mode "e" 'org-cycle)
;; (evil-define-key 'normal org-mode-map (kbd "TAB") 'evil-scroll-down)

;; write unicode
(setq read-quoted-char-radix 16)

(require 'evil-magit)

;; disable helm
(helm-mode 0)
