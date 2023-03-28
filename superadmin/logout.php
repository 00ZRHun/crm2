<?php
session_start();
require_once('config.php');
unset($_SESSION["superadmin_user_id"]);


?>
<script>
	//window.location.replace("http://readyforyourreview.com/Loan_software/index.php");]
	window.location.replace("<?php echo SITEURL?>/superadmin/index.php");
	</script>