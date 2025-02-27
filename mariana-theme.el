;;; mariana-theme.el --- Color theme inspired by the Mariana theme in Sublime Text 4 -*- lexical-binding:t -*-

;; Copyright (C) 2021 Jon Eskin

;; Author: Jon Eskin <eskinjp@gmail.com>
;; Maintainer: Jon Eskin <eskinjp@gmail.com>
;; Created: 20 Dec 2021
;; Keywords: faces themes
;; Version: 0.1
;; Package-Requires: ((emacs "25.1"))
;; Homepage: https://gitlab.com/aimebertrand/mariana-theme

;; This file is not part of GNU Emacs.

;; The MIT License (MIT)
;;
;; Copyright (C) 2021 Jon Eskin
;;
;; Permission is hereby granted, free of charge, to any person obtaining
;; a copy of this software and associated documentation files (the
;; "Software"), to deal in the Software without restriction, including
;; without limitation the rights to use, copy, modify, merge, publish,
;; distribute, sublicense, and/or sell copies of the Software, and to
;; permit persons to whom the Software is furnished to do so, subject to
;; the following conditions:
;;
;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
;; IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
;; CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
;; TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
;; SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

;;; Commentary:
;; Sourced other themes to get information about font faces> for packages.
;;
;; I. Installation
;;   A. Manual installation
;;     1. Download the `mariana-theme.el' file and add it to your `custom-load-path'.
;;     2. In your `~/.emacs.d/init.el' or `~/.emacs':
;;       (load-theme 'mariana t)
;;

;;; Code:

(deftheme mariana
  "Custom theme inspired by the Mariana theme in Sublime Text 4.")

(let* ((class '((class color) (min-colors 89)))
      ;; (bg         "#343d46")
      ;; (bg         "#353d46") ;; Sublime text unfocused pane
      (bg       "#303841")
      
      ;; (bg-org     "#282d37")
      (bg-org bg)
      ;; (bg-other   "#232830")
      (bg-other bg) 
      (mariana0 "#343d46")
      (mariana1 "#1c1f24")
      (mariana2 "#4e5a65")
      (mariana3 "#647382")
      (mariana4 "#4f5b66")
      (mariana5 "#a6acb9")
      (mariana6 "#73797e")
      (mariana7 "#9ca0a4")
      (mariana8 "#dfdfdf")

      ;; (fg         "#f7f7f7")
      (fg mariana7)
      ;; (fg-other   "#f7f7f7")
      (fg-other mariana4)
      
      (grey       "#4f5b66")
      (red        "#ec5f66")
      (orange     "#f9ae58")
      (green      "#a3be8c")
      (blue       "#6699cc")
      (magenta    "#b48ead")
      (teal       "#5fb4b4")
      (yellow     "#ecbe7b")
      (darkblue   "#2257a0")
      (purple     "#c678dd")
      (cyan       "#46d9ff")
      (lightcyan  "#88c0d0")
      (darkcyan   "#5699af"))

  (custom-theme-set-faces
   'mariana

;;; Custom faces
   
;;;; default faces
   `(bold ((,class (:weight bold))))
   `(bold-italic ((,class (:weight bold :slant italic))))
   `(bookmark-face ((,class (:foreground ,magenta :weight bold :underline ,darkcyan))))
   `(cursor ((,class (:background ,orange))))
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(error ((,class (:foreground ,red))))
   `(fringe ((,class (:background ,bg :foreground ,mariana4))))
   `(highlight ((,class (:foreground ,magenta :weight bold :underline ,darkcyan))))
   `(italic ((,class (:slant  italic))))
   `(lazy-highlight ((,class (:background ,darkblue  :foreground ,mariana8 :distant-foreground ,mariana0 :weight bold))))
   `(link ((,class (:foreground ,orange :underline t :weight bold))))
   `(match ((,class (:foreground ,green :background ,mariana0 :weight bold))))
   `(minibuffer-prompt ((,class (:foreground ,teal))))
   `(nobreak-space ((,class (:background ,bg :foreground ,fg :underline nil))))
   `(region ((,class (:background ,blue :foreground unspecified :distant-foreground ,bg :extend t))))
   `(secondary-selection ((,class (:background ,grey :extend t))))
   `(shadow ((,class (:foreground ,mariana5))))
   `(success ((,class (:foreground ,green))))
   `(tooltip ((,class (:background ,bg-other :foreground ,fg))))
   `(trailing-whitespace ((,class (:background ,red))))
   `(vertical-border ((,class (:background ,mariana4 :foreground ,mariana4))))
   `(warning ((,class (:foreground ,yellow))))

;;;; font-lock
   `(font-lock-builtin-face ((,class (:foreground ,orange))))
   ;; `(font-lock-comment-delimiter-face ((,class (:foreground ,mariana5))))
   ;; `(font-lock-comment-delimiter-face ((,class (:foreground ,purple))))   
   ;; `(font-lock-comment-face ((,class (:foreground ,mariana5 :slant italic))))
   `(font-lock-comment-face ((,class (:foreground ,mariana3 :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,magenta))))
   `(font-lock-doc-face ((,class (:foreground ,mariana5 :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,teal))))
   `(font-lock-keyword-face ((,class (:foreground ,blue))))
   `(font-lock-negation-char-face ((,class (:foreground ,fg :weight bold))))
   `(font-lock-preprocessor-char-face ((,class (:foreground ,fg :weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,fg :weight bold))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,fg :weight bold))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,fg :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,purple))))
   `(font-lock-variable-name-face ((,class (:foreground ,orange))))
   `(font-lock-warning-face ((,class (:foreground ,yellow))))

;;;; ace-window
   `(aw-leading-char-face ((,class (:foreground ,orange :height 500 :weight bold))))
   `(aw-background-face ((,class (:foreground ,mariana5))))

;;;; agda-mode
   `(agda2-highlight-bound-variable-face ((,class (:foreground ,red))))
   `(agda2-highlight-coinductive-constructor-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-datatype-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-dotted-face ((,class (:foreground ,red))))
   `(agda2-highlight-error-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-field-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-function-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-incomplete-pattern-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-inductive-constructor-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-keyword-face ((,class (:foreground ,magenta))))
   `(agda2-highlight-macro-face ((,class (:foreground ,blue))))
   `(agda2-highlight-module-face ((,class (:foreground ,red))))
   `(agda2-highlight-number-face ((,class (:foreground ,green))))
   `(agda2-highlight-positivity-problem-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-postulate-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-primitive-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-primitive-type-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-record-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-string-face ((,class (:foreground ,green))))
   `(agda2-highlight-symbol-face ((,class (:foreground ,red))))
   `(agda2-highlight-termination-problem-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-typechecks-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-unsolved-constraint-face ((,class (:foreground ,yellow))))
   `(agda2-highlight-unsolved-meta-face ((,class (:foreground ,yellow))))

;;;; alert
   `(alert-high-face ((,class (:weight bold :foreground ,yellow))))
   `(alert-low-face ((,class (:foreground ,grey))))
   `(alert-moderate-face ((,class (:weight bold :foreground ,fg-other))))
   `(alert-trivial-face ((,class (:foreground ,mariana5))))
   `(alert-urgent-face ((,class (:weight bold :foreground ,red))))

;;;; all-the-icons
   `(all-the-icons-blue ((,class (:foreground ,blue))))
   `(all-the-icons-blue-alt ((,class (:foreground ,teal))))
   `(all-the-icons-cyan ((,class (:foreground ,cyan))))
   `(all-the-icons-cyan-alt ((,class (:foreground ,cyan))))
   `(all-the-icons-dblue ((,class (:foreground ,darkblue))))
   `(all-the-icons-dcyan ((,class (:foreground ,darkcyan))))
   `(all-the-icons-dgreen ((,class (:foreground ,green))))
   `(all-the-icons-dmagenta ((,class (:foreground ,red))))
   `(all-the-icons-dmaroon ((,class (:foreground ,purple))))
   `(all-the-icons-dorange ((,class (:foreground ,orange))))
   `(all-the-icons-dpurple ((,class (:foreground ,magenta))))
   `(all-the-icons-dred ((,class (:foreground ,red))))
   `(all-the-icons-dsilver ((,class (:foreground ,grey))))
   `(all-the-icons-dyellow ((,class (:foreground ,yellow))))
   `(all-the-icons-green ((,class (:foreground ,green))))
   `(all-the-icons-lblue ((,class (:foreground ,blue))))
   `(all-the-icons-lcyan ((,class (:foreground ,cyan))))
   `(all-the-icons-lgreen ((,class (:foreground ,green))))
   `(all-the-icons-lmagenta ((,class (:foreground ,red))))
   `(all-the-icons-lmaroon ((,class (:foreground ,purple))))
   `(all-the-icons-lorange ((,class (:foreground ,orange))))
   `(all-the-icons-lpurple ((,class (:foreground ,magenta))))
   `(all-the-icons-lred ((,class (:foreground ,red))))
   `(all-the-icons-lsilver ((,class (:foreground ,grey))))
   `(all-the-icons-lyellow ((,class (:foreground ,yellow))))
   `(all-the-icons-magenta ((,class (:foreground ,red))))
   `(all-the-icons-maroon ((,class (:foreground ,purple))))
   `(all-the-icons-orange ((,class (:foreground ,orange))))
   `(all-the-icons-purple ((,class (:foreground ,magenta))))
   `(all-the-icons-purple-alt ((,class (:foreground ,magenta))))
   `(all-the-icons-red ((,class (:foreground ,red))))
   `(all-the-icons-red-alt ((,class (:foreground ,red))))
   `(all-the-icons-silver ((,class (:foreground ,grey))))
   `(all-the-icons-yellow ((,class (:foreground ,yellow))))

;;;; all-the-icons-dired
   `(all-the-icons-dired-dir-face ((,class (:foreground ,fg-other))))

;;;; all-the-icons-ivy-rich
   `(all-the-icons-ivy-rich-doc-face ((,class (:foreground ,blue))))
   `(all-the-icons-ivy-rich-path-face ((,class (:foreground ,blue))))
   `(all-the-icons-ivy-rich-size-face ((,class (:foreground ,blue))))
   `(all-the-icons-ivy-rich-time-face ((,class (:foreground ,blue))))

;;;; annotate
   `(annotate-annotation ((,class (:background ,orange :foreground ,mariana5))))
   `(annotate-annotation-secondary ((,class (:background ,green :foreground ,mariana5))))
   `(annotate-highlight ((,class (:background ,orange :underline ,orange))))
   `(annotate-highlight-secondary ((,class (:background ,green :underline ,green))))
   
;;;; ANSI colors (used in shell-mode)
   
   `(ansi-color-black ((t (:background ,bg :foreground ,bg :underline nil))))
   `(ansi-color-bright-black ((t (:background ,bg :foreground ,mariana3 :underline nil))))
   
   `(ansi-color-red ((t (:background ,orange :foreground ,orange :underline nil))))
   `(ansi-color-bright-red ((t (:background ,orange :foreground ,orange :underline nil))))
   
   `(ansi-color-green ((t (:background ,mariana5 :foreground ,mariana5 :underline nil))))
   `(ansi-color-bright-green ((t (:background ,mariana5  :foreground ,mariana5 :underline nil))))
   
   `(ansi-color-yellow ((t (:background ,purple :foreground ,purple :underline nil))))
   `(ansi-color-bright-yellow ((t (:background ,yellow :foreground ,yellow :underline nil))))
   
   `(ansi-color-blue ((t (:background ,blue :foreground ,blue :underline nil))))
   `(ansi-color-bright-blue ((t (:background ,blue :foreground ,blue :underline nil))))

   `(ansi-color-magenta ((t (:background ,magenta :foreground ,magenta :underline nil))))
   `(ansi-color-bright-magenta ((t (:background ,magenta :foreground ,magenta :underline nil))))

   `(ansi-color-cyan ((t (:background ,cyan :foreground ,cyan :underline nil))))
   `(ansi-color-bright-cyan ((t (:background ,lightcyan :foreground ,lightcyan :underline nil))))
      
   `(ansi-color-white ((t (:background ,fg :foreground ,fg :underline nil))))
   `(ansi-color-bright-white ((t (:background ,fg :foreground ,fg :underline nil))))

;;;; anzu
   `(anzu-replace-highlight ((,class (:background ,mariana0 :foreground ,red :weight bold :strike-through t))))
   `(anzu-replace-to ((,class (:background ,mariana0 :foreground ,green :weight bold))))

;;;; auctex
   `(TeX-error-description-error ((,class (:foreground ,red :weight bold))))
   `(TeX-error-description-tex-said ((,class (:foreground ,green :weight bold))))
   `(TeX-error-description-warning ((,class (:foreground ,yellow :weight bold))))
   `(font-latex-bold-face ((,class (:weight bold))))
   `(font-latex-italic-face ((,class (:slant italic))))
   `(font-latex-math-face ((,class (:foreground ,blue))))
   `(font-latex-script-char-face ((,class (:foreground ,darkblue))))
   `(font-latex-sectioning-0-face ((,class (:foreground ,blue :weight ultra-bold))))
   `(font-latex-sectioning-1-face ((,class (:foreground ,purple :weight semi-bold))))
   `(font-latex-sectioning-2-face ((,class (:foreground ,magenta :weight semi-bold))))
   `(font-latex-sectioning-3-face ((,class (:foreground ,blue :weight semi-bold))))
   `(font-latex-sectioning-4-face ((,class (:foreground ,purple :weight semi-bold))))
   `(font-latex-sectioning-5-face ((,class (:foreground ,magenta :weight semi-bold))))
   `(font-latex-string-face ((,class (:foreground ,green))))
   `(font-latex-verbatim-face ((,class (:foreground ,magenta :slant italic))))
   `(font-latex-warning-face ((,class (:foreground ,yellow))))

;;;; avy
   `(avy-background-face ((,class (:foreground ,mariana5))))
   `(avy-lead-face ((,class (:background ,orange :foreground ,bg :distant-foreground ,fg :weight bold))))
   `(avy-lead-face-0 ((,class (:background ,orange :foreground ,bg :distant-foreground ,fg :weight bold))))
   `(avy-lead-face-1 ((,class (:background ,orange :foreground ,bg :distant-foreground ,fg :weight bold))))
   `(avy-lead-face-2 ((,class (:background ,orange :foreground ,bg :distant-foreground ,fg :weight bold))))

;;;; bookmark+
   `(bmkp-*-mark ((,class (:foreground ,bg :background ,yellow))))
   `(bmkp->-mark ((,class (:foreground ,yellow))))
   `(bmkp-D-mark ((,class (:foreground ,bg :background ,red))))
   `(bmkp-X-mark ((,class (:foreground ,red))))
   `(bmkp-a-mark ((,class (:background ,red))))
   `(bmkp-bad-bookmark ((,class (:foreground ,bg :background ,yellow))))
   `(bmkp-bookmark-file ((,class (:foreground ,magenta :background ,bg-other))))
   `(bmkp-bookmark-list ((,class (:background ,bg-other))))
   `(bmkp-buffer ((,class (:foreground ,blue))))
   `(bmkp-desktop ((,class (:foreground ,bg :background ,magenta))))
   `(bmkp-file-handler ((,class (:background ,red))))
   `(bmkp-function ((,class (:foreground ,green))))
   `(bmkp-gnus ((,class (:foreground ,orange))))
   `(bmkp-heading ((,class (:foreground ,yellow))))
   `(bmkp-info ((,class (:foreground ,cyan))))
   `(bmkp-light-autonamed ((,class (:foreground ,bg-other :background ,cyan))))
   `(bmkp-light-autonamed-region ((,class (:foreground ,bg-other :background ,red))))
   `(bmkp-light-fringe-autonamed ((,class (:foreground ,bg-other :background ,magenta))))
   `(bmkp-light-fringe-non-autonamed ((,class (:foreground ,bg-other :background ,green))))
   `(bmkp-light-mark ((,class (:foreground ,bg :background ,cyan))))
   `(bmkp-light-non-autonamed ((,class (:foreground ,bg :background ,magenta))))
   `(bmkp-light-non-autonamed-region ((,class (:foreground ,bg :background ,red))))
   `(bmkp-local-directory ((,class (:foreground ,bg :background ,magenta))))
   `(bmkp-local-file-with-region ((,class (:foreground ,yellow))))
   `(bmkp-local-file-without-region ((,class (:foreground ,mariana5))))
   `(bmkp-man ((,class (:foreground ,magenta))))
   `(bmkp-no-jump ((,class (:foreground ,mariana5))))
   `(bmkp-no-local ((,class (:foreground ,yellow))))
   `(bmkp-non-file ((,class (:foreground ,green))))
   `(bmkp-remote-file ((,class (:foreground ,orange))))
   `(bmkp-sequence ((,class (:foreground ,blue))))
   `(bmkp-su-or-sudo ((,class (:foreground ,red))))
   `(bmkp-t-mark ((,class (:foreground ,magenta))))
   `(bmkp-url ((,class (:foreground ,blue :underline t))))
   `(bmkp-variable-list ((,class (:foreground ,green))))

;;;; calfw
   `(cfw:face-annotation ((,class (:foreground ,magenta))))
   `(cfw:face-day-title ((,class (:foreground ,fg :weight bold))))
   `(cfw:face-default-content ((,class (:foreground ,fg))))
   `(cfw:face-default-day ((,class (:weight bold))))
   `(cfw:face-disable ((,class (:foreground ,grey))))
   `(cfw:face-grid ((,class (:foreground ,bg))))
   `(cfw:face-header ((,class (:foreground ,blue :weight bold))))
   `(cfw:face-holiday ((,class (:foreground unspecified :background ,bg-other :weight bold))))
   `(cfw:face-periods ((,class (:foreground ,yellow))))
   `(cfw:face-saturday ((,class (:foreground ,red :weight bold))))
   `(cfw:face-select ((,class (:background ,grey))))
   `(cfw:face-sunday ((,class (:foreground ,red :weight bold))))
   `(cfw:face-title ((,class (:foreground ,blue :weight bold :height 2.0))))
   `(cfw:face-today ((,class (:foreground unspecified :background unspecified :weight bold))))
   `(cfw:face-today-title ((,class (:foreground ,bg :background ,blue :weight bold))))
   `(cfw:face-toolbar ((,class (:foreground unspecified :background unspecified))))
   `(cfw:face-toolbar-button-off ((,class (:foreground ,mariana6 :weight bold))))
   `(cfw:face-toolbar-button-on ((,class (:foreground ,blue :weight bold))))

;;;; centaur-tabs
   `(centaur-tabs-active-bar-face ((,class (:background ,bg :foreground ,orange))))
   `(centaur-tabs-close-mouse-face ((,class (:foreground ,orange))))
   `(centaur-tabs-close-selected ((,class (:background ,bg :foreground ,fg))))
   `(centaur-tabs-close-unselected ((,class (:background ,bg-other :foreground ,grey))))
   `(centaur-tabs-default ((,class (:background ,bg-other :foreground ,fg))))
   `(centaur-tabs-modified-marker-selected ((,class (:background ,bg :foreground ,orange))))
   `(centaur-tabs-modified-marker-unselected ((,class (:background ,bg :foreground ,orange))))
   `(centaur-tabs-selected ((,class (:background ,bg :foreground ,fg))))
   `(centaur-tabs-selected-modified ((,class (:background ,bg :foreground ,red))))
   `(centaur-tabs-unselected ((,class (:background ,bg-other :foreground ,grey))))
   `(centaur-tabs-unselected-modified ((,class (:background ,bg-other :foreground ,red))))

;;;; circe
   `(circe-fool ((,class (:foreground ,mariana5))))
   `(circe-highlight-nick-face ((,class (:weight bold :foreground ,orange))))
   `(circe-my-message-face ((,class (:weight bold))))
   `(circe-prompt-face ((,class (:weight bold :foreground ,orange))))
   `(circe-server-face ((,class (:foreground ,mariana5))))

;;;; company
   `(company-preview ((,class (:foreground ,mariana5))))
   `(company-preview-common ((,class (:background ,mariana3 :foreground ,orange))))
   `(company-preview-search ((,class (:background ,orange :foreground ,bg :distant-foreground ,fg :weight bold))))
   `(company-scrollbar-bg ((,class (:background ,bg-other :foreground ,fg))))
   `(company-scrollbar-fg ((,class (:background ,orange))))
   `(company-template-field ((,class (:foreground ,green :background ,mariana0 :weight bold))))
   `(company-tooltip ((,class (:background ,bg-other :foreground ,fg))))
   `(company-tooltip-annotation ((,class (:foreground ,magenta :distant-foreground ,bg))))
   `(company-tooltip-common ((,class (:foreground ,orange :distant-foreground ,mariana0 :weight bold))))
   `(company-tooltip-mouse ((,class (:background ,purple :foreground ,bg :distant-foreground ,fg))))
   `(company-tooltip-search ((,class (:background ,orange :foreground ,bg :distant-foreground ,fg :weight bold))))
   `(company-tooltip-search-selection ((,class (:background ,grey))))
   `(company-tooltip-selection ((,class (:background ,grey :weight bold))))

;;;; company-box
   `(company-box-candidate ((,class (:foreground ,fg))))

;;;; compilation
   `(compilation-column-number ((,class (:foreground ,mariana5 :slant italic))))
   `(compilation-error ((,class (:foreground ,red :weight bold))))
   `(compilation-info ((,class (:foreground ,green))))
   `(compilation-line-number ((,class (:foreground ,orange))))
   `(compilation-mode-line-exit ((,class (:foreground ,mariana5))))
   `(compilation-mode-line-fail ((,class (:foreground ,orange :weight bold))))
   `(compilation-warning ((,class (:foreground ,yellow :slant italic))))

;;;; counsel
   `(counsel-variable-documentation ((,class (:foreground ,blue))))

;;;; cperl
   `(cperl-array-face ((,class (:weight bold :foreground ,orange))))
   `(cperl-hash-face ((,class (:weight bold :slant italic :foreground ,orange))))
   `(cperl-nonoverridable-face ((,class (:foreground ,red))))

;;;; custom
   `(custom-button ((,class (:foreground ,fg :background ,bg-other :box (:line-width 3 :style released-button)))))
   `(custom-button-mouse ((,class (:foreground ,yellow :background ,bg-other :box (:line-width 3 :style released-button)))))
   `(custom-button-pressed ((,class (:foreground ,bg :background ,bg-other :box (:line-width 3 :style pressed-button)))))
   `(custom-button-pressed-unraised ((,class (:foreground ,magenta :background ,bg :box (:line-width 3 :style pressed-button)))))
   `(custom-button-unraised ((,class (:foreground ,magenta :background ,bg :box (:line-width 3 :style pressed-button)))))
   `(custom-changed ((,class (:foreground ,blue :background ,bg))))
   `(custom-comment ((,class (:foreground ,fg :background ,grey))))
   `(custom-comment-tag ((,class (:foreground ,grey))))
   `(custom-documentation ((,class (:foreground ,fg))))
   `(custom-face-tag ((,class (:foreground ,blue :weight bold))))
   `(custom-group-subtitle ((,class (:foreground ,magenta :weight bold))))
   `(custom-group-tag ((,class (:foreground ,magenta :weight bold))))
   `(custom-group-tag-1 ((,class (:foreground ,blue))))
   `(custom-invalid ((,class (:foreground ,red))))
   `(custom-link ((,class (:foreground ,orange :underline t))))
   `(custom-modified ((,class (:foreground ,blue))))
   `(custom-rogue ((,class (:foreground ,blue :box (:line-width 3 :style none)))))
   `(custom-saved ((,class (:foreground ,green :weight bold))))
   `(custom-set ((,class (:foreground ,yellow :background ,bg))))
   `(custom-state ((,class (:foreground ,green))))
   `(custom-themed ((,class (:foreground ,yellow :background ,bg))))
   `(custom-variable-button ((,class (:foreground ,green :underline t))))
   `(custom-variable-obsolete ((,class (:foreground ,grey :background ,bg))))
   `(custom-variable-tag ((,class (:foreground ,darkcyan :underline t :extend nil))))
   `(custom-visibility ((,class (:foreground ,yellow :height 0.8 :underline t))))

;;;; diff-hl
   `(diff-hl-change ((,class (:foreground ,orange :background ,orange))))
   `(diff-hl-delete ((,class (:foreground ,red :background ,red))))
   `(diff-hl-insert ((,class (:foreground ,green :background ,green))))

;;;; dired
   `(dired-directory ((,class (:foreground ,darkcyan :weight bold))))
   `(dired-flagged ((,class (:foreground ,red))))
   `(dired-header ((,class (:foreground ,orange :weight bold :underline ,darkcyan))))
   `(dired-ignored ((,class (:foreground ,mariana5))))
   `(dired-mark ((,class (:foreground ,orange :weight bold))))
   `(dired-marked ((,class (:foreground ,yellow :weight bold))))
   `(dired-perm-write ((,class (:foreground ,red :underline t))))
   `(dired-symlink ((,class (:foreground ,magenta))))
   `(dired-warning ((,class (:foreground ,yellow))))

;;;; dired-async
   `(dired-async-failures ((,class (:foreground ,red))))
   `(dired-async-message ((,class (:foreground ,orange))))
   `(dired-async-mode-message ((,class (:foreground ,orange))))

;;;; dired-filetype-face
   `(dired-filetype-common ((,class (:foreground ,fg))))
   `(dired-filetype-compress ((,class (:foreground ,yellow))))
   `(dired-filetype-document ((,class (:foreground ,blue))))
   `(dired-filetype-execute ((,class (:foreground ,red))))
   `(dired-filetype-image ((,class (:foreground ,orange))))
   `(dired-filetype-js ((,class (:foreground ,yellow))))
   `(dired-filetype-link ((,class (:foreground ,magenta))))
   `(dired-filetype-music ((,class (:foreground ,magenta))))
   `(dired-filetype-omit ((,class (:foreground ,blue))))
   `(dired-filetype-plain ((,class (:foreground ,fg))))
   `(dired-filetype-program ((,class (:foreground ,red))))
   `(dired-filetype-source ((,class (:foreground ,green))))
   `(dired-filetype-video ((,class (:foreground ,magenta))))
   `(dired-filetype-xml ((,class (:foreground ,green))))

;;;; dired+
   `(diredp-compressed-file-suffix ((,class (:foreground ,mariana5))))
   `(diredp-date-time ((,class (:foreground ,blue))))
   `(diredp-dir-heading ((,class (:foreground ,blue :weight bold))))
   `(diredp-dir-name ((,class (:foreground ,mariana8 :weight bold))))
   `(diredp-dir-priv ((,class (:foreground ,blue :weight bold))))
   `(diredp-exec-priv ((,class (:foreground ,yellow))))
   `(diredp-file-name ((,class (:foreground ,mariana8))))
   `(diredp-file-suffix ((,class (:foreground ,magenta))))
   `(diredp-ignored-file-name ((,class (:foreground ,mariana5))))
   `(diredp-no-priv ((,class (:foreground ,mariana5))))
   `(diredp-number ((,class (:foreground ,purple))))
   `(diredp-rare-priv ((,class (:foreground ,red :weight bold))))
   `(diredp-read-priv ((,class (:foreground ,purple))))
   `(diredp-symlink ((,class (:foreground ,magenta))))
   `(diredp-write-priv ((,class (:foreground ,green))))

;;;; dired-k
   `(dired-k-added ((,class (:foreground ,green :weight bold))))
   `(dired-k-commited ((,class (:foreground ,green :weight bold))))
   `(dired-k-directory ((,class (:foreground ,blue :weight bold))))
   `(dired-k-ignored ((,class (:foreground ,mariana5 :weight bold))))
   `(dired-k-modified ((,class (:foreground ,orange :weight bold))))
   `(dired-k-untracked ((,class (:foreground ,teal :weight bold))))

;;;; dired-subtree
   `(dired-subtree-depth-1-face ((,class (:background ,bg-other))))
   `(dired-subtree-depth-2-face ((,class (:background ,bg-other))))
   `(dired-subtree-depth-3-face ((,class (:background ,bg-other))))
   `(dired-subtree-depth-4-face ((,class (:background ,bg-other))))
   `(dired-subtree-depth-5-face ((,class (:background ,bg-other))))
   `(dired-subtree-depth-6-face ((,class (:background ,bg-other))))

;;;; diredfl
   `(diredfl-autofile-name ((,class (:foreground ,mariana4))))
   `(diredfl-compressed-file-name ((,class (:foreground ,orange))))
   `(diredfl-compressed-file-suffix ((,class (:foreground ,yellow))))
   `(diredfl-date-time ((,class (:foreground ,cyan :weight light))))
   `(diredfl-deletion ((,class (:foreground ,red :weight bold))))
   `(diredfl-deletion-file-name ((,class (:foreground ,red))))
   `(diredfl-dir-heading ((,class (:foreground ,blue :weight bold))))
   `(diredfl-dir-name ((,class (:foreground ,darkcyan))))
   `(diredfl-dir-priv ((,class (:foreground ,blue))))
   `(diredfl-exec-priv ((,class (:foreground ,red))))
   `(diredfl-executable-tag ((,class (:foreground ,red))))
   `(diredfl-file-name ((,class (:foreground ,fg))))
   `(diredfl-file-suffix ((,class (:foreground ,teal))))
   `(diredfl-flag-mark ((,class (:foreground ,yellow :background ,yellow :weight bold))))
   `(diredfl-flag-mark-line ((,class (:background ,yellow))))
   `(diredfl-ignored-file-name ((,class (:foreground ,mariana5))))
   `(diredfl-link-priv ((,class (:foreground ,magenta))))
   `(diredfl-no-priv ((,class (:foreground ,fg))))
   `(diredfl-number ((,class (:foreground ,orange))))
   `(diredfl-other-priv ((,class (:foreground ,purple))))
   `(diredfl-rare-priv ((,class (:foreground ,fg))))
   `(diredfl-read-priv ((,class (:foreground ,yellow))))
   `(diredfl-symlink ((,class (:foreground ,magenta))))
   `(diredfl-tagged-autofile-name ((,class (:foreground ,mariana5))))
   `(diredfl-write-priv ((,class (:foreground ,red))))

;;;; doom-modeline
   `(doom-modeline-bar-inactive ((,class (:background unspecified))))
   `(doom-modeline-eldoc-bar ((,class (:background ,green))))

;;;; ediff
   `(ediff-current-diff-A ((,class (:background ,grey :extend t))))
   `(ediff-current-diff-B ((,class (:background ,grey :extend t))))
   `(ediff-current-diff-C ((,class (:background ,grey :extend t))))
   `(ediff-even-diff-A ((,class (:background ,bg-other :extend t))))
   `(ediff-even-diff-B ((,class (:background ,bg-other :extend t))))
   `(ediff-even-diff-C ((,class (:background ,bg-other :extend t))))
   `(ediff-fine-diff-A ((,class (:background ,bg :weight bold :extend t))))
   `(ediff-fine-diff-B ((,class (:background ,bg :weight bold :extend t))))
   `(ediff-fine-diff-C ((,class (:background ,bg :weight bold :extend t))))
   `(ediff-odd-diff-A ((,class (:background ,bg-other :extend t))))
   `(ediff-odd-diff-B ((,class (:background ,bg-other :extend t))))
   `(ediff-odd-diff-C ((,class (:background ,bg-other :extend t))))

;;;; elfeed
   `(elfeed-log-debug-level-face ((,class (:foreground ,mariana5))))
   `(elfeed-log-error-level-face ((,class (:foreground ,red))))
   `(elfeed-log-info-level-face ((,class (:foreground ,green))))
   `(elfeed-log-warn-level-face ((,class (:foreground ,yellow))))
   `(elfeed-search-date-face ((,class (:foreground ,magenta))))
   `(elfeed-search-feed-face ((,class (:foreground ,blue))))
   `(elfeed-search-filter-face ((,class (:foreground ,magenta))))
   `(elfeed-search-tag-face ((,class (:foreground ,mariana5))))
   `(elfeed-search-title-face ((,class (:foreground ,mariana5))))
   `(elfeed-search-unread-count-face ((,class (:foreground ,yellow))))
   `(elfeed-search-unread-title-face ((,class (:foreground ,fg :weight bold))))

;;;; elixir-mode
   `(elixir-atom-face ((,class (:foreground ,cyan))))
   `(elixir-attribute-face ((,class (:foreground ,magenta))))

;;;; elscreen
   `(elscreen-tab-background-face ((,class (:background ,bg))))
   `(elscreen-tab-control-face ((,class (:background ,bg :foreground ,bg))))
   `(elscreen-tab-current-screen-face ((,class (:background ,bg-other :foreground ,fg))))
   `(elscreen-tab-other-screen-face ((,class (:background ,bg :foreground ,fg-other))))

;;;; enh-ruby-mode
   `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,green))))
   `(enh-ruby-op-face ((,class (:foreground ,fg))))
   `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,orange))))
   `(enh-ruby-regexp-face ((,class (:foreground ,orange))))
   `(enh-ruby-string-delimiter-face ((,class (:foreground ,green))))
   `(erm-syn-errline ((,class (:underline (:style wave :color ,red)))))
   `(erm-syn-warnline ((,class (:underline (:style wave :color ,yellow)))))

