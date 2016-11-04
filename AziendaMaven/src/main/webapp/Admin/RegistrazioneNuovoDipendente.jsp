<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<jsp:useBean id="admin" class="modelBean.Admin" scope="session"></jsp:useBean>

<jsp:include page="../headerHtml.jsp"></jsp:include>
<jsp:include page="navBarAdmin.jsp"></jsp:include>

<% 
if(admin.isValid()){
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
                         <a href="#">Nuovo Dipendente</a>
                      </li>
                  </ul>
             </div>
   <div class=" row">
   <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> Registra Nuovo Dipendente</h2>
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
             <form role="form" action="doRegistrazioneNuovoDipendente.jsp" method="post">
             
                    <div class="form-group">
                        <label>Nome</label>
                        <input type="text" class="form-control" name="nome" placeholder="Inserisci Nome" >
                    </div>
                    
                    <div class="form-group">
                        <label>Cognome</label>
                        <input type="text" class="form-control" name="cognome" placeholder="Inserisci Cognome">
                    </div>
                    
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" name="username" placeholder="Inserisci Username">
                    </div>
                    
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Inserisci Password">
                    </div>
                    
                    <div class="form-group">
                        <label>Posizione</label>
                        <input type="text" class="form-control" name="posizione" placeholder="Inserisci Posizione">
                    </div>
                    
                    <div class="form-group">
                        <label>Stipendio</label>
                        <input type="text" class="form-control" name="stipendio" placeholder="Inserisci Stipendio">
                    </div>
                    
                    <button type="submit" class="btn btn-default">Registra</button>
                    
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

<%
}else {
	response.sendRedirect("../Login/Login.jsp");
}
%>