<?php
include 'connect.php';
$email=$_POST['email'];

$sql="INSERT INTO  newsletter (email) VALUES(?)";
$stmt = mysqli_stmt_init($conn);
 if( !mysqli_stmt_prepare($stmt,$sql)){
     die(mysqli_error($conn));  
 }
 mysqli_stmt_bind_param($stmt,"s",
 $email
 );
 
 mysqli_stmt_execute($stmt);
 echo '<h1 class=\"bg-success text-sucess\">votre inscrption est effectuée</h1>';

?>