<?php
  $sql_pedigree = "SELECT 
                    *
                   FROM touros
                       INNER JOIN info_touro 
                                ON info_touro.id_touros = touros.id_touros
                       INNER JOIN pedigree ON pedigree.id_info_touro = info_touro.id_info_touro
                  WHERE pedigree.id_info_touro = ".$_GET['id_touros']; 
  
  $array_consulta = consulta_sql($sql_pedigree, NULL);

  $pedigree = array();

  foreach ($array_consulta['resultado_consulta'] as $key => $value) {
    $pedigree[sizeof($pedigree)] = $value['nome_pedigree'];
  }

  $sql_sub_pedigree = "SELECT 
                  sub_pedigree.id_pedigree,
                  nome_sub_pedigree
                 FROM touros
                     INNER JOIN info_touro ON info_touro.id_touros = touros.id_touros
                     INNER JOIN pedigree ON pedigree.id_info_touro = info_touro.id_info_touro
                     INNER JOIN sub_pedigree ON sub_pedigree.id_pedigree = pedigree.id_pedigree
                WHERE pedigree.id_info_touro = ".$_GET['id_touros']; 
  
  $array_consulta = consulta_sql($sql_sub_pedigree, NULL);
  $sub_pedigree = array();
  $a = '';
  $b = '';

  foreach ($array_consulta['resultado_consulta'] as $key => $value) {
    $sub_pedigree[$value['id_pedigree']][sizeof($sub_pedigree)] = $value['nome_sub_pedigree'];
    
    if($value['nome_sub_pedigree'] && !$a){
        $a = $value['id_pedigree'];
    }elseif ($value['nome_sub_pedigree'] && !$b && ($a != $value['id_pedigree']) ) {
        $b = $value['id_pedigree'];
    }
  }

  $sql_dados = "SELECT 
                      * 
                    FROM touros
                     INNER JOIN info_touro 
                              ON info_touro.id_touros = touros.id_touros
                     LEFT JOIN acnp 
                              ON acnp.id_info_touro = info_touro.id_info_touro
                     LEFT JOIN pmgz 
                              ON pmgz.id_info_touro = info_touro.id_info_touro

                                  WHERE touros.id_touros =".$_GET['id_touros']; 
  
  $array_consulta = consulta_sql($sql_dados, NULL);

  $dados = $array_consulta['resultado_consulta'][0];

  
// echo '<br>teste<br>';
    // debugar();
?>
<!-- <style type="text/css">
  .bt_voltar {
    text-decoration: none;
    color: #fff;
    background: #a41229;
    padding: 0.4em 0.8em;
    font-size: 1.15em;
    margin-top: 2em;
    border-radius: 1em;
}
</style> -->
<body class="pg-touros info">
<div class="page-wrap">

  <!-- TOPO //////////////////////////////////////////////////////////////// -->
  <!-- #include file="topo.asp" -->
  <section class="sc-touros">
    <div class="row">
      <div class="content">
        <h1>TOUROS DE CENTRAL</h1>
        <div class="btVoltar">
        <a href="touros">
<!--         
        <i class="fa fa-arrow-left fa-2" aria-hidden="true"></i>
        <strong>voltar à listagem de animais</strong> 
        <i class="fa fa-bars fa-2" aria-hidden="true"></i> -->
        <img src="assets/imagens/icon-btvoltar1.svg">       
        </a>
        </div>

          <div class="info1">
            <a rel="touro" href="<?=$dados['link_img_miniatura']?>" class="swipebox" title="">
              <span class="foto" style="background: url(<?=$dados['link_img_miniatura']?>) no-repeat center #eee; background-size: cover;"></span>
            </a>

            <span class="central">

<!-- if -->
              <span class="logo">
                <img src="<?=$dados['link_miniatura_mais_informacoes']?>" alt="<?=$dados['fonte_mais_informacoes']?>" style="margin-bottom:10px;">
              </span>
				
        <!-- if maior que 4 -->
              <p><a href="<?=$dados['link_mais_informacoes']?>" target="_blank"><strong>CLIQUE AQUI</strong> E VEJA TODAS INFORMAÇÕES DO TOURO NA CENTRAL</a></p>
				<!-- end if maior que 4 -->

