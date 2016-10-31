<%@page import="service.Gestione"%>
<%@page import="modelBean.Dipendente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
    
<jsp:useBean id="utente" class="modelBean.Utente" scope="request"></jsp:useBean>
<jsp:useBean id="dipendente" class="modelBean.Dipendente" scope="request"></jsp:useBean>
<jsp:useBean id="error" class="utility.ErrorBean" scope="request"></jsp:useBean>
  
<jsp:setProperty property="*" name="dipendente"/>   

<%
    dipendente.setRuolo('D');
    
    Gestione g= new Gestione();
    
    if(g.getUtenteConUsername(dipendente.getUsername())==null) {
        
        g.registraDipendente(dipendente);
        g.registraRubrica(dipendente.getUsername());
        
        %>
    	<jsp:forward page="HomePageAdmin.jsp"/>
        <%
    }
    else{
    	error.setError("ATTENZIONE! i dati non sono validi!");
        %>
    	<jsp:forward page="RegistrazioneNuovoDipendente.jsp"/>
    <%
    }
    
    %>