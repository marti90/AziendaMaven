<%@page import="modelBean.BustaPaga"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
    long id = Long.parseLong(request.getParameter("id"));
    Gestione g = new Gestione();
    BustaPaga bp = g.getBustaConId(id);
    g.eliminaBusta(bp);
    
    %>
    
    <jsp:forward page="elencoBuste.jsp"/>