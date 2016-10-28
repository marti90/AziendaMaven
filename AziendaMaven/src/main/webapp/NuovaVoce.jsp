<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="utente" class="modelBean.Utente" scope="session"></jsp:useBean>

<%
if(utente.isValid()){
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="Stylesheet" type="text/css" href="css/stat.css">

<title>Insert title here</title>
</head>
<body>

<div id="content">
<h1>Aggiungi una Voce nella Rubrica</h1>

<form action="doRegistraVoce.jsp" method="post">
Nome: <input type="text" name="nome" /> <br>
Cognome: <input type="text" name="cognome"/> <br>
Telefono: <input type="text" name="telefono"/> <br>

<input type="submit" value ="Registra"/>

</form>
 </div>
    <div id="footer">
 <h1>Footer</h1>
 
</div>

</body>
</html>

<%
}else {
	response.sendRedirect("Login.jsp");
}
%>