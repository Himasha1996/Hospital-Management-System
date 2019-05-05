<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
?>


<?php 
  include("header.php");
  include("library.php");


?>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="jumbotron.css" rel="stylesheet">

<!DOCTYPE>
<html>
<head>
	<title>appointments</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<meta http-equiv="Content-Type" content="text/html=iso-8859-1">
</head>
<body>
	<div class="header">
		<h2>Register</h2>
	</div>

	<form>
		<div class="input-group">
			<label>First Name</label>
			<input type="text" name="fname">
		</div>
		<div class="input-group">
			<label>Last Name</label>
			<input type="text" name="lname">
		</div>
		<div class="input-group">
			<label>Date Of Birth</label>
			<input type="date" name="bday">
		</div>
		<div class="input-group">
			<label>Address</label>
			<input type="text" name="address">
		</div>
		<div class="input-group">
			<label>Contact no</label>
			<input type="number" name="cnumber">
		</div>
		<div class="input-group">
			<label>Email</label>
			<input type="email" name="email">
		</div>
		<div class="input-group">
			<button type="submit" name="register" class="btn">Register</button>
		</div>

	</form>
	<div class="header">
		<h2>View Appointments</h2>
	</div>

	<form name="form1" action="" method="post">
	<table>
	<tr>
		<td>Doctor ID</td>
		<td><input type="text" name="t1"></td>
	</tr>
	<tr>
	<td>Doctor Name</td>
	<td><input type="text" name="t2"></td>
	</tr>
	<tr>
		<td>Date</td>
		<td><input type="date" name="t3"></td>
	</tr>
	<tr>
	
	<tr>
		<td colspan="2" align="center">
			
			<input type="submit" name="submit" value="Search appointments">
		</td>
	</tr> 
	 

</table>
</form> 
<?php
 
 if(isset($_POST["submit"]))
 	{
 	$res=mysqli_query($link,"select * from table1 where city='$_POST[t2]' "); 
 	echo "<tr>";
 		echo( "$_POST[t2]") ;
		echo "<th>"; echo "  Appointments are,"; echo "</th>";
 		echo "</tr>";
 	echo "<table>";
 	while($row=mysqli_fetch_array($res))
 	{
 		echo "<tr>";
 		echo "<td>"; echo $row ["name"]; echo "</td>";
 		echo "</tr>";
 	}
 }

 ?>
 
</body>
</html>