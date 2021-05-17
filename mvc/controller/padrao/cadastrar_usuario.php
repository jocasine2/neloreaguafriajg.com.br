<?php
// include("../../funcoes_jc.php");
	// atualizar_bd('nutribuilder', $_POST['usuarios']);
	
	$resp = array();
	if (isset($_POST['usuarios']['senha_2']) && isset($_POST['usuarios']['senha']) && $_POST['usuarios']['senha_2'] == $_POST['usuarios']['senha']) {
		unset($_POST['usuarios']['senha_2']);

		$_POST['usuarios']['senha'] = md5($_POST['usuarios']['senha']);

		$resp = inserir(prepara_campos($_POST), 'Usuario cadastrado com sucesso', 'Erro ao cadastrar usuario');	
		
		$id_novo_usuario = $resp['id_item'];
	}

	if(isset($_POST['usuarios']['cidade']) && 
	   isset($_POST['usuarios']['uf']) &&
	   isset($_POST['usuarios']['cep']) &&
	   isset($_POST['usuarios']['bairro']) &&
	   isset($_POST['usuarios']['numero']) &&
	   isset($_POST['usuarios']['complemento'])){
	 
	   $resp = atualizar(prepara_campos($_POST), $_POST['id_usuario'], false, 'Erro ao cadastrar endereço de entrega, confira seus dados de endereço...');
	 

// finalizando a compra
		include("carrinho/finalizar_compra.php");
// fim finalizando a compra
       if(isset($resp['sucesso'])){
			redirecionar2('redirec', '../controller/carrinho/finalizar_compra.php', $resp['sucesso'], false, false);
	   }else{
			redirecionar2('redirec', '../finalizar-compra', $resp['erro'], false, false);
	   }

    }

	if(isset($resp['sucesso'])){
		redirecionar2('redirec', '../principal', $resp['sucesso'], false, false);
	}else{
		redirecionar2('redirec', '../principal', $resp['erro'], false, false);
	}

?>