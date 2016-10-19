<?php

$link = mysqli_connect('localhost', 'root', '');
if (!$link) {
	die('Não foi possível conectar: ' . mysql_error());
}

mysqli_select_db( $link, 'insecure') or die('Could not select database.');

mysqli_query( $link,"SET NAMES 'utf8'");
mysqli_query( $link,'SET character_set_connection=utf8');
mysqli_query( $link,'SET character_set_client=utf8');
mysqli_query( $link,'SET character_set_results=utf8');