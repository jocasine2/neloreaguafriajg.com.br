<?php
// conexao_bd()
// aba($nome_aba, $icone, $ativa)
// campos_form_editar($nome_tabela, $id)
// consulta_nome_bd_tabela($nome_tabela)
// consulta_nome_bd_tabela($nome_tabela)
// formata_str_simples($nome_campo)
// consulta_sql($sql, $nome_tabela_principal)
// lista($arr_consulta, $nomes_col, $arr_actions)
// acoes($arr_actions, $id_tabela)
// set_id_bt($bt,$id_tabela)
// checkbox($tabela, $nome_checkbox_group, $nome_checkbox, $check)
// textarea($tabela, $nome_textarea, $texto, $dica, $observacao, $tamanho, $required)
// radiogroup($nome_radio_group, $tabela, $coluna, $opcoes, $checked)
// bt_submit($nome_btn, $id_botao, $classe_botstrap)
// inputtext($tabela, $nome_inputtext, $valor, $dica, $observacao, $mascara, $tamanho, $required)
// inputid($tabela, $nome_inputtext, $valor, $dica, $observacao)
// selectag($tabela, $nome_select, $valor, $dica, $observacao)
// debugar($var)
// formata_data_bd($data_formato_usuario)
// formata_data_usuario($data_formato_usuario)
// galeria_imagens($nome_galeria, $arr_caminhos_img)
// galeria_imagens2($nome_galeria, $arr_caminhos_img)
// alinha_array($arr)
// valida_data($data_do_formulario)
// prepara_campos($campos)
// pegar_tipo($valor)
// atualiza_banco($nome_aplicacao, $array_tabela)
// formata_campos_bd($formato_tabela, $nome_aplicacao)
// atualizar_bd($nome_aplicacao, $arr)
// function conexao_bd2() obs: desativada.

// valida_date_time($data_hora) obs: não implementada.
// valida_hora($hora) obs: não implementada.

include("app_config.php");


function loop_banners(){
	$html='';
	$sql_dados = "SELECT * FROM favos925_neloreaguafria_admin.leiloes WHERE ativo = 1 ORDER BY data_leilao DESC LIMIT 1"; 
  	$array_consulta = consulta_sql($sql_dados, NULL);

  	foreach ($array_consulta['resultado_consulta'] as $key => $leilao) {
  		$html .= banner_principal($leilao);
  	}

  	return $html;
}

function banner_principal($leilao){
	
	$url_banner = 'https://admin.neloreaguafriajg.com.br/assets/imagens/leiloes/'.$leilao['id_leiloes'].'/'.$leilao['banner'];

	$ref_leilao = 'leiloes/'.$leilao['id_leiloes'];

	$html='<li>
            <a href="'.$ref_leilao.'">
              <div class="item" style="background: url(\''.$url_banner.'\') no-repeat center #eee; background-size: contain;">
              </div>
            </a>
          </li>';

  return $html;
}

function card($leilao){

	$url_banner = 'assets/imagens/leiloes/'.$leilao['id_leiloes'].'/'.$leilao['banner'];

	$html ='<div class="card-media col-md-4" onclick="location.href=\'leiloes/'.$leilao['id_leiloes'].'\'" stye="cursor: pointer;">
    <!-- media container -->
    <div class="card-media-object-container">
      <div class="card-media-object" style="background-image: url(\'https://admin.neloreaguafriajg.com.br/'.$url_banner.'\');"></div>
      <ul class="card-media-object-social-list">
        
      </ul>
    </div>
    <!-- body container -->
    <div class="card-media-body">
      <div class="card-media-body-top">
        <span class="subtle">'.formata_data_usuario($leilao['data_leilao']).', '.$leilao['hora_leilao'].'</span>
        <!-- btn compart -->
        <div class="/*card-media-body-top-icons*/ u-float-right">
          
           <!--<svg fill="#888888" height="16" viewBox="0 0 24 24" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M0 0h24v24H0z" fill="none"/>
            <path d="M18 16.08c-.76 0-1.44.3-1.96.77L8.91 12.7c.05-.23.09-.46.09-.7s-.04-.47-.09-.7l7.05-4.11c.54.5 1.25.81 2.04.81 1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3c0 .24.04.47.09.7L8.04 9.81C7.5 9.31 6.79 9 6 9c-1.66 0-3 1.34-3 3s1.34 3 3 3c.79 0 1.5-.31 2.04-.81l7.12 4.16c-.05.21-.08.43-.08.65 0 1.61 1.31 2.92 2.92 2.92 1.61 0 2.92-1.31 2.92-2.92s-1.31-2.92-2.92-2.92z"/>
          </svg> -->
        </div>
        <!-- btn compart -->
      </div>
      <span class="card-media-body-heading">'.$leilao['nome'].'</span>
      <span class="card-media-body-heading">'.$leilao['desc_leilao'].'</span>
      <div class="card-media-body-supporting-bottom">
        <span class="card-media-body-supporting-bottom-text subtle">'.$leilao['local_evento'].'</span>
      </div>
     <div class="card-media-body-supporting-bottom card-media-body-supporting-bottom-reveal">
        <p href="#" class="card-media-body-supporting-bottom-text card-media-link u-float-right">Galeria do evento</p>
      </div> 
    </div>
  </div>';

  return $html;
}

