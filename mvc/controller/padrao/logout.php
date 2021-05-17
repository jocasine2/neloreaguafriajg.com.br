<?php
// include("../../funcoes_jc.php");

	session_start();
	$sexo = $_SESSION['sexo'];
	$nome = $_SESSION['nome'];
	session_destroy();

	if(isset($sexo) && $sexo =="M"){
				$parametros['alerta'] = "Voçê saiu ".$nome."...";
		       	$msg = encode(serialize($parametros));
		
				redirecionar2('editar', '../principal/'.$msg, false,false, false);
  			}elseif (isset($sexo) && $sexo =="F") {
  				$parametros['alerta'] = "Voçê saiu ".$nome."...";
		       	$msg = encode(serialize($parametros));

  				redirecionar2('editar', '../principal/'.$msg, false,false, false);
  			}else{
  				$parametros['alerta'] = "Voçê saiu ".$nome."...";
		       	$msg = encode(serialize($parametros));
			
  				redirecionar2('editar', '../principal/'.$msg, false,false, false);
  			}

	

?>