function connecter ()
{
    var id = prompt("Donner votre nom d utilisateur ");
    var mdp = prompt("Entrer votre mot de pass");

    if (id =="admin" && mdp == "admin")
    {
        document.write("bienvenue: "+ id);
    }
    else{
        alert("acces refuse");
    }

}


function shell_caractere () {
    var chaine= prompt("entre votre mot")
    document.write(chaine.toLowerCase()+"<br>");
    document.write(chaine.toUpperCase()+"<br>");
    document.write("la chaine contient "+chaine.length+"caracteres"+"<br>");
    document.write("La premiere lettre est  "+chaine.substr (0,1)+"<br>");


}

function boucle (){
    var ligne = prompt("entrer le nombre de ligne");

    document.write("<table border=2 width=40%;>");
    for (i=1; i <=ligne; i++)
    {
        document.write("<tr><td>"+i+"</td><td>*</td><td>*</td></tr>") 
    }
    document.write("</table>");
   
        

    }



function tableau (){
    document.write("<table border=2 width=30%;>");
    for (i=0; i <= 5; i++ )
    {
        document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")

    }
    document.write("</table>");


}