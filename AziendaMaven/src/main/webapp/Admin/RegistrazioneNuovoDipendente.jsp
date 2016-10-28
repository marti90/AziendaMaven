<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="Stylesheet" type="text/css" href="css/stat.css">

<title>Registrazione Dipendente</title>
</head>
<body>

<div id="Container">
  
  <div id="header">
<h1>Pagina Admin</h1>
  
  </div>
  
  
    <div  class="menu">
 
  <jsp:include page="MenuLateraleAdmin.jsp"></jsp:include>
  
  </div>
    <div id="content">
   <h1>Registrazione Nuovo Dipendente</h1>
   <form action="doRegistrazioneNuovoDipendente.jsp" method="post">
   
   Nome : <input type="text" name="nome" /> <br>
   Cognome : <input type="text" name="cognome"/> <br>
   Username : <input type="text" name="username"/> <br>
   Password : <input type="password" name="password"/> <br>
   Posizione : <input type="text" name="posizione"/> <br>
   Stipendio : <input type="number" name="stipendio"/> <br>
   <input type="submit" value ="Registra"/>
   
   </form>
   
  </div>
    <div id="footer">
 <h1>Footer</h1>
 
  </div>
  
  
  </div> <!--  end of container -->
</body>
</html>