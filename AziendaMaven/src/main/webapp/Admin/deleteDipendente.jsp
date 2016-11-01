<%@page import="modelBean.Dipendente"%>>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <% 
    
    String username =request.getParameter("username");
    Gestione g = new Gestione();
    Dipendente d = g.getDipendenteConUsername(username);
    g.eliminaDipendente(d);
    
    %>
	<jsp:forward page="elencoDipendenti.jsp"/>
    