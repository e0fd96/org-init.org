;; -- PACKAGES
(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
	("elp" . "https://elpa.gnu.org/packages/")
	("nongnu" . "https://elpa.nongnu.org/nongnu/")
	))
(package-initialize)

;; -- VANILLA BACKUPS
(setq auto-save-interval 20)
(add-to-list 'backup-directory-alist
             (cons "." "~/emacs/backups/vanilla"))
(add-to-list 'backup-directory-alist
             (cons tramp-file-name-regexp nil))

;; -- BACKUP-EACH-SAVE
(setq backup-each-save-mirror-location "~/emacs/backups/backup-each-save"
      backup-each-save-remote-files nil)
(add-hook 'after-save-hook 'backup-each-save)

;; -- GNU EMACS SETTINGS
(setq inhibit-startup-screen t
      frame-background-mode 'light
      system-time-locale "C"
      tramp-verbose 1
      auth-sources '("~/.authinfo.gpg" "~/.authinfo" "~/.netrc")
      ring-bell-function 'ignore
      server-client-instructions nil
      scroll-bar-mode nil
      initial-buffer-choice "~/emacs/org/org-roam-other/misc/2022-10-10-misc-scratch.org"
      user-full-name "Ilmari Koria"
      user-mail-address "ilmarikoria@posteo.net"
      undo-limit 800000
      undo-strong-limit 12000000
      undo-outer-limit 120000000
      kill-ring-max 9999
      delete-by-moving-to-trash t)

;; -- DIRED
(setq dired-listing-switches "-alh")
(put 'dired-find-alternate-file 'disabled nil)

