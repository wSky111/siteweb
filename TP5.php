<html>
    <head>
        <meta charset="UTF-8">
    </head>
    <body>
<h1>Affichages des données saisies</h1>

<?php
$a=$_REQUEST['n1'];
$b=$_REQUEST['n2'];

echo "L'additionn est ".($a+$b);
echo "<br>";


echo "La soustraction est " .($a-$b);
echo "<br>";

echo "La division est ".$a/$b;
echo "<br>";

echo "La multiplication est ".$a*$b;
echo "<br>";

?>


<a href="Javascript.history.back()">.Essayez a nouveau</a>
</body>
</html>