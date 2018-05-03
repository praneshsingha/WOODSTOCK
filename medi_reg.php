<?php 
session_start();
error_reporting(0);
if (isset($_POST["r_submit"])) 
{
	$cryptpass = 0;
	$name = $_POST["uname"];
	$email = $_POST["username"];
	$gender = $_POST["r_gender"];
	$contact = $_POST["phone"];
	$dob = $_POST["dob"];
	$password = $_POST["pass"];
	$repassword = $_POST["rpass"];

	$localconnect = new mysqli("localhost", "root", "", "woodstock");
	if($localconnect->connect_error)
	{
		die("connection failed". $localconnect->connect_error);	
	}
	if(empty($name) and empty($email) and empty($gender) and empty($contact) and empty($dob) and empty($password) and empty($repassword))
	{
		echo "Empty fields";
		die();
	}
	if($password !== $repassword)
	{
		echo "<script>alert('Password did not match');</script>";
		echo "<script>window.location.href='medi_reg.php'</cript>";
	}
	$md5pass = md5($password);
	$sha1pass = sha1($md5pass);
	$cryptpass = crypt($sha1pass,'pk');
	$cartid = uniqid();
	$orderif = uniqid();
	$reg_order = "CREATE TABLE $orderif (serialid varchar(100) PRIMARY KEY, orderid varchar(100), iid varchar(100), 
	iname varchar(100), QTY int(20) DEFAULT '1', IPRICE int, username varchar(100), 
	status varchar(20) DEFAULT 'prepare for dispatch', delivery_date date null)";
	$reg_insrt = "INSERT INTO medi_register (name , email , gender , contact , dob , password, cart_nm,order_tbl_id) 
				values ('$name','$email','$gender','$contact','$dob','$cryptpass','$cartid','$orderif')";
	$reg_crt = "CREATE TABLE $cartid (itemid varchar(100) PRIMARY KEY , price varchar(100), iname varchar(100), QTY int DEFAULT '1', IPRICE int)";
	$reg_slt = "SELECT * FROM medi_register WHERE email = '$email' and password = '$cryptpass'";
	$sltrow1 = mysqli_fetch_array($localconnect->query($reg_slt));
	echo $sltrow1["email"];
	// $reg_updt = "UPDATE medi_register SET 'cart_nm' = '$cartid' WHERE email = '$email' ";
	if ($localconnect->query($reg_insrt)===TRUE)
	{
		if (($localconnect->query($reg_crt)) === TRUE AND ($localconnect->query($reg_order) === TRUE ))
		{
			$v = $_SESSION["username"]= $sltrow1["email"];
			echo "<script>alert('Your are Registered');</script>";
			echo "<script>window.location.href='index.php'</script>";
		}
		else
		{
			echo "alert('Have some registration problem');";
			echo "<script>window.location.href='index.php'</script>";
		}
	}
	else
	{
		echo mysqli_error($localconnect);
		// echo "<script>alert('Email ID already registered.')</script>";
		// echo "<script>window.location.href='index.php'</script>";
		die();
	}
}
$localconnect->close();
 ?>