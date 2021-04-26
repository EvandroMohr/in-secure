<?php 
session_start();

if(!isset($_SESSION['login']))
	header('location: ./');

include 'header.php'; 
require_once 'connection.php';


$query = mysqli_query($link, "select * from usuarios");



$usuarios = array();

while($row = mysqli_fetch_assoc($query)){
	$usuarios[] = $row;
}



?>
<div class="container">
	<div class="page-title">
		<h2>
			<span class="fa fa-edit"></span> Minha conta
		</h2>
	</div>
	 <div class="row">
		<!-- NEWS PANEL WRAPPER -->
		<div class="col-md-10" >
			<div class="panel panel-warning" >
				<div class="panel-heading">
	       			<h3>Edite suas informações</h3>
				</div>
				<div class="panel-body">
                    <button class="btn btn-info"><span class="fa fa-plus"></span> Adicionar usuario</button>
					
					<br><br>
					<table class="table table-bordered table-responsive">
						<tr>
							<th>ID</th>
							<th>Nome</th>
							<th>Login</th>
							<th>Contrato</th>
							<th>Editar</th>
							<th>Excluir</th>
						
						<?php foreach ($usuarios as $usuario) {
							echo "<tr>";
							echo "<td>".$usuario['id']."</td>";
							echo "<td>".$usuario['nome']."</td>";
							echo "<td>".$usuario['login']."</td>";
							echo "<td>
									<a href='downloads/contrato.jpg'>
										<i class='fa fa-download'></i>
										Baixar
									</a>
									</td>
								";
							echo "<td>
									<a href='editUser.php?id=".$usuario['id']."' disabled class='btn btn-warning'>
										<span class='fa fa-edit'></span>Editar
									</a>
								</td>";
							echo "<td><button disabled class='btn btn-danger'><span class='fa fa-plus'></span>Remover</button>
									</td>";
							echo "</tr>";
						}
							?>
					</table>
				</div>
			</div>
		</div>
	</div>
	
</div>



