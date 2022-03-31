#Felhasználó módosítások listája. Az adott sor előtti # törlésével futtatható.
#A lenti script Active Directory környezetben módosítást igényel, AD parancsokat kell használni local helyett.

## Aktuális beállítások lekérdezése
#Get-LocalUser -Name BekrePal | select *

## Leírás módosítása
#Set-LocalUser -Name BekrePal -Description "Pénzügy2"

## Jelszó módosítása
#$pass = Read-Host -AsSecureString
#$username = Get-LocalUser -Name "BekrePal"
#$username | Set-LocalUser -Password $pass

## Teljes név változtatása
#Set-LocalUser -Name BekrePal -FullName "Bekre Pál Imre"

## Előre megadható egy fiók lejárata, ez törölhető a "-AccountNeverExpires" paranccsal.
#Set-LocalUser -Name BekrePal -AccountExpires 2022.06.30

## User letiltása
#Disable-LocalUser -Name BekrePal

## User tiltás feloldása
#Enable-LocalUser -Name BekrePal

# csoporttagság módosítása
#Remove-LocalGroupMember -Group "docker-users" -Member "BekrePal"
#Add-LocalGroupMember -Group "penzugy" -Member "BekrePal"