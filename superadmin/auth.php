<?php
include('config.php');

if(isset($_SESSION["superadmin_user_id"]) && !empty($_SESSION["superadmin_user_id"]))
{
	
}
else
{
	
	echo "<script>window.location.href='/superadmin/index.php';</script>";
    exit;
}