<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>

<jsp:useBean id="utente" class="modelBean.Utente" scope="session"></jsp:useBean>
<jsp:include page="headerHtml.jsp"></jsp:include>
<jsp:include page="navBarAdmin.jsp"></jsp:include>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="Stylesheet" type="text/css" href="css/stat.css">

<title>Registrazione Cliente</title>
</head>
<body>
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
        <li>
            <a href="#">Nuovo Cliente</a>
        </li>
    </ul>
</div>
<div class=" row">
   <h1>Registrazione Nuovo Cliente</h1>
   <form action="doRegistrazioneNuovoCliente.jsp" method="post">
   
   Nome : <input type="text" name="nome" /> <br>
   Cognome : <input type="text" name="cognome"/> <br>
   Username : <input type="text" name="username"/> <br>
   Password : <input type="password" name="password"/> <br>
   Ragione Sociale : <input type="text" name="ragioneSociale"/> <br>
   Partita IVA : <input type="text" name="piva"/> <br>
   <input type="submit" value ="Registra"/>
   
   </form>

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
  </div>
  </div> <!--  end of container -->
  <jsp:include page="IncludeScriptEnd.jsp"></jsp:include>
</body>
</html>