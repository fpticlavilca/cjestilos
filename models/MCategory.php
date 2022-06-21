<?php
    require_once "../lib/Connection.php";
    class MCategory{
        private $objMysqli;
        function __construct(){
            $this->objMysqli = new Connection();
            $this->objMysqli = $this->objMysqli->getObjMysqli();
        }
        public function stpCategoryR(){
            $resultSet = $this->objMysqli->query("call stpCategoryR()");
            $resultSet = $resultSet->fetch_field();
            return $resultSet;

        }
    }
?>
