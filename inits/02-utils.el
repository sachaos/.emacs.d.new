;;;;;;;;;;;
;; Utils ;;
;;;;;;;;;;;

;; insert date and time

(defvar current-date-format "%Y/%m/%d"
  "Format of date to insert with `insert-current-date' func
See help of `format-time-string' for possible replacements")

(defvar current-time-format "%H:%M:%S"
  "Format of date to insert with `insert-current-time' func.
Note the weekly scope of the command's precision.")

(defun insert-current-date ()
  "insert the current date and time into current buffer.
Uses `current-date-format' for the formatting the date/time."
  (interactive)
  (insert (format-time-string current-date-format (current-time)))
  (insert "\n")
  )

(defun insert-current-time ()
  "insert the current time (1-week scope) into the current buffer."
  (interactive)
  (insert (format-time-string current-time-format (current-time)))
  (insert "\n")
  )
