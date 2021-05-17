<?php
ob_start();
// include("../../funcoes_jc.php");
$mysqli = conexao_bd2();


$_POST['senha'] = md5($_POST['senha']);

$parametros = array();


if(!isset($_SESSION['id_sessao']) || $_SESSION['id_sessao'] != session_id()){

		$sql = "SELECT 	
					email,
					senha,
					usuarios.id_usuarios,
                    nome,
                    sexo,
                    administradores.id_administradores
                    FROM usuarios
                    LEFT JOIN administradores ON administradores.id_usuarios = usuarios.id_usuarios 
					WHERE usuarios.email = '".$_POST['login']."' AND usuarios.senha = '".$_POST['senha']."'";

		$query = $mysqli->query($sql);

		if($res = $query->fetch_array()){

				if( $_POST['login']==$res['email'] && $_POST['senha']==$res['senha'] ){

					session_start();
					$_SESSION['id_administradores'] = $res['id_administradores'];
					$_SESSION['email'] = $_POST['login'];
					$_SESSION['id_sessao'] = session_id();
					$_SESSION['id_usuario'] = $res['id_usuarios'];
					$_SESSION['nome'] = $res['nome'];
					$_SESSION['sexo'] = $res['sexo'];


					
				if($res['id_administradores']){
					$parametros['sucesso'] = "Seja bem vindo ".$res['nome']."!";
			       	$msg = encode(serialize($parametros));
					redirecionar2('redirect', '../area-administrativa/'.$msg, false,false, false);
				}

				if($_SESSION['sexo']=="M"){
					$parametros['sucesso'] = "Seja bem vindo ".$res['nome']."!";
					$msg = 	encode(serialize($parametros));
					redirecionar2('redirect', '../principal/'.$msg, false,false, false);


	  			}elseif ($_SESSION['sexo']=="F") {
	  				$parametros['sucesso'] = "Seja bem vinda ".$res['nome']."!";
	  				$msg = 	encode(serialize($parametros));
	  				redirecionar2('redirect', '../principal/'.$msg, false,false, false);
	  			}

				}else{

					$parametros['erro'] = "Usuario ou Senha incorretos";
					$msg = 	encode(serialize($parametros));
					redirecionar2('redirect', '../principal/'.$msg, false,false, false);
	
				}
			}else{
				$parametros['erro'] = "Usuario ou Senha incorretos";
				$msg = 	encode(serialize($parametros));
				redirecionar2('redirect', '../principal/'.$msg, false,false, false);
			}
			
}else{
	   $msg = 	encode($parametros);
	   redirecionar2('redirect', '../principal/'.$msg, false,false, false);
}
?>