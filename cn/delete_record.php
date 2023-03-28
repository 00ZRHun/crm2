<?php
if (isset($_GET['c'])) {
	$card = $_GET['c'];
} else {
	echo '<script>window.location = "home.php";</script>';
}

require_once("config.php");

$sql = "DELETE FROM collection WHERE id = '".$card."';";
mysqli_query($conn, $sql);
echo "<script>javascript:history.go(-1)</script>";
?>