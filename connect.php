<?php
$host="localhost";
$dbname="energygeneration";
$username="root";
$password="";
$conn=mysqli_connect(   hostname:$host,
                  username:$username,
                  password:$password,
                  database:$dbname);
if(mysqli_connect_error()){
    die("connection error:".mysqli_connect_error());
}
?>