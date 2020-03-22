<?php 
    include 'koneksi.php';


    $makanan = $_GET['makanan'];
    $jmakanan=$_GET['jumlah_makanan'];
    $minuman = $_GET['minuman'];
    $jminuman=$_GET['jumlah_minuman'];

    $query = "INSERT INTO pesanan(makanan,jumlah_makanan,minuman,jumlah_minuman)
            VALUES ('$makanan','$jmakanan',$minuman','$jminuman')";
    $result = mysqli_connected($connect,$query);
    $num = mysqli_affected_rows($connect);

    if($num > 0){
        echo "berhasil ";
    }
?>