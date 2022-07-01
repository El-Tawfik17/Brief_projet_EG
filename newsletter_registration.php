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
 echo '<h1 class="bg-success text-sucess">votre inscrption est effectuée</h1>';

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="stylesheet" rel="css/bootstrap.min.css">
    <title>soumission</title>
</head>
<body>
  <a href="index.html" class="btn btn-primary"> Retourner à l'acceuil</a>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
