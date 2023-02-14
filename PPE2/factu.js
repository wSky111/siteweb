function calculer ()
{
    var a = document.getElementById("Q1").value;
    var b =  document.getElementById("p1").value;
    var c1 = Number(a)*Number(b);
    result1.innerText= c1;

    var a = document.getElementById("Q2").value;
    var b =  document.getElementById("p2").value;
    var c2 = Number(a)*Number(b);
    result2.innerText= c2;

    var a = document.getElementById("Q3").value;
    var b =  document.getElementById("p3").value;
    var c3 = Number(a)*Number(b);
    result3.innerText= c3;

    var a = document.getElementById("Q4").value;
    var b =  document.getElementById("p4").value;
    var c4 = Number(a)*Number(b);
    result4.innerText= c4;

    var soustotal = Number(c1)+Number(c2)+Number(c3)+Number(c4);
    result5.innerText= soustotal;

    var d = document.getElementById("remise").value;
    var sousremise = Number(soustotal)-(Number(soustotal)*Number(d/100))
    result7.innerText= sousremise

    var e = document.getElementById("taux").value;
    var f = document.getElementById("exp").value;
    var tauxtotal = Number(soustotal)*(Number(e)/100)+Number(f);
    result9.innerText= tauxtotal;


    var solde = Number(sousremise)+Number(tauxtotal);
    result11.innerText= solde;


}
function remplir() {
    const tabDesc = new Array(" ordinateur portable","bureau","écran 22 pouces"," 8 go ram","souris","carte graphique","clavier mécanique","clavier","16 go ram","disque dur nvme 1T","disque dur nvme 500go","32 go de ram","clé usb 64 go","clé usb 32 go","écran 27 pouces");

    var listePrix = document.querySelectorAll(".pu");
    var listeQuant = document.querySelectorAll(".quant");
    var listeDescr = document.querySelectorAll(".descr");
    console.log(listeDescr);

    for (let i = 0; i < listeDescr.length; i++) {
        console.log("HI");

        var iDescr = Math.floor(tabDesc.length *Math.random());
        listeDescr[i].value =  tabDesc[iDescr];

        var quant = Math.floor(10* Math.random()+1);
        var pu = Math.floor(250* Math.random()+1);
        listeQuant[i].value = quant;
        listePrix[i].value = pu;
        
    }
}

function ajout(){
    const table = document.querySelector("table");
    table.innerHTML += ` <tr><td class="des"><input type="text" class="descr" placeholder="desc1"></td><td class="taille2"><input class="quant" type="text" placeholder="0" id="Q1"></td><td class="taille3"><input type="text" class="pu" placeholder="0" id="p1" name="p1"></td><td class="to"><h20 id="result1"></h20></h1></td></tr>`
}
function auto() {
    var total = 0;
    var listePrix = document.querySelectorAll(".pu");
    var listeQuant = document.querySelectorAll(".quant");
    var listeTotal = document.querySelectorAll(".To");

    for (var i=0; i< listePrix.length;i++){
        listeTotal[i].value = parseInt(listeQuant[i].value)*parseInt(listePrix[i].value);
        total= total + parseInt(listeTotal[i].value);
    }
}