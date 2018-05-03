<?php 
session_start();
include("config.php");
 ?>
 <!DOCTYPE html>
<html lang="en">
<head>
  <title>Enter Address</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Enter address</h2>
  <form class="form-horizontal" action="order.php" method="GET">
    <div class="form-group">
      <label class="control-label col-sm-2" for="name">Name</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="address">Address:</label>
      <div class="col-sm-10">          
        <input required type="text" class="form-control" placeholder="Enter Full Address" name="address">
      </div>
    </div>
    <div class="form-group">        
    <label class="control-label col-sm-2" for="city">City:</label>
      <div class="col-sm-10">          
        <input type="text" required class="form-control" placeholder="Enter City" name="city">
      </div>
     </div>
     <div class="form-group">        
    <label class="control-label col-sm-2" for="state">State:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" required placeholder="Enter State" name="state">
      </div>
     </div>
     <div class="form-group">        
    <label class="control-label col-sm-2" for="pincode">Pincode:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" required placeholder="Enter Pincode" name="pincode">
      </div>
     </div>
     <div class="form-group">        
    <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">          
        <input type="email" class="form-control" required placeholder="Enter Email" name="email">
      </div>
     </div>
     <div class="form-group">        
    <label class="control-label col-sm-2" for="phone">Phone:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" required placeholder="Enter phone (10 digit)" name="phone" maxlength="10" minlength="10">
      </div>
     </div>
     <?php 
     $orderid = uniqid();
      echo "<input type='hidden' name='orderid' value='$orderid'>";
      ?>
     
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
    <?php 
      if (isset($_GET["t_cost"])) 
      {
        $t_cost = $_GET["t_cost"];
        echo "<input type='hidden' name='t_cost' value='$t_cost'>";
      }
     ?>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" name="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
  <a href="index.php"><button class="btn btn-success">Home</button></a>
  <div class="container">
    <div class="row">
      <div class="col-md-10">
        <?php 
        $t_cost;
            if (isset($_GET["t_cost"])) 
            {
              $t_cost = $_GET["t_cost"];
              echo "<h4><b>Balance to be paid Rs :</b>".$t_cost."</h4>";
            }
         ?>
      </div>
    </div>
  </div>
</div>
</body>
</html>
<?php 
if (isset($_GET["submit"])) 
{
	if (isset($_SESSION["username"])) 
	{
		$name = $_GET["name"];
		$address = $_GET["address"];
		$city = $_GET["city"];
		$state = $_GET["state"];
		$pincode = $_GET["pincode"];
		$email = $_GET["email"];
		$phone = $_GET["phone"];
		$username = $_SESSION["username"];
		$order_id = $_GET["orderid"];
    // echo "order id:".$orderid;
    $ordid = $orderid;
    $tot_cost = $_GET["t_cost"];
		$insertorder = "INSERT INTO order_table (order_id,username,name,address,city,state,pincode,email,phone,status)
			VALUES ('$order_id','$username','$name','$address','$city','$state','$pincode','$email','$phone','verifying')";
		if ($localconnect->query($insertorder)) 
		{
			echo "<script>alert('proceeding for payment')</script>";
			echo "<script>window.location.href='payment.php?order=".$orderid."';</script>";
		}
    else
    {
      echo mysqli_error($localconnect);
    }
	}
	else
	{
		echo "<script>alert('please login');</script>";
		echo "<script>window.location.href='index.php';</script>";
	}
}
?>