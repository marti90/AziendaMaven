<%@page import="modelBean.Dipendente"%>
<%@page import="service.Gestione"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
</html><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="jQueryBuste.js"></script>

<jsp:useBean id="admin" class="modelBean.Admin" scope="session"></jsp:useBean>

<jsp:include page="../headerHtml.jsp"></jsp:include>
<jsp:include page="../Admin/navBarAdmin.jsp"></jsp:include>

<div class="ch-container">
   <div class="row">
        
        <jsp:include page="../Admin/menuLateraleAdmin.jsp"></jsp:include>
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
            <a href="../Admin/HomePageAdmin.jsp">Home</a>
        </li>
        <li>
            <a href="#">Admin</a>
        </li>
        <li>
            <a href="#">Nuova Busta Paga</a>
        </li>
    </ul>
</div>

<div class=" row">
   <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> Registra Nuova Busta Paga</h2>
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
             <form action="doRegistrazioneBustaPaga.jsp" method="post">
       
                        Dipendente: <select id="dipendente" style="width: 150px;">
                        <option value=""></option>
                        <% 
                        Gestione g = new Gestione();
    					List<Dipendente> lista = g.getTuttiDipendenti();
    					session.setAttribute("lista", lista);
    					
                        %>
                                <c:forEach items="${lista}" var="dipendente">
								            <option><c:out value="${dipendente.nome} ${dipendente.cognome}" /></option>
                                </c:forEach> 
                        </select><br>
                        
                        Data Emissione: <input type="text" id="dataEmissione" name="dataEmissione" placeholder="Data Emissione" readonly/><br>
                        Importo: <input type="text" id="importo" name="importo" placeholder="Importo"/><br>
                    
                        <button type="submit">Registra</button>
                    
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
