<?php
    require_once "../models/MCategory.php";
    $request = $_REQUEST["request"];
    $mCategory = new MCategory();

    if($request == "stpCategoryC"){

    }
    if($request == "stpCategoryR"){
        $fields = $mCategory->stpCategoryR();
        print_r("<pre>");
        print_r($fields);
        print_r("<pre>");
        die();
    }
    if($request == "stpCategoryU"){

        echo $request;
    }
    if($request == "stpCategoryD"){

        echo $request;
    }
    die();
?>