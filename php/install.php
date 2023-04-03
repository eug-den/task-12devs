<?php
   $dbhost = 'mysql:3306';
   $dbuser = 'root';
   $dbpass = 'root';
   $link = mysqli_connect($dbhost, $dbuser, $dbpass);

   if(! $link ){
      echo 'Connected failure<br>';
   }
   echo 'Connected to <font color=blue>'.$dbhost.'<font color=black> successfully<br>';

   for ($i = 1; $i <= 10; $i++) {
     echo '====================================<br>';
     $db='website'.$i;
     $sql = "CREATE DATABASE ".$db;

     if (mysqli_query($link, $sql)) {
        echo "Database <font color=blue>".$db."<font color=black> created successfully<br>";
     } else {
        echo "Error creating database: " . mysqli_error($link)."<br>";
     }

     mysqli_select_db($link, $db);

     $sql = "create table website_tbl(
        id INT AUTO_INCREMENT,
        name VARCHAR(20) NOT NULL,
        text VARCHAR(32) NOT NULL,
        value int NOT NULL,
        primary key (id))";

     if(mysqli_query($link, $sql)){
        echo "Sample table (website_tbl) created successfully<br>";
     } else {
        echo "Table is not created successfully<br>";
     }

     for ($j = 1; $j <= 10; $j++) {
        $value = rand();
        $sql = "INSERT INTO website_tbl (name, text, value) VALUES ('".$db."', md5(rand()), $value)";

        if(mysqli_query($link, $sql)){
            echo "Record <font color=blue>#".$j."<font color=black> inserted OK<br>";
        } else{
            echo "ERROR: Insert failed $sql. " . mysqli_error($link)."<br>";
        }
     }
   }

   mysqli_close($link);
?>
