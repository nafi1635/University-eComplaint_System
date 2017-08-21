<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 80%;
    border-collapse: collapse;
}
th
{
background-color:Aliceblue;
}
table, td,th{
    border: 2px solid black;
    padding: 5px;
    
  
}

th {text-align: left;}
</style>
</head>
<body>

<?php
$q = intval($_GET['q']);
$user_name = "root";
$password = "rgukt123";
$database = "ecs";
$server = "localhost";
$db_handle = mysql_connect($server, $user_name, $password);
$db_found = mysql_select_db($database, $db_handle);
if ($db_found) {
switch($q){
case 1:
$r="101";
break;
case 2:
$r="102";
break;
case 3:
$r="103";
break;
case 4:
$r="104";
break;
case 5:
$r="105";
break;

}

$SQL = "SELECT a.name,count(c.complaint),count(c.statu) FROM admins a,dept_name d,complaint c where d.name='".$r."' and a.did=d.did and c.aid=a.id";
$result = mysql_query($SQL);
include('dbConfig.php');
$z1="select * from admins where did=$r";
$x1=mysql_query($z1);
echo "<table>";
echo "<tr>";
echo "<th>"."Name"."</th>";
echo "<th>"."No. of Complaints"."</th>";
echo "<th>"."solved complaints"."</th>";
echo "<th>"."working percentage"."</th>";
echo "</tr>";
while ($rw=mysql_fetch_array($x1))
{
		$c=0;
		$id=$rw[0];
		$z2="select * from complaint where aid=$id";
		$x2=mysql_query($z2);
		$comp=mysql_num_rows($x2);
		while($rww=mysql_fetch_array($x2))
		{
			$stata=$rww['stata'];
			$statu=$rww['statu'];
			if($stata==1&&$statu==1)
				$c++;
		}	
    echo "<tr>";
        echo "<td>".$rw[3]."</td>";
    	echo "<td>".$comp."</td>";
    	echo "<td>".$c."</td>";
	$a=$c/$comp;
	$a=$a*100;
	echo "<td>".$a."%</td>";
    echo "</tr>";

}
echo "</table>";
mysql_close($db_handle);
}
else {
print "Database NOT Found ";
mysql_close($db_handle);
}
?>
</body>
</html>
