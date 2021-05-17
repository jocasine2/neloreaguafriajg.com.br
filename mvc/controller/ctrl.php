<?php
	include("padrao/funcoes.php");

	if($_SERVER['REQUEST_METHOD']=='POST' || $_SERVER['REQUEST_METHOD']=='GET'){
		$dir = decode($_GET['code']);

		if(isset($dir)){
			if(!strstr($dir,'?')){
				include($dir);
			}else{
					// se vier uma url, coleta as variáveis
					   $url = $dir;
					   $part = explode('?', $url);
					   
					   $variable = explode('&', $part[1]);
					  

					   foreach ($variable as $key => $value) {
					   	  $v = explode('=', $value);
					   	  $_GET[$v[0]] = $v[1];
					   	  $_POST[$v[0]] = $v[1]; 
					   }
					// fim coleta de variáveis

					// incluindo o local expresso na url
					   include($part[0]);
			}
		}

		



		// require_once('carrinho/acoes_carrinho.php?acao=add&id=19');

		
	}
?>