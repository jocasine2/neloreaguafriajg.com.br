<?php

  session_start();//tem que ser sempre no inicio
  ob_start();

  include('mvc/controller/padrao/funcoes.php');
  include_once('mvc/view/padrao/header.php');

  include_once('mvc/view/padrao/navbar.php');
 
?>
<!-- <body> -->
  <?php
      if(isset($_REQUEST['body'])){
            switch ($_REQUEST['body']){ 
                  case 'principal':
                        include_once('mvc/view/principal/principal.php');
                  break;
                  case 'galeria':
                        include_once('mvc/view/galeria_imagens/galeria_imagens.php');
                  break;
                  case 'historia':
                        include_once('mvc/view/historia/historia.php');
                  break;
                  case 'leiloes':
                        include_once('mvc/view/leiloes/leiloes.php');
                  break;
                  case 'selecao':
                        include_once('mvc/view/selecao/selecao.php');
                  break;
                  case 'touros':
                        include_once('mvc/view/touros/touros.php');
                  break;
                  case 'touro-info':
                        include_once('mvc/view/touros/touro_info.php');
                  break;  
                  case 'doadoras':
                        include_once('mvc/view/doadoras/doadoras.php');
                  break;

                  case 'contato':
                        include_once('mvc/view/contato/contato.php');
                  break;
            }
      }else{      
      		redirecionar2('redirect', 'principal', false,false, false);
            // include_once('mvc/view/padrao/login/login.php');
      }

      include_once('mvc/view/padrao/footer.php');   
  ?>
  <!--====================================JAVASCRIPTS====================================-->
<!-- </body>
</html> -->