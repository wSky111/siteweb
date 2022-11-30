function somme ()
{
    var a= document.getElementById("t1").value;
    var b= document.getElementById("t2").value;
    var c = Number(a) +Number (b);
    result.innerText= c ;
}

function soustraction ()
{
    var a= document.getElementById("t1").value;
    var b= document.getElementById("t2").value;
    var c = Number(a)-Number(b);
result.innerText= c ;
}

function multiplication ()
{
    var a= document.getElementById("t1").value;
    var b= document.getElementById("t2").value;
    var c = Number(a)*Number(b);
    result.innerText= c ;
}

function division ()
{
    var a= document.getElementById("t1").value;
    var b= document.getElementById("t2").value;
    var c = Number(a)/Number(b);
    result.innerText= c ;
}


function parite ()
{
    var v= Number(document.getElementById("t1").value);
    if ( v % 2 == 0)
    result.innerText="Ce nombre est pair";
    else
    result.innerText="Ce nombre est impair";

}

function permuter ()
{
    var v3= "";
    m= document.getElementById("t1").value;
    n= document.getElementById("t2").value;
    v3= m;
    m= n;
    n= v3;
    t1.value= m;
    t2.value= n;
}

