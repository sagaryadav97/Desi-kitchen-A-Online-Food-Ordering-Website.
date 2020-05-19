<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>

<table width="249" border="1" cellpadding="0" cellspacing="0">
  <tr >
    <td width="189"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;Products</div></td>
    <td width="44"><center> Rs</center></td>
    <td width="44"><center>Qty</center></td>
  </tr>
  
<?php
session_start();
require 'connection.php';
$conn = Connect();
	if (isset($_GET['id']))
	{		   
								
							
								$id=$_GET['id'];
								
								
								
								$sql = "SELECT * FROM orders where Trans_number ='$id'";
						$result = mysqli_query($conn, $sql);
						if (mysqli_num_rows($result) > 0)
						{
							while($row3 = mysqli_fetch_assoc($result)){
						  
  
  echo '<tr>';
    echo '<td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;'.$row3['foodname'].'    </div></td>';
    echo '<td><center>'.$row3['price'].'</center></td>';
    echo '<td><center>'.$row3['quantity'].'</center></td>';
  echo '</tr>';


  }
	}
	}
  ?>
</table><br>

<?php
	if (isset($_GET['id']))
	{		   
								
							
								$id=$_GET['id'];
								
								$sql = "SELECT * FROM orders where Trans_number ='$id'";
								$result3 = mysqli_query($conn, $sql);
								$row3 = mysqli_fetch_array($result3);
								$asdfgh=$row3['email'];
								$sql1 = "SELECT * FROM food_del_add where email ='$asdfgh'";
								$result4 = mysqli_query($conn, $sql1);
								$row4 = mysqli_fetch_assoc($result4);
								echo '<b>Address where food will be delivered:</b> <br>'.$row4['address'].', '.$row4['pincode'].', '.$row4['number'];
						
  }
  ?>




<br />

