CREATE DATABASE Bai2_BT1_ERD;
USE BAI2_BT1_ERD;
CREATE TABLE phieuxuat(
sopx INT AUTO_INCREMENT PRIMARY KEY,
ngayxuat DATETIME DEFAULT NOW()
);
CREATE TABLE vattu(
mavattu INT AUTO_INCREMENT PRIMARY KEY,
tenvattu VARCHAR(255) NOT NULL
);

CREATE TABLE chitietpx(
dgxuat DOUBLE NOT NULL,
slxuat INT NOT NULL,
sopx INT,
mavattu INT,
FOREIGN KEY (sopx) REFERENCES phieuxuat(sopx),
FOREIGN KEY (mavattu) REFERENCES vattu(mavattu)
);
CREATE TABLE phieunhap(
sopn INT AUTO_INCREMENT PRIMARY KEY,
ngaynhap DATETIME DEFAULT NOW()
);
CREATE TABLE chitietpn(
mavattu INT,
sopn INT,
dgnhap DOUBLE NOT NULL,
slnhap INT,
FOREIGN KEY (mavattu) REFERENCES vattu(mavattu),
FOREIGN KEY (sopn) REFERENCES phieunhap(sopn)
);
CREATE TABLE nhacc(
macc INT AUTO_INCREMENT PRIMARY KEY,
tenncc VARCHAR(255),
diachi VARCHAR(255),
sdt VARCHAR(255)
);
CREATE TABLE dondh(
sodh INT AUTO_INCREMENT PRIMARY KEY,
ngaydh DATETIME DEFAULT NOW(),
macc INT,
FOREIGN KEY (macc) REFERENCES nhacc(macc) 
);
CREATE TABLE chitietdh(
mavattu INT,
sodh INT,
FOREIGN KEY (mavattu) REFERENCES vattu(mavattu),
FOREIGN KEY (sodh) REFERENCES dondh(sodh)
);


