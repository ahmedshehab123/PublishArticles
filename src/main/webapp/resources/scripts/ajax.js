function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      //document.getElementById("demo").innerHTML = JSON.parse(xhttp.responseText).name;
    	document.getElementById("login").innerHTML = xhttp.responseText;
    }
  };
//  xhttp.open("GET", "resources/ajax.txt", true);
xhttp.open("GET", "gotoregistration", true);
  xhttp.send();
}

function backTologin() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      //document.getElementById("demo").innerHTML = JSON.parse(xhttp.responseText).name;
	    	document.getElementById("login").innerHTML = xhttp.responseText;
	    }
	  };
	//  xhttp.open("GET", "resources/ajax.txt", true);
	xhttp.open("GET", "backtologin", true);
	  xhttp.send();
	}

    
    
    
    