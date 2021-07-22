-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 07:56 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noithat`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `mabanner` int(11) NOT NULL,
  `tenbanner` varchar(50) CHARACTER SET utf8 NOT NULL,
  `maquantri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_dh`
--

CREATE TABLE `chitiet_dh` (
  `madonhang` int(11) NOT NULL,
  `masanpham` varchar(10) CHARACTER SET utf8 NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `danhgia` bit(2) NOT NULL COMMENT '0(khong hai long) 1(hai long)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_km`
--

CREATE TABLE `chitiet_km` (
  `makhuyenmai` int(11) NOT NULL,
  `masanpham` varchar(10) CHARACTER SET utf8 NOT NULL,
  `sale` int(11) NOT NULL COMMENT 'so %',
  `soluong` int(11) DEFAULT NULL COMMENT 'số luongj khuyến mãi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `madonhang` int(11) NOT NULL,
  `makhachhang` int(11) NOT NULL,
  `ngaytao` datetime NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `trangthai` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'chờ xác nhân/xác nhận/giao hàng',
  `maquantri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `mabanner` int(11) NOT NULL,
  `tenhinhanh` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hinhanhsp`
--

CREATE TABLE `hinhanhsp` (
  `masanpham` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tenhinhanh` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` int(11) NOT NULL,
  `Usernames` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Passwords` varchar(40) CHARACTER SET utf8 NOT NULL,
  `tenkhachhang` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(150) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `Usernames`, `Passwords`, `tenkhachhang`, `sdt`, `email`, `diachi`) VALUES
(1, 'thaiantran', '25f9e794323b453885f5181f1b624d0b', 'Trần Thái An', 123456789, 'thaiantran38@gmail.com', 'kakakkakak'),
(2, 'hieunguyen', '25f9e794323b453885f5181f1b624d0b', 'nguyễn minh hiếu', 111222333, 'nguyenminhhieu300499@gmail.com', 'cao lỗ');

-- --------------------------------------------------------

--
-- Table structure for table `khonggian`
--

CREATE TABLE `khonggian` (
  `makhonggian` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tenkhonggian` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khonggian`
--

INSERT INTO `khonggian` (`makhonggian`, `tenkhonggian`) VALUES
('PA', 'Phòng ăn'),
('PK', 'Phòng khách'),
('PLV', 'Phòng làm việc'),
('PN', 'Phòng ngủ');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makhuyenmai` int(11) NOT NULL,
  `maquantri` int(11) NOT NULL,
  `thoigian_batdau` datetime NOT NULL,
  `thoigian_ketthuc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `maloai` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tenloai` varchar(30) CHARACTER SET utf8 NOT NULL,
  `hinh` varchar(50) CHARACTER SET utf8 NOT NULL,
  `makhonggian` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `hinh`, `makhonggian`) VALUES
('BAN', 'Bàn ăn', 'ba1.jpg', 'PA'),
('BANK', 'Bàn khách', 'bk1.jpg', 'PK'),
('BANN', 'Bàn ngủ', 'bn1.jpg', 'PN'),
('BLV', 'Bàn làm việc', 'blv1.jpg', 'PLV'),
('GHE', 'Ghế ăn', 'ga1.jpg', 'PA'),
('GHEK', 'Ghế phòng khách', 'g1.jpg', 'PK'),
('GIUONG', 'Giường ngủ', 'giuong1.jpg', 'PN'),
('GLV', 'Ghế Làm Việc', 'glv1.jpg', 'PLV'),
('SOFA', 'Sofa', 'sofa1.jpg', 'PK'),
('TUQA', 'Tủ Quần Áo', 'tuquanao1.jpg', 'PN'),
('TUSACH', 'Tủ Sách', 'tlv1.jpg', 'PLV');

-- --------------------------------------------------------

--
-- Table structure for table `quantri`
--

CREATE TABLE `quantri` (
  `maquantri` int(11) NOT NULL,
  `Username` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'tên đăng nhập',
  `Passwords` varchar(40) CHARACTER SET utf8 NOT NULL COMMENT 'mật khẩu',
  `tenquantri` varchar(50) CHARACTER SET utf8 NOT NULL,
  `quyen` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '(1) Qly_Kho; \r\n(2)Qly_donhang \r\n(3) Qly_tintuc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quantri`
--

INSERT INTO `quantri` (`maquantri`, `Username`, `Passwords`, `tenquantri`, `quyen`) VALUES
(1, 'antran', '111222', 'Trần An', '2'),
(3, 'thaiantran', '1', 'Trần Thái An', '2'),
(15, 'ddd', 'g', 'Trần Thái An', '3');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` varchar(10) CHARACTER SET utf8 NOT NULL,
  `maloai` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tensanpham` varchar(50) CHARACTER SET utf8 NOT NULL,
  `khoiluong` int(11) NOT NULL COMMENT 'kg',
  `hinh` varchar(30) CHARACTER SET utf8 NOT NULL,
  `gia` int(11) NOT NULL COMMENT 'VND',
  `mausac` varchar(50) CHARACTER SET utf8 NOT NULL,
  `xuatxu` varchar(50) CHARACTER SET utf8 NOT NULL,
  `chatlieu` varchar(50) CHARACTER SET utf8 NOT NULL,
  `soluong` int(11) NOT NULL,
  `kichthuoc` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT 'cao|dai|rong',
  `mota` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `maloai`, `tensanpham`, `khoiluong`, `hinh`, `gia`, `mausac`, `xuatxu`, `chatlieu`, `soluong`, `kichthuoc`, `mota`) VALUES
('sp1', 'BAN', 'Bàn ăn 1', 10, 'ba1.jpg', 150000, 'xanh', 'Việt Nam', 'Gỗ', 20, '100/120/300', 'Sản phẩm đệp bền '),
('sp10', 'BLV', 'Bàn làm việc 1', 10, 'blv1.jpg', 150000, 'vàng', 'Thái Lan', 'Gỗ', 20, '1500/600/1200', 'Bàn làm việc thời thượng'),
('sp11', 'BLV', 'Bàn làm việc 2', 10, 'blv2.jpg', 190000, 'vàng', 'Thái Lan', 'Gỗ', 20, '1500/600/1200', 'Bàn làm việc thời thượng'),
('sp12', 'BLV', 'Bàn làm việc 3', 10, 'blv3.jpg', 250000, 'vàng', 'Trung Quốc', 'Gỗ', 20, '1500/600/1200', 'Bàn làm việc thời thượng'),
('sp13', 'GHE', 'Ghế ăn 1', 10, 'ga1.jpg', 150000, 'vàng', 'Thái Lan', 'Gỗ', 20, '100/120/300', 'Ghế đẹp'),
('sp14', 'GHE', 'Ghế ăn 2', 10, 'ga2.jpg', 150000, 'vàng', 'Thái Lan', 'Gỗ', 20, '100/120/300', 'Ghế đẹp'),
('sp15', 'GHE', 'Ghế ăn 3', 10, 'ga3.jpg', 150000, 'vàng', 'Thái Lan', 'Gỗ', 20, '100/120/300', 'Ghế đẹp'),
('sp16', 'GHEK', 'Ghế Khách 1', 10, 'g1.jpg', 150000, 'đen', 'Việt Nam', 'sắt', 20, '100/120/300', 'Ghế chất lượng'),
('sp17', 'GHEK', 'Ghế Khách 2', 10, 'g2.jpg', 150000, 'đen', 'Việt Nam', 'sắt', 20, '100/120/300', 'Ghế chất lượng'),
('sp18', 'GHEK', 'Ghế Khách 3', 10, 'g3.jpg', 150000, 'đen', 'Việt Nam', 'sắt', 20, '100/120/300', 'Ghế chất lượng'),
('sp19', 'GIUONG', 'Giường ngủ 1', 120, 'giuong1.jpg', 22000000, 'vàng', 'Thái Lan', 'Gỗ', 20, '2500/2000/900', 'Giường đẹp'),
('sp2', 'BAN', 'Bàn ăn 2', 10, 'ba2.jpg', 190000, 'vàng', 'Việt Nam', 'sắt', 20, '100/120/300', 'Sản phẩm đệp bền '),
('sp20', 'GIUONG', 'Giường ngủ 2', 120, 'giuong2.jpg', 22000000, 'vàng', 'Thái Lan', 'Gỗ', 20, '2500/2000/900', 'Giường đẹp'),
('sp21', 'GIUONG', 'Giường ngủ 3', 120, 'giuong3.jpg', 22000000, 'vàng', 'Thái Lan', 'Gỗ', 20, '2500/2000/900', 'Giường đẹp'),
('sp22', 'GLV', 'Ghế làm việc 1', 10, 'glv1.jpg', 150000, 'vàng', 'Việt Nam', 'Gỗ', 20, '100/120/300', 'ghế văn phòng'),
('sp23', 'GLV', 'Ghế làm việc 2', 10, 'glv2.jpg', 150000, 'vàng', 'Việt Nam', 'Gỗ', 20, '100/120/300', 'ghế văn phòng'),
('sp24', 'GLV', 'Ghế làm việc 3', 10, 'glv3.jpg', 150000, 'vàng', 'Việt Nam', 'Gỗ', 20, '100/120/300', 'ghế văn phòng'),
('sp25', 'SOFA', 'Sofa 1', 50, 'sofa1.jpg', 1555000, 'Trắng', 'Việt Nam', 'da', 20, '1200/1500/600', ''),
('sp26', 'SOFA', 'Sofa 2', 50, 'sofa2.jpg', 1555000, 'Trắng', 'Việt Nam', 'da', 20, '1200/1500/600', ''),
('sp27', 'SOFA', 'Sofa 3', 50, 'sofa3.jpg', 1555000, 'Trắng', 'Việt Nam', 'da', 20, '1200/1500/600', ''),
('sp28', 'TUQA', 'Tủ quần áo 1', 120, 'tuquanao1.jpg', 220000, 'vàng', 'Thái Lan', 'Gỗ', 20, '1500/600/1200', ''),
('sp29', 'TUQA', 'Tủ quần áo 2', 120, 'tuquanao2.jpg', 220000, 'vàng', 'Thái Lan', 'Gỗ', 20, '1500/600/1200', ''),
('sp3', 'BAN', 'Bàn ăn 3', 10, 'ba3.jpg', 200000, 'xanh', 'Việt Nam', 'Gỗ', 20, '100/120/300', 'Sản phẩm đệp bền '),
('sp30', 'TUQA', 'Tủ quần áo 3', 120, 'tuquanao3.jpg', 220000, 'vàng', 'Thái Lan', 'Gỗ', 20, '1500/600/1200', ''),
('sp31', 'TUSACH', 'Tủ Sách 1', 50, 'tlv1.jpg', 320000, 'vàng', 'Việt Nam', 'Gỗ', 20, '1200/1500/600', ''),
('sp32', 'TUSACH', 'Tủ Sách 2', 50, 'tlv2.jpg', 320000, 'vàng', 'Việt Nam', 'Gỗ', 20, '1200/1500/600', ''),
('sp33', 'TUSACH', 'Tủ Sách 3', 50, 'tlv3.jpg', 320000, 'vàng', 'Việt Nam', 'Gỗ', 20, '1200/1500/600', ''),
('sp34', 'SOFA', 'Sofa 4', 50, 'sofa4.png', 1555000, 'đen', 'Thái Lan', 'Gỗ', 20, '1200/1500/600', ''),
('sp35', 'SOFA', 'Sofa 5', 120, 'sofa5.jpg', 220000, 'vàng', 'Thái Lan', 'Gỗ', 20, '1500/600/1200', ''),
('sp4', 'BANK', 'Bàn Khách 1', 10, 'bk1.jpg', 1555000, 'vàng', 'Việt Nam', 'Gỗ', 20, '1200/1500/600', 'Bàn đẹp chất lượng tốt'),
('sp5', 'BANK', 'Bàn Khách 2', 10, 'bk2.jpg', 2000000, 'vàng', 'Việt Nam', 'Gỗ', 20, '1200/1500/600', 'Bàn đẹp chất lượng tốt'),
('sp6', 'BANK', 'Bàn Khách 3', 10, 'bk3.jpg', 1950000, 'vàng', 'Việt Nam', 'Gỗ', 20, '1200/1500/600', 'Bàn đẹp chất lượng tốt'),
('sp7', 'BANN', 'Bàn ngủ 1', 10, 'bn1.jpg', 150000, 'đen', 'Việt Nam', 'sắt', 20, '1500/600/1200', 'Bàn ngủ phong cách'),
('sp8', 'BANN', 'Bàn ngủ 2', 10, 'bn2.jpg', 200000, 'đen', 'Việt Nam', 'gỗ', 20, '1500/600/1200', 'Bàn ngủ phong cách'),
('sp9', 'BANN', 'Bàn ngủ 3', 10, 'bn3.jpg', 250000, 'đen', 'Việt Nam', 'gỗ', 20, '1500/600/1200', 'Bàn ngủ phong cách');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `matintuc` int(11) NOT NULL,
  `maquantri` int(11) NOT NULL,
  `hinh` varchar(320) CHARACTER SET utf8 NOT NULL COMMENT 'link hinh anh',
  `mota` varchar(320) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`mabanner`),
  ADD KEY `maquantri` (`maquantri`);

