<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- left menu starts -->
        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="nav-header">Main</li>
                        <li><a class="ajax-link" href="../Admin/HomePageAdmin.jsp"><i class="glyphicon glyphicon-home"></i><span>  Home</span></a>
                        </li>
                        <li><a class="ajax-link" href="../Admin/RegistrazioneNuovoCliente.jsp"><i class="glyphicon glyphicon-plus"></i><span>  Nuovo Cliente</span></a>
                        </li>
                        <li><a class="ajax-link" href="../Admin/elencoClienti.jsp"><i class="glyphicon glyphicon-list-alt"></i><span>  Elenco Clienti</span></a>
                        </li>
                        <li><a class="ajax-link" href="../Admin/RegistrazioneNuovoDipendente.jsp"><i class="glyphicon glyphicon-plus"></i><span>  Nuovo Dipendente</span></a>
                        </li>
                        <li><a class="ajax-link" href="../Admin/elencoDipendenti.jsp"><i class="glyphicon glyphicon-list-alt"></i><span>  Elenco Dipendenti</span></a>
                        </li>
                        <li><a class="ajax-link" href="../BustePaga/RegistrazioneBustaPaga.jsp"><i class="glyphicon glyphicon-edit"></i><span> Emissione Busta Paga</span></a>
                        </li>
                        <li><a class="ajax-link" href="../BustePaga/elencoBuste.jsp"><i class="glyphicon glyphicon-list-alt"></i><span>  Elenco Buste Paga</span></a>
                        </li>
                        <li class="nav-header hidden-md">Sample Section</li>
                        <li><a href="../Login/Login.jsp"><i class="glyphicon glyphicon-lock"></i><span> Login Page</span></a>
                        </li>
                        <li><a href="../Login/doLogout.jsp"><i class="glyphicon glyphicon-lock"></i><span> Logout Page</span></a>
                        </li>
                    </ul>
                    <label id="for-is-ajax" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
                </div>
            </div>
        </div>
        <!--/span-->
        <!-- left menu ends -->