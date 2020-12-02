<%@include file="lib/includes/validacao.jsp" %> 
<%@page import="Model.Dados" %>
<%@page import="listarPedido.listarPedido" %>
<%@page import="endereco.listarendereco" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  Integer id = (Integer) request.getSession().getAttribute("id");
    Integer numero = 0;
    listarPedido dao = new listarPedido();
    ArrayList<Dados> listapedido = dao.listar(id);

    listarendereco dal = new listarendereco();
    ArrayList<Dados> listaendereco = dal.listarend(id);
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="img/BlastLogo.jpg" sizes="32x32"/>
        <script src="lib/js/script.js" type="text/javascript"></script>
        <link href="lib/css/perfil2.css" rel="stylesheet" type="text/css"/>
        <title>Minha conta</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <link href="lib/css/navbar.css" rel="stylesheet">


        <style>
            body {
                padding-top: 10px;
            }
            .tabcontent {
                display: none;
            } 
        </style>
    </head>

    <body>

        <div class="container shadow p-3 mb-5 bg-white rounded">

            <%@include file="lib/includes/navbar.jsp" %>
        </div>



        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <% String logado = (String) request.getSession().getAttribute("logado");
                        if (logado == "TRUE") {
                            String nome = (String) request.getSession().getAttribute("nome");
                    %>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div id="content" class="content content-full-width">
                                    <!-- inicio do perfil -->
                                    <div class="profile">
                                        <div class="profile-header">           
                                            <div class="profile-header-cover"></div>



                                            <div class="profile-header-content">
                                                <!-- inicio da imagem do perfil -->
                                                <div class="profile-header-img">
                                                    <img src="img/avatar7.png" alt="">
                                                </div>

                                                <!-- fim da imagem do perfil -->
                                                <div class="profile-header-info">
                                                    <h4 class="m-t-10 m-b-5"><%=nome%></h4>
                                                    <p class="m-b-10">Cliente fiél Blast!</p>
                                                    <a href="editarPerfil.jsp?id=<%=id%>" class="btn btn-xs btn-outline-danger">Editar Perfil</a>
                                                </div>
                                            </div>

                                            <ul class="profile-header-tab nav nav-tabs">
                                                <li class="nav-item"><a href="#encomendas" class="nav-link tablinks" onclick="navegacao(event, 'encomenda')" data-toggle="tab">Encomendas</a></li>
                                                <li class="nav-item disabled"><a href="#listadesejos" class="nav-link tablinks" onclick="navegacao(event, '#desejo')" data-toggle="tab">Lista de Desejos</a></li>
                                                <li class="nav-item disabled"><a href="#avaliacao" class="nav-link tablinks" onclick="navegacao(event, '#avaliacao')" data-toggle="tab">Avaliações</a></li>
                                                <li class="nav-item disabled"><a href="#produtofavorito" class="nav-link tablinks" onclick="navegacao(event, '#favorito')" data-toggle="tab">Favoritos</a></li>
                                                <li class="nav-item"><a href="#clienteenderecos" class="nav-link tablinks" onclick="navegacao(event, 'endereco')" data-toggle="tab">Endereços Salvos</a></li>
                                                <li class="nav-item"><a href="#seguranca" class="nav-link tablinks" onclick="navegacao(event, 'seguranca')" data-toggle="tab">Segurança</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <!-- fim do perfil -->
                                    <div class="profile-content">

                                        <div class="tab-content p-0">

                                            <div class="tab-pane fade in active show" id="profile-about">


                                                <%
                                                    if (listapedido.size() > 0) {
                                                %>
                                                <!-- inicio da tabela encomenda -->
                                                <div id="encomenda" class="table-responsive tabcontent">
                                                    <% for (Dados pedido : listapedido) {%>
                                                    <div class="container">
                                                        <div class="card float-left" id="encomendas" style="margin-left: 10px;width: 18rem;">
                                                            <ul class="list-group list-group-flush">
                                                                <li class="list-group-item">Número:&nbsp;<%= pedido.getNumero_pedido()%></li>
                                                                <li class="list-group-item h6">Status:&nbsp;<%= pedido.getStatus_pedido()%></li>
                                                                    <%numero = pedido.getNumero_pedido();%>
                                                                <li class="btn"><a href="pedidos.jsp?numero=<%=numero%>" class="btn btn-outline-success">Ver pedido</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <% } %>

                                                    <%
                                                        }
                                                    %>  
                                                </div>
                                                <!-- fim da tabela encomenda -->


                                                <!-- inicio da tabela lista de desejos -->
                                                <div id="desejo" class="table-responsive tabcontent">
                                                    <div class="card" id="encomendas" style="width: 18rem;">
                                                        <ul class="list-group list-group-flush">
                                                            <li class="list-group-item">Número: 3</li>
                                                            <li class="list-group-item h6">Status: Pedido concluido</li>
                                                        </ul>
                                                        <!-- fim da tabela lista de desejos -->
                                                    </div>
                                                </div>




                                                <!-- inicio da tabela lista de avaliações -->
                                                <div id="avaliacao" class="table-responsive tabcontent">
                                                    <div class="card" id="encomendas" style="width: 18rem;">
                                                        <ul class="list-group list-group-flush">
                                                            <li class="list-group-item">Número: 4</li>
                                                            <li class="list-group-item h6">Status: Pedido concluido</li>
                                                        </ul>
                                                        <!-- fim da tabela lista de avaliações -->
                                                    </div>
                                                </div>

                                                <!-- inicio da tabela lista de favorito -->
                                                <div id="favorito" class="table-responsive tabcontent">
                                                    <div class="card" id="encomendas" style="width: 18rem;">
                                                        <ul class="list-group list-group-flush">
                                                            <li class="list-group-item">Número: 5</li>
                                                            <li class="list-group-item h6">Status: Pedido concluido</li>
                                                        </ul>
                                                        <!-- fim da tabela lista de favorito -->
                                                    </div>
                                                </div>

                                                <%
                                                    if (listaendereco.size() >= 0) {
                                                %>
                                                <!-- inicio da tabela lista de endereco -->
                                                <div id="endereco" class="table-responsive tabcontent">
                                                   

                                                    <div id="encomendas">
                                                        <table class="table text-center table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th>CEP</th>
                                                                    <th>Estado</th>
                                                                    <th>Cidade</th>
                                                                    <th>Rua</th>
                                                                    <th>Número</th>
                                                                    <th>Ações</th>
                                                                </tr>
                                                            </thead>
                                                             <% for (Dados endereco : listaendereco) {%>
                                                            <tbody>
                                                                <tr>
                                                                    <td><%= endereco.getCep_endereco()%></td>
                                                                    <td><%= endereco.getEstado_endereco()%></td>
                                                                    <td><%= endereco.getCidade_endereco()%></td>
                                                                    <td><%= endereco.getRua_endereco()%></td>
                                                                    <td><%= endereco.getNumero_endereco()%></td>
                                                                    <td><a class="btn btn-outline-warning"  href="#endereco.jsp"><i class="fas fa-edit"></i></a>&nbsp;&nbsp;&nbsp;<a class="btn btn-outline-danger" href="#endereco.jsp"><i class="fas fa-trash"></i></a></td>
                                                                </tr>
                                                            </tbody>
                                                            <% } %>
                                                        </table>
                                                    </div>
                                                    
                                                    <a class="btn btn-outline-info btn-block" href="#endereco.jsp">Novo Endereço</a>
                                                </div><br> <% } %>  

                                                <!-- fim da tabela lista de endereco -->


                                                <!-- inicio da tabela segurança -->
                                                <div id="seguranca" class="table-responsive tabcontent">

                                                    <button class="btn btn-outline-secondary form-control" type="button">Adicionar Empresa a conta</button><br>
                                                    <br> <button class="btn btn-outline-primary form-control" type="button">Baixar informações da conta</button><br>
                                                    <br><a class="btn btn-outline-danger form-control" href="excluirconta.jsp">Excluir sua conta</a>

                                                </div>
                                                <!-- fim da tabela segurança -->


                                            </div>
                                            <!-- end #profile-about tab -->
                                        </div>
                                        <!-- end tab-content -->
                                    </div>
                                    <!-- end profile-content -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }%>
                </div>
            </div>
        </div>
        <%@include file="lib/includes/footer.jsp" %>
        <script>
            function navegacao(evt, nome) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(nome).style.display = "block";
                evt.currentTarget.className += " active";
            }
        </script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <script>$(document).ready(function () {
                $('[data-toggle="popover"]').popover();
            });</script>


        <script src="lib/js/navbar.js"></script>

    </body>
</html>