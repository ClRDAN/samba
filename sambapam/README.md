# SAMBA
## @edt ASIX M06 2018-2019

Las imágenes se encuentran en el Dockerhub de [Aitor Galilea](https://hub.docker.com/u/ClRDAN/)

### Descripción general:
Práctica de integración de las tecnologías PAM, LDAP y SAMBA. En esta parte creamos un servidor SAMBA capaz de conectar a un servidor LDAP y exportar directorios HOME de usuarios locales y LDAP.
### Pasos seguidos:
   La configuración del servidor está automatizada mediante el Dockerfile y los scripts startup.sh e install.sh. Estos son los pasos que llevan a cabo.
* Generamos una imagen en la que instalamos los paquetes samba samba-client cifs-utils vim less openldap-clients nss-pam-ldapd passwd authconfig.
* Creamos la configuración de SAMBA (/etc/samba/smb.conf)
* Configuramos la conexión al servidor LDAP (authconfig)
* Arrancamos los servicios SAMBA y LDAP (nslcd, nscd, smbd y nmbd)
* Creamos los usuarios SAMBA, los directorios que se van a compartir y les asignamos los permisos adecuados.
### Imágenes:

* **samba:18homes** Servidor SAMBA *shares* que comparte los homes de usuarios LDAP y locales.
* **sambaclient:18**


#### Execució

```
docker run --rm --network sambanet --name sambahome --hostname sambahome -it agalilea/samba:18homes
```
