<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
      <title>E - Library</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <style>
         #loading{
             background:url('https://thumbs.gfycat.com/AgileClearcutEthiopianwolf-max-1mb.gif');
background-color: white;
background-repeat: no-repeat;
background-position: center;
background-size: 20%;
height: 100%;
width: 100%;
margin: 0%;
padding: ;

transform: translate(-0%,-0%); 
position: fixed;
left: 0%; right: 0%; top: 0%;
z-index:99;

    }

    loading img{

margin: 50%;
margin-top:45%;
padding: 50%;
transform: translate(-50%, -50%);


    }
     </style>
</head>
<body>
 <center>
   <div id="loading"><!--img style="margin:50%;" height="180px;" width="180px;" src="https://thumbs.gfycat.com/AgileClearcutEthiopianwolf-max-1mb.gif" /--></div> 
  </center> 
   



<script>


document.onreadystatechange = function(){
    
    var state = document.readyState;
if(state=='enteractive'){
    document.getElementById("body").style.visibility = "hidden"; 
} else if(state=='complete'){
    setTimeout(function(){

document.getElementById("loading").style.visibility = "hidden";
document.getElementById("body").style.visibility = "visible";
},1000);}
}


</script>

</script>
</body>
</html>