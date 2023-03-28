<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include('header.php');

$id = $_REQUEST['id'];
if(isset($_POST['update_domain']))
{
    
    $first_method = $_POST['first_method'];
    $update = "UPDATE domain_list_setting SET first_method='$first_method' where id='$id'";
    mysqli_query($conn,$update);
}

$select = "SELECT * from domain_list_setting where id='$id'";
$row = $conn->query($select);
$result =mysqli_fetch_assoc($row);
$first_method = $result['first_method'];
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
          <center> <h1>Loan Software System</h1></center>
         
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <?php 
	if(isset($success))
	{
	?>
    <section>
    	<div class="container">
        	<div class="row">
            	<div class="col-md-3"></div>
                <div class="col-md-6">
                	<?php echo $success;?>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </section>
   <br/>
    <?php
	}
	?> 
    <section>
    	<div class="container">
            <form method="post" id="myForm">
            
               <div class="row form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <label for="customer_name">First Method</label>
                    </div>
                    <div class="col-md-6">
                        <input type="radio" name="first_method" value="1" <?php if($first_method == 1){ echo 'checked'; } ?>/>:Active
                        <input type="radio" name="first_method" value="0" <?php if($first_method == 0){ echo 'checked'; } ?>/>:Deactive
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
             
                <br/>
                
                <div class="row form-group">
                    <div class="col-md-4"></div>
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-success" name="update_domain">Update Setting</button>&nbsp;&nbsp;
                       
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
