<?php

class DB{

    public $con;
    protected $servername = "localhost";
    protected $username = "root";
    protected $password = "";
    protected $dbname = "dacn";

    function __construct(){
        $this->con = mysqli_connect($this->servername, $this->username, $this->password, $this->dbname);
    }

}

?>