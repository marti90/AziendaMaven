<%@page import="modelBean.BustaPaga"%>
<%@page import="java.util.List"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<jsp:useBean id="admin" class="modelBean.Admin" scope="request"></jsp:useBean>

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
                            <a href="#">Elenco Buste Paga</a>
                        </li>
                    </ul>
               </div>
                
               <div class=" row">
                 
                  <div class="box col-md-12">
                  <div class="box-inner">
                  <div class="box-header well" data-original-title="">
                          <h2><i class="glyphicon glyphicon-th-list"></i> Elenco Buste Paga</h2>
                  <div class="box-icon">
                          <a href="#" class="btn btn-setting btn-round btn-default"><i class="glyphicon glyphicon-cog"></i></a>
                          <a href="#" class="btn btn-minimize btn-round btn-default"><i class="glyphicon glyphicon-chevron-up"></i></a>
                          <a href="#" class="btn btn-close btn-round btn-default"><i class="glyphicon glyphicon-remove"></i></a>
                  </div>
               </div>
               <div class="box-content">
                  <table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
                          <thead>
		                        <tr>
			                            <th>Numero</th>
			                            <th>Nome Dipendente</th>
			                            <th>Cognome Dipendente</th>
		                            	<th>Data Emissione</th>
		                            	<th>Importo</th>
		                            	<th>Azioni</th>
			
	                        	</tr>

	                       </thead>
	                       <tbody>

	                   <%
		                    Gestione g= new Gestione();
	                    	List<BustaPaga> lista = g.getTutteBuste();
		                    session.setAttribute("lista", lista);
              
                       %>
                       
                      <c:set var="i" value="1" scope="page" />
                      <c:forEach items="${lista}" var="busta">
                      <tr>
                                <td class="center"><c:out value="${i}" /></td>
                                <td class="center">${busta.dipendente.nome}</td>
                                <td class="center"><c:out value="${busta.dipendente.cognome}"></c:out></td>
                                <td class="center"><c:out value="${busta.dataEmissione}"></c:out></td>
                                <td class="center"><c:out value="${busta.importo}"></c:out></td>
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
                      
                       </tr>
                       <c:set var="i" value="${i + 1}" scope="page" />
                       </c:forEach>
                      </tbody>
                    </table>
                </div>
              </div>

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
    
    <jsp:include page="../footer.jsp"></jsp:include>

</div><!--/.fluid-container-->

<jsp:include page="../IncludeScriptEnd.jsp"></jsp:include>      

<%
 }else {
 	response.sendRedirect("../Login/Login.jsp");
 }
%>