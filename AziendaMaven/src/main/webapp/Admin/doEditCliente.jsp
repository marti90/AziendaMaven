<%@page import="modelBean.Cliente"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <% 
    long id = Long.parseLong(request.getParameter("id"));
    Gestione g = new Gestione();
    Cliente c = (Cliente)g.getUtenteConId(id);
    System.out.println(c.getNome()+" "+c.getCognome());
    
    String nomeN = request.getParameter("nomeNuovo");
    String cognomeN = request.getParameter("cognomeNuovo");
    String usernameN = request.getParameter("usernameNuovo");
    String passwordN = request.getParameter("passwordNuovo");
    String ragioneSocialeN = request.getParameter("ragioneSocialeNuovo");
    String pIvaN = request.getParameter("partitaIvaNuovo");
    
    if(c.isValid()){
    	c.setNome(nomeN);
    	c.setCognome(cognomeN);
    	c.setUsername(usernameN);
    	c.setPassword(passwordN);
    	c.setRagioneSociale(ragioneSocialeN);
    	c.setpIva(pIvaN);
    }
    
    g.aggiornaCliente(c);
    
%>

<jsp:forward page="elencoClienti.jsp"></jsp:forward>