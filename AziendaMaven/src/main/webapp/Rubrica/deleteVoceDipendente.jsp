<%@page import="modelRubrica.RubricaModel"%>
<%@page import="modelRubrica.VoceModel"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="dipendente" class="modelBean.Dipendente" scope="session"></jsp:useBean>
    

    <% 
    long id_voce = Long.parseLong(request.getParameter("id_voce"));
    Gestione g = new Gestione();
    VoceModel v = g.getVoceConId(id_voce);
    String nomeV= v.getNome();
    String cognomeV= v.getCognome();
    RubricaModel r= g.getRubricaConNome(dipendente.getUsername());
    g.eliminaVoceDaRubrica(r, nomeV, cognomeV);
    
    %>
	<jsp:forward page="elencoContattiDipendente.jsp"/>
    