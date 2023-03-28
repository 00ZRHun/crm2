<?php

include('config.php');



if(isset($_SESSION["user_id"]) && !empty($_SESSION["user_id"]))

{

	

}

else

{

	

	echo "<script>window.location.href='/cn/index.php';</script>";

    exit;

}