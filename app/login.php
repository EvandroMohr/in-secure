<?php include 'header.php'; ?>
        <div class="container" style="min-width: 385px !important; padding-left: 0px;">        
        	<div class='row' >
 				<div class="col xs-4 col-sm-6 col-sm-offset-3 col-md-5 col-md-offset-3 col-lg-4 col-lg-offset-4" >
					<div class="panel panel-warning animated fadeInDown" style="-webkit-animation-duration: 0.5s; animation-duration: 0.5s;">
						<div class="panel-heading">
			       			<div class=''>
			       				<img class="img-responsive" src="img/logo.png"/>
			       			</div>
						</div>
						<div class="panel-body">
							<form action="autentica.php" class="form-horizontal" method="post">
			                    <div class="form-group">
			                        <div class="col-md-12">
			                            <input type="text" class="form-control" placeholder="Login" name='login'  required="required"/>
			                        </div>
			                    </div>
			                    <div class="form-group">
			                        <div class="col-md-12">
			                            <input type="password" class="form-control" placeholder="Senha" name='senha' required="required"/>
			                        </div>
			                    </div>
			                    <div class="form-group">
			                        <div class="col-xs-6">
			                            <a href="#" class="btn btn-link ">Esqueceu sua senha?</a>
			                        </div>
			                        <div class="col-xs-6">
			                            <button class="btn btn-info btn-block">Entrar</button>
			                        </div>
			                    </div>
		                    </form>
						</div>
						<div class="panel-footer text-muted">
		                   Versão 1.1.0
		                   <span class="pull-right"><a target="_blank" href="https://github.com/EvandroMohr/in-secure">Saiba mais</a></span>
		                </div>
					</div>
  				</div>
        	</div>
        </div>
