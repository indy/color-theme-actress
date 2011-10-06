;;; color-theme-actress.el --- A color theme for GNU Emacs.

;; Copyright (C) 2011 Inderjit Gill <email@indy.io>

;; Author: Inderjit Gill
;; Keywords: dark color theme
;; URL: http://github.com/indy/color-theme-actress
;; Version: 0.1.0
;; Package-Requires: ((color-theme "6.6.1"))

;; This file is not a part of GNU Emacs.

;;; License:

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;;; Code:

;; color theme (requires http://www.emacswiki.org/cgi-bin/wiki?ColorTheme )
(require 'color-theme)

; orange/red -> functions, variables
; turquoise -> keyword, builtin,
; green -> strings comments
;          note: move type from greens into turquoise?
; greys
; blacks

; pinks/reds == errors and warnings
; 
; font-lock-builtin-face
; font-lock-comment-delimiter-face
; font-lock-comment-face 	
; font-lock-constant-face 	
; font-lock-doc-face 	
; font-lock-keyword-face
; font-lock-function-name-face
; font-lock-negation-char-face
; font-lock-preprocessor-face
; font-lock-reference-face
; font-lock-string-face
; font-lock-type-face
; font-lock-variable-name-face
; font-lock-warning-face


(defun color-theme-actress ()
  "Actress color theme for GNU Emacs."
  (interactive)
  (let ((bg "#000000")        ; default background
        (bg-hi "#111111")     ; default background-highlighted
        (bg-hi2 "#333333")    ; default background-extra-highlighted
        (fg "#999999")        ; default foreground
        (fg-hi "#ffffff")     ; default foreground-highlighted

        (alpha "#2f4f4f")
        (alpha-comp1 "#4D9B9B")
        (alpha-comp2 "#6C9B9B")
        (alpha-comp-1 "#9B603D")
        (alpha-comp-2 "#4F3B2F")
        (alpha-triad1 "#4D9B9B")
        (alpha-triad2 "#5C4054")
        (alpha-triad-1 "#827840")
        (alpha-triad-2 "#9B9055")
        (alpha-pound1 "#406082")
        (alpha-pound2 "#2367B5")
        (alpha-pound-1 "#5C514E")
        (alpha-pound-2 "#824540")

        (beta "#2e8b57")
        (beta-comp1 "#0E3E24")
        (beta-comp2 "#5DD795")
        (beta-comp-1 "#3E0D08")
        (beta-comp-2 "#8B372E")
        (beta-triad1 "#0E3E25")
        (beta-triad2 "#794198")
        (beta-triad-1 "#584114")
        (beta-triad-2 "#D7A23D")
        (beta-pound1 "#2CB7BE")
        (beta-pound2 "#B0EEF1")
        (beta-pound-1 "#985861")
        (beta-pound-2 "#BE2C8A"))
    (color-theme-install
     `(color-theme-actress
       ((background-color . ,bg)
        (background-mode . dark)
        (border-color . ,bg)
        (cursor-color . ,alpha-triad-1)
        (foreground-color . ,fg))

       (default ((t (:stipple nil
                              :background ,bg
                              :foreground ,fg
                              :inverse-video nil
                              :box nil
                              :strike-through nil
                              :overline nil
                              :underline nil
                              :slant normal
                              :weight normal))))

       (bold ((t (:bold t))))
       (bold-italic ((t (:italic t :bold t))))
       (underline ((t (:underline t))))

       (css-property ((t (:foreground "#0086b3"))));
       (css-selector ((t (:foreground "#990000"))));

       (c-annotation-face ((t (:foreground ,alpha-pound2))))
       
       ;; font lock
       ;;
       (font-lock-builtin-face ((t (:foreground ,alpha-comp2))))
       (font-lock-comment-delimiter-face ((t (:italic t
                                                      :slant italic
                                                      :foreground ,alpha))))
       (font-lock-comment-face ((t (:italic t
                                            :foreground ,alpha
                                            :slant italic))))
       (font-lock-constant-face ((t (:foreground ,alpha-comp2 :bold t))))
;     (font-lock-doc-face ((t (:foreground "#dd1144"))));
       (font-lock-function-name-face ((t (:foreground ,beta-comp-2))))
       (font-lock-keyword-face ((t (:foreground ,alpha-comp2))))
; font-lock-negation-char-face
; font-lock-preprocessor-face
; font-lock-reference-face
       (font-lock-string-face ((t (:foreground ,beta))))
       (font-lock-type-face ((t (:foreground ,beta-comp1))))
       (font-lock-variable-name-face ((t (:foreground ,alpha-triad-1))))
       (font-lock-warning-face ((t (:bold t :foreground ,beta-triad2))))

       
       (fringe ((t (:foreground ,alpha :background ,bg-hi))))
       
       (trailing-whitespace ((t (:background "grey9"))))
       
       (highlight ((t (:background ,bg-hi))))
       (modeline ((t (:background ,bg-hi2 :foreground ,alpha-triad-1))))
       (minibuffer-prompt ((t (:foreground ,fg))))

       (link ((t (:foreground "blue1" :underline t))))
       (link-visited ((t (:underline t :foreground "magenta4"))))

       (secondary-selection ((t (:background "dodger blue"))))
       (region ((t (:background "MidnightBlue"))))
       
       (show-paren-match ((t (:background ,bg-hi :foreground ,fg-hi))))
       (show-paren-mismatch ((t (:background ,beta-pound-2))))))))

;;(add-to-list 'color-themes '(color-theme-actress  "Actress" "Inderjit Gill"))

(color-theme-actress)

(provide 'color-theme-actress)

;;; color-theme-actress.el ends here


       ;; diff
;     (diff-added ((t (:foreground ,green :inverse-video t))))
;     (diff-changed ((t (:foreground ,yellow :inverse-video t))))
;     (diff-removed ((t (:foreground ,red :inverse-video t))))

       ;; org
;     (org-agenda-date-today
;     ((t (:foreground "white" :slant italic :weight bold))) t
;     )
;     (org-agenda-structure
;     ((t (:inherit font-lock-comment-face)))
;     )
;    (org-archived ((t (:foreground ,zenburn-fg :weight bold))))
;     (org-checkbox ((t (:background ,zenburn-bg+2 :foreground "white"
;                                   :box (:line-width 1 :style
;     released-button)
;     ))))
;    (org-date ((t (:foreground ,zenburn-blue :underline t))))
;    (org-deadline-announce ((t (:foreground ,zenburn-red-1))))
;    (org-done ((t (:bold t :weight bold :foreground ,zenburn-green+3))))
;    (org-formula ((t (:foreground ,zenburn-yellow-2))))
;    (org-headline-done ((t (:foreground ,zenburn-green+3))))
;    (org-hide ((t (:foreground ,zenburn-bg-1))))
;    (org-level-1 ((t (:foreground ,zenburn-orange))))
;    (org-level-2 ((t (:foreground ,zenburn-green+1))))
;    (org-level-3 ((t (:foreground ,zenburn-blue-1))))
;    (org-level-4 ((t (:foreground ,zenburn-yellow-2))))
;    (org-level-5 ((t (:foreground ,zenburn-cyan))))
;    (org-level-6 ((t (:foreground ,zenburn-green-1))))
;    (org-level-7 ((t (:foreground ,zenburn-red-4))))
;    (org-level-8 ((t (:foreground ,zenburn-blue-4))))
;    (org-link ((t (:foreground ,zenburn-yellow-2 :underline t))))
;    (org-scheduled ((t (:foreground ,zenburn-green+4))))
;    (org-scheduled-previously ((t (:foreground ,zenburn-red-4))))
;    (org-scheduled-today ((t (:foreground ,zenburn-blue+1))))
;    (org-special-keyword ((t (:foreground ,zenburn-yellow-1))))
;    (org-table ((t (:foreground ,zenburn-green+2))))
;    (org-tag ((t (:bold t :weight bold))))
;    (org-time-grid ((t (:foreground ,zenburn-orange))))
;    (org-todo ((t (:bold t :foreground ,zenburn-red :weight bold))))
;    (org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
;    (org-warning ((t (:bold t :foreground ,zenburn-red :weight bold))))     