function leiloes($id_leiloes){
	$html = '';

	$sql_dados = "SELECT * FROM favos925_neloreaguafria_admin.leiloes WHERE id_leiloes= ".$id_leiloes; 

	$array_consulta = consulta_sql($sql_dados, NULL);
	if(isset($array_consulta['resultado_consulta'][0])){
  	return $array_consulta['resultado_consulta'][0];
	}
}

function galeria_video_leiloes($id_leiloes){
	$html = '';
	$cont = 0;

	if($id_leiloes){
		// galeria de videos
		$sql_dados = "SELECT * FROM favos925_neloreaguafria_admin.videos_leiloes WHERE id_leiloes = ".$id_leiloes." ORDER BY nome ASC"; 


		// s($sql_dados);
	  	$array_consulta = consulta_sql($sql_dados, NULL);
// s($array_consulta);
	  	if(!empty($array_consulta['resultado_consulta'])){
		  	foreach ($array_consulta['resultado_consulta'] as $key => $video) {

		  		if($cont == 0){
	  	  			$html .= '<li>';
		  		}

		  		$html .= '<a class="fancybox2 fancybox.iframe" href="https://admin.neloreaguafriajg.com.br/assets/videos/videos_leiloes/'.$video['id_videos_leiloes'].'/'.$video['link'].'?enablejsapi=1&wmode=opaque">'.$video['nome'].'<div class="item" style="background: url(https://admin.neloreaguafriajg.com.br/assets/imagens/miniaturas_videos_leiloes/'.$video['id_videos_leiloes'].'/'.$video['link_miniatura'].') no-repeat center #eee; background-size: cover;"></div></a>';

	          if($cont == 3){
	       			$html .= '</li>';
	       			$cont = 0;
	       		}else{
	       			$cont++;
	       		}       		
		  	}
	  	}else{
	  		s("<h3>Esse evento ainda não possui vídeos...</h3>");
	  	}
	}else{
		#card ref para glaeria
		$sql_dados = "SELECT * FROM favos925_neloreaguafria_admin.leiloes WHERE ativo = 1 ORDER BY data_leilao DESC"; 
	  	$array_consulta = consulta_sql($sql_dados, NULL);
	
	  	foreach ($array_consulta['resultado_consulta'] as $key => $leilao) {
	  		$html .= '<div class="col-md-12">'.card($leilao).'</div>';
	  	}
	}

  	return $html;
}

function galeria_fotos(){
	$html = '';
	$cont = 0;
	$sql_dados = "SELECT * FROM fotos ORDER BY id_fotos DESC"; 
  
  	$array_consulta = consulta_sql($sql_dados, NULL);

  	  foreach ($array_consulta['resultado_consulta'] as $key => $value) {
  	  	if($cont == 0){
  	  		$html .= '<li>';
	  	}


	 //  	$html .='<a id="single_2" href="'.$value['link_foto'].'" title="'.$value['titulo'].'">
		// 	<img src="'.$value['link_foto'].'" alt="'.$value['titulo'].'" />
		// </a>';


	  	$html .= '<a class="single_2" id="foto_'.$key.'"  rel="gal1"  title="'.($value['titulo']).'" href="'.$value['link_foto'].'"  alt="'.$value['titulo'].'">
                  	<div class="item" style="background: url('.$value['link_foto'].') no-repeat center #eee; background-size: cover;"></div>
                  </a>';

        $cont++;

        if($cont == 3){
       		$html .= '</li>';
       		$cont = 0;
       	}

       }

       
       return $html;
}


function fotos_doadoras(){
	$html = '';

	$sql_dados = "SELECT * from fotos where titulo = 'Doadoras'"; 
  
  	$array_consulta = consulta_sql($sql_dados, NULL);

  	  foreach ($array_consulta['resultado_consulta'] as $key => $value) {

	  	$html .= '<div class="item">
			          <div class="nome">'.$value['titulo'].'</div>
			          <a class="fancybox" rel="fotostouros" href="'.$value['link_foto'].'" title="'.$value['titulo'].'">
			            <span class="foto" style="background: url('.$value['link_foto'].') no-repeat center #eee; background-size: cover;"></span>
			            <p></p>
			          </a>
			        </div>';

       }

       return $html;
}

function fotos_touro($id_touros){

  $sql_videos_touro = "SELECT
                          *
                        FROM
                          videos_touros
                        WHERE id_touros = ".$id_touros; 
  
  $array_consulta = consulta_sql($sql_videos_touro, NULL);
  $videos_touro = array();



  foreach ($array_consulta['resultado_consulta'] as $key => $value) {
	  	$html .= '<div class="item">
                <a class="fancybox" rel="fotostouros" href="link_img_miniatura?>" title="legenda">
                  <span class="foto" style="background: url(link_img_miniatura) no-repeat center #eee; background-size: cover;"></span>
                  <!-- <p>legenda</p> -->
                </a>
              </div>';
  }

return $html;
}