;;;; erc
   `(erc-action-face  ((,class (:weight bold))))
   `(erc-button ((,class (:weight bold :underline t))))
   `(erc-command-indicator-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,green :weight bold))))
   `(erc-default-face ((,class (:background ,bg :foreground ,fg))))
   `(erc-direct-msg-face ((,class (:foreground ,purple))))
   `(erc-error-face ((,class (:foreground ,red))))
   `(erc-header-line ((,class (:background ,bg-other :foreground ,orange))))
   `(erc-input-face ((,class (:foreground ,green))))
   `(erc-my-nick-face ((,class (:foreground ,green :weight bold))))
   `(erc-my-nick-prefix-face ((,class (:foreground ,green :weight bold))))
   `(erc-nick-default-face ((,class (:weight bold))))
   `(erc-nick-msg-face ((,class (:foreground ,purple))))
   `(erc-nick-prefix-face ((,class (:weight bold))))
   `(erc-notice-face ((,class (:foreground ,mariana5))))
   `(erc-prompt-face ((,class (:foreground ,orange :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,blue :weight bold))))

;;;; eshell
   `(eshell-ls-archive ((,class (:foreground ,purple))))
   `(eshell-ls-backup ((,class (:foreground ,yellow))))
   `(eshell-ls-clutter ((,class (:foreground ,red))))
   `(eshell-ls-directory ((,class (:foreground ,blue))))
   `(eshell-ls-executable ((,class (:foreground ,green))))
   `(eshell-ls-missing ((,class (:foreground ,red))))
   `(eshell-ls-product ((,class (:foreground ,orange))))
   `(eshell-ls-readonly ((,class (:foreground ,orange))))
   `(eshell-ls-special ((,class (:foreground ,magenta))))
   `(eshell-ls-symlink ((,class (:foreground ,cyan))))
   `(eshell-ls-unreadable ((,class (:foreground ,mariana5))))
   `(eshell-prompt ((,class (:foreground ,orange :weight bold))))

;;;; evil
   `(evil-ex-info ((,class (:foreground ,red :slant italic))))
   `(evil-ex-search ((,class (:background ,orange :foreground ,mariana0 :weight bold))))
   `(evil-ex-substitute-matches ((,class (:background ,mariana0 :foreground ,red :weight bold :strike-through t))))
   `(evil-ex-substitute-replacement ((,class (:background ,mariana0 :foreground ,green :weight bold))))
   `(evil-search-highlight-persist-highlight-face ((,class (:background ,darkblue  :foreground ,mariana8 :distant-foreground ,mariana0 :weight bold))))

