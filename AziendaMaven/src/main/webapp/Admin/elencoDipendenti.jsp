<%@page import="modelBean.Utente"%>
<%@page import="java.util.List"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="u" class="modelBean.Utente" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<div id="content">

<h2>Elenco Clienti</h2>

<table border="1">
	<thead>

		<tr>
			<th>id</th>
			<th>nome</th>
			<th>cognome</th>
			<th>username</th>
			
		</tr>

	</thead>

	<%
		Gestione g= new Gestione();
		List<Utente> lista = g.getTuttiUtenti();
		
	     int i =1;
         for(Utente c : lista){ 
              u.setNome(c.getNome());
              u.setCognome(c.getCognome());
              u.setUsername(c.getUsername());
              
         %>
             <tr>
                 <td><%out.println(i);%> </td>
                 <td>${u.nome}</td>
                 <td><c:out value="${u.cognome}"></c:out></td>
                 <td><c:out value="${u.username}"></c:out></td>
         
         <%
             i++;
             }
         %>


         </tr>
</table>
</div>