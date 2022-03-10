#!/bin/bash

# SCOPE: Futó folyamatokkal történő műveletek végrehajtása.

echo "1 - Listázd ki az összes folyamatot."
echo "2 - Folyamat leállítása"
echo "Kérlek add meg a sorszámát a lekérdezésnek:"
read input

case $input in
1)
ps -aux
   echo "Szeretnéd menteni a listát? (i/n)"
      read save

         if [[ $save -eq "i" ]]
         then
         ma=$(date +"%Y-%m-%d")
         ora=$(date +"%H:%M")
         echo "----- Összes folyamat ${ma} ${ora}  -----" >> ~/tanulas/allprocess_$ma.log
         ps -aux >> ~/tanulas/allprocess_$ma.log
         echo "Log fájl a főkönyvtáradba mentve!"
        fi    
;;
2)
echo "Kérlek add meg a folyamat PID azonosítóját!"
read pid_num
if [[ $pid_num >= 0 ]]
then
kill $pid_num
echo "Folyamat leállítva"
else
echo "Valós értéket adj meg!"
fi
;;
*)
echo -e "Nem megfelelő számot adtál meg!"
;;
esac