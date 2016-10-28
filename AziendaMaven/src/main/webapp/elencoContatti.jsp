<%@page import="modelRubrica.VoceModel"%>
<%@page import="java.util.List"%>
<%@page import="modelRubrica.RubricaModel"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<jsp:useBean id="utente" class="modelBean.Utente" scope="request"></jsp:useBean>

<div id="content">

			<h2>Rubrica</h2>

			<table border="1">
				<thead>

					<tr>
						<th>n.</th>
						<th>nome</th>
						<th>cognome</th>
						<th>telefono</th>
					</tr>

				</thead>

				<%
 					Gestione g = new Gestione();   
				    String username = utente.getUsername();
 					RubricaModel r = g.getRubricaConNome(username);
 					List<VoceModel> lista = g.getVociDiUnaRubrica(r);
 					
				%>
				<c:set var="i" value="1" scope="page" />

				<c:forEach items="${lista}" var="ut">

					<tr>
						<td><c:out value="${i}" /></td>
						<td><c:out value="${ut.nomeVoce}" /></td>
						<td><c:out value="${ut.cognomeVoce}" /></td>
						<td><c:out value="${ut.telefono}" /></td>
					</tr>
					<c:set var="i" value="${i + 1}" scope="page" />
				</c:forEach>


			</table>
		</div>