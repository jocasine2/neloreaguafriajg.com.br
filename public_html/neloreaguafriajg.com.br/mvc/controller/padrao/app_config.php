<?php
if (!empty($_SERVER['HTTPS']) && ('on' == $_SERVER['HTTPS'])) {
	$uri = 'https://';
} else {
	$uri = 'http://';
}

//produção
	// $base = 'http://www.neloreaguafriajg.com.br/';
	// $bd_usuario = "favos925_nelore";
	// $bd_senha = "fria5544";
	// $bd = "favos925_neloreaguafria";

#homologação
	// $base = 'http://www.neloreaguafriajg.joaquimnet.com.br/';
	// $bd = "favos925_neloreaguafria_hom";


//teste
	$base = 'http://localhost:8040/';
	$bd_usuario = "joaquim";
	$bd_senha = "123456";
	$bd = "neloreaguafriajg_development";
?>