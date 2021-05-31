"use strict";

document.addEventListener("DOMContentLoaded", recupVilles);

function recupVilles(){
    let xhr = new XMLHttpRequest();
    xhr.open('get','ville',true);
    xhr.onload = affichLesVilles;
    xhr.send();
}

function affichLesVilles(){
    let reponse = JSON.parse(this.responseText);
    let html="",ecranVille="";
    let xhr = new XMLHttpRequest();
    xhr.open('get','casVille',true)
    xhr.onload = function () {
        let reponse2 = JSON.parse(this.responseText);
        let condition=0;
        for(let i of reponse2) {
            for (let e of reponse) {
                if(condition===0){
                    html += "<option value=" + e.codePostale + ">" + e.nomVille + "</option>";
                }
                if(i.codeVille===e.codePostale){
                    ecranVille += "<tr><td>" + e.codePostale + "</td><td>" + e.nomVille + "</td><td>" + i.nbCas + "</td><td><input type ='button' value='Rappel' onclick="+window.location.reload+"></td></tr>"
                }
            }
            condition++;
        }
        document.getElementById("villeVisitee").innerHTML = html;
        document.getElementById("tbodyNombreMaladesParVille").innerHTML = ecranVille;
    };
    xhr.send();
}

function ajouterVisiteVille(x){
    let xhr = new XMLHttpRequest();
    xhr.open('get','InsertVisit?pers='+x.personneVisiteVille.value+'&ville='+x.villeVisitee.value+'&dateVis='+x.dateVisite.value,true);
    xhr.onload = recupVilles;
    xhr.send();
    x.personneVisiteVille.value ="";
    x.villeVisitee.value= "";
    x.dateVisite.value="";
   return false;
}