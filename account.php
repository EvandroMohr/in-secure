<?php 
session_start();

if(!isset($_SESSION['login']))
	header('location: ./');

include 'header.php'; 
require_once 'connection.php';


$query = mysqli_query($link, "select * from usuarios where login = '$_SESSION[login]'");

$usuario = mysqli_fetch_assoc($query);


?>

<div class="container">
	<div class="page-title">
		<h2>
			<span class="fa fa-edit"></span> Minha conta
		</h2>
	</div>
	 <div class="row">
		<!-- NEWS PANEL WRAPPER -->
		<div class="col-md-6" >
			<div class="panel panel-warning" >
				<div class="panel-heading">
	       			<h3>Edite suas informações</h3>
				</div>
				<div class="panel-body">
					<form action="editar_usuario.php" class="form-horizontal" method="post">
						<div class="form-group">
	                        <div class="col-md-6">
	                        	<label for="id">ID: </label>
	                            <input id="id" type="text" class="form-control" placeholder="ID" name='id' readonly value="<?=$usuario['id'];?>"/><small>*Essa informação não pode ser editada</small>
	                        </div>
	                    </div>
						<div class="form-group">
	                        <div class="col-md-6">
	                        	<label for="nome">Nome: </label>
	                            <input id="nome" type="text" class="form-control" placeholder="Nome" name='nome' value="<?=$usuario['nome'];?>"/>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <div class="col-md-6">
	                        	<label for="login">Login: </label>
	                            <input id="login" type="text" class="form-control" placeholder="Login" name='login' value="<?=$usuario['login'];?>"/>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <div class="col-md-6">
	                       		<label for="senha">Senha: </label>
	                            <input id="senha" type="password" class="form-control" placeholder="Senha" name='senha' value="<?=$usuario['senha'];?>"/>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <div class="col-xs-4">
	                            <button class="btn btn-info btn-block"><span class="fa fa-save"></span> Salvar alterações</button>
	                        </div>
	                    </div>
                    </form>
				</div>
			</div>
		</div>
	</div>
			
	
	
	
	
</div>



