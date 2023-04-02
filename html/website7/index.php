<?php
   /* Attempt MySQL server connection. Assuming you are running MySQL
   server with default setting (user 'root' with no password) */

   $db     = 'website7';

   $dbhost = 'mysql:3306';
   $dbuser = 'root';
   $dbpass = 'root';
   $link = mysqli_connect($dbhost, $dbuser, $dbpass, $db);

   if($link === false){
       die("ERROR: Could not connect. " . mysqli_connect_error());
   }

   $ip_addr = $_SERVER['SERVER_ADDR'];

   echo "<br>";
   echo "<h1>======= <font color=blue>".strtoupper($db)."<font color=black> =======</h1><br>";
   echo "Server ip:<font color=blue> $ip_addr<font color=black>", "<br><p>";
//   echo "<br>";
   // Attempt select query execution
   $sql = "SELECT * FROM website_tbl";
   if($result = mysqli_query($link, $sql)){
       if(mysqli_num_rows($result) > 0){
           echo "<table>";
               echo "<tr>";
                   echo "<th><font color=blue>id<font color=black></th>";
                   echo "<th><font color=blue>name<font color=black></th>";
                   echo "<th><font color=blue>text<font color=black></th>";
                   echo "<th><font color=blue>value<font color=black></th>";
               echo "</tr>";
           while($row = mysqli_fetch_array($result)){
               echo "<tr>";
                   echo "<td>" . $row['id'] . "</td>";
                   echo "<td>" . $row['name'] . "</td>";
                   echo "<td>" . $row['text'] . "</td>";
                   echo "<td>" . $row['value'] . "</td>";
               echo "</tr>";
           }
           echo "</table>";
           // Free result set
           mysqli_free_result($result);
       } else{
           echo "No records matching your query were found.";
       }
   } else{
       echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
   }

   // Close connection
   mysqli_close($link);
?>

