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
    echo json_encode($projects_arr, JSON_PRETTY_PRINT);
  } else if ($name == 'modules') {
    $mysqli = $db->getConnection(); 
    $sql_query = 'SELECT * FROM Modules';
    $result = $mysqli->query($sql_query);

    // Cycle through results
    while ($row = $result->fetch_object()){
      //debug($row->fields);
      $manage = (object) json_decode($row->fields, true);
      $row->fields = $manage;
      //debug($manage);
      $projects_arr[] = $row;
    }
    header('Content-Type: application/json');
    echo json_encode($projects_arr, JSON_PRETTY_PRINT);
  }
} else if ($method == 'POST') {
  debug($_POST);
}

function debug($variable) {
  echo '<pre>';
  var_dump($variable);
  echo '</pre>';
}