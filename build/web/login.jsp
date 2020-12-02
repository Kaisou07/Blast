<%-- 
    Document   : index
    Created on : 25/06/2020, 16:08:41
    Author     : kaiqu
--%>

<%
    int erro;

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }
%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="lib/css/style2.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="img/BlastLogo.jpg" sizes="32x32"/>
        <title>Minha conta</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <link href="lib/css/navbar.css" rel="stylesheet">


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
                        <h3>Logar</h3>
                    </div>


                    <div class="card-body" style="width:100%;">

                        <form name="form1" method="post" action="Login" role="form">   


                            <div class="input-group form-group rounded" style="">
                                <div class="input-group-prepend" style="width:20px;">
                                    <span class="input-group-text"><i class="fas fa-user" style="margin:10px 0px 0px 3px;"></i></span>
                                </div>
                                <input type="text" name="inputEMail" class="form-control" id="inputEMail" placeholder="Email" required="">
                            </div>


                            <div class="input-group form-group rounded">
                                <div class="input-group-prepend" style="width:20px;">
                                    <span class="input-group-text"><i class="fas fa-key" style="margin:10px 0px 0px 3px;"></i></span>
                                </div>            
                                <input type="password" name="inputSenha" class="form-control" id="inputSenha" required="" placeholder="Senha">
                            </div>



                            <div class="form-group">
                                <input  class="btn float-right login_btn" type="submit" name="Submit" value="Logar">
                            </div>



                            <%
                                if (erro == 1){
                            %>
                            <p class="ml-3" >Usuário e/ou senha incorretos!</p>
                            <%
                                }
                                else{
                                    if (erro == 2){
                            %>
                            <p class=" ml-3">Página restrita, efetue Login!!</p>
                            <%
                                    }
                                }
                            %>

                        </form>
                    </div>                          
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Nao tem uma conta?<a href="registro.jsp">Registrar</a>
                        </div>
                        <div class="d-flex justify-content-center">
                            <a href="#">Esqueceu sua senha?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>           
        <!-- fim do card -->
        <%@include file="lib/includes/footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        crossorigin="anonymous"></script>

        <script src="lib/js/navbar.js"></script>
    </body>
</html>