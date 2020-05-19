<?php
require 'connection.php';
$conn = Connect();
if(isset($_GET['idm'])) {
   $query1 = "DELETE FROM transaction_ids WHERE t_id = '".$_GET['idm']."'";
   $ses_sql = mysqli_query($conn, $query1);
   header("location: view_order_details.php");
   exit();
}
if(isset($_GET['idc'])) {
    $query1 = "DELETE FROM transaction_ids WHERE t_id = '".$_GET['idc']."'";
	$ses_sql = mysqli_query($conn, $query1);
	header("location: order_details.php");
   exit();
}


?>