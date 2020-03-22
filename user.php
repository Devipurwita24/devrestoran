<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="user.css">
</head>
<body align="center">
<h1>login form</h1>


<form action="cek_user.php" method="post">
<img src="2.jpg" width =500>
<p>
    <label for="username" >username</label>;
    <input type="text" name="username" placeholder="username"  required>
    <p>
    <label for="password">password</label>;
    <input type="password" name="password" placeholder="password"  required>
    </p>
    
    <button type="submit">submit</button>
    
</p>
</form>

<?php
    if(isset($_GET['pesan'])){
        if($_GET['pesan'] == "gagal"){
            echo "login gagal!username atau password salah";
        }else if($_GET['pesan']=="login"){
            echo "anda berhasil login";
        }
    }
?>
</body>
</html>
