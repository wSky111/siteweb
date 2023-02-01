<html>
    <head>
        <meta charset="UTF-8">
    </head>
    <body>
<h1>Affichages des données saisies</h1>

<?php
$a=$_REQUEST['n1'];
$b=$_REQUEST['n2'];
$c=$_REQUEST['ope'];
if ($c == '+'){
    echo $a+$b;
    echo "<br>";
} else if ($c == '-'){
    echo $a-$b;
    echo "<br>";
} else if ($c =='/'){
    echo $a/$b;
    echo "<br>";
} else if ($c =='*'){
    echo $a*$b;
    echo "<br>";
}

?>


<a href="javascript.history.back()">.Essayez a nouveau</a>
</body>
</html>