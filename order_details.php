<?php
session_start();
require 'connection.php';
$conn = Connect();
 
if(!isset($_SESSION['login_user2'])){
	
header("location: customerlogin.php"); //Redirecting to myrestaurant Page
}
?>

<html>

  <head>
    <title> Cart | DESI KITCHEN </title>
  </head>
<link href="css/ble.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type = "text/css" href ="css/managerlogin.css">
  <link rel="stylesheet" type = "text/css" href ="css/payment.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
 
  <script src="lib/jquery.js" type="text/javascript"></script>
  <script src="src/facebox.js" type="text/javascript"></script>
  <script type="text/javascript">
    jQuery(document).ready(function($) {
      $('a[rel*=facebox]').facebox({
        loadingImage : 'src/loading.gif',
        closeImage   : 'src/closelabel.png'
      })
    })
  </script>

  <!--Back to top button..................................................................................-->
    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
  <!--Javacript for back to top button....................................................................-->
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">DESI KITCHEN</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>

          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="myrestaurant.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
			<li><a href="order_details.php"><span class="glyphicon glyphicon-cutlery"></span> Orders </a></li>
            <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone </a></li>
            <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
             (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
              </a></li>
            <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User Sign-up</a></li>
              <li> <a href="managersignup.php"> Manager Sign-up</a></li>
              <li> <a href="#"> Admin Sign-up</a></li>
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Manager Login</a></li>
              <li> <a href="#"> Admin Login</a></li>
            </ul>
            </li>
          </ul>

<?php
}
?>


        </div>

      </div>
    </nav>



    <div class="col-xs-9">
      <div class="form-area" style="padding: 0px 100px 100px 100px;">
        <form action="" method="POST">
        <br style="clear: both">
          <h3 style="margin-bottom: 25px; text-align: center; font-size: 30px;"> YOUR FOOD ORDERS LIST </h3>


<?php


$user_check = $_SESSION['login_user2'];
$query1 = "SELECT email FROM CUSTOMER WHERE username = '$user_check'";
$ses_sql = mysqli_query($conn, $query1);
$row = mysqli_fetch_assoc($ses_sql);
$email =$row['email'];

// Storing Session
$sql = "SELECT * FROM transaction_ids WHERE mail = '$email' ORDER by id DESC";
$result = mysqli_query($conn, $sql);


if (mysqli_num_rows($result) > 0)
{

  ?>

  <table class="table table-striped">
    <thead class="thead-dark">
      <tr>
        <th> Transaction ID (click on id to see ordered items)</th>
        <th> Mail ID </th>
        <th> Address </th>
        <th> Amount </th>
        <th> Date </th>
        <th> Order Status </th>
        <th> Cancel Order </th>
      </tr>
    </thead>

    <?PHP
      //OUTPUT DATA OF EACH ROW
      while($row3 = mysqli_fetch_assoc($result)){
		  
echo '<tr>';$idd = $row3['t_id'];
							
									echo '<td>'.'<a rel="facebox" href=listorder.php?id=' . $row3["t_id"] . '>' . $row3['t_id'].'</a></td>';
									echo '<td>'.$row3['mail'].'</td>';
									echo '<td>'.$row3['addr'].'</td>';
									echo '<td>'.$row3['amount'].'</td>';
									echo '<td>'.$row3['date'].'</td>';
									?>
									 <td><?php if($row3["status"] == "AP") echo '<font color="red">Approval Pending</font>'; if($row3["status"] == "A") echo '<font color="blue">Order Approved</font>'; if($row3["status"] == "DL") echo '<font color="green">Dlivered</font>'; ?></td>
									 <td><?php if($row3["status"] == "AP") echo '<a href=order_del.php?idc=' . $row3["t_id"] . '>cancel</a>'; if($row3["status"] == "A") echo '<font color="green">Order delivering</font>'; if($row3["status"] == "DL") echo '<font color="green">Order Delivered</font>'; ?></td>
								
									
								  
									</tr>
  <?php } ?>
  </table>
    <br>


  <?php } else { ?>

  <h4><center>0 RESULTS</center> </h4>

  <?php } ?>

        </form>
        </div>


<br><br><br><br><br><br>
       

 
   </body>
</html>