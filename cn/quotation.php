<?php 
include('header.php');

if (isset($_GET['q'])) {
    $sql = "SELECT state FROM quotation WHERE id = '".$_GET['q']."';";
    $res = mysqli_query($conn, $sql);
    $myrow = mysqli_fetch_assoc($res);
    $state = $myrow['state'];
} else {
    $state = "Pending";
}


?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
<?php
if(isset($_GET['q'])) {?>
          <center> <h1>報價單</h1></center>
<?php } else {?>
          <center> <h1>新報價單</h1></center>
<?php }?>
         
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <a href="customer.php?t_cust_id=<?php echo $_GET['c'];?>&Submit=1" class="btn btn-info">返回</a>
    <section style="overflow-x: auto;">
    	<table cellspacing="0" cellpadding="2" border="1" class="table table-striped table-bordered" >
        <caption class="menu-header">
          <?php if(isset($_GET['q'])) echo "報價單號：".$_GET['q']; else echo "新報價單";?>
        </caption>
        <thead>
            <tr>
                <th>&nbsp;</th>
                <th><strong>No</strong></th>
                <th><strong>產品</strong></th>
                <th><strong>單價</strong></th>
                <th><strong>數量</strong></th>
                <th><strong>總額</strong></th>
                <th>&nbsp;</th>
            </tr>
        </thead>
        
        <tbody>
        
<?php   
if(isset($_GET['q'])) {
    $sql = "SELECT * FROM quotation_details WHERE quotation_id = '".$_GET['q']."';";
    $res = mysqli_query($conn, $sql);
    $i = 0;
    while ($myrow = mysqli_fetch_array($res)) {?>
            <tr>
                <td></td>
                <td><?php echo ++$i;?></td>
    <?php
        $sql = "SELECT * FROM product_list WHERE id = '".$myrow['product_id']."';";
        $res1 = mysqli_query($conn, $sql);
        $myrow1 = mysqli_fetch_assoc($res1);
    ?>
                <td><?php echo $myrow1['product'];?></td>
                <td><?php printf("%0.2f", $myrow1['price']);?></td>
                <td><?php echo $myrow['quantity'];?></td>
                <td><?php printf("%0.2f", $myrow['price']);?></td>
                <td>
                    <?php
                    if ($state != "Cancelled" && $state != "Completed") {?>
                    <a href="new_quotation.php?c=<?php echo $_GET['c'];?>&q=<?php echo $_GET['q'];?>&p=<?php echo $myrow['id'];?>" class="btn btn-success">修改數量</a>
                    <a onclick="return confirm('您確定刪除這產品嗎？')" href="delete_quotation_product.php?p=<?php echo $myrow['id'];?>" class="btn btn-success">刪除</a></td>
                    <?php }?>
            </tr>
<?php     }
}?>
            
        <tr>
            <td colspan="7" class="ErrMsg">
                <div align="center">
                    <?php
                    if ($state != "Cancelled" && $state != "Completed") {?>
                    <form id="form1" name="form1" method="post" action="new_quotation.php?c=<?php echo $_GET['c'];if(isset($_GET['q'])) { echo "&q=".$_GET['q'];}?>">
                        <input name="cmdNew" type="submit" class="btn btn-success" id="cmdNew" value="添加產品">
                    </form>
                    <?php }?>
                </div>
            </td>
        </tr>
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