<?php
$parametros = array();

$de = $_POST['contato']['email'];
$para = 'contato@neloreaguafriajg.com.br';
// $para = 'favositesweb@gmail.com';

$assunto ='www.neloreaguafriajg.com.br[contato]';

$headers = "From: ".$de." \r\n";
// $headers .= "Reply-To: favositesweb@gmail.com \r\n";
$headers .= 'Content-type: text/html;' . "\r\n";
$mensagem =  $headers."\r\n".$_POST['contato']['mensagem'];

if(email($de, $para, $assunto, $mensagem)){
	$parametros['sucesso'] = "Mensagem enviada com suceso!";
}else{
	$parametros['erro'] = "Erro ao enviar mensagem!";
}

$msg = 	encode(serialize($parametros));

redirecionar2('redirect', '../contato/'.$msg, false,false, false);
?>