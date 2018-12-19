#! /bin/bash
# @edt ASIX M06 2018-2019
# startup.sh
# -------------------------------------

/opt/docker/install.sh && echo "Install Ok"
/usr/sbin/smbd && echo "smb Ok"
/usr/sbin/nmbd && echo "nmb  Ok"
/bin/bash

