console.log("working")

function refresh(){
    var div = document.getElementById("friendDiv")
    var child = div.querySelectorAll("a")
    var request = new XMLHttpRequest();
    var url = `/homes/api`;
    request.open("GET", url);
    request.setRequestHeader(
        "Content-Type",
        "application/json;charset=UTF-8"
    );

    var responseHandler = function(){
        var response = JSON.parse(this.responseText)
        for (var i = 0; i < child.length; i++){
            if (response[i].online_status === "true"){
                if(child[i].childNodes.length < 4){
                    var online = document.createElement("div");
                    online.className = "online";
                    child[i].prepend(online)
                }
            } else if (response[i].online_status === "false"){
                if(child[i].childNodes.length > 3){
                    child[i].removeChild(child[i].childNodes[0])
                }
            }
        }
    }

    var requestFailed = function(){
        console.log("response text", this.responseText);
        console.log("status text", this.statusText);
        console.log("status code", this.status);
    }
    request.addEventListener("load", responseHandler);
    request.addEventListener("error",requestFailed);
    request.send();
}


setInterval(refresh, 1000)