"use strict";

document.addEventListener("DOMContentLoaded", affichVille);

function affichVille()
{
    let xhr = new XMLHttpRequest();
    xhr.open('get','ville',true);
    xhr.onload = ecranVille;
    xhr.send();
}

function ecranVille(){
    let response = JSON.parse(this.responseText);
    let html = "";
    for(let e of response)
    {
        html += "<li>"+e.codePostale+" "+e.nomVille+"</li>";
    }
    document.getElementById("listeVilles").innerHTML = html;
}

function ajouterVille(x){
    let xhr = new XMLHttpRequest();
    xhr.open('get','InsertVilles?codepost='+x.codePostal.value+'&nomvill='+x.nomVille.value,true);
    xhr.send();
    x.codePostal.value = "";
    x.nomVille.value = "";
    window.location.reload();
    return false;
}