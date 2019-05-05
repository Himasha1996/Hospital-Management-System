<?php

if(isset($_POST['search']))
{

}
else {
	$query = "SELECT * FROM 'doctor_details'";
	$search_result = filterTable($query);

}

function filterTable($query)
{
	$connect = mysql_connect("localhost","root","","light")
	$filter_Result = mysqli_query($connect, $query);
	return $filter_Result;
}


?>


<!DOCTYPE html>
<html>
<head>
	<title>view doctor details</title>
</head>
<body>
	<form>
		<input type="text" name="value" placeholder="value">
		<input type="text" name="search" value="Filter"><br><br>

		<table>
			<tr>
				<th>pid</th>
				<th>dname</th>
				<th>date</th>
			</tr>
			<?php while($row = mysqli_fetch_array($search_result)): ?>
			<tr>
				<td><?php echo $row['pid'];?></td>
				<td><?php echo $row['dname'];?></td>
				<td><?php echo $row['date'];?></td>
			</tr>
			<?php endwhile;?>
		</table>
	</form>

</body>
</html>