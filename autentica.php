<?php
session_start();
require_once 'connection.php';


$login = $_POST['login'];
$senha = $_POST['senha'];


$result = mysqli_query($link, "Select * from usuarios where login = '$login' and senha = '$senha' ");


if(mysqli_num_rows ($result) > 0 )
{
	$_SESSION['login'] = $login;
	$_SESSION['senha'] = $senha;
} else{
	unset ($_SESSION['login']);
	unset ($_SESSION['senha']);
}

header('location:./');