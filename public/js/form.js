
function addBoxes() {
    var x = document.createElement("INPUT");
    x.setAttribute("type", "text");
    x.setAttribute("value", "Insert Name");
    document.body.appendChild(x);
}
function deleteBoxes(boxes) {
    document.getElementById("addBoxes").removeChild(boxes.parentNode);
}
