<%@page import="modelRubrica.VoceModel"%>
<%@page import="modelRubrica.RubricaModel"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="utente" class="modelBean.Utente" scope="session"></jsp:useBean>
    <jsp:useBean id="error" class="utility.ErrorBean" scope="session"></jsp:useBean>
<%
     String nome=request.getParameter("nome");
     String cognome= request.getParameter("cognome");
     String telefono= request.getParameter("telefono");
     
     Gestione g= new Gestione();
     
     String username = utente.getUsername();
     char ruolo=utente.getRuolo();
     RubricaModel r=g.getRubricaConNome(username);
     VoceModel v= new VoceModel(nome,cognome,telefono);
     if(v.isValid()) {
    	 g.registraVoce(v,r);
     } else {
    	 error.setError("Errore! Campi della Voce non corretti!");
     }
    	 
%>