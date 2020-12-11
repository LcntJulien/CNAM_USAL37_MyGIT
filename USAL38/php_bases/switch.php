<?php

/*
1 : avancer
2 : reculer
3 : tourner a gauche
4 tourner à droite
*/

$cmd = 4;


if ($cmd == 1) {
    echo "J'avance";
} elseif ($cmd == 2) {
    echo " Je recule";
} elseif ($cmd == 3) {
    echo "Je tourne a gauche";
} elseif ($cmd == 4) {
    echo "Je tourne a droite";
} else {
    echo "Je ne fais rien";
}


switch ($cmd) {
    case 1:
        echo "J'avance";
        break;
    case 2:
        echo " Je recule";
        break;
    case 3:
        echo "Je tourne a gauche";
        break;
    case 4:
        echo "Je ne fais rien";
        break;
}
