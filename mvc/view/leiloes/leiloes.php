<head>
  <style type="text/css">
    html {
      background-color: #fefefe;
      box-sizing: border-box;
      font-family: 'Roboto', sans-serif;
      font-size: 14px;
      font-weight: 500;
    }

    *, *:before, *:after {
      box-sizing: inherit;
    }

    .container {
      margin: 50px auto 0;
      width: 700px;
    }

    .u-float-right {
      float: right;
    }

    .u-flex-center {
      display: -webkit-flex;
      display: flex;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-align-items: center;
      align-items: center;
    }

    .subtle {
      color: #888;
      font-size: 12px;
    }

    .card-media {
      box-shadow: 0 2px 8px rgba(0, 0, 0, .12);
      height: 125px;
      margin-bottom: 25px;
      transition: all 300ms ease-out;
      width: 100%;
      padding-left: 0px;
      cursor: pointer;
      border-radius: 2px;

    }

    .card-media:hover {
      border: 1px solid #0c3f57;
      border-radius: 2px;
      box-shadow: 0 5px 14px rgba(0, 0, 0, .2);
    }

    .card-media-object-container {
      background: none;
      float: left;
      height: 100%;
      width: 35%;
      position: relative;
    }

    .card-media-object {
      background-position: center center;
      background-size: cover;
      height: 100%;
    }

    .card-media-object:after {
      content: " ";
      display: block;
      height: 100%;
      left: 0;
      opacity: 0;
      position: absolute;
      right: 0;
      top: 0;
      transition: all 300ms ease-out;
      z-index: 10;
    }

    .card-media:hover .card-media-object:after {
      background: -moz-linear-gradient(top,  rgba(0,0,0,0) 0%, rgba(0,0,0,0) 52%, rgba(0,0,0,0.4) 100%);
      background: -webkit-linear-gradient(top,  rgba(0,0,0,0) 0%,rgba(0,0,0,0) 52%,rgba(0,0,0,0.4) 100%);
      background: linear-gradient(to bottom,  rgba(0,0,0,0) 0%,rgba(0,0,0,0) 52%,rgba(0,0,0,0.4) 100%);
      filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000', endColorstr='#a6000000',GradientType=0 );
      opacity: 1;
    }

    .card-media-object-tag {
      background-color: #fff;
      border-radius: 2px;
      padding: 2px 7px;
      position: absolute;
      right: 10px;
      top: 10px;
    }

    .card-media-object-social-list {
      bottom: 4px;
      left: 10px;
      list-style-type: none;
      margin: 0;
      padding: 0;
      position: absolute;
      z-index: 20;
    }

    .card-media-object-social-list li {
      border-radius: 50%;
      display: inline-block;
      height: 30px;
      margin-right: 6px;
      opacity: 0;
      overflow: hidden;
      transform: translateY(5px);
      transition: all 300ms ease-out;
      width: 30px;
    }

    .card-media:hover .card-media-object-social-list li {
      opacity: 1;
      transform: translateY(0);
    }

    .card-media-object-social-list li:nth-child(1) {
      transition-delay: 0;
    }
    .card-media-object-social-list li:nth-child(2) {
      transition-delay: 75ms;
    }
    .card-media-object-social-list li:nth-child(3) {
      transition-delay: 150ms;
    }

    .card-media-object-social-list-item-additional {
      border: 1px solid #fff;
      color: #fff;
      font-size: 12px;
      padding-top: 7px;
      text-align: center;
    }

    .card-media-body {
      background-color: #fff;
      float: left;
      height: 100%;
      padding: 12px 15px;
      position: relative;
      width: 65%;
    }

    .card-media-body-top {
      display: block;
    }

    .card-media-body-top-icons {
      margin-top: -2px;
      opacity: 0;
      transition: all 300ms ease-out;
      transform: translateY(-5px);
    }

    .card-media:hover .card-media-body-top-icons {
      opacity: 1;
      transform: translateY(0);
    }

    .card-media-body-top-icons > svg {
      cursor: pointer;
      margin-left: 10px;
      transition: all 300ms ease-out;
    }

    .card-media-body-top-icons > svg:hover {
      fill: #444;
    }

    .card-media-body-heading {
      display: block;
      margin-top: 10px;
    }

    .card-media-body-supporting-bottom {
      position: absolute;
      bottom: 10px;
      left: 0;
      opacity: 1;
      padding: 0 15px;
      transition: all 300ms ease-out;
      width: 100%;
    }

    .card-media:hover .card-media-body-supporting-bottom {
      opacity: 0;
      transform: translateY(-8px);
    }

    .card-media-body-supporting-bottom-text {
      display: inline-block;
    }

    .card-media-body-supporting-bottom-reveal {
      opacity: 0;
      transform: translateY(8px);
      transition: all 300ms ease-out;
    }

    .card-media:hover .card-media-body-supporting-bottom-reveal {
      opacity: 1;
      transform: translateY(0);
    }

    .card-media-link {
      color: #41C1F2;
      text-decoration: none;
    }
  </style>
</head>

  


<body class="pg-galeria">
<div class="page-wrap">

  <section class="sc-galeria">
    <div class="row">
      <div class="content col-md-11">
 
         <?php
          #se tem o id do leilão
	        if(isset($_REQUEST['id_leiloes']) && $_REQUEST['id_leiloes']){
	        	$leilao = leiloes($_REQUEST['id_leiloes']);
	       // 	var_dump($leilao);
	        	echo '<h1>'.$leilao['nome'].'</h1>';
	        	
	        	echo '<!-- aviso -->
                    <div class="alert alert-danger" style=" font-size: 3em; color: #a41229; margin-bottom: 8px; ">
                    Confira o nosso catálogo <a href="http://www.neloreaguafriajg.com.br/assets/documentos/catalogo_leilao_2020_2.pdf" target="_blank"><strong>aqui</strong></a>.
                    </div> 
                  <!-- fim aviso -->';

            echo '
            <div class="slider-galeria-row">
              <ul id="slider-galeria" class="hide">
                '.@galeria_video_leiloes($_REQUEST['id_leiloes']).'
                <a class="fancybox2 fancybox.iframe" href="http://www.youtube.com/embed/WAZ5SmJd1To?enablejsapi=1&wmode=opaque"></a>
              </ul>
            </div>';  
	        }else{
            #se não tem o id do leilão
	        	echo '<h1>LEILÕES</h1>'.@galeria_video_leiloes($_REQUEST['id_leiloes']);
	        }
        ?>
      </div>
    </div>
  </section>

</div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
  	 $(".fancybox2").fancybox({
	    openEffect: 'elastic',
	    closeEffect: 'elastic',
	    prevEffect: 'fade',
	    nextEffect: 'fade',
	    fitToView: false, // 
	    maxWidth: "90%", // 
	    type: 'iframe',
	    scrolling: 'no',
	    iframe: {
	        preload: false
	    }
	});

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
