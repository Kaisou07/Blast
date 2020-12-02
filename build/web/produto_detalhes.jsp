
<%@page import="Model.Dados" %>
<%@page import="produto_detalhe.produto_detalhe" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Integer id = Integer.parseInt(request.getParameter("id"));
    produto_detalhe dao = new produto_detalhe();
    ArrayList<Dados> listar = dao.listar(id);
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
            <%
                if (listar.size() == 1) {
            %>
            
           <div class="card-group">     
                <% for (Dados conteudo : listar) {%>
                
                &nbsp;&nbsp;&nbsp;<div class="" style="margin-left: 25%; width: 30rem; height: auto;">

                    <br><br><img style="height:30rem;" class="card-img-top" src="<%= conteudo.getUrl_img()%>">
                    <div class="card-body" style="">
                        <h5 class="card-title "><%= conteudo.getNome_produto()%></h5>
                        <p class="card-text "><%= conteudo.getDescricao_produto()%></p>
                        <div class="alert alert-success">
                            <span><%= conteudo.getPreco_produto()%></span>
                        </div>
                        <button class="btn btn-danger btn-block additem" type="button" value="Input">Comprar</button>
                    </div>
                </div>
                <% } %>
            </div>  
            

            <%
            } else {
            %>
            <p>Produto não encontrado!</p>
            <%
                }
            %>  
        </div>
        
        <%@include file="lib/includes/footer.jsp"%>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <script src="lib/js/navbar.js"></script>
    </body>
</html>
