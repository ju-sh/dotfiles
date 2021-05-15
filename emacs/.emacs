(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq-default word-wrap t)

; Display current column
;; https://www.gnu.org/software/emacs/manual/html_node/efaq/Displaying-the-current-line-or-column.html
(setq column-number-mode t)

; Set default encoding as UTF-8
(set-terminal-coding-system 'utf-8)

; Don't show welcome screen every time
(setq inhibit-startup-screen t)
