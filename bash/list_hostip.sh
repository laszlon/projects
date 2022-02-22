#!/bin/bash
#aktuális host IP cím kiíratása
hostname -I | awk '{print $1}'
