 var socket = io.connect();
 var CurrentData, ResData,table ;
 var TotalNumberClass = 0;

 $.fn.dataTable.ext.search.push(
      function( settings, data, dataIndex ) {//console.log('-----------');
           var selectedcolumn = parseFloat( data[1] ) || 0;//console.log($('#TestDataTableOption').val());
          var seletoption=$('#TestDataTableOption').val();
          if(seletoption){
              if(seletoption=='danger'){
                  if((Number(selectedcolumn))<75){
                      return true; 
                  }else{
                      return false; 
                  }
                  
              }else if(seletoption=='Warning'){
                   if((Number(selectedcolumn))>75 && (Number(selectedcolumn))<85 ){
                      return true; 
                  }else{
                      return false; 
                  }
              }else if(seletoption=='Good'){
                  if((Number(selectedcolumn))>85 && (Number(selectedcolumn))<95.01 ){
                      return true; 
                  }else{
                      return false; 
                  }
              }else if (seletoption=='Excellent'){
                  if((Number(selectedcolumn))>95){
                      return true; 
                  }else{
                      return false; 
                  }
              }else{
                  return true; 
              }
              
              
          }else{
             return true; 
          }
          
          
          
          /*
        var min = parseInt( $('#min').val(), 10 );
        var max = parseInt( $('#max').val(), 10 );
        var selectedcolumn = parseFloat( data[1] ) || 0; // use data for the age column
 
        if ( ( isNaN( min ) && isNaN( max ) ) ||
             ( isNaN( min ) && age <= max ) ||
             ( min <= age   && isNaN( max ) ) ||
             ( min <= age   && age <= max ) )
        {
            return true;
        }
        //return false;*/
    }
     
     );
     
     
     
     
     
     
     
 $(document).ready(function() {

     //console.log('Enter!!>');
     socket.emit('connectionSFDC', 't67');

     socket.on('connectionSFDC', function(msg) {
         console.log('Get msg :  ' + msg);
     });

     $('pre code').each(function(i, e) {
         hljs.highlightBlock(e);
     });



 });



 //---------------------socket.on ----- Get Result From Server ---------------------------

 socket.on('loginResult', function(result) {
     // console.log('-------loginResult------------');//console.log(result);
     var innnerHTML = '<div class="alert alert-success"> <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Success!</strong> Login Successfully !</div>';
     if (result.FirstResult.id) { // console.log('-------1 login------------'); //Table2Info
         $('#Table1Info').html(innnerHTML);
     }

     if (result.SecondResult.id) { //console.log('-------2 login------------');
         $('#Table2Info').html(innnerHTML);
     }

     if (result.FirstResult.id && result.SecondResult.id) {
         $("#ProcessPart").css("display", "");
         $("#LoginBtn").css("display", "none");
     }
 });




 socket.on('TestResultOutput', function(result) {
     //console.log(TotalNumberClass);//console.log();
     document.getElementById("chart_div").innerHTML = result.mes
         //console.log(result.pendNumber);
     var ProValue = ((TotalNumberClass - result.pendNumber) / TotalNumberClass) * 100; // console.log(ProValue);
     if (document.getElementById("myBar")) {
         var cssstr = ProValue + '%';
         document.getElementById("myBar").style.width = cssstr; //$('#myBar').css("width: "+ProValue+"%;");
     }


 });




 socket.on('buildCoverage', function(result) {
     document.getElementById("myBar").style.width = '100%';
     console.log(result);
     ResData = result;
     var percent = 0;
     var inputdataList = [];
     inputdataList.push(['Class', 'Percent']);

     for (var j = 0; j < result.length; j++) {

         percent = ((result[j].NumLinesCovered / (result[j].NumLinesCovered + result[j].NumLinesUncovered)) * 100).toFixed(2); //console.log(result[j].ApexClassOrTrigger.Name+percent);
         if (IsNumeric(percent)) {
             inputdataList.push([result[j].ApexClassOrTrigger.Name, percent]);
         }

     }
     BarChart(inputdataList);
 });



 socket.on('FastbuildCoverage', function(result) {

     DrawDataTable(result);
     /*
     ResData=result;
     var percent=0;
     var inputdataList=[];
     inputdataList.push(['Class', 'Percent',{ role: 'style' }]);
     
     for(var j=0;j<result.length;j++){
         
         percent=((result[j].NumLinesCovered/(result[j].NumLinesCovered+result[j].NumLinesUncovered))*100).toFixed(2);
         console.log(result[j].ApexClassOrTrigger.Name+percent);
         if(IsNumeric(percent)){
             inputdataList.push([result[j].ApexClassOrTrigger.Name,Number(percent),'red']);
         }
         
     }
     
     */
     // BarChart(inputdataList);
 });



 socket.on('queryFailedTests', function(result) {
     console.log(result);

 });




 socket.on('RunSuccess', function(result) {
     console.log(result);
     //
     //var innerHTML = '<progress id="progBar" value="0" max="100"> </progress>';
     var innerHTML = '<div id="myProgress" style="margin-top: 1em;"> <div id="myBar" style="width: 0%;"></div> </div>'
     $('#ResultPart').html(innerHTML);

 });




 socket.on('TestClassResultClassName', function(result) { //console.log('Get GetClass:  '+result);
     CurrentData = result;
     var innerHTML = '<table  style="margin-top:1em" class="table table-striped table-bordered" cellspacing="0" width="100%"  > <thead><tr><th>Class Name</th> </tr></thead><tbody>'
     for (var i = 0; i < result.length; i++) {
         innerHTML += ' <tr><td> <div class="checkbox checkbox-info checkbox-circle"><input id=' + result[i].Id + ' class="styled" type="checkbox"><label for=' + result[i].Id + ' >' + result[i].Name + '</label> </div></td></tr>';
         //console.log('---------------------------------');
         //console.log(result[i].Name);
     }

     innerHTML += '</tbody></table>';


     var classcontent = '<pre><code class="java">';
     classcontent += result.Body;
     classcontent += '</code></pre>';

     $('#ResultPart1').html(innerHTML);
     innerHTML = '<button type="button" class="btn btn-success" onclick="RunTestClass();">Run Test Class</button>'
     $('#TestProcess').html(innerHTML);

     innerHTML = '<select name="ProcessApp" id="ProcessAppId" class="form-control col-md-2 "> ' +
         '<option value="KR-KOR" selected="selected" >KR</option>' +
         ' <option value="CN">CN</option> ' +
         ' <option value="MFM">MFM</option> ' +
         ' <option value="KR-TnE">KR TnE</option> ' +
         '</select>';

    // document.getElementById("ProcessInfo2").innerHTML = innerHTML; //$('#ProcessInfo2').html(innerHTML);

 });


 //------------------------Function-----------------------  



 /*
 / Press 'Run Test Class' Function 
 */
 function RunTestClass() {
     var ClassList = [];
     TotalNumberClass = 0;
     for (var i = 0; i < CurrentData.length; i++) { //console.log($('#'+CurrentData[i].Id).is(':checked'));
         if ($('#' + CurrentData[i].Id).is(':checked')) {
             console.log(CurrentData[i].Id);
             ClassList.push(CurrentData[i].Id);
         }
     }
     TotalNumberClass = ClassList.length;
     socket.emit('RunTestClass', ClassList);

 }



 function SubmitFun() { //console.log($('#sfUrl1').val());
     var u = $('#InputEmail1').val(); //console.log($('#InputPassword1').val());
     if (u.length == 0) {
         u = 'tony.ren@elufasys.com.asisb6conf';
     }

     var pw = $('#InputPassword1').val();
     if (pw.length == 0) {
         pw = 'Passw0rd4';
     }

     var u2 = $('#InputEmail2').val();
     if (u2.length == 0) {
         u2 = 'tony.ren@elufasys.com.asisb1dev';
     }

     var pw2 = $('#InputPassword2').val();
     if (pw2.length == 0) {
         pw2 = 'Passw0rd3';
     }


     var loginUser = {
         username1: u,
         InputPassword1: pw,
         loginUrl1: 'https://' + $('#sfUrl1').val(),
         username2: u2,
         InputPassword2: pw2,
         loginUrl2: 'https://' + $('#sfUrl2').val()
     };

     socket.emit('loginSFDC', loginUser);

 }



 function ChangeProcessType() { //console.log('change ChangeProcessType ');
     var ProcessType = $('#ProcessType').val();
     var innerHTML = '';
     if (ProcessType == 'Test Class') {
         innerHTML = '<select  id="ProcessAppId" class="form-control "> ' +
             '<option value="KR-KOR" >KR</option>' +
             ' <option value="CN">CN</option> ' +
             ' <option value="MFM" select="selected" >MFM</option> ' +
             ' <option value="KR-TnE">KR TnE</option> ' +
             '</select>';

         $('#ProcessInfo2').html(innerHTML);

     } else {
         $('#ProcessInfo2').html('');
     }
 }
 
 
 
 
 //Start view Coverage
