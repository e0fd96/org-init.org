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

;; --- old init bellow

;; (use-package abbrev
;;   :config
;;   (setq abbrev-file-name "~/emacs/abbrev_defs/abbrev_defs"
;; 	save-abbrevs 'silently))

;; (use-package rainbow-mode
;;   :ensure t)

;; (use-package rainbow-delimiters
;;   :ensure t)

;; (use-package backup-each-save
;;   :ensure t
;;   :init
;;   (setq backup-each-save-mirror-location "~/emacs/backups/backup-each-save"
;; 	backup-each-save-remote-files nil)
;;   :hook (after-save-hook . backup-each-save))

;; (setq auto-save-interval 20)
;; (add-to-list 'backup-directory-alist
;; 	     (cons "." "~/emacs/backups/vanilla"))
;; (add-to-list 'backup-directory-alist
;; 	     (cons tramp-file-name-regexp nil))

;; (global-set-key (kbd "C-! C-t") 'dired-toggle-read-only)
;; (global-set-key (kbd "C-! C-k") 'save-buffers-kill-emacs)
;; (global-set-key (kbd "C-! C-i") 'org-id-get-create)
;; (global-set-key (kbd "C-! C-l") 'org-toggle-link-display)

;; (global-set-key (kbd "C-c s") 'flyspell-buffer)
;; (global-set-key (kbd "C-c w") 'count-words-region)
;; (global-set-key (kbd "C-c v") 'visual-line-mode)
;; (global-set-key (kbd "C-c y") 'helm-show-kill-ring)
;; (global-set-key (kbd "C-c c") 'comment-region)
;; (global-set-key (kbd "C-c u") 'uncomment-region)
;; (global-set-key (kbd "C-c k") 'clone-indirect-buffer)
;; (global-set-key (kbd "C-c h") 'helm-descbinds)
;; (global-set-key (kbd "C-c 1") 'elfeed)
;; (global-set-key (kbd "C-c l") 'flyspell-popup-correct)
;; (global-set-key (kbd "C-c r") 'ispell-word)
;; (global-set-key (kbd "C-c f") 'whitespace-mode)
;; (global-set-key (kbd "C-c m") 'overwrite-mode)
;; (global-set-key (kbd "<f5>" ) 'async-shell-command)
;; (global-set-key (kbd "C-c z" ) 'olivetti-mode)

;; (global-set-key (kbd "C-M-j") 'mc/mark-all-dwim)
;; (global-set-key (kbd "C-M-c") 'mc/edit-lines)
;; (global-set-key (kbd "C-M-l") 'er/expand-region)
;; (global-set-key (kbd "C-M-/") 'mc/mark-all-like-this)
;; (global-set-key (kbd "C-M-,") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "C-M-.") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-M->") 'mc/skip-to-previous-like-this)
;; (global-set-key (kbd "C-M-<") 'mc/skip-to-next-like-this)
;; (global-set-key (kbd "C-M-s") 'just-one-space)
;; (global-set-key (kbd "C-M-y") 'mc/insert-numbers) ;; (C-u-1-0) -- also (rectangle-number-lines)
;; (global-set-key (kbd "C-'") 'mc/hide-unmatched-lines-mode)
;; (global-set-key (kbd "C-M-n") 'electric-newline-and-maybe-indent)

;; (global-set-key (kbd "C-c b") 'org-capture-at-point)
;; (global-set-key (kbd "C-c a") 'org-agenda)
;; (global-set-key (kbd "C-c p") 'org-pomodoro)
;; (global-set-key (kbd "<f6>" ) 'org-capture)
;; (global-set-key (kbd "C-c o") 'org-wc-display)
;; (global-set-key (kbd "C-c 0") 'org-insert-structure-template)
;; (global-set-key (kbd "C-c g") 'org-schedule)
;; (global-set-key (kbd "C-c d") 'org-deadline)
;; (global-set-key (kbd "C-c q") 'org-insert-heading-after-current)
;; (global-set-key (kbd "C-c t") 'org-narrow-to-subtree)
;; (global-set-key (kbd "C-c T") 'widen)
;; (global-set-key (kbd "C-c i") 'org-store-link)

;; (global-set-key (kbd "C-c n l") 'org-roam-buffer-toggle)
;; (global-set-key (kbd "C-c n f") 'org-roam-node-find)
;; (global-set-key (kbd "C-c n g") 'org-roam-graph)
;; (global-set-key (kbd "C-c n i") 'org-roam-node-insert)
;; (global-set-key (kbd "C-c n c") 'org-roam-capture)
;; (global-set-key (kbd "C-c n d") 'org-roam-dailies-capture-today)
;; (global-set-key (kbd "C-c n j") 'org-journal-new-entry)
;; (global-set-key (kbd "C-c n r") 'org-journal-search-forever)
;; (global-set-key (kbd "C-c n p") 'completion-at-point)
;; (global-set-key (kbd "C-c n s") 'deft)

;; (use-package vertico
;;   :ensure t
;;   :init
;;   (vertico-mode))

;; (use-package savehist
;;   :init
;;   (savehist-mode))

;; (use-package marginalia
;;   :ensure t
;;   :config
;;   (marginalia-mode))

;; (use-package orderless
;;   :ensure t
;;   :config
;;   (setq completion-styles '(orderless basic)
;;         completion-category-defaults nil
;;         completion-category-overrides '((file (styles partial-completion)))))

;; (add-to-list 'load-path "~/emacs/config/.emacs.d/my-elisp/")
;; (require 'control-lock)
;; (control-lock-keys)

;; (use-package deft
;;   :ensure t
;;   :config
;;   (setq deft-recursive t
;; 	deft-use-filter-string-for-filename t
;; 	deft-default-extension "org"
;; 	deft-directory "~/emacs/org/"))

;; (setq dired-listing-switches "-alh")
;; (put 'dired-find-alternate-file 'disabled nil)

;; (use-package elfeed
;;   :ensure t
;;   :config
;;   (setq elfeed-search-filter "@2-days-ago +unread"
;; 	elfeed-search-title-max-width 100
;; 	elfeed-search-title-min-width 100
;; 	url-queue-timeout 30
;; 	shr-inhibit-images t ;; images are slow
;; 	elfeed-use-curl t
;; 	elfeed-sort-order 'descending
;; 	flycheck-global-modes '(not . (elfeed-search-mode))))

;; (defun elfeed-olivetti (buff)
;;   (switch-to-buffer buff)
;;   (olivetti-mode)
;;   (elfeed-show-refresh))
;; (setq elfeed-show-entry-switch 'elfeed-olivetti)

;; (use-package elfeed-org
;;   :ensure t
;;   :after org
;;   :config
;;   (require 'elfeed-org)
;;   (elfeed-org)
;;   (setq rmh-elfeed-org-files (list "~/emacs/org/org-roam-misc/rss/rss-feed.org")))

;; (add-hook 'elfeed-show-mode-hook 'visual-line-mode)

;; (setq inhibit-startup-screen t
;;       frame-background-mode 'light
;;       sentence-end-double-space nil
;;       system-time-locale "C"
;;       tramp-verbose 1
;;       auth-sources '("~/.authinfo.gpg" "~/.authinfo" "~/.netrc")
;;       ring-bell-function 'ignore
;;       server-client-instructions nil
;;       scroll-bar-mode nil
;;       initial-buffer-choice "~/emacs/org/org-roam-misc/misc/2022-10-10-misc-scratch.org"
;;       user-full-name "Ilmari Koria"
;;       user-mail-address "ilmarikoria@posteo.net"
;;       undo-limit 800000
;;       undo-strong-limit 12000000
;;       undo-outer-limit 120000000
;;       kill-ring-max 9999
;;       delete-by-moving-to-trash t)

;; (put 'downcase-region 'disabled nil)
;; (put 'upcase-region 'disabled nil)
;; (put 'narrow-to-region 'disabled nil)
;; (put 'dired-find-alternate-file 'disabled nil)

;; (defalias 'yes-or-no-p 'y-or-n-p)

;; (setq locale-coding-system 'utf-8) ; pretty
;; (set-terminal-coding-system 'utf-8) ; pretty
;; (set-keyboard-coding-system 'utf-8) ; pretty
;; (set-selection-coding-system 'utf-8) ; please
;; (prefer-coding-system 'utf-8) ; with sugar on top

;; (blink-cursor-mode -1)

;; (setq-default indent-tabs-mode nil)
;; (setq-default indicate-empty-lines t)

;; (column-number-mode t)

;; (setq uniquify-buffer-name-style 'forward)

;; (use-package engine-mode
;;   :ensure t
;;   :config
;;   (engine-mode t)
;;   (defengine duckduckgo "https://duckduckgo.com/?q=%s"
;; 	     :keybinding "d")
;;   (defengine google "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
;; 	     :keybinding "g")
;;   (defengine wikipedia "http://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s"
;; 	     :keybinding "w")
;;   (defengine thesaurus "https://www.thesaurus.com/browse/%s"
;; 	     :keybinding "t")
;;   (defengine dita-1.3.-elements "https://www.oxygenxml.com/dita/1.3/specs/search.html?searchQuery=%s"
;; 	     :keybinding "d"))

;; (use-package expand-region
;;   :ensure t)

;; (use-package flyspell
;;   :ensure t)

;; (use-package format-all
;;   :ensure t)

;; (add-hook 'html-mode-hook 'display-line-numbers-mode)
;; (add-hook 'html-mode-hook 'electric-indent-mode)
;; (add-hook 'html-mode-hook 'wrap-region-mode)
;; (add-hook 'html-mode-hook 'format-all-mode)
;; (add-hook 'html-mode-hook 'abbrev-mode)
;; (add-hook 'format-all-mode-hook 'format-all-ensure-formatter)
;; (add-hook 'html-mode-hook 'rainbow-mode)
;; (add-hook 'html-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'html-mode-hook 'multiple-cursors-mode)

;; (use-package ispell
;;   :ensure t
;;   :config
;;   (setq ispell-personal-dictionary "~/emacs/ispell/ispell-personal-dictionary"
;; 	ispell-silently-savep t
;; 	ispell-dictionary "en_GB"))

;; (setq TeX-auto-save t
;;       TeX-parse-self t
;;       TeX-PDF-mode t
;;       reftex-plug-into-AUCTeX t
;;       TeX-view-program-selection '((output-pdf "PDF Tools"))
;;       TeX-source-correlate-start-server t)

;; ;; revert pdf-view after compilation
;; (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)

;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook 'format-all-mode)
;; (add-hook 'LaTeX-mode-hook 'rainbow-mode)
;; (add-hook 'LaTeX-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'LaTeX-mode-hook 'display-line-numbers-mode)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; (add-hook 'LaTeX-mode-hook 'hl-line-mode)
;; (add-hook 'LaTeX-mode-hook 'multiple-cursors-mode)
;; (add-hook 'LaTeX-mode-hook (lambda () (olivetti-mode -1)))

;; (use-package latex-preview-pane
;;   :ensure t
;;   :config
;;   (latex-preview-pane-enable))

;; (require 'ob-lilypond)

;; (use-package lua-mode
;;   :ensure t)

;; (use-package magit
;;   :ensure t)

;; (use-package multiple-cursors
;;   :ensure t)

;; (electric-pair-mode 1)
;; (menu-bar-mode -1)
;; (show-paren-mode 1)
;; (delete-selection-mode t)
;; (tool-bar-mode -1)
;; (set-default 'truncate-lines t)
;; (global-auto-revert-mode)
;; (global-hl-line-mode 1)
;; (scroll-bar-mode -1)

;; (use-package move-text
;;   :ensure t
;;   :config
;;   (move-text-default-bindings))

;; (use-package olivetti
;;   :ensure t)

;; (use-package org-roam
;;   :ensure t
;;   :config
;;   (setq org-roam-v2-ack t
;;         org-roam-directory (file-truename "~/emacs/org/org-roam-research")
;;         org-roam-completion-everywhere t
;;         org-roam-database-connector 'sqlite3)
;;   (org-roam-db-autosync-mode)
;;   (add-to-list 'display-buffer-alist
;;                '("\\*org-roam\\*"
;;                  (display-buffer-in-direction)
;;                  (direction . right)
;;                  (window-width . 0.5)
;;                  (window-height . fit-window-to-buffer))))

;; (cl-defmethod org-roam-node-type ((node org-roam-node))
;;   "Return the TYPE of NODE."
;;   (condition-case nil
;;       (file-name-nondirectory (directory-file-name
;; 			       (file-name-directory
;;                                 (file-relative-name (org-roam-node-file node) org-roam-directory))))
;;     (error "")))

;; (setq org-roam-node-display-template (concat "${type:15} | "
;; 					     (propertize "${tags:30}" 'face 'org-tag)" | ${title:*}"))

;; (setq org-roam-db-node-include-function
;;       (lambda ()
;;         (not (member "ATTACH" (org-get-tags)))
;;         ))


;; (setq my-org-roam-context-alist
;;       '(("research" . "~/emacs/org/org-roam-research")
;; 	("misc" . "~/emacs/org/org-roam-misc")))

;; (defun my-org-roam-switch-context (c)
;;   (interactive
;;    (list (completing-read "Choose: " my-org-roam-context-alist nil t)))
;;   (let* ((new-folder (cdr (assoc c my-org-roam-context-alist))))
;;     (message "Setting org-roam folder to '%s'" new-folder)
;;     (setq org-roam-directory new-folder)
;;     (org-roam-db-sync))
;;   c)

;; (setq org-agenda-start-on-weekday nil
;;       org-habit-following-days 1
;;       org-agenda-window-setup 'only-window
;;       org-tags-match-list-sublevels t
;;       org-agenda-files '("/home/ilmari/emacs/org/org-todo/task-index.org")
;;       org-habit-completed-glyph 88
;;       org-habit-today-glyph 20170
;;       org-agenda-files
;;       '("~/emacs/org/org-todo/task-index.org"))

;; (setq org-agenda-custom-commands
;;       '(("T" "TODAY'S TASKS"
;; 	 ((todo "WAITING"
;; 		((org-agenda-overriding-header "PENDING TASKS")
;; 		 (org-tags-match-list-sublevels t)))
;; 	  (agenda ""
;; 		  ((org-agenda-block-separator nil)
;; 		   (org-agenda-span 1)
;; 		   (org-deadline-warning-days 0)
;; 		   (org-agenda-day-face-function (lambda (date) 'org-agenda-date))
;; 		   (org-agenda-overriding-header "\nTODAY'S TASKS")))
;; 	  (agenda ""
;; 		  ((org-agenda-start-on-weekday nil)
;; 		   (org-agenda-start-day "+1d")
;; 		   (org-agenda-span 3)
;; 		   (org-deadline-warning-days 0)
;; 		   (org-agenda-block-separator nil)
;; 		   (org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
;; 		   (org-agenda-overriding-header "\nNEXT THREE DAYS")))
;; 	  (agenda ""
;; 		  ((org-agenda-time-grid nil)
;; 		   (org-agenda-start-on-weekday nil)
;; 		   (org-agenda-start-day "+4d")
;; 		   (org-agenda-span 14)
;; 		   (org-agenda-show-all-dates nil)
;; 		   (org-deadline-warning-days 0)
;; 		   (org-agenda-block-separator nil)
;; 		   (org-agenda-entry-types '(:deadline))
;; 		   (org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
;; 		   (org-agenda-overriding-header "\nUPCOMING DEADLINES (+14d)")))
;; 	  (todo "*"
;; 		((org-agenda-overriding-header "UNSCHEDULED TASKS")
;; 		 (org-tags-match-list-sublevels t)
;; 		 (org-agenda-skip-function '(org-agenda-skip-if nil '(timestamp)))))))))

;; (setq org-capture-templates '(("n" "note-at-point" plain (file "") " - (%^{location}) Here it says that %?.")
;; 			      ("w" "weekly-review-at-point" plain (file "~/emacs/org/notes.org") (file "~/emacs/org/org-templates/weekly-review.txt"))
;; 			      ("d" "diary-at-point" plain (file "~/emacs/org/notes.org") (file "~/emacs/org/org-templates/daily-diary.txt"))
;; 			      ("b" "beamer-at-point" plain (file "") (file "~/emacs/org/org-templates/beamer"))
;; 			      ("t" "scheduled-todo" entry (file+headline "~/emacs/org/org-todo/task-index.org" "TASK-INDEX") (file "~/emacs/org/org-templates/scheduled-todo-basic"))
;; 			      ("T" "scheduled-todo-full" entry (file+headline "~/emacs/org/org-todo/task-index.org" "TASK-INDEX") (file "~/emacs/org/org-templates/scheduled-todo-with-deadline"))
;; 			      ("r" "rss todo" entry (file+olp "~/emacs/org/org-todo/task-index.org" "TASK-INDEX") "* TODO %^{Description} %^g:RSS:\nSCHEDULED: %^t\n\n %a\n\n %i")
;; 			      ("j" "work log entry" plain (function org-journal-find-location) (file "~/emacs/org/org-templates/work-log-prompts") :jump-to-captured t :immediate-finish t)))

;; (defun org-capture-at-point () (interactive)
;;        (org-capture 0))

;; (setq org-export-with-smart-quotes t
;;       org-latex-tables-centered nil
;;       org-export-preserve-breaks t
;;       org-export-with-toc nil
;;       org-export-with-section-numbers nil
;;       org-html-footnotes-section "<div id=\"footnotes\">
;;                                   <h2 class=\"footnotes\">%s </h2>
;;                                   <div id=\"text-footnotes\">%s</div>
;;                                   </div>"
;;       org-html-head-include-default-style nil
;;       org-html-postamble t
;;       org-html-postamble-format
;;       '(("en" "<p class=\"postamble\" style=\"padding-top:5px;font-size:small;\">Author: %a (%e) | Last modified: %C.</p>"))
;;       org-latex-toc-command "\\tableofcontents \\addtocontents{toc}{\\protect\\thispagestyle{empty}} \\newpage"

;; 					; ---- cant use with "export-file-name" for some reason
;;       ;; org-latex-pdf-process '("latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f")
;;       org-latex-pdf-process '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;       			      "bibtex %b"
;;       			      "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;       			      "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")
;;       )

;; (use-package org-contrib
;;   :ensure t
;;   :after org
;;   :config
;;   (require 'ox-extra)
;;   (require 'ox-latex)
;;   (require 'ox-bibtex)
;;   (ox-extras-activate
;;    '(ignore-headlines)))

;; (setq org-directory "~/emacs/org"
;;       org-startup-folded t
;;       org-log-into-drawer t
;;       org-src-fontify-natively nil
;;       org-clock-into-drawer "CLOCK"
;;       org-startup-truncated t
;;       org-startup-indented t
;;       org-tags-column 0
;;       org-archive-location "~/emacs/org/org-archive/org-archive-global.org::* From %s"
;;       org-archive-mark-done t
;;       org-archive-subtree-save-file-p t
;;       org-habit-following-days 1)

;; (use-package org-journal
;;   :ensure t
;;   :after org
;;   :config
;;   (setq org-journal-dir "~/emacs/org/org-journal/"
;; 	org-journal-date-format "%Y-%m-%d"
;; 	org-journal-file-format "%Y-%m-journal.org"
;; 	org-journal-enable-agenda-integration t
;; 	org-journal-file-type 'monthly
;; 	org-journal-file-header "#+title: %b %Y Journal\n#+filetags: log todo diary"))

;; (defun org-journal-find-location ()
;;   (org-journal-new-entry t)
;;   (unless (eq org-journal-file-type 'daily)
;;     (org-narrow-to-subtree))
;;   (goto-char (point-max)))

;; (use-package org-pomodoro
;;   :ensure t
;;   :after org
;;   :config
;;   (setq org-pomodoro-audio-player "/usr/bin/mpv"
;; 	org-pomodoro-play-sounds t
;; 	org-pomodoro-long-break-frequency 5
;; 	org-pomodoro-long-break-length 10))

;; (use-package org-roam-bibtex
;;   :ensure t
;;   :after org-roam
;;   :config
;;   (setq orb-insert-follow-link t)
;;   (add-hook 'after-init-hook 'org-roam-bibtex-mode))

;; (setq org-roam-capture-templates
;;       '(("p" "permanent" plain "%?" :target (file+head "permanent-notes/%<%Y-%m-%d>-permanent-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}\n\n - [ ] One subject, signified by the title.\n - [ ] Wording that is independent of any other topic.\n - [ ] Between 100-200 words.\n\n--\n + ") :unnarrowed t)
;; 	("b" "blog-draft" plain "%?" :target (file+head "blog-drafts/%<%Y-%m-%d>-blog-draft-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}\n#+DESCRIPTION: %^{short description}\n#+date: <%<%Y-%m-%d %H:%M>>\n* Introduction\n* par2\n* par3\n* par4\n* par5\n* par6\n* par7\n* Conclusion\n* Timestamp :ignore:\n =This blog post was last updated on {{{time(%b %e\\, %Y)}}}.=\n* References :ignore:\n#+BIBLIOGRAPHY: bibliography.bib plain option:-a option:-noabstract option:-heveaurl limit:t\n* Footnotes :ignore:\n* Text-dump :noexport:") :unnarrowed t)
;; 	("r" "reference" plain "%?" :target (file+head "reference-notes/%<%Y-%m-%d>-reference-${citekey}.org" "#+title: ${citekey} - ${title}\n#+filetags: %^{TAGS}\n\n--\n + ") :unnarrowed t)
;;  	("y" "reference-primary" plain "%?" :target (file+head "reference-notes/%<%Y-%m-%d>-reference-primary-${slug}.org" "#+title: %^{Taisho Number, e.g. T0001} -- %^{Collection Name} -- %^{Name of Text}\n#+filetags: %^{TAGS}\n\n--\n + ") :unnarrowed t)
;; 	("a" "application" plain (file "~/emacs/org/org-setup/application-master")
;; 	 :if-new (file+head "applications/%<%Y-%m-%d>-application-${slug}.org" "#+title: Résumé -- Updated {{{time(%b %e %Y)}}} for the role of ${title}\n#+filetags: %^{TAGS}\n#+author: Otto Ilmari Koria\n#+setupfile: ~/emacs/org/org-setup/cv-master\n#+export_file_name: /home/ilmari/Downloads/otto-ilmari-koria-application-%<%Y-%m-%d>-${slug}\n#+export_title: Otto Ilmari Koria - Application: ${title} - %<%b %Y>\n")
;; 	 :unnarrowed t)
;; 	("m" "misc" plain "%?" :target (file+head "misc/%<%Y-%m-%d>-misc-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}\n") :unnarrowed t)
;;         ("w" "work" plain "%?" :target (file+head "work/%<%Y-%m-%d>-work-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}\n") :unnarrowed t)
;; 	("i" "index" plain "%?" :target (file+head "index/%<%Y-%m-%d>-index-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}") :unnarrowed t)))

;; (setq org-roam-dailies-directory "~/emacs/org/org-roam-research/fleeting-notes"
;;       org-roam-dailies-capture-templates '(("f" "fleeting-notes" entry "\n* %<%Y-%m-%d %H:%M> - %?" :target (file "fleeting-notes.org"))))

;; (setq org-src-fontify-natively t
;;       org-src-window-setup 'current-window
;;       org-src-strip-leading-and-trailing-blank-lines t
;;       org-src-preserve-indentation t
;;       org-src-tab-acts-natively t)

;; (use-package org-roam-ui
;;   :ensure t
;;   :after org-roam
;;   :config
;;   (setq org-roam-ui-sync-theme t
;; 	org-roam-ui-follow t
;; 	org-roam-ui-update-on-save t
;; 	org-roam-ui-open-on-start t))

;; (defun my-org-align-tags () (interactive)
;;        (org-align-tags 0))
;; (add-hook 'org-mode-hook
;; 	  (lambda ()
;; 	    (add-hook 'after-save-hook 'my-org-align-tags nil 'make-it-local)))

;; (use-package org-wc
;;   :ensure t
;;   :after org
;;   :config
;;   (setq org-wc-ignored-tags '("ARCHIVE")))

;; (use-package org-static-blog
;;   :ensure t
;;   :after org
;;   :config
;;   (setq org-static-blog-publish-title "e0fd96"
;; 	org-static-blog-publish-url "https://e0fd96.xyz"
;; 	org-static-blog-publish-directory "~/emacs/org/org-blog/html"
;; 	org-static-blog-posts-directory "~/emacs/org/org-roam-research/blog"
;; 	org-static-blog-drafts-directory "~/emacs/org/org-blog/blog-drafts"
;; 	org-static-blog-preview-date-first-p t
;; 	org-static-blog-enable-tags nil
;; 	org-static-blog-preview-ellipsis ""
;; 	org-static-blog-use-preview t
;; 	org-static-blog-preview-start ""
;; 	org-static-blog-preview-end "")

;;   (setq org-static-blog-index-front-matter "<div id=\"recent-posts\">
;;                                             <h2>Recent posts</h2>
;;                                             </div>")

;;   (setq org-static-blog-page-header "<meta name=\"author\" content=\"e0fd96\">
;;                                    <meta name=\"referrer\" content=\"no-referrer\">
;;                                    <meta name=\"viewport\" content=\"initial-scale=1.0,maximum-scale=1.0,user-scalable=no\" />
;;                                    <link href=\"static/style.css\" rel=\"stylesheet\" type=\"text/css\" />
;;                                    <link rel=\"icon\" href=\"data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>🏞</text></svg>\">")

;;   (setq org-static-blog-page-preamble "<div id=\"top-nav\">
;;                                      	<div id=\"website-title\"><a href=\"https://e0fd96.xyz\">e0fd96</a></div>
;;                                      	<div id=\"top-links\">
;;                                      		<a href=\"https://e0fd96.xyz/archive.html\">Posts</a> |
;;                                         	<a href=\"https://e0fd96.xyz/contact.html\">Contact</a> |
;;                                         	<a href=\"https://e0fd96.xyz/podcast.html\">Podcast Editing</a>
;;                                      	</div>
;;                                        </div>")

;;   (setq org-static-blog-page-postamble "<div id=\"bottom-nav\">
;;                                       <a href=\"https://e0fd96.xyz/rss.xml\">RSS</a> <a href=\"https://creativecommons.org/licenses/by-nc/4.0/\">License</a></a>
;;                                       </div>"))

;; (add-hook 'org-mode-hook 'olivetti-mode)
;; (add-hook 'org-mode-hook 'visual-line-mode)
;; (add-hook 'org-mode-hook 'writegood-mode)
;; (add-hook 'org-mode-hook 'wc-mode)
;; (add-hook 'org-mode-hook 'palimpsest-mode)
;; (add-hook 'org-mode-hook 'wrap-region-mode)
;; (add-hook 'org-mode-hook 'flyspell-mode)
;; (add-hook 'org-mode-hook 'abbrev-mode)

;; (use-package palimpsest
;;   :ensure t)

;; (add-hook 'prog-mode-hook 'display-line-numbers-mode)
;; (add-hook 'prog-mode-hook 'electric-indent-mode)
;; (add-hook 'prog-mode-hook 'wrap-region-mode)
;; (add-hook 'prog-mode-hook 'format-all-mode)
;; (add-hook 'prog-mode-hook 'abbrev-mode)
;; (add-hook 'format-all-mode-hook 'format-all-ensure-formatter)
;; (add-hook 'prog-mode-hook 'rainbow-mode)
;; (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'prog-mode-hook 'multiple-cursors-mode)

;; (setq python-indent-guess-indent-offset nil
;;       python-indent-guess-indent-offset-verbose nil)

;; (setq scroll-conservatively 100
;;       scroll-margin 20)

;; (defun my-sentence-counter ()
;;   "count sentence words"
;;   (interactive)
;;   (forward-char)
;;   (backward-sentence)
;;   (set-mark-command nil)
;;   (forward-sentence)
;;   (message "There are *%s* words in this sentence."
;; 	   (count-words-region
;; 	    (region-beginning)
;; 	    (region-end))))


;; (use-package wc-mode
;;   :ensure t)

;; (use-package wrap-region
;;   :ensure t
;;   :config
;;   (wrap-region-add-wrappers
;;    '(("/" "/")
;;      ("*" "*")
;;      ("=" "=")
;;      ("+" "+")
;;      ("_" "_"))))

;; (use-package writegood-mode
;;   :ensure t
;;   :config
;;   (setq writegood-weasel-words
;; 	'("many" "various" "very" "fairly"
;; 	  "several" "extremely" "exceedingly" "quite"
;; 	  "remarkably" "few" "surprisingly" "mostly"
;; 	  "largely" "huge" "tiny" "are a number"
;; 	  "is a number" "excellent" "interestingly" "significantly"
;; 	  "substantially" "clearly" "vast" "relatively"
;; 	  "completely" "literally" "not rocket science" "pretty"
;; 	  "outside the box" "In this regard" "With this in mind"
;; 	  "With the above in mind" "In this sense" "variety")))

;; (setq next-line-add-newlines t
;;       word-wrap-by-category t
;;       electric-pair-preserve-balance nil)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    '(org-ref org sqlite3 writegood-mode wrap-region wc-mode emacsql-sqlite3 vertico use-package rainbow-mode rainbow-delimiters palimpsest org-wc org-static-blog org-roam-ui org-roam-bibtex org-pomodoro org-journal org-contrib orderless olivetti multiple-cursors move-text marginalia magit lua-mode latex-preview-pane format-all expand-region engine-mode elfeed-org deft backup-each-save)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(writegood-mode wrap-region wc-mode rainbow-delimiters orderless marginalia vertico emacsql-sqlite3 use-package rainbow-mode palimpsest org-wc org-static-blog org-roam-ui org-roam-bibtex org-ref org-pomodoro org-journal org-contrib olivetti multiple-cursors move-text magit lua-mode latex-preview-pane icomplete-vertical format-all expand-region engine-mode elfeed-org deft backup-each-save)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
