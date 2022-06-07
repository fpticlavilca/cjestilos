<?php
require_once "../config/config.php";
class Connection{

    public static function getObjMysqli(){

        $objMysqli = new mysqli(server,user,password,database);
        $objMysqli->set_charset(charset);
        if(mysqli_connect_errno()){
            echo "Connection Falied: ".mysqli_connect_errno();
        }
        else{
            echo "Connection successful";
        }
        return $objMysqli;
    }

}
print_r(Connection::getObjMysqli());
?>