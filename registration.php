<?php
include 'connect.php';
$nom=$_POST['nom'];
$genre=$_POST['genre'];
$email=$_POST['email'];
$email_con=$_POST['email_con'];
$diplome=$_POST['diplome'];
$pays=$_POST['pays'];
$thematique=$_POST['thematique'];
$campus=$_POST['campus'];
$numero=$_POST['numero'];

// $sql="INSERT INTO `registration` (nom,genre,email,email_confirmation,numero_tel,pays,niveau_etude,thematique,campus) VALUES($nom, $genre, $email, $email_con, $numero, $pays,$diplome,$thematique, $campus)";

// $result=mysqli_query($conn,$sql);
// if($result){
//     echo '<h1 class=text-success>votre inscrption est effectuée</h1>';
// }



$sql = " INSERT INTO registration (nom, genre, email , email_confirmation, numero_tel , pays, niveau_etude, thematique, campus)
  VALUES(?,?,?,?,?,?,?,?,?)";
  
  $stmt = mysqli_stmt_init($conn);
 if( !mysqli_stmt_prepare($stmt,$sql)){
     die(mysqli_error($conn));  
 }
 mysqli_stmt_bind_param($stmt,"sssssssss",
 $nom,
 $genre,
 $email,
 $email_con,
$numero,
 $pays,
 $diplome,
 $thematique,
 $campus
 );
 
 mysqli_stmt_execute($stmt);
 echo '<h1 class=bg-success>votre inscrption est effectuée</h1>';
?>