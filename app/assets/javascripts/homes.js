function refresh() {
    var div = document.getElementById("friendDiv")
    var child = div.querySelectorAll("a")
    var request = new XMLHttpRequest();
    var url = "/homes/api";
    request.open("GET", url);
    request.setRequestHeader(
        "Content-Type",
        "application/json;charset=UTF-8"
    );

    var responseHandler = function () {
        var response = JSON.parse(this.responseText)
        for (var i = 0; i < child.length; i++) {
            if (response[i].online_status === "true") {
                if (child[i].childNodes.length < 4) {
                    var online = document.createElement("div");
                    online.className = "online";
                    child[i].prepend(online)
                }
            } else if (response[i].online_status === "false") {
                if (child[i].childNodes.length > 3) {
                    child[i].removeChild(child[i].childNodes[0])
                }
            }
        }
    }

    request.addEventListener("load", responseHandler);
    request.send();
}

setTimeout(refresh, 1000)
setInterval(refresh, 30000)