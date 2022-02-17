function player1 {
Write-Output "Az első játékos adja meg a tippjét: "
Set-Variable -Name "player01" -Value (Read-Host) -Scope global
}

function player2 {
Write-Output "A második játékos adja meg a tippjét: "
Set-Variable -Name "player02" -Value (Read-Host) -Scope global
}

function jatek {
if ($player01 -eq $player02) {
    Write-Host "Döntetlen!"
}
elseif ($player01 -eq "kő" -and $player02 -eq "papír") {
    Write-Host "Az 2.-es játékos nyert!"
}
elseif ($player01 -eq "kő" -and $player02 -eq "olló") {
    Write-Host "Az 1.-es játékos nyert!"
}
elseif ($player01 -eq "papír" -and $player02 -eq "kő") {
    Write-Host "Az 2.-es játékos nyert!"
}
elseif ($player01 -eq "papír" -and $player02 -eq "olló") {
    Write-Host "Az 1.-es játékos nyert!"
}
elseif ($player01 -eq "olló" -and $player02 -eq "papír") {
    Write-Host "Az 1.-es játékos nyert!"
}
elseif ($player01 -eq "olló" -and $player02 -eq "kő") {
    Write-Host "Az 2.-es játékos nyert!"
}
else {
    Write-Host "Nem megfelelő szó került megadásra!"
    game
}
}

function playAgain {
    Write-Host "Szeretnétek még egyet játszani? (i/n) "
    $play = Read-Host
    if ($play -eq "i") {
        game
    }
}

function game {
    player1
    player2
    jatek
    playAgain
}

game