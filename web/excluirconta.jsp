<%@include file="lib/includes/validacao.jsp" %> 

<%
    Integer id = (Integer) request.getSession().getAttribute("id");;   
%>
<%@include file="lib/includes/validacao.jsp" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="img/BlastLogo.jpg" sizes="32x32"/>
        <script src="lib/js/script.js" type="text/javascript"></script>
        <link href="lib/css/perfil.css" rel="stylesheet" type="text/css"/>
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
            <form class="form-horizontal" role="form" method="get" action="excluirCliente">
            <div class="form-group">
                <div class="col-sm-3">
                    <label class="control-label h4">Tem certeza?</label>
                </div>
                
                <input type="hidden" name="id" value="<%=id%>" class="form-control" id="id">
                
                <div class="col-sm-9">
                    <input type="password" class="form-control" id="inputSenha" placeholder="Digite a Senha" required="">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <button type="submit" class="btn btn-outline-danger">Excluir</button>
                </div>
            </div>
              <a class="btn btn-primary btn-lg btn-outline-primary" href="javascript:window.history.go(-1)">Cancelar</a> 
        </form><br>
        </div>


           



        <%@include file="lib/includes/footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <script src="lib/js/navbar.js"></script>

    </body>
</html>