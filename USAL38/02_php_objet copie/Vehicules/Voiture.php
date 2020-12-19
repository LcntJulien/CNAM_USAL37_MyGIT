<?php 

namespace Vehicules;


class Voiture 
{
    private $marque = "Peugeot";

    private $modele = "207";

    public function getMarque()
    {
        return $this->marque;
    }

    public function setMarque(string $nouvelleMarque)
    {
        $longueur = strlen($nouvelleMarque);

        if($longueur >= 2) {
            $this->marque = $nouvelleMarque;
        }
        else {
            throw new \Exception("Nom trop court !");
        }
        
    }
    public function setModele(string $nouveauModele)
    {
        $this->modele = $nouveauModele;
    }
}  // fin de la classe Voiture  
