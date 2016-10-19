<?php

include 'header.php';
require_once 'connection.php';


@$id = $_GET['id'];

if($id != ''){
	$query = mysqli_query($link, "select * from noticia where id = $id");
	$noticia = mysqli_fetch_assoc($query);
}

if($noticia != ''){
	$query_comentario = mysqli_query($link, "select nome, comentario, date_format(data, '%d/%m/%Y') as pub from comentarios where id_noticia = $id order by id desc");
	
	$comentarios = array();
	while($comentario = mysqli_fetch_assoc($query_comentario)){
		$comentarios[] = $comentario;
	}
	
	
?>
<div class='container'>
	<div class="row">
		<!-- NEWS PANEL WRAPPER -->
		<div class="col-md-10" id="news" >
			<div class="page-title">
				<h2>
					<span class="fa fa-file-o"></span> Notícia
				</h2>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
			        <div class="panel-title-box">
			           <h3><?=$noticia['titulo']?></h3>
			        </div>                                    
			    </div>   
				<div class="panel-body">
					<p><?=$noticia['texto'];?></p>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4" id="news" >
			<div class="panel panel-default" >
			    <div class="panel-heading">
			       <h3>
						Enviar Comentário
					</h3>                             
			    </div>                                
			    <div class="panel-body ">
					<form action="incluir.php" class="form-horizontal" method="post">
						<input type="hidden" name="id" value="<?=$id?>">
						<div class="form-group">
							<div class="col-md-10">
								<input type="text" class="form-control" name='nome' placeholder="Nome"/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<textarea class="form-control" name='comentario' placeholder="Comentário" rows='6'></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-6">
								<button class="btn btn-info btn-block">Enviar</button>
							</div>
						</div>
					</form>
			    </div>                                    
			</div>
		</div>
	</div>
	<br><br>
	<div class="row">
		<div class="col-md-6" >
			<h2>Comentários</h2>
			<hr>
			<br><br>
			<?php 
				foreach ($comentarios as $c){
					echo "<h3><span class='fa fa-user'></span> &nbsp;".$c['nome']."</h3>(".$c['pub'].")<br><Br>";
					echo "<p>".$c['comentario']."</p><hr>";
				}
			?>
		</div>
	</div>
</div>

<?php 
	
}