--
-- Indexes for table `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD KEY `chitiet_dh_ibfk_1` (`madonhang`),
  ADD KEY `chitiet_dh_ibfk_2` (`masanpham`);

--
-- Indexes for table `chitiet_km`
--
ALTER TABLE `chitiet_km`
  ADD PRIMARY KEY (`makhuyenmai`),
  ADD KEY `masanpham` (`masanpham`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `maquantri` (`maquantri`),
  ADD KEY `makhachhang` (`makhachhang`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`mabanner`);

--
-- Indexes for table `hinhanhsp`
--
ALTER TABLE `hinhanhsp`
  ADD KEY `masanpham` (`masanpham`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `Usernames` (`Usernames`);

--
-- Indexes for table `khonggian`
--
ALTER TABLE `khonggian`
  ADD PRIMARY KEY (`makhonggian`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makhuyenmai`),
  ADD KEY `maquantri` (`maquantri`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`),
  ADD KEY `makhonggian` (`makhonggian`);

--
-- Indexes for table `quantri`
--
ALTER TABLE `quantri`
  ADD PRIMARY KEY (`maquantri`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`),
  ADD KEY `maloai1` (`maloai`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matintuc`),
  ADD KEY `maquantri` (`maquantri`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `mabanner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitiet_km`
--
ALTER TABLE `chitiet_km`
  MODIFY `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madonhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quantri`
--
ALTER TABLE `quantri`
  MODIFY `maquantri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matintuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`maquantri`) REFERENCES `quantri` (`maquantri`) ON DELETE CASCADE;

