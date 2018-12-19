# SAMBA
## @edt ASIX M06 2018-2019

Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)


ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **pamhost:18base** Servidor SAMBA bàsic amb *shares* d'exemple.


#### Execució

```
docker run --rm --name samba -h samba --net sambanet -it edtasixm06/samba:18base 
```

#### Shares d'exemple

```
[global]
        workgroup = MYGROUP
        server string = Samba Server Version %v
        log file = /var/log/samba/log.%m
        max log size = 50
        security = user
        passdb backend = tdbsam
        load printers = yes
        cups options = raw
[homes]
        comment = Home Directories
        browseable = no
        writable = yes
;       valid users = %S
;       valid users = MYDOMAIN\%S
[printers]
        comment = All Printers
        path = /var/spool/samba
        browseable = no
        guest ok = no
        writable = no
        printable = yes
[documentation]
        comment = Documentació doc del container
        path = /usr/share/doc
        public = yes
        browseable = yes
        writable = no
        printable = no
        guest ok = yes
[manpages]
        comment = Documentació man  del container
        path = /usr/share/man
        public = yes
        browseable = yes
        writable = no
        printable = no
        guest ok = yes
[public]
        comment = Share de contingut public
        path = /var/lib/samba/public
        public = yes
        browseable = yes
        writable = yes
        printable = no
        guest ok = yes
[privat]
        comment = Share d'accés privat
        path = /var/lib/samba/privat
        public = no
        browseable = no
        writable = yes
        printable = no
        guest ok = yes
```

