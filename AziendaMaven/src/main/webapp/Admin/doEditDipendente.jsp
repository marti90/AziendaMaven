<%@page import="modelBean.Dipendente"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <% 
    long id = Long.parseLong(request.getParameter("id"));
    Gestione g = new Gestione();
    Dipendente d = (Dipendente)g.getUtenteConId(id);
    
    String nomeN = request.getParameter("nomeNuovo");
    String cognomeN = request.getParameter("cognomeNuovo");
    String usernameN = request.getParameter("usernameNuovo");
    String passwordN = request.getParameter("passwordNuovo");
    String posizioneN = request.getParameter("posizioneNuovo");
    double stipendioN = Double.parseDouble(request.getParameter("stipendioNuovo"));
    
    if(d.isValid()){
    	d.setNome(nomeN);
    	d.setCognome(cognomeN);
    	d.setUsername(usernameN);
    	d.setPassword(passwordN);
    	d.setPosizione(posizioneN);
    	d.setStipendio(stipendioN);
    }
    
    g.aggiornaDipendente(d);
    
%>

<jsp:forward page="elencoClienti.jsp"></jsp:forward>