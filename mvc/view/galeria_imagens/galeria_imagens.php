<body class="pg-galeria">
  <!--#include file="includes/svgs.asp"-->
  <!--#include file="includes/_functions.asp"-->
<div class="page-wrap">
  <!-- TOPO //////////////////////////////////////////////////////////////// -->
  <!-- #include file="topo.asp" -->
  <section class="sc-galeria">
    <div class="row">
      <div class="content">
        <p class="ampliar">+ CLIQUE NA FOTO PARA ampliar</p>
        <h1>GALERIA DE FOTOS</h1>
        <div class="slider-galeria-row">

          <ul id="slider-galeria" class="hide">

<?=galeria_fotos()?>

<!-- <%
SQL = "SELECT M1052_foto.*"
SQL = SQL & " FROM M1052_foto"
SQL = SQL & " ORDER BY M1052_foto.ordem"
Set Rst = Conn.Execute(SQL)

cont = 0
while not rst.eof
	cont = cont + 1
%>
              <%if cont = 1 then%><li><%end if%>
                  <a class="fancybox" rel="gal1" title="<%=rst("legenda")%>" href="enviados/<%=rst("imagem")%>">
                  	<div class="item" style="background: url(enviados/p<%=rst("imagem")%>) no-repeat center #eee; background-size: cover;"></div>
                  </a>
              <%if cont = 3 then%></li><%end if%>
<%
	if cont = 3 then cont = 0
	rst.movenext
wend
if cont <> 0 then response.write "</li>"
%> -->

          </ul><!-- bx-slider-galeria -->

          <!-- <span id="slider-galeria-prev"><svg><use xlink:href="#icon-seta-prev"></use></svg></span>
          <span id="slider-galeria-next"><svg><use xlink:href="#icon-seta-next"></use></svg></span> -->

        </div><!-- bx-slider-galeria-row -->
      </div><!--  content -->
    </div>
  </section>

</div><!-- page wrap -->


</div>
<!-- FOOTER //////////////////////////////////////////////////////////////// -->
<!--#include file="includes/footer.asp"-->
<script type="text/javascript">
  $(document).ready(function() {
    $("#single_1").fancybox({
          helpers: {
              title : {
                  type : 'float'
              }
          }
      });

    $(".single_2").fancybox({
      openEffect  : 'elastic',
      closeEffect : 'elastic',

      helpers : {
        title : {
          type : 'inside'
        }
      }
    });

    $("#single_3").fancybox({
      openEffect : 'none',
      closeEffect : 'none',
      helpers : {
        title : {
          type : 'outside'
        }
      }
    });

    $("#single_4").fancybox({
      helpers : {
        title : {
          type : 'over'
        }
      }
    });
});
</script>
<script type="text/javascript" src="assets/js/scripts.js"></script>
</body>
</html>
