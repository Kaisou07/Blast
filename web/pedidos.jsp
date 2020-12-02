
<%@page import="Model.Dados" %>
<%@page import="pedido.itens_pedido"%>
<%@page import="pedido.pedido_detalhe"%>
<%@page import="pedido.produto_pedido"%>
<%@page import="endereco.listarendereco"%>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Integer numero = Integer.parseInt(request.getParameter("numero"));
    Integer id = (Integer) request.getSession().getAttribute("id");
    
    itens_pedido dal = new itens_pedido();
    ArrayList<Dados> listap = dal.listarp(numero);

    pedido_detalhe dao = new pedido_detalhe();
    ArrayList<Dados> listad = dao.listard(numero);
    
    
    // ENDERECO PUXAR DA TABELA PEDIDO APENAS AQUELE COM O ID CERTO -- LEMBRAR
    listarendereco dau = new listarendereco();
    ArrayList<Dados> endereco = dau.listarend(id);

%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="img/BlastLogo.jpg" sizes="32x32"/>

        <title>Blast e-commerce</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <link href="lib/css/cardstyle.css" rel="stylesheet" type="text/css"/>
        <link href="lib/css/navbar.css" rel="stylesheet">


        <style>
            body {
                padding-top: 10px;
            }

        </style>
    </head>
    <body>

        <div class="container shadow p-3 mb-5 bg-white rounded">
            <%@include file="lib/includes/navbar.jsp"%>

            <br><br><br>  <div class="alert alert-danger h3" role="alert">
                Encomenda
            </div>
            <div class="card" style="width: auto;">
                <div class="card-body">


                    <div class="container" style="font-size:14px;">
                        <div><label>Informações do Pedido</label></div>

                        <% for (Dados pedidod : listad) {%>
                        <div><label>Data do Pedido: <%= pedidod.getData_pedido()%>.</label></div>
                        <div><label>Forma de Pagamento: <%= pedidod.getForma_pagamento()%>.</label></div>
                        <div><label>Status do Pedido: <%= pedidod.getStatus_pedido()%>.</label></div>
                        <% }%>
                        <div class="card"> 
                            <div class="card-body">
                                <h6 class="card-title">Dados da Entrega</h6> 
                                <% for (Dados end : endereco) {%>
                                <p class="card-text"><%= end.getRua_endereco()%>, <%= end.getNumero_endereco()%> - <%= end.getEstado_endereco()%> <%= end.getCidade_endereco()%>, <%= end.getCep_endereco()%>.</p>
                                 <% } %>
                            </div>
                        </div><br>
                        <div class="card"> 
                            <div class="card-body">
                                <h6 class="card-title">Produtos</h6>
                                <%  Integer id_produto = 0;
                       for (Dados pedido : listap) {

                           id_produto = pedido.getId_produto();

                           produto_pedido dap = new produto_pedido();
                           ArrayList<Dados> lista = dap.listar(id_produto);

                                %>
                                <% for (Dados produto : lista) {%> 
                                <img style="height:20rem; width:20rem" class="" src="<%= produto.getUrl_img()%>" alt="">
                                <p class="card-text"><%= produto.getNome_produto()%></p>
                                <p class="card-text">Quantidade: <%= pedido.getQuantidade_pedido()%></p> 
                                <p class="card-text">Valor: <%= pedido.getValor_unitario()%></p>

                            </div>
                        </div><br>
                        <% }%>
                        <ul class="container">
                            <li class="list-group-item float-left rounded">Total dos Produtos</li> 
                                <%//float total = pedido.getValor_unitario() + pedido.getValor_unitario();%>
                            <li class="list-group-item float-right rounded" style="margin-left: 6px;"><%=pedido.getPreco_total()%></li>
                        </ul><br><br><br>
                        <% }%>

                    </div>
                </div>
            </div>
        </div>

        <%@include file="lib/includes/footer.jsp"%>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <script src="lib/js/navbar.js"></script>
    </body>
</html>
