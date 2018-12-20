# SAMBA
## @edt ASIX M06 2018-2019

Podeu trobar les imatges docker al Dockerhub de [Aitor Galilea](https://hub.docker.com/u/ClRDAN/)


ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **samba:18homes** Servidor SAMBA *shares* que comparte los homes de usuarios LDAP y locales.


#### Execució

```
docker run --rm --network sambanet --name sambahome --hostname sambahome -it agalilea/samba:18homes
```
