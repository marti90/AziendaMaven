<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript" src="doTrovaVoceCliente.js" ></script>

<jsp:useBean id="cliente" class="modelBean.Cliente" scope="session"></jsp:useBean>

<jsp:include page="../headerHtml.jsp"></jsp:include>
<jsp:include page="../Cliente/navBarCliente.jsp"></jsp:include>

<% 
if(cliente.isValid()){
%>

<div class="ch-container">
   <div class="row">
        
        <jsp:include page="../Cliente/MenuLateraleCliente.jsp"></jsp:include>
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
            <a href="../Cliente/HomePageCliente.jsp">Home</a>
        </li>
        <li>
            <a href="#">Sezione Cliente</a>
        </li>
        <li>
            <a href="#">Trova Contatto</a>
        </li>
    </ul>
</div>
<div class=" row">
   <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> Trova una Voce della Rubrica</h2>
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
             <form>
             
                    <div class="form-group">
                        <label>Nome</label>
                        <input type="text" class="form-control" id="nome" placeholder="Inserisci Nome" >
                    </div>
                    
                    <div class="form-group">
                        <label>Cognome</label>
                        <input type="text" class="form-control" id="cognome" placeholder="Inserisci Cognome">
                    </div>
                    
                    <input type="hidden" value="${cliente.username}" id="nomeRubrica"/>
                   
                    <input type="button" id="btn" value="Trova" />
                    
             </form>
        </div>
      </div>
   </div>
   </div>
   
   <div id="risposta">
   
   
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
</div>

<jsp:include page="../IncludeScriptEnd.jsp"></jsp:include>



<%
   }else {
	   response.sendRedirect("../Login/Login.jsp");
   }
%>