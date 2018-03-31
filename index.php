<?php

require './Database.php';

$method = $_SERVER['REQUEST_METHOD'];
$db = Database::getInstance();

if ($method == 'GET') {
  $name = $_GET['name'];

  if ($name == 'products') {
    $mysqli = $db->getConnection(); 
    $sql_query = 'SELECT * FROM Projects';
    $result = $mysqli->query($sql_query);

    // Cycle through results
    while ($row = $result->fetch_object()){
      $projects_arr[] = $row;
    }

    header('Content-Type: application/json');
    echo json_encode($projects_arr);
  }
} else if ($method == 'POST') {
  debug($_POST);
}

function debug($variable) {
  echo '<pre>';
  var_dump($variable);
  echo '</pre>';
}