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

  <link rel="stylesheet" type = "text/css" href ="css/payment.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <body>

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



<?php
$_SESSION['login_user2'];
if(isset($_POST['add'])){
	$username = $_POST['email'];
	$address = $_POST['comment'];
	$pincode = $_POST['pincode'];
	$number = $_POST['number'];
$query1 = "SELECT email FROM customer WHERE username = '$username'";
$ses_sql = mysqli_query($conn, $query1);
$row = mysqli_fetch_assoc($ses_sql);
$email =$row['email'];
	$username;
	

     $query = "INSERT INTO food_del_add (email, address, pincode,  number) 
              VALUES ('" . $email . "','" . $address . "','" . $pincode . "','" . $number . "')";     

              $success = $conn->query($query);         

      if($success)
      {
ECHO '
		  <div class="container">
          <div class="jumbotron">
            <h1>Address Added successfully</h1>
            <p><a href="cart.php">Check out now.</a>
          </div>
        </div>';
		die();
	  }
	  else {}
	  echo $conn->error;
}
        ?>
        <div class="container">
          <div class="jumbotron">
            <h2>Add Food Delivery Address</h2>
			<form action = "" method="POST" id="add">
			<textarea rows="4" cols="50" name="comment" placeholder= "Enter your Address" form="add" required></textarea></br></br>
			<input type="number" name="pincode" required placeholder="pin code"></br></br>
			<input type="number" name="number" required placeholder="Phone number"></br></br>
			<input type="hidden" name="email" value="<?php echo $_SESSION['login_user2']; ?>"></br></br>
			<input type="submit" name="add" class="btn btn-success" value="Add Address"></br></br>
			</form>
          </div>
        </div>
        <br>
    


<br><br><br><br><br><br>
        </body>

  <footer class="container-fluid bg-4 text-center">
  <br>
  <p> DESI KITCHEN 2019 | &copy All Rights Reserved </p>
  <br>
  </footer>
</html>