
function addBoxes() {
    var x = document.createElement("INPUT");
    x.setAttribute("type", "text");
    x.setAttribute("name", "name[]");
    x.setAttribute("placeholder", "");
    var nameMe = document.getElementById("nameMe");
    nameMe.appendChild(x);
    nameMe.innerHTML = nameMe.innerHTML + "  ";
}
function deleteBoxes() {
    var boxesThatIwantDeleted = document.getElementById("nameMe");
    boxesThatIwantDeleted.removeChild(boxesThatIwantDeleted.lastChild);
}
