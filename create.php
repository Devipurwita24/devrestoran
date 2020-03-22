<?php

include 'koneksi.php';

$name = $_POST['name'];
$username = $_POST['username'];
$password = $_POST['password'];

$query = "INSERT INTO registrasi (name,username,password)
         VALUES ('$name','$username','$password')";

$result = mysqli_query($connect,$query);
$num = mysqli_affected_rows($connect);

if($num>0){
    echo "berhasil registrasi";
    header("location:user.php");
}else {
    echo "gagal registrasi";
}
?>