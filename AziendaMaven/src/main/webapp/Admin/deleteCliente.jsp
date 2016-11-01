<%@page import="modelBean.Cliente"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <% 
    
    String username =request.getParameter("username");
    Gestione g = new Gestione();
    Cliente c = g.getClienteConUsername(username);
    g.eliminaCliente(c);
    
    %>
	<jsp:forward page="elencoClienti.jsp"/>
    