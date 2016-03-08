;; funcs.el -*- emacs-lisp -*-

;; Functions used by Common Lisp snippets.

(defun enclosing-class-name ()
  "Crude approximation of returning the enclosing class name."
  (save-excursion
    (while (progn
	     (beginning-of-line)
	     (not (looking-at "^(")))
      (previous-line))
    (if (looking-at "^(defclass \\(\\(?:\\sw\\|\\s_\\)*\\)")
	(match-string 1)
      "")))

;; EOF
