#!/bin/bash

# SCOPE: Host és DNS információk megjelenítése, valamint mentése

echo "----------------------------------------"
echo "Hostname és DNS információk"
echo "----------------------------------------"

echo "Host név: " $(hostname)
echo "IP cím: " $(hostname -i)
echo "DNS domain: " $(hostname -A)

echo "Szeretnéd menteni? (i/n)"
read save

if [[ $save -eq "i" ]]
then
echo "----------------------------------------" >> ~/$(hostname)_info.log
echo "Hostname és DNS információk" >> ~/$(hostname)_info.log
echo "----------------------------------------" >> ~/$(hostname)_info.log

echo "Host név: " $(hostname) >> ~/$(hostname)_info.log
echo "IP cím: " $(hostname -i) >> ~/$(hostname)_info.log
echo "DNS domain: " $(hostname -A) >> ~/$(hostname)_info.log
fi