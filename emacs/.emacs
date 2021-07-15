(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; Activate Evil mode
;; https://www.emacswiki.org/emacs/Evil
(require 'evil)
(evil-mode 1)


(setq-default word-wrap t)


; Display current column
;; https://www.gnu.org/software/emacs/manual/html_node/efaq/Displaying-the-current-line-or-column.html
(setq column-number-mode t)


; Set default encoding as UTF-8
(set-terminal-coding-system 'utf-8)


; Don't show welcome screen every time
(setq inhibit-startup-screen t)


; Scroll buffer without moving cursor
;; https://www.emacswiki.org/emacs/Scrolling#h5o-2
(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 1))

(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 1))

(global-set-key [(control down)] 'gcm-scroll-down)
(global-set-key [(control up)]   'gcm-scroll-up)


; Zooming
; https://stackoverflow.com/questions/5533110/emacs-zoom-in-zoom-out
(global-set-key [C-mouse-4] 'text-scale-increase)  ; scroll up
(global-set-key [C-mouse-5] 'text-scale-decrease)  ; scroll down
