"use strict";

document.addEventListener('DOMContentLoaded',affichPers);

function affichPers(){
    let xhr = new XMLHttpRequest();
    xhr.open('get','personne',true);
    xhr.onload = ecranPers;
    xhr.send();
}

function ecranPers(){
    let result = JSON.parse(this.response);
    let html="";
    let perssone="";
    let covid = [];
    let date = new Date();
    let dateNow = date.getFullYear()+'-'+date.getMonth()+'-'+date.getDay();
    for(let e of result)
    {
      if(e.tester !== 'non'||e.tester !== 'aucun'){
          if (e.resultat === 'positif')
          {
              if (e.expirer <= dateNow)
              {
                  covid[e.test] = 'Positif';
              } else {covid[e.test] = 'Négatif';}
          } else {covid[e.test] = 'Négatif';}
      } else {covid[e.test] = 'Négatif';}
    }
    for(let e of result)
    {
        if(e.tester !== 'non' && e.tester !== 'aucun' &&  e.tester !== null ) {
            html += "<tr><td>" + e.persId + "</td><td>" + e.nom + "</td><td>" + e.prenom + "</td><td>" + e.naissance + "</td><td>" + covid[e.test] + "</td></tr>";
        }
        perssone += "<option value="+e.persId+">"+e.nom+" "+e.prenom+"</option>";
    }
    document.getElementById("tbodyPersonnes").innerHTML = html;
    document.getElementById("personneTestCovid").innerHTML = perssone;
}

function ajouterPersonne(x){
    let xhr = new XMLHttpRequest();
    xhr.open('get','InsertPers?prenom='+ x.prenomPersonne.value+'&nom='+ x.nomPersonne.value+'&naissance='+ x.dateNaissance.value+'&sexe='+ x.sexePersonne.value,true);
    xhr.send();
    window.location.reload();
    return false;
}

function ajouterTestCovid(x){
    let xhr = new XMLHttpRequest();
    xhr.open('get','InsertTest?dateTest='+ x.dateTestCovid.value+'&expireTest='+ x.dateExpirationTestCovid.value+'&resultaTest='+ x.resultatTestCovid.value+'&idePers='+ x.personneTestCovid.value,true);
    xhr.send();
    window.location.reload();
    return false;
}