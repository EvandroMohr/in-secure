<?php

require_once 'connection.php';

$id = $_POST['id'];
$nome = $_POST['nome'];
$comentario = $_POST['comentario'];



$query = mysqli_query($link, "insert into comentarios(nome,comentario,id_noticia) values ('$nome', '$comentario', $id)");

header("location: ./noticia.php?id=$id");