function videos_touro($id_touros){
  $html = '';
  $sql_videos_touro = "SELECT
                          *
                        FROM
                          videos_touros
                        WHERE id_touros = ".$id_touros; 
  
  $array_consulta = consulta_sql($sql_videos_touro, NULL);
  $videos_touro = array();

if($array_consulta['resultado_consulta']){
  $html = '<h2>VÍDEOS</h2>';

  foreach ($array_consulta['resultado_consulta'] as $key => $value) {
	  	$html .= '<div class="items">
	              <div class="item">
	                <a class="various fancybox.iframe" href="'.$value['link_videos_touros'].'?autoplay=1">
	                  <span class="foto" style="background: url('.$value['link_miniatura_video'].') no-repeat center #eee; background-size: cover;"></span>
	                  <!-- <p>legenda</p> -->
	                </a>
	              </div>
	            </div>';
  }
}
  return $html;
}

function existe_array($arr, $item){
	foreach ($arr as $key => $value) {
		if($value == $item){
			return true;
		}
	}
return false;
}

function touros(){
	$html ='';
	$sql = 'SELECT * FROM `touros` WHERE 1 ORDER BY id_touros';
	$arr_consulta = consulta_sql($sql, 'videos');

	foreach ($arr_consulta['resultado_consulta'] as $key => $dados) {

		$html .= '<div class="item">
		            <span class="nome">'.$dados['nome_touro'].'</span>
		            <a href="touro-info/'.$dados['id_touros'].'">
		              <span class="foto" style="background: url('.$dados['link_img_miniatura'].') no-repeat center #eee; background-size: cover;"></span>
		            </a>
		            <p><a href="touro-info/'.$dados['id_touros'].'">+ ver todas informações</a></p>
		          </div><!-- item -->';
	}


echo $html;


}

function galeria_video(){
	$html ='';
	$sql = 'SELECT * FROM videos WHERE videos.principal = 1 ORDER BY data_postagem DESC';
	$arr_consulta = consulta_sql($sql, 'videos');

	foreach ($arr_consulta['resultado_consulta'] as $key => $dados) {
		$link = "'".$dados['link_youtube']."'";

		$html .= '<a href="#topo-video" onclick="javascript:alte_vid('.$link.')" class="js-vertical-tab vertical-tab is-active" rel="tab'.($key+1).'">
		            <div class="item">
		              
		              <img src="https://cdn2.iconfinder.com/data/icons/metro-uinvert-dock/256/TV.png" width="50">
		              <label class="tv-click"> Click para assistir</label>
		               
		              <div class="ft" style="background-image: url('.$dados['link_img_miniatura'].');
		              background-size: cover;"></div>
		              <p><strong>'.$dados['titulo'].'</strong></p>
		              <p>'.$dados['descricao'].'</p>
		            </div>
		        </a>';
	}


echo $html;

}


function email($de, $para, $assunto, $mensagem){
	
	$headers = 'From: '.$de."\r\n".
		   'Reply-To: xuakim@gmail.com' . "\r\n" .
		   'X-Mailer: PHP/'.phpversion();

	return mail($para, $assunto, $mensagem, $headers);
}

function ctrl_encode($destino){
	$destino_ecodado = 'ctrl/'.encode($destino);

	return $destino_ecodado;
}

function alerta(){

// alertas
  if(isset($_REQUEST['msg'])){  
    $msg = array();  
   $msg = unserialize(decode($_REQUEST['msg']));

    if(isset($msg['sucesso'])){
      echo '<div id="system_message" class="">
               <div class="alert alert-success fade in">
                  <a href="#" class="close" data-dismiss="alert">&times;</a>
                  <strong>Feito!</strong> '.$msg['sucesso'].'
               </div>
            </div>';
    }elseif (isset($msg['erro'])) {
          echo '<div id="system_message" class="">       
               <div class="alert alert-danger fade in">
                  <a href="#" class="close" data-dismiss="alert">&times;</a>
                  <strong>Erro!</strong> '.$msg['erro'].'
               </div>
            </div>';
    }elseif (isset($msg['alerta'])) {
          echo '<div id="system_message" class="">       
               <div class="alert alert-warning fade in">
                  <a href="#" class="close" data-dismiss="alert">&times;</a>
                  <strong>Atenção! </strong> '.$msg['alerta'].'
               </div>
            </div>';
    }elseif (isset($msg['informacao'])) {
          echo '<div id="system_message" class="">       
               <div class="alert alert-info fade in">
                  <a href="#" class="close" data-dismiss="alert">&times;</a>
                  <strong>Ei! </strong> '.$msg['informacao'].'
               </div>
            </div>';
    }
  }
// fim alertas
}

function encode($str){
	$code = base64_encode($str);
	return $code;
}

function decode($code){
	$str = base64_decode($code);
	return $str;
}


function removeAcentos($string) {
  $string = preg_replace( '/[`^~\'"]/', null, iconv( 'UTF-8', 'ASCII//TRANSLIT', $string ) );
  return $string;
}

