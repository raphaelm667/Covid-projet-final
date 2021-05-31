"use strict";

document.addEventListener("DOMContentLoaded",fetchCas);

function fetchCas(){
    let xhr = new XMLHttpRequest();
    xhr.open('get','casTot',true)
    xhr.onload =function () {
        let response = JSON.parse(this.responseText);
        let html="";
        for(let e of response)
        {
            html += e.nbCas;
        }
        document.getElementById("nombreMalades").innerHTML = html;
    };
    xhr.send();
    testRecente();
}

function testRecente(){
    let xhr = new XMLHttpRequest();
    xhr.open('get','testRecent',true)
    xhr.onload =function () {
        let response = JSON.parse(this.responseText);
        let html="";
        for(let e of response)
        {
            html += e.nbTest;
        }
        document.getElementById("nombreTests").innerHTML = html;
    };
    xhr.send();
}