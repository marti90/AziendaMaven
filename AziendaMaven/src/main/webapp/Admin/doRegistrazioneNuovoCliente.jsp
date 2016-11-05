<%@page import="service.Gestione"%>
<%@page import="modelBean.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="cliente" class="modelBean.Cliente" scope="session"></jsp:useBean>
<jsp:useBean id="error" class="utility.ErrorBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="cliente"/>

    <%
    cliente.setRuolo('C');
    
    Gestione g= new Gestione();
    
    if(g.getUtenteConUsername(cliente.getUsername())==null) {
    	
        g.registraCliente(cliente);
        g.registraRubrica(cliente.getUsername());
        
        %>
    	<jsp:forward page="HomePageAdmin.jsp"/>
        <%
    }
    else{
    	error.setError("ATTENZIONE! i dati non sono validi!");
        %>
    	<jsp:forward page="RegistrazioneNuovoCliente.jsp"/>
    <%
    }
    
    %>