function conexao_bd2(){
		
		$mysqli = new mysqli('localhost', 'favos925_eco', 'ecotrilhasturismo', 'favos925_ecotrilhas');

		// Caso algo tenha dado errado, exibe uma mensagem de erro
		if (mysqli_connect_errno()) trigger_error(mysqli_connect_error());

		# Aqui está o segredo
		$mysqli->query("SET NAMES 'utf8'");
		$mysqli->query('SET character_set_connection=utf8');
		$mysqli->query('SET character_set_client=utf8');
		$mysqli->query('SET character_set_results=utf8');
		
		return $mysqli;
	}
	
function conexao_bd(){


		$mysqli = new mysqli('localhost', $GLOBALS['bd_usuario'], $GLOBALS['bd_senha'], $GLOBALS['bd']);
		
		// Caso algo tenha dado errado, exibe uma mensagem de erro
		if (mysqli_connect_errno()) trigger_error(mysqli_connect_error());

		# Aqui está o segredo
		$mysqli->query("SET NAMES 'utf8'");
		$mysqli->query('SET character_set_connection=utf8');
		$mysqli->query('SET character_set_client=utf8');
		$mysqli->query('SET character_set_results=utf8');
		
		return $mysqli;


}


function aba($nome_aba, $nome_aba_url, $icone, $ativa){
  // Recebe como parametro o nome da aba que deve ser ativada
  // e se ela esta ativa (segundo parametro)
  // se receber o nome da aba e ativo for diferente de vazio cria a aba com status "ativada"
  // senão cria a aba com satus "clicavel"  

  if(isset($nome_aba) && $ativa==$nome_aba_url)
    { 
    	// novo
    	echo ' <li class="active">
                      <a class="active">
                          <i class="'.$icone.'"></i>
                          <span>'.$nome_aba.'</span>
                      </a>
                  </li>';
        // padrao
      // echo '<li class="active"><a href="#">'.$nome_aba.'</a></li>';
    }else{
      //mudar para um jeito mais pratico
      $nome_aba_f = "'".$nome_aba_url."'";
      
    	echo ' <li class="mt">
                      <a class="sub-menu" href="javascript: conteudo('.$nome_aba_f.')">
                          <i class="'.$icone.'"></i>
                          <span>'.$nome_aba.'</span>
                      </a>
                  </li>';
    } 
}

function campos_form_editar($nome_tabela, $id){
	$mysqli = conexao_bd2();

	$query = $mysqli->query("SELECT * FROM ".$nome_tabela." WHERE id_".$nome_tabela."=".$id);
		// $result = mysql_query("SELECT * FROM ".$nome_tabela." WHERE id_".$nome_tabela."=".$id);
		
	$consulta = $query->fetch_array();
		// $consulta = mysql_fetch_array($result);


		return $consulta;
}

// cadastrada no banco de funções
	function modal($nome_visual, $nome_botao, $tamanho, $classe_botstrap, $conteudo_html){
		$mysqli = conexao_bd2();
		
		if($nome_visual){
			echo '<a class="btn btn-'.$classe_botstrap.'" data-toggle="modal" href="#'.$nome_botao.'">'.$nome_visual.'</a>';
		}
						
		echo '</div>
				<!-- Modal -->
				 <div class="modal fade" id="'.$nome_botao.'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				   <div class="modal-dialog">
				     <!--<div class="modal-content">-->';

				     	if((substr_count ($conteudo_html, ".php") || substr_count ($conteudo_html, ".html")) && substr_count ($conteudo_html, "view/")){
				     		include($conteudo_html);
				     	}else{
				     		if($conteudo_html){
				     			echo $conteudo_html;
				     		}else{
				     			echo "Nenhum parametro de conteudo html foi passado...";
				     		}
				     	}

		echo '<!--</div>--><!-- /.modal-content -->
			   </div><!-- /.modal-dialog --><!-- /.modal -->';

	}
// cadastrada no banco de funções
	
function consulta_nome_bd_tabela($nome_tabela){
	$mysqli = conexao_bd2();
	$result = $mysqli->query("SELECT database() FROM usuarios");

				if($consulta = $result->fetch_array($result)){
					return $consulta[0];
				}
	
}


function formata_str_simples($str){
		$str = utf8_decode($str);

	// Colocando a string toda em minúscula
        $str = strtolower($str);
    
    // Removendo os acentos
        $str = preg_replace("/&([a-z])[a-z]+;/i", "$1", htmlentities($str));
    
    // Formatando a URL
        $str = str_replace(" ", "_", $str);
 
        return $str;
}

function consulta_sql($sql, $nome_tabela_principal){
	$mysqli = conexao_bd();
 		$arr= array();
		if(isset($sql)){
			$temp = explode(" ", $sql);
			foreach ($temp as $key => $value) {
				if($value == 'FROM' || $value == 'from'){
					$nome_tabela_principal = formata_str_simples($temp[$key+1]);
				}
			}
		}			

		$result = $mysqli->query($sql);
		if($result){
			while($consulta = $result->fetch_array()){
				$arr[sizeof($arr)] = $consulta; 
			}
		}
		$retorno["sql"] = $sql;
		$retorno["nome_tabela_principal"] = $nome_tabela_principal;
		$retorno["resultado_consulta"] = $arr;
	

	return $retorno;
}


