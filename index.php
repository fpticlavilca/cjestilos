<?php
    function getConnectionPDO(){
        try{
              $pdoConnection = new PDO(
                            "mysql:host=localhost;dbname=id18444347_cjestilos",
                            "id18444347_admin",
                            "(hFg!hhfiXQds_5x");
                        }

        }
        catch(Exception e){

        }
    }
/*
    function getConnectionPDO(){
        try{
            $pdoConnection = new PDO(
                "mysql:host=localhost;dbname=id18444347_cjestilos",
                "id18444347_admin",
                "(hFg!hhfiXQds_5x");

            }
            $response = $pdoConnection->prepare("select * from catalogGenre");
            $response->execute();

            $fields = [];

            foreach($response as $field){
                $fields[]=$field;
            }
            echo json_encode($fields);
        }

        catch(PDOException $pdoException ){
            echo $pdoException->getMessage();
        }

*/
    getConnectionPDO();

?>
