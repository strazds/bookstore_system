<?php
$serverName = "CUBE\\SQLEXPRESS";
$databaseName = "bookstore_system";
$uid = "sa";
$pwd = "";

$connectionOptions = array(
    "Database" => $databaseName,
    "UID" => $uid,
    "PWD" => $pwd
);

$conn = sqlsrv_connect($serverName, $connectionOptions);

if ($conn === false) {
    die(print_r(sqlsrv_errors(), true));
}

echo "Connected successfully!";

sqlsrv_close($conn); // Close the connection
?>