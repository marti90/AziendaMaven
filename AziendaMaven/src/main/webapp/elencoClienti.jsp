<%@page import="modelBean.Utente"%>
<%@page import="modelBean.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<jsp:useBean id="cliente" class="modelBean.Cliente" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="cliente" />

<jsp:include page="headerHtml.jsp"></jsp:include>

<jsp:include page="navBarAdmin.jsp"></jsp:include>

<div class="ch-container">
   <div class="row">
        
        <jsp:include page="menuLateraleAdmin.jsp"></jsp:include>
        <noscript>
            <div class="alert alert-block col-md-12">
                <h4 class="alert-heading">Warning!</h4>

                <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                    enabled to use this site.</p>
            </div>
        </noscript>

        <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
 <div>
    <ul class="breadcrumb">
        <li>
            <a href="#">Home</a>
        </li>
        <li>
            <a href="#">Admin</a>
        </li>
    </ul>
</div>
<div class=" row">

          <!-- Devo scrivere per ogni pagina -->
          <div id="content">

<h2>Elenco Clienti</h2>

<table border="1">
	<thead>

		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Cognome</th>
			<th>Username</th>
			<th>Ragione Sociale</th>
			<th>Partita IVA</th>
			<th>Azioni</th>
			
		</tr>

	</thead>

	<%
		Gestione g= new Gestione();
		List<Cliente> clienti = g.getTuttiClienti();
		
	     int i =1;
         for(Cliente c : clienti){ 
              cliente.setNome(c.getNome());
              cliente.setCognome(c.getCognome());
              cliente.setUsername(c.getUsername());
              cliente.setRagioneSociale(c.getRagioneSociale());
              cliente.setpIva(c.getpIva());
              
              
         %>
             <tr>
                 <td class="center"><%out.println(i);%> </td>
                 <td class="center">${cliente.nome}</td>
                 <td class="center"><c:out value="${cliente.cognome}"></c:out></td>
                 <td class="center"><c:out value="${cliente.username}"></c:out></td>
                 <td class="center"><c:out value="${cliente.ragioneSociale}"></c:out></td>
                 <td class="center"><c:out value="${cliente.pIva}"></c:out></td>
                 <td class="center">
                        <a class="btn btn-info" href="#">
                        <i class="glyphicon glyphicon-edit icon-white"></i>
                        Edit
                        </a>
                        <a class="btn btn-danger" href="#">
                        <i class="glyphicon glyphicon-trash icon-white"></i>
                        Delete
                        </a>
                        </td>
         <%
             i++;
             }
         %>


         </tr>
</table>
</div>
</div>

 </div>
</div>

<hr>
   <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h3>Settings</h3>
                </div>
                <div class="modal-body">
                    <p>Here settings can be configured...</p>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
                    <a href="#" class="btn btn-primary" data-dismiss="modal">Save changes</a>
                </div>
            </div>
         </div>
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>

</div><!--/.fluid-container-->

<jsp:include page="IncludeScriptEnd.jsp"></jsp:include>      

