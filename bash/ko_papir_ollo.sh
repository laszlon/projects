#!/usr/bin/bash

# Kő, papír, olló szimulator.



player1 () {
echo "Ékezet nélkül add meg a szót!"
echo "Az első játékos adja meg a tippjét: "
read player01
}

player2 () {
echo "A második játékos adja meg a tippjét: "
read player02
}

jatek () {
if [[ $player01 == $player02 ]];
then
    echo "Döntetlen!";
elif [[ $player01 == "ko" && $player02 == "papir" ]];
then
    echo "A 2. játékos nyert!";
elif [[ $player01 == "ko" && $player02 == "ollo" ]];
then
    echo "A 1. játékos nyert!";
elif [[ $player01 == "papir" && $player02 == "ko" ]];
then
    echo "A 1. játékos nyert!";
elif [[ $player01 == "papir" && $player02 == "ollo" ]];
then
    echo "A 2. játékos nyert!";
elif [[ $player01 == "ollo" && $player02 == "papir" ]];
then
    echo "A 1. játékos nyert!";
elif [[ $player01 == "ollo" && $player02 == "ko" ]];
then
    echo "A 2. játékos nyert!";
else
    echo "Nem megfelelő szó került megadásra! (ko, papir, ollo)";
    game
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
  player1
  player2
  jatek
  playAgain
}

game