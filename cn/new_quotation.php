<?php 
include('header.php');

if (isset($_GET['q'])) {
    $quotation_id = $_GET['q'];
} else {
    $sql = "SELECT * FROM quotation ORDER BY id DESC LIMIT 1;";
    $res = mysqli_query($conn, $sql);
    $myrow = mysqli_fetch_assoc($res);
    if ($myrow['id'] > 0) {
        $quotation_id = $myrow['id'] + 1;
    }

}

if(isset($_POST['create'])) {
    $counter = 0;
    $center_id = $_SESSION['center_id'];
    $agent_id = $_SESSION['agent_id'];
    $date = date("Y-m-d");
    $customer_id = $_GET['c'];
    $product_id = $_POST['product'];
    $quantity = $_POST['quantity'];
    $sql = "SELECT * FROM quotation WHERE id = '".$_POST['quotation_id']."';";
    $res = mysqli_query($conn, $sql);
    while ($myrow = mysqli_fetch_array($res)) {
        $counter++;
    }

    if($counter == 0) {
        $sql = "INSERT INTO quotation (center_id, customer_id, date, agent_id) VALUES ('".$center_id."','".$customer_id."','".$date."','".$agent_id."');";
        mysqli_query($conn, $sql);
        $sql = "SELECT * FROM quotation ORDER BY id DESC LIMIT 1;";
        $res = mysqli_query($conn, $sql);
        $myrow = mysqli_fetch_assoc($res);
        $quotation_id = $myrow['id'];
    }

    $sql = "SELECT * FROM product_list WHERE id = '".$product_id."';";
    $res = mysqli_query($conn, $sql);
    $myrow = mysqli_fetch_assoc($res);
    $price = $myrow['price'] * $quantity;

    $sql = "INSERT INTO quotation_details (quotation_id, product_id, quantity, price) VALUES ('".$quotation_id."', '".$product_id."', '".$quantity."', '".$price."');";
    $res = mysqli_query($conn, $sql);
    echo "<script>window.location = 'quotation.php?c=".$customer_id."&q=".$quotation_id."';</script>";
} elseif (isset($_POST['edit'])) {
    $customer_id = $_GET['c'];
    $product_id = $_POST['product'];
    $quantity = $_POST['quantity'];

    $sql = "SELECT * FROM product_list WHERE id = '".$product_id."';";
    $res = mysqli_query($conn, $sql);
    $myrow = mysqli_fetch_assoc($res);
    $price = $myrow['price'] * $quantity;

    $sql = "UPDATE quotation_details SET product_id = '".$product_id."', quantity = '".$quantity."', price = '".$price."' WHERE id = '".$_GET['p']."';";
    $res = mysqli_query($conn, $sql);
    echo "<script>window.location = 'quotation.php?c=".$customer_id."&q=".$quotation_id."';</script>";
}
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
            <?php if(isset($_GET['p'])) {?>
          <center> <h1>修改產品</h1></center>
            <?php } else {?>
          <center> <h1>添加產品至報價單</h1></center>
            <?php }?>
         
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <a href="quotation.php?c=<?php echo $_GET['c'];if (isset($_GET['q'])) {echo "&q=".$_GET['q'];} ?>" class="btn btn-info">返回</a>
    <section>
    	<div class="container">
            <form method="post" id="myForm">
            	<input type="hidden" name="quotation_id" value="<?php echo $quotation_id;?>"/>
                <div class="row form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <label for="product">產品</label>
                    </div>
                    <div class="col-md-6">                    
                   
                        <select name="product" class="form-control" style="width:50%;"  required="required">
                            <?php
                            if (isset($_GET['p'])) {
                                $sql = "SELECT * FROM quotation_details WHERE id = '".$_GET['p']."';";
                                $res = mysqli_query($conn, $sql);
                                $row = mysqli_fetch_assoc($res);
                                $qwe = $row['product_id'];
                            }

                            $sql = "SELECT * FROM product_list;";
                            $res = mysqli_query($conn, $sql);
                            while ($myrow = mysqli_fetch_array($res)) {
                                if (isset($qwe)) {
                                    if ($qwe == $myrow['id']) {?>
                            <option value="<?php echo $myrow['id'];?>" selected><?php echo $myrow['product'];?></option>
                                    <?php } else {?>
                            <option value="<?php echo $myrow['id'];?>"><?php echo $myrow['product'];?></option>
                                    <?php }
                                } else {?>
                            <option value="<?php echo $myrow['id'];?>"><?php echo $myrow['product'];?></option>
                                <?php }
                            }
                            ?>
                        </select>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <label for="quantity">數量</label>
                    </div>
                    <div class="col-md-6">
                        <input type="text" name="quantity" class="form-control" required="required" value="<?php if (isset($_GET['p'])) { echo $row['quantity'];} else { echo "0";}?>"/>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                    <div class="col-md-4"></div>
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-success" name="<?php if(isset($_GET['p'])) { echo "edit"; } else { echo "create";}?>"><?php if (isset($_GET['p'])) { echo "修改產品"; } else { echo "添加產品"; }?></button>&nbsp;&nbsp;
                        <button type="reset" class="btn btn-success" name="reset">重置</button>
                    </div>
                    <div class="col-md-2"></div>
                </div>
        	</form>
        </div>
    </section>
</div>
<style>
.span_hwe
{
	float:left;
	color: #000;
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
label
{
	font-size: 14px;
	color: #000;
}
.btn-success
{
	background:#038603 !important;
}

</style>
