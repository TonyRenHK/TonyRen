</script>
<div id="bulletc1"></div>
<div id="ScaleBar"></div>
<div id="legendPart2"> </div>
<script>
    var margin = {
            top: 5,
            right: 40,
            bottom: 20,
            left: 120
        },
        width = 860 - margin.left - margin.right,
        height = 40 - margin.top - margin.bottom;

    var chart = d3.bullet()
        .width(width)
        .height(height);

    

    var svg = d3.select("#bulletc1").selectAll("svg")
        .data(data)
        .enter().append("svg")
        .attr("class", "bullet")
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")")
        .call(chart);
		
		
	console.log(data);
	
    var title = svg.append("g")
        .style("text-anchor", "end")
        .attr("transform", "translate(-6," + height / 2 + ")");

    title.append("text")
        .attr("class", "title")
        .text(function(d) {
            return d.title;
        });

    title.append("text")
        .attr("class", "subtitle")
        .attr("dy", "1em")
        .text(function(d) {
            return d.subtitle;
        });


    var LinNumber = 0;
    var tempNum = 0;
    var fisrt = true;
    svg.selectAll(".tick")
        .each(function(d) {
            
            if (d == 0 && tempNum!=0) {
                if (fisrt) {
                    LinNumber = tempNum;
                    fisrt = false;
                }
            }
			tempNum++;
        });
    console.log(LinNumber);
	
	for(var i=0; i<document.getElementsByClassName("tick").length-LinNumber ; i++){
		document.getElementsByClassName("tick")[i].style.display = 'none';
	}
	
	var DrawHTML='<table><tr><td><canvas id="myCanvas" width="10" height="10" style="background-color: lightsteelblue;"></canvas> LY Actual </td><td> </td><td><canvas id="myCanvas" width="10" height="10" style="background-color: steelblue;"></canvas> TY Target </td><td> </td><td> <span style="font-weight: bold;">| </span>LY Target</td></tr></table>';
	
	document.getElementById('legendPart2').innerHTML=DrawHTML;
</script>
