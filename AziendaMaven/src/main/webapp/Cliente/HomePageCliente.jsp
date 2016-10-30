<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<jsp:useBean id="cliente" class="modelBean.Cliente" scope="session"></jsp:useBean>

<jsp:include page="../headerHtml.jsp"></jsp:include>
<jsp:include page="navBarCliente.jsp"></jsp:include>

<% 
if(cliente.isValid()){
%>

<div class="ch-container">
   <div class="row">
        
        <jsp:include page="MenuLateraleCliente.jsp"></jsp:include>
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
            <a href="#">Cliente</a>
        </li>
    </ul>
</div>
<div class=" row">

          <!-- Devo scrivere per ogni pagina -->
          
          <h1>Benvenuto nella tua Pagina Personale ${cliente.nome}!</h1>
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
    
    <jsp:include page="../footer.jsp"></jsp:include>

</div><!--/.fluid-container-->

<jsp:include page="../IncludeScriptEnd.jsp"></jsp:include>

<%
   }else {
	   response.sendRedirect("../Login/Login.jsp");
   }
%>

    