;;;; evil-googles
   `(evil-goggles-default-face ((,class (:background ,grey :foreground unspecified :distant-foreground ,bg :extend t))))

;;;; evil-mc
   `(evil-mc-cursor-bar-face ((,class (:height 1 :background ,purple :foreground ,mariana0))))
   `(evil-mc-cursor-default-face ((,class (:background ,purple :foreground ,mariana0 :inverse-video nil))))
   `(evil-mc-cursor-hbar-face ((,class (:underline (:color ,orange)))))
   `(evil-mc-region-face ((,class (:background ,grey :foreground unspecified :distant-foreground ,bg :extend t))))

;;;; evil-snipe
   `(evil-snipe-first-match-face ((,class (:foreground ,orange :background ,darkblue :weight bold))))
   `(evil-snipe-matches-face ((,class (:foreground ,orange :underline t :weight bold))))

;;;; flx-ido
   `(flx-highlight-face ((,class (:weight bold :foreground ,yellow :underline nil))))

;;;; flycheck
   ;; `(flycheck-error ((,class (:underline (:style wave :color ,red)))))
   `(flycheck-error ((,class (:weight bold :foreground ,red :underline nil))))
   `(flycheck-fringe-error ((,class (:foreground ,red))))
   `(flycheck-fringe-info ((,class (:foreground ,green))))
   `(flycheck-fringe-warning ((,class (:foreground ,yellow))))
   `(flycheck-fringe-warning ((,class (:foreground ,cyan))))
   ;; `(flycheck-info ((,class (:underline (:style wave :color ,green)))))
   ;; `(flycheck-warning ((,class (:underline (:style wave :color ,yellow)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,cyan)))))

