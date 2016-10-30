<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<jsp:useBean id="cliente" class="modelBean.Cliente" scope="session"></jsp:useBean>

<%
if(cliente.isValid()){
%> 

<div id="content">
<h1>Aggiungi una Voce nella Rubrica</h1>

<form action="doRegistraVoceCliente.jsp" method="post">
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