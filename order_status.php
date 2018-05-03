<?php 
session_start();
error_reporting(0);
include("admin_navbar.php");
if (isset($_SESSION["admin"])) 
{
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
</head>
<body>
<div class="container-fluid">
	<label for="search">Search</label>
<form action="order_status.php" method="GET">
	<input type="text" name="search" placeholder="Search..." class="col-md-6">
	<input type="submit" name="s_submit" value="Search">
</form>
<br><br>
<h4 class="text-center">Search Result</h4>
<table class="table" style="background-color: #82E0AA;color: black;overflow-x: auto;">
<?php 
if (isset($_GET["search"])) 
{
	$search = $_GET["search"];
	$sltreg = "SELECT * FROM medi_register";
	if ($result = mysqli_query($localconnect,$sltreg)) 
	{
		echo "<tr>";
		echo "<td>Serial ID</td>";
		echo "<td>Order ID</td>";
		echo "<td>Item ID</td>";
		echo "<td>Item Name</td>";
		echo "<td>Quentity</td>";
		echo "<td>Price</td>";
		echo "<td>Username</td>";
		echo "<td>Status</td>";
		echo "<td>DELIVERY DATE</td>";
		echo "<td>CHANGE</td>";
		echo "</tr>";
		while ($row = mysqli_fetch_array($result)) 
		{
			$sltuser = $row["email"];
			$order_table = $row["order_tbl_id"];
			// echo "order table :".$order_table."<br>";
			// echo "order table:".$sltuser.":".$order_table."<br>";
				$sltorder = "SELECT * FROM $order_table WHERE serialid LIKE '$search' OR orderid LIKE '$search' OR 
				iid LIKE '$earch' OR iname LIKE '$search' OR QTY LIKE '$search' OR username LIKE '$search' OR 
				status LIKE '$search' OR delivery_date LIKE '$search' OR IPRICE LIKE '$search'";
			if ($result3 = mysqli_query($localconnect,$sltorder))
			{
				// echo "<script>alert('while block');</script>";
				while ($row3 = mysqli_fetch_array($result3))
				{
					// echo "<script>alert('inside while block');</script>";
					echo "<tr>";
					echo "<td>".$row3["serialid"]."</td>";
					$serialid = $row3["serialid"];
					echo "<td>".$row3["orderid"]."</td>";
					echo "<td>".$row3["iid"]."</td>";
					$iid = $row2["iid"];
					echo "<td>".$row3["iname"]."</td>";
					echo "<td>".$row3["QTY"]."</td>";
					echo "<td>".$row3["IPRICE"]."</td>";
					echo "<td>".$row3["username"]."</td>";
					$username = $row3["username"];
					echo "<td>".$row3["status"]."</td>";
					echo "<td>".$row3["delivery_date"]."</td>";
					echo "<td><a href='order_status.php?orderid=$serialid&order_table=$order_table'>Edit status</a></td>";
					echo "</tr>";
				}
			}
			else
			{
				echo mysqli_error($localconnect);
			}
		}
		
	}
	else
	{
		echo mysqli_error($localconnect);
	}
}
 ?>
</table>
<hr><br>
</div>
<div class="container-fluid">
	<div class="row">
		<table class="table" style="overflow-x: auto;">
			<tr>
				<td>Serial ID</td>
				<td>Order ID</td>
				<td>Item ID</td>
				<td>Item Name</td>
				<td>Quentity</td>
				<td>Price</td>
				<td>Username</td>
				<td>Status</td>
				<td>DELIVERY DATE</td>
				<td>CHANGE</td>
			</tr>
			<?php 
			$username = $_SESSION["username"];
			$iid;
			$order_table;
				$sltreg = "SELECT * FROM medi_register";
				if ($result = mysqli_query($localconnect,$sltreg)) 
				{
					while ($row = mysqli_fetch_array($result)) 
					{
						$sltuser = $row["email"];
						$order_table = $row["order_tbl_id"];
						
						// echo "order table:".$sltuser.":".$order_table."<br>";

						$sltorder = "SELECT * FROM $order_table";
						if ($result2 = mysqli_query($localconnect,$sltorder)) 
						{
							while ($row2 = mysqli_fetch_array($result2)) 
							{
								echo "<tr>";
								echo "<td>".$row2["serialid"]."</td>";
								$serialid = $row2["serialid"];
								echo "<td>".$row2["orderid"]."</td>";
								echo "<td>".$row2["iid"]."</td>";
								$iid = $row2["iid"];
								echo "<td>".$row2["iname"]."</td>";
								echo "<td>".$row2["QTY"]."</td>";
								echo "<td>".$row2["IPRICE"]."</td>";
								echo "<td>".$row2["username"]."</td>";
								$username = $row2["username"];
								echo "<td>".$row2["status"]."</td>";
								echo "<td>".$row2["delivery_date"]."</td>";
								echo "<td><a href='order_status.php?orderid=$serialid&order_table=$order_table'>Edit status</a></td>";
								echo "</tr>";
							}
						}
					}
				}
				if (isset($_GET["orderid"])) 
				{
					$orderid = $_GET["orderid"];
					$ordtbl = $_GET["order_table"];
					echo "order table1".$ordtbl."<br>";
					// echo "Order table:".$order_table."<br>";
					echo "<div class='container-fluid'>";
					echo "<table class='table' style='overflow-x:auto;'>";
					echo "<form action='order_status.php' method='GET' class='form-control'>";
					echo "<tr>";
					echo "<td><select name='status' class='form-control''>
						<option value='prepare for dispatch'>Prepare for dispatch</option>
						<option value='on the way'>On teh Way</option>
						<option value='out for delivery'>Out for delivery</option>
						<option value='devivered'>Delivered</option>
						<option value='devivered'>Return</option>
					</select></td>";
					// echo "<td><input type='date' class='form-control' name='d_date'></td>";
					echo "<input type='hidden' value='$orderid' name='orderid'>";
					echo "<input type='hidden' value='$ordtbl' name='ordtbl'>";
					echo "</tr>";
					echo "<tr>";
					echo "<td><input type='submit' value='submit' name='submit' class='btn btn-success'></td>";
					echo "</tr>";
					echo "</form>";
					echo "</table>";
					echo "</div>";
					if (isset($_GET["submit"])) 
					{
						$orderid = $_GET["orderid"];
						$status = $_GET["status"];
						$ordtbl = $_GET["ordtbl"];
						$d_date = date('y/m/d');
						// echo $orderid."<br>";
						// echo "Order table:".$ordtbl."<br>";
						$updtorder = "UPDATE $ordtbl SET status = '$status', delivery_date = '$d_date' WHERE serialid = '$orderid'";
						if (mysqli_query($localconnect,$updtorder)) 
						{
							echo "<script>alert('Status updated successfully')</script>";
							// echo $status;
							// echo "<br>Order table:".$ordtbl;
							// echo "<br>Order id:".$orderid;
							echo "<script>window.location.href='order_status.php'</script>";
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
				}
			 ?>
		</table>
	</div>
</div>	
</body>
</html>
<?php 
}
else
{
	echo "<script>alert('please login');</script>";
	echo "<script>window.location.href='index.php';</script>";
}
?>