<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include('header.php');

if(isset($_REQUEST['deletestatus']) && $_REQUEST['deletestatus'] == 1 && isset($_REQUEST['delete_id']) && $_REQUEST['delete_id'] !='')
{
    $delete = "DELETE from domain_list_setting where id='".$_REQUEST['delete_id']."'";
    mysqli_query($conn,$delete);
    ?>
        <script>
             window.location.href="http://crm.ecomdemo.xyz/superadmin/domain_list.php";
        </script>
    <?php
}

$select = "SELECT * from domain_list_setting";
$row = $conn->query($select);
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
            
                <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Domain Name</th>
                        <th>Options</th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        while($result = mysqli_fetch_assoc($row))
                        {
                            $domain_name = $result['domain_name'];
                            $id = $result['id'];
                            ?>
                            <tr>
                                <td><?php echo $no; ?></td>
                                <td><a href="<?php echo $_SERVER['REQUEST_SCHEME'].'://'.$domain_name; ?>" target="_blank"><?php echo $domain_name; ?></a></td>
                                <td><a href="?deletestatus=1&delete_id=<?php echo $id; ?>" class="btn btn-danger" onClick="return confirm('Are you sure, you want to delete domain!');">Delete</a></td>
                                <td><a href="function_setting.php?id=<?php echo $id; ?>" class="btn btn-primary">Edit</a></td>
                            </tr>
                            </tr>
                            
                            <?php
                            $no++;
                        }
                        ?>
                    </tbody>
                  </table>
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
