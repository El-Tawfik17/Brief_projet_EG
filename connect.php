<?php
$host="ftp-energystat.alwaysdata.net";
$dbname="energystat_base";
$username="274480_stat";
$password="fikmen25@17";
$conn=mysqli_connect(   hostname:$host,
                  username:$username,
                  password:$password,
                  database:$dbname);
if(mysqli_connect_error()){
    die("connection error:".mysqli_connect_error());
}
?>