function lista($arr_consulta, $nomes_col, $arr_actions){

$mysqli = conexao_bd2();
// $sql
 $nome_tabela_principal = $arr_consulta['nome_tabela_principal'];
 $result = $arr_consulta['resultado_consulta'];
 echo '<!-- lista -->

		<table id="example" class="display" cellspacing="0" width="100%">
				<thead>
				  <tr>';

				  foreach ($nomes_col as $key => $value) {
						echo '<th class="">'.$value.'</th>';
				  }

				  if($arr_actions){
				    echo '<th class="">Ações</th>';
				  }

					echo '</tr>
							</thead>
							<tbody>
							';

//retirar o erro do mysql_fetch_array() quando não tem banco
				if($result){
					foreach ($result as $key2 => $value) {
						$linha = $result[$key2];
						echo '<tr>';
							foreach ($nomes_col as $key => $value) {
						  if(is_numeric($key)){
						  
								echo'
									<td>
										'.$linha[$key].'
									</td>
								';
						   }
					
							if($key=="id_".$nome_tabela_principal){
								//echo $key."==".$nome_tabela_principal;
						  		//$id_registro = $result[$key]["id_".$nome_tabela_principal];

						  		$id_registro=$linha[sizeof($nomes_col)];
						  	}
								
						}

						if($arr_actions){
							acoes($arr_actions, $id_registro);
						}
						echo '</tr>';
					}
				}else{

					// echo '<tr>';
					// echo '<td><b>Nenhum resultado...</b></td>';
					// foreach ($nomes_col as $key => $value) {
					// 	echo '<td></td>';
					// }

					
					// echo '<tr>';
				}
				

			
				    
				echo'
				  </tbody>
			</table>
			
	
		<!-- fim lista -->';


}

							
function acoes($arr_actions, $id_tabela){//ações da lista

	echo '<td class="col-md-'.sizeof($arr_actions).'">';
		echo '<input type="hidden" class="id_linha" value="'.$id_tabela.'">';
		foreach ($arr_actions as $key => $actions) {
			
			echo set_id_bt($actions, $id_tabela)." "; 
		}
	echo '</td>';

}