;;;; flycheck-posframe
   `(flycheck-posframe-background-face ((,class (:background ,bg-other))))
   `(flycheck-posframe-error-face ((,class (:foreground ,red))))
   `(flycheck-posframe-face ((,class (:background ,bg :foreground ,fg))))
   `(flycheck-posframe-info-face ((,class (:foreground ,fg))))
   `(flycheck-posframe-warning-face ((,class (:foreground ,yellow))))

;;;; flymake
   `(flymake-error ((,class (:underline (:style wave :color ,red)))))
   `(flymake-note ((,class (:underline (:style wave :color ,green)))))
   `(flymake-warning ((,class (:underline (:style wave :color ,orange)))))

;;;; flyspell
   `(flyspell-duplicate ((,class (:underline (:style wave :color ,yellow)))))
   `(flyspell-incorrect ((,class (:underline (:style wave :color ,red)))))

;;;; forge
   `(forge-topic-closed ((,class (:foreground ,mariana5 :strike-through t))))
   `(forge-topic-label ((,class (:box nil))))

;;;; git-commit
   `(git-commit-comment-branch-local ((,class (:foreground ,purple))))
   `(git-commit-comment-branch-remote ((,class (:foreground ,green))))
   `(git-commit-comment-detached ((,class (:foreground ,orange))))
   `(git-commit-comment-file ((,class (:foreground ,magenta))))
   `(git-commit-comment-heading ((,class (:foreground ,magenta))))
   `(git-commit-keyword ((,class (:foreground ,cyan :slant italic))))
   `(git-commit-known-pseudo-header ((,class (:foreground ,mariana5 :weight bold :slant italic))))
   `(git-commit-nonempty-second-line ((,class (:foreground ,red))))
   `(git-commit-overlong-summary ((,class (:foreground ,red :slant italic :weight bold))))
   `(git-commit-pseudo-header ((,class (:foreground ,mariana5 :slant italic))))
   `(git-commit-summary ((,class (:foreground ,darkcyan))))

;;;; git-gutter
   `(git-gutter:added ((,class (:foreground ,green))))
   `(git-gutter:deleted ((,class (:foreground ,red))))
   `(git-gutter:modified ((,class (:foreground ,cyan))))

;;;; git-gutter+
   `(git-gutter+-added ((,class (:foreground ,green :background ,bg))))
   `(git-gutter+-deleted ((,class (:foreground ,red :background ,bg))))
   `(git-gutter+-modified ((,class (:foreground ,cyan :background ,bg))))

;;;; git-gutter-fringe
   `(git-gutter-fr:added ((,class (:foreground ,green))))
   `(git-gutter-fr:deleted ((,class (:foreground ,red))))
   `(git-gutter-fr:modified ((,class (:foreground ,cyan))))

;;;; gnus
   `(gnus-cite-1 ((,class (:foreground ,magenta))))
   `(gnus-cite-2 ((,class (:foreground ,magenta))))
   `(gnus-cite-3 ((,class (:foreground ,magenta))))
   `(gnus-cite-4 ((,class (:foreground ,green))))
   `(gnus-cite-5 ((,class (:foreground ,green))))
   `(gnus-cite-6 ((,class (:foreground ,green))))
   `(gnus-cite-7 ((,class (:foreground ,purple))))
   `(gnus-cite-8 ((,class (:foreground ,purple))))
   `(gnus-cite-9 ((,class (:foreground ,purple))))
   `(gnus-cite-10 ((,class (:foreground ,yellow))))
   `(gnus-cite-11 ((,class (:foreground ,yellow))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,fg))))
   `(gnus-group-mail-1-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,fg))))
   `(gnus-group-mail-2-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,fg))))
   `(gnus-group-mail-3-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-mail-low ((,class (:foreground ,fg))))
   `(gnus-group-mail-low-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,fg))))
   `(gnus-group-news-1-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,fg))))
   `(gnus-group-news-2-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,fg))))
   `(gnus-group-news-3-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,fg))))
   `(gnus-group-news-4-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,fg))))
   `(gnus-group-news-5-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-news-6 ((,class (:weight bold :foreground ,fg))))
   `(gnus-group-news-6-empty ((,class (:foreground ,mariana5))))
   `(gnus-group-news-low ((,class (:weight bold :foreground ,mariana5))))
   `(gnus-group-news-low-empty ((,class (:foreground ,fg))))
   `(gnus-header-content ((,class (:foreground ,magenta))))
   `(gnus-header-from ((,class (:foreground ,magenta))))
   `(gnus-header-name ((,class (:foreground ,green))))
   `(gnus-header-newsgroups ((,class (:foreground ,magenta))))
   `(gnus-header-subject ((,class (:foreground ,orange :weight bold))))
   `(gnus-signature ((,class (:foreground ,yellow))))
   `(gnus-summary-cancelled ((,class (:foreground ,red :strike-through t))))
   `(gnus-summary-high-ancient ((,class (:foreground ,mariana5 :slant italic))))
   `(gnus-summary-high-read ((,class (:foreground ,fg))))
   `(gnus-summary-high-ticked ((,class (:foreground ,purple))))
   `(gnus-summary-high-unread ((,class (:foreground ,green))))
   `(gnus-summary-low-ancient ((,class (:foreground ,mariana5 :slant italic))))
   `(gnus-summary-low-read ((,class (:foreground ,fg))))
   `(gnus-summary-low-ticked ((,class (:foreground ,purple))))
   `(gnus-summary-low-unread ((,class (:foreground ,green))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,mariana5 :slant italic))))
   `(gnus-summary-normal-read ((,class (:foreground ,fg))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,purple))))
   `(gnus-summary-normal-unread ((,class (:foreground ,green :weight bold))))
   `(gnus-summary-selected ((,class (:foreground ,blue :weight bold))))
   `(gnus-x-face ((,class (:background ,mariana5 :foreground ,fg))))

;;;; goggles
   `(goggles-added ((,class (:background ,green))))
   `(goggles-changed ((,class (:background ,grey :foreground unspecified :distant-foreground ,bg :extend t))))
   `(goggles-removed ((,class (:background ,red :extend t))))

;;;; header-line
   `(header-line ((,class (:background ,bg :foreground ,fg :distant-foreground ,bg))))

;;;; helm
   `(helm-ff-directory ((,class (:foreground ,red))))
   `(helm-ff-dotted-directory ((,class (:foreground ,grey))))
   `(helm-ff-executable ((,class (:foreground ,mariana8 :slant italic))))
   `(helm-ff-file ((,class (:foreground ,fg))))
   `(helm-ff-prefix ((,class (:foreground ,magenta))))
   `(helm-grep-file ((,class (:foreground ,blue))))
   `(helm-grep-finish ((,class (:foreground ,green))))
   `(helm-grep-lineno ((,class (:foreground ,mariana5))))
   `(helm-grep-match ((,class (:foreground ,orange :distant-foreground ,red))))
   `(helm-match ((,class (:weight bold :foreground ,orange :distant-foreground ,mariana8))))
   `(helm-moccur-buffer ((,class (:foreground ,orange :underline t :weight bold))))
   `(helm-selection ((,class (:weight bold :background ,grey :extend t :distant-foreground ,orange))))
   `(helm-source-header ((,class (:background ,mariana2 :foreground ,magenta :weight bold))))
   `(helm-swoop-target-line-block-face ((,class (:foreground ,yellow))))
   `(helm-swoop-target-line-face ((,class (:foreground ,orange :inverse-video t))))
   `(helm-swoop-target-line-face ((,class (:foreground ,orange :inverse-video t))))
   `(helm-swoop-target-number-face ((,class (:foreground ,mariana5))))
   `(helm-swoop-target-word-face ((,class (:foreground ,green :weight bold))))
   `(helm-visible-mark ((,class (:foreground ,magenta :weight bold :underline ,darkcyan))))

;;;; helpful
   `(helpful-heading ((,class (:weight bold :height 1.2))))

;;;; hi-lock
   `(hi-blue ((,class (:background ,blue))))
   `(hi-blue-b ((,class (:foreground ,blue :weight bold))))
   `(hi-green ((,class (:background ,green))))
   `(hi-green-b ((,class (:foreground ,green :weight bold))))
   `(hi-magenta ((,class (:background ,purple))))
   `(hi-red-b ((,class (:foreground ,red :weight bold))))
   `(hi-yellow ((,class (:background ,yellow))))

;;;; highlight-indentation-mode
   `(highlight-indentation-current-column-face ((,class (:background ,mariana1))))
   `(highlight-indentation-face ((,class (:background ,bg-other :extend t))))
   `(highlight-indentation-guides-even-face ((,class (:background ,bg-other :extend t))))
   `(highlight-indentation-guides-odd-face ((,class (:background ,bg-other :extend t))))

;;;; highlight-numbers-mode
   `(highlight-numbers-number ((,class (:weight bold :foreground ,orange))))

;;;; highlight-quoted-mode
   `(highlight-quoted-quote  ((,class (:foreground ,fg))))
   `(highlight-quoted-symbol ((,class (:foreground ,yellow))))

;;;; highlight-symbol
   `(highlight-symbol-face ((,class (:background ,grey :distant-foreground ,fg-other))))

;;;; highlight-thing
   `(highlight-thing ((,class (:background ,grey :distant-foreground ,fg-other))))

;;;; hl-fill-column-face
   `(hl-fill-column-face ((,class (:foreground ,mariana5 :background ,bg-other :extend t))))

;;;; hl-line (built-in)
   `(hl-line ((,class (:background ,bg-other :extend t))))

;;;; hl-todo
   `(hl-todo ((,class (:foreground ,red :weight bold))))

;;;; hlinum
   `(linum-highlight-face ((,class (:foreground ,fg :distant-foreground nil :weight normal))))

