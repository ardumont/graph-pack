;;; graph-pack.el --- Graph configuration            -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Antoine Romain Dumont

;; Author: Antoine Romain Dumont <antoine.romain.dumont@gmail.com>
;; Keywords: convenience

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(use-package graphviz-dot-mode
  :config
  (custom-set-variables '(graphviz-dot-view-command "eog %s"))
  (add-hook 'graphviz-dot-mode-hook
            (lambda ()
              (define-key graphviz-dot-mode-map "\C-cv" nil)
              (define-key graphviz-dot-mode-map "\C-cp" nil)
              (define-key graphviz-dot-mode-map "\C-cc" nil)
              (define-key graphviz-dot-mode-map "\C-c\C-c" nil)
              (define-key graphviz-dot-mode-map "\C-c\C-u" nil)

              ;; (define-key graphviz-dot-mode-map "\r"       'electric-graphviz-dot-terminate-line)
              ;; (define-key graphviz-dot-mode-map "{"        'electric-graphviz-dot-open-brace)
              ;; (define-key graphviz-dot-mode-map "}"        'electric-graphviz-dot-close-brace)
              ;; (define-key graphviz-dot-mode-map ";"        'electric-graphviz-dot-semi)
              ;; (define-key graphviz-dot-mode-map "\M-\t"    'graphviz-dot-complete-word)
              ;; (define-key graphviz-dot-mode-map "\C-\M-q"  'graphviz-dot-indent-graph)
              (define-key graphviz-dot-mode-map (kbd "C-c G p") 'graphviz-dot-preview)
              (define-key graphviz-dot-mode-map (kbd "C-c G c") 'compile)
              (define-key graphviz-dot-mode-map (kbd "C-c G v") 'graphviz-dot-view)
              (define-key graphviz-dot-mode-map (kbd "C-c G C-c") 'comment-region)
              (define-key graphviz-dot-mode-map (kbd "C-c G C-u") 'graphviz-dot-uncomment-region))))

(provide 'graph-pack)
;;; graph-pack.el ends here