;; -- MODES
(electric-pair-mode 1)
(menu-bar-mode -1)
(show-paren-mode 1)
(delete-selection-mode t)
(xclip-mode 1)
(tool-bar-mode -1)
(set-default 'truncate-lines t)
(global-auto-revert-mode)
(global-hl-line-mode 1)
(scroll-bar-mode -1)

;; -- SCROLLING
(setq scroll-conservatively 100
      scroll-margin 20)

;; -- HELM
(add-hook 'after-init-hook 'helm-mode)
(helm-mode t)
(setq helm-truncate-lines t
      helm-candidate-number-limit 9999
      helm-candidate-separator "--------------------------------------")

;; -- SPELLING
(setq synosaurus-choose-method 'popup
      synosaurus-backend 'synosaurus-backend-wordnet
      ispell-personal-dictionary "~/emacs/ispell/ispell-personal-dictionary"
      ispell-silently-savep t
      ispell-dictionary "en_GB"
      abbrev-file-name "~/emacs/abbrev_defs/abbrev_defs"
      save-abbrevs 'silently)

;; -- WRITEGOOD
(setq writegood-weasel-words
      '("many" "various" "very" "fairly"
	"several" "extremely" "exceedingly" "quite"
	"remarkably" "few" "surprisingly" "mostly"
	"largely" "huge" "tiny" "are a number"
	"is a number" "excellent" "interestingly" "significantly"
	"substantially" "clearly" "vast" "relatively"
	"completely" "literally" "not rocket science" "pretty"
	"outside the box" "In this regard" "With this in mind"
	"With the above in mind" "In this sense" "variety"))

;; -- WRITING MISC
(setq next-line-add-newlines t
      word-wrap-by-category t
      electric-pair-preserve-balance nil)

;; -- PROGRAMMING HOOKS
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'electric-indent-mode)
(add-hook 'text-mode-hook 'wrap-region-mode)
(add-hook 'prog-mode-hook 'format-all-mode)
(add-hook 'prog-mode-hook 'abbrev-mode)
(add-hook 'format-all-mode-hook 'format-all-ensure-formatter)

;; -- PYTHON
(setq format-all-show-errors 'never
      python-indent-guess-indent-offset nil
      python-indent-guess-indent-offset-verbose nil)

;; -- BINDINGS, ENGINE
(engine-mode t)
(defengine duckduckgo "https://duckduckgo.com/?q=%s"
	   :keybinding "d")
(defengine google "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
	   :keybinding "g")
(defengine wikipedia "http://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s"
	   :keybinding "w")
(defengine thesaurus "https://www.thesaurus.com/browse/%s"
	   :keybinding "t")
(defengine dita-1.3.-elements "https://www.oxygenxml.com/dita/1.3/specs/search.html?searchQuery=%s"
	   :keybinding "d")

;; -- BINDINGS, DANGEROUS
(global-set-key (kbd "C-! C-t") 'dired-toggle-read-only)
(global-set-key (kbd "C-! C-k") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-! C-i") 'org-id-get-create)
(global-set-key (kbd "C-! C-r") 'my-org-roam-switch-context)

;; -- BINDINGS, GENERIC
(global-set-key (kbd "C-c s") 'flyspell-buffer)
(global-set-key (kbd "C-c w") 'count-words-region)
(global-set-key (kbd "C-c v") 'visual-line-mode)
(global-set-key (kbd "C-c y") 'helm-show-kill-ring)
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)
(global-set-key (kbd "C-c k") 'clone-indirect-buffer)
(global-set-key (kbd "C-c h") 'helm-descbinds)
(global-set-key (kbd "C-c 1") 'elfeed)
(global-set-key (kbd "C-c l") 'flyspell-popup-correct)
(global-set-key (kbd "C-c r") 'ispell-word)
(global-set-key (kbd "C-c f") 'whitespace-mode)
(global-set-key (kbd "C-c m") 'overwrite-mode)

;; -- BINDINGS, MULTIPLE CURSORS
(global-set-key (kbd "C-M-j") 'mc/mark-all-dwim)
(global-set-key (kbd "C-M-c") 'mc/edit-lines)
(global-set-key (kbd "C-M-l") 'er/expand-region)
(global-set-key (kbd "C-M-/") 'mc/mark-all-like-this)
(global-set-key (kbd "C-M-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-.") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M->") 'mc/skip-to-previous-like-this)
(global-set-key (kbd "C-M-<") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-M-s") 'just-one-space)
(global-set-key (kbd "C-M-y") 'mc/insert-numbers) ;; (C-u-1-0) -- also (rectangle-number-lines)
(global-set-key (kbd "C-'") 'mc/hide-unmatched-lines-mode)
(global-set-key (kbd "C-j") 'electric-newline-and-maybe-indent)

;; -- BINDINGS, ORG
(global-set-key (kbd "C-c b") 'org-capture-at-point)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c p") 'org-pomodoro)
(global-set-key (kbd "<f6>" ) 'org-capture)
(global-set-key (kbd "C-c o") 'org-wc-display)
(global-set-key (kbd "C-c 0") 'org-insert-structure-template)
(global-set-key (kbd "C-c g") 'org-schedule)
(global-set-key (kbd "C-c d") 'org-deadline)
(global-set-key (kbd "C-c q") 'org-insert-heading-after-current)
(global-set-key (kbd "C-c t") 'org-narrow-to-subtree)
(global-set-key (kbd "C-c T") 'widen)
(global-set-key (kbd "C-c i") 'org-store-link)

;; -- BINDINGS, ROAM
(global-set-key (kbd "C-c n l") 'org-roam-buffer-toggle)
(global-set-key (kbd "C-c n f") 'org-roam-node-find)
(global-set-key (kbd "C-c n g") 'org-roam-graph)
(global-set-key (kbd "C-c n i") 'org-roam-node-insert)
(global-set-key (kbd "C-c n c") 'org-roam-capture)
(global-set-key (kbd "C-c n d") 'org-roam-dailies-capture-today)
(global-set-key (kbd "C-c n j") 'org-journal-new-entry)
(global-set-key (kbd "C-c n r") 'org-journal-search-forever)
(global-set-key (kbd "C-c n p") 'completion-at-point)
(global-set-key (kbd "C-c n s") 'deft)

;; -- ORG AGENDA
(setq org-agenda-start-on-weekday nil
      org-agenda-remove-tags t
      org-habit-following-days 1
      org-agenda-window-setup 'only-window
      org-agenda-custom-commands
      '(("T" "TODAY'S TASKS" agenda ""
         ((org-agenda-overriding-header "Today's agenda")
          (org-agenda-span 'day)
          )))
      org-agenda-prefix-format
      '((agenda . " %i %?-12t% s")
        (todo . " %i %-12:c")
        (tags . " %i %-12:c")
        (search . " %i %-12:c"))
      org-agenda-files
      '("~/emacs/org/org-todo/task-index.org"))

;; -- ORG TAGS
(defun my-org-align-tags () (interactive)
       (org-align-tags 0))
(add-hook 'org-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'my-org-align-tags nil 'make-it-local)))

;; -- ORG CAPTURE
(setq org-capture-templates '(("n" "note-at-point" plain (file "") " - (%^{location}) Here it says that %?.")
			      ("w" "weekly-review-at-point" plain (file "~/emacs/org/notes.org") (file "~/emacs/org/org-templates/weekly-review.txt"))
			      ("d" "diary-at-point" plain (file "~/emacs/org/notes.org") (file "~/emacs/org/org-templates/daily-diary.txt"))
			      ("b" "beamer-at-point" plain (file "") (file "~/emacs/org/org-templates/beamer"))
			      ("t" "scheduled-todo" entry (file+headline "~/emacs/org/org-todo/task-index.org" "TASK-INDEX") (file "~/emacs/org/org-templates/scheduled-todo-basic"))
			      ("T" "scheduled-todo-full" entry (file+headline "~/emacs/org/org-todo/task-index.org" "TASK-INDEX") (file "~/emacs/org/org-templates/scheduled-todo-with-deadline"))
			      ("r" "rss todo" entry (file+olp "~/emacs/org/org-todo/task-index.org" "TASK-INDEX") "* TODO %^{Description} %^g:RSS:\nSCHEDULED: %^t\n\n %a\n\n %i")
			      ("j" "work log entry" plain (function org-journal-find-location) (file "~/emacs/org/org-templates/work-log-prompts") :jump-to-captured t :immediate-finish t)))

;; -- ORG CAPTURE AT POINT
(defun org-capture-at-point () (interactive)
       (org-capture 0))

;; -- ORG EXPORT
(setq org-export-with-smart-quotes t
      org-latex-tables-centered nil
      org-export-preserve-breaks t
      org-export-with-toc nil
      org-export-with-section-numbers nil
      org-html-footnotes-section "<div id=\"footnotes\">
                                  <h2 class=\"footnotes\">%s </h2>
                                  <div id=\"text-footnotes\">%s</div>
                                  </div>"
      org-html-head-include-default-style nil
      org-html-postamble t
      org-html-postamble-format
      '(("en" "<p class=\"postamble\" style=\"padding-top:5px;font-size:small;\">Author: %a (%e) | Last modified: %C.</p>"))
      org-latex-toc-command "\\tableofcontents \\addtocontents{toc}{\\protect\\thispagestyle{empty}} \\newpage"
      org-latex-compiler "xelatex"
      org-latex-pdf-process '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
                              "bibtex %b" "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
                              "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

;; -- ORG BASIC
(setq org-directory "~/emacs/org"
      org-startup-folded t
      org-log-into-drawer t
      org-clock-into-drawer "CLOCK"
      org-startup-truncated t
      org-tags-column 0
      org-archive-location "~/emacs/org/org-archive/org-archive-global.org::* From %s"
      org-archive-mark-done t
      org-archive-subtree-save-file-p t
      org-habit-following-days 1)

;; -- ORG JOURNAL
(require 'org-journal)
(setq org-journal-dir "~/emacs/org/org-roam-other/journal/"
      org-journal-date-format "%Y-%m-%d"
      org-journal-file-format "%m-%Y-journal.org"
      org-journal-enable-agenda-integration t
      org-journal-file-type 'monthly
      org-journal-file-header "#+title: %b %Y Journal\n#+filetags: log todo diary")

(defun org-journal-find-location ()
  (org-journal-new-entry t)
  (unless (eq org-journal-file-type 'daily)
    (org-narrow-to-subtree))
  (goto-char (point-max)))

;; -- ORG EXTRAS
(require 'ox-extra)
(require 'ox-latex)
(require 'ox-bibtex)

(ox-extras-activate
 '(ignore-headlines))

;; -- ORG REF
(setq bibtex-completion-bibliography '("~/bibliography/bibliography.bib")
      bibtex-completion-library-path '("~/bibliography/bibtex-pdfs/")
      bibtex-completion-notes-path "~/bibliography/notes/"
      bibtex-completion-notes-template-multiple-files "* ${author-or-editor}, ${title}, ${journal}, (${year}) :${=type=}: \n\nSee [[cite:&${=key=}]]\n"
      bibtex-completion-additional-search-fields '(keywords)
      bibtex-completion-display-formats
      '((article       . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*} ${journal:40}")
	(inbook        . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*} Chapter ${chapter:32}")
	(incollection  . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*} ${booktitle:40}")
	(inproceedings . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*} ${booktitle:40}")
	(t             . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*}"))
      bibtex-completion-pdf-open-function
      (lambda (fpath)
	(call-process "open" nil 0 nil fpath))
      org-ref-cite-insert-version 2)

(require 'org-ref)
(require 'org-ref-helm)

(define-key org-mode-map (kbd "C-c ]") 'org-ref-insert-link)

;; -- ORG WEBSITE
(setq org-static-blog-publish-title "e0fd96"
      org-static-blog-publish-url "https://e0fd96.xyz"
      org-static-blog-publish-directory "~/emacs/org/org-blog/html"
      org-static-blog-posts-directory "~/emacs/org/org-roam/blog"
      org-static-blog-drafts-directory "~/emacs/org/org-blog/blog-drafts"
      org-static-blog-enable-tags nil
      org-static-blog-preview-ellipsis ""
      org-static-blog-use-preview t
      org-static-blog-preview-start ""
      org-static-blog-preview-end "")

(setq org-static-blog-index-front-matter "<div id=\"recent-posts\">
                                          <h2>recent posts</h2>
                                          </div>")

(setq org-static-blog-page-header "<meta name=\"author\" content=\"e0fd96\">
                                   <meta name=\"referrer\" content=\"no-referrer\">
                                   <meta name=\"viewport\" content=\"initial-scale=1.0,maximum-scale=1.0,user-scalable=no\" />
                                   <link href=\"static/style.css\" rel=\"stylesheet\" type=\"text/css\" />
                                   <link rel=\"icon\" href=\"data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>🏞</text></svg>\">")

(setq org-static-blog-page-preamble "<div id=\"top-nav\">
                                     <div id=\"website-title\"><a href=\"https://e0fd96.xyz\">e0fd96</a></div>
                                     <div id=\"top-links\">
                                     <div id=\"left-link\"><a href=\"https://e0fd96.xyz/archive.html\">Posts</a></div>
                                     <div id=\"right-link\"><a href=\"https://e0fd96.xyz/contact.html\">Contact</a></div>
                                     </div></div>")

(setq org-static-blog-page-postamble "<div id=\"bottom-nav\">
                                      <a href=\"https://e0fd96.xyz/rss.xml\">RSS</a> | <a href=\"https://creativecommons.org/licenses/by-nc/4.0/\">License</a> | <a href=\"https://www.debian.org/\">Debian hosted</a>
                                      </div>")

;; -- ORG WC
(setq org-wc-ignored-tags '("ARCHIVE"))


;; -- ORG ROAM
(setq org-roam-v2-ack t
      org-roam-directory (file-truename "~/emacs/org/org-roam-other")
      org-roam-completion-everywhere t)
(org-roam-db-autosync-mode)

;; -- ORG ROAM SWITCHER
(setq my-org-roam-context-alist
      '(("org-roam-academic" . "~/emacs/org/org-roam-academic")
	("org-roam-other" . "~/emacs/org/org-roam-other")))

(defun my-org-roam-switch-context (c)
  (interactive
   (list (completing-read "Choose: " my-org-roam-context-alist nil t)))
  (let* ((new-folder (cdr (assoc c my-org-roam-context-alist))))
    (message "Setting org-roam folder to '%s'" new-folder)
    (setq org-roam-directory new-folder)
    (org-roam-db-sync) )
  c)

;; -- ORG ROAM VISUALISER
(setq org-roam-ui-sync-theme t
      org-roam-ui-follow t
      org-roam-ui-update-on-save t
      org-roam-ui-open-on-start t)

;; -- ORG ROAM CAPTURE
(setq org-roam-capture-templates
      '(("p" "permanent" plain "%?" :target (file+head "permanent-notes/%<%Y-%m-%d>-permanent-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}\n\n - [ ] One subject, signified by the title.\n - [ ] Wording that is independent of any other topic.\n - [ ] Between 100-200 words.\n\n--\n + ") :unnarrowed t)
	("b" "blog" plain "%?" :target (file+head "blog/%<%Y-%m-%d>-blog-draft.org" "#+title: ${title}\n#+filetags: %^{TAGS}\n#+DESCRIPTION: %^{short description}\n#+date: <%<%Y-%m-%d %H:%M>>\n* Introduction\n* par2\n* par3\n* par4\n* par5\n* par6\n* par7\n* Conclusion\n* References :ignore:\n#+BIBLIOGRAPHY: bibliography.bib plain option:-a option:-noabstract option:-heveaurl limit:t\n* Footnotes :ignore:\n* Text-dump :noexport:") :unnarrowed t)
	("r" "reference" plain "%?" :target (file+head "reference-notes/%<%Y-%m-%d>-reference-${citekey}.org" "#+title: ${citekey} - ${title}\n#+filetags: %^{TAGS}\n\n--\n + ") :unnarrowed t)
	("a" "application" plain "%?" :target (file+head "applications/%<%Y-%m-%d>-application-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}\n") :unnarrowed t)
	("m" "misc" plain "%?" :target (file+head "misc/%<%Y-%m-%d>-misc-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}\n") :unnarrowed t)
        ("w" "work" plain "%?" :target (file+head "work/%<%Y-%m-%d>-work-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}\n") :unnarrowed t)
	("i" "index" plain "%?" :target (file+head "index/%<%Y-%m-%d>-index-${slug}.org" "#+title: ${title}\n#+filetags: %^{TAGS}") :unnarrowed t)))

;; -- ORG ROAM FLEETING
(setq org-roam-dailies-directory "~/emacs/org/org-roam-academic/fleeting-notes"
      org-roam-dailies-capture-templates '(("f" "fleeting-notes" entry "\n* %<%Y-%m-%d %H:%M> - %?" :target (file "fleeting-notes.org"))))

;; -- ORG ROAM BIBTEX
(add-hook 'after-init-hook 'org-roam-bibtex-mode)
(setq orb-insert-follow-link t)

;; -- ORG ROAM TWEAKS
(cl-defmethod org-roam-node-type ((node org-roam-node))
  "Return the TYPE of NODE."
  (condition-case nil
      (file-name-nondirectory (directory-file-name
                               (file-name-directory
                                (file-relative-name (org-roam-node-file node) org-roam-directory))))
    (error "")))
(setq org-roam-node-display-template "${type:20} ${tags:50} ${title:*}")

(setq org-roam-db-node-include-function
      (lambda ()
        (not (member "ATTACH" (org-get-tags)))
        ))

;; -- ORG POMODORO
(setq org-pomodoro-audio-player "/usr/bin/mpv"
      org-pomodoro-play-sounds t
      org-pomodoro-long-break-frequency 5
      org-pomodoro-long-break-length 10)

;; -- ORG MODE HOOKS
(add-hook 'org-mode-hook 'olivetti-mode)
(add-hook 'org-mode-hook 'visual-line-mode)
(add-hook 'org-mode-hook 'writegood-mode)
(add-hook 'org-mode-hook 'wc-mode)
(add-hook 'org-mode-hook 'synosaurus-mode)
(add-hook 'org-mode-hook 'palimpsest-mode)
(add-hook 'org-mode-hook 'wrap-region-mode)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'abbrev-mode)

;; -- ELFEED
(setq elfeed-search-filter "@2-days-ago +unread"
      elfeed-search-title-max-width 100
      elfeed-search-title-min-width 100
      url-queue-timeout 30
      shr-inhibit-images t ;; images are slow
      elfeed-use-curl t
      elfeed-sort-order 'descending
      flycheck-global-modes '(not . (elfeed-search-mode)))

(require 'elfeed-org)
(elfeed-org)
(setq rmh-elfeed-org-files (list "~/emacs/org/org-roam-other/rss/rss-feed.org"))

(defun elfeed-olivetti (buff)
  (switch-to-buffer buff)
  (olivetti-mode)
  (elfeed-show-refresh))
(setq elfeed-show-entry-switch 'elfeed-olivetti)

(add-hook 'elfeed-show-mode-hook 'olivetti-mode)
(add-hook 'elfeed-show-mode-hook 'visual-line-mode)

;; -- LaTeX
(setq TeX-auto-save t
      TeX-parse-self t
      TeX-PDF-mode t
      reftex-plug-into-AUCTeX t)

(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'format-all-mode)
(add-hook 'LaTeX-mode-hook 'display-line-numbers-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'hl-line-mode)

;; -- DEFT
(setq deft-recursive t
      deft-use-filter-string-for-filename t
      deft-default-extension "org"
      deft-directory "~/emacs/org/")

;; -- OLIVETTI
(setq olivetti-recall-visual-line-mode-entry-state t)
(global-set-key (kbd "C-c z") 'olivetti-mode)

;; -- ADDED BY EMACS
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode nil)
 '(custom-enabled-themes '(modus-operandi))
 '(custom-safe-themes
   '("47770bdfb2d9391ead441f90402728c25a55ea96a8774802600d7ac4555abba9" "27fc6293ab3eaafd57703df8552d4e1629649a0f2266f107d8c9157956ce4d4b" "88a07b7b40f461b29b841277c6163b9967f3ef48638b59df05edcf97e8057426" default))
 '(global-hl-line-mode t)
 '(line-spacing 0.3)
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
 '(package-selected-packages
   '(deft lua-mode org-make-toc olivetti magit modus-themes palimpsest format-all org-roam-bibtex xclip writegood-mode wrap-region wc-mode synosaurus org-wc org-static-blog org-roam-ui org-ref org-pomodoro org-journal org-contrib multiple-cursors helm-mode-manager helm-descbinds helm-bibtex flyspell-popup engine-mode elfeed-org backup-each-save auctex))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Sans Mono" :foundry "GOOG" :slant normal :weight normal :height 150 :width normal))))
 '(flyspell-duplicate ((t nil)))
 '(flyspell-incorrect ((t (:underline (:color "Red1" :style wave)))))
 '(hl-line ((t (:extend t :background "white smoke"))))
 '(minibuffer-prompt ((t (:inherit modus-themes-prompt))))
 '(org-block ((t (:inherit shadow :extend t :background "snow"))))
 '(org-ellipsis ((t (:foreground "black" :underline nil))))
 '(writegood-duplicates-face ((t (:underline (:color "deep sky blue" :style wave)))))
 '(writegood-passive-voice-face ((t (:underline (:color "magenta" :style wave)))))
 '(writegood-weasels-face ((t (:underline (:color "green yellow" :style wave))))))
