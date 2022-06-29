<?php 
include 'connect.php';
$id_article=$_POST['post_id'];
$nom=$_POST['nom'];
$commentaire=$_POST['commentaire'];

$sql = " INSERT INTO commentaire (nom_auteur, contenu_commentaire,article_id )
  VALUES(?,?,?)";
  
  $stmt = mysqli_stmt_init($conn);
 if( !mysqli_stmt_prepare($stmt,$sql)){
     die(mysqli_error($conn));  
 }
 mysqli_stmt_bind_param($stmt,"ssi",
  $nom,
  $commentaire,
  $id_article
 );
 
 mysqli_stmt_execute($stmt);

 
 

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" >
    <title>enregistrement</title>
</head>
<body>
    <?php
    echo '<h1 class=text-success bg-success> votre commentaire a été prise en compte</h1>';
    ?>
     <script src="js/bootstrap.js"></script>
</body>
</html>