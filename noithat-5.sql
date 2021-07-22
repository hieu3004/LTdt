-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2020 lúc 05:37 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `noithat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `mabanner` int(11) NOT NULL,
  `tenbanner` varchar(50) CHARACTER SET utf8 NOT NULL,
  `hinh` varchar(30) NOT NULL,
  `maquantri` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_dh`
--

CREATE TABLE `chitiet_dh` (
  `madonhang` int(11) NOT NULL,
  `masanpham` varchar(10) CHARACTER SET utf8 NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiet_dh`
--

INSERT INTO `chitiet_dh` (`madonhang`, `masanpham`, `soluong`, `dongia`) VALUES
(46, 'sp10', 1, 1555000),
(47, 'sp10', 1, 1555000),
(48, 'sp10', 1, 1555000),
(49, 'sp10', 1, 1555000),
(46, 'sp15', 1, 1555000),
(47, 'sp15', 1, 1555000),
(48, 'sp15', 1, 1555000),
(49, 'sp15', 1, 1555000),
(50, 'sp15', 1, 1555000),
(46, 'sp2', 1, 1555000),
(46, 'sp4', 1, 1555000),
(46, 'sp7', 1, 1555000),
(46, 'sp15', 1, 1555000),
(46, 'sp6', 1, 1555000),
(46, 'sp3', 1, 2055000),
(47, 'sp2', 1, 1555000),
(47, 'sp4', 1, 1555000),
(47, 'sp7', 1, 1555000),
(47, 'sp15', 1, 1555000),
(47, 'sp6', 1, 1555000),
(47, 'sp3', 1, 2055000),
(48, 'sp2', 1, 1555000),
(48, 'sp4', 1, 1555000),
(48, 'sp7', 1, 1555000),
(48, 'sp15', 1, 1555000),
(48, 'sp6', 1, 1555000),
(48, 'sp3', 1, 2055000),
(49, 'sp2', 1, 1555000),
(49, 'sp4', 1, 1555000),
(49, 'sp7', 1, 1555000),
(49, 'sp15', 1, 1555000),
(49, 'sp6', 1, 1555000),
(49, 'sp3', 1, 2055000),
(50, 'sp2', 1, 1555000),
(50, 'sp4', 1, 1555000),
(50, 'sp7', 1, 1555000),
(50, 'sp15', 1, 1555000),
(50, 'sp6', 1, 1555000),
(50, 'sp3', 1, 2055000),
(51, 'sp2', 1, 1555000),
(51, 'sp4', 1, 1555000),
(51, 'sp7', 1, 1555000),
(51, 'sp15', 1, 1555000),
(51, 'sp6', 1, 1555000),
(51, 'sp3', 1, 2055000),
(46, 'sp2', 1, 1555000),
(47, 'sp2', 1, 1555000),
(48, 'sp2', 1, 1555000),
(49, 'sp2', 1, 1555000),
(50, 'sp2', 1, 1555000),
(51, 'sp2', 1, 1555000),
(52, 'sp2', 1, 1555000),
(53, 'sp2', 1, 1555000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_km`
--

CREATE TABLE `chitiet_km` (
  `makhuyenmai` int(11) NOT NULL,
  `masanpham` varchar(10) CHARACTER SET utf8 NOT NULL,
  `sale` int(11) NOT NULL COMMENT 'so %',
  `soluong` int(11) DEFAULT NULL COMMENT 'số luongj khuyến mãi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiet_km`
--

INSERT INTO `chitiet_km` (`makhuyenmai`, `masanpham`, `sale`, `soluong`) VALUES
(3, 'sp10', 15, 20),
(4, 'sp5', 20, 20),
(4, 'sp3', 25, 20),
(3, 'sp15', 10, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madonhang` int(11) NOT NULL,
  `makhachhang` int(11) NOT NULL,
  `ngaytao` datetime NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `trangthai` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'chờ xác nhân/xác nhận/giao hàng',
  `maquantri` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`madonhang`, `makhachhang`, `ngaytao`, `thanhtien`, `trangthai`, `maquantri`) VALUES
(46, 2, '2020-12-02 22:00:40', 0, 'chờ xác nhận', NULL),
(47, 1, '2020-12-02 22:02:14', 0, 'chờ xác nhận', NULL),
(48, 1, '2020-12-02 22:08:50', 0, 'chờ xác nhận', NULL),
(49, 4, '2020-12-03 20:32:19', 1555000, 'chờ xác nhận', NULL),
(50, 1, '2020-12-04 12:53:10', 1555000, 'chờ xác nhận', NULL),
(51, 2, '2020-12-04 15:35:52', 9830000, 'chờ xác nhận', NULL),
(52, 2, '2020-12-04 15:36:03', 0, 'chờ xác nhận', NULL),
(53, 2, '2020-12-04 15:37:46', 1555000, 'chờ xác nhận', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanhsp`
--

CREATE TABLE `hinhanhsp` (
  `masanpham` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tenhinhanh` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` int(11) NOT NULL,
  `Usernames` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Passwords` varchar(40) CHARACTER SET utf8 NOT NULL,
  `tenkhachhang` varchar(50) CHARACTER SET utf8 NOT NULL,
  `hinh` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'hình avarta',
  `sdt` int(11) NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(150) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `Usernames`, `Passwords`, `tenkhachhang`, `hinh`, `sdt`, `email`, `diachi`) VALUES
(1, 'thaiantran', '25f9e794323b453885f5181f1b624d0b', 'Trần Thái An', 'photo-1.jpg', 123456789, 'thaiantran38@gmail.com', 'kakakkakak'),
(2, 'hieunguyen', '25f9e794323b453885f5181f1b624d0b', 'nguyễn minh hiếu', 'photo-2.jpg', 111222333, 'nguyenminhhieu300499@gmail.com', 'cao lỗ'),
(3, 'papapa', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen AN', '', 825283679, 'thaianpp@gmail.com', '3153 pham the hien'),
(4, 'nguyen123', 'e10adc3949ba59abbe56e057f20f883e', 'Da Da DA', NULL, 2147483647, 'a2@gmail.com', 'phạm hùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khonggian`
--

CREATE TABLE `khonggian` (
  `makhonggian` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tenkhonggian` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khonggian`
--

INSERT INTO `khonggian` (`makhonggian`, `tenkhonggian`) VALUES
('PA', 'Phòng ăn'),
('PK', 'Phòng khách'),
('PLV', 'Phòng làm việc'),
('PN', 'Phòng ngủ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makhuyenmai` int(11) NOT NULL,
  `thoigian_batdau` datetime NOT NULL,
  `thoigian_ketthuc` datetime NOT NULL,
  `maquantri` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`makhuyenmai`, `thoigian_batdau`, `thoigian_ketthuc`, `maquantri`) VALUES
(3, '2020-12-02 15:02:00', '2020-12-31 15:02:00', 3),
(4, '2020-12-10 15:02:00', '2020-12-31 15:02:00', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `maloai` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tenloai` varchar(30) CHARACTER SET utf8 NOT NULL,
  `hinh` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `hinh`) VALUES
('BAN', 'Bàn', 'ba1.jpg'),
('GHE', 'Ghế', 'g1.jpg'),
('GIUONG', 'Giường ngủ', 'giuong1.jpg'),
('SOFA', 'Sofa', 'sofa1.jpg'),
('TU', 'Tủ ', 'tuquanao1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantri`
--

CREATE TABLE `quantri` (
  `maquantri` int(11) NOT NULL,
  `Username` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'tên đăng nhập',
  `Passwords` varchar(40) CHARACTER SET utf8 NOT NULL COMMENT 'mật khẩu',
  `tenquantri` varchar(50) CHARACTER SET utf8 NOT NULL,
  `hinh` varchar(50) CHARACTER SET utf8 NOT NULL,
  `quyen` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '(1) Qly_Kho; \r\n(2)Qly_donhang \r\n(3) Qly_tintuc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quantri`
--

INSERT INTO `quantri` (`maquantri`, `Username`, `Passwords`, `tenquantri`, `hinh`, `quyen`) VALUES
(1, 'antran', '111222', 'Trần An', 'photo-1.jpg', '1'),
(3, 'thaiantran', '1', 'Trần Thái An', '', '2'),
(15, 'ddd', 'g', 'Trần Thái An', '', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` varchar(10) CHARACTER SET utf8 NOT NULL,
  `maloai` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tensanpham` varchar(50) CHARACTER SET utf8 NOT NULL,
  `khoiluong` int(11) NOT NULL COMMENT 'kg',
  `hinh` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gia` int(11) NOT NULL COMMENT 'VND',
  `trangthai` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '1 là hoạt động. \r\n0 là đã bị xóa',
  `mausac` varchar(50) CHARACTER SET utf8 NOT NULL,
  `chatlieu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `kichthuoc` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT 'cao|dai|rong',
  `mota` text CHARACTER SET utf8 DEFAULT NULL,
  `makhonggian` varchar(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `maloai`, `tensanpham`, `khoiluong`, `hinh`, `gia`, `trangthai`, `mausac`, `chatlieu`, `kichthuoc`, `mota`, `makhonggian`) VALUES
('sp1', 'BAN', 'Bàn ăn 1', 10, 'ba1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', 'Bàn ăn ', 'PA'),
('sp10', 'GHE', 'Ghế khách 1', 10, 'ga1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PK'),
('sp11', 'BAN', 'Bàn Khách 1', 10, 'bk1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PK'),
('sp12', 'BAN', 'BÀn làm việc 1', 10, 'blv1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PLV'),
('sp13', 'GHE', 'Ghế làm việc 1', 10, 'glv1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PLV'),
('sp14', 'TU', 'tủ Sach 1', 10, 'tlv1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PLV'),
('sp15', 'SOFA', 'Sofa 1', 10, 'sofa1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PK'),
('sp16', 'SOFA', 'Sofa ', 20, 'sofa6.jpg', 300000, '1', 'Vàng', '', '200/300/400', 'hàng chất lượng đẹp', NULL),
('sp17', 'BAN', 'bàn ăn mới', 50, 'big_bunny_fake.jpg', 9999, '1', 'xanh', '', '120/201/360', 'hình ảnh chỉ mang tính chất minh họa thôi nha:]', NULL),
('sp18', 'BAN', 'bàn ăn5', 12, 'img.png', 2100000, NULL, 'xanh', 'nhựa', '1234', 'đẹp', 'PA'),
('sp19', 'GIUONG', 'GIƯỜNG 6', 23, 'img2.jpg', 2130000, NULL, 'xanh', 'da', '1230/125/368', 'đẹp lắm', 'PN'),
('sp2', 'BAN', 'Bàn ăn 2', 10, 'ba2.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', 'Bàn ăn ', 'PA'),
('sp20', 'TU', 'TỦ 6', 20, 'img9.jpg', 55555, '0', 'đen', 'gỗ', '123/56/87', 'đẹp', 'PK'),
('sp3', 'BAN', 'Bàn ăn 3', 10, 'ba3.jpg', 2055000, '1', 'vàng', 'Gỗ', '100/120/300', 'Bàn ăn ', 'PA'),
('sp4', 'GHE', 'Ghế ăn 1', 10, 'g1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', 'ghế ăn ', 'PA'),
('sp5', 'GHE', 'Ghế ăn 2', 10, 'g2.jpg', 155000, '1', 'vàng', 'Gỗ', '100/120/300', 'Ghé ăn đẹp ', 'PA'),
('sp6', 'TU', 'tủ bếp 1', 10, 'tubep1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PA'),
('sp7', 'GIUONG', 'giường 1', 10, 'giuong1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PN'),
('sp8', 'BAN', 'Bàn ngủ 1', 10, 'bn1.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PN'),
('sp9', 'TU', 'tủ quần áo 1', 10, 'tuquanao.jpg', 1555000, '1', 'vàng', 'Gỗ', '100/120/300', ' ', 'PN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `matintuc` int(11) NOT NULL,
  `hinh` varchar(320) CHARACTER SET utf8 NOT NULL COMMENT 'link hinh anh',
  `mota` varchar(320) CHARACTER SET utf8 NOT NULL,
  `maquantri` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`mabanner`),
  ADD KEY `maquantri` (`maquantri`);

--
-- Chỉ mục cho bảng `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD KEY `chitiet_dh_ibfk_1` (`madonhang`),
  ADD KEY `chitiet_dh_ibfk_2` (`masanpham`);

--
-- Chỉ mục cho bảng `chitiet_km`
--
ALTER TABLE `chitiet_km`
  ADD KEY `masanpham` (`masanpham`),
  ADD KEY `makhuyenmai` (`makhuyenmai`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `makhachhang` (`makhachhang`),
  ADD KEY `maquantri` (`maquantri`);

--
-- Chỉ mục cho bảng `hinhanhsp`
--
ALTER TABLE `hinhanhsp`
  ADD KEY `masanpham` (`masanpham`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `Usernames` (`Usernames`);

--
-- Chỉ mục cho bảng `khonggian`
--
ALTER TABLE `khonggian`
  ADD PRIMARY KEY (`makhonggian`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makhuyenmai`),
  ADD KEY `maquantri` (`maquantri`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `quantri`
--
ALTER TABLE `quantri`
  ADD PRIMARY KEY (`maquantri`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`),
  ADD KEY `maloai1` (`maloai`),
  ADD KEY `makhonggian` (`makhonggian`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matintuc`),
  ADD KEY `maquantri` (`maquantri`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `mabanner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `quantri`
--
ALTER TABLE `quantri`
  MODIFY `maquantri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matintuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`maquantri`) REFERENCES `quantri` (`maquantri`);

--
-- Các ràng buộc cho bảng `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD CONSTRAINT `chitiet_dh_ibfk_1` FOREIGN KEY (`madonhang`) REFERENCES `donhang` (`madonhang`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiet_dh_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chitiet_km`
--
ALTER TABLE `chitiet_km`
  ADD CONSTRAINT `chitiet_km_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`),
  ADD CONSTRAINT `chitiet_km_ibfk_3` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`),
  ADD CONSTRAINT `donhang_ibfk_4` FOREIGN KEY (`maquantri`) REFERENCES `quantri` (`maquantri`);

--
-- Các ràng buộc cho bảng `hinhanhsp`
--
ALTER TABLE `hinhanhsp`
  ADD CONSTRAINT `hinhanhsp_ibfk_1` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`);

--
-- Các ràng buộc cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `khuyenmai_ibfk_1` FOREIGN KEY (`maquantri`) REFERENCES `quantri` (`maquantri`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`makhonggian`) REFERENCES `khonggian` (`makhonggian`);

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`maquantri`) REFERENCES `quantri` (`maquantri`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
