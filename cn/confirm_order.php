<?php
include('header.php');
if (isset($_GET['q'])) {
	$quotation_id = $_GET['q'];
}
$sql = "SELECT * FROM quotation WHERE id = '".$quotation_id."';";
$res = mysqli_query($conn, $sql);
$myrow = mysqli_fetch_assoc($res);
$state = $myrow['state'];
$customer_id = $myrow['customer_id'];

if (isset($_POST['complete'])) {
	$sql = "UPDATE quotation SET state = 'Completed' WHERE id = '".$quotation_id."';";
	mysqli_query($conn, $sql);
	echo '<script>alert("訂單已完成。")</script>';
	echo "<script>window.location = 'order_list.php';</script>";
}
?>

<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="">
        <center> <h1>訂單詳情</h1></center>
       
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <section>
  	<!-- customer details -->
<?php
$sql = "SELECT * FROM customers WHERE id = '".$customer_id."';";
$res = mysqli_query($conn, $sql);
$myrow = mysqli_fetch_assoc($res);
?>
  	<table cellspacing="0" cellpadding="5">
  		<tr>
  			<td>客戶ID</td>
  			<td>:</td>
  			<td><?php echo $myrow['id'];?></td>
  		</tr>
  		<tr>
  			<td>姓名</td>
  			<td>：</td>
  			<td><?php echo $myrow['name'];?></td>
  		</tr>
  		<tr>
  			<td>新身分證</td>
  			<td>：</td>
  			<td><?php echo $myrow['new_IC'];?></td>
  		</tr>
  		<tr>
  			<td>地址</td>
  			<td>：</td>
  			<td><?php echo $myrow['address_1'];?></td>
  		</tr>
  		<tr>
  			<td></td>
  			<td></td>
  			<td><?php echo $myrow['address_2'];?></td>
  		</tr>
  		<tr>
  			<td></td>
  			<td></td>
  			<td><?php echo $myrow['address_3'];?></td>
  		</tr>
  		<tr>
  			<td></td>
  			<td></td>
  			<td><?php echo $myrow['address_4'];?></td>
  		</tr>
  		<tr>
  			<td>電話</td>
  			<td>：</td>
  			<td><?php echo $myrow['telephone_1'];?></td>
  		</tr>
  		<tr>
  			<td></td>
  			<td></td>
  			<td><?php echo $myrow['telephone_2'];?></td>
  		</tr>
  		<tr>
  			<td>傳真</td>
  			<td>：</td>
  			<td><?php echo $myrow['fax'];?></td>
  		</tr>
  		<tr>
  			<td>性別</td>
  			<td>：</td>
  			<td><?php echo $myrow['gender']." - "; if ($myrow['gender'] == "F") {echo "女";} elseif ($myrow['gender'] == "M") {echo "男";}?></td>
  		</tr>
  	</table>




  </section>
	<section style="overflow-x: auto;">
		<table cellspacing="0" cellpadding="2" border="1" class="table table-striped table-bordered" >
	    <caption class="menu-header">
	      訂單號：<?php echo $quotation_id;?>（<?php echo $state;?>）
	    </caption>
	    <thead>
	        <tr>
	            <th>&nbsp;</th>
                <th>No</th>
                <th>產品</th>
                <th>單價</th>
                <th>數量</th>
                <th>總額</th>
	            <th>&nbsp;</th>
	        </tr>
	    </thead>
	    
	    <tbody>
<?php
$sql = "SELECT * FROM quotation_details WHERE quotation_id = '".$quotation_id."';";
$res = mysqli_query($conn, $sql);
$i = 1;
$total = 0;
while ($row = mysqli_fetch_array($res)) {
	$sql = "SELECT * FROM product_list WHERE id = '".$row['product_id']."';";
	$res1 = mysqli_query($conn, $sql);
	$myrow = mysqli_fetch_assoc($res1);
	$total += $row['price'];
?>
				<tr>
					<td></td>
					<td><?php echo $i++;?></td>
					<td><?php echo $myrow['product'];?></td>
					<td><?php printf("%0.2f", $myrow['price']);?></td>
					<td><?php echo $row['quantity'];?></td>
					<td><?php printf("%0.2f", $row['price']);?></td>
					<td></td>
				</tr>
<?php }?>
				<tr>
					<td></td>
					<td colspan="4">Total: </td>
					<td><?php printf("%0.2f", $total);?></td>
					<td></td>
				</tr>
			</tbody>
    </table>
<?php
if ($state == "Confirmed") {?>
    <br>
    
    <div class="container">
    	<form id="form1" name="form1" method="post">
            <p align="center">
              <label>
              <input name="complete" type="submit" class="btn btn-success" onclick="return confirm('您確定此訂單已完成？')" value="完成訂單">
              </label>
            </p>
        </form>
    </div>
<?php }?>
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