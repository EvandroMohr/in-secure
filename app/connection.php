<?php
// força a exibição de erros
ini_set('display_errors', 1);
error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);




// DADOS DE CONEXÃO COM O BANCO DE DADOS
// EDITE CONFORME SUA NECESSIDADE
define('DB_HOST', 'db');
define('DB_USER', 'root');
define('DB_PASS', 'root');
define('DB_NAME', 'insecure');


// Cria a conexão com o banco de dados
$link = mysqli_connect(DB_HOST,DB_USER, DB_PASS);
if (!$link) {
	die('Não foi possível conectar: ' . mysql_error());
}
mysqli_select_db( $link, DB_NAME) or die('Could not select database.');

mysqli_query($link, "SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");

/*
// evitar erros de exibição de caracteres no navegador
mysqli_query( $link,"SET NAMES 'utf8'");
mysqli_query( $link,'SET character_set_connection=utf8');
mysqli_query( $link,'SET character_set_client=utf8');
mysqli_query( $link,'SET character_set_results=utf8');
*/
