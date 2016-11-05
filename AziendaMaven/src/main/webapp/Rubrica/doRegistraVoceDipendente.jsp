<%@page import="modelRubrica.RubricaModel"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="dipendente" class="modelBean.Dipendente" scope="session"></jsp:useBean>
<jsp:useBean id="error" class="utility.ErrorBean" scope="request"></jsp:useBean>
<jsp:useBean id="voce" class="modelRubrica.VoceModel" scope="session"></jsp:useBean>
<jsp:getProperty property="*" name="voce"/>

<% 
   if(voce.isValid() && dipendente.isValid()){
	   
	   Gestione g = new Gestione();
	   String nomeR=dipendente.getUsername();
	   RubricaModel r= g.getRubricaConNome(nomeR);
	   
	   if(g.getVoce(r, voce)!=null){
		   
		   g.registraVoce(voce, r);
		   error.setError("La Voce è stata aggiunta alla tua Rubrica!");
		   
		   %>
		   <jsp:forward page="../Dipendente/HomePageDipendente.jsp"/>
		   <%
		   
	   } else {
		   error.setError("ATTENZIONE! La Voce è già presente nella Rubrica.");
	   }
	   
	   %>
	   <jsp:forward page="registraVoceDipendente.jsp"/>
	   <% 
   } else {
	   response.sendRedirect("../Login/Login.jsp");
   }
%>