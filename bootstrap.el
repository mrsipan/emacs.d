#!/usr/bin/emacs --script

(if (file-exists-p "el-get-install.el")
    (delete-file "el-get-install.el"))

(let ((dir-name "tmp/auto-saves"))
  (unless (file-exists-p dir-name)
    (print "Make tmp directory")
    (make-directory dir-name t)))

(url-copy-file
 "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el"
 "el-get-install.el")

(load-file "el-get-install.el")
