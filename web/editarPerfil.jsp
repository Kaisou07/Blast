<%@include file="lib/includes/validacao.jsp" %> 
<%@page import="Model.Dados" %>
<%@page import="editarPerfil.editarPerfil"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Integer id = Integer.parseInt(request.getParameter("id")) ;
    
    editarPerfil dao = new editarPerfil();
    ArrayList<Dados> lista = dao.listar(id);
 %>

<html lang="en">
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="lib/css/style.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="img/BlastLogo.png"/>
        <title>Minha conta</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <link href="lib/css/navbar.css" rel="stylesheet">



        <!--Demo purpose css-->
        <style>
            body {
                padding-top: 10px;
            }

        </style>
    </head>
    <body>

        <div class="container shadow p-3 mb-5 bg-white rounded">

            <%@include file="lib/includes/navbar.jsp" %>
        </div>

        <br><br><br><br>

        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card cardlogin">
                    <div class="card-header">
                        <h3>Alterar Informações</h3>
                    </div>
                    <div class="card-body">

                        <% if(lista.size() == 1){ %>
                             <% for(Dados conteudo : lista) { %>

                        <form name="alterarinfo" method="post" action="updatePerfil">


                             <input type="hidden" name="id" value="<%=id%>" class="form-control">
                             <input type="hidden" name="txtCPF" value="<%= conteudo.getCpf_cliente() %>" class="form-control" id="txtCPF">
                            <!--Nome Completo-->
                            <div class="input-group form-group rounded">
                                <div class="input-group-prepend" style="width:20px;">
                                    <span class="input-group-text"><i class="fas fa-user" style="margin:10px 0px 0px 3px;"></i></span>
                                </div>
                                <input name="txtNome" type="text" value="<%= conteudo.getNome_cliente()%>" class="form-control" required="required" placeholder="Nome Completo">
                            </div>

                            <!--Email-->
                            <div class="input-group form-group rounded">
                                <div class="input-group-prepend" style="width:20px;">
                                    <span class="input-group-text"><i class="fas fa-envelope" style="margin:10px 0px 0px 3px;"></i></span>
                                </div>
                                <input name="txtEmail" type="text" value="<%= conteudo.getEmail_cliente()%>" class="form-control" required="required" placeholder="E-Mail">
                            </div>


                            <!--Senha-->
                            <div class="input-group form-group rounded">
                                <div class="input-group-prepend" style="width:20px;">
                                    <span class="input-group-text"><i class="fas fa-key" style="margin:10px 0px 0px 3px;"></i></span>
                                </div>
                                <input name="txtSenha" type="password"  class="form-control" required="required" placeholder="Senha">
                            </div>

                            <!--Confirmar Senha
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input name="txtSenhaC" type="password" class="form-control" required="required" placeholder="Confirmar Senha">
                            </div>
                               -->

                            <div class="form-group">
                                <input type="submit" name="Submit" value="Alterar" class="btn float-right login_btn">
                                <a name="CancelarUpdate" href="javascript:window.history.go(-1)" class="btn text-light btn-primary">Cancelar</a>
                            </div>
                        </form>
                        <% }
                            }%>
                    </div>
                </div>
            </div>
        </div>           
        <!-- fim do card -->




        <%@include file="lib/includes/footer.jsp" %>

        <script>

            function formatar(src, mask)
            {
                var i = src.value.length;
                var saida = mask.substring(0, 1);
                var texto = mask.substring(i);
                if (texto.substring(0, 1) !== saida)
                {
                    src.value += texto.substring(0, 1);
                }
            }

        </script>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <script src="lib/js/navbar.js"></script>
    </body>
</html>
