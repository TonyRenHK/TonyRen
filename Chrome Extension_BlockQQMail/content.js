window.onload=function(){
     console.log("page load!");
	 document.getElementById("imglogo").style="display:none";
	 
	 
	 document.title = 'Tony Ren Email Box';
	 
	    var link = document.querySelector("link[rel*='icon']") || document.createElement('link');
    link.type = 'image/x-icon';
    link.rel = 'shortcut icon';
    link.href = 'https://www.google.com/a/cpanel/images/favicon.ico';
    document.getElementsByTagName('head')[0].appendChild(link);
	 
	
}
