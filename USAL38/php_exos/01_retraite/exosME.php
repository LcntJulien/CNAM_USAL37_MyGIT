<?php

$age;
$retraite = 55;
$différenceMoins = $retraite - $age;
$différencePlus = $age - $retraite;

    if($age < $retraite) {
        echo "Vous serais à la retraite dans $différenceMoins ans";
    }
    else if($age > $retraite) {
        echo "Vous êtes à la retraite depuis $différencePlus ans";
    }
    else 
        echo "Vous êtes à la retraite cette année";