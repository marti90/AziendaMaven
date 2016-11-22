<%@page import="modelBean.Cliente"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<jsp:useBean id="cliente" class="modelBean.Cliente" scope="session"></jsp:useBean>
<jsp:include page="../headerHtml.jsp"></jsp:include>
<jsp:include page="navBarAdmin.jsp"></jsp:include>
<% 
    long id_cliente =Long.parseLong(request.getParameter("id"));
    Gestione g = new Gestione();
    Cliente c = (Cliente) g.getUtenteConId(id_cliente); 
    cliente.setNome(c.getNome());
    cliente.setCognome(c.getCognome());
    cliente.setId_utente(c.getId_utente());
    cliente.setUsername(c.getUsername());
    cliente.setPassword(c.getPassword());
    cliente.setRagioneSociale(c.getRagioneSociale());
    cliente.setpIva(c.getpIva());
    
%>

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
            <a href="HomePageAdmin.jsp">Home</a>
        </li>
        <li>
            <a href="#">Admin</a>
        </li>
        <li>
            <a href="#">Modifica Cliente</a>
        </li>
    </ul>
</div>

<div class=" row">
   <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> Modifica i Dati del Cliente</h2>
            <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                            class="glyphicon glyphicon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
             </div>
             </div>
             <div class="box-content">
             <form role="form" action="doEditCliente.jsp" method="post">
             
                    <div class="form-group">
                        <label>Nome</label>
                        <input type="text" class="form-control" name="nomeNuovo" placeholder="Inserisci Nome" value="<%out.println(c.getNome());%>">
                    </div>
                    
                    <div class="form-group">
                        <label>Cognome</label>
                        <input type="text" class="form-control" name="cognomeNuovo" placeholder="Inserisci Cognome" value="<%out.println(c.getCognome());%>">
                    </div>
                    
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" name="usernameNuovo" placeholder="Inserisci Username" value="<%out.println(c.getUsername());%>">
                    </div>
                    
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="passwordNuovo" placeholder="Inserisci Password" value="<%out.println(c.getPassword());%>">
                    </div>
                    
                    <div class="form-group">
                        <label>Ragione Sociale</label>
                        <input type="text" class="form-control" name="ragioneSocialeNuovo" placeholder="Inserisci Ragione Sociale" value="<%out.println(c.getRagioneSociale());%>">
                    </div>
                    <div class="form-group">
                        <label>Partita IVA</label>
                        <input type="text" class="form-control" name="partitaIvaNuovo" placeholder="Inserisci PartitaIVA" value="<%out.println(c.getpIva());%>">
                    </div>
                    
                    <input type="hidden" value="${cliente.id_utente}" name="id"/>
                    
                    <button type="submit" class="btn btn-default">Modifica</button>
                    
             </form>
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
    </div>
    
   
  <jsp:include page="../footer.jsp"></jsp:include>
  </div>
  </div> <!--  end of container -->
  <jsp:include page="../IncludeScriptEnd.jsp"></jsp:include>
