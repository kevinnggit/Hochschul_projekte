
function ersteFuction () {
    zweiteFunction();
}

function zweiteFunction () {
    dritteFunction();
}

function dritteFunction () {
    vierteFunction();
}

let headLine = document.getElementById("myHeadLine");

function vierteFunction () {
    headLine.innerHTML = "Sie haben auf die Headline geklickt";
}

headLine.onclick = function () {
    alert("Ich bin im onclick");
    ersteFuction();
};



let bekommeTag = document.getElementById("berechne");

bekommeTag.onclick = function () {
    let aktualYear = new Date().getFullYear();

    let geburtstagString = prompt("Geben sie ihr alter ein");

    let geburtstagConvert = new Date(geburtstagString);

let geburt = geburtstagConvert.getFullYear();

if (geburt < 1900 || geburt > aktualYear || isNaN(geburt)) {

    alert("Geben Sie ein Gültiges GeburtsDatum");
    location.reload();
}

let age = aktualYear - geburt;

//alert("Sie sind " + age);
bekommeTag.innerHTML=("Sie sind " + age);
}





