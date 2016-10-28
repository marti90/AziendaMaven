<%@page import="modelBean.Utente"%>
<%@page import="dao.UtenteDAO"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="utente" class="modelBean.Utente" scope="session"></jsp:useBean>
<jsp:useBean id="error" class="utility.ErrorBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="utente" />
    <%
	   
        Gestione g= new Gestione();
    
        if(request.getParameter("call")==null){
    	
    	%>
    	<jsp:forward page="Login.jsp"></jsp:forward>
    	<%
    	
        } else{
        	String username = request.getParameter("username");
        	String password = request.getParameter("password");
        	
        	Utente u  = g.esisteUtente(username,password);
        	
        	if(u==null){
        		error.setError("Errore! Username o Password non corretti!");
        		%>
            	     <jsp:forward page="Login.jsp"></jsp:forward>
            	<%
        	} else{
        	 utente.setNome(u.getNome());
         	 utente.setCognome(u.getCognome());
         	 utente.setRuolo(u.getRuolo());
         	 char ruolo = u.getRuolo();
         	     switch(ruolo){
         	     case 'D':
         	    	 %>
              	    <jsp:forward page="HomePageDipendente.jsp" />
              	    <%
         	    	break;
         	     case 'C':
         	    	 %>
              	    <jsp:forward page="HomePageCliente.jsp" />
              	    <%
              	    break;
         	     case 'A':
         	    	 %>
              	    <jsp:forward page="HomePageAdmin.jsp" />
              	    <%
              	    break;
         	    	 
         	     }
         }
     }
    
    %>