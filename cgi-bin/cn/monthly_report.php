<?php 
include('header.php');
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
          <center> <h1>&#26376;&#24230;&#25253;&#21578;</h1>
          </center>         
        </div>
      </div><!-- /.container-fluid -->
    </section>
<?php 
if(isset($_POST['rpt01']))
{
		
	$t_center_id = $_POST['t_center_id'];
	$all_center = $_POST['all_center'];
	$d_startMonth = $_POST['d_startMonth'];
	$d_startYear = $_POST['d_startYear'];	
?>
<section id="id_month_pay_table">
	<!--<center><h3 style="text-decoration:underline;">Monthly Collection Report</h3></center>-->
    <div class="">
    <p>&#27599;&#26376;&#30340;&#25910;&#38598;&#28165;&#21333;<span class="ConfirmValue"> <strong><?php 
		
		if(isset($all_center) && !empty($all_center))
		{
			echo "All Center";
		}
		else
		{
			echo $t_center_id;
		}?> : <?php echo $d_startYear.$d_startMonth;?></strong> </span></p>
    </div>
    <table cellspacing="1" cellpadding="1" style="width:100%" class="table table-striped table-bordered">
    <caption class="menu-header">
    &#27599;&#26376;&#25910;&#27454;&#25253;&#21578;
    </caption>
			<thead>
                <tr>
                    <th>&#26085;&#26399;</th>
                    <th>&#20511;&#20986;</th>
                    <th>&#37319;&#38598;</th>
                    <th>&#21033;&#28070;</th>
                </tr>
            </thead>
          
            <tbody>
		 <?php 
			$where = '';
			$center_type='';
			if(isset($all_center) && !empty($all_center))
			{
				$where ='WHERE 1=1';
				$center_type="all";
			}
			else
			{
				$where ="WHERE center_id = ".$t_center_id;
				$center_type=$t_center_id;
			}
		
		//if (isset($_SESSION["group_name"]= 'superadmin') {
			if ($_SESSION["group_name"] == 'superadmin') {
			 $abc_hwe="SELECT * from customers";
			}
			else{
		 $abc_hwe="SELECT * from customers where user_agent_id=".$_SESSION['agent_id'];
			}
			
			$result_hwe = mysqli_query($conn,$abc_hwe);
			
			
			//print_r($result_hwe);
			//die;
			$customer_id=array();
			while($rows = $result_hwe->fetch_assoc())
			{
			  
			 $customer_id[]=$rows['id'];
			
			}
			
			$where_card_hwe = $where;
			$where_card_hwe .= ' and customer_id IN ('.implode(',',$customer_id).')';
			
			$result_collection = array();
			$customercard_id=array();
			$sql_query ="SELECT * FROM customers_card ".$where_card_hwe."";
			
			$results = mysqli_query($conn,$sql_query);
	
			if($results->num_rows > 0)
			{
			  
				while($rows = $results->fetch_assoc())
				{
				$date_of_record = explode('-',$rows['start_date']);
				 
			    //	print_r($date_of_record);
			    
					$d_startMonth = $_POST['d_startMonth'];
					$d_startYear = $_POST['d_startYear'];
					
					if($d_startMonth == $date_of_record[1] && $d_startYear == $date_of_record[2])
					{
					  
						$customercard_id[]=$rows['id'];
					
						$result_collection[$rows['start_date']]['loan_out']+=$rows['loan_out'];
						$result_collection[$rows['start_date']]['profit']+=$rows['profit'];
						
					}
				}
			}
			
			$where .= ' and card_id IN ('.implode(',',$customercard_id).')';
			 $sql ="SELECT * FROM collection ".$where."";
			$result = mysqli_query($conn,$sql );
			
			if($result->num_rows > 0)
			{
				while($row = $result->fetch_assoc())
				{
					$date_hwe ='';
					$date_hwe = date('d-m-Y',$row['d_date_disp']);
					$date_hwe2 =  explode('-',$date_hwe);
					if($d_startMonth == $date_hwe2[1] && $d_startYear == $date_hwe2[2])
					{
						$result_collection[$date_hwe]['collection'] += $row['amount'];
						$result_collection[$date_hwe]['card_id'][]=$row['card_id'];
					}
				}
			}
			
			$total_loan_out =0;
			$total_amount=0;
			$totalprofit=0;
			ksort($result_collection);
			foreach($result_collection as $key=>$val)
			{
				$total_loan_out +=$val['loan_out'];
				$total_amount+=$val['collection'];
				$totalprofit+=$val['profit'];
			?>
            <tr>
                <td><span id="id_date_monthly" style="color:#0066FF;cursor:pointer;" class="cls_month_date"><?php echo $key;?></span>
                <input type="hidden" name="card_ids" id="<?php echo $key;?>" value="<?php echo implode(',',$val['card_id']);?>"/>
                <input type="hidden" name="center_type" id="center_type<?php echo $key; ?>" value="<?php echo $center_type;?>"/>
                </td>
                <td><?php if(empty($val['loan_out'])){ echo 0; }else{ echo $val['loan_out']; }?></td>
                <td><?php if(empty($val['collection'])){ echo 0; }else{ echo $val['collection']; }?></td>
                <td><?php if(empty($val['profit'])){ echo 0; }else{ echo $val['profit']; }?></td>
            </tr>
            <?php }?>
            <tr>
            <td>&#24635;&#25968; :  </td>
            <td class="total_td"><?php echo $total_loan_out;?></td>
            <td class="total_td"><?php echo $total_amount;?></td>
            <td class="total_td"><?php echo $totalprofit;?></td>
          </tr>
          
       
      
      <tr>
        <td class="ConfirmValue">&#25171;&#21360;<font size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong> <?php echo date("d/m/Y H:i:s");?></strong></font></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody></table>
</section>

<section id="id_payees_table">
    <div class="">
    <button type="button" class="btn btn-info back">返回</button>
    <p>&#25910;&#27454;&#20154;&#28165;&#21333;<span class="ConfirmValue date_center"> </span></p>
    </div>
    <table cellspacing="1" cellpadding="1" style="width:100%" class="table table-striped table-bordered payeetable">
    <caption class="menu-header">
    &#25910;&#27454;&#20154;&#25253;&#21578;
    </caption>
			<thead>
                <tr>
                    <th>&#39038;&#23458; ID</th>
                    <th>&#21517;&#23383;</th>
                    <th>&#21345;&#29255; ID</th>
                    <th>&#20511;&#20986;</th>
                    <th>采集数额</th>
                </tr>
            </thead>
          
            <tbody>
    		</tbody>
    </table>
</section>
<?php
}
elseif(isset($_POST['rpt02']))
{
	$t_center_id = $_POST['t_center_id'];
	$all_center = $_POST['all_center'];
	$d_startMonth = $_POST['d_startMonth'];
	$d_startYear = $_POST['d_startYear'];	
?>
<section>
	<div class="">
	<p>&#27599;&#26376;&#25910;&#38598;&#28165;&#21333;<span class="ConfirmValue"> <strong><?php 
		
		if(isset($all_center) && !empty($all_center))
		{
			echo "All Center";
		}
		else
		{
			echo $t_center_id;
		}?> : <?php echo $d_startYear.$d_startMonth;?></strong> </span></p>
    </div>
         
         
        <table cellspacing="1" cellpadding="1" style="width:100%" class="table table-striped table-bordered">
        <caption class="menu-header"> &#26376;&#24230;&#25253;&#34920;&#25253;&#21578;</caption>
        <thead>
            <tr>
				<th>&#26085;&#26399;</th>
                <th>&#20511;&#20986;</th>
                <th>&#25910;&#34255;</th>
                <th>&#20852;&#36259;</th>
                <th>&#26434;&#39033;</th>
                <th>&#26434;&#39033;</th>
                <th>&#20462;&#29702;</th>
                <th>&#20998;&#20139;</th>
                <th>&#21033;&#28070;</th>
            </tr>
        </thead>
		<tbody>
            <?php 
			/*
			 
			$records = array();
					  
			$where = '';
			$customercard_id=array();
			if(isset($all_center) && !empty($all_center))
			{
				$where ='WHERE 1=1';
			}
			else
			{
				$where ="WHERE center_id = ".$t_center_id;
			}
		
			if ($_SESSION["group_name"] == 'superadmin') {
	    	$sql12="SELECT SUM(`loan_out`) as loan_out, SUM(`profit`) as profit, `start_date`,id FROM `customers_card` ".$where." GROUP BY start_date";
				
			}
			else{
				
				$sql12="SELECT SUM(`loan_out`) as loan_out, SUM(`profit`) as profit, `start_date`,id FROM `customers_card` ".$where." AND user_agent_id=".$_SESSION['agent_id']." GROUP BY `start_date`";
				
			}
			
			$result12 = mysqli_query($conn,$sql12);
			if($result12->num_rows>0)
			{
				while($row1 = $result12->fetch_assoc())
				{
					$date=explode('-',$row1['start_date']);
					if($date[1]== $d_startMonth && $date[2]==$d_startYear)
					{
					 	$records[$row1['start_date']]['loan_out'] =$row1['loan_out'];
						$records[$row1['start_date']]['profit'] =$row1['profit'];
						$customercard_id[]=$row1['id']; 
					} 
				}
			}
			if(count($records)>0)
			{
				if(count($customercard_id)>0)
				{
					$where .= ' and card_id IN ('.implode(',',$customercard_id).')';
				}
				$sql123 = "Select d_date_disp, Sum(amount) as totalamount,Sum(interest) as totalinterest from collection ".$where." group by d_date_disp"; 
				
				$result123 = mysqli_query($conn,$sql123);
					
				if($result123->num_rows > 0)
				{
					while($row = $result123->fetch_assoc())
					{
						
						$datedisp = date('d-m-Y',$row['d_date_disp']);
						$datedisp2=explode('-',$datedisp);
						if($datedisp2[1]== $d_startMonth && $datedisp2[2]==$d_startYear)
						{
							if(array_key_exists($datedisp,$records))
							{
								$records[$datedisp]['collection'] = $row['totalamount'];
								$records[$datedisp]['interest'] = $row['totalinterest'];
							}
							else
							{
								$records[$datedisp]['collection'] = $row['totalamount'];
								$records[$datedisp]['interest'] = $row['totalinterest'];
							}
						}
					}
				}
			$sql_hwe1 ="SELECT * FROM customer_expenses ".$where." group by date";
				$result_hwe1 = mysqli_query($conn,$sql_hwe1);
				if($result_hwe1->num_rows > 0)
				{
					while($rows_hwe1 = $result_hwe1->fetch_assoc())
					{
					    //print_r($rows_hwe1);
						 $datedisp_exp = date('d-m-Y',$rows_hwe1['date']);
						
					$datedisp_exp2=explode('-',$datedisp_exp);
					
						if($datedisp_exp2[1]== $d_startMonth && $datedisp_exp2[2]==$d_startYear)
						{
							if(array_key_exists($datedisp_exp,$records))
							{
								$records[$datedisp_exp]['misc'] = $rows_hwe1['misc'];
								$records[$datedisp_exp]['repair'] = $rows_hwe1['repair'];
								$records[$datedisp_exp]['advance'] = $rows_hwe1['advance'];
								$records[$datedisp_exp]['outbalance'] = $rows_hwe1['outbalance'];
							}
							else
							{
								$records[$datedisp_exp]['misc'] = $rows_hwe1['misc'];
								$records[$datedisp_exp]['repair'] = $rows_hwe1['repair'];
								$records[$datedisp_exp]['advance'] = $rows_hwe1['advance'];
								$records[$datedisp_exp]['outbalance'] = $rows_hwe1['outbalance'];
							}
						}
					}
				}
			}
			$totalloan = 0;
			$totalcollection = 0;
			$totalinterest = 0;
			$totalmisc = 0;
			$totaladvance = 0;
			$totalrepair = 0;
			$totaloutbalance = 0;
			$totalprofit = 0;
			
	        ksort($records);
			
			foreach($records as $key => $record_row)
			{
				$totalloan +=$record_row['loan_out'];
				$totalcollection +=$record_row['collection'];
				$totalinterest +=$record_row['interest'];
				$totalmisc +=$record_row['misc'];
				$totaladvance +=$record_row['advance'];
				$totalrepair +=$record_row['repair'];
				$totaloutbalance +=$record_row['outbalance'];
				$totalprofit +=$record_row['profit'];*/
			$where = '';
			$center_type='';
			if(isset($all_center) && !empty($all_center))
			{
				$where ='WHERE 1=1';
				$center_type="all";
			}
			else
			{
				$where ="WHERE center_id = ".$t_center_id;
				$center_type=$t_center_id;
			}
		
			if ($_SESSION["group_name"] == 'superadmin') {
				$abc_hwe="SELECT * from customers";
			}
			else{
				$abc_hwe="SELECT * from customers where user_agent_id=".$_SESSION['agent_id'];
			}
			
			$result_hwe = mysqli_query($conn,$abc_hwe);
			
			$customer_id=array();
			while($rows = $result_hwe->fetch_assoc())
			{
			  
			 $customer_id[]=$rows['id'];
			
			}
			
			$where_card_hwe = $where;
			$where_card_hwe .= ' and customer_id IN ('.implode(',',$customer_id).')';
			
			$result_collection = array();
			$customercard_id=array();
			$sql_query ="SELECT * FROM customers_card ".$where_card_hwe."";
			
			$results = mysqli_query($conn,$sql_query);
	
			if($results->num_rows > 0)
			{
			  
				while($rows = $results->fetch_assoc())
				{
					$date_of_record = explode('-',$rows['start_date']);
				 
					$d_startMonth = $_POST['d_startMonth'];
					$d_startYear = $_POST['d_startYear'];
					
					if($d_startMonth == $date_of_record[1] && $d_startYear == $date_of_record[2])
					{
						$customercard_id[]=$rows['id'];
						$result_collection[$rows['start_date']]['loan_out']+=$rows['loan_out'];
						$result_collection[$rows['start_date']]['profit']+=$rows['profit'];
						
					}
				}
			}
			
			$where .= ' and card_id IN ('.implode(',',$customercard_id).')';
			$sql ="SELECT * FROM collection ".$where."";
			$result = mysqli_query($conn,$sql );
			
			if($result->num_rows > 0)
			{
				while($row = $result->fetch_assoc())
				{
					/*echo "<pre>";
					print_r($row);
					echo "</pre>";
					echo date('d-m-Y',$row['d_date_disp']);*/
					$date_hwe ='';
					$date_hwe = date('d-m-Y',$row['d_date_disp']);
					$date_hwe2 =  explode('-',$date_hwe);
					if($d_startMonth == $date_hwe2[1] && $d_startYear == $date_hwe2[2])
					{
						$result_collection[$date_hwe]['collection'] += $row['amount'];
						$result_collection[$date_hwe]['interest'] += $row['interest'];
						$result_collection[$date_hwe]['card_id'][]=$row['card_id'];
					}
				}
			}
			
			$misc=0;
			$repair=0;
			$advance=0;
			$out= 0;
			$inbalance = 0;


			$misc_array = array();
			$repair_array=array();
			$advance_array= array();
			$out_array= array();
			$inbalance_array = array();
			if($_SESSION["group_name"]!='superadmin')			
			{
				$get_expenses_result = "SELECT * FROM `customer_expenses` WHERE center_id = $t_center_id and card_id IN(".implode(',',$customercard_id).")"; 
				$result1 = mysqli_query($conn,$get_expenses_result);
				if($result1->num_rows > 0)
				{
					while($row = $result1->fetch_assoc())
					{
						$date_hwe_expns = date('d-m-Y',$row['date']);
						$date_hwe2_expns =  explode('-',$date_hwe_expns);
						if($d_startMonth == $date_hwe2_expns[1] && $d_startYear == $date_hwe2_expns[2])
						{
							/*$result_collection[$date_hwe_expns]['misc'] += $row['misc'];
							$result_collection[$date_hwe_expns]['repair'] += $row['repair'];
							$result_collection[$date_hwe_expns]['advance'] += $row['advance'];
							$result_collection[$date_hwe_expns]['outbalance'] += $row['outbalance'];
							$result_collection[$date_hwe_expns]['inbalance'] += $row['inbalance'];*/
							if(!in_array($row['misc'],$misc_array[$date_hwe_expns]))
							{
								$misc_array[$date_hwe_expns][] = $row['misc'];
								$result_collection[$date_hwe_expns]['misc'] =array_sum($misc_array[$date_hwe_expns]);
							}
							if(!in_array($row['repair'],$repair_array[$date_hwe_expns]))
							{
								$repair_array[$date_hwe_expns][] = $row['repair'];
								
								$result_collection[$date_hwe_expns]['repair'] =array_sum($repair_array[$date_hwe_expns]);
								
							}
							if(!in_array($row['advance'],$advance_array[$date_hwe_expns]))
							{
								$advance_array[$date_hwe_expns][] = $row['advance'];
								
								$result_collection[$date_hwe_expns]['advance']  =array_sum($advance_array[$date_hwe_expns]);
								
							}
							if(!in_array($row['outbalance'],$out_array[$date_hwe_expns]))
							{
								$out_array[$date_hwe_expns][] = $row['outbalance'];
								
								$result_collection[$date_hwe_expns]['outbalance'] =array_sum($out_array[$date_hwe_expns]);
								
							}
							if(!in_array($row['inbalance'],$inbalance_array[$date_hwe_expns]))
							{
								$inbalance_array[$date_hwe_expns][]=$row['inbalance'];
								
								$result_collection[$date_hwe_expns]['inbalance'] =array_sum($inbalance_array[$date_hwe_expns]);
							}
						}
						
						
					}
					
				}
			}
			else
			{
				$get_expenses_result = "SELECT * FROM `customer_expenses` WHERE center_id = $t_center_id"; 
				
				$result1 = mysqli_query($conn,$get_expenses_result);
				if($result1->num_rows > 0)
				{
					while($row = $result1->fetch_assoc())
					{
						
						$date_hwe_expns2 = date('d-m-Y',$row['date']);
						$date_hwe2_expns2 =  explode('-',$date_hwe_expns2);
						if($d_startMonth == $date_hwe2_expns2[1] && $d_startYear == $date_hwe2_expns2[2])
						{
							
							if(!in_array($row['misc'],$misc_array[$date_hwe_expns2]))
							{
								$misc_array[$date_hwe_expns2][] = $row['misc'];
								$result_collection[$date_hwe_expns2]['misc'] =array_sum($misc_array[$date_hwe_expns2]);
							}
							if(!in_array($row['repair'],$repair_array[$date_hwe_expns2]))
							{
								$repair_array[$date_hwe_expns2][] = $row['repair'];
								
								$result_collection[$date_hwe_expns2]['repair'] =array_sum($repair_array[$date_hwe_expns2]);
								
							}
							if(!in_array($row['advance'],$advance_array[$date_hwe_expns2]))
							{
								$advance_array[$date_hwe_expns2][] = $row['advance'];
								
								$result_collection[$date_hwe_expns2]['advance']  =array_sum($advance_array[$date_hwe_expns2]);
								
							}
							if(!in_array($row['outbalance'],$out_array[$date_hwe_expns2]))
							{
								$out_array[$date_hwe_expns2][] = $row['outbalance'];
								
								$result_collection[$date_hwe_expns2]['outbalance'] =array_sum($out_array[$date_hwe_expns2]);
								
							}
							if(!in_array($row['inbalance'],$inbalance_array[$date_hwe_expns2]))
							{
								$inbalance_array[$date_hwe_expns2][]=$row['inbalance'];
								
								$result_collection[$date_hwe_expns2]['inbalance'] =array_sum($inbalance_array[$date_hwe_expns2]);
							}
						}						
					}
				}
				/*$misc=array_sum($misc_array);
				$repair = array_sum($repair_array);
				
				$advance=array_sum($advance_array);
				$out=array_sum($out_array);
				$inbalance =array_sum($inbalance_array);*/
				
			}
			/*$totalmisc+=$misc;
			$totalrepair+=$repair;
			$totaladvance+=$advance;
			$totaloutbalance+=$out;
			$totalinbalance+=$inbalance;
			
			*/
			$total_loan_out =0;
			$total_amount=0;
			$totalprofit=0;
			$total_interest = 0;
			
			$totalmisc=0;
			$totalrepair=0;
			$totaladvance=0;
			$totaloutbalance= 0;
			$totalinbalance = 0;
			ksort($result_collection);
			echo "<pre>";
			//print_r($result_collection);
			echo "</pre>";
			foreach($result_collection as $key=>$record_row)
			{
				$total_loan_out +=$record_row['loan_out'];
				$total_amount+=$record_row['collection'];
				$totalprofit+=$record_row['profit'];
				$total_interest+=$record_row['interest'];
				$totalmisc+=$record_row['misc'];
				$totalrepair+=$record_row['repair'];
				$totaladvance+=$record_row['advance'];
				$totaloutbalance+=$record_row['outbalance'];
				$totalinbalance+=$record_row['inbalance'];
				
				
			?>
            <tr>
                <td><?php echo $key;?></td>
				<td><?php if(empty($record_row['loan_out'])){ echo 0; }else{ echo $record_row['loan_out']; }?></td>
                <td><?php if(empty($record_row['collection'])){ echo 0; }else{ echo $record_row['collection']; }?></td>
                <td><?php if(empty($record_row['interest'])){ echo 0; }else{ echo $record_row['interest']; }?></td>
                <td><?php if(empty($record_row['misc'])){ echo 0; }else{ echo $record_row['misc']; }?></td>
                <td><?php if(empty($record_row['advance'])){ echo 0; }else{ echo $record_row['advance']; }?></td>
                <td><?php if(empty($record_row['repair'])){ echo 0; }else{ echo $record_row['repair']; }?></td>
                <td><?php if(empty($record_row['outbalance'])){ echo 0; }else{ echo $record_row['outbalance']; }?></td>
                <td><?php if(empty($record_row['inbalance'])){ echo 0; }else{ echo $record_row['inbalance']; }?></td>
            </tr>
            <?php 
            }
			?>
                    		
            <tr>
            <td>&#24635;&#25968; : </td>
			<td class="total_td"><?php echo $total_loan_out;?></td>
            <td class="total_td"><?php echo $total_amount;?></td>
            <td class="total_td"><?php echo $total_interest;?></td>
            <td class="total_td"><?php echo $totalmisc;?></td>
            <td class="total_td"><?php echo $totaladvance;?></td>
            <td class="total_td"><?php echo $totalrepair;?></td>
            <td class="total_td"><?php echo $totaloutbalance;?></td>
            <td class="total_td"><?php echo $totalprofit;?></td>
            <?php /*?><td class="total_td"><?php echo $totalloan;?></td>
            <td class="total_td"><?php echo $totalcollection;?></td>
            <td class="total_td"><?php echo $totalinterest;?></td>
            <td class="total_td"><?php echo $totalmisc;?></td>
            <td class="total_td"><?php echo $totaladvance;?></td>
            <td class="total_td"><?php echo $totalrepair;?></td>
            <td class="total_td"><?php echo $totaloutbalance;?></td>
            <td class="total_td"><?php echo $totalprofit;?></td><?php */?>
          </tr>

      <tr>
        <td class="ConfirmValue">&#21360;&#20110;<font size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong> <?php echo date("d/m/Y H:i:s");?></strong></font></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
    </table>
</section>
<?php	
}
elseif(isset($_POST['rpt03']))
{
	$t_center_id = $_POST['t_center_id'];
	$all_center = $_POST['all_center'];
	$d_startMonth = $_POST['d_startMonth'];
	$d_startYear = $_POST['d_startYear'];
?>

<section style="width: 100%;overflow-x: scroll;">
	<div class="">
    <p>&#27599;&#26376;&#20132;&#21449;&#21015;&#34920;<span class="ConfirmValue"> <strong><?php 
		
		if(isset($all_center) && !empty($all_center))
		{
			echo "All Center";
		}
		else
		{
			echo $t_center_id;
		}?> : <?php echo $d_startYear.$d_startMonth;?></strong> </span></p>
    </div>
    <table cellspacing="1" cellpadding="1" style="width:100%" class="table table-striped table-bordered">
        <caption class="menu-header">Monthly Cross Report</caption>
        <thead>
            <tr>           
                <th>&#39038;&#23458; ID </th>
                <th>&#21517;&#23383;</th>
                <th>&#39038;&#23458; IC</th>
                <th>Z</th>
                <th>xT</th>
                <th>Start </th>
                <th>DU</th>
                <th>&#20013;&#24515;</th>
                <th>&#36827;&#27493;</th>
                <th>&#20511;&#20986; </th>
                <th>&#35746;&#37329;</th>
                <th><p>&#33457;&#32418;</p>
                </th>
                <th>&#26368;&#21518;&#26085;&#26399; </th>
                <th>Total Collection </th>
                <th>&#24635;&#25910;&#34255;</th>
                <th>&#20132;&#21449;&#26085;&#26399; </th>
            </tr>
        </thead>
		<tbody>
		<?php 
			$where = '';
			$whereand = '';
			if(isset($all_center) && !empty($all_center))
			{
				$where ='WHERE 1=1';
			}
			else
			{
				 $where ="WHERE center_id = ".$t_center_id;
			}
			
			
			if ($_SESSION["group_name"] == 'superadmin') {	
					$whereand=$where;
					//$whereand.=" AND user_agent_id=".$_SESSION['last_login'];
			}
			else{
				$whereand=$where;
				$whereand.=" AND user_agent_id=".$_SESSION['agent_id'];
			}
			 $sqlcustomer_card ="SELECT * FROM customers_card ".$whereand." ORDER BY customer_id ASC";
				
			$result = mysqli_query($conn,$sqlcustomer_card);
			
			if($result->num_rows > 0)
			{
				while($row = $result->fetch_assoc())
				{
					
					$crossed_date = explode("-",$row['crossed_date']);
					
					if($crossed_date[1] == $d_startMonth && $crossed_date[2] == $d_startYear)
					{
						
						$no_of_terms = $row['no_of_terms'];
						$no_of_days = '+'.$no_of_terms.' days';
										
						$end_date = date('d-m-Y', strtotime($no_of_days));
						
						$Variable2 = date('d-m-Y',strtotime($end_date));
						?>
                        <tr>
                            <td><?php echo $row['customer_id'].'-'.$row['id'];?></td>
                            <?php 
							$sql_customer = "SELECT name,new_IC FROM customers WHERE id = ".$row['customer_id'];
							$result_customer = mysqli_query($conn,$sql_customer);
							if($result_customer->num_rows > 0)
							{
								$row_cus = $result_customer->fetch_assoc();
							?>
                            <td><?php echo $row_cus['name'];?></td>
                            <td><?php echo $row_cus['new_IC'];?></td>
                            <?php
							}
							?>
                           
                            <td><?php echo $row['amt_per_day'];?></td>
                            <td><?php echo $no_of_terms;?></td>
                            <td><?php echo $row['start_date'];?></td>
                            <td><?php echo $row['duration'];?></td>
                            <td><?php echo $row['center_id'];?></td>
                            <td><?php echo $row['advance'];?></td>
                            <td><?php echo $row['loan_out'];?></td>
                            <td><?php echo $row['deposit'];?></td>
                            <td></td>
                            <td><?php echo $Variable2;?></td>
                            <td>
                            <?php 
							$total_collection = 0;
							$collection_sql = "SELECT amount FROM collection WHERE card_id = ".$row['id'];
							$res = mysqli_query($conn,$collection_sql);
							if($res->num_rows > 0)
							{
								$res1 = $res->fetch_assoc();
								$total_collection+=$res1['amount'];
							}
							echo $total_collection;
							?>
                            </td>
                            <td><?php echo $row['profit'];?></td>
                            <td><?php echo $row['crossed_date'];?></td>
                        </tr>
				<?php
					}				
				}
			}
			?>
      <tr>
        <td colspan="6" class="ConfirmValue">&#21360;&#20110;<font size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong> <?php echo date("d/m/Y H:i:s");?></strong></font></td>
        
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
    </table>
</section>

<?php
}
elseif(isset($_POST['rpt04']))
{
	$agent_id = $_SESSION["agent_id"];
	$t_center_id = $_POST['t_center_id'];
	$all_center = $_POST['all_center'];
	$d_startMonth = $_POST['d_startMonth'];
	$d_startYear = $_POST['d_startYear'];
	
	$select_customer = mysqli_query($conn,"SELECT * FROM customers WHERE user_agent_id = ".$agent_id);
	
?>
<section>
	<!--<center><h3 style="text-decoration:underline;">Monthly Collection Report</h3></center>-->
    <div class="">
    <p>&#27599;&#26376;&#25910;&#38598;&#28165;&#21333;<span class="ConfirmValue"> <strong><?php 
		
		if(isset($all_center) && !empty($all_center))
		{
			echo "All Center";
		}
		else
		{
			echo $t_center_id;
		}?> : <?php echo $d_startYear.$d_startMonth;?></strong> </span></p>
    </div>
    <table cellspacing="1" cellpadding="1" style="width:100%" class="table table-striped table-bordered">
    <caption class="menu-header">
    &#27599;&#26376;&#25910;&#27454;&#25253;&#21578;
    </caption>
			<thead>
                <tr>
                    <th>&#26085;&#26399;</th>
                    <th>&#20511;&#20986;</th>
                    <th>&#25910;&#34255;</th>
                    <th>&#21033;&#28070;</th>
                </tr>
            </thead>
          
            <tbody>
            <?php 
			$where = '';
			if(isset($all_center) && !empty($all_center))
			{
				$where ='';
			}
			else
			{
				$where ="center_id = ".$t_center_id." AND ";
			}
			
			$result_collection = array();
			if(mysqli_num_rows($select_customer)>0)
			{
				while($select_customer_row = mysqli_fetch_assoc($select_customer))
				{
					$customer_id_select = $select_customer_row['id'];
				
					$sql_query ="SELECT * FROM customers_card WHERE ".$where."customer_id=".$customer_id_select."";
					$results = mysqli_query($conn,$sql_query);
					if($results->num_rows > 0)
					{
						while($rows = $results->fetch_assoc())
						{
							
							$date_of_record = explode('-',$rows['start_date']);
							$d_startMonth = $_POST['d_startMonth'];
							$d_startYear = $_POST['d_startYear'];
							if($d_startMonth == $date_of_record[1] && $d_startYear == $date_of_record[2])
							{
								$result_collection[$rows['start_date']]['loan_out']+=$rows['loan_out'];
								$result_collection[$rows['start_date']]['profit']+=$rows['profit'];
						
							}
						
				
				
					$sql ="SELECT * FROM collection WHERE ".$where."card_id =".$rows['id'];
					$result = mysqli_query($conn,$sql );
					if($result->num_rows > 0)
					{
						while($row = $result->fetch_assoc())
						{
							$date_hwe ='';
							$date_hwe = date('d-m-Y',$row['d_date_disp']);
							$date_hwe2 =  explode('-',$date_hwe);
							if($d_startMonth == $date_hwe2[1] && $d_startYear == $date_hwe2[2])
							{
						
								$result_collection[$date_hwe]['collection'] += $row['amount'];
							}
						}
					}
					}
					}
				}}
			//print_r($result_collection);
					$total_loan_out =0;
					$total_amount=0;
					$totalprofit=0;
					foreach($result_collection as $key=>$val)
					{
						$total_loan_out +=$val['loan_out'];
						$total_amount+=$val['collection'];
						$totalprofit+=$val['profit'];
					?>
            		<tr>
                		<td><span id="id_date_mp" class="cls_loan_month"><?php echo $key;?></span></td>
                		<td><?php if(empty($val['loan_out'])){ echo 0; }else{ echo $val['loan_out']; }?></td>
                		<td><?php if(empty($val['collection'])){ echo 0; }else{ echo $val['collection']; }?></td>
                		<td><?php if(empty($val['profit'])){ echo 0; }else{ echo $val['profit']; }?></td>
            		</tr>
            		<?php }?>
                    <tr>
                    <td><span class="ConfirmValue">&#25171;&#21360;</span> :  </td>
                    <td class="total_td"><?php echo $total_loan_out;?></td>
                    <td class="total_td"><?php echo $total_amount;?></td>
                    <td class="total_td"><?php echo $totalprofit;?></td>
                  </tr>
          
       
      
                <tr>
                    <td class="ConfirmValue">&#27599;&#26376;&#25910;&#38598;&#28165;&#21333; : <font size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong> <?php echo date("d/m/Y H:i:s");?></strong></font></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
    </tbody></table>
</section>
<?php
}
else
{
?>
    <section>
        <form id="form1" name="form1" method="post">
			<div class="row form-group">
            	<div class="col-md-2"></div>
                <div class="col-md-2">
                	<label>&#20013;&#24515; ID:</label>
                </div>
                <div class="col-md-6">
                	<select name="t_center_id" class="form-control" style="width:50%;">
                        <?php 
						$current_user_center= '';
						if($_SESSION["group_name"]!='superadmin')
						{
							$current_user_center = "WHERE id = ".$_SESSION["center_id"];
						}
							$select_center_deatil = "SELECT * FROM center_detail ".$current_user_center." ORDER BY show_sequence ASC";
							$result = mysqli_query($conn,$select_center_deatil);
							if($result->num_rows > 0)
							{
								//$count=0;
								
								while($row = $result->fetch_assoc()){
										
						?>
                        <option value="<?php echo $row['id'];?>"><?php echo $row['center_name'];?></option>                            
                        <?php }}?>
                    </select>                </div>
                <div class="col-md-2"></div>
            </div>
			<?php
			if($_SESSION["group_name"]=='superadmin'){
				?>
				<br/> 
			<div class="row form-group">
            	<div class="col-md-2"></div>
                <div class="col-md-2"></div>
               
		      <div class="col-md-6">
                	 <input type="checkbox" name="all_center" value="all"/>  
&#25152;&#26377;&#20013;&#24515;			  </div>
			
                <div class="col-md-2"></div>
            </div>
			<?php
			}
			else{
				
			}
			?>
           
            <br/>
			<div class="row form-group">
            	<div class="col-md-2"></div>
                <div class="col-md-2">
                	<label>月份:</label>
                </div>
                <div class="col-md-6">
					<div class="col-md-6">
						<select name="d_startMonth" class="form-control">
					 
						  <?php 
							for($i=1; $i<=12; $i++)
							{
								if($i<10)
								{
									$i = '0'.$i;
								}
							?>
							<option value="<?php echo $i; ?>" <?php if($i==date('m')){ echo 'selected="selected"';} ?>><?php echo $i; ?></option>
							<?php
							}
							?>
						</select>
					</div>
				   
					<div class="col-md-6">
						<select name="d_startYear" class="form-control">       
						 <?php 
							$current_year = date("Y")-10;
							for($i = $current_year; $i <= date('Y', strtotime('+5 year')); $i++)
							{
						?>
						<option value="<?php echo $i; ?>" <?php if($i==date('Y')){ echo 'selected="selected"';} ?>><?php echo $i; ?></option>
						<?php
							}
						?>
						
					</select>
					</div>
                </div>
                <div class="col-md-2"></div>
            </div>
            <br/>
			<div class="row form-group">
            	<div class="col-md-2"></div>
                <div class="col-md-2"></div>
                <div class="col-md-6">
				
                	<input name="rpt01" type="submit" id="rpt01" class="btn btn-success" value="每月收款报告">
					
				</div>
                <div class="col-md-2"></div>
            </div>
            
			<div class="row form-group">
            	<div class="col-md-2"></div>
                <div class="col-md-2"></div>
                <div class="col-md-6">
                	<input name="rpt02" type="submit" id="rpt02" class="btn btn-success"  value="月结单">
                  
				</div>
                <div class="col-md-2"></div>
            </div>
            
			<div class="row form-group">
            	<div class="col-md-2"></div>
                <div class="col-md-2"></div>
                <div class="col-md-6">
                
               <input name="rpt03" type="submit" id="rpt03" class="btn btn-success"  value="每月交叉报告"> 
				</div>
                <div class="col-md-2"></div>
            </div>
           
            <?php 
			if(isset($_SESSION["agent_id"]) && $_SESSION["agent_id"]!='')
			{
			?>
            
            <div class="row form-group">
            	<div class="col-md-2"></div>
                <div class="col-md-2"></div>
                <div class="col-md-6">
                
                <!--  <input name="rpt04" type="submit" id="rpt04" class="btn btn-success"  value="Monthly Collection Report by agent"> -->
				</div>
                <div class="col-md-2"></div>
            </div>
            <?php
			}
			?>
            <?php
			//}
			?>
        </form>
    </section>
<?php 
}
?>
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