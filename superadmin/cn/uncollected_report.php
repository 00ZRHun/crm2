<?php 
include('header.php');

?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
          <center> <h1>未收集的报告</h1></center>
         
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <section id="id_center_table">
	<table cellspacing="1" cellpadding="1" style="width:80%" class="table table-striped table-bordered" align="center">
		<caption class="menu-header">未收集的报告</caption>
		<thead>
			<tr>
				<th>中心编号</th>
				<th>贷款总额</th>
				<th>总收藏</th>
				<th>平衡</th>
			</tr>
		</thead>
		<tbody>
		<?php 
			$total_loanouts = 0;
			$total_collections = 0;
			$total_balance = 0;
			$current_user_center= '';
			if($_SESSION["group_name"]!='superadmin')			
			{
				$current_user_center = " WHERE id = ".$_SESSION["center_id"];
			}
			//$sql ="SELECT * FROM center_detail";
			
			$sql ="SELECT * FROM center_detail".$current_user_center;

			$result = mysqli_query($conn,$sql);
			if($result->num_rows > 0)
			{
				while($rowss = $result->fetch_assoc())
				{
					$customercard_id=array();
					$where_card_hwe='';
				?>
				<tr>
					<td><span id="id_date_monthly" style="color:#0066FF; cursor:pointer" class="cls_centers" data-id="<?php echo $rowss['id']; ?>"><?php echo $rowss['id'].'-'.$rowss['center_name'];?></span></td>
					<td><?php 
					
						$loan_outs = 0;
						/*
						if($_SESSION["group_name"]!='superadmin')			
						{
							$sql1 = "SELECT id,loan_out FROM customers_card WHERE user_agent_id=".$_SESSION['agent_id']." and center_id=".$rowss['id']." AND clear_payment!=1";
							
						}
						else
						{
							$sql1 = "SELECT id,loan_out FROM customers_card WHERE center_id=".$rowss['id']." AND clear_payment!=1";
						}
						*/
						if($_SESSION["group_name"]=='superadmin')			
						{
						$sql1 = "SELECT id,loan_out FROM customers_card WHERE center_id=".$rowss['id']." AND clear_payment!=1";
							
						}
						else
						{
							$sql1 = "SELECT id,loan_out FROM customers_card WHERE user_agent_id=".$_SESSION['agent_id']." and center_id=".$rowss['id']." AND clear_payment!=1";
						}
						
						$results = mysqli_query($conn,$sql1);
						
						if($results->num_rows > 0)
						{
							while($rowss12 = $results->fetch_assoc())
							{
								
								$customercard_id[]=$rowss12['id'];
								$loan_outs += $rowss12['loan_out'];
							}
						}
				
						echo number_format($loan_outs,2);
					?></td>
					<td>
					<?php 
					
					$where_card_hwe = ' WHERE card_id IN ('.implode(',',$customercard_id).')';
						$collections = 0;
						//$sql2 = "SELECT amount FROM collection WHERE user_agent_id=".$_SESSION['agent_id'];
						$sql2 = "SELECT amount FROM collection".$where_card_hwe;
						$results12 = mysqli_query($conn,$sql2);
						if($results12->num_rows > 0)
						{
							while($rowss123 = $results12->fetch_assoc())
							{
								$collections += $rowss123['amount'];
							}
						}
						echo number_format($collections,2);
					?>
					</td>
					<td>				
						<?php 
						$total_loanouts += $loan_outs;
						$total_collections += $collections;
						$total_balance += $collections-$loan_outs;
						
						echo number_format($collections-$loan_outs,2);?>
					</td>
				</tr>
				<?php
					
					
				}
			}
			?>
			<tr style="background-color:#038603;color:white;";>
				<td>Total</td>
				<td><?php echo number_format($total_loanouts,2);?></td>
				<td><?php echo number_format($total_collections,2);?></td>
				<td><?php echo number_format($total_balance,2);?></td>
			</tr>
	
		 <tr>
    <td class="ConfirmValue">printed at<font size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong> <?php echo date("d/m/Y H:i:s");?></strong></font></td>
  </tr>
		</tbody>
	</table>
    </section>
    <section id="id_new_hwe_table">
    <button type="button" class="btn btn-info back">返回</button>
	<table cellspacing="1" cellpadding="1" style="width:80%" class="table table-striped table-bordered show_center_card_list" align="center">
		<caption class="menu-header">客户资料</caption>
		<thead>
			<tr>
				<th>客户 ID</th>
				<th>姓名</th>
				<th>卡编号</th>
                <th>借出</th>
                <th>采集</th>
                <th>余额</th>
			</tr>
		</thead>
		<tbody>
		
				<tr>
					<td></td>
					<td></td>
					
				</tr>
			
			<tr style="background-color:#038603;color:white;";>
				<td>总额</td>
				<td></td>
				
			</tr>
		</tbody>
	</table>
    </section>
</div>
<style>
.ConfirmValue
{
	font-size: small;
	color: #0000FF;
	font-weight: normal;
}
.ErrMsg
{
	color:#F00;
}
body
{
	color:#000;
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
	padding-top:0px;
	padding-bottom:0px;
	text-align: center;
	caption-side: top;
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
</style>
<script>
$(document).ready(function(){
	$("#id_new_hwe_table").hide();
  
  $(".cls_centers").click(function(){
		var center_id_hwe = jQuery(this).attr("data-id");
	
		$(".show_center_card_list tbody").empty();
		$.ajax({
		  type: 'post',
		  url: 'get_center_id_base_record.php',
		  data: {center_id_hwe:center_id_hwe},
		  success: function (data){
			 console.log(data);
			$(".show_center_card_list tbody").html(data);
			$("#id_center_table").hide();
   			$("#id_new_hwe_table").show();
		 
			}
		  
		});
   
  });
  
  $(".back").click(function(){
		$("#id_new_hwe_table").hide();	
		$("#id_center_table").show();
	});
  
});
</script>