;;;; hydra
   `(hydra-face-amaranth ((,class (:foreground ,purple :weight bold))))
   `(hydra-face-blue ((,class (:foreground ,blue :weight bold))))
   `(hydra-face-magenta ((,class (:foreground ,magenta :weight bold))))
   `(hydra-face-red ((,class (:foreground ,red :weight bold))))
   `(hydra-face-teal ((,class (:foreground ,teal :weight bold))))

;;;; ido
   `(ido-first-match ((,class (:foreground ,orange))))
   `(ido-indicator ((,class (:foreground ,red :background ,bg))))
   `(ido-only-match ((,class (:foreground ,green))))
   `(ido-subdir ((,class (:foreground ,magenta))))
   `(ido-virtual ((,class (:foreground ,mariana5))))

;;;; iedit
   `(iedit-occurrence ((,class (:foreground ,purple :weight bold :inverse-video t))))
   `(iedit-read-only-occurrence ((,class (:background ,grey :foreground unspecified :distant-foreground ,bg :extend t))))

;;;; imenu-list
   `(imenu-list-entry-face-0 ((,class (:foreground ,orange))))
   `(imenu-list-entry-face-1 ((,class (:foreground ,green))))
   `(imenu-list-entry-face-2 ((,class (:foreground ,yellow))))
   `(imenu-list-entry-subalist-face-0 ((,class (:foreground ,orange :weight bold))))
   `(imenu-list-entry-subalist-face-1 ((,class (:foreground ,green :weight bold))))
   `(imenu-list-entry-subalist-face-2 ((,class (:foreground ,yellow :weight bold))))

;;;; indent-guide
   `(indent-guide-face ((,class (:background ,bg-other :extend t))))

;;;; isearch
   `(isearch ((,class (:background ,darkblue  :foreground ,mariana8 :distant-foreground ,mariana0 :weight bold))))
   `(isearch-fail ((,class (:background ,red :foreground ,mariana0 :weight bold))))

;;;; ivy
   `(ivy-confirm-face ((,class (:foreground ,green))))
   `(ivy-current-match ((,class (:background ,mariana3 :distant-foreground nil :extend t))))
   `(ivy-highlight-face ((,class (:foreground ,magenta))))
   `(ivy-match-required-face ((,class (:foreground ,red))))
   `(ivy-minibuffer-match-face-1 ((,class (:background unspecified :foreground ,orange :weight bold :underline t))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,orange :background ,mariana0 :weight semi-bold))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,blue :weight semi-bold))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,yellow :weight semi-bold))))
   `(ivy-minibuffer-match-highlight ((,class (:foreground ,blue :background ,mariana2))))
   `(ivy-modified-buffer ((,class (:weight semi-bold :foreground ,red))))
   `(ivy-virtual ((,class (:slant italic :foreground ,fg))))


;;;; ivy-posframe
   `(ivy-posframe ((,class (:background ,bg-other))))
   `(ivy-posframe-border ((,class (:background ,mariana4 :foreground ,mariana4))))

;;;; jabber
   `(jabber-activity-face ((,class (:foreground ,red :weight bold))))
   `(jabber-activity-personal-face ((,class (:foreground ,blue :weight bold))))
   `(jabber-chat-error ((,class (:foreground ,red :weight bold))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,red :weight bold))))
   `(jabber-chat-prompt-local ((,class (:foreground ,blue :weight bold))))
   `(jabber-chat-prompt-system ((,class (:foreground ,green :weight bold))))
   `(jabber-chat-text-foreign ((,class (:foreground ,fg))))
   `(jabber-chat-text-local ((,class (:foreground ,fg))))
   `(jabber-rare-time-face ((,class (:foreground ,green))))
   `(jabber-roster-user-away ((,class (:foreground ,yellow))))
   `(jabber-roster-user-chatty ((,class (:foreground ,green :weight bold))))
   `(jabber-roster-user-dnd ((,class (:foreground ,red))))
   `(jabber-roster-user-error ((,class (:foreground ,red))))
   `(jabber-roster-user-offline ((,class (:foreground ,fg))))
   `(jabber-roster-user-online ((,class (:foreground ,green :weight bold))))
   `(jabber-roster-user-xa ((,class (:foreground ,cyan))))

;;;; jdee
   `(jdee-font-lock-bold-face ((,class (:weight bold))))
   `(jdee-font-lock-constant-face ((,class (:foreground ,orange))))
   `(jdee-font-lock-constructor-face ((,class (:foreground ,blue))))
   `(jdee-font-lock-doc-tag-face ((,class (:foreground ,magenta))))
   `(jdee-font-lock-italic-face ((,class (:slant italic))))
   `(jdee-font-lock-link-face ((,class (:foreground ,blue :italic nil :underline t))))
   `(jdee-font-lock-modifier-face ((,class (:foreground ,yellow))))
   `(jdee-font-lock-number-face ((,class (:foreground ,orange))))
   `(jdee-font-lock-operator-face ((,class (:foreground ,fg))))
   `(jdee-font-lock-private-face ((,class (:foreground ,magenta))))
   `(jdee-font-lock-protected-face ((,class (:foreground ,magenta))))
   `(jdee-font-lock-public-face ((,class (:foreground ,magenta))))

;;;; js2-mode
   `(js2-external-variable ((,class (:foreground ,mariana3))))
   `(js2-function-call ((,class (:foreground ,blue))))
   `(js2-function-param ((,class (:foreground ,red))))
   `(js2-jsdoc-tag ((,class (:foreground ,mariana3))))
   `(js2-object-property ((,class (:foreground ,magenta))))

;;;; keycast
   `(keycast-command ((,class (:foreground ,orange :distant-foreground ,bg))))
   `(keycast-key ((,class (:foreground ,magenta :weight bold :underline ,darkcyan))))

;;;; ledger-mode
   `(ledger-font-payee-cleared-face ((,class (:foreground ,magenta :weight bold))))
   `(ledger-font-payee-uncleared-face ((,class (:foreground ,mariana5  :weight bold))))
   `(ledger-font-posting-account-face ((,class (:foreground ,mariana8))))
   `(ledger-font-posting-amount-face ((,class (:foreground ,yellow))))
   `(ledger-font-posting-date-face ((,class (:foreground ,blue))))
   `(ledger-font-xact-highlight-face ((,class (:background ,mariana0))))

;;;; line numbers
   `(line-number ((,class (:foreground ,mariana5))))
   `(line-number-current-line ((,class (:foreground ,fg))))

;;;; linum
   `(linum ((,class (:foreground ,mariana5))))

;;;; linum-relative
   `(linum-relative-current-face ((,class (:foreground ,fg))))

;;;; lsp-mode
   `(lsp-face-highlight-read ((,class (:background ,darkblue :foreground ,mariana8 :distant-foreground ,mariana0 :weight bold))))
   `(lsp-face-highlight-textual ((,class (:background ,darkblue :foreground ,mariana8 :distant-foreground ,mariana0 :weight bold))))
   `(lsp-face-highlight-write ((,class (:background ,darkblue :foreground ,mariana8 :distant-foreground ,mariana0 :weight bold))))
   `(lsp-headerline-breadcrumb-separator-face ((,class (:foreground ,fg-other))))
   `(lsp-ui-doc-background ((,class (:background ,bg-other :foreground ,fg))))
   `(lsp-ui-peek-filename ((,class (:weight bold))))
   `(lsp-ui-peek-header ((,class (:foreground ,fg :background ,bg :weight bold))))
   `(lsp-ui-peek-highlight ((,class (:background ,grey :foreground ,bg :box t :weight bold))))
   `(lsp-ui-peek-line-number ((,class (:foreground ,green))))
   `(lsp-ui-peek-list ((,class (:background ,bg))))
   `(lsp-ui-peek-peek ((,class (:background ,bg))))
   `(lsp-ui-peek-selection ((,class (:foreground ,bg :background ,blue :bold bold))))
   `(lsp-ui-sideline-code-action ((,class (:foreground ,orange))))
   `(lsp-ui-sideline-current-symbol ((,class (:foreground ,orange))))
   `(lsp-ui-sideline-symbol-info ((,class (:foreground ,mariana5 :background ,bg-other :extend t))))

;;;; lui
   `(lui-button-face ((,class (:foreground ,orange :underline t))))
   `(lui-highlight-face ((,class (:foreground ,orange))))
   `(lui-time-stamp-face ((,class (:foreground ,magenta))))

;;;; magit
   `(magit-bisect-bad ((,class (:foreground ,red))))
   `(magit-bisect-good ((,class (:foreground ,green))))
   `(magit-bisect-skip ((,class (:foreground ,orange))))
   `(magit-blame-date ((,class (:foreground ,red))))
   `(magit-blame-heading ((,class (:foreground ,orange :background ,mariana3 :extend t))))
   `(magit-branch-current ((,class (:foreground ,red))))
   `(magit-branch-local ((,class (:foreground ,red))))
   `(magit-branch-remote ((,class (:foreground ,green))))
   `(magit-branch-remote-head ((,class (:foreground ,green))))
   `(magit-cherry-equivalent ((,class (:foreground ,magenta))))
   `(magit-cherry-unmatched ((,class (:foreground ,cyan))))
   `(magit-diff-added ((,class (:foreground ,bg  :background ,green :extend t))))
   `(magit-diff-added-highlight ((,class (:foreground ,bg :background ,green :weight bold :extend t))))
   `(magit-diff-base ((,class (:foreground ,orange :background ,orange :extend t))))
   `(magit-diff-base-highlight ((,class (:foreground ,orange :background ,orange :weight bold :extend t))))
   `(magit-diff-context ((,class (:foreground ,fg :background ,bg :extend t))))
   `(magit-diff-context-highlight ((,class (:foreground ,fg :background ,bg-other :extend t))))
   `(magit-diff-file-heading ((,class (:foreground ,fg :weight bold :extend t))))
   `(magit-diff-file-heading-selection ((,class (:foreground ,purple :background ,darkblue :weight bold :extend t))))
   `(magit-diff-hunk-heading ((,class (:foreground ,bg :background ,magenta :extend t))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,bg :background ,magenta :weight bold :extend t))))
   `(magit-diff-lines-heading ((,class (:foreground ,yellow :background ,red :extend t :extend t))))
   `(magit-diff-removed ((,class (:foreground ,bg :background ,red :extend t))))
   `(magit-diff-removed-highlight ((,class (:foreground ,bg :background ,red :weight bold :extend t))))
   `(magit-diffstat-added ((,class (:foreground ,green))))
   `(magit-diffstat-removed ((,class (:foreground ,red))))
   `(magit-dimmed ((,class (:foreground ,mariana5))))
   `(magit-filename ((,class (:foreground ,magenta))))
   `(magit-hash ((,class (:foreground ,blue))))
   `(magit-header-line ((,class (:background ,bg-other :foreground ,darkcyan :weight bold :box (:line-width 3 :color ,bg-other)))))
   `(magit-log-author ((,class (:foreground ,orange))))
   `(magit-log-date ((,class (:foreground ,blue))))
   `(magit-log-graph ((,class (:foreground ,mariana5))))
   `(magit-process-ng ((,class (:foreground ,red))))
   `(magit-process-ok ((,class (:foreground ,green))))
   `(magit-reflog-amend ((,class (:foreground ,purple))))
   `(magit-reflog-checkout ((,class (:foreground ,blue))))
   `(magit-reflog-cherry-pick ((,class (:foreground ,green))))
   `(magit-reflog-commit ((,class (:foreground ,green))))
   `(magit-reflog-merge ((,class (:foreground ,green))))
   `(magit-reflog-other ((,class (:foreground ,cyan))))
   `(magit-reflog-rebase ((,class (:foreground ,purple))))
   `(magit-reflog-remote ((,class (:foreground ,cyan))))
   `(magit-reflog-reset ((,class (:foreground ,red))))
   `(magit-refname ((,class (:foreground ,mariana5))))
   `(magit-section-heading ((,class (:foreground ,darkcyan :weight bold :extend t))))
   `(magit-section-heading-selection ((,class (:foreground ,orange :weight bold :extend t))))
   `(magit-section-highlight ((,class (:background ,bg-other :extend t))))
   `(magit-section-secondary-heading ((,class (:foreground ,magenta :weight bold :extend t))))
   `(magit-sequence-drop ((,class (:foreground ,red))))
   `(magit-sequence-head ((,class (:foreground ,blue))))
   `(magit-sequence-part ((,class (:foreground ,orange))))
   `(magit-sequence-stop ((,class (:foreground ,green))))
   `(magit-signature-bad ((,class (:foreground ,red))))
   `(magit-signature-error ((,class (:foreground ,red))))
   `(magit-signature-expired ((,class (:foreground ,orange))))
   `(magit-signature-good ((,class (:foreground ,green))))
   `(magit-signature-revoked ((,class (:foreground ,purple))))
   `(magit-signature-untrusted ((,class (:foreground ,yellow))))
   `(magit-tag ((,class (:foreground ,yellow))))

