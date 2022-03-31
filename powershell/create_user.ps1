#Felhasználó létrehozása jelszóval, valamint hozzáadás csoporthoz
#A lenti script Active Directory környezetben módosítást igényel, AD parancsokat kell használni local helyett.
$pass = Read-Host -AsSecureString
New-LocalUser "BekrePal" -Password $pass -FullName "Bekre Pál" -Description "Pénzügy"
Add-LocalGroupMember -Group "penzugy" -Member "BekrePal"