<?php
include('header.php');
?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
          <center> <h1>待處理訂單</h1></center>
         
        </div>
      </div><!-- /.container-fluid -->
    </section>
	<section style="overflow-x: auto;">
		<table cellspacing="0" cellpadding="2" border="1" class="table table-striped table-bordered" >
	    <caption class="menu-header">
	      待處理訂單
	    </caption>
	    <thead>
	        <tr>
	            <th>&nbsp;</th>
                <th>No</th>
                <th>訂單號</th>
                <th>顧客</th>
                <th>狀態</th>
                <th>日期</th>
                <th>代理</th>
                <th>總數</th>
                <th></th>
	            <th>&nbsp;</th>
	        </tr>
	    </thead>
	    
	    <tbody>
<?php
$i = 1;
$sql = "SELECT * FROM quotation WHERE state = 'Confirmed';";
$res = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_array($res)) {?>
	    	<tr>
	    		<td></td>
	    		<td><?php echo $i++;?></td>
	    		<td><?php echo $row['id'];?></td>
<?php
$sql1 = "SELECT * FROM customers WHERE id = '".$row['customer_id']."';";
$res1 = mysqli_query($conn, $sql1);
$myrow = mysqli_fetch_assoc($res1);
?>
	    		<td><?php echo $myrow['name'];?></td>
	    		<td><?php echo $row['state'];?></td>
	    		<td><?php echo $row['date'];?></td>
<?php
$sql1 = "SELECT * FROM users WHERE id = '".$row['agent_id']."';";
$res1 = mysqli_query($conn, $sql1);
$myrow = mysqli_fetch_assoc($res1);
?>
	    		<td><?php echo $myrow['user_name'];?></td>
<?php
$sql1 = "SELECT * FROM quotation_details WHERE quotation_id = '".$row['id']."';";
$res1 = mysqli_query($conn, $sql1);
$total = 0;
while ($myrow = mysqli_fetch_array($res1)) {
	$total += $myrow['price'];
}
?>
	    		<td><?php printf("%0.2f", $total);?></td>
	    		<td>
	    			<a href="confirm_order.php?q=<?php echo $row['id'];?>" class="btn btn-success">詳細記錄</a>
	    			<a onclick="return confirm('您確定取消此訂單？')" href="cancelled_quotation.php?q=<?php echo $row['id']; ?>" class="btn btn-success">取消訂單</a>
	    		</td>
	    		<td></td>
	    	</tr>
<?php }
$sql = "SELECT * FROM quotation WHERE state = 'Cancelled';";
$res = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_array($res)) {?>
	    	<tr>
	    		<td></td>
	    		<td><?php echo $i++;?></td>
	    		<td><?php echo $row['id'];?></td>
<?php
$sql1 = "SELECT * FROM customers WHERE id = '".$row['customer_id']."';";
$res1 = mysqli_query($conn, $sql1);
$myrow = mysqli_fetch_assoc($res1);
?>
	    		<td><?php echo $myrow['name'];?></td>
	    		<td><?php echo $row['state'];?></td>
	    		<td><?php echo $row['date'];?></td>
<?php
$sql1 = "SELECT * FROM users WHERE id = '".$row['agent_id']."';";
$res1 = mysqli_query($conn, $sql1);
$myrow = mysqli_fetch_assoc($res1);
?>
	    		<td><?php echo $myrow['user_name'];?></td>
<?php
$sql1 = "SELECT * FROM quotation_details WHERE quotation_id = '".$row['id']."';";
$res1 = mysqli_query($conn, $sql1);
$total = 0;
while ($myrow = mysqli_fetch_array($res1)) {
	$total += $myrow['price'];
}
?>
	    		<td><?php printf("%0.2f", $total);?></td>
	    		<td>
	    			<a href="confirm_order.php?q=<?php echo $row['id'];?>" class="btn" style="background-color: darkgrey;">詳細記錄</a>
	    			<a onclick="return confirm('您確定恢復此訂單？')" href="cancelled_quotation.php?q=<?php echo $row['id'];?>&i=1" class="btn btn-success">恢復訂單</a>
	    		</td>

	    		<td></td>
	    	</tr>
<?php }?>
        </tbody>
        </table>
    </section>
</div>
<style>
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
	caption-side:top;
	padding-top:0px;
	padding-bottom:0px;
	text-align:center;
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
</style>