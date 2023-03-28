<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include('header.php');

$user_table = "CREATE TABLE IF NOT EXISTS domain_list_setting (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
	new_IC VARCHAR(255) NOT NULL,
	address_1 VARCHAR(255),
	address_2 VARCHAR(255),
	address_3 VARCHAR(255),
	address_4 VARCHAR(255),
	occupation VARCHAR(255),
	telephone_1 VARCHAR(255),
	telephone_2 VARCHAR(255),
	fax VARCHAR(255),
	gender VARCHAR(100),
	Guarantor_Name VARCHAR(255),
	Guarantor_IC VARCHAR(255),
	Guarantor_Telephone VARCHAR(255),
	Guarantor_Info VARCHAR(255),
    password  VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	customer_pic VARCHAR(255),
	customer_pic_ic VARCHAR(255),
	customer_guarantor_pic VARCHAR(255),
	user_agent_id INT(11)
)";

if (mysqli_query($conn, $user_table)) {
  
} else {
  echo "Error creating table: " . mysqli_error($conn);
}

$success='';
if(isset($_POST['create_domain']))
{
    $domain_name = $_POST['domain_name'];
    $domain_status = $_POST['domain_status'];
    
    $time = time().'_'.rand(10,1000);
    $table_prefix = 'crm_'.$time.'_';
    
    $whmusername = "ecadmin";
    $whmpassword = "gTneyJS3vnqFnSG";
    $cpanel_ip = '170.187.228.69'; //ip of cpanel or your_domain.com
    $domain = "ecomdemo.xyz";
    $document_root = 'crm';
    
    $query = "https://".$cpanel_ip.":2083/json-api/cpanel?cpanel_jsonapi_module=SubDomain&cpanel_jsonapi_func=addsubdomain&cpanel_jsonapi_apiversion=2&dir=/public_html/".$document_root."/&rootdomain=".$domain."&domain=".$domain_name."";
    
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER,0);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST,0);
    curl_setopt($curl, CURLOPT_HEADER,0);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER,1);
    $header[0] = "Authorization: Basic " . base64_encode($whmusername.":".$whmpassword) . "\n\r";
    curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
    curl_setopt($curl, CURLOPT_URL, $query);
    $result = curl_exec($curl);
    curl_close($curl);
    $response= json_decode($result,true);
    $response = $response['cpanelresult'];
    $response = $response['data'][0]['result'];

    if($response == 1)
    {
        $full_domain_name = $domain_name.'.'.$domain;
         $insert = "INSERT INTO domain_list_setting SET domain_name='".$full_domain_name."',table_prefix='$table_prefix',status='$domain_status',date=now()";
         
        
        if(mysqli_query($conn,$insert))
        {
                   $administration_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."administration (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    name VARCHAR(255) NOT NULL,
                	password VARCHAR(255) NOT NULL
            	
                )";
                if(mysqli_query($conn, $administration_table))
                {
                    
                }
                
                $center_detail_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."center_detail (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    center_name VARCHAR(255) NOT NULL,
                	address_1 VARCHAR(255) NOT NULL,
                	address_2 VARCHAR(255) NULL,
                	address_3 VARCHAR(255) NULL,
                	address_4 VARCHAR(255) NULL,
                	telephone_1 VARCHAR(255) NULL,
                	telephone_2 VARCHAR(255) NULL,
                	fax VARCHAR(255) NULL,
                	show_sequence VARCHAR(255) NULL
            	
                )";
                if(mysqli_query($conn, $center_detail_table))
                {
                   
                }
                
                
                $collection_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."collection (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    card_id VARCHAR(255) NOT NULL,
                	amount INT(11) NULL DEFAULT 0,
                	interest INT(11) NULL DEFAULT 0,
                	center_id VARCHAR(255) NULL,
                	d_date_disp VARCHAR(255) NULL
            	
                )";
                mysqli_query($conn, $collection_table);
                
                 $users_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."users (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    user_id VARCHAR(255) NOT NULL,
                	user_name VARCHAR(255) NOT NULL,
                	group_name VARCHAR(255) NULL DEFAULT NULL,
                	center_id VARCHAR(255) NULL DEFAULT NULL,
                	password VARCHAR(255) NULL DEFAULT NULL
            	
                )";
                mysqli_query($conn, $users_table);
                
                 $recently_login_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."recently_login (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    user_id INT(11) NULL DEFAULT NULL,
                	date VARCHAR(100) NULL DEFAULT NULL
            	
                )";
                mysqli_query($conn, $recently_login_table);
                
                 $customers_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."customers (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    name VARCHAR(255) NOT NULL,
                	new_IC VARCHAR(255) NOT NULL,
                	address_1 VARCHAR(255) NULL DEFAULT NULL,
                	address_2 VARCHAR(255) NULL DEFAULT NULL,
                	address_3 VARCHAR(255) NULL DEFAULT NULL,
                	address_4 VARCHAR(255) NULL DEFAULT NULL,
                	occupation VARCHAR(255) NULL DEFAULT NULL,
                	telephone_1 VARCHAR(255) NULL DEFAULT NULL,
                	telephone_2 VARCHAR(255) NULL DEFAULT NULL,
                	fax VARCHAR(255) NULL DEFAULT NULL, 
                	gender VARCHAR(255) NULL DEFAULT NULL,
                	Guarantor_Name VARCHAR(255) NULL DEFAULT NULL,
                	Guarantor_Telephone VARCHAR(255) NULL DEFAULT NULL,
                	Guarantor_Info VARCHAR(255) NULL DEFAULT NULL, 
                	password VARCHAR(255) NULL DEFAULT NULL,
                	created_at TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                	customer_pic VARCHAR(255) NULL DEFAULT NULL,
                	customer_pic_ic VARCHAR(255) NULL DEFAULT NULL,
                	customer_guarantor_pic VARCHAR(255) NULL DEFAULT NULL,
                	user_agent_id INT(11) NOT NULL
            	
                )";
                mysqli_query($conn, $customers_table);
                
                $customers_card_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."customers_card (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    customer_id INT(11) NOT NULL,
                	center_id INT(11) NOT NULL,
                	amt_per_day VARCHAR(255) NULL DEFAULT NULL,
                	no_of_terms VARCHAR(255) NULL DEFAULT NULL,
                	start_date VARCHAR(255) NULL DEFAULT NULL,
                	duration VARCHAR(255) NULL DEFAULT NULL,
                	advance VARCHAR(255) NULL DEFAULT NULL,
                	loan_out VARCHAR(255) NULL DEFAULT NULL,
                	deposit VARCHAR(255) NULL DEFAULT NULL,
                	crossed VARCHAR(255) NULL DEFAULT NULL, 
                	crossed_date VARCHAR(100) NULL DEFAULT NULL,
                	profit VARCHAR(255) NULL DEFAULT NULL,
                	clear_payment varchar(50) NOT NULL,
                	user_agent_id INT(11) NOT NULL
            	
                )";
                mysqli_query($conn, $customers_card_table);
                
                $customer_expenses_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."customer_expenses (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    center_id INT(11) NOT NULL,
                	date VARCHAR(255) NULL DEFAULT NULL,
                	misc VARCHAR(255) NULL DEFAULT NULL,
                	repair VARCHAR(255) NULL DEFAULT NULL,
                	advance VARCHAR(255) NULL DEFAULT NULL,
                	outbalance VARCHAR(255) NULL DEFAULT NULL,
                	inbalance VARCHAR(255) NULL DEFAULT NULL,
                	card_id INT(11) NOT NULL
            	
                )";
                mysqli_query($conn, $customer_expenses_table);
         
            $success = "Domain Created Successfully";
            ?>
                <script>
                     window.location.href="http://crm.ecomdemo.xyz/superadmin/domain_list.php";
                </script>
            <?php
            
        }
    }
   
    
}
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
                        <label for="customer_name">Domain Name</label>
                    </div>
                    <div class="col-md-6">
                        <input type="text" name="domain_name" class="form-control" required="required"/>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <label for="customer_guaranty_name">Status</label>
                    </div>
                    <div class="col-md-6">
                        <select name="domain_status" class="form-control">
                            <option value="1" class="form-control">Active</option>
                            <option value="0" class="form-control">Deactive</option>
                        </select>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                
                <div class="row form-group">
                    <div class="col-md-4"></div>
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-success" name="create_domain">Create Domain</button>&nbsp;&nbsp;
                       
                    </div>
                    <div class="col-md-2"></div>
                </div>
        	</form>
        </div>
    </section>
    <?php
	//}
	?>
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