;;;; make-mode
   `(makefile-targets ((,class (:foreground ,blue))))

;;;; marginalia
   `(marginalia-documentation ((,class (:foreground ,blue))))
   `(marginalia-file-name ((,class (:foreground ,blue))))

;;;; markdown-mode
   `(markdown-blockquote-face ((,class (:slant italic :foreground ,mariana5))))
   `(markdown-bold-face ((,class (:weight bold :foreground ,orange))))
   `(markdown-code-face ((,class (:background ,bg-org :extend t))))
   `(markdown-header-delimiter-face ((,class (:weight bold :foreground ,orange))))
   `(markdown-header-face-1 ((,class (:weight bold :foreground ,red))))
   `(markdown-header-face-2 ((,class (:weight bold :foreground ,darkcyan))))
   `(markdown-header-face-3 ((,class (:weight bold :foreground ,magenta))))
   `(markdown-header-face-4 ((,class (:weight bold :foreground ,blue))))
   `(markdown-header-face-5 ((,class (:weight bold :foreground ,yellow))))
   `(markdown-html-attr-name-face ((,class (:foreground ,red))))
   `(markdown-html-attr-value-face ((,class (:foreground ,green))))
   `(markdown-html-entity-face ((,class (:foreground ,red))))
   `(markdown-html-tag-delimiter-face ((,class (:foreground ,fg))))
   `(markdown-html-tag-name-face ((,class (:foreground ,magenta))))
   `(markdown-inline-code-face ((,class (:background ,bg-org :foreground ,green))))
   `(markdown-italic-face ((,class (:slant italic :foreground ,magenta))))
   `(markdown-link-face ((,class (:foreground ,orange))))
   `(markdown-list-face ((,class (:foreground ,red))))
   `(markdown-markup-face ((,class (:foreground ,orange))))
   `(markdown-metadata-key-face ((,class (:foreground ,red))))
   `(markdown-pre-face ((,class (:background ,bg-org :foreground ,green))))
   `(markdown-reference-face ((,class (:foreground ,mariana5))))
   `(markdown-url-face ((,class (:foreground ,purple :weight normal))))

;;;; message
   `(message-cited-text ((,class (:foreground ,purple))))
   `(message-header-cc ((,class (:foreground ,orange :weight bold))))
   `(message-header-name ((,class (:foreground ,green))))
   `(message-header-newsgroups ((,class (:foreground ,yellow))))
   `(message-header-other ((,class (:foreground ,magenta))))
   `(message-header-subject ((,class (:foreground ,orange :weight bold))))
   `(message-header-to ((,class (:foreground ,orange :weight bold))))
   `(message-header-xheader ((,class (:foreground ,mariana5))))
   `(message-mml ((,class (:foreground ,mariana5 :slant italic))))
   `(message-separator ((,class (:foreground ,mariana5))))

;;;; mic-paren
   `(paren-face-match ((,class (:foreground ,red :background ,mariana0 :weight ultra-bold))))
   `(paren-face-mismatch ((,class (:foreground ,mariana0 :background ,red :weight ultra-bold))))
   `(paren-face-no-match ((,class (:foreground ,mariana0 :background ,red :weight ultra-bold))))

;;;; minimap
   `(minimap-active-region-background ((,class (:background ,bg))))
   `(minimap-current-line-face ((,class (:background ,grey))))

;;;; mmm-mode
   `(mmm-cleanup-submode-face ((,class (:background ,yellow))))
   `(mmm-code-submode-face ((,class (:background ,bg-other))))
   `(mmm-comment-submode-face ((,class (:background ,blue))))
   `(mmm-declaration-submode-face ((,class (:background ,cyan))))
   `(mmm-default-submode-face ((,class (:background unspecified))))
   `(mmm-init-submode-face ((,class (:background ,red))))
   `(mmm-output-submode-face ((,class (:background ,magenta))))
   `(mmm-special-submode-face ((,class (:background ,green))))

;;;; mode-line
   `(mode-line ((,class (:background ,darkcyan :foreground ,grey :distant-foreground ,fg))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,magenta :distant-foreground ,magenta))))
   `(mode-line-highlight ((,class (:foreground ,cyan :weight bold :underline ,darkcyan))))
   `(mode-line-inactive ((,class (:background ,grey :foreground ,darkcyan :distant-foreground ,darkcyan))))

;;;; mu4e
   `(mu4e-forwarded-face ((,class (:foreground ,orange))))
   `(mu4e-header-key-face ((,class (:foreground ,darkcyan))))
   `(mu4e-header-title-face ((,class (:foreground ,magenta))))
   `(mu4e-highlight-face ((,class (:foreground ,orange :weight bold))))
   `(mu4e-replied-face ((,class (:foreground ,darkcyan))))
   `(mu4e-title-face ((,class (:foreground ,magenta))))

;;;; mu4e-column-faces
   `(mu4e-column-faces-date ((,class (:foreground ,blue))))
   `(mu4e-column-faces-to-from ((,class (:foreground ,green))))

;;;; mu4e-thread-folding
   `(mu4e-thread-folding-child-face ((,class (:extend t :background ,bg-org :underline nil))))
   `(mu4e-thread-folding-root-folded-face ((,class (:extend t :background ,bg-other :overline nil :underline nil))))
   `(mu4e-thread-folding-root-unfolded-face ((,class (:extend t :background ,bg-other :overline nil :underline nil))))

;;;; multiple cursors
   `(mc/cursor-face ((,class (:background ,orange))))

;;;; nano-modeline
   `(nano-modeline-active-name ((,class (:foreground ,fg :weight bold))))
   `(nano-modeline-inactive-name ((,class (:foreground ,mariana5 :weight bold))))
   `(nano-modeline-active-primary ((,class (:foreground ,fg))))
   `(nano-modeline-inactive-primary ((,class (:foreground ,mariana5))))
   `(nano-modeline-active-secondary ((,class (:foreground ,orange :weight bold))))
   `(nano-modeline-inactive-secondary ((,class (:foreground ,mariana5 :weight bold))))
   `(nano-modeline-active-status-RO ((,class (:background ,red :foreground ,bg :weight bold))))
   `(nano-modeline-inactive-status-RO ((,class (:background ,mariana5 :foreground ,bg :weight bold))))
   `(nano-modeline-active-status-RW ((,class (:background ,orange :foreground ,bg :weight bold))))
   `(nano-modeline-inactive-status-RW ((,class (:background ,mariana5 :foreground ,bg :weight bold))))
   `(nano-modeline-active-status-** ((,class (:background ,red :foreground ,bg :weight bold))))
   `(nano-modeline-inactive-status-** ((,class (:background ,mariana5 :foreground ,bg :weight bold))))

;;;; nav-flash
   `(nav-flash-face ((,class (:background ,grey :foreground ,mariana8 :weight bold))))

;;;; neotree
   `(neo-dir-link-face ((,class (:foreground ,orange))))
   `(neo-expand-btn-face ((,class (:foreground ,orange))))
   `(neo-file-link-face ((,class (:foreground ,fg))))
   `(neo-root-dir-face ((,class (:foreground ,green :background ,bg :box (:line-width 4 :color ,bg)))))
   `(neo-vc-added-face ((,class (:foreground ,green))))
   `(neo-vc-conflict-face ((,class (:foreground ,purple :weight bold))))
   `(neo-vc-edited-face ((,class (:foreground ,yellow))))
   `(neo-vc-ignored-face ((,class (:foreground ,mariana5))))
   `(neo-vc-removed-face ((,class (:foreground ,red :strike-through t))))

;;;; nlinum
   `(nlinum-current-line ((,class (:foreground ,fg))))

;;;; nlinum-hl
   `(nlinum-hl-face ((,class (:foreground ,fg))))

;;;; nlinum-relative
   `(nlinum-relative-current-face ((,class (:foreground ,fg))))

;;;; notmuch
   `(notmuch-message-summary-face ((,class (:foreground ,grey :background unspecified))))
   `(notmuch-search-count ((,class (:foreground ,mariana5))))
   `(notmuch-search-date ((,class (:foreground ,orange))))
   `(notmuch-search-flagged-face ((,class (:foreground ,red))))
   `(notmuch-search-matching-authors ((,class (:foreground ,blue))))
   `(notmuch-search-non-matching-authors ((,class (:foreground ,fg))))
   `(notmuch-search-subject ((,class (:foreground ,fg))))
   `(notmuch-search-unread-face ((,class (:weight bold))))
   `(notmuch-tag-added ((,class (:foreground ,green :weight normal))))
   `(notmuch-tag-deleted ((,class (:foreground ,red :weight normal))))
   `(notmuch-tag-face ((,class (:foreground ,yellow :weight normal))))
   `(notmuch-tag-flagged ((,class (:foreground ,yellow :weight normal))))
   `(notmuch-tag-unread ((,class (:foreground ,yellow :weight normal))))
   `(notmuch-tree-match-author-face ((,class (:foreground ,blue :weight bold))))
   `(notmuch-tree-match-date-face ((,class (:foreground ,orange :weight bold))))
   `(notmuch-tree-match-face ((,class (:foreground ,fg))))
   `(notmuch-tree-match-subject-face ((,class (:foreground ,fg))))
   `(notmuch-tree-match-tag-face ((,class (:foreground ,yellow))))
   `(notmuch-tree-match-tree-face ((,class (:foreground ,mariana5))))
   `(notmuch-tree-no-match-author-face ((,class (:foreground ,blue))))
   `(notmuch-tree-no-match-date-face ((,class (:foreground ,orange))))
   `(notmuch-tree-no-match-face ((,class (:foreground ,mariana5))))
   `(notmuch-tree-no-match-subject-face ((,class (:foreground ,mariana5))))
   `(notmuch-tree-no-match-tag-face ((,class (:foreground ,yellow))))
   `(notmuch-tree-no-match-tree-face ((,class (:foreground ,yellow))))
   `(notmuch-wash-cited-text ((,class (:foreground ,mariana4))))
   `(notmuch-wash-toggle-button ((,class (:foreground ,fg))))

;;;; orderless
   `(orderless-match-face-0 ((,class (:foreground ,teal :weight bold :underline t))))
   `(orderless-match-face-1 ((,class (:foreground ,darkcyan :weight bold :underline t))))
   `(orderless-match-face-2 ((,class (:foreground ,cyan :weight bold :underline t))))
   `(orderless-match-face-3 ((,class (:foreground ,green :weight bold :underline t))))

;;;; objed
   `(objed-hl ((,class (:background ,grey))))
   `(objed-mode-line ((,class (:foreground ,yellow :weight bold))))

