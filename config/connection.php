<?php

    $mysqli = new mysqli("localhost","id18444347_admin","S4BB4th0SB0URn3=");

    if($mysqli->connect_error){
        die("Connection falied" .$mysqli->connect_error);
        exit();
    }
    else{
        echo "Connection successfully";
    }
?>