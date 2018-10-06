-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 06, 2018 lúc 05:48 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `databaseqlsv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemsv`
--

CREATE TABLE `diemsv` (
  `MASV` int(11) NOT NULL,
  `MAMH` int(11) NOT NULL,
  `DIEM` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `MAGIANGVIEN` int(11) NOT NULL,
  `TENGIANGVIEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAKHOA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien_monhoc`
--

CREATE TABLE `giangvien_monhoc` (
  `MAGIANGVIEN` int(11) NOT NULL,
  `MAMH` int(11) NOT NULL,
  `GHICHU` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `MAKHOA` int(11) NOT NULL,
  `TENKHOA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `MALP` int(10) NOT NULL,
  `TENLP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIENKHOA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAGIANGVIEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `MAMH` int(10) NOT NULL,
  `TENMH` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SOTC` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`MAMH`, `TENMH`, `SOTC`) VALUES
(7, 'LAP TRINH PHP', 4),
(8, 'LAP TRINH C#', 3),
(9, 'LAP TRINH C#', 3),
(10, 'LAP TRINH C++', 3),
(11, 'LAP TRINH C++', 3),
(12, 'LAP TRINH C++', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MASV` int(11) NOT NULL,
  `TENSV` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NAMSINH` date NOT NULL,
  `GIOITINH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DCSV` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DTSV` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MALP` int(10) NOT NULL,
  `MATAIKHOAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MATAIKHOAN` int(11) NOT NULL,
  `TENDANGNHAP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MATKHAU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VAITRO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MATAIKHOAN`, `TENDANGNHAP`, `MATKHAU`, `VAITRO`) VALUES
(1, 'ngocdanh', 'admin', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `diemsv`
--
ALTER TABLE `diemsv`
  ADD UNIQUE KEY `MASV` (`MASV`),
  ADD UNIQUE KEY `MAMH` (`MAMH`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`MAGIANGVIEN`),
  ADD KEY `MAKHOA` (`MAKHOA`);

--
-- Chỉ mục cho bảng `giangvien_monhoc`
--
ALTER TABLE `giangvien_monhoc`
  ADD KEY `MAGIANGVIEN` (`MAGIANGVIEN`),
  ADD KEY `MAMH` (`MAMH`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MAKHOA`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MAMH`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MASV`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MATAIKHOAN`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `MAGIANGVIEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `MAKHOA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `MAMH` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `MASV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MATAIKHOAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diemsv`
--
ALTER TABLE `diemsv`
  ADD CONSTRAINT `diemsv_ibfk_1` FOREIGN KEY (`MASV`) REFERENCES `sinhvien` (`MASV`),
  ADD CONSTRAINT `diemsv_ibfk_2` FOREIGN KEY (`MAMH`) REFERENCES `monhoc` (`MAMH`);

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `giangvien_ibfk_1` FOREIGN KEY (`MAKHOA`) REFERENCES `khoa` (`MAKHOA`);

--
-- Các ràng buộc cho bảng `giangvien_monhoc`
--
ALTER TABLE `giangvien_monhoc`
  ADD CONSTRAINT `giangvien_monhoc_ibfk_1` FOREIGN KEY (`MAMH`) REFERENCES `monhoc` (`MAMH`),
  ADD CONSTRAINT `giangvien_monhoc_ibfk_2` FOREIGN KEY (`MAGIANGVIEN`) REFERENCES `giangvien` (`MAGIANGVIEN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
