<%@page import="modelRubrica.VoceModel"%>
<%@page import="java.util.List"%>
<%@page import="modelRubrica.RubricaModel"%>
<%@page import="service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<jsp:useBean id="cliente" class="modelBean.Cliente" scope="session"></jsp:useBean>

<jsp:include page="../headerHtml.jsp"></jsp:include>
<jsp:include page="../Cliente/navBarCliente.jsp"></jsp:include>

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
                            <a href="#">Cliente</a>
                        </li>
                        <li>
                            <a href="#">Elenco Contatti</a>
                        </li>
                    </ul>
               </div>
                
               <div class=" row">
                 
                  <div class="box col-md-12">
                  <div class="box-inner">
                  <div class="box-header well" data-original-title="">
                          <h2><i class="glyphicon glyphicon-th-list"></i> Elenco Contatti</h2>
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
			                            <th>Nome</th>
		                            	<th>Cognome</th>
		                            	<th>Telefono</th>
		                            	
	                        	</tr>

	                       </thead>
	                       <tbody>

	                   <%
		                    Gestione g= new Gestione();
	                        String nomeR=cliente.getUsername();
	                        RubricaModel r= g.getRubricaConNome(nomeR);
	                    	List<VoceModel> lista = g.getVociDiUnaRubrica(r);
		                    session.setAttribute("lista", lista);
              
                       %>
                       
                      <c:set var="i" value="1" scope="page" />
                      <c:forEach items="${lista}" var="voce">
                      <tr>
                                <td class="center"><c:out value="${i}" /></td>
                                <td class="center">${voce.nome}</td>
                                <td class="center"><c:out value="${voce.cognome}"></c:out></td>
                                <td class="center"><c:out value="${voce.telefono}"></c:out></td>
                                <td class="center">
                                     <a class="btn btn-info" href="#">
                                          <i class="glyphicon glyphicon-edit icon-white"></i>
                                          Edit
                                     </a>
                                     <form action="deleteVoceCliente.jsp" method="post">
                                          <input type="hidden" value="${voce.id_voce}" name="id_voce"/>
                                          <button type="submit" class="btn btn-danger">Delete</button>
                                          <i class="glyphicon glyphicon-trash icon-white"></i>
                                     </form>
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

