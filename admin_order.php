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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<label for="search">Search</label>
<form action="admin_order.php" method="GET">
	<input type="text" name="search" class="col-md-6">
	<input type="submit" name="submit" value="Search">
</form> 
<br>
<table class="table" style="background-color: #82E0AA;color: black;">
<?php 
if (isset($_GET["search"])) 
{
	$sltorder = "SELECT * FROM order_table";
	if ($result = mysqli_query($localconnect,$sltorder)) 
	{
		if ($count = mysqli_num_rows($result) > 0) 
		{
			echo "<tr>";
			echo "<td colspan='10'>Search result</td>";
			echo "</tr>";
			echo "<tr>";
			echo "<td>Order id</td>";
			echo "<td>Username</td>";
			echo "<td>Name</td>";
			echo "<td>Address</td>";
			echo "<td>City</td>";
			echo "<td>State</td>";
			echo "<td>Pincode</td>";
			echo "<td>Emailid</td>";
			echo "<td>Phone number</td>";
			echo "<td>Status</td>";
			while ($row = mysqli_fetch_array($result)) 
			{
				echo "<tr>";
				echo "<td>".$row["order_id"]."</td>";
				echo "<td>".$row["username"]."</td>";
				echo "<td>".$row["name"]."</td>";
				echo "<td>".$row["address"]."</td>";
				echo "<td>".$row["city"]."</td>";
				echo "<td>".$row["state"]."</td>";
				echo "<td>".$row["pincode"]."</td>";
				echo "<td>".$row["email"]."</td>";
				echo "<td>".$row["phone"]."</td>";
				echo "<td>".$row["status"]."</td>";
				echo "</tr>";
			}	
		}
	}
}
 ?>
</table>
<table class="table table-striped">
	<tr>
		<td>Order id</td>
		<td>Username</td>
		<td>Name</td>
		<td>Address</td>
		<td>City</td>
		<td>State</td>
		<td>Pincode</td>
		<td>Emailid</td>
		<td>Phone number</td>
		<td>Status</td>
		<?php 
			$sltorder = "SELECT * FROM order_table";
			if ($result = mysqli_query($localconnect,$sltorder)) 
			{
				while ($row = mysqli_fetch_array($result)) 
				{
					echo "<tr>";
					echo "<td>".$row["order_id"]."</td>";
					echo "<td>".$row["username"]."</td>";
					echo "<td>".$row["name"]."</td>";
					echo "<td>".$row["address"]."</td>";
					echo "<td>".$row["city"]."</td>";
					echo "<td>".$row["state"]."</td>";
					echo "<td>".$row["pincode"]."</td>";
					echo "<td>".$row["email"]."</td>";
					echo "<td>".$row["phone"]."</td>";
					echo "<td>".$row["status"]."</td>";
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
