<%@page import="service.Gestione"%>
<%@page import="modelBean.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="error" class="utility.ErrorBean" scope="request"></jsp:useBean>

    <%
    String nome= request.getParameter("nome");
    String cognome= request.getParameter("cognome");
    String username= request.getParameter("username");
    String password= request.getParameter("password");
    String rg= request.getParameter("ragioneSociale");
    String piva= request.getParameter("piva");
    
    Cliente c= new Cliente(nome,cognome,username,'C',password,rg,piva);
    
    Gestione g= new Gestione();
    
    if(c.isValid() && g.getUtenteConUsername(username)==null) {
    	
    	password=g.convertiPass(password);
    	c.setPassword(password);
        g.registraCliente(c);
        
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