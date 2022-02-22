#!/usr/bin/bash
#Névnap kereső script. Fájlból beolvasás.

MA=`date "+%m%d"`
echo $MA

grep $MA nev_list.txt | cut -d" " -f2