<!-- end if -->
            </span>


          </div><!-- info 1 -->

          <div class="info2">
            <span class="nome"><?=$dados['nome_touro']?></span>
            <div class="dados">
              <span><strong>RGD:</strong> <?=$dados["rgd"]?></span>
              <span><strong>Raça:</strong> <?=$dados["raca"]?></span>
              <span><strong>Nasc:</strong> <?=formata_data_usuario($dados["data_nascimento"])?></span>
            </div>

            <div class="pedigree">
              <h2>PEDIGREE:</h2>
              <div class="item">
                <span class="a"><p><?=$pedigree[0]?></p></span>
                <span class="a1"><?=$sub_pedigree[$a][0]?></span>
                <span class="a2"><?=$sub_pedigree[$a][1]?></span>
              </div>
              <div class="item">
                <span class="a"><p><?=$pedigree[1]?></p></span>
                <span class="a1"><?=$sub_pedigree[$b][1]?></span>
                <span class="a2"><?=$sub_pedigree[$b][2]?></span>
              </div>
            </div>

          </div><!-- info 2 -->

          <p class="tit">ANCP</p>
          <div class="table">
            <table>
                <tr>
                  <th>MGTe</th>
                  <th>TOP</th>
                  <th>MP120</th>
                  <th>TOP</th>
                  <th>DP210</th>
                  <th>TOP</th>
                  <th>DP365</th>
                  <th>TOP</th>
                  <th>DP450</th>
                  <th>TOP</th>
                  <th>DPE365</th>
                  <th>TOP</th>
                </tr>
                <tr>
                  <td><?=$dados["mgte"]?></td>
                  <td><?=$dados["top_mgte"]?></td>
                  <td><?=$dados["mp120"]?></td>
                  <td><?=$dados["top_mp120"]?></td>
                  <td><?=$dados["dp210"]?></td>
                  <td><?=$dados["top_dp210"]?></td>
                  <td><?=$dados["dp365"]?></td>
                  <td><?=$dados["top_dp365"]?></td>
                  <td><?=$dados["dp450"]?></td>
                  <td><?=$dados["top_dp450"]?></td>
                  <td><?=$dados["dpe365"]?></td>
                  <td><?=$dados["top_dpe365"]?></td>
                </tr>
            </table>
          </div>

          <div class="table">
            <table>
              <tr>
                <th>DPE450</th>
                <th>TOP</th>
                <th>DPG</th>
                <th>TOP</th>
                <th>DIPP</th>
                <th>TOP</th>
                <th>DSTAY</th>
                <th>TOP</th>
                <th>D3P</th>
                <th>TOP</th>
                <th>AOL</th>
                <th>TOP</th>
                <th>DACAB</th>
                <th>TOP</th>
              </tr>
              <tr>
                <td><?=$dados["dpe450"]?></td>
                <td><?=$dados["top_dpe450"]?></td>
                <td><?=$dados["dpg"]?></td>
                <td><?=$dados["top_dpg"]?></td>
                <td><?=$dados["dipp"]?></td>
                <td><?=$dados["top_dipp"]?></td>
                <td><?=$dados["dstay"]?></td>
                <td><?=$dados["top_dstay"]?></td>
                <td><?=$dados["d3p"]?></td>
                <td><?=$dados["top_d3p"]?></td>
                <td><?=$dados["aol"]?></td>
                <td><?=$dados["top_aol"]?></td>
                <td><?=$dados["dacab"]?></td>
                <td><?=$dados["top_dacab"]?></td>
              </tr>

            </table>
          </div>

          <p class="tit">PMGZ</p>
          <div class="table">
            <table>
                <tr>
                  <th>iABCZ</th>
                  <th>TOP</th>
                  <th>PM-EM</th>
                  <th>TOP</th>
                  <th>PD-ED</th>
                  <th>TOP</th>
                  <th>TMD</th>
                  <th>TOP</th>
                  <th>PS-ED</th>
                  <th>TOP</th>
                  <th>GPD</th>
                  <th>TOP</th>
                  <th>IPP</th>
                  <th>TOP</th>
                  <th>ESOB</th>
                  <th>TOP</th>
                </tr>
                <tr>
                  <td><?=$dados["iabcz"]?></td>
                  <td><?=$dados["top_iabcz"]?></td>
                  <td><?=$dados["pm_em"]?></td>
                  <td><?=$dados["top_pm_em"]?></td>
                  <td><?=$dados["pd_ed"]?></td>
                  <td><?=$dados["top_pd_ed"]?></td>
                  <td><?=$dados["tmd"]?></td>
                  <td><?=$dados["top_tmd"]?></td>
                  <td><?=$dados["ps_ed"]?></td>
                  <td><?=$dados["top_ps_ed"]?></td>
                  <td><?=$dados["gpd"]?></td>
                  <td><?=$dados["top_gpd"]?></td>
                  <td><?=$dados["ipp"]?></td>
                  <td><?=$dados["top_ipp"]?></td>
                  <td><?=$dados["esob"]?></td>
                  <td><?=$dados["top_esob"]?></td>
                </tr>
            </table>
          </div>
          <div class="table">
            <table>
              <tr>
                <th>PSOB</th>
                <th>TOP</th>
                <th>MSOB</th>
                <th>TOP</th>
                <th>PA-ED</th>
                <th>TOP</th>
                <th>STAY</th>
                <th>TOP</th>
                <th>PE 365</th>
                <th>TOP</th>
                <th>PE 450</th>
                <th>TOP</th>
                <th>AOL</th>
                <th>TOP</th>
                <th>ACAB</th>
                <th>TOP</th>
              </tr>
              <tr>
                <td><?=$dados["psob"]?></td>
                <td><?=$dados["top_psob"]?></td>
                <td><?=$dados["msob"]?></td>
                <td><?=$dados["top_msob"]?></td>
                <td><?=$dados["pa_ed"]?></td>
                <td><?=$dados["top_pa_ed"]?></td>
                <td><?=$dados["stay"]?></td>
                <td><?=$dados["top_stay"]?></td>
                <td><?=$dados["pe365"]?></td>
                <td><?=$dados["top_pe365"]?></td>
                <td><?=$dados["pe450"]?></td>
                <td><?=$dados["top_pe450"]?></td>
                <td><?=$dados["aol"]?></td>
                <td><?=$dados["top_aol"]?></td>
                <td><?=$dados["acab"]?></td>
                <td><?=$dados["top_acab"]?></td>
              </tr>

            </table>
        </div>
      <div class="fotoVideo-container">
           <!--  <div class="fotos alone">
            <h2>FOTOS</h2>
            <div class="items">   -->
            <?php
              // fotos_touro($_GET['id_touros']);
            ?>
         <!--    </div>
          </div> -->
        

          <div class="videos alone">
         
            <div class="items">   
              <?=videos_touro($_GET['id_touros'])?>
            </div>
          </div>
        <!-- https://www.youtube.com/watch?v=U3p16NsmyrU -->
          

      </div><!-- fotoVideo-container -->

      </div><!--  content -->
    </div>
  </section>

</div><!-- page wrap -->
</div>
<script type="text/javascript" src="assets/js/scripts.js"></script>
</body>
</html>
