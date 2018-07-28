
function addBoxes() {
    var x = document.createElement("INPUT");
    x.setAttribute("type", "text");
    x.setAttribute("name", "addedName[]");
    x.setAttribute("placeholder", "");
    var nameMe = document.getElementById("nameMe");
    nameMe.appendChild(x);
}
function deleteBoxes() {
    var boxesThatIwantDeleted = document.getElementById("nameMe");
    boxesThatIwantDeleted.removeChild(boxesThatIwantDeleted.lastChild);
}
