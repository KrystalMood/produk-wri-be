-- Tabel PRODUK
CREATE TABLE produk (
    id_produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100) NOT NULL,
    jenis_produk VARCHAR(50) NULL,
    harga DOUBLE NULL,
    stok INT DEFAULT 0
);

-- Tabel PELANGGAN
CREATE TABLE pelanggan (
    id_pelanggan INT(11) AUTO_INCREMENT PRIMARY KEY,
    nama_pelanggan VARCHAR(255) NOT NULL,
    alamat VARCHAR(255),
    telepon VARCHAR(15)
);

-- Tabel PENJUALAN
CREATE TABLE penjualan (
    id_penjualan INT(11) AUTO_INCREMENT PRIMARY KEY,
    tanggal DATE NOT NULL,
    id_pelanggan INT(11),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

-- Tabel DETAIL_PENJUALAN
CREATE TABLE detail_penjualan (
    id_penjualan INT(11),
    id_produk INT(11),
    jumlah INT(11) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_penjualan, id_barang),
    FOREIGN KEY (id_penjualan) REFERENCES penjualan(id_penjualan),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);
