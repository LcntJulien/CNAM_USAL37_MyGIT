<?php 
$c = (1 + 2) * 4;

$condition = ($a == $b);



$a = 1;
$b = 2;

if (($a < $b || $a == $b) && $b == 5)
{
    // 1
}

if((true || false) && $b == 5) {}

if(true && $b == 5) {}

if(true && false) {}

if(true) { /* toto */ }



if (($a < $b || $a == $b) && $b == 5)
{
    // 1
}
elseif ($a > $b) {
    // 2
}
else {
    // 3
}

// suite