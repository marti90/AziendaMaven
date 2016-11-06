<%@page import="modelBean.Dipendente"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<jsp:useBean id="dipendente" class="modelBean.Dipendente" scope="session"></jsp:useBean>

<% 
    long id_dipendente =Long.parseLong(request.getParameter("id"));
    Gestione g = new Gestione();
    Dipendente d = (Dipendente) g.getUtenteConId(id_dipendente); 
    dipendente.setNome(d.getNome());
    dipendente.setCognome(d.getCognome());
    dipendente.setId_utente(d.getId_utente());
    dipendente.setUsername(d.getUsername());
    dipendente.setPassword(d.getPassword());
    dipendente.setPosizione(d.getPosizione());
    dipendente.setStipendio(d.getStipendio());
    
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
            <a href="#">Modifica Dipendente</a>
        </li>
    </ul>
</div>

<div class=" row">
   <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> Modifica i Dati del Dipendente</h2>
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
             <form role="form" action="doEditDipendente.jsp" method="post">
             
                    <div class="form-group">
                        <label>Nome</label>
                        <input type="text" class="form-control" name="nomeNuovo" placeholder="Inserisci Nome" >
                    </div>
                    
                    <div class="form-group">
                        <label>Cognome</label>
                        <input type="text" class="form-control" name="cognomeNuovo" placeholder="Inserisci Cognome">
                    </div>
                    
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" name="usernameNuovo" placeholder="Inserisci Username">
                    </div>
                    
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="passwordNuovo" placeholder="Inserisci Password">
                    </div>
                    
                    <div class="form-group">
                        <label>Posizione</label>
                        <input type="text" class="form-control" name="posizioneNuovo" placeholder="Inserisci Posizione">
                    </div>
                    <div class="form-group">
                        <label>Stipendio</label>
                        <input type="text" class="form-control" name="stipendioNuovo" placeholder="Inserisci Stipendio">
                    </div>
                    
                    <input type="hidden" value="${dipendente.id_utente}" name="id"/>
                    
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