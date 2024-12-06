<?php 

require_once "db_configlogin.php";
// $connection = mysqli_connect("127.0.0.1", "root", "", "afr");


$SQL = "SELECT * FROM tenantprofiles";
$result = mysqli_query($connection, $SQL);

$num_rows = mysqli_num_rows($result);

var_dump($connection);
var_dump($num_rows);
// phpinfo(); 

?>
