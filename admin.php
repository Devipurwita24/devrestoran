<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="admin.css">
</head>
<body align="center">
    <br><br><br><br>
    <div id="masuk">
        <h1 >login admin</h1>
        <br><br>
        <form action="cek_login.php" method="post">
        <label for="username" >username</label>;
        <input type="text" name="username" placeholder="username" > 
        <p>
        <br><br><br>
        <label for="password">password</label>;
        <input type="password" name="password" placeholder="password" >
        </p><br><br><br><br><br><br>
        <input type="submit" name="login" >
        <br><br>
        </form>
    </div>

    <?php
    if(isset($_GET['pesan'])){
        if($_GET['pesan'] == "gagal"){
            echo "login gagal!usernam atau password salah";
        }else if($_GET['pesan']=="login"){
            echo "anda berhasil login";
        }
    }

    ?>
</body>
</html>