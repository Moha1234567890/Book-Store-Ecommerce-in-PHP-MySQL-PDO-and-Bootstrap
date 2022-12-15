<?php 



    //host
    $host = "localhost";

    //dbname

    $dbname = "Bookstore";

    //username

    $user = "root";

    //password

    $pass = "";

    $conn = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $secret_key = "sk_test_DRE2vhGZeklVAcOzUvrcFO7w00lC7MWXZm";

    

    // if($conn) {
    //     echo "worked successfully";
    // } else {
    //     echo "error in db connection";
    // }


