#! /bin/bash
# @edt ASIX M06 2018-2019
# instalacion servidor samba/pam
# -------------------------------------
mkdir /var/lib/samba/public
chmod 777 /var/lib/samba/public
cp /opt/docker/* /var/lib/samba/public/.
useradd -g users local01
useradd -g users local02
useradd -g users local03
echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02
echo "local03" | passwd --stdin local03

cp /opt/docker/smb.conf /etc/samba/smb.conf
authconfig --enableshadow --enablelocauthorize --enableldap --ldapserver='ldap' --ldapbase='dc=edt,dc=org' --enableldapauth --updateall
/usr/sbin/nslcd
/usr/sbin/nscd
/usr/sbin/smbd
/usr/sbin/nmbd

smbpasswd -a pere
smbpasswd -a pau
smbpasswd -a anna
smbpasswd -a marta
smbpasswd -a admin
smbpasswd -a local01
smbpasswd -a local02
smbpasswd -a local03
mkdir -p /tmp/home/pere /tmp/home/marta/ /tmp/home/anna /tmp/home/pau /tmp/home/admin
chown pere.hisx2 /tmp/home/pere
chown pau.hisx2 /tmp/home/pau
chown anna.hisx2 /tmp/home/anna
chown marta.hisx2 /tmp/home/marta
chown pere.wheel /tmp/home/admin
