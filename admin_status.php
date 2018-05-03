<?php 
session_start(); 
error_reporting(0); 
include("config.php");
include("admin_navbar.php"); 
if (isset($_SESSION["admin"]))  
{ 
?> 
<!DOCTYPE html> 
<html lang="en"> 
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">   
	<linkrel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head> 
<body> 
	<h4>search</h4>
<form action="admin_status.php" method="GET">
	<input type="text" name="search" class="col-md-6">
	<input type="submit" name="submit" value="search">
</form>
<br>
<table class="table" style="background-color: #82E0AA;color: black;overflow-x: auto;">
	<label for="search">Search result:</label>
<?php 
if (isset($_GET["submit"])) 
{
	$search = $_GET["search"];
	$sltpay = "SELECT * FROM payment WHERE order_id LIKE '$search' OR username LIKE '$search' OR nameOnCard LIKE '$search' OR cardNumber LIKE '$search' OR exp_date LIKE '$search' OR cvv LIKE '$search' OR transection_id LIKE '$search' OR pin LIKE '$search'";
	if ($result1 = mysqli_query($localconnect,$sltpay)) 
	{
		if (mysqli_num_rows($result1)>0) 
		{
				echo "<tr>";
				echo "<td>Order id</td>";
				echo "<td>Username</td>";
				echo "<td>name oncard</td>";
				echo "<td>Card number</td>";
				echo "<td>Exp date</td>";
				echo "<td>CVV</td>";
				echo "<td>Transection number</td>";
				echo "</tr>";
			while ($row1 = mysqli_fetch_array($result)) 
			{
				echo "<tr>";
				echo "<td>".$row1["order_id"]."</td>";
				echo "<td>".$row1["username"]."</td>";
				echo "<td>".$row1["nameOnCard"]."</td>";
				echo "<td>".$row1["cardNumber"]."</td>";
				echo "<td>".$row1["exp_date"]."</td>";
				echo "<td>".$row1["cvv"]."</td>";
				echo "<td>".$row1["transection_id"]."</td>";
				echo "</tr>";
			}
		}
		else
		{
			echo mysqli_error($localconnect);
			echo "<h4 class='text-center'>No search item found</h4>";
		}
	}
	else
	{
		echo mysqli_error($localconnect);
	}
}
else
{
	echo mysqli_error($localconnect);
}

 ?>
</table>
<table class="table table-striped">
<tr>
<td>Order id</td>
<td>Username</td>
<td>name oncard</td>
<td>Card number</td>
<td>Exp date</td>
<td>CVV</td>
<td>Transection number</td>
<?php
$sltorder = "SELECT * FROM payment";
if($result = mysqli_query($localconnect,$sltorder))
{
	while($row = mysqli_fetch_array($result))
	{
		echo "<tr>";
		echo "<td>".$row["order_id"]."</td>";
		echo "<td>".$row["username"]."</td>";
		echo "<td>".$row["nameOnCard"]."</td>";
		echo "<td>".$row["cardNumber"]."</td>";
		echo "<td>".$row["exp_date"]."</td>";
		echo "<td>".$row["cvv"]."</td>";
		echo "<td>".$row["transection_id"]."</td>";
		echo "</tr>";
	}
}
?>
</tr>
</table>
</body>
</html>
<?php 
}
?>