;;;; org-agenda
   `(org-agenda-clocking ((,class (:background ,blue))))
   `(org-agenda-date ((,class (:foreground ,magenta :weight ultra-bold))))
   `(org-agenda-date-today ((,class (:foreground ,magenta :weight ultra-bold))))
   `(org-agenda-date-weekend ((,class (:foreground ,magenta :weight ultra-bold))))
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,mariana5))))
   `(org-agenda-done ((,class (:foreground ,mariana5))))
   `(org-agenda-structure ((,class (:foreground ,fg :weight ultra-bold))))
   `(org-scheduled ((,class (:foreground ,fg))))
   `(org-scheduled-previously ((,class (:foreground ,mariana8))))
   `(org-scheduled-today ((,class (:foreground ,mariana7))))
   `(org-sexp-date ((,class (:foreground ,fg))))
   `(org-time-grid ((,class (:foreground ,mariana5))))
   `(org-upcoming-deadline ((,class (:foreground ,fg))))
   `(org-upcoming-distant-deadline ((,class (:foreground ,fg))))

;;;; org-habit
   `(org-habit-alert-face ((,class (:weight bold :background ,yellow))))
   `(org-habit-alert-future-face ((,class (:weight bold :background ,yellow))))
   `(org-habit-clear-face ((,class (:weight bold :background ,mariana4))))
   `(org-habit-clear-future-face ((,class (:weight bold :background ,mariana3))))
   `(org-habit-overdue-face ((,class (:weight bold :background ,red))))
   `(org-habit-overdue-future-face ((,class (:weight bold :background ,red))))
   `(org-habit-ready-face ((,class (:weight bold :background ,blue))))
   `(org-habit-ready-future-face ((,class (:weight bold :background ,blue))))

;;;; org-journal
   `(org-journal-calendar-entry-face ((,class (:foreground ,purple :slant italic))))
   `(org-journal-calendar-scheduled-face ((,class (:foreground ,red :slant italic))))
   `(org-journal-highlight ((,class (:foreground ,orange))))

;;;; org-mode
   `(org-archived ((,class (:foreground ,mariana5))))
   `(org-block ((,class (:foreground ,mariana8 :background ,bg-org :extend t))))
   `(org-block-background ((,class (:background ,bg-org :extend t))))
   `(org-block-begin-line ((,class (:foreground ,mariana5 :slant italic :background ,bg-org :extend t))))
   `(org-block-end-line ((,class (:foreground ,mariana5 :slant italic :background ,bg-org :extend t))))
   `(org-checkbox ((,class (:foreground ,green :weight bold))))
   `(org-checkbox-statistics-done ((,class (:foreground ,mariana5))))
   `(org-checkbox-statistics-todo ((,class (:foreground ,green :weight bold))))
   `(org-code ((,class (:foreground ,green))))
   `(org-date ((,class (:foreground ,yellow))))
   `(org-default ((,class (:background ,bg :foreground ,fg))))
   `(org-document-info ((,class (:foreground ,orange))))
   `(org-document-title ((,class (:foreground ,orange :weight bold))))
   `(org-done ((,class (:foreground ,mariana5))))
   `(org-ellipsis ((,class (:underline nil :background unspecified :foreground ,grey))))
   `(org-footnote ((,class (:foreground ,orange))))
   `(org-formula ((,class (:foreground ,cyan))))
   `(org-headline-done ((,class (:foreground ,mariana5))))
   `(org-hide ((,class (:foreground ,bg))))
   `(org-latex-and-related ((,class (:foreground ,mariana8 :weight bold))))
   `(org-level-1 ((,class (:foreground ,blue :weight ultra-bold))))
   `(org-level-2 ((,class (:foreground ,magenta :weight bold))))
   `(org-level-3 ((,class (:foreground ,darkcyan :weight bold))))
   `(org-level-4 ((,class (:foreground ,orange))))
   `(org-level-5 ((,class (:foreground ,green))))
   `(org-level-6 ((,class (:foreground ,teal))))
   `(org-level-7 ((,class (:foreground ,purple))))
   `(org-level-8 ((,class (:foreground ,fg))))
   `(org-link ((,class (:foreground ,darkcyan :underline t))))
   `(org-list-dt ((,class (:foreground ,orange))))
   `(org-meta-line ((,class (:foreground ,mariana5))))
   `(org-priority ((,class (:foreground ,red))))
   `(org-property-value ((,class (:foreground ,mariana5))))
   `(org-quote ((,class (:background ,mariana3 :slant italic :extend t))))
   `(org-special-keyword ((,class (:foreground ,mariana5))))
   `(org-table ((,class (:foreground ,magenta))))
   `(org-tag ((,class (:foreground ,mariana5 :weight normal))))
   `(org-todo ((,class (:foreground ,green :weight bold))))
   `(org-verbatim ((,class (:foreground ,orange))))
   `(org-warning ((,class (:foreground ,yellow))))

;;;; org-pomodoro
   `(org-pomodoro-mode-line ((,class (:foreground ,red))))
   `(org-pomodoro-mode-line-overtime ((,class (:foreground ,yellow :weight bold))))

;;;; org-ref
   `(org-ref-acronym-face ((,class (:foreground ,magenta))))
   `(org-ref-cite-face ((,class (:foreground ,yellow :weight light :underline t))))
   `(org-ref-glossary-face ((,class (:foreground ,purple))))
   `(org-ref-label-face ((,class (:foreground ,blue))))
   `(org-ref-ref-face ((,class (:foreground ,teal :underline t :weight bold))))

;;;; outline
   `(outline-1 ((,class (:foreground ,blue :weight ultra-bold))))
   `(outline-2 ((,class (:foreground ,magenta :weight bold))))
   `(outline-3 ((,class (:foreground ,green :weight bold))))
   `(outline-4 ((,class (:foreground ,orange))))
   `(outline-5 ((,class (:foreground ,purple))))
   `(outline-6 ((,class (:foreground ,purple))))
   `(outline-7 ((,class (:foreground ,purple))))
   `(outline-8 ((,class (:foreground ,fg))))

;;;; parenface
   `(paren-face ((,class (:foreground ,mariana5))))

;;;; parinfer
   `(parinfer-pretty-parens:dim-paren-face ((,class (:foreground ,mariana5))))
   `(parinfer-smart-tab:indicator-face ((,class (:foreground ,mariana5))))

;;;; persp-mode
   `(persp-face-lighter-buffer-not-in-persp ((,class (:foreground ,mariana5))))
   `(persp-face-lighter-default ((,class (:foreground ,orange :weight bold))))
   `(persp-face-lighter-nil-persp ((,class (:foreground ,mariana5))))

;;;; perspective
   `(persp-selected-face ((,class (:foreground ,blue :weight bold))))

;;;; pkgbuild-mode
   `(pkgbuild-error-face ((,class (:underline (:style wave :color ,red)))))

;;;; popup
   `(popup-face ((,class (:background ,bg-other :foreground ,fg))))
   `(popup-selection-face ((,class (:background ,grey))))
   `(popup-tip-face ((,class (:foreground ,magenta :background ,bg-other))))

;;;; powerline
   `(powerline-active0 ((,class (:background ,bg-other :foreground ,fg :distant-foreground ,bg))))
   `(powerline-active1 ((,class (:background ,bg-other :foreground ,fg :distant-foreground ,bg))))
   `(powerline-active2 ((,class (:background ,bg-other :foreground ,fg :distant-foreground ,bg))))
   `(powerline-inactive0 ((,class (:background ,bg-other :foreground ,mariana5 :distant-foreground ,bg-other))))
   `(powerline-inactive1 ((,class (:background ,bg-other :foreground ,mariana5 :distant-foreground ,bg-other))))
   `(powerline-inactive2 ((,class (:background ,bg-other :foreground ,mariana5 :distant-foreground ,bg-other))))

;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,blue))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,purple))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,green))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,orange))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,magenta))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,yellow))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,teal))))
   `(rainbow-delimiters-mismatched-face ((,class (:foreground ,red :weight bold :inverse-video t))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,red :weight bold :inverse-video t))))

;;;; re-builder
   `(reb-match-0 ((,class (:foreground ,orange :inverse-video t))))
   `(reb-match-1 ((,class (:foreground ,purple :inverse-video t))))
   `(reb-match-2 ((,class (:foreground ,green :inverse-video t))))
   `(reb-match-3 ((,class (:foreground ,yellow :inverse-video t))))

;;;; rjsx-mode
   `(rjsx-attr ((,class (:foreground ,blue))))
   `(rjsx-tag ((,class (:foreground ,yellow))))

;;;; rpm-spec-mode
   `(rpm-spec-dir-face ((,class (:foreground ,green))))
   `(rpm-spec-doc-face ((,class (:foreground ,orange))))
   `(rpm-spec-ghost-face ((,class (:foreground ,mariana5))))
   `(rpm-spec-macro-face ((,class (:foreground ,yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,red))))
   `(rpm-spec-package-face ((,class (:foreground ,orange))))
   `(rpm-spec-section-face ((,class (:foreground ,purple))))
   `(rpm-spec-tag-face ((,class (:foreground ,blue))))
   `(rpm-spec-var-face ((,class (:foreground ,magenta))))

;;;; rst
   `(rst-block ((,class (:foreground ,orange))))
   `(rst-level-1 ((,class (:foreground ,magenta :weight bold))))
   `(rst-level-2 ((,class (:foreground ,magenta :weight bold))))
   `(rst-level-3 ((,class (:foreground ,magenta :weight bold))))
   `(rst-level-4 ((,class (:foreground ,magenta :weight bold))))
   `(rst-level-5 ((,class (:foreground ,magenta :weight bold))))
   `(rst-level-6 ((,class (:foreground ,magenta :weight bold))))

;;;; selectrum
   `(selectrum-current-candidate ((,class (:background ,grey :distant-foreground nil :extend t))))

;;;; sh-script
   `(sh-heredoc ((,class (:foreground ,green))))
   `(sh-quoted-exec ((,class (:foreground ,fg :weight bold))))

;;;; show-paren
   ;; `(show-paren-match ((,class (:foreground ,red :background ,mariana0 :weight ultra-bold))))
   ;; `(show-paren-match ((,class (:underline (:color ,orange) :weight bold))))
   ;; `(show-paren-mismatch ((,class (:foreground ,mariana0 :background ,red :weight ultra-bold))))
   `(show-paren-match ((,class (:background ,darkblue :weight bold))))
   `(show-paren-mismatch ((,class (:foreground ,mariana0 :background ,red :weight ultra-bold))))
   

;;;; smart-mode-line
   `(sml/charging ((,class (:foreground ,green))))
   `(sml/discharging ((,class (:foreground ,yellow :weight bold))))
   `(sml/filename ((,class (:foreground ,magenta :weight bold))))
   `(sml/git ((,class (:foreground ,blue))))
   `(sml/modified ((,class (:foreground ,cyan))))
   `(sml/outside-modified ((,class (:foreground ,cyan))))
   `(sml/process ((,class (:weight bold))))
   `(sml/read-only ((,class (:foreground ,cyan))))
   `(sml/sudo ((,class (:foreground ,orange :weight bold))))
   `(sml/vc-edited ((,class (:foreground ,green))))

;;;; smartparens
   `(sp-pair-overlay-face ((,class (:background ,grey))))
   `(sp-show-pair-match-face ((,class (:foreground ,red :background ,mariana0 :weight ultra-bold))))
   `(sp-show-pair-mismatch-face ((,class (:foreground ,mariana0 :background ,red :weight ultra-bold))))

;;;; smerge-tool
   `(smerge-base ((,class (:background ,blue))))
   `(smerge-lower ((,class (:background ,green))))
   `(smerge-markers ((,class (:background ,mariana5 :foreground ,bg :distant-foreground ,fg :weight bold))))
   `(smerge-mine ((,class (:background ,red))))
   `(smerge-other ((,class (:background ,green))))
   `(smerge-refined-added ((,class (:foreground ,bg  :background ,green :extend t))))
   `(smerge-refined-removed ((,class (:foreground ,bg :background ,red :extend t))))
   `(smerge-upper ((,class (:background ,red))))

;;;; solaire-mode
   `(solaire-default-face ((,class (:foreground ,fg :background ,bg-other))))
   `(solaire-hl-line-face ((,class (:background ,bg-other :extend t))))
   `(solaire-mode-line-face ((,class (:background ,bg :foreground ,fg :distant-foreground ,bg))))
   `(solaire-mode-line-inactive-face ((,class (:background ,bg-other :foreground ,fg-other :distant-foreground ,bg-other))))
   `(solaire-org-hide-face ((,class (:foreground ,bg))))

