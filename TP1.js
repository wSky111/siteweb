function calcul_moyenne ()
{
    var note1= prompt("donner la première note:");
    var coef1= prompt ("Donner le premier coeff");
    var note2= prompt("donner la deuxième note:");
    var coef2= prompt ("Donner le deuxieme coeff");
    var note3= prompt("donner la troisième note:");
    var coef3= prompt ("Donner le troisieme coeff");

    var somme= Number (note1)*Number(coef1)+ Number(note2)*(coef2)+ Number(note3)*Number(coef3);

    document.write ("Voici la somme: " + somme+"<br>");

    var moyenne= somme/3;

    document.write ("Voici la moyenne: "+ moyenne+"<br>");

    if (moyenne<10)
    {
    document.write ("Vous etes redoublent");
    document.bgColor="red"
    }
    else
    {
    document.write ("Vous etes admis");
    document.bgColor="green"
    }
}


function test_age ()
{
    var age= prompt ("Rentrer votre age");

    if (age<18)
    {
    document.write ("Vous etes mineur");
    document.bgColor="red"
    }
    else
    {
    document.write ("Vous etes majeur");
    document.bgColor="green"
    }

}

function affichage_simple ()
{
    var nom= prompt ("donner votre nom");
    var prénom= prompt ("donner votre prénom");

    document.write ("<div style='border:2px solid grey;text-align:center;font-size:25px; height:30px;width:1000px;margin:auto;color:red;'>")
    document.write ("Bonjour"+ " "+ prénom +" "+ nom);
    document.write ("</div>")
    
}

function couleur ()
{
    var c= prompt("Rentrer la couleur a changer");

    if (c =="bleu" || c == "Bleu" || c == "BLEU")
    
    document.body.style.background="blue";
    
    else if (c =="rouge" || c == "Rouge" || c == "ROUGE")
    
    document.body.style.background="red";

    else if (c =="vert"|| c == "Vert" || c == "VERT")
    
    document.body.style.background="greenyellow";

    else if (c =="jaune" || c == "Jaune" || c == "JAUNE")
    
    document.body.style.background="yellow";
    

    else
    alert ("couleur non comprise");
    
    
}
