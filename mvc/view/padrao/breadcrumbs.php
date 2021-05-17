	<!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="principal">Home</a></li>
					<li class="active"><?php

					if(isset($_REQUEST['body']) && $_REQUEST['body'] == 'produtos'){
						echo 'Produtos';
					}

					?></li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->