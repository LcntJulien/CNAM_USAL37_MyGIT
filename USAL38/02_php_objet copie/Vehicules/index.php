<?php 
require_once 'Voiture.php';

use Vehicules\Voiture;





$v1 = new Voiture();

$v1->setMarque("Suziki");

var_export($v1);

echo "\n";






$v2 = new Voiture();

$v2->setMarque("Honda");

$v2->setModele("Civic");

var_export($v2);

