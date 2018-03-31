<?php

// get the HTTP method, path and body of the request
$method = $_SERVER['REQUEST_METHOD'];

/*
$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));
$input = json_decode(file_get_contents('php://input'),true);
*/


require './Database.php';

$db = Database::getInstance();
debug($db);

if ($method == 'GET') {
  debug($_GET);
  debug($_SERVER);
} else if ($method == 'POST') {
  debug($_POST);
}

function debug($variable) {
  echo '<pre>';
  var_dump($variable);
  echo '</pre>';
}