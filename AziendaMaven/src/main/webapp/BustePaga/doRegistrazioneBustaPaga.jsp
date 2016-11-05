<%@page import="service.Gestione"%>
<%@page import="modelBean.BustaPaga"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<jsp:useBean id="busta" class="modelBean.BustaPaga" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="busta"/>
<jsp:useBean id="error" class="utility.ErrorBean" scope="request"></jsp:useBean>

<% 
    BustaPaga bp = new BustaPaga();
    bp.setDipendente(busta.getDipendente());
    bp.setDataEmissione(busta.getDataEmissione());
    bp.setImporto(busta.getImporto());
    
    Gestione g = new Gestione();
    
    if(bp.isValid()){
    	
    	g.registraBusta(bp.getDipendente(), bp);
    	
    	%>
    	<jsp:forward page="../Admin/HomePageAdmin.jsp"/>
        <%
    } else {
    	error.setError("ATTENZIONE! Dati inseriti non corretti!");
    	
    	%>
    	<jsp:forward page="RegistrazioneBustaPaga.jsp"/>
    <%
    }
    
    
    
  
%>