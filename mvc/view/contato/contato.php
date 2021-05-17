<style type="text/css">
  .pg-contato .sc-contato {
    background-image: url(assets/imagens/img/bgs/bg_contato.jpg);
    background-size: calc(100% + 300px);
    background-color: #7c9ad0;
    background-repeat: no-repeat;
    background-position: bottom center;
    padding-top: 62px;
    padding-bottom: 380px;
}

.alert-success {
  font-family: arial, helvetica, sans-serif;
  font-size: 16px;
}
</style>

<body class="pg-contato">
  <!--#include file="includes/svgs.asp"-->
  <!--#include file="includes/_functions.asp"-->
<div class="page-wrap">

  <!-- TOPO //////////////////////////////////////////////////////////////// -->
  <!-- #include file="topo.asp" -->
  <form method="post" action="<?=ctrl_encode('contato/contato.php')?>" >
  <section class="sc-contato">
    <div class="row">
      <div class="content">

        <div id="contato" class="container">
        <?=alerta()?>
          <div class="respFormulario">
            <div class="msg">
              <p>Sua mensagem foi enviada com sucesso!</p>
            </div>
          </div>
          <div class="endereco">
            <h1>CONTATO E LOCALIZAÇÃO</h1>

            <div class="item">
              <p><strong>Contato direto:</strong><br>
                atendimento@neloreaguafriajg.com.br
              </p>
            </div>

            <div class="item">
              <p><strong>Escritório</strong><br>
                <span>Rua 25 dezembro, n. 84 - Sala 5</span>
                <span>Centro - Araguaína/TO</span>
                <span>CEP: 77804-030</span>
                <span>Tel.: (63) 3421-2070</span>
              </p>
            </div>

            <div class="item">
              <p><strong>Fazenda</strong><br>
                <span>Estrada Vicinal Pontão - Km 35</span>
                <span>Tel.: (94) 3426-1053</span>
                <span>Cel.: (94) 99169-3916</span>
              </p>
            </div>

            <div class="item">
              <p><strong>Pista de pouso</strong><br>
                XINGUARA/FAZ/AGUA FRIA, PA - AD PRIV COORD 0700555/0492158W ELEV 176 RWY 01/19 DIMENSÕES 500MX1SM PISO AÇO RESISTÊNCIA 5.700 KG/0,50MPA OPS VFR DIURNA INSTL REF: ROTAER 3-X, 4-SD, 5
              </p>
            </div>

          </div><!-- endereço -->

          <div class="formulario">
            <form id="contatoForm" action="contatoAction.asp" method="post" autocomplete="off">

              <div class="row">
                <input type="text" name="contato[nome]" value="" placeholder="NOME">
              </div>

              <div class="row semborda">
                <div class="row left">
                  <input type="text" name="contato[email]" value="" placeholder="EMAIL">
                </div>
                <div class="row right">
                  <input type="text" name="contato[telefone]" value="" placeholder="TELEFONE">
                </div>
              </div>

              <div class="row msg">
                <textarea name="contato[mensagem]" rows="8" cols="40" placeholder="MENSAGEM"></textarea>
              </div>

              <div class="row btn">
                <button type="submit" name="button">ENVIAR</button>
              </div>
              <div class="alerta"></div>
            </form>
          </div><!-- formulario -->

        </div>

        <div class="map-container">
          <div id="map"></div>
        </div>


      </div><!--  content -->
    </div>
    </form>
  </section>

</div><!-- page wrap -->


</div>
<!-- FOOTER //////////////////////////////////////////////////////////////// -->
<!--#include file="includes/footer.asp"-->

<script type="text/javascript" src="assets/js/scripts.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA65xROaex50n8tOJCsBZey1PGighydeAA&callback=initMap"></script>
