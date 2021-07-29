(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;; Activate Evil mode
; https://www.emacswiki.org/emacs/Evil
(require 'evil)
(evil-mode t)


(setq-default word-wrap t)


;; Display current column
; https://www.gnu.org/software/emacs/manual/html_node/efaq/Displaying-the-current-line-or-column.html
(setq column-number-mode t)


;; Set default encoding as UTF-8
(set-terminal-coding-system 'utf-8)


; Don't show welcome screen every time
(setq inhibit-startup-screen t)


;; Scroll buffer without moving cursor
; https://www.emacswiki.org/emacs/Scrolling#h5o-2
(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 1))

(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 1))

; C-Down scroll down without moving cursor
(global-set-key [(control down)] 'gcm-scroll-down)

; C-Up scroll up without moving cursor
(global-set-key [(control up)]   'gcm-scroll-up)


;; Zooming
; https://stackoverflow.com/questions/5533110/emacs-zoom-in-zoom-out

; zoom in with mouse scroll up
(global-set-key [C-mouse-4] 'text-scale-increase)

; zoom out with mouse scroll down
(global-set-key [C-mouse-5] 'text-scale-decrease)


;; shortcuts only for proofgeneral mode
(eval-after-load "proof-script"
  '(setq proof-three-window-mode-policy 'hybrid))


;; tab-bar
; https://www.emacswiki.org/emacs/TabBarMode
; https://github.com/noctuid/evil-guide
; https://stackoverflow.com/a/7790759
(when (require 'tab-bar nil 'noerror)
  (setq tab-bar-show 1)  ; hide tab bar when there's only one tab
  (evil-ex-define-cmd "tabc[lose]" 'tab-bar-close-tab)
  (evil-ex-define-cmd "tabon[ly]" 'tab-bar-close-other-tabs))


;; Show emacs startup time
(add-hook 'emacs-startup-hook
  (lambda ()
    (message (format "Emacs started in %s" (emacs-init-time)))))
