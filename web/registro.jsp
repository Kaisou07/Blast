<%-- 
    Document   : index
    Created on : 25/06/2020, 16:08:41
    Author     : Kaique & Gabriel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                        <h3>Registrar</h3>
                    </div>
                    <div class="card-body">

                        <form name="registroblast" method="post" action="cadastro">



                            <!--Nome Completo-->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input name="inputNome" type="text" class="form-control" required="required" placeholder="Nome Completo">
                            </div>

                            <!--Email-->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                </div>
                                <input name="inputEMail" type="text" class="form-control" required="required" placeholder="E-Mail">
                            </div>

                            <!--CPF-->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-address-card"></i></span>
                                </div>
                                <input name="inputCPF" type="text" onkeypress="formatar(this, '000.000.000-00')" maxlength="14" class="form-control" required="required" placeholder="CPF">
                            </div>

                            <!--Senha-->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input name="inputSenha" type="password" class="form-control" required="required" placeholder="Senha">
                            </div>

                            <!--Confirmar Senha-->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input name="inputCSenha" type="password" class="form-control" required="required" placeholder="Confirmar Senha">
                            </div>


                            <div class="form-group">
                                <input type="submit" name="Submit" value="Registrar" class="btn float-right login_btn">
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Já tem uma conta?<a href="_clielogin.jsp">Logar-se</a>
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
