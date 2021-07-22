-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 08:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
  `hinhanh` varchar(50) CHARACTER SET utf8 NOT NULL,
  `maquantri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`mabanner`, `tenbanner`, `hinhanh`, `maquantri`) VALUES
(123, 'Christmas', 'Christmas.jpg', 3),
(456, 'new Year', 'newYear.jpg', 3);

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

--
-- Dumping data for table `chitiet_dh`
--

INSERT INTO `chitiet_dh` (`madonhang`, `masanpham`, `soluong`, `dongia`, `danhgia`) VALUES
(123, '1', 1, 0, b'00'),
(456, '2', 1, 0, b'01');

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

--
-- Dumping data for table `chitiet_km`
--

INSERT INTO `chitiet_km` (`makhuyenmai`, `masanpham`, `sale`, `soluong`) VALUES
(123, '1', 20, 2),
(456, '2', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `madonhang` int(11) NOT NULL,
  `makhachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(40) CHARACTER SET utf8 NOT NULL,
  `sdt` varchar(11) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ngaytao` datetime NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `maquantri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`madonhang`, `makhachhang`, `tenkhachhang`, `sdt`, `email`, `diachi`, `ngaytao`, `thanhtien`, `maquantri`) VALUES
(123, 10001, 'thai an', '123456', 'kaikai@gmail.com', '123 p5 q9', '2020-11-27 14:03:07', 0, 1),
(456, 10002, 'an thai', '456789', 'lulu@gmail.com', 'ádassfdgasdf', '2020-11-30 14:06:46', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `mabanner` int(11) NOT NULL,
  `tenhinhanh` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`mabanner`, `tenhinhanh`) VALUES
(123, 'Christmas.jpg'),
(456, 'newYear.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanhsp`
--

CREATE TABLE `hinhanhsp` (
  `masanpham` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tenhinhanh` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hinhanhsp`
--

INSERT INTO `hinhanhsp` (`masanpham`, `tenhinhanh`) VALUES
('1', 'SO-803.jpg'),
('2', 'BE-720.jpg');

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
(10001, 'kaikai', '123456', 'thai an', 123456789, 'kaikai@gmail.com', '123 P4 Q5'),
(10002, 'lulu', '123456', 'an thai', 133456789, 'lulu@gmail.com', '456 P7 Q8');

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

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`makhuyenmai`, `maquantri`, `thoigian_batdau`, `thoigian_ketthuc`) VALUES
(123, 15, '2020-12-20 13:45:30', '2020-12-25 13:45:30'),
(456, 15, '2021-01-01 13:45:30', '2021-01-05 13:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `loai1`
--

CREATE TABLE `loai1` (
  `maloai1` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tenloai1` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai1`
--

INSERT INTO `loai1` (`maloai1`, `tenloai1`) VALUES
('bed', 'bed'),
('chair', 'chair'),
('sofa', 'sofa'),
('table', 'table'),
('Wardrobe', 'Wardrobe');

-- --------------------------------------------------------

--
-- Table structure for table `loai2`
--

CREATE TABLE `loai2` (
  `maloai2` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tenloai2` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai2`
--

INSERT INTO `loai2` (`maloai2`, `tenloai2`) VALUES
('an', 'phong an'),
('khach', 'phong khach'),
('ngu', 'phong ngu'),
('work', 'phong lam viec');

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
  `maloai1` varchar(10) CHARACTER SET utf8 NOT NULL,
  `maloai2` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tensanpham` varchar(50) CHARACTER SET utf8 NOT NULL,
  `khoiluong` int(11) NOT NULL COMMENT 'kg',
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

INSERT INTO `sanpham` (`masanpham`, `maloai1`, `maloai2`, `tensanpham`, `khoiluong`, `gia`, `mausac`, `xuatxu`, `chatlieu`, `soluong`, `kichthuoc`, `mota`) VALUES
('1', 'sofa', 'khach', 'Ghế Sofa SF47-3', 123, 83824000, 'white', 'Italia', 'Da: 100% da bò Italia', 3, '1200-1100-640', 'Bộ Sofa Da góc chữ L nhập khẩu Ý SO-803 có kích thước lớn, phù hợp với không gian phòng khách rộng. Thiết kế đơn giản, vuông vứt mang phong khách hiện đại, sang trọng. Lưng tựa có thể điều khiển bật nhiều chế độ, tạo sự linh hoạt và thoải mái cho người sử dụng.\r\nBộ Sofa SO-803 thuộc dòng sofa cao cấp nhập khẩu nguyên đai nguyên kiện từ Italy.'),
('2', 'bed', 'ngu', 'GIƯỜNG NGỦ BE-720', 150, 50388000, 'white', 'Italy', 'Da Ý mặt trước da thật, mặt sau microfiber', 5, '2220-2380-1270', 'Da Ý mặt trước da thật, mặt sau microfiber.\r\nChân gỗ tần bì đặc sơn màu Walnut.');

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
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`matintuc`, `maquantri`, `hinh`, `mota`) VALUES
(2, 1, 'newYear.jpg', 'khuyến mãi đêm Tết'),
(10, 1, 'Christmas.jpg', 'khuyến mãi đêm gián sinh');

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
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `email` (`email`),
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
  ADD PRIMARY KEY (`masanpham`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `Usernames` (`Usernames`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makhuyenmai`),
  ADD KEY `maquantri` (`maquantri`);

--
-- Indexes for table `loai1`
--
ALTER TABLE `loai1`
  ADD PRIMARY KEY (`maloai1`);

--
-- Indexes for table `loai2`
--
ALTER TABLE `loai2`
  ADD PRIMARY KEY (`maloai2`);

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
  ADD KEY `maloai1` (`maloai1`),
  ADD KEY `maloai2` (`maloai2`);

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
  MODIFY `mabanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `chitiet_km`
--
ALTER TABLE `chitiet_km`
  MODIFY `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `quantri`
--
ALTER TABLE `quantri`
  MODIFY `maquantri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`maloai1`) REFERENCES `loai1` (`maloai1`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`maloai2`) REFERENCES `loai2` (`maloai2`);

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`maquantri`) REFERENCES `quantri` (`maquantri`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