function set_id_bt($bt,$id_tabela){
	//substituir a primeira ocorrência da palavra Linux por <em>Linux</em>
	$bt_com_id = str_replace('()', '('.$id_tabela.')', $bt); 

return $bt_com_id;
}

 function checkbox($tabela, $nome_checkbox_group, $nome_checkbox, $check){
      // Recebe como parametro o nome do checkbox
      // e se ele esta checado (segundo parametro)
      // e o nome do grupo (terceiro parametro) que agrupara as opções marcadas 
  

        if(isset($nome_checkbox) && !$check){ 

            echo'<span class="checkbox">
                  <label for="'.$nome_checkbox.'_for" name="'.$tabela.'['.$nome_checkbox_group.']">
                    <input class="check_boxes optional" id="login com facebook" name="'.$tabela.'['.$nome_checkbox_group.'][]" type="checkbox" value="'.$nome_checkbox.'">
                    '.$nome_checkbox.'
                  </label>
                </span>';

          }else{
             if(isset($nome_checkbox) && $check){
                echo'<span class="checkbox">
                      <label for="'.$nome_checkbox.'_for" name="'.$tabela.'['.$nome_checkbox_group.']">
                        <input class="check_boxes optional" checked= "checked" id="login com facebook" name="'.$tabela.'['.$nome_checkbox_group.'][]" type="checkbox" value="'.$nome_checkbox.'">
                        '.$nome_checkbox.'
                      </label>
                    </span>';
              }
          } 
      }


      function textarea($tabela, $nome_textarea, $texto, $dica, $observacao, $tamanho, $required){

        if(isset($nome_textarea)){                              

            echo'<div class="col-sm-10">
                     <textarea '.$required.' class="string required form-control" style="height: '.$tamanho.'px;" id="user_basic_'.$nome_textarea.'" name="'.$tabela.'['.$nome_textarea.']" placeholder="'.$dica.'" type="textarea">'.$texto.'</textarea>
                       ';
                  if($observacao){
                    echo '<p class="help-block">'.$observacao.'</p>';
                  }
              echo '
                   </div>
                  ';

          }
      }

      function radiogroup($nome_radio_group, $tabela, $coluna, $opcoes, $checked){

        echo '<div class="col-sm-3">'.$nome_radio_group.'
              <div class="col-sm-10">';
 
	       foreach ($opcoes as $key => $value){
		        echo '  <div class="radio">
		                                  <label>
		                                    <input class="radio_buttons optional" id="'.$tabela.'_'.$value.'" name="'.$tabela.'['.$coluna.']" type="radio" value="'.$value.'"';
				if($checked==$value){
				  echo 'checked';
				}
				echo'>'.$value.'
				      </label>
				         </div>';
	       }
          echo '</div>';
          echo '</div>';
      }

      function bt_submit($nome_btn, $id_botao, $classe_botstrap){
      	if($classe_botstrap){
        	echo '<input class="btn btn-'.$classe_botstrap.'" id='.$id_botao.' name="commit" type="submit" value="'.$nome_btn.'">';
      	}else{
      		 echo '<input class="btn btn-default" id='.$id_botao.' name="commit" type="submit" value="'.$nome_btn.'">';
      	} 
      }

      function inputtext($tabela, $nome_inputtext, $valor, $dica, $observacao, $mascara, $tamanho, $required){
              
        echo '
              <div class="col-sm-10">
                  <input  '.$required.' class="string  form-control" id="'.$tabela.'_'.$nome_inputtext.'" name="'.$tabela.'['.$nome_inputtext.']" placeholder="'.$dica.'" type="'.$nome_inputtext.'" value="'.$valor.'"'.' OnKeyUp="'.$mascara.'"'.' maxlength="'.$tamanho.'">
              </div>';
      }



      function inputid($tabela, $nome_inputtext, $valor, $dica, $observacao){

        echo '
              <div class="col-sm-10">
                  <input class="string '.$nome_inputtext.' required form-control" id="'.$tabela.'_'.$nome_inputtext.'" name="'.$tabela.'['.$nome_inputtext.']"  type="hidden" readonly="readonly" value="'.$valor.'">
              </div>';
      }



       function selectag($tabela, $nome_select, $valor, $dica, $observacao){
 
     
        echo '<label class="col-sm-2 col-sm-2 control-label">'.$nome_select.'</label>
                              <div class="col-sm-10">
                              	<select class="string '.$nome_inputtext.' required form-control" id="'.$tabela.'_'.$nome_select.'" name="'.$tabela.'['.$nome_select.']">';
                              		$i=1;
                              		
                              		echo "<option>Selecione uma opção</option>";
                              		foreach ( $valor as $key => $value ){
							  		 	if($value){
							  		 		if(is_numeric($value))
							  		 			echo '<option value='.$valor[$key].'>';
							  		 		else
							  		 			echo $value.'</option>';
							  		 	}
							        }

                              		
        echo '</select></div>';
      }

      function s($var){
	      	echo '<pre>';
	      	if(is_array($var)){
	      		print_r($var);
	      	}else{
				echo $var;
	      	}
	      	echo '</pre>';
      }

      function formata_data_bd($data_formato_usuario){
		
      	if(strstr($data_formato_usuario,'/')){
		$temp = explode('/', $data_formato_usuario);
		$ano = $temp[2];
		$mes = $temp[1];
		$dia = $temp[0];

		return $ano."-".$mes."-".$dia;
		}
	  }

	  function formata_data_usuario($data_formato_usuario){


		$temp = explode('-', $data_formato_usuario);
		if($temp[0]){
			$ano = $temp[0];
			$mes = $temp[1];
			$dia = $temp[2];

			return $dia."/".$mes."/".$ano;
		}
	  }
	  
  	  function galeria_imagens($nome_galeria, $arr_caminhos_img){
		echo '<h2>'.$nome_galeria.'</h2>
			<ul class="gallery clearfix">		
				<ul class="gallery clearfix">
					';
		foreach ($arr_caminhos_img as $key => $caminho) {
			echo '<li>
						<a href="'.$caminho.'" rel="prettyPhoto[gallery]" title="Descrição">
							<img src="'.$caminho.'" width="60" height="60" alt="titulo aqui" />
						</a>
					</li>';
		}

		echo'</ul>
			</ul>
			';
	}	

function alinha_array($arr){
	$temp = "";
	foreach ($arr as $key => $value) {
		$temp .= $value.', ';
	}

	$array_alinhado = substr($temp,0,-2);
 return $array_alinhado;
}

function alinha_array_tipado($arr){
	$temp = "";
	foreach ($arr as $key => $value) {
			if(!is_numeric($value)){
					$temp .= "'".$value."', ";
				}else{
					$temp .= $value.", ";
				}
		
	}
	return substr($temp,0,-2);
}

  
function inserir($array_tabela, $msg_sucesso, $msg_erro){
	$tabelas = array();
	$colunas = array();
	$registros = array();


	//remove a chave primária
	foreach ($array_tabela as $key => $value) {
		$cols = $value;
		$i=0;// so pode remover a primeira chave, a primaria, se houverem outras devem parmanecer
		foreach ($cols as $nome_col => $value) {
			if(strstr($nome_col, 'id_') && $i==0){
				unset($cols[$nome_col]);
				$i=1;
			}
		}
 	
 		$array_tabela[$key] = $cols;
	}


	foreach ($array_tabela as $nome_tabela => $colunas_desalinhadas) {
		$tabelas[sizeof($tabelas)] = $nome_tabela; 
		$registros[sizeof($registros)] = alinha_array_tipado($colunas_desalinhadas);
		$colunas[sizeof($colunas)] = alinha_array(array_keys($colunas_desalinhadas));
	}

	$mysqli = conexao_bd2();

	foreach ($tabelas as $i => $value) {
		 
		 $sql = 'INSERT INTO 
	                  '.$value.'('.$colunas[$i].')
	                VALUES 
	                     ('.$registros[$i].')';


		  if($mysqli->query($sql)){
				 $msg_retorno['sucesso'] = $msg_sucesso;
				 $msg_retorno['id_item'] = mysqli_insert_id($mysqli);
		  }else{
		   		 $msg_retorno['erro'] = $msg_erro;
		  }

	     
	}
	return($msg_retorno);
}

