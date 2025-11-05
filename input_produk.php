<?php
require('koneksi.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($conn)) {
        $nama_produk = isset($_POST['nama_produk']) ? mysqli_real_escape_string($conn, $_POST['nama_produk']) : '';
        $jenis_produk = isset($_POST['jenis_produk']) ? mysqli_real_escape_string($conn, $_POST['jenis_produk']) : '';
        $harga = isset($_POST['harga']) ? (int)$_POST['harga'] : 0;
        $stok = isset($_POST['stok']) ? (int)$_POST['stok'] : 0;

        // Validasi
        if (!empty($nama_produk) && !empty($jenis_produk) && $harga > 0 && $stok >= 0) {

            $sql = "INSERT INTO produk (nama_produk, jenis_produk, harga, stok) 
                    VALUES ('$nama_produk', '$jenis_produk', $harga, $stok)";
            mysqli_query($conn, $sql);
            header('Location: index.php');
            exit();
        }
    }
}
