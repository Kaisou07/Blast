
            <!-- navbar estática -->
            <nav class="navbar navbar-expand-md navbar-light bg-light fixed-top">
                <a class="navbar-brand" href="index.jsp">  <img src="img/BlastLogoC.png" alt="Blast!">   </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <!-- Lista de Categorias -->
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown ml-2">
                            <a class="nav-link dropdown-toggle h5" style="color:black" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categorias
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item dropdown-toggle" href="#">Hardwares</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="search.jsp?search=placa+de+video">Placas de Videos</a></li>
                                        <li><a class="dropdown-item" href="search.jsp?search=processador">Processadores</a></li>
                                        <li><a class="dropdown-item" href="search.jsp?search=memoria+ram">Memorias RAM</a></li>
                                        <li><a class="dropdown-item" href="search.jsp?search=ssd">SSD</a></li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item dropdown-toggle" href="#">Periféricos</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="search.jsp?search=mouse">Mouses</a></li>
                                        <li><a class="dropdown-item" href="search.jsp?search=teclado">Teclados</a></li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item dropdown-toggle" href="#">Softwares</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="search.jsp?search=sistema">Sistemas Operacionais</a></li>
                                        <li><a class="dropdown-item" href="search.jsp?search=anti+virus">Anti-Virus</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <!-- Formulario de busca -->
                        <form class="form-inline" style="margin-left: 100px;" method="GET" action="search.jsp">
                            <input name="search" id="search" class="form-control mr-1 ml-5 " type="search" required="required" placeholder="Buscar...">
                            <input class="btn btn-outline-danger my-2 my-sm-0" type="submit" value="Ok">
                        </form>
                        <!-- Cliente -->
                        <li class="nav-item dropdown clienteNav" style="margin-left: 130px;">
                            <a class="nav-link dropdown-toggle h6" style="color:black" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Área do cliente 
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="login.jsp">Minha conta</a></li>
                                <li><a class="dropdown-item" href="#">Lista de Desejos</a></li>
                                <li><a class="dropdown-item" href="#">Central de Atendimento</a></li>
                            </ul>
                        </li>

                        <!-- Carrinho de Compras -->
                        <a class="nav-link" href="cart.jsp" style="margin-left: 50px;"><img src="img/shopping-cart.png" alt="" width="24" eight="16"/></a>
                    </ul>
                </div>
            </nav>