function ViewCoverage() {
    var apptype = String($('#ProcessAppId').val());
    var inputval;
    if (apptype != 'undefined') {

        if (apptype.indexOf('-') !== -1) {
            inputval = {};
            for (var j = 0; j < applist.length; j++) {
                inputval['ApexClassOrTrigger.Name'] = {
                    $like: 'ASI%' + applist[0] + '%'
                }
            }

        } else {
            inputval = {
                'ApexClassOrTrigger.Name': {
                    $like: 'ASI%' + apptype + '%'
                }
            };
        }
    } else {
        inputval = {
            'ApexClassOrTrigger.Name': {
                $like: 'ASI%KOR%'
            },
            'ApexClassOrTrigger.Name': {
                $like: 'ASI%KR%'
            }
        };

    }

    socket.emit('ViewCoverage', inputval);
}




 /*
 / Press 'Go' Function 
 */

 function ProcessFunction() { //console.log($('#ProcessType').val());
     var ProcessType = $('#ProcessType').val();
     $('#Table1Info').html('');
     $('#Table2Info').html('');
     var tempHTML = '<div style="margin-top:1em" > <i   class="fa fa-spinner fa-pulse fa-3x fa-fw"></i> Loading...</div>';
     $('#ResultPart1').html(tempHTML);
     if (ProcessType == 'Test Class') {
         var soql = "SELECT Id, Name,Body FROM ApexClass WHERE " //soql = "SELECT Id, Name,Body FROM ApexClass WHERE name like 'ASI%test%' "
         var apptype = String($('#ProcessAppId').val());

         if (apptype.indexOf('-') !== -1) { // contain '-'
             var applist = apptype.split('-');
             for (var j = 0; j < applist.length; j++) {
                 if (j == 0) {
                     soql += "  name like 'ASI%" + applist[j] + "%test%'  "
                 } else {
                     soql += "or  name like 'ASI%" + applist[j] + "%test%'  "
                 }

             }
         } else {

             soql += "  name like 'ASI%" + apptype + "%test%'  "
         } //console.log(soql);
         socket.emit('TestClassInit', soql);
     }
 }











 function BarChart(InputData) {
     //google.load('visualization', '1', {packages: ['corechart', 'bar']});
     var data = google.visualization.arrayToDataTable(InputData);

     var options = {
         chart: {
             title: 'Class Percentage',
             subtitle: 'Elufa',
         },
         bar: {
             groupWidth: '90%'
         },
         bars: 'horizontal',
         height: InputData.length * 20
     };

     var chart = new google.charts.Bar(document.getElementById('chart_div'));
     //var chart =new google.visualization.BarChart(document.getElementById('chart_div'));
     chart.draw(data, options);

 }



 function IsNumeric(val) {
     return Number(parseFloat(val)) == val;
 }



