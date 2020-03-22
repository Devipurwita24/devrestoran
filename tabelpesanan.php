<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<table width='80%' border=1 class="teks-center">
    <tr>
        <th bgcolor="aqua">makanan</th>
        <th bgcolor="aqua">jumlah_makanan</th>
        <th bgcolor="aqua">minuman</th>
        <th bgcolor="aqua">jumlah_minuman</th>
    </tr>
    <?php
    include 'koneksi.php';
    
    $query = "SELECT * FROM pesanan ";
    $sql=mysqli_query($connect,$query);
    while($data = mysqli_fetch_array($sql)){
        echo "<tr>";
        echo "<td>".$data['makanan']."</td>";
        echo "<td>".$data['jumlah_minuman']."</td>";
        echo "<td>".$data['minuman']."</td>";
        echo "<td>".$data['jumlah_minuman']."</td>";
        echo "</tr>";
    }
?>
</table>

</body>
</html>