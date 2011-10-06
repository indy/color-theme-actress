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
        (secondary "#2f4f4f")  ; secondary elements (e.g. comments)

        (olive "#a2cd5a")     ; "DarkOliveGreen3"
        (builtin "#b0c4de")   ; "LightSteelBlue"
        (function "#b22222")  ; "firebrick"
        (keyword "#00c5cd")   ; "turquoise3"
        (warning "#ffc0cb")   ; "Pink"
        (string "#2e8b57")    ; "SeaGreen"
        (type "#98fb98")      ; "PaleGreen"
        (variable "#e79a32")  ; "peru"
        (err "#ff0000"))
    (color-theme-install
     `(color-theme-actress
       ((background-color . ,bg)
        (background-mode . dark)
        (border-color . ,bg)
        (cursor-color . ,olive)
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
                                        ;     (cursor ((t (:background "#a7a7a7"))));

       (font-lock-builtin-face ((t (:foreground ,builtin))))
       (font-lock-comment-delimiter-face ((t (:italic t
                                                      :slant italic
                                                      :foreground ,secondary))))
       (font-lock-comment-face ((t (:italic t :foreground ,secondary :slant italic))))

;     (font-lock-constant-face ((t (:foreground "#990073"))));
;     (font-lock-doc-face ((t (:foreground "#dd1144"))));

       (font-lock-function-name-face ((t (:foreground ,function))))
       (font-lock-keyword-face ((t (:bold t
                                          :weight bold
                                          :foreground ,keyword))))
       (font-lock-warning-face ((t (:foreground ,warning))))
       (font-lock-string-face ((t (:foreground ,string))))
       (font-lock-type-face ((t (:foreground ,type))))
       (font-lock-variable-name-face ((t (:foreground ,variable))))

       (fringe ((t (:foreground ,secondary :background ,bg-hi))))
       
       (trailing-whitespace ((t (:background "grey9"))))
       
       (highlight ((t (:background ,bg-hi))))
       (modeline ((t (:background ,bg-hi2 :foreground ,olive))))
       (minibuffer-prompt ((t (:foreground ,secondary))))

       (link ((t (:foreground "blue1" :underline t))))
       (link-visited ((t (:underline t :foreground "magenta4"))))

       (secondary-selection ((t (:background "dodger blue"))))
       (region ((t (:background "MidnightBlue"))))
       
       (show-paren-match ((t (:background ,bg-hi :foreground ,fg-hi))))
       (show-paren-mismatch ((t (:background err))))))))

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
