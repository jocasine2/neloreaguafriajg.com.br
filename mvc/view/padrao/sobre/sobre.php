<div class="banner-with-text1">
	<div class="container">
<!-- header -->	
<?php
	include('views/padrao/navbar_principal.php');
?>	
<!-- //header -->
</div>
<!-- single -->
	<div class="banner-bdy sig">
		<div class="container">
			<div class="single">
			<div class="col-md-8 sing-img-text">
				<img src="images/15.jpg" alt=" ">
				<div class="sing-img-text1">
					<h3>Quem somos</h3>
					<p class="est">Agência EcoTrilhas “Turismo de Natureza” é uma empresa nova que veio pra fazer a diferença no segmento de turismo na região da CHAPADA DAS MESAS. 
					A empresa está situada na cidade de Carolina na Rua 28 de Julho, nº 31 centro - No coração da Chapada das Mesas, Sul do Maranhão.
E também atua no JALAPÃO – TOCANTINS.</p>
					
					<h3>Nossa Missão</h3>
					<p class="est">
						Tornar possível e vive um desejo, um sonho ou um projeto de vida. Independente do significado ou do nome que dá à viagem que pretende fazer, nossa intenção é proporcionar uma experiência pessoal transformadora, que traga à tona a consciência ambiental e o respeito e amor à natureza. 
Lembrar da importância da preservação do meio ambiente em prol de um mundo melhor para as gerações futuras.
					</p>
					<div class="list">
						<ul>
							<li><a href="#" class="a"> </a></li>
							<li><a href="#" class="b"> </a></li>
							<li><a href="#" class="c"> </a></li>
						</ul>
					</div>
					<div class="com">
						<h3>Comentários</h3>
			


					</div>
					
				</div>
			</div>
			<div class="col-md-4 sing-img-text-left">
				<div class="blog-right1">
				
					
						<?php
				$sql_lista = "SELECT 
									 	* 
								   FROM expedicoes
									WHERE ativo =  1
											AND data > CURDATE()
										ORDER BY data LIMIT 3";  //criar uma função manipula para a lista
  
  				$array_consulta = consulta_sql($sql_lista, 'espac410_gerfi');

  				if(sizeof($array_consulta['resultado_consulta']) > 0){
  					echo '<div class="related-posts">
						<h3>Ultimas Notícias</h3>';
  				}

  				foreach ($array_consulta['resultado_consulta'] as $key => $value) {

					echo '<div class="related-post">
							<div class="related-post-left">
								<a href="single.html"><img src="images/3.jpg" alt=" " /></a>
							</div>
							<div class="related-post-right">
								<h4><a href="materia/'.$value['id_expedicoes'].'">'.$value['nome_expedicao'].'</a></h4>
								<p>'.$value['chamada'].'
								</p>
							</div>
							<div class="clearfix"> </div>
						</div>';
  				}


  				if(sizeof($array_consulta['resultado_consulta']) > 0){
  					echo '</div>';
  				}
			?>

						

				
						
					
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		</div>
	</div>
<!-- //single -->
<!-- footer -->
	<div class="footer-top">
	<div class="container">
		<div class="footer-top-grids">
			<div class="col-md-4 footer-top-grid">
				<h3>About Eco Travel</h3>
				<p>"At vero eos et accusamus et iusto odio dignissimos ducimus 
				qui blanditiis praesentium voluptatum deleniti atque corrupti quos 
				dolores et quas molestias excepturi sint occaecati cupiditate non 
				provident, similique sunt in culpa qui officia deserunt mollitia animi, 
				id est laborum et dolorum fuga. </p>
				<div class="read1">
					<a href="single.html">Read More</a>
				</div>
			</div>
			<div class="col-md-4 footer-top-grid">
				<h3>Connect With Us</h3>
				<div class="twi-txt">
					<div class="twi">
						<a href="#" class="twitter"></a>
					</div>
					<div class="twi-text">
						<p><a href="#">Follow Us On Twitter</a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="twi-txt1">
					<div class="twi">
						<a href="#" class="flickr"> </a>
					</div>
					<div class="twi-text">
						<p><a href="#">Check Us Out On Flickr</a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="twi-txt1">
					<div class="twi">
						<a href="#" class="facebook"> </a>
					</div>
					<div class="twi-text">
						<p><a href="#">Become a Fan On Facebook</a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 footer-top-grid">
				<h3>Extra Features</h3>
				<ul class="last">
					<li><a href="#">Temporibus autem quibusdam</a></li>
					<li><a href="#">Et aut officiis debitis aut</a></li>
					<li><a href="#">Necessitatibus saepe eveniet</a></li>
					<li><a href="#">Ut et voluptates repudiandae</a></li>
					<li><a href="#">Molestiae non recusandae earum</a></li> 
					<li><a href="#">Rerum hic tenetur a sapiente delectus</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
		<div class="footer">
			<p>Copyright © 2015 Eco Travel. All Rights Reserved | Design by<a href="http://w3layouts.com/"> W3layouts</a></p>
		</div>
	</div>
<!-- //footer -->	
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->