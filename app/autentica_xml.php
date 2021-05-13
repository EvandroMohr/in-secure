<?php

//libxml_disable_entity_loader(false);

$data = file_get_contents('php://input');

$dom = new DOMDocument();
$dom->loadXML($data, LIBXML_NOENT);
echo print_r($dom);
