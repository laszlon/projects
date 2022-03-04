#!/bin/bash

# Ütemezett feladat, a  reggeli rendszer adatokat egy log fájlba kiírja.

output=/home/nemethl0415/tanulas/reggel_pc_info-$(date +%F).log
time=$(date +"%Y.%m.%D")
timenow=$(date +"%H:%M:%S")
        echo "----------" >> $output
        echo $timenow >> $output
        echo "----------" >> $output
        free >> $output
        echo "---------- Memória használat ----------" >> $output
        ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >> $output
        echo "---------- CPU használat ----------" >> $output
        ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head >> $output


# A fenti script csak egyszer fut le, az automatizáláshoz a crontab-ba az alábbi sort kell felvinni:
# A példa kedvéért a reggeli user belépési időszakra vonatkozóan fusson.
# 7-9 óráig, 15 percenként és hétköznap
#
#  15 7-8 * * 1-5 /home/nemethl0415/tanulas/reggeli_terheles.sh

