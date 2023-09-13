<?php
    $host='localhost';
    $user='root';
    $pass='';
    $dbn='adso2613934';
    $conn=mysqli_connect($host,$user,$pass,$dbn);
    if(mysqli_connect_errno()){
        //echo "Error al conectar a mysql";
        $statusConn=false;
    } else {
        //echo "Se ha conectado a mysql";
        $statusConn=true;
    }
?>