# Active Directory

A következőben egy Teszt Kft szervezeti egységet, majd ennek mentén az erre épülő Active Directory struktúrát alakítom ki. A szervezeti egységek kialakítását követően szabályok kiadás, valamint automatizálást elősegítő scripteket is készíteni fogok.

## Elökészület, szerver beállítása

A megfelelő működéshez a szervernek fix (statikus) IP címmel kell rednelkeznie. Az automatikus Windows frissítéseket biztonsági okokból ki kell kapcsolni.

![Szerver adatok](https://github.com/laszlon/sysadmin/blob/main/windows/server_base_set.JPG)

## Teszt Kft

Szervezeti felépítés (Szervezeti egységekhez tartozó informatikai eszközök elnevezése):

```
- Vezetőség (CE)
- Pénzügy (FI)
- HR (HR)
- IT (IT)
- Marketing (MR)
- Projekt csapatok (PT)
   - Team 1
   - Team 2
   - Team 3
```
Informatikai eszközök elnevezése:

```
- Szerver (S)
- Munkaállomás (W)
- Laptop (L)
- Nyomtató (P)
```
A rövidítéseknek köszönhetően a gépek egyedi nevet kapnak, aminek köszönhetően gyorsabban beazonosíthatók.
A nevek a Típus + szervezeti egység + eszköz száma kombinációból adódik össze.

Példa: HR osztályon található nyomtató azonosítója, P-HR-001.

![AD struktúra](https://github.com/laszlon/sysadmin/blob/main/windows/AD_struktura.JPG)

## Házirendek

A kialakítás során új OU-k kerülnek kialakításra, nem az alapértelmezett tartományházirendet fogom módosítani.

Főbb beállítások:
```
- PC-k vezérlőpultja letiltásra kerül (kivéve IT)
- Jelszó legalább 8 karakter, valamint előző 3 nem lehet használható újra.
- Vendék profil letiltása
- Parancssor nem futtatható
- Hordosható tároló nem csatlakoztatható a PC-hez
-
```

![GPO beállítások](https://github.com/laszlon/sysadmin/blob/main/windows/GPO_1.JPG)
![GPO beállítások](https://github.com/laszlon/sysadmin/blob/main/windows/GPO_2.JPG)
![GPO beállítások](https://github.com/laszlon/sysadmin/blob/main/windows/GPO_3.JPG)

## Scriptek
A scriptek PowerShell-ben készülnek.

```
- [User létrehozás](https://github.com/laszlon/sysadmin/blob/main/powershell/create_user.ps1)
- User törlés
- User módosítás
- Fájlok mozgatása
- Szoftverfrissítések
- Biztonsági másolás
-
-
```