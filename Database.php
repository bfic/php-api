<?php

class Database {
  protected static $_instance = null;

  protected $_conn = null;

  protected $_config = array(
    'username' => 'root',
    'password' => 'root',
    'hostname' => 'localhost',
    'database' => 'folio'
  );

  protected function __construct() {
  }

  public static function getInstance() {
    if (null === self::$_instance) {
      self::$_instance = new self();
    }
    return self::$_instance;
  }

  public function getConnection() {
    if (is_null($this->_conn)) {
      $db = $this->_config;
      $this->_conn = mysqli_connect(
        $db['hostname'], 
        $db['username'], 
        $db['password'], 
        $db['database']
      );

      if (!$this->_conn) {
          echo "Error: Unable to connect to MySQL." . PHP_EOL;
          echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
          echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
          exit;
      }

      mysqli_close($link);
    }
    return $this->_conn;
  }

  public function query($query) {
    $conn = $this->getConnection();
    return mysqli_query($query, $conn);
  }
}