--
-- Constraints for table `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD CONSTRAINT `chitiet_dh_ibfk_1` FOREIGN KEY (`madonhang`) REFERENCES `donhang` (`madonhang`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiet_dh_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE CASCADE;

--
-- Constraints for table `chitiet_km`
--
ALTER TABLE `chitiet_km`
  ADD CONSTRAINT `chitiet_km_ibfk_1` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`),
  ADD CONSTRAINT `chitiet_km_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`maquantri`) REFERENCES `quantri` (`maquantri`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`);

--
-- Constraints for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `hinhanh_ibfk_1` FOREIGN KEY (`mabanner`) REFERENCES `banner` (`mabanner`);

--
-- Constraints for table `hinhanhsp`
--
ALTER TABLE `hinhanhsp`
  ADD CONSTRAINT `hinhanhsp_ibfk_1` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`);

--
-- Constraints for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `khuyenmai_ibfk_1` FOREIGN KEY (`maquantri`) REFERENCES `quantri` (`maquantri`);

--
-- Constraints for table `loai`
--
ALTER TABLE `loai`
  ADD CONSTRAINT `loai_ibfk_1` FOREIGN KEY (`makhonggian`) REFERENCES `khonggian` (`makhonggian`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`);

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`maquantri`) REFERENCES `quantri` (`maquantri`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
