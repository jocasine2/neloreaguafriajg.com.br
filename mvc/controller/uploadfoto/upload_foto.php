<?php

//Diretório aonde ficará os arquivos


if(!file_exists("../../imagens/fotos_usuarios/".$id_nova_pessoa && isset($id_nova_pessoa)){
    mkdir("../../imagens/fotos_usuarios/".$id_nova_pessoa);
    $dir = "../../imagens/fotos_usuarios/".$id_nova_pessoa."";
}elseif (isset($_REQUEST['id_pessoa'])) {
  $dir = "../../imagens/fotos_usuarios/".$_REQUEST['id_pessoa'];
}
//Extensões permitidas
$ext = array("gif","jpg","png");
 
//Quant. de campos do tipo FILE
$campos = 1;
 
//Se for enviado
if (isset($_POST['submit'])) {


//Obtendo info. dos arquivos
$f_name = $_FILES['file']['name'];
$f_tmp = $_FILES['file']['tmp_name'];
$f_type = $_FILES['file']['type'];


//Contar arquivos enviados
$cont=0;
 
//Repetindo de acordo com a quantidade de campos FILE
for($i=0;$i<$campos;$i++){
 
//Pegando o nome
$name = $f_name[$i];

//Verificando se o campo contem arquivo
  if ( ($name!="") and (is_file($f_tmp[$i])) and (in_array(substr($name, -3),$ext)) ) {

    if ($cont==0) {
      // echo "<b>Arquivo(s) enviados:</b>";
    }
      // echo $name." - ";
 
      //Movendo arquivo's do upload
      // echo "diretorio: ".$dir."/".$name.'<br>';

      $up = move_uploaded_file($f_tmp[$i], $dir."/".$name);
 
        //Status
        if ($up==true):
            // echo  "<i>Enviado!</i>";
              $cont++;
        else:
            // echo "<i>Falhou!</i>";
        endif;
 
      // echo "";
  }
 
}
 
// echo ($cont!=0) ? "<i>Total de arquivos enviados: </i>".$cont : "Nenhum arquivo foi enviado!";
}
?>


<?php
// extençoes aceitas
// foreach(array_merge(glob("*.gif"), glob("*.jpeg"), glob("*.jpg"), glob("*.png"), glob("*.JPG"), glob("*.PNG"), glob("*.GIF"), glob("*.JPEG")) as $arquivo ){
// echo "<img src='".$arquivo."'<span class='style1'>--</span>";
// }
?>