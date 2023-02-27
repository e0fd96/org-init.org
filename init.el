(require 'package)
(add-to-list 'package-archives '("melpa"  . "https://melpa.org/packages/")     t)
(add-to-list 'package-archives '("gnu"    . "https://elpa.gnu.org/packages/")  t)
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/") t)
(package-initialize)
(package-refresh-contents)

(use-package org
  :ensure org-contrib
  :demand t)

(org-babel-load-file "~/emacs/config/.emacs.d/org-init.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
 '(package-selected-packages
   '(helm-descbinds writegood-mode wrap-region wc-mode rainbow-delimiters emacsql-sqlite3 use-package rainbow-mode palimpsest org-wc org-static-blog org-roam-ui org-roam-bibtex org-ref org-pomodoro org-journal org-contrib olivetti multiple-cursors move-text magit lua-mode latex-preview-pane format-all expand-region engine-mode elfeed-org deft backup-each-save))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Sans Mono" :foundry "GOOG" :slant normal :weight normal :height 143 :width normal))))
 '(fringe ((t nil)))
 '(highlight ((t (:background "gray90"))))
 '(region ((t (:extend t :background "gray90" :distant-foreground "gtk_selection_fg_color")))))
