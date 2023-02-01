<html>
    <body>
        <head>
        <meta charset="UTF-8">
</head>
<?php
$a=$_REQUEST['n1'];
$b=$_REQUEST['n2'];

if ( $a == 'admin' and $b == 'admin'){
    echo "Bienvenue ".$a;
    echo "<br>Vous etes connecter le ".Date("j.m.y")."<br>";
    echo "il est ".Date("H:i:s")."<br>";
}
else {
    echo "Mot de passe erroné";
    
    
}

?>
<a href="javascript:history.back()">Essayez a nouveau</a>
</body>
</html>
