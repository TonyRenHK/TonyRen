setTimeout(function(){ triggers1(); }, 3000);

function triggers1(){
	document.title = 'Tony Ren Email Box';
	console.log("enter  triggers1 !");
	var link = document.querySelector("link[rel*='icon']") || document.createElement('link'); 
	 link.type = 'image/x-icon'; 
	 link.rel = 'shortcut icon'; 
	 link.href = 'https://raw.githubusercontent.com/TonyRenHK/TonyRenHK.github.io/master/favicon.ico'; 
	 document.getElementsByTagName('head')[0].appendChild(link);
}
