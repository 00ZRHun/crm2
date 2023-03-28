<?php
session_start();
require_once('config.php');

$error_msg = '';
if(isset($_POST['submit']))
{
	
	$companyid = $_POST['companyid'];
	$user_id = $_POST['user_id'];
	$Password = $_POST['Password'];
	
	if(empty($companyid))
	{
		$get_admin_data = mysqli_query($conn,"SELECT * FROM administration where name = '$user_id' AND password = '$Password'");
		if(mysqli_num_rows($get_admin_data) > 0)
		{
			$rowadmin = mysqli_fetch_assoc($get_admin_data);
			$_SESSION["group_name"] = 'superadmin';
			$_SESSION["user_id"] = $rowadmin['id'];
			?>
			
			<script>
			//window.location.replace("http://readyforyourreview.com/Loan_software/dashboard.php");
			window.location.replace("<?php echo SITEURL?>/dashboard.php");
			</script>
		<?php
		}
		else
		{
			$error_msg = 'Login Credential Incorrect.';
		}
	}
	else
	{
	
		$sql= "SELECT * FROM users WHERE user_id = '$companyid' AND password = '$Password' AND user_name = '$user_id' ";
		
		$result = mysqli_query($conn,$sql);
		
		if($result->num_rows>0)
		{
			$row123 = mysqli_fetch_assoc($result);
			
			$_SESSION["center_id"] = $row123['center_id'];
			$_SESSION["group_name"] = $row123['group_name'];
			$_SESSION["user_id"] = $row123['user_id'];
			$_SESSION["agent_id"] = $row123['id'];
			
			?>
			
			<script>
			window.location.replace("<?php echo SITEURL?>/dashboard.php");
			</script>
		<?php
		}
		else
		{
			$error_msg = 'Login Credential Incorrect.';
		}
	}


}
?>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</head>

<body style="background-color:#4e73df;">


<center style="margin-top:38px;">

<div class="card" style="width:22rem;">
  <div class="card-body" style="font-size: 18px;color: red;"><?php echo $error_msg;?></div>
<div class="card-body">
<form method="POST">
<div class="form-group">
  <input type="text" class="form-control" placeholder="公司编号" name="companyid" style="border-radius: 10rem;padding:1.0rem 1rem;width:260px;"><br>
  <input type="text" class="form-control" placeholder="登录ID" name="user_id" style="border-radius: 10rem;padding:1.0rem 1rem;width:260px;"><br>
 <input type="password" class="form-control" placeholder="密码" name="Password" style="border-radius: 10rem;padding:1.0rem 1rem;width:260px;"><br>
<input type="submit" class="form-control" placeholder="login" name="submit" style="border-radius:10rem;width:260px;background-color:#4e73df;text-align:center;color: #fff !important;" value="&#30331;&#24405;">
<br>
<input type="reset" class="form-control" placeholder="reset" name="reset" style="border-radius:10rem;width:260px;background-color:#4e73df;text-align:center;color: #fff !important;" value="&#37325;&#21551;"> 

 </div>
</form>
	

  </div>
</div>

</center>


</body>
</html>