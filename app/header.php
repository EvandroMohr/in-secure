<?php session_start();?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!-- META SECTION -->
        <title>IN Secure Systems</title>   
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->

        <!-- CSS INCLUDE -->
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme.css"/>
        <!-- EOF CSS INCLUDE -->  
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body> 

	<div  class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container" >
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.php"><i class="fa fa-unlock-alt"></i> IN Secure</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li>
					<a href="./">
						<i class="fa fa-home"></i> 
						Home
					</a>
				</li>
				<li>
					<a href="solucoes.php">
						<i class="fa fa-briefcase"></i>
						Soluções
					</a>
				</li>
				<li>
					<a href="contato.php">
						<i class="fa fa-phone"></i>
						Contato
					</a>
				</li>
				<li>
					<a href="about.php">
						<i class="fa fa-info"></i>
						Quem somos
					</a>
				</li>
				<?php if(isset($_SESSION['login'])){ ?>
					<li>
						<a href="users.php">
							<i class="fa fa-users"></i>
							Gerir usuários
						</a>
					</li>
					<li>
						<a href="account.php">
							<i class="fa fa-edit"></i>
							Minha conta
						</a>
					</li>
					<li>
						<a href="autentica.php">
							<i class="fa fa-sign-out"></i>
							Sair
						</a>
					</li>
				<?php } else { ?>
					<li>
						<a href="login.php">
							<i class="fa fa-key"></i>
							Área restrita
						</a>
					</li>
				<?php }?>
			</ul>
		</div>
	</div>
</div>      
<div style="margin-bottom: 70px;"></div> 