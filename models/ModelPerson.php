<?php
    require_once "../lib/Connection.php";
    class ModelPerson{
        private $objMysqli;
        function __construct(){
            $this->objMysqli = new Connection();
            $this->objMysqli = $this->objMysqli->getObjMysqli();
        }
        public function getPerson(){
            $resultSet = $this->objMysqli->query("call stpCategoryC('Polos')");
            $resultSet = $resultSet->fetch_field();
            return $resultSet;

        }
    }
?>
