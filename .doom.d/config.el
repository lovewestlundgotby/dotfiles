;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; Decrease delay until which-key pops up.
(setq which-key-idle-delay 0.4)

;; (setq display-line-numbers-type 'relative)
(setq display-line-numbers-type nil)

(setq doom-font (font-spec :family "Consolas NF" :size 14))

;; See modeline plugin doom-modeline for options.
(setq doom-modeline-buffer-file-name-style 'truncate-upto-root)

;; Do not continue to comment new lines when o/O from a commented line
(setq +evil-want-o/O-to-continue-comments 'nil)

;; Press ctrl+alt+tab to format region with clang-format
(load "/usr/share/clang/clang-format.el")
(global-set-key [C-M-tab] 'clang-format-region)

(setq c-default-style "bsd")
