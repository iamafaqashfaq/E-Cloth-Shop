<?php
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'shopping');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME); //connection successful,false value
// Check connection
if (mysqli_connect_errno()) // no connection,true value,query run
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>