;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; Decrease delay until which-key pops up.
(setq which-key-idle-delay 0.4)

(setq doom-font (font-spec :family "Consolas NF" :size 14))

;; Press ctrl+alt+tab to format region with clang-format
(load "/usr/share/clang/clang-format.el")
(global-set-key [C-M-tab] 'clang-format-region)
