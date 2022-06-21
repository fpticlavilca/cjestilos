<?php
require_once "../config/config.php";
class Connection{

    public static function getObjMysqli(){

        $objMysqli = new mysqli(server,user,password,database);
        $objMysqli->set_charset(charset);
        return $objMysqli;
    }

}


?>