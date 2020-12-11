    <?php 
    // déclaration affichage variables
    $texte_bienvenue = "Bienvenue !<br>";
    $monEntier = 6;
    $_nbDec = 9.6;
    $bool = true;


    // affichage de mes variables
    echo $texte_bienvenue;
    echo $monEntier;
    echo "<br>";
    echo $_nbDec;
    echo "<br>";
    echo $bool;
    echo "<br>";

     

    // modification de  variables
    $texte_bienvenue = "Welcome !<br>";

    // modification de  variables
    echo $texte_bienvenue;
    echo gettype($bool);

    $x = 5;
    $y = 7;
    $z = $x + $y;
    echo $z;
    echo "<br>";

    $soustraction = $y - $x;
    echo $soustraction;
    echo "<br>";

    $division = $y - $x;
    echo $division;
    echo "<br>";

    $multiplication = $y * $x;
    echo $multiplication;
    echo "<br>";

    $addition = $y + $x;
    echo $addition;
    echo "<br>";

    // constantes
    define("BLEU", "blue");
    echo BLEU;
    echo "<br>";

    


?>