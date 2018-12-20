# SAMBA
## @edt ASIX M06 2018-2019

Podeu trobar les imatges docker al Dockehub de [ClRDAN](https://hub.docker.com/u/ClRDAN/)


ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **sambaclient:18** cliente que monta los homes de usuarios locales y LDAP desde un servidor SAMBA.


#### Execució

```
samba:18client]$ docker run --rm --privileged --network sambanet --name client --hostname client -it agalilea/sambaclient:18
```
