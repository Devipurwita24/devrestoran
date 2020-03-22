<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="trims.css">
</head>
<body align="center">
    <?php 
    include 'koneksi.php';
    
    $makanan = $_GET['makanan'];
    $jumlah_makanan = $_GET['jumlah_makanan'];
    $minuman = $_GET['minuman'];
    $jumlah_minuman = $_GET['jumlah_minuman'];

    $query = "INSERT INTO pesanan(makanan,jumlah_makanan,minuman,jumlah_minuman)
        VALUES ('$makanan','$jumlah_makanan','$minuman','$jumlah_minuman')";
    $result = mysqli_query($connect,$query);
    $num = mysqli_affected_rows($connect);

    if($num > 0){
        echo "berhasil <br>";
    }else{
        echo "gagal";
    }
    echo "<a href='tabelpesanan.php'>lihat data pemesanan</a>"
?>

</body>
</html>
    