<?php
session_start();
require_once 'connection.php';


$id = $_POST['id'];
$nome = $_POST['nome'];
$login = $_POST['login'];
$senha = $_POST['senha'];


$query = mysqli_query($link, "update usuarios set nome='$nome', senha='$senha', login='$login' where id = '$id' ");


header("location: ./account.php");
