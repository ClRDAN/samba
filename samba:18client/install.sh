#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
# -------------------------------------
cp /opt/docker/pam_mount.conf.xml /etc/security/
cp /opt/docker/system-auth.edt /etc/pam.d/
cp /opt/docker/nsswitch.conf /etc/
ln -fs /etc/pam.d/system-auth.edt /etc/pam.d/system-auth
useradd -g users local01
useradd -g users local02
useradd -g users local03
echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02
echo "local03" | passwd --stdin local03
authconfig --enableshadow --enablelocauthorize --enableldap --ldapserver='ldap' --ldapbase='dc=edt,dc=org' --enableldapauth --updateall
/usr/sbin/nslcd
/usr/sbin/nscd