;;;; spaceline
   `(spaceline-evil-emacs ((,class (:background ,cyan))))
   `(spaceline-evil-insert ((,class (:background ,green))))
   `(spaceline-evil-motion ((,class (:background ,purple))))
   `(spaceline-evil-normal ((,class (:background ,blue))))
   `(spaceline-evil-replace ((,class (:background ,orange))))
   `(spaceline-evil-visual ((,class (:background ,grey))))
   `(spaceline-flycheck-error ((,class (:foreground ,red :distant-background ,mariana0))))
   `(spaceline-flycheck-info ((,class (:foreground ,green :distant-background ,mariana0))))
   `(spaceline-flycheck-warning ((,class (:foreground ,yellow :distant-background ,mariana0))))
   `(spaceline-highlight-face ((,class (:background ,orange))))
   `(spaceline-modified ((,class (:background ,orange))))
   `(spaceline-python-venv ((,class (:foreground ,purple :distant-foreground ,magenta))))
   `(spaceline-unmodified ((,class (:background ,orange))))

;;;; stripe-buffer
   `(stripe-highlight ((,class (:background ,mariana3))))

;;;; swiper
   `(swiper-line-face ((,class (:background ,blue :foreground ,mariana0))))
   `(swiper-match-face-1 ((,class (:background ,mariana0 :foreground ,mariana5))))
   `(swiper-match-face-2 ((,class (:background ,orange :foreground ,mariana0 :weight bold))))
   `(swiper-match-face-3 ((,class (:background ,purple :foreground ,mariana0 :weight bold))))
   `(swiper-match-face-4 ((,class (:background ,green :foreground ,mariana0 :weight bold))))

;;;; tabbar
   `(tabbar-button ((,class (:foreground ,fg :background ,bg))))
   `(tabbar-button-highlight ((,class (:foreground ,fg :background ,bg :inverse-video t))))
   `(tabbar-default ((,class (:foreground ,fg :background ,bg :height 1.0))))
   `(tabbar-highlight ((,class (:foreground ,fg :background ,grey :distant-foreground ,bg))))
   `(tabbar-modified ((,class (:foreground ,red :weight bold :height 1.0))))
   `(tabbar-selected ((,class (:weight bold :foreground ,fg :background ,bg-other :height 1.0))))
   `(tabbar-selected-modified ((,class (:background ,bg-other  :foreground ,green))))
   `(tabbar-unselected ((,class (:foreground ,mariana5))))
   `(tabbar-unselected-modified ((,class (:foreground ,red :weight bold :height 1.0))))

;;;; tab-bar
   `(tab-bar ((,class (:background ,bg-other :foreground ,bg-other))))
   `(tab-bar-tab ((,class (:background ,bg :foreground ,fg))))
   `(tab-bar-tab-inactive ((,class (:background ,bg-other :foreground ,fg-other))))

;;;; tab-line
   `(tab-line ((,class (:background ,bg-other :foreground ,bg-other))))
   `(tab-line-close-highlight ((,class (:foreground ,orange))))
   `(tab-line-highlight ((,class (:background ,bg :foreground ,fg))))
   `(tab-line-tab ((,class (:background ,bg :foreground ,fg))))
   `(tab-line-tab-current ((,class (:background ,bg :foreground ,fg))))
   `(tab-line-tab-inactive ((,class (:background ,bg-other :foreground ,fg-other))))

;;;; telephone-line
   `(telephone-line-accent-active ((,class (:foreground ,fg :background ,mariana4))))
   `(telephone-line-accent-inactive ((,class (:foreground ,fg :background ,mariana2))))
   `(telephone-line-evil ((,class (:foreground ,fg :weight bold))))
   `(telephone-line-evil-emacs ((,class (:background ,purple :weight bold))))
   `(telephone-line-evil-insert ((,class (:background ,green :weight bold))))
   `(telephone-line-evil-motion ((,class (:background ,blue :weight bold))))
   `(telephone-line-evil-normal ((,class (:background ,red :weight bold))))
   `(telephone-line-evil-operator ((,class (:background ,magenta :weight bold))))
   `(telephone-line-evil-replace ((,class (:background ,bg-other :weight bold))))
   `(telephone-line-evil-visual ((,class (:background ,orange :weight bold))))
   `(telephone-line-projectile ((,class (:foreground ,green))))

;;;; term
   `(term ((,class (:foreground ,fg))))
   `(term-bold ((,class (:weight bold))))
   `(term-color-black ((,class (:background ,mariana0 :foreground ,mariana0))))
   `(term-color-blue ((,class (:background ,blue :foreground ,blue))))
   `(term-color-cyan ((,class (:background ,cyan :foreground ,cyan))))
   `(term-color-green ((,class (:background ,green :foreground ,green))))
   `(term-color-magenta ((,class (:background ,magenta :foreground ,magenta))))
   `(term-color-purple ((,class (:background ,purple :foreground ,purple))))
   `(term-color-red ((,class (:background ,red :foreground ,red))))
   `(term-color-white ((,class (:background ,mariana8 :foreground ,mariana8))))
   `(term-color-yellow ((,class (:background ,yellow :foreground ,yellow))))

;;;; tldr
   `(tldr-code-block ((,class (:foreground ,green :background ,grey :weight semi-bold))))
   `(tldr-command-argument ((,class (:foreground ,fg :background ,grey))))
   `(tldr-command-itself ((,class (:foreground ,bg :background ,green :weight semi-bold))))
   `(tldr-description ((,class (:foreground ,fg :weight semi-bold))))
   `(tldr-introduction ((,class (:foreground ,blue :weight semi-bold))))
   `(tldr-title ((,class (:foreground ,yellow :bold t :height 1.4))))

;;;; treemacs
   `(treemacs-directory-face ((,class (:foreground ,fg))))
   `(treemacs-file-face ((,class (:foreground ,fg))))
   `(treemacs-git-added-face ((,class (:foreground ,green))))
   `(treemacs-git-conflict-face ((,class (:foreground ,red))))
   `(treemacs-git-modified-face ((,class (:foreground ,magenta))))
   `(treemacs-git-untracked-face ((,class (:foreground ,mariana5 :slant italic))))
   `(treemacs-root-face ((,class (:foreground ,green :weight bold :height 1.2))))
   `(treemacs-tags-face ((,class (:foreground ,orange))))

;;;; typescript-mode
   `(typescript-jsdoc-tag ((,class (:foreground ,cyan))))
   `(typescript-jsdoc-type ((,class (:foreground ,green))))
   `(typescript-jsdoc-value ((,class (:foreground ,mariana5))))

;;;; undo-tree
   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,blue))))
   `(undo-tree-visualizer-current-face ((,class (:foreground ,green :weight bold))))
   `(undo-tree-visualizer-default-face ((,class (:foreground ,mariana5))))
   `(undo-tree-visualizer-register-face ((,class (:foreground ,yellow))))
   `(undo-tree-visualizer-unmodified-face ((,class (:foreground ,mariana5))))

;;;; vimish-fold
   `(vimish-fold-fringe ((,class (:foreground ,purple))))
   `(vimish-fold-overlay ((,class (:foreground ,mariana5 :slant italic :background ,mariana0 :weight light))))

;;;; volatile-highlights
   `(vhl/default-face ((,class (:background ,grey))))

;;;; vterm
   `(vterm ((,class (:foreground ,fg))))
   `(vterm-color-black ((,class (:background ,mariana0 :foreground ,mariana0))))
   `(vterm-color-blue ((,class (:background ,blue :foreground ,blue))))
   `(vterm-color-cyan ((,class (:background ,cyan :foreground ,cyan))))
   `(vterm-color-default ((,class (:foreground ,fg))))
   `(vterm-color-green ((,class (:background ,green :foreground ,green))))
   `(vterm-color-magenta ((,class (:background ,magenta :foreground ,magenta))))
   `(vterm-color-purple ((,class (:background ,purple :foreground ,purple))))
   `(vterm-color-red ((,class (:background ,red :foreground ,red))))
   `(vterm-color-white ((,class (:background ,mariana8 :foreground ,mariana8))))
   `(vterm-color-yellow ((,class (:background ,yellow :foreground ,yellow))))

;;;; web-mode
   `(web-mode-block-control-face ((,class (:foreground ,orange))))
   `(web-mode-block-control-face ((,class (:foreground ,orange))))
   `(web-mode-block-delimiter-face ((,class (:foreground ,orange))))
   `(web-mode-css-property-name-face ((,class (:foreground ,yellow))))
   `(web-mode-doctype-face ((,class (:foreground ,mariana5))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,yellow))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,green))))
   `(web-mode-html-entity-face ((,class (:foreground ,cyan :slant italic))))
   `(web-mode-html-tag-bracket-face ((,class (:foreground ,blue))))
   `(web-mode-html-tag-bracket-face ((,class (:foreground ,fg))))
   `(web-mode-html-tag-face ((,class (:foreground ,blue))))
   `(web-mode-json-context-face ((,class (:foreground ,green))))
   `(web-mode-json-key-face ((,class (:foreground ,green))))
   `(web-mode-keyword-face ((,class (:foreground ,magenta))))
   `(web-mode-string-face ((,class (:foreground ,green))))
   `(web-mode-type-face ((,class (:foreground ,yellow))))

;;;; wgrep
   `(wgrep-delete-face ((,class (:foreground ,mariana3 :background ,red))))
   `(wgrep-done-face ((,class (:foreground ,blue))))
   `(wgrep-face ((,class (:weight bold :foreground ,green :background ,mariana5))))
   `(wgrep-file-face ((,class (:foreground ,mariana5))))
   `(wgrep-reject-face ((,class (:foreground ,red :weight bold))))

;;;; which-func
   `(which-func ((,class (:foreground ,blue))))

;;;; which-key
   `(which-key-command-description-face ((,class (:foreground ,blue))))
   `(which-key-group-description-face ((,class (:foreground ,magenta))))
   `(which-key-key-face ((,class (:foreground ,green))))
   `(which-key-local-map-description-face ((,class (:foreground ,purple))))

;;;; whitespace
   `(whitespace-empty ((,class (:background ,mariana3))))
   `(whitespace-indentation ((,class (:foreground ,mariana4 :background ,mariana3))))
   `(whitespace-line ((,class (:background ,mariana0 :foreground ,red :weight bold))))
   `(whitespace-newline ((,class (:foreground ,mariana4))))
   `(whitespace-space ((,class (:foreground ,mariana4))))
   `(whitespace-tab ((,class (:foreground ,mariana4 :background ,mariana3))))
   `(whitespace-trailing ((,class (:background ,red))))

;;;; widget
   `(widget-button ((,class (:foreground ,fg :weight bold))))
   `(widget-button-pressed ((,class (:foreground ,red))))
   `(widget-documentation ((,class (:foreground ,green))))
   `(widget-field ((,class (:foreground ,fg :background ,mariana0 :extend nil))))
   `(widget-inactive ((,class (:foreground ,grey :background ,bg-other))))
   `(widget-single-line-field ((,class (:foreground ,fg :background ,mariana0))))

;;;; window-divider
   `(window-divider ((,class (:background ,mariana4 :foreground ,mariana4))))
   `(window-divider-first-pixel ((,class (:background ,mariana4 :foreground ,mariana4))))
   `(window-divider-last-pixel ((,class (:background ,mariana4 :foreground ,mariana4))))

;;;; woman
   `(woman-bold ((,class (:weight bold :foreground ,fg))))
   `(woman-italic ((,class (:underline t :foreground ,magenta))))

;;;; workgroups2
   `(wg-brace-face ((,class (:foreground ,orange))))
   `(wg-current-workgroup-face ((,class (:foreground ,mariana0 :background ,orange))))
   `(wg-divider-face ((,class (:foreground ,grey))))
   `(wg-other-workgroup-face ((,class (:foreground ,mariana5))))

;;;; yasnippet
   `(yas-field-highlight-face ((,class (:foreground ,green :background ,mariana0 :weight bold))))
))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'mariana)

;;; mariana-theme.el ends here

