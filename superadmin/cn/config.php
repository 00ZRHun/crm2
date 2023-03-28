<?php
session_start();
date_default_timezone_set("Asia/Kuala_Lumpur");
//include('/cn/auth.php');
$servername = "localhost";
/*$username = "ccrdskmy_loansw";
$password = "gq5QBO,Z8UQN";
$dbname = "ccrdskmy_loan_software";*/
$username = "ubhvickstrysp";
$password = "f1g$5~1@&(D}";
$dbname = "dbkym9ubpcm3hr";

//define("SITEURL","http://readyforyourreview.com/Loan_software"); 
define("SITEURL","http://jackg111.sg-host.com/cn");
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} 

?>