function atualizar($array_tabela, $id, $msg_sucesso, $msg_erro){
	$tabelas = array();
	$colunas = array();
 	$bloco = array();
 	$temp = array();

	//remove a chave primária
	foreach ($array_tabela as $key => $value) {
		$tabelas[sizeof($tabelas)] = $key;
		$cols = $value;
		$z=0;// so pode remover a primeira chave, a primaria, se houverem outras devem parmanecer
		foreach ($cols as $nome_col => $value) {

			if(strstr($nome_col, 'id_') && $z==0){
				unset($cols[$nome_col]);
				$z=1;
			}else{
				if(!is_numeric($cols[$nome_col])){
					$temp[sizeof($temp)] = $nome_col." = '".$cols[$nome_col]."'";
				}else{
					$temp[sizeof($temp)] = $nome_col." = ".$cols[$nome_col];
				}				
	
			}
		}
 		
		$bloco[sizeof($bloco)] = alinha_array($temp);
 		$array_tabela[$key] = $cols;
	}

	$mysqli = conexao_bd2();

	foreach ($tabelas as $i => $value) {
		  
	      $sql = "UPDATE ".$value." SET 
							".$bloco[$i]." 
							WHERE id_".$value."=".$id;

		  $msg_retorno = array();
		  
	      if($mysqli->query($sql)){
				 $msg_retorno['sucesso'] = $msg_sucesso;
		  }else{
		   		 $msg_retorno['erro'] = $msg_erro;
		  }
			
		return($msg_retorno);
	}
}

