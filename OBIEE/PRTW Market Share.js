</script>
<div id="headerPart" style="background-color:  #00FFFF;font-size: 150%;font-weight: bold;" >Market Share</div>
<div id="ms"></div>
<div id="legendPart"> </div>

<script> var width = 480,
    height = 250,
    margin = 20;

var x = d3.scale.linear()
    .range([0, width - 3 * margin]);

var y = d3.scale.linear()
    .range([0, height - 2 * margin]);

var z = d3.scale.category10();


var n = d3.format(",d"),
    p = d3.format("%");

var svg = d3.select("#ms").append("svg")
    .attr("width", width)
    .attr("height", height)
  .append("g")
    .attr("transform", "translate(" + 2 * margin + "," + margin + ")");

  var offset = 0;

  // Nest values by segment. We assume each segment+market is unique.
  var segments = d3.nest()
      .key(function(d) { return d.segment; })
      .entries(data);
	  
	console.log(data);

  // Compute the total sum, the per-segment sum, and the per-market offset.
  // You can use reduce rather than reduceRight to reverse the ordering.
  // We also record a reference to the parent segment for each market.
  var sum = segments.reduce(function(v, p) {
    return (p.offset = v) + (p.sum = p.values.reduceRight(function(v, d) {
      d.parent = p;
      return (d.offset = v) + d.value;
    }, 0));
  }, 0);

  // Add x-axis ticks.
  var xtick = svg.selectAll(".x")
      .data(x.ticks(10))
    .enter().append("g")
      .attr("class", "x")
      .attr("transform", function(d) { return "translate(" + x(d) + "," + y(1) + ")"; });

  xtick.append("line")
      .attr("y2", 6)
      .style("stroke", "#000");

  xtick.append("text")
      .attr("y", 8)
      .attr("text-anchor", "middle")
      .attr("dy", ".71em")
      .text(p);

  // Add y-axis ticks.
  var ytick = svg.selectAll(".y")
      .data(y.ticks(10))
    .enter().append("g")
      .attr("class", "y")
      .attr("transform", function(d) { return "translate(0," + y(1 - d) + ")"; });

  ytick.append("line")
      .attr("x1", -6)
      .style("stroke", "#000");

  ytick.append("text")
      .attr("x", -8)
      .attr("text-anchor", "end")
      .attr("dy", ".35em")
      .text(p);

  // Add a group for each segment.
  var segments = svg.selectAll(".segment")
      .data(segments)
    .enter().append("g")
      .attr("class", "segment")
      .attr("xlink:title", function(d) { return d.key; })
      .attr("transform", function(d) { return "translate(" + x(d.offset / sum) + ")"; });

  // Add a rect for each market.
  var markets = segments.selectAll(".market")
      .data(function(d) { return d.values; })
    .enter().append("a")
      .attr("class", "market")
      .attr("xlink:title", function(d) { return d.market + " " + d.parent.key + ": " + n(d.value); })
    .append("rect")
      .attr("y", function(d) { return y(d.offset / d.parent.sum); })
      .attr("height", function(d) { return y(d.value / d.parent.sum); })
      .attr("width", function(d) { return x(d.parent.sum / sum); })
      .style("fill", function(d) { return z(d.market); });
	 
	var totallength= z.domain().length;		
	//console.log(z(1));//console.log(z.domain().length);
	var DrawHTML='<table><tr>';
	for(var i = 0; i <totallength; i++){
		var temp=  ((i+1)/4);
		DrawHTML+='<td><canvas id="myCanvas" width="10" height="10" style="background-color:  '+z(i)+';"></canvas>'+z.domain()[i]+'</td>'
		if(Math.round(temp)*4==(i+1)){
			DrawHTML+='</tr><tr>';
			//console.log('---------------');
			//console.log(Math.abs(temp));
		}
		//console.log(i/4);
		//console.log(z.domain()[i]+' ~~'+z(i));
	}
	DrawHTML+='</tr></table>';
	document.getElementById('legendPart').innerHTML=DrawHTML;//'<canvas id="myCanvas" width="10" height="10" style="background-color:  #9467bd;"></canvas>';
</script>
