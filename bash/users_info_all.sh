#!/bin/bash

# SCOPE: User adatok legyűjtése és mentése

echo "1 - Listázd ki az összes felhasználónevet."
echo "2 - Jelenleg bejelentkezett felhasználók száma és a felhasználók neve"
echo "Kérlek add meg a sorszámát a lekérdezésnek:"
read input
#10
case $input in
1)
lslogins -o USER
   echo "Szeretnéd menteni a listát? (i/n)"
      read save

         if [[ "$save" -eq "i" ]]
         then
         ma=$(date +"%Y-%m-%d")
         echo "----- Összes felhasználónév ${ma} napon -----" >> ~/tanulas/allusername_$ma.log
         lslogins -o USER >> ~/tanulas/allusername_$ma.log
        echo "Log fájl a főkönyvtáradba mentve!"
        fi    
;;
2)
who --count | grep users | cut -d '=' -f2
who -q | grep -v users
   echo "Szeretnéd menteni a listát? (i/n)"
      read save1
         if [[ $save1 -eq "i" ]]
         then
         ma=$(date +"%Y-%m-%d")
         echo "----- Összes aktív felhasználónév ${ma} napon -----" >> ~/tanulas/allusername_${ma}.log
         who -q | grep -v users >> ~/tanulas/allonlineusername_${ma}.log
         echo "Összesen:" >> ~/tanulas/allonlineusername_${ma}.log
         who --count | grep users | cut -d '=' -f2 >> ~/tanulas/allonlineusername_${ma}.log
        echo "Log fájl a főkönyvtáradba mentve!"
        fi    
;;
*)
echo -e "Nem megfelelő számot adtál meg!"
;;
esac