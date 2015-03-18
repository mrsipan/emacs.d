;; -*- lexical-binding: t -*-
(add-to-list 'load-path "~/.emacs.d/evil")
(add-to-list 'load-path "~/.emacs.d/clojure-mode")
(add-to-list 'load-path "~/.emacs.d/dictionary")
(add-to-list 'load-path "~/.emacs.d/text-translator")
(add-to-list 'load-path "~/.emacs.d/python.el")
(add-to-list 'load-path "~/.emacs.d/rainbow-mode")
(add-to-list 'load-path "~/.emacs.d/undo-tree")
(add-to-list 'load-path "~/.emacs.d/evil-surround")
(add-to-list 'load-path "~/.emacs.d/evil-leader")
(add-to-list 'load-path "~/.emacs.d/evil-numbers")
(add-to-list 'load-path "~/.emacs.d/ace-jump-mode")
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(add-to-list 'load-path "~/.emacs.d/python-pep8")
(add-to-list 'load-path "~/.emacs.d/pytest-emacs")
(add-to-list 'load-path "~/.emacs.d/pylookup")
(add-to-list 'load-path "~/.emacs.d/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/evil-org-mode")
(add-to-list 'load-path "~/.emacs.d/magit")
(add-to-list 'load-path "~/.emacs.d/cl-lib")
(add-to-list 'load-path "~/.emacs.d/apel")
;; (add-to-list 'load-path "~/.emacs.d/elscreen")
(add-to-list 'load-path "~/.emacs.d/jinja2")
(add-to-list 'load-path "~/.emacs.d/babel")
(add-to-list 'load-path "~/.emacs.d/js2-mode")
(add-to-list 'load-path "~/.emacs.d/monky")
(add-to-list 'load-path "~/.emacs.d/haskell-mode")
(add-to-list 'load-path "~/.emacs.d/android-mode")
(add-to-list 'load-path "~/.emacs.d/bookmark-plus")
(add-to-list 'load-path "~/.emacs.d/tramp/lisp")
(add-to-list 'load-path "~/.emacs.d/ido")
(add-to-list 'load-path "~/.emacs.d/ido-ubiquitous")
(add-to-list 'load-path "~/.emacs.d/dictem")
(add-to-list 'load-path "~/.emacs.d/shell")
(add-to-list 'load-path "~/.emacs.d/puppet-syntax-emacs")
(add-to-list 'load-path "~/.emacs.d/auto-pep8")
(add-to-list 'load-path "~/.emacs.d/cperl-mode")
(add-to-list 'load-path "~/.emacs.d/php-mode")
(add-to-list 'load-path "~/.emacs.d/sass-mode")
(add-to-list 'load-path "~/.emacs.d/yaml-mode")
(add-to-list 'load-path "~/.emacs.d/lua-mode")
(add-to-list 'load-path "~/.emacs.d/groovy-mode")
(add-to-list 'load-path "~/.emacs.d/ibuffer-vc")
(add-to-list 'load-path "~/.emacs.d/caml")
(add-to-list 'load-path "~/.emacs.d/markdown-mode")
(add-to-list 'load-path "~/.emacs.d/emacs-rust")
(add-to-list 'load-path "~/.emacs.d/smex")
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(add-to-list 'load-path "~/.emacs.d/expand-region")
(add-to-list 'load-path "~/.emacs.d/browse-kill-ring")
(add-to-list 'load-path "~/.emacs.d/Pymacs")
(add-to-list 'load-path "~/.emacs.d/w3m")
(add-to-list 'load-path "~/.emacs.d/exec-path-from-shell")
(add-to-list 'load-path "~/.emacs.d/flyspell-lazy")
(add-to-list 'load-path "~/.emacs.d/wgrep")
(add-to-list 'load-path "~/.emacs.d/lilypond")
(add-to-list 'load-path "~/.emacs.d/gist")
(add-to-list 'load-path "~/.emacs.d/rainbow-delimiters")
(add-to-list 'load-path "~/.emacs.d/scala-mode2")
(add-to-list 'load-path "~/.emacs.d/queue")
(add-to-list 'load-path "~/.emacs.d/cider")
(add-to-list 'load-path "~/.emacs.d/evil-nerd-commenter")
(add-to-list 'load-path "~/.emacs.d/find-file-in-project")
(add-to-list 'load-path "~/.emacs.d/google-translate")
(add-to-list 'load-path "~/.emacs.d/google-this")
(add-to-list 'load-path "~/.emacs.d/dash.el")
(add-to-list 'load-path "~/.emacs.d/deft")
(add-to-list 'load-path "~/.emacs.d/gist.el")
(add-to-list 'load-path "~/.emacs.d/git-modes")
(add-to-list 'load-path "~/.emacs.d/pkg-info.el")
(add-to-list 'load-path "~/.emacs.d/s.el")
(add-to-list 'load-path "~/.emacs.d/vala-mode")
(add-to-list 'load-path "~/.emacs.d/epl")

;; gist dependencies
(add-to-list 'load-path "~/.emacs.d/gh.el")
(add-to-list 'load-path "~/.emacs.d/pcache")
(add-to-list 'load-path "~/.emacs.d/logito")

;; ocaml mode
(add-to-list 'load-path "~/.emacs.d/tuareg")

(add-to-list 'load-path "~/.emacs.d/smartparens")
(add-to-list 'load-path "~/.emacs.d/evil-smartparens")

;; journal
(add-to-list 'load-path "~/.emacs.d/org-journal")

;; company-mode
(add-to-list 'load-path "~/.emacs.d/company-mode")

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; undo tree
(require 'undo-tree)
(global-undo-tree-mode)

(require 'evil-numbers)

; use evil, I love vim
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
(require 'evil-leader)
(require 'evil)
(setq evil-leader/in-all-states t)
(evil-leader/set-leader ",")
(evil-mode nil)
(global-evil-leader-mode 1)
(evil-mode 1)

(require 'evil-nerd-commenter)
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cy" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "cc" 'evilnc-comment-operator)
  ;;"\\" 'evilnc-comment-operator)

(require 'smartparens-config)
;(smartparens-global-mode t)

(unless (version< emacs-version "24.4")
  (require 'evil-smartparens)
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode))

(evil-leader/set-key "w" 'evil-write)

(define-key evil-normal-state-map (kbd "Y") (kbd "y$"))

(define-key evil-motion-state-map (kbd "SPC") 'evil-scroll-down)
(define-key evil-normal-state-map (kbd "DEL") 'evil-scroll-up)
(define-key evil-motion-state-map (kbd "C-6") 'evil-buffer)
;(define-key evil-normal-state-map (kbd ",l") 'pylookup-lookup)
;(define-key evil-normal-state-map (kbd ",g") 'show-file-name)
(evil-leader/set-key "g" 'show-full-path)
;; ;; tabs with elscreen
;; (define-key evil-motion-state-map (kbd "gt") 'elscreen-next)
;; (define-key evil-motion-state-map (kbd "gT") 'elscreen-previous)
;; (define-key evil-motion-state-map (kbd "C-`") 'elscreen-toggle)

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

;; Ace jump
(require 'ace-jump-mode)
(evil-leader/set-key "j" 'ace-jump-mode)

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
(setq default-truncate-lines t)

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
(global-set-key "\C-cm" 'dictionary-match-words)
(global-set-key "\M-]" 'dictionary-lookup-definition)
;(global-set-key [mouse-3] 'dictionary-mouse-popup-matching-words)

;; Disable splash screen
(setq initial-scratch-message nil)

;; Don't add new lines if cursor goes past the end of the file
(setq next-line-add-newlines nil)

;(set-frame-parameter (selected-frame) 'alpha 90)

(if (string-equal "gnu/linux" (symbol-name system-type))
    (setq font-name "Droid Sans Mono Slashed-12"))

(if (string-equal "darwin" (symbol-name system-type))
    (setq font-name "Droid Sans Mono Slashed-13"))

(if (string-equal "windows-nt" (symbol-name system-type))
    (setq font-name "Inconsolata-15"))

(add-to-list 'default-frame-alist
             `(font . ,font-name))

;; Clojure
(require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\\.clj[sx]?$" . clojure-mode))
(add-hook 'clojure-mode-hook
          #'(lambda ()
              (rainbow-delimiters-mode)
              (define-key clojure-mode-map "\C-m" 'newline-and-indent)
              ;(flyspell-prog-mode)
              (smartparens-strict-mode)
              (clojure-enable-cider)))

;; javascript
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; json is supported by js-mode
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

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
              (define-key python-mode-map "\C-m" 'newline-and-indent)
              ;; set evil-shift-with to the indent size in python
              (setq evil-shift-width 4)
              (setq python-check-command "flake8")
              (auto-pep8-mode 0)))

(evil-leader/set-key "pc" 'python-check)

;; always indent when editing js
(add-hook 'js2-mode-hook
          #'(lambda ()
              (define-key js2-mode-map "\C-m" 'newline-and-indent)))

;; ido stuff
(require 'ido)
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

(add-hook 'ido-setup-hook
          '(lambda ()
          (define-key ido-completion-map " " 'ido-next-match)))

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
              (rainbow-delimiters-mode)
              (rainbow-mode)
              (turn-on-eldoc-mode)
              (smartparens-strict-mode)))

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
      (quote (("TODO" :foreground "#ff5996" :weight bold)
              ("NEXT" :foreground "#53a0ec" :weight bold)
              ("DONE" :foreground "#cae682" :weight bold)
              ("WAITING" :foreground "#f4a3a3" :weight bold)
              ("HOLD" :foreground "#a7a7d1" :weight bold)
              ("CANCELLED" :foreground "#cae682" :weight bold)
              ("PHONE" :foreground "#ffffba" :weight bold))))

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
              (org-defkey org-mode-map "\C-c;" 'undefined))
          'append)

;; yasnippet
(require 'yasnippet)
(yas/global-mode 1)
(setq yas/prompt-functions '(yas/ido-prompt yas/dropdown-prompt))

;; pep8
(require 'python-pep8)
(require 'auto-pep8)

;; pylookup
(setq pylookup-program "~/.emacs.d/pylookup/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/pylookup/pylookup.db")
(autoload 'pylookup-lookup "pylookup" t)
(autoload 'pylookup-update "pylookup" t)

;; web browser
(require 'w3m-load)
(setq browse-url-browser-function 'w3m-browse-url)

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

;; use escape to quit minibuffer
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-ns-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-completion-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-must-match-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-isearch-map [escape] 'abort-recursive-edit)

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
(evil-leader/set-key "f" 'ido-find-file)

(define-key global-map (kbd "C-, b") 'ido-switch-buffer)
(evil-leader/set-key "b" 'ido-switch-buffer)
(evil-leader/set-key "R" (lambda () (interactive) (evil-edit nil t)))

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

;; use ZZ to check-in
(evil-define-key 'normal vc-log-mode-map (kbd "ZZ") 'log-edit-done)

;; puppet
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests" t)
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

;; make buffer names unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward
      uniquify-separator "•"
      uniquify-after-kill-buffer-p t
      uniquify-ignore-buffers-re "^\\*")

(setq rust-indent-unit 4)
(require 'rust-mode)

;; ibuffer
(evil-set-initial-state 'ibuffer 'motion)
(setq-default ibuffer-expert t)
(setq ibuffer-shrink-to-minimum-size t)
(setq ibuffer-always-show-last-buffer nil)
(setq ibuffer-sorting-mode 'recency)
(setq ibuffer-use-header-line t)

;; smex
(setq smex-save-file "~/.emacs.d/tmp/smex-items")
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

;; aliases
(defalias 'eshell/ff 'find-file)
(defalias 'eshell/ffow 'find-file-other-window)

; ;;  auto-complete
; (require 'auto-complete-config)
; (ac-config-default)
; (ac-flyspell-workaround)

; (global-auto-complete-mode t)
; (setq ac-auto-show-menu 0.8)

; (set-default 'ac-sources
;  '(ac-source-dictionary
;    ac-source-words-in-buffer
;    ac-source-words-in-same-mode-buffers
;    ac-source-words-in-all-buffer))

; (setq ac-use-menu-map t)
; (setq ac-comphist-file "~/.emacs.d/tmp/ac-comphist")
; ;(define-key ac-menu-map "\C-n" 'ac-next)
; ;(define-key ac-menu-map "\C-p" 'ac-previous)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")

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

;; magit
(evil-set-initial-state 'magit-status-mode 'motion)
(evil-set-initial-state 'magit-diff-mode 'motion)
(evil-set-initial-state 'git-commit-mode 'insert)

(add-hook 'magit-status-mode-hook
          (lambda ()
            (evil-define-key 'motion magit-status-mode-map (kbd "b") 'magit-key-mode-popup-branching)
            (evil-define-key 'motion magit-status-mode-map (kbd "F") 'magit-key-mode-popup-pulling)))

(add-hook 'magit-branch-manager-mode-hook
          (lambda ()
            (evil-define-key 'motion magit-branch-manager-mode-map (kbd "RET") 'magit-visit-item)))

(require 'magit)

;; ido everywhere
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

;; ;; taken from http://whattheemacsd.com/setup-ido.el-01.html
;; ;; Fix ido-ubiquitous for newer packages
;; (defmacro ido-ubiquitous-use-new-completing-read (cmd package)
;;   `(eval-after-load ,package
;;      '(defadvice ,cmd (around ido-ubiquitous-new activate)
;;         (let ((ido-ubiquitous-enable-compatibility nil))
;;           ad-do-it))))
;; (ido-ubiquitous-use-new-completing-read webjump 'webjump)
;; (ido-ubiquitous-use-new-completing-read yas/expand 'yasnippet)
;; (ido-ubiquitous-use-new-completing-read yas/visit-snippet-file 'yasnippet)

;; rebinding
;(global-set-key "\M-?" 'help)
;(global-set-key "\C-h" 'delete-backward-char)

;; scroll bar to the right
(if (display-graphic-p)
  (progn
    (set-scroll-bar-mode 'right)))

;; split windows horizontally
;(setq split-width-threshold nil)

;; use ZZ to commit in git
(evil-define-key 'normal git-commit-mode-map (kbd "ZZ") 'git-commit-commit)

;;winner mode
;(define-key global-map (kbd "C-, C-u") 'winner-undo)
;(define-key global-map (kbd "C-, C-j") 'winner-redo)

(define-key evil-motion-state-map (kbd "C-w u") 'winner-undo)
(define-key evil-motion-state-map (kbd "C-w U") 'winner-redo)

(require 'rainbow-delimiters)

(require 'scala-mode2)
(add-hook 'scala-mode-hook
          #'(lambda ()
              (define-key scala-mode-map "\C-m" 'newline-and-indent)
              ;(flyspell-prog-mode)
              ))

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
(require 'deft)
(setq deft-extension "org")
(setq deft-directory "~/Dropbox/deft")
(setq deft-text-mode 'org-mode)
;(setq deft-use-filename-as-title t)
(global-set-key [f7] 'deft)

;; ;; use hunspell
;; (unless (boundp 'aquamacs-version)
;;     (setq ispell-program-name "hunspell"))

;; ;; full screen magit-status
;; (defadvice magit-status (around magit-fullscreen activate)
;;   (window-configuration-to-register :magit-fullscreen)
;;   ad-do-it
;;   (delete-other-windows))

;; (defun magit-quit-session ()
;;   "Restores the previous window configuration and kills the magit buffer"
;;   (interactive)
;;   (kill-buffer)
;;   (jump-to-register :magit-fullscreen))

;; (define-key magit-status-mode-map (kbd "q") 'magit-quit-session)
(setq magit-status-buffer-switch-function 'switch-to-buffer)

; enable github gist
(require 'gist)

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

(autoload 'tuareg-mode "tuareg" "Mode for editing ocaml" t)
(autoload 'camldebug "camldebug" "Caml debugger" t)
(autoload 'tuareg-imenu-set-imenu "tuareg" "config for imenu" t)
(add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)

(setq auto-mode-alist
      (append '(("\\.ml[ily]?$" . tuareg-mode)
                ("\\.topml$" . tuareg-mode))
              auto-mode-alist))

(add-to-list 'custom-theme-load-path "~/.emacs.d/sipan-theme")
(load-theme 'sipan t)

(if (boundp 'aquamacs-version)
    (setq aquamacs-scratch-file "~/tmp/aquamacs_scratch"))

(setq epa-file-cache-passphrase-for-symmetric-encryption t)
;(setq epa-file-encrypt-to "")
(setq epa-file-select-keys t)
(setq epa-file-name-regexp "\\.\\(gpg\\|asc\\)$" epa-armor t)
(setq epa-file-inhibit-auto-save t)
(require 'epa-file)
(epa-file-enable)
(epa-file-name-regexp-update)

(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance '("crypt"))
;(setq org-crypt-key "")
(setq org-crypt-key nil)

(setq org-journal-dir "~/Dropbox/journal/")
(require 'org-journal)

; dired
(evil-define-key 'normal dired-mode-map (kbd "n") 'evil-search-next)
(evil-define-key 'normal dired-mode-map (kbd "N") 'evil-search-previous)
(evil-define-key 'normal dired-mode-map (kbd "Q") 'kill-this-buffer)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
