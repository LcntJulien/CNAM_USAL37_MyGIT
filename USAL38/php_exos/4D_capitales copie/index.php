<?php

$pays = [
    'France'     => 'Paris',
    'Belgique'   => 'Bruxelles',
    'Allemagne'  => 'Berlin',
    'Italie'     => 'Rome',
    'Maroc'      => 'Rabat',
    'Espagne'    => 'Madrid',
    'Portugal'   => 'Lisbonne',
    'Angleterre' => 'Londres'
];

// array_key_exists()
// empty()
// isset()

function capitalCity(string $nom_pays)
{
    global $pays; // global permet d'accéder à une variable déclarée à l'extérieur d'une fonction

    if(array_key_exists($nom_pays, $pays)) {
        return $pays[$nom_pays];
    }
    else {
        return "Capitale inconnue";
    }    
}


$capitale = capitalCity('France'); // affiche Paris
echo $capitale;
echo capitalCity('Belgique'); // affiche Bruxelles
echo capitalCity('Suisse'); // affiche Capitale inconnue




