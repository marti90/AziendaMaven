<%@page import="modelRubrica.VoceModel"%>
<%@page import="modelRubrica.RubricaModel"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="cliente" class="modelBean.Cliente" scope="session"></jsp:useBean>
<jsp:useBean id="error" class="utility.ErrorBean" scope="request"></jsp:useBean>

<% 
   String nome=request.getParameter("nome");
   String cognome= request.getParameter("cognome");
   String telefono= request.getParameter("telefono");
   VoceModel v = new VoceModel(nome,cognome,telefono);
   
  
   if(v.isValid()){
	   
	   Gestione g = new Gestione();
	   String nomeR=cliente.getUsername();
	   RubricaModel r= g.getRubricaConNome(nomeR);
	   System.out.println(r.getNome());
	   
		   g.registraVoce(v, r);
		   error.setError("La Voce è stata aggiunta alla tua Rubrica!");
		   
		   %>
		   <jsp:forward page="../Cliente/HomePageCliente.jsp"/>
		   <%
	
   } else {
	   response.sendRedirect("../Login/Login.jsp");
   }
%>