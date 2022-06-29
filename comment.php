<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css"> 
    <title>commentaire</title>
</head>
<body>
<form action="com_registration.php" method="post">
<input type="hidden" name="post_id" value="<?php  echo $_GET['id'];?>">
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">NOM</label>
  <input type="text" class="form-control" id="exampleFormControlInput1" name="nom" placeholder="Tawfik">
</div>
  
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Commentaire</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" name="commentaire" rows="3"></textarea>
</div>
<button type="submit" class="btn btn-primary">Envoyer</button>
</form>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>