function excluir($tabela, $id, $msg_sucesso, $msg_erro){
	$mysqli = conexao_bd2();
	
	$sql = "DELETE FROM ".$tabela." WHERE id_".$tabela." = ".$id;

	if($mysqli->query($sql)){
		return ('?sucesso'.$msg_sucesso);
   	}else{
   		return ('?erro'.$msg_erro);
   	}	
}


	function redirecionar2($nome, $destino, $arr_parametros, $nome_funcao, $pergunta_confirmar){
		$url = $destino;

	if(is_array($arr_parametros)){
		foreach ($arr_parametros as $key => $value){
				$value = str_replace(" ", '-', $value);
		  $url .='/'.$value; 
		}
	 }
// echo $url;
// exit;
// transformar em função
	 if($nome_funcao){
		echo '<script language= "JavaScript">
			function '.$nome_funcao.'{

				if(id_item){
					location.href="'.$url.'/"+id_item
				}else{
					location.href="'.$url.'"
				}
	  		}
	  	</script>';
 	
	 }else{
	 	echo '<script language= "JavaScript">
							location.href="'.$url.'"
	  			</script>';
 	
	 }	
	}


	function redirecionar3($nome, $destino, $arr_parametros, $nome_funcao, $pergunta_confirmar){
		$url = $destino;

	// transformar em função
	 if($nome_funcao){
		echo '<script language= "JavaScript">
			function '.$nome_funcao.'{

				if(id_item){
					location.href="'.$url.'/"+id_item
				}else{
					location.href="'.$url.'"
				}
	  		}
	  	</script>';
 	
	 }else{
	 	echo '<script language= "JavaScript">
							location.href="'.$url.'"
	  			</script>';
 	
	 }
	}


    function redirecionar_aba($nome, $arr_parametros, $nome_funcao, $pergunta_confirmar){
	      if(isset($nome_funcao) && $nome_funcao){
	      	echo '<script>
	                  function '.$nome_funcao.'{';     
					  	echo 'location.href=id_item';
	            echo ' }        
            	 </script>';
	      } 
	}


	function somar_data($data, $dias, $meses, $ano){
	  $data = explode("/", $data);
	  $resData = date("d/m/Y", mktime(0, 0, 0, $data[1] + $meses, $data[0] + $dias, $data[2] + $ano));
	  return $resData;
	}


 // valida banco de dados ----------------------------------------------------------------------------------------------------------------------------------
function valida_data($data_do_formulario){
		// o formato da data deve ser 'ano-mes-dia'
		if(substr_count($data_do_formulario, '-') == 2){
			$parts = explode('-', $data_do_formulario);

			if($parts[0] && $parts[1] && $parts[2]){
				$ano = (int) $parts[0];
				$mes = (int) $parts[1];
				$dia = (int) $parts[2];
			}
		
			if(checkdate($mes, $dia, $ano)){
			   return true;
			}else{
			    return false;
			}
		}
	}


	function prepara_campos($campos){
		$temp='';
		foreach ($campos as $nome_tabela => $colunas) {
			if($nome_tabela!="utf8" && $nome_tabela!="authenticity_token" && $nome_tabela!="commit" && !strstr($nome_tabela,'id_')){
				//usuarios
				//pedidos
			if(is_array($colunas)){//experimental
				foreach ($colunas as $nome_coluna => $valor) {		
					// email
					// nome
					$colunas2[$nome_tabela]['id_'.$nome_tabela] = 1;//A primeira coluna é sempre a id da tabela
			
					if(is_array($valor)){
						foreach ($valor as $key => $item) {
								
								$temp .=$item.", ";
							}

							$colunas2[$nome_tabela][formata_str_simples($nome_coluna)] = substr($temp,0,-2);
					}else{
						$colunas2[$nome_tabela][formata_str_simples($nome_coluna)] = $valor;		
					}
					
					
				}
			}//experimental
			}
		}
	if(isset($colunas2)){
		return $colunas2;	
	}

	}


	function pegar_tipo($valor){
		switch ($valor) {
			case is_array($valor):
				 return 'array';
				break;

			case is_bool($valor):
				 return 'booleano';
				break;

			case is_array($valor):
				 return 'array';
				break;

			case is_float($valor):
				 return 'Float';
				break;

			case is_int($valor):
				 if($valor<127){
				 return 'MediumInt';
				}else{
					return 'BigInt';
				}
				break;

			case is_numeric($valor):
				if($valor<127){
				 return 'MediumInt';
				}else{
					return 'BigInt';
				}
				break;

			case is_string($valor):
				if(valida_data($valor)){
					return 'Date';	
				}elseif (valida_date_time($valor)) {
					return 'DateTime';
				}elseif (strlen($valor)<16777215) {
					return "MediumText";
				}else{
					return "LongText";
				}

				 return 'string';
				break;
			
			default:
				echo 'tipo indeterminado';
				break;
		}
		
	}


	function valida_date_time($data_hora){

	}


	function valida_hora($hora){

	}


	function atualiza_banco($nome_aplicacao, $array_tabela){
		
		$mysqli = conexao_bd2();

		//Se não existir cria o  banco
		$sql = 'CREATE DATABASE '.$nome_aplicacao;
		
		if ($mysqli->query($sql)) {
		    echo "O banco de dados ".$nome_aplicacao." foi criado\n";
		} else {
		    echo 'Erro criando o banco de dados: '.mysqli_error($mysqli)."\n";
		}


		while ($fruit_name = current($array_tabela)) {
					
	       $colunas = formata_campos_bd($array_tabela[key($array_tabela)], $nome_aplicacao );
	      
			//Cria uma tabela no bd
		$sql = 'CREATE TABLE '.$nome_aplicacao.'.'.key($array_tabela).' '.$colunas.'';

			if ($mysqli->query($sql)) {
			    echo "A tabela ".$nome_aplicacao.".".key($array_tabela)." foi criada\n";

			} else {
				echo 'Erro criando a tabela: '.mysqli_error($mysqli)."\n";
				//se a tabela ja existe, verifica se todas as colunas estão la, senão cria a que falta
				foreach ($array_tabela[key($array_tabela)] as $coluna => $valor) {
					$sql = "SELECT 
								COUNT(COLUMN_NAME) AS resultado 
							FROM INFORMATION_SCHEMA.COLUMNS
								WHERE TABLE_NAME = '".key($array_tabela)."' AND COLUMN_NAME = '".$coluna."'";
					
					$result = $mysqli->query($sql);
			
					while($res = $result->fetch_array()){
						if(!$res[0]){

							//Se não existir cria a tabela
							$sql = "ALTER TABLE ".$nome_aplicacao.".".key($array_tabela)." ADD ".$coluna." ".pegar_tipo($coluna)." NOT NULL";
							
							if ($mysqli->query($sql)) {
							    echo "A coluna ".$coluna." foi criada\n";
							} else {
							    echo 'Erro ao criar colunax: ' . mysqli_error() . "\n";
							}

						}
					}	
				} 
			}
	    	next($array_tabela);
		}	
	}


	function formata_campos_bd($formato_tabela, $nome_aplicacao){
			$temp ='(';
	        foreach ($formato_tabela as $key => $value) {
	        	
	        	if(strstr($key,'id_') && !isset($chave_primaria)){//Se a coluna começa rom "id_" então e a chave primaria da tabela
	        		$temp .= $key." ".pegar_tipo($value)." NOT NULL AUTO_INCREMENT, ";	
	        		$chave_primaria = $key;
	        	}else{
	        		$temp .= $key." ".pegar_tipo($value).", ";	
	        	}	
			}

		$temp .='PRIMARY KEY ('.$chave_primaria.')';		
		
		$colunas = $temp;
			//$colunas = substr($temp,0,-2);

	   		$colunas .=')';

	return $colunas;
	}


	function conexao_mysql($db, $usr, $pw, $host){
		mysql_connect($host,$usr,$pw) or die("<font color='RED' Size='+4'> <center>Impossivel conectar com o Banco!!!</center></font>");
		return mysql_select_db($db);
	}



	function atualizar_bd($nome_aplicacao, $arr){
			echo "<pre>";

			if($arr){
				$array_tabela = prepara_campos($_POST);
			}elseif ($_REQUEST) {
				$array_tabela = prepara_campos($_REQUEST);
			}

			atualiza_banco($nome_aplicacao, $array_tabela);
	}
 // fim valida banco de dados               
      

      
?>
