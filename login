<html>
    <head>
        <title>WebMusic</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/bootpages.css" />
        <script type="text/javascript" src="js/jquery.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">

                <div class="float-left"> 
                    <div class="ml-50">
                        <img src="img/logo.png" width="100" height ="100"> 
                        <p>   
                    </div>
                </div>

                <div class="float-left"> 
                    <div class="ml-50">
                        <div id="divBusca"> 
                            <input type="text" id="txtBusca" placeholder="Buscar..."/>       
                            <img src="img/busca.png" width="30" height ="30" id="btnBusca" alt="Buscar"/> 
                        </div>
                    </div>
                </div>
                <div class="float-left"> 
                    <div class="text-nowrap" style="width: 4rem;">
                        |
                    </div>
                </div>

                <div class="float-left"> 
                    <div class="ml-50">

                        <a href="index.php"><img src="img/logo.png" alt="home" width="30" height ="30"></a>
                        <div class="text-nowrap" style="width: 6rem;">
                            home
                        </div>
                    </div>
                </div>

                <div class="float-left"> 
                    <div class="ml-50">
                        <a href="fale_conosco.html"><img src="img/telefone.png" alt="fale" width="30" height ="30"></a>
                        <div class="text-nowrap" style="width: 10rem;">
                            fale conosco
                        </div>
                    </div>
                </div>
                <div class="float-left"> 
                    <div class="ml-50">
                        <div class="text-nowrap" style="width: 4rem;">
                            nos acompanhe
                        </div>

                        <a href="https://pt-br.facebook.com/anhembi.morumbi/" target="_blank"><img src="img/face.png" alt="facebook" width="20" height ="20"></a>

                        <a href="https://www.instagram.com/anhembimorumbi" target="_blank"><img src="img/insta.png" alt="instagran" width="20" height ="20"></a>
                    </div> 
                </div> 
            </div> 
            // coleta de dados do login 
            <div class="row justify-content-md-center">
                <div class="shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="jumbotron">
                        <form class="needs-validation" novalidate action="../app/processaLogin.php" method="POST">
                            <h1 class="font-weight-light">Login:</h1>
                            <hr>
                            <div class="alert alert-info" role="alert">
                                Se você não é cadastrado <a href="cadastro.php" class="alert-link">clique aqui</a> para ter acesso ao site.
                            </div>                            
                            <label class="control-label col-sm-4" for="email">Email: </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="email" placeholder="Digite seu email" name="email" required/>
                                <div class="invalid-feedback">
                                    Forneça um e-mail válido!
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4">Senha: </label>
                                <div class="col-sm-8">
                                    <input type="password" class="form-control" id="senha" placeholder="digite sua senha" name="senha" required/>
                                    <div class="invalid-feedback">
                                        Forneça uma senha!
                                    </div>
                                    <a href="senha.php" class="alert-link" >Esqueceu sua senha?</a>
                                </div>
                            </div>
                            <tr><input type="checkbox" name="lembre" value="1"> Lembre-me<tr>
                                
                            <div class="form-row">
                                <div class="col-lg-12" style="text-align:right">
                                    <a href="index.php" class="btn btn-canc" role="button">Cancelar</a>
                                    <button class="btn btn-info" type="submit" value="login" name="login">Entrar</button>
                                </div>
                            </div>
                        </form>
                        //Chama os cookies criados 
                        <?php

                          if(isset($_COOKIE['email']) and isset($_COOKIE['senha'])) {
                          $email = $_COOKIE['email'];
                          $senha = $_COOKIE['senha'];
                           //mostra os elementos digitados no id do email e senha 
                          echo "<script> 
                              
                          document.getElementById('email').value = '$email';
                          document.getElementById('senha').value = '$senha';
       
                          </script>";

                            }
                          ?>
                    </div>
                </div>

            </div>

        </div>
        <script type="text/javascript" src="js/obrigatorios.js"></script>
    </body>
</html>
