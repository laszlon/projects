# Linux üzemeltetés

## VM kialakítása
- Centos stream 8
- 2 mag
- 2 GB RAM
- 100 GB disk

## Partíciók

![Partíciók tábla](https://github.com/laszlon/sysadmin/blob/main/linux/particiok.JPG)

## Finomhangolás:

- szerver statikus IP cím, DNS beállítása
- root user SSH-n keresztül ne tudjon belépni. (Biztonsági szempont)
- SElinux funkciót kapcsolása
- A szerverhez plusz disk hozzáadása (50GB). A file rendszer: XFS
- Mountolási pont /DATA, címkéje DATA
- Telepítés: HTTPD web szerver szolgáltatás, gép indulásakor induljon automatikusan.
- Telepítés: FTP szerver szolgáltatás, gép indulásakor induljon automatikusan.
