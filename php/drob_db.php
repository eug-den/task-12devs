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
     $db='website'.$i;

     $sql = "DROP DATABASE ".$db;

      if (mysqli_query($link, $sql)) {
      echo "Database <font color=blue>".$db."<font color=black> droped successfully<br>";
      } else {
         echo "Error deleting record: " . mysqli_error($link)."<br>";
      }
   }
   mysqli_close($link);
?>

