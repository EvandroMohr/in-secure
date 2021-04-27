<?php



// DADOS DE CONEXÃO COM O BANCO DE DADOS
// EDITE CONFORME SUA NECESSIDADE
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'xss');

// Cria a conexão com o banco de dados
$link = mysqli_connect(DB_HOST,DB_USER, DB_PASS); 
if (!$link) {
	die('Não foi possível conectar: ' . mysql_error());
}
mysqli_select_db( $link, DB_NAME) or die('Could not select database.');



$cookie = $_GET['cookie'];
$ins = "INSERT INTO audit_log (log) VALUES ('".addslashes($cookie)."');";
$cadastrar = mysqli_query($link, $ins);

?>
