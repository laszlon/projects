#!/usr/bin/bash

# Dobokocka szimulator.

kerdes () {
echo "Hány kockával szeretnél dobni? 1 vagy 2?"
read db
}

dobas () {
if [ $db -eq 1 ]
    then
    kocka=$(( ( RANDOM % 6 )  + 1 ))
    echo "A dobott érték: " $kocka
else
    kocka=$(( ( RANDOM % 6 )  + 1 ))
    echo "Az első kocka értéke: " $kocka
    kocka=$(( ( RANDOM % 6 )  + 1 ))
    echo "A második kocka értéke: " $kocka
fi
}

playAgain () {
  echo "Szeretnétek még egyet játszani? (i/n) "
  read play
  if [[ $play == "i" ]]; 
  then
    game
  fi
}

game () {
  kerdes
  dobas
  playAgain
}

game