function ChangeClassOption(){//console.log('change!'+$('#TestDataTableOption').val());
      table = $('#ResultData').DataTable();
    // table.draw();
    //table.search();
     table.draw();
     /*
    var filteredData = table.columns( [1] )
    .data()
    .eq( 0 )
    .filter( function ( value, index ) {
        return value > 20 ? true : false;
    } );
    
    */
}


 function DrawDataTable(InputData) {//console.log('InputData');
     var DrawHTML = '<hr> <table  id="ResultData" class="table table-striped table-bordered"  cellspacing="0" width="100%" > <thead><tr><th>Name</th><th>Percent</th><th style="width: 50%">Details</th></tr></thead><tbody>';
     for (var j = 0; j < InputData.length; j++) {
         percent = ((InputData[j].NumLinesCovered / (InputData[j].NumLinesCovered + InputData[j].NumLinesUncovered)) * 100).toFixed(2); //console.log(InputData[j].ApexClassOrTrigger.Name + percent);
         if (IsNumeric(percent)) {
             var ProgressClass='';
           
             
             DrawHTML = DrawHTML + '<tr><td>' + InputData[j].ApexClassOrTrigger.Name ;
             
             if((100-Number(percent))<5){
                 ProgressClass='progress-bar-success';
             }else if((100-Number(percent))<15){
                 ProgressClass='progress-bar-info';
             }else if((100-Number(percent))<25){
                 ProgressClass='progress-bar-warning';
             }else{
                 ProgressClass='progress-bar-danger';
                 DrawHTML+='    <span class="label label-danger" >  Danger Class!</span>';
             }
             
             DrawHTML= DrawHTML+'</td><td>' + percent + '%</td><td>' +
                 '<div class="progress"> <div class="progress-bar '+ProgressClass+'" role="progressbar" aria-valuenow=' + percent +
                 ' aria-valuemin="0" aria-valuemax="100" style="width:' + percent + '%"> <span style="color:black">' +
                 percent + '% Complete</span> </div> </div>' +
                 '</td></tr>';
         }



     }
     DrawHTML += '</tbody></table>';
     document.getElementById('chart_div').innerHTML = DrawHTML;

     //ResultData
     table = $('#ResultData').DataTable({
         "iDisplayLength": 50,
          "dom": '<"toolbar">ftp'
                
     });
     // $('#ResultData_filter').addClass('move1');     <span class="label label-danger">Danger Label</span>
     DrawHTML='<div class="col-md-4"> <select id="TestDataTableOption" class="form-control" onchange="ChangeClassOption();">'+
     ' <option value=" " >    </option> <option value="danger"> <span class="label label-danger">Danger Class(<75%)</span> </option>'+
     ' <option value="Warning"><span class="label label-warning">Warning Class(75%~85%)</span></option> '+
     '<option value="Good"> <span class="label label-info">Good Class(85%~99%)</span></option> '+
     '<option value="Excellent"> <span class="label label-success">Excellent Class(85%~99%)</span></option> '+
     '</select></div>'
     $("div.toolbar").html(DrawHTML);
     
     
 }
 
 