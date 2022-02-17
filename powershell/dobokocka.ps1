function kerdes {
Write-Output "Hány kockával szeretnél dobni? 1 vagy 2?"
Set-Variable -Name "db" -Value (Read-Host) -Scope global
}

function dobas {
if ($db -eq 1) {
   Write-Output "A dobott érték: $(Get-Random -Minimum 1 -Maximum 6)"
}
elseif ($db -eq 2) {
    Write-Output "Az első kocka értéke: $(Get-Random -Minimum 1 -Maximum 6)"
    Write-Output "A második kocka értéke: $(Get-Random -Minimum 1 -Maximum 6)"
}
}

function playAgain {
    Write-Output "Szeretnél újra dobni? (i/n)"
    $play = Read-Host
    if ($play -eq "i") {
        game
    }

}

function game {
    kerdes
    dobas
    playAgain
}

game