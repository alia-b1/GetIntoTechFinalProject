<?php

class DB {
    
    private static $instance = NULL;

    //Singleton Design Pattern
    public static function getInstance() {
      if (!isset(self::$instance)) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        self::$instance = new PDO('mysql:host=dz8959rne9lumkkw.chr7pe7iynqr.eu-west-1.rds.amazonaws.com;dbname=n00jghnrh4qt3q67;port=3306', 's79qmrb4viy91ag7', 'zvbwjbe5bf592kg4', $pdo_options);
      }
      return self::$instance;
    }
}
