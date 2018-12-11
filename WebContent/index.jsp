<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mon site</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<body>
<nav class="navbar navbar-light bg-light justify-content-between" style="background-color: orange">
  <a class="navbar-brand">Accueil</a>
  <form class="form-inline">
   <%if(session.getAttribute("name")==null){
	  %>
	   	<a href="http://localhost:8383/recompenseOlympiques/home?action=con">
   		 	<button type="button" class="btn btn-outline-warning">Connexion</button>
		</a>
	  
	  <%
  }else{%>
	  
	  <a href="http://localhost:8383/recompenseOlympiques/home?action=discon" >
   		 	<button type="button" class="btn btn-outline-warning">Disconnect</button>
		</a>
	  
	  <%
  }%> 
   
  </form>
  
</nav>
<div style="padding-left: 25%">
 <%if(session.getAttribute("name")==null){
	  %>
	   
	   <h1>Bonjour  veuillez vous connecter</h1>
	  <%
  }else{%>
	  	<h1 >Bonjour admin</h1>
	 
	  
	  <%
  }%>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>