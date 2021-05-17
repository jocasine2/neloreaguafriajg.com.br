<body class="pg-home">
<div class="page-wrap">
  <!-- BANNER -->
  <div class="sc-banner-home">
    <div class="bx-slider-home-row row zeroopc">
      <ul id="bx-slider-home">
          <!-- looping de banners -->
         <?=loop_banners()?>

         <!--  <li>
            <a href="https://www.youtube.com/playlist?list=PLGqDveVMOX5ovwL0id5FdRsyCePJaaLI4" target="_blank" >
              <div class="item" style="background: url(assets/imagens/img/bgs/banner_principal/banner_leilao_2020.jpg) no-repeat center #eee; background-size: contain;">
              </div>
            </a>
          </li> -->
          <!-- fim looping de banners --> 
          <!-- looping de banners -->
          <!-- <li>
            <a href="http://www.youtube.com/playlist?list=PLzKg3xYLenPJSqYSZ_CJBvIiA1_ITBRpc" target="_blank" >
              <div class="item" style="background: url(assets/imagens/img/bgs/banner_principal/banner1.jpg) no-repeat center #eee; background-size: cover;">
              </div>
            </a>
          </li> -->
          <!-- fim looping de banners --> 
          <!-- looping de banners -->
        <!-- <li>
            <a href="http://www.youtube.com/playlist?list=PLzKg3xYLenPJSqYSZ_CJBvIiA1_ITBRpc" target="_blank" >
              <div class="item" style="background: url(assets/imagens/img/bgs/banner_principal/banner2.jpg) no-repeat center #eee; background-size: cover;">
              </div>
            </a>
          </li> -->
          <!-- fim looping de banners -->       
      </ul>
      <span id="slider-prev"></span>
      <span id="slider-next"></span></p>
    </div>
  </div>


<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <span id="div_editar">
        <!-- conteudo -->
      </span>
      <!-- fim modal content -->
    </div>
  </div>
<!-- fim modal -->

  <!-- GALERIA -->
  <div class="sc-galeria">

    <div class="row">
    	
    <!-- aviso (lotes filmados)-->
	<!-- <div class="alert alert-info" style=" font-size: 3em; color: #a41229; margin-bottom: 8px;">
	<strong>Leilão 26/10/2019!</strong> Confira nossos lotes filmados <a href="https://www.youtube.com/playlist?list=PLGqDveVMOX5ovwL0id5FdRsyCePJaaLI4" target="_blank"><strong>aqui</strong></a>.
	</div>  -->
    <!-- fim aviso -->

    <!-- aviso -->
<!-- 	<div class="alert alert-danger" style=" font-size: 3em; color: #a41229; margin-bottom: 8px; ">
	<strong>Catálogo edição Marabá 2019</strong> Confira o nosso catálogo <a href="http://www.neloreaguafriajg.com.br/assets/documentos/catalogo_leilao_2019-2.pdf" target="_blank"><strong>aqui</strong></a>.
	</div> -->
    <!-- fim aviso -->

      <h1 id="topo-video">GALERIA DE VÍDEOS</h1>
      <p>Vídeos destaques em nosso canal no YouTube</p>
    </div>
    <div class="row">
      <div class="vertical-tabs-container hide">
<!-- video -->
        <div class="vertical-tab-content-container video">
  <!-- looping de videos -->
          <a href="" class="js-vertical-tab-accordion-heading vertical-tab-accordion-heading is-active" rel="tab"></a>
          <div class="">
            <iframe data-url="" id="frame_vid" src="https://www.youtube.com/embed/Csn8ZWAxXdM"  frameborder="0" allowfullscreen></iframe>
          </div>
  <!-- looping de videos -->
        </div>
<!-- fim video -->

        <div class="vertical-tabs menu">
        
<!-- loopig de imagens -->

<head>
<style>
div.ex1 {
  background-color: lightblue;
  height: 355px;
  overflow: auto;
}
</style>
</head>

<div class="ex1">
  <?php
    galeria_video();
  ?>
</div>
<!-- fim looping de imagens -->     
          
          <p class="canalYoutube"><a href="https://www.youtube.com/channel/UCgqrfnaT9GcwZpLdDM6aJsQ" target="_blank" >+ vídeos</a></p>
        </div><!-- menu -->

      </div><!-- vertical-tabs-container -->

    </div>
  </div>

</div>
<!-- FOOTER //////////////////////////////////////////////////////////////// -->
<!--#include file="includes/footer.asp"-->

<script type="text/javascript" src="assets/js/scripts.js"></script>
<script type="text/javascript">
  function alte_vid(link){
    document.getElementById('frame_vid').src = link+'?autoplay=1';
  }

   function video_banner(){
            // $.ajax({
            //       url: "mvc/view/principal/ajax_conteudo_modal.php",
            //       cache: false
            // }).done(function( html ) {
            //     $( "#div_editar" ).empty();
            //     $( "#div_editar" ).append( html );
            // });

          $("#myModal").modal();
          }
</script>

</body>
</html>