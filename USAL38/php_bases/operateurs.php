<?php

$y = 20;
// Syntaxe raccourcie : $y = $y + 100;
$y += 100;
echo $y;

$z=50;
$z -= 25;
echo $z; // Affiche 25

$i=5;
$i *= 6;
echo $i; // Affiche 30

$j=10;
$j /= 5;
echo $j; // Affiche 2
echo "<br>";

$x = "Hello";
// $x = $x . "world!";
$x .= "world!";
echo $x; // Affiche Helloworld!
echo "<br>";

$x .= 10;
// $x = $x + 1;
echo ++$x; // Affiche 11
echo "<br>";
$y=10;
echo $y++; // Affiche 10
echo "<br>";
echo $y;

$z=5;
echo --$z; // Affiche 4
echo "<br>";
$i=5;
$x =  "La nouvelle valeur de ma variable est " . $i--; // Affiche 5

$x = "La nouvelle valeur de ma variable est "; 
$x .= $i++;

echo $x;
echo $x;

echo "<br>";
$x = 100;
$y = "100";

var_dump($x == $y); // est ce que la valeur $x est égale à la valeur de $y

var_dump($x === $y); // est ce que le type et la valeur $x sont égaux au type et à la valeur de $y

var_dump($x != $y); // est ce que la valeur $x est différente à la valeur de $y

var_dump($x !== $y); // est ce que le type ou la valeur $x sont différents du type ou de la valeur de $y

$a=50;
$b=90;
var_dump($a > $b);
var_dump($a < $b);

/*
Opérateurs logiques
 */
echo "<h1>Exemples sur les opérateurs logiques</h1> <br>";
var_dump(10 AND 0);
var_dump(10 OR 0);
var_dump(0 OR 1);

$a = 1;
$b = 2;
$c = 3;
$d = 3;
var_dump($a < $b AND $c == $d);
var_dump($a < $b OR $c != $d);

var_dump($a < $b && $c ==$d);
var_dump($a < $b || $c !=$d);

var_dump(!($a < $b || $c != $d));
var_dump(!($a < $b) || $c != $d);


?>