<?php 
include('header.php');
if (isset($_POST['function_button'])) {
	$function_button = $_POST['function_button'];
	if ($function_button == "Select Function") {
		$current_function = $_POST['function'];
	}elseif ($function_button == "Change"){
		$current_function = $_POST['function_name'];
		$center_id = $_POST['center_id'];
		$status = 0;
		$sql = "SELECT * FROM function_authorized WHERE center_id = '".$center_id."' AND function = '".$current_function."' ORDER BY date_time DESC LIMIT 1;";
		$res = mysqli_query($conn, $sql);
		$myrow = mysqli_fetch_assoc($res);
		if ($myrow['status'] != '') {
			$status = $myrow['status'];
		}

		if ($status == 0)
			$status = 1;
		else
			$status = 0;

		$sql = "INSERT INTO function_authorized (center_id, function, status) VALUES ('".$center_id."', '".$current_function."', '".$status."');";
		mysqli_query($conn, $sql);
	}
}
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
          <center> <h1>Function Authorized</h1></center>         
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <section>
    	<div>
    		<form method="post">
	    		<label>Function: </label>
	    		<select name="function">
<?php
$sql = "SELECT * FROM function_list;";
$res = mysqli_query($conn, $sql);
while ($myrow = mysqli_fetch_array($res)) {
	if ($current_function == $myrow['name']){?>
	    			<option value="<?php echo $myrow['name'];?>" selected><?php echo $myrow['name']." - ".$myrow['type'];?></option>
<?php 	} else {?>
	    			<option value="<?php echo $myrow['name'];?>"><?php echo $myrow['name']." - ".$myrow['type'];?></option>
<?php 	}
 }?>
	    		</select>
	    		<input name="function_button" type="submit" class="btn btn-success" id="function" value="Select Function">
    		</form>
    	</div>
<?php
if ($current_function != "") {?>
			<table cellspacing="1" cellpadding="1" style="width:80%" class="table table-striped table-bordered" align="center">
				<caption class="menu-header">Function <?php echo $current_function;?></caption>
				<thead>
					<tr>
						<th>Center</th>
						<th>Status</th>
						<th>Function</th>
					</tr>
				</thead>
				<tbody>
<?php 
$sql = "SELECT * FROM center_detail;";
$res = mysqli_query($conn, $sql);
while ($myrow = mysqli_fetch_array($res)) {?>
					<tr>
						<td><?php echo $myrow['id']." - ".$myrow['center_name'];?></td>
<?php
$sql1 = "SELECT * FROM function_authorized WHERE function = '".$current_function."' AND center_id = '".$myrow['id']."' ORDER BY date_time DESC LIMIT 1;";
$res1 = mysqli_query($conn, $sql1);
$myrow1 = mysqli_fetch_assoc($res1);
if ($myrow1['status'] == '0') {?>
						<td style="color: red;">Unauthorized</td>
<?php } elseif ($myrow1['status'] == '1') {?>
						<td style="color: green;">Authorized</td>
<?php } else {?>
						<td style="color: red;">Unauthorized</td>
<?php }?>
						<td>
							<form method="post">
								<input name="function_button" type="submit" class="btn btn-success" value="Change" onclick="">
								<input type="hidden" name="function_name" value="<?php echo $current_function;?>">
								<input type="hidden" name="center_id" value="<?php echo $myrow['id'];?>">
							</form>
						</td>
					</tr>
<?php }?>
				</tbody>
			</table>
<?php }
?>
    </section>
</div>
<style>
.ConfirmValue {
    font-size: small;
    color: #0000FF;
    font-weight: normal;
}
body
{
	color:#000;
}
.SubMenuCaption {
    font-family: Arial, Helvetica, sans-serif;
    font-weight: bold;
    color: #000000;
    background-color: #A7B5CE;
    border-top-style: none;
    border-right-style: none;
    border-bottom-style: none;
    border-left-style: none;
}
caption {
    font-family: Arial, Helvetica, sans-serif;
    font-size: medium;
    font-weight: bold;
    color: #000000;
    background-color: #A7B5CE;
    border-top-style: double;
    border-right-style: double;
    border-bottom-style: double;
    border-left-style: double;
	caption-side:top;
	padding-top:0px;
	padding-bottom:0px;
	text-align:center;
}
table
{
	border-collapse: separate;
}
.width_hwe
{
	float:right;
	width:95%;
}
.content-header {
	background: #f1f1f1;
	box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.05);
	border-bottom: 1px solid #d0d0d0;
	min-height: 54px;
	height: auto;
	margin-bottom: 20px;
}
.content-header h1 {
	color: #0e0d0d;
	font-size: 22px;
	font-weight: 500;
}

.container-fluid {
	 width: 100%; 
	 padding-right:0px !important; 
	 padding-left:0px !important;
	 margin-right: auto; 
	 margin-left: auto; 
	left: 0;
}
.btn-success
{
	background:#038603 !important;
}
caption,.total_td {
	height: 42px;
	padding-top: 6px !important;
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
	font-weight: bold;
	color: #FFF;
	background-color: #038603;
	border-top-style: double;
	border-right-style: double;
	border-bottom-style: double;
	border-left-style: double;
	padding-top:0px;
	padding-bottom:0px;
	text-align: center;
	caption-side: top;
}
.total_td
{
	text-align:left !important;
}
.customer_table
{
	color: #000;
}
</style>
<script>
$(document).ready(function(){
	$("#id_payees_table").hide();
  
	$(".cls_month_date").click(function(){
		$(".payeetable tbody").empty();
		var date = $(this).text();
		var card_ids = $("#"+date).val();
		var center_type =$("#center_type"+date).val();
		var text =  "<strong>  "+center_type+" : "+date+"</strong>";
		$(".date_center").html(text);
		$.ajax({
		  type: 'post',
		  url: 'get_date_base_record.php',
		  data: {date:date,
		  card_ids:card_ids,
		  center_type: center_type},
		  success: function (data){
			 console.log(data);
			$(".payeetable tbody").html(data);
			$("#id_month_pay_table").hide();
			$("#id_payees_table").show();
		 
			}
		  
		});
		
	});
	$(".back").click(function(){
		$("#id_payees_table").hide();	
		$("#id_month_pay_table").show();
	});
});
</script>