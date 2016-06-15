#!/usr/bin/emacs --script

(if (file-exists-p "el-get-install.el")
    (delete-file "el-get-install.el"))

(url-copy-file "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el" "el-get-install.el")
(load-file "el-get-install.el")
