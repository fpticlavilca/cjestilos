<?php

    class Connection {
        private $connection;
        private $configuration = [
            "driver" => "mysql",
            "host" => "localhost",
            "database" => "cjestilos",
            "port" => "3306",
            "username" => "id18444347_admin",
            "password" => "S4BB4th0SB0URn3=",
            "charset" => "utf8mb4"
        ];
        public function __construct(){
            
        }
        public function getConnection(){
            try{
                $controller = $this->configuration["driver"];
                $server = $this->configuration["host"];
                $database = $this->configuration["cjestilos"];
                $port = $this->configuration["port"];
                $username = $this->configuration["root"];
            }
            catch(Exception $exception){
                echo $exception->getTraceAsString();
            }

        }





    }
?>