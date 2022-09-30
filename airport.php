<html>
<head>
	<title>lotnisko</title>
	<link rel="stylesheet" href="style.css" type="text/css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
</head>

<body>
	<div id="box1">
		<p>Odloty samolotów</p>
	</div>
	<div id="box2">
		<img src="samolot.jpg"  height=150px/>
	</div>
	<div id="box3">
		<div id="box4">
			<table id="table1">
				<tr>
					<th>numer rejsu</th>
					<th>nazwa</th>
					<th>data i czas</th>
					<th>skąd</th>
					<th>dokąd</th>
					<th>informacje</th>
				</tr>
			
<?php
	$db = mysqli_connect('localhost','root','','airport');

	$sql = "SELECT * from odloty order by data_i_czas ASC";

	$result = mysqli_query($db, $sql);

	while($row = mysqli_fetch_array($result)){
		echo "<tr>";
		echo "<th>".$row[1]."</th>";
		echo "<th>".$row[2]."</th>";
		echo "<th>".$row[3]."</th>";
		echo "<th>".$row[4]."</th>";
		echo "<th>".$row[5]."</th>";
		echo "<th>".$row[6]."</th>";
		echo "</tr>";
	}
		mysqli_close($db);
?>
			</table>
		</div>
	</div>


	




<div id="tx1">
<a href="odloty_samolotow.pdf" download="odloty_samolotow" style="position:relative;top:35px;text-decoration:underline;right:20px;">Pobierz plik</a>
<p id="tx2">
<?php
if(!isset($_COOKIE['User'])){
	echo "Witamy na stronie! Miło, że korzystasz z naszych usług!";
		setcookie('User', '1',time()+5);
	}
else{
	$db = mysqli_connect('localhost','root','','airport');

	$sql = "SELECT * from konto WHERE id_user =".$_COOKIE['User'].";";

	$result = mysqli_query($db, $sql);

	while($row = mysqli_fetch_array($result)){
		echo "Miło Cię znowu widzieć "."<b>".$row[1]."</b>".", polecamy się na przyszłość!";
	}
}
?>
</p>
<p style="position:relative;float:right;text-decoration:underline;top:-40px;right:10%;">autor: 24</p>
</div>


</body>
</html>