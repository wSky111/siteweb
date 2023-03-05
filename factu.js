function calculer ()
{
  var total = 0;
  var listeprix = document.querySelectorAll(".pu");
  var listeqte = document.querySelectorAll(".quant")
  var listetotale = document.querySelectorAll(".totalligne")

  for (var i =0; i<listeprix.length;i++){
    listetotale[i].value = parseInt(listeqte[i].value)*parseInt(listeprix[i].value);
    total= total + parseInt(listetotale[i].value);
  }
  var total = document.querySelector(".totalligne");
  let result = 0

    for (let i = 0; i< total.length; i++) {
        result += Number(total[i].value)
    }
   

    

    var soustotal = Math.floor(3000* Math.random()+1);
    soustotal[i] = soustotal;
    result19.innerText = soustotal

    var remise = document.getElementById("remise").value;
    var sousremise = Number(soustotal)-(Number(soustotal)*Number(remise/100));
    result7.innerText = sousremise



    var solde = Number(sousremise)+Number(tauxtotal);
    result11.innerText= solde;

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
    table.innerHTML += ` <tr><td class="des"><input type="text" class="descr" placeholder="desc add"></td><td class="taille2"><input class="quant" type="text" placeholder="0" id="Q5"></td><td class="taille3"><input type="text" class="pu" placeholder="0" id="p5" name="p1"></td><td class="to"><input type="text" class="totalligne" name="total" readonly="readonly" value="0.0" ></td></tr>`
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

