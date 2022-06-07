<?php
    class Connection{

        public static function getObjMysqli(){

            $objMysqli = new mysqli("localhost","id18444347_admin","KhTlIjQSl8Rgabr@","id18444347_cjestilos");
            $objMysqli->set_charset("utf8");
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
