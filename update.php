			<?php
			require 'connection.php';
			$conn = Connect();
				 if (isset($_GET['id']))
				{
				$id=$_GET['id'];
				$query1 = "SELECT * FROM transaction_ids WHERE t_id = $id";
				$ses_sql = mysqli_query($conn, $query1);
				if (mysqli_num_rows($ses_sql) > 0)
				{
					while($row = mysqli_fetch_assoc($ses_sql))
					{
						if($row["status"] == "AP")
						{
						$status1 ='A';
						$query2 = "UPDATE transaction_ids SET status='$status1' WHERE t_id = $id";
						$ses1 = mysqli_query($conn, $query2);
						header("location:view_order_details.php");
						}
						
						if($row["status"] == "A")
						{
						$status1 ='DL';
						$query2 = "UPDATE transaction_ids SET status='$status1' WHERE t_id = $id";
						$ses1 = mysqli_query($conn, $query2);
						header("location:view_order_details.php");
						}
						
						if($row["status"] == "DL")
						{
						$status1 ='DL';
						$query2 = "UPDATE transaction_ids SET status='$status1' WHERE t_id = $id";
						$ses1 = mysqli_query($conn, $query2);
						header("location:view_order_details.php");
						}
					}
				}
				exit();
			}

			?>