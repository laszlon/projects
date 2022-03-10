#!/bin/bash

# SCOPE: User információk megjelenítése

echo "Add meg a keresett felhasználónevet:"
read $u_name

lslogins $(u_name)