-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 12:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `python`
--

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `IDMAMONHOC` int(11) NOT NULL,
  `IDSINHVIEN` int(11) NOT NULL,
  `HOCKI` varchar(50) NOT NULL,
  `DIEM` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diem`
--

INSERT INTO `diem` (`IDMAMONHOC`, `IDSINHVIEN`, `HOCKI`, `DIEM`) VALUES
(1, 1, '1', 8.5),
(1, 2, '1', 7.2),
(1, 3, '1', 6.9),
(1, 4, '1', 9),
(1, 5, '1', 8.7),
(1, 6, '1', 7.8),
(1, 7, '1', 8.1),
(1, 8, '1', 6.5),
(1, 9, '1', 7.3),
(1, 10, '1', 9.5),
(2, 1, '1', 7.9),
(2, 2, '1', 8.2),
(2, 3, '1', 6.7),
(2, 4, '1', 8.9),
(2, 5, '1', 7.6),
(2, 6, '1', 8.3),
(2, 7, '1', 9.1),
(2, 8, '1', 6.8),
(2, 9, '1', 7.4),
(2, 10, '1', 8.6),
(1, 1, '2', 7.8),
(1, 2, '2', 8.6),
(1, 3, '2', 9.2),
(1, 4, '2', 7.5),
(1, 5, '2', 8.9),
(1, 6, '2', 7.2),
(1, 7, '2', 8.4),
(1, 8, '2', 6.9),
(1, 9, '2', 7.6),
(1, 10, '2', 9.3),
(2, 1, '2', 8.1),
(2, 2, '2', 7.4),
(2, 3, '2', 6.8),
(2, 4, '2', 8.7),
(2, 5, '2', 7.9),
(2, 6, '2', 9),
(2, 7, '2', 8.5),
(2, 8, '2', 7.1),
(2, 9, '2', 8.2),
(2, 10, '2', 9.5),
(1, 11, '1', 7.7),
(1, 12, '1', 8.8),
(1, 13, '1', 9.1),
(1, 14, '1', 7.4),
(1, 15, '1', 8.6),
(1, 16, '1', 7.2),
(1, 17, '1', 8.3),
(1, 18, '1', 6.9),
(1, 19, '1', 7.5),
(1, 20, '1', 9),
(2, 11, '1', 7.9),
(2, 12, '1', 8.2),
(2, 13, '1', 6.7),
(2, 14, '1', 8.9),
(2, 15, '1', 7.6),
(2, 16, '1', 8.3),
(2, 17, '1', 9.1),
(2, 18, '1', 6.8),
(2, 19, '1', 7.4),
(2, 20, '1', 8.6),
(1, 11, '2', 7.8),
(1, 12, '2', 8.6),
(1, 13, '2', 9.2),
(1, 14, '2', 7.5),
(1, 15, '2', 8.9),
(1, 16, '2', 7.2),
(1, 17, '2', 8.4),
(1, 18, '2', 6.9),
(1, 19, '2', 7.6),
(1, 20, '2', 9.3),
(2, 11, '2', 8.1),
(2, 12, '2', 7.4),
(2, 13, '2', 6.8),
(2, 14, '2', 8.7),
(2, 15, '2', 7.9),
(2, 16, '2', 9),
(2, 17, '2', 8.5),
(2, 18, '2', 7.1),
(2, 19, '2', 8.2),
(2, 20, '2', 9.5);

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `MAKHOA` int(11) NOT NULL,
  `TENKHOA` varchar(50) NOT NULL,
  `SLUONGSV` int(11) NOT NULL,
  `SLMON` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`MAKHOA`, `TENKHOA`, `SLUONGSV`, `SLMON`) VALUES
(1, 'Kỹ Thuật Điện', 10, 0),
(2, 'Sinh Học', 10, 0),
(3, 'Khoa Học Vật Liệu', 10, 0),
(4, 'Khoa Học Xã Hội', 10, 0),
(5, 'Mỹ Thuật', 10, 0),
(6, 'Luật', 10, 0),
(7, 'Khoa Học Máy Tính', 10, 0),
(8, 'Kinh Tế', 10, 0),
(9, 'Y Học', 10, 0),
(10, 'Ngoại Ngữ', 10, 0),
(15, 'default', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhoc`
--

CREATE TABLE `mhoc` (
  `IDMHOC` int(11) NOT NULL,
  `TENMHOC` varchar(50) NOT NULL,
  `SOTINCHI` int(11) NOT NULL,
  `SOTIETTHUCHANH` int(11) NOT NULL,
  `SOTIETLYTHUYET` int(11) NOT NULL,
  `MAKHOA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mhoc`
--

INSERT INTO `mhoc` (`IDMHOC`, `TENMHOC`, `SOTINCHI`, `SOTIETTHUCHANH`, `SOTIETLYTHUYET`, `MAKHOA`) VALUES
(1, 'Toán cao cấp', 4, 2, 2, 1),
(2, 'Lập trình C', 3, 1, 2, 2),
(3, 'Hệ điều hành', 3, 1, 2, 3),
(4, 'Cơ sở dữ liệu', 4, 2, 2, 4),
(5, 'An toàn thông tin', 3, 1, 2, 5),
(6, 'Kỹ thuật đồ họa', 4, 2, 2, 6),
(7, 'Kiến trúc máy tính', 3, 1, 2, 7),
(8, 'Lập trình web', 4, 2, 2, 8),
(9, 'Mạng máy tính', 3, 1, 2, 9),
(10, 'Tính toán đám mây', 4, 2, 2, 10),
(11, 'Lý thuyết xác suất', 3, 1, 2, 1),
(12, 'Phân tích và thiết kế hệ thống', 4, 2, 2, 2),
(13, 'Machine learning', 3, 1, 2, 3),
(14, 'Big data', 4, 2, 2, 4),
(15, 'Trí tuệ nhân tạo', 3, 1, 2, 5),
(16, 'Thực hành C++', 4, 2, 2, 6),
(17, 'Hệ quản trị cơ sở dữ liệu', 3, 1, 2, 7),
(18, 'Công nghệ web tiên tiến', 4, 2, 2, 8),
(19, 'An ninh mạng', 3, 1, 2, 9),
(20, 'Hệ thống nhúng', 4, 2, 2, 10),
(21, 'Lập trình Java', 3, 1, 2, 1),
(22, 'Thực tập hợp lý', 4, 2, 2, 2),
(23, 'Tương tác người máy', 3, 1, 2, 3),
(24, 'Quản trị dự án phần mềm', 4, 2, 2, 4),
(25, 'Phát triển ứng dụng di động', 3, 1, 2, 5),
(26, 'Thiết kế giao diện người dùng', 4, 2, 2, 6),
(27, 'Xử lý ngôn ngữ tự nhiên', 3, 1, 2, 7),
(28, 'Thực hành lập trình web', 4, 2, 2, 8),
(29, 'Hệ thống điện toán phân tán', 3, 1, 2, 9),
(30, 'Công nghệ blockchain', 4, 2, 2, 10),
(31, 'Tính toán đám mây', 3, 1, 2, 1),
(32, 'Phân tích và thiết kế hệ thống', 4, 2, 2, 2),
(33, 'Machine learning', 3, 1, 2, 3),
(34, 'Big data', 4, 2, 2, 4),
(35, 'Trí tuệ nhân tạo', 3, 1, 2, 5),
(36, 'Thực hành C++', 4, 2, 2, 6),
(37, 'Hệ quản trị cơ sở dữ liệu', 3, 1, 2, 7),
(38, 'Công nghệ web tiên tiến', 4, 2, 2, 8),
(39, 'An ninh mạng', 3, 1, 2, 9),
(40, 'Hệ thống nhúng', 4, 2, 2, 10),
(41, 'Lập trình Java', 3, 1, 2, 1),
(42, 'Thực tập hợp lý', 4, 2, 2, 2),
(43, 'Tương tác người máy', 3, 1, 2, 3),
(44, 'Quản trị dự án phần mềm', 4, 2, 2, 4),
(45, 'Phát triển ứng dụng di động', 3, 1, 2, 5),
(46, 'Thiết kế giao diện người dùng', 4, 2, 2, 6),
(47, 'Xử lý ngôn ngữ tự nhiên', 3, 1, 2, 7),
(48, 'Thực hành lập trình web', 4, 2, 2, 8),
(49, 'Hệ thống điện toán phân tán', 3, 1, 2, 9),
(50, 'Công nghệ blockchain', 4, 2, 2, 10),
(51, 'Toán cao cấp', 4, 2, 2, 1),
(52, 'Lập trình C', 3, 1, 2, 2),
(53, 'Hệ điều hành', 3, 1, 2, 3),
(54, 'Cơ sở dữ liệu', 4, 2, 2, 4),
(55, 'An toàn thông tin', 3, 1, 2, 5),
(56, 'Kỹ thuật đồ họa', 4, 2, 2, 6),
(57, 'Kiến trúc máy tính', 3, 1, 2, 7),
(58, 'Lập trình web', 4, 2, 2, 8),
(59, 'Mạng máy tính', 3, 1, 2, 9),
(60, 'Tính toán đám mây', 4, 2, 2, 10),
(61, 'Lý thuyết xác suất', 3, 1, 2, 1),
(62, 'Phân tích và thiết kế hệ thống', 4, 2, 2, 2),
(63, 'Machine learning', 3, 1, 2, 3),
(64, 'Big data', 4, 2, 2, 4),
(65, 'Trí tuệ nhân tạo', 3, 1, 2, 5),
(66, 'Thực hành C++', 4, 2, 2, 6),
(67, 'Hệ quản trị cơ sở dữ liệu', 3, 1, 2, 7),
(68, 'Công nghệ web tiên tiến', 4, 2, 2, 8),
(69, 'An ninh mạng', 3, 1, 2, 9),
(70, 'Hệ thống nhúng', 4, 2, 2, 10),
(71, 'Lập trình Java', 3, 1, 2, 1),
(72, 'Thực tập hợp lý', 4, 2, 2, 2),
(73, 'Tương tác người máy', 3, 1, 2, 3),
(74, 'Quản trị dự án phần mềm', 4, 2, 2, 4),
(75, 'Phát triển ứng dụng di động', 3, 1, 2, 5),
(76, 'Thiết kế giao diện người dùng', 4, 2, 2, 6),
(77, 'Xử lý ngôn ngữ tự nhiên', 3, 1, 2, 7),
(78, 'Thực hành lập trình web', 4, 2, 2, 8),
(79, 'Hệ thống điện toán phân tán', 3, 1, 2, 9),
(80, 'Công nghệ blockchain', 4, 2, 2, 10),
(81, 'Tính toán đám mây', 3, 1, 2, 1),
(82, 'Phân tích và thiết kế hệ thống', 4, 2, 2, 2),
(83, 'Machine learning', 3, 1, 2, 3),
(84, 'Big data', 4, 2, 2, 4),
(85, 'Trí tuệ nhân tạo', 3, 1, 2, 5),
(86, 'Thực hành C++', 4, 2, 2, 6),
(87, 'Hệ quản trị cơ sở dữ liệu', 3, 1, 2, 7),
(88, 'Công nghệ web tiên tiến', 4, 2, 2, 8),
(89, 'An ninh mạng', 3, 1, 2, 9),
(90, 'Hệ thống nhúng', 4, 2, 2, 10),
(91, 'Lập trình Java', 3, 1, 2, 1),
(92, 'Thực tập hợp lý', 4, 2, 2, 2),
(93, 'Tương tác người máy', 3, 1, 2, 3),
(94, 'Quản trị dự án phần mềm', 4, 2, 2, 4),
(95, 'Phát triển ứng dụng di động', 3, 1, 2, 5),
(96, 'Thiết kế giao diện người dùng', 4, 2, 2, 6),
(97, 'Xử lý ngôn ngữ tự nhiên', 3, 1, 2, 7),
(98, 'Thực hành lập trình web', 4, 2, 2, 8),
(99, 'Hệ thống điện toán phân tán', 3, 1, 2, 9),
(100, 'Công nghệ blockchain', 4, 2, 2, 10);

--
-- Triggers `mhoc`
--
DELIMITER $$
CREATE TRIGGER `update_soluong_monhoc_delete` AFTER DELETE ON `mhoc` FOR EACH ROW BEGIN
    UPDATE khoa
    SET SLMON = (
        SELECT COUNT(*)
        FROM mhoc
        WHERE mhoc.MAKHOA = khoa.MAKHOA
    )
    WHERE khoa.MAKHOA = OLD.MAKHOA;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_soluong_monhoc_insert` AFTER INSERT ON `mhoc` FOR EACH ROW BEGIN
    UPDATE khoa
    SET SLUONGSV = (
        SELECT COUNT(*)
        FROM mhoc
        WHERE mhoc.MAKHOA = khoa.MAKHOA
    )
    WHERE khoa.MAKHOA = NEW.MAKHOA;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_soluong_monhoc_update` AFTER UPDATE ON `mhoc` FOR EACH ROW BEGIN
    UPDATE khoa
    SET SLMON = (
        SELECT COUNT(*)
        FROM mhoc
        WHERE mhoc.MAKHOA = khoa.MAKHOA
    )
    WHERE khoa.MAKHOA = NEW.MAKHOA;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MASV` int(11) NOT NULL,
  `TENSV` varchar(50) NOT NULL,
  `NGAYSINH` date NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `SODIENTHOAI` varchar(10) NOT NULL,
  `MAKHOA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`MASV`, `TENSV`, `NGAYSINH`, `EMAIL`, `SODIENTHOAI`, `MAKHOA`) VALUES
(1, 'Nguyễn Văn A', '1998-05-20', 'nguyenvana@example.com', '0123456789', 1),
(2, 'Trần Thị B', '1997-10-15', 'tranthib@example.com', '0987654321', 2),
(3, 'Lê Văn C', '1999-03-25', 'levanc@example.com', '0369875412', 3),
(4, 'Phạm Thị D', '1996-08-12', 'phamthid@example.com', '0542136789', 4),
(5, 'Hoàng Minh Đức', '1995-06-30', 'hoangminhduc@example.com', '0231567894', 5),
(6, 'Nguyễn Thị Hằng', '1999-11-05', 'nguyenthihang@example.com', '0321598746', 6),
(7, 'Trần Văn Hiếu', '1997-04-18', 'tranvanhieu@example.com', '0975318642', 7),
(8, 'Lê Thị Mai', '1998-09-22', 'lethimai@example.com', '0654213789', 8),
(9, 'Phan Văn Nam', '1996-12-10', 'phanvannam@example.com', '0789654321', 9),
(10, 'Nguyễn Thị Hồng Nhung', '2000-12-31', 'nguyenthinh@example.com', '0912345678', 10),
(11, 'Trần Văn Sơn', '1999-08-17', 'tranvanson@example.com', '0963125487', 1),
(12, 'Lê Thị Thanh Tâm', '1997-01-25', 'lethithanhtam@example.com', '0541236987', 2),
(13, 'Phạm Văn Tùng', '1998-07-08', 'phamvantung@example.com', '0987654321', 3),
(14, 'Hoàng Minh Tuấn', '1996-05-13', 'hoangminhtuan@example.com', '0658741236', 4),
(15, 'Vũ Thị Hằng', '1999-11-20', 'vuthihang@example.com', '0321478963', 5),
(16, 'Nguyễn Văn Hùng', '1997-02-19', 'nguyenvanhung@example.com', '0975318642', 6),
(17, 'Trần Thị Lan', '1998-06-27', 'tranthilan@example.com', '0987456321', 7),
(18, 'Lê Văn Long', '1996-09-05', 'levanlong@example.com', '0632147856', 8),
(19, 'Phạm Thị Mai', '2000-03-10', 'phamthimai@example.com', '0912345678', 9),
(20, 'Hoàng Minh Nhi', '1997-07-15', 'hoangminhnhi@example.com', '0978654321', 10),
(21, 'Nguyễn Thị Oanh', '1998-10-22', 'nguyenthioanh@example.com', '0369874123', 1),
(22, 'Trần Văn Phú', '1996-12-01', 'tranvanphu@example.com', '0923147856', 2),
(23, 'Lê Thị Quỳnh', '1999-04-05', 'lethiquynh@example.com', '0987456321', 3),
(24, 'Phạm Văn Quân', '1997-08-20', 'phamvanquan@example.com', '0658741236', 4),
(25, 'Vũ Thị Tâm', '1996-11-27', 'vuthitam@example.com', '0912345678', 5),
(26, 'Nguyễn Văn Thành', '2000-02-14', 'nguyenvanthanh@example.com', '0978654321', 6),
(27, 'Trần Thị Uyên', '1997-05-17', 'tranthiuyen@example.com', '0369874123', 7),
(28, 'Lê Văn Vương', '1998-09-30', 'levanvuong@example.com', '0923147856', 8),
(29, 'Phạm Thị Yến', '1996-01-08', 'phamthiyen@example.com', '0987456321', 9),
(30, 'Hoàng Minh Đạt', '1999-06-25', 'hoangminhdat@example.com', '0658741236', 10),
(31, 'Nguyễn Thị An', '1997-11-02', 'nguyenthian@example.com', '0912345678', 1),
(32, 'Trần Văn Bảo', '1998-03-05', 'tranvanbao@example.com', '0978654321', 2),
(33, 'Lê Thị Cẩm Tú', '1996-07-12', 'lethicamtu@example.com', '0369874123', 3),
(34, 'Phạm Văn Đạt', '1999-10-19', 'phamvandat@example.com', '0923147856', 4),
(35, 'Vũ Thị Điệp', '1997-02-26', 'vuthidiep@example.com', '0987456321', 5),
(36, 'Nguyễn Văn Hải', '1996-06-30', 'nguyenvanhai@example.com', '0658741236', 6),
(37, 'Trần Thị Kim Anh', '1998-12-07', 'tranthikimanh@example.com', '0912345678', 7),
(38, 'Lê Văn Minh', '2000-04-14', 'levanminh@example.com', '0978654321', 8),
(39, 'Phạm Thị Ngọc', '1997-09-21', 'phamthingoc@example.com', '0369874123', 9),
(40, 'Vũ Thị Thanh', '1996-01-28', 'vuthithanh@example.com', '0923147856', 10),
(41, 'Nguyễn Văn Toàn', '1999-07-05', 'nguyenvantoan@example.com', '0987456321', 1),
(42, 'Trần Thị Xuân', '1997-10-12', 'tranthixuan@example.com', '0658741236', 2),
(43, 'Lê Văn Đức', '1996-02-19', 'levanduc@example.com', '0912345678', 3),
(44, 'Phạm Thị Hằng', '1998-05-28', 'phamthihang@example.com', '0978654321', 4),
(45, 'Vũ Văn Hải', '1997-09-05', 'vuvanhai@example.com', '0369874123', 5),
(46, 'Nguyễn Thị Kim', '2000-01-12', 'nguyenthikim@example.com', '0923147856', 6),
(47, 'Trần Văn Nam', '1998-04-20', 'tranvannam@example.com', '0987456321', 7),
(48, 'Lê Thị Lan', '1996-08-27', 'lethilan@example.com', '0658741236', 8),
(49, 'Phạm Văn Quốc', '1999-12-04', 'phamvanquoc@example.com', '0912345678', 9),
(50, 'Vũ Thị Ngọc', '1997-03-13', 'vuthingoc@example.com', '0978654321', 10),
(51, 'Nguyễn Văn Sơn', '1996-07-20', 'nguyenvanson@example.com', '0369874123', 1),
(52, 'Trần Thị Thúy', '1999-11-27', 'tranthithuy@example.com', '0923147856', 2),
(53, 'Lê Văn Hưng', '1997-03-04', 'levanhung@example.com', '0987456321', 3),
(54, 'Phạm Thị Diệu Linh', '1998-06-11', 'phamthidieulinh@example.com', '0658741236', 4),
(55, 'Vũ Văn Đức', '1996-10-18', 'vuvanduc@example.com', '0912345678', 5),
(56, 'Nguyễn Thị Hạnh', '2000-02-25', 'nguyenthihanh@example.com', '0978654321', 6),
(57, 'Trần Văn Tuấn', '1997-06-03', 'tranvantuan@example.com', '0369874123', 7),
(58, 'Lê Thị Tuyết', '1998-09-10', 'lethituyet@example.com', '0923147856', 8),
(59, 'Phạm Văn Lâm', '1996-01-17', 'phamvanlam@example.com', '0987456321', 9),
(60, 'Vũ Thị Hương', '1999-05-24', 'vuthihuong@example.com', '0658741236', 10),
(61, 'Nguyễn Văn Đạt', '1997-10-01', 'nguyenvandat@example.com', '0912345678', 1),
(62, 'Trần Thị Hà', '1998-02-08', 'tranthiha@example.com', '0978654321', 2),
(63, 'Lê Văn Công', '1996-06-17', 'levancong@example.com', '0369874123', 3),
(64, 'Phạm Thị Tâm', '1999-09-24', 'phamthitam@example.com', '0923147856', 4),
(65, 'Vũ Văn Bảo', '1997-01-31', 'vuvanbao@example.com', '0987456321', 5),
(66, 'Nguyễn Thị Thu', '1996-05-08', 'nguyenthithu@example.com', '0658741236', 6),
(67, 'Trần Văn Hào', '1998-08-15', 'tranvanhao@example.com', '0912345678', 7),
(68, 'Lê Thị Hồng', '2000-11-22', 'lethihong@example.com', '0978654321', 8),
(69, 'Phạm Văn Đại', '1997-04-01', 'phamvandai@example.com', '0369874123', 9),
(70, 'Vũ Thị Thuỳ', '1996-07-10', 'vuthithuy@example.com', '0923147856', 10),
(71, 'Nguyễn Văn An', '1999-10-17', 'nguyenvanan@example.com', '0987456321', 1),
(72, 'Trần Thị Bình', '1997-02-24', 'tranthibinh@example.com', '0658741236', 2),
(73, 'Lê Văn Cường', '1996-06-03', 'levancuong@example.com', '0912345678', 3),
(74, 'Phạm Thị Lan', '1998-09-10', 'phamthilan@example.com', '0978654321', 4),
(75, 'Vũ Văn Đạt', '1997-01-17', 'vuvandat@example.com', '0369874123', 5),
(76, 'Nguyễn Thị Dung', '2000-04-24', 'nguyenthidung@example.com', '0923147856', 6),
(77, 'Trần Văn Hải', '1998-08-01', 'tranvanhai@example.com', '0987456321', 7),
(78, 'Lê Thị Hoa', '1996-10-08', 'lethihoa@example.com', '0658741236', 8),
(79, 'Phạm Văn Thanh', '1999-01-15', 'phamvanthanh@example.com', '0912345678', 9),
(80, 'Vũ Thị Hương', '1997-03-25', 'vuthihuong@example.com', '0978654321', 10);

--
-- Triggers `sinhvien`
--
DELIMITER $$
CREATE TRIGGER `update_soluong_sinhvien_delete` AFTER DELETE ON `sinhvien` FOR EACH ROW BEGIN
    UPDATE khoa
    SET SLUONGSV = (
        SELECT COUNT(*)
        FROM sinhvien
        WHERE sinhvien.MAKHOA = khoa.MAKHOA
    )
    WHERE khoa.MAKHOA = OLD.MAKHOA;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_soluong_sinhvien_insert` AFTER INSERT ON `sinhvien` FOR EACH ROW BEGIN
    UPDATE khoa
    SET SLUONGSV = (
        SELECT COUNT(*)
        FROM sinhvien
        WHERE sinhvien.MAKHOA = khoa.MAKHOA
    )
    WHERE khoa.MAKHOA = NEW.MAKHOA;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_soluong_sinhvien_update` AFTER UPDATE ON `sinhvien` FOR EACH ROW BEGIN
    UPDATE khoa
    SET SLUONGSV = (
        SELECT COUNT(*)
        FROM sinhvien
        WHERE sinhvien.MAKHOA = khoa.MAKHOA
    )
    WHERE khoa.MAKHOA = NEW.MAKHOA;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `magv` int(11) NOT NULL,
  `tengiangvien` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `SoDienThoai` varchar(50) NOT NULL,
  `makhoa` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `quyen` varchar(50) NOT NULL DEFAULT 'giaovien'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`magv`, `tengiangvien`, `email`, `gioitinh`, `SoDienThoai`, `makhoa`, `trangthai`, `matkhau`, `quyen`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvana@example.com', 1, '0987654321', 1, 1, 'password1', 'admin'),
(2, 'Trần Thị B', 'tranthib@example.com', 0, '0123456789', 2, 1, 'password2', 'admin'),
(3, 'Lê Văn C', 'levanc@example.com', 1, '0909090909', 3, 1, 'password3', 'giaovien'),
(4, 'Phạm Thị D', 'phamthid@example.com', 0, '0987654321', 4, 1, 'password4', 'giaovien'),
(5, 'Hoàng Văn E', 'hoangvane@example.com', 1, '0123456789', 5, 1, 'password5', 'admin'),
(6, 'Lý Thị F', 'lythif@example.com', 0, '0909090909', 6, 1, 'password6', 'giaovien'),
(7, 'Trần Văn G', 'tranvang@example.com', 1, '0987654321', 7, 1, 'password7', 'giaovien'),
(8, 'Nguyễn Thị H', 'nguyenthih@example.com', 0, '0123456789', 8, 1, 'password8', 'admin'),
(9, 'Lê Văn I', 'levani@example.com', 1, '0909090909', 9, 1, 'password9', 'giaovien'),
(10, 'Phạm Thị K', 'phamthik@example.com', 0, '0987654321', 10, 1, 'password10', 'giaovien'),
(11, 'Hoàng Văn L', 'hoangvanl@example.com', 1, '0123456789', 1, 1, 'password11', 'admin'),
(12, 'Lý Thị M', 'lythim@example.com', 0, '0909090909', 2, 1, 'password12', 'giaovien'),
(13, 'Trần Văn N', 'tranvann@example.com', 1, '0987654321', 3, 1, 'password13', 'giaovien'),
(14, 'Nguyễn Thị O', 'nguyenthio@example.com', 0, '0123456789', 4, 1, 'password14', 'admin'),
(15, 'Lê Văn P', 'levanp@example.com', 1, '0909090909', 5, 1, 'password15', 'giaovien'),
(16, 'Phạm Thị Q', 'phamthiq@example.com', 0, '0987654321', 6, 1, 'password16', 'giaovien'),
(17, 'Hoàng Văn R', 'hoangvanr@example.com', 1, '0123456789', 7, 1, 'password17', 'admin'),
(18, 'Lý Thị S', 'lythis@example.com', 0, '0909090909', 8, 1, 'password18', 'giaovien'),
(19, 'Trần Văn T', 'tranvant@example.com', 1, '0987654321', 9, 1, 'password19', 'giaovien'),
(20, 'Nguyễn Thị U', 'nguyenthiu@example.com', 0, '0123456789', 10, 1, 'password20', 'admin'),
(21, 'Hoàng Văn V', 'hoangvanv@example.com', 1, '0909090909', 1, 1, 'password21', 'giaovien'),
(22, 'Lý Thị X', 'lythix@example.com', 0, '0987654321', 2, 1, 'password22', 'giaovien'),
(23, 'Trần Văn Y', 'tranvany@example.com', 1, '0123456789', 3, 1, 'password23', 'admin'),
(24, 'Nguyễn Thị Z', 'nguyenthiz@example.com', 0, '0909090909', 4, 1, 'password24', 'giaovien'),
(25, 'Lê Văn An', 'levanan@example.com', 1, '0987654321', 5, 1, 'password25', 'giaovien'),
(26, 'Phạm Thị Bình', 'phamthibinh@example.com', 0, '0123456789', 6, 1, 'password26', 'admin'),
(27, 'Hoàng Văn Cường', 'hoangvancuong@example.com', 1, '0909090909', 7, 1, 'password27', 'giaovien'),
(28, 'Lý Thị Dung', 'lythidung@example.com', 0, '0987654321', 8, 1, 'password28', 'giaovien'),
(29, 'Trần Văn Dũng', 'tranvandung@example.com', 1, '0123456789', 9, 1, 'password29', 'admin'),
(30, 'Nguyễn Thị Dương', 'nguyenthiduong@example.com', 0, '0909090909', 10, 1, 'password30', 'giaovien'),
(31, 'Lê Văn Duy', 'levanduy@example.com', 1, '0987654321', 1, 1, 'password31', 'giaovien'),
(32, 'Phạm Thị Dương', 'phamthiduong@example.com', 0, '0123456789', 2, 1, 'password32', 'admin'),
(33, 'Hoàng Văn Đạt', 'hoangvandat@example.com', 1, '0909090909', 3, 1, 'password33', 'giaovien'),
(34, 'Lý Thị Diễm', 'lythidiem@example.com', 0, '0987654321', 4, 1, 'password34', 'giaovien'),
(35, 'Trần Văn Đức', 'tranvanduc@example.com', 1, '0123456789', 5, 1, 'password35', 'admin'),
(36, 'Nguyễn Thị Đào', 'nguyenthidao@example.com', 0, '0909090909', 6, 1, 'password36', 'giaovien'),
(37, 'Lê Văn Điệp', 'levandiep@example.com', 1, '0987654321', 7, 1, 'password37', 'giaovien'),
(38, 'Phạm Thị Điểm', 'phamthidiem@example.com', 0, '0123456789', 8, 1, 'password38', 'admin'),
(39, 'Hoàng Văn Đông', 'hoangvandong@example.com', 1, '0909090909', 9, 1, 'password39', 'giaovien'),
(40, 'Lý Thị Đường', 'lythiduong@example.com', 0, '0987654321', 10, 1, 'password40', 'giaovien'),
(41, 'Trần Văn Hải', 'tranvanhai@example.com', 1, '0123456789', 1, 1, 'password41', 'admin'),
(42, 'Nguyễn Thị Hằng', 'nguyenthihang@example.com', 0, '0909090909', 2, 1, 'password42', 'giaovien'),
(43, 'Lê Văn Hùng', 'levanhung@example.com', 1, '0987654321', 3, 1, 'password43', 'giaovien'),
(44, 'Phạm Thị Hương', 'phamthihuong@example.com', 0, '0123456789', 4, 1, 'password44', 'admin'),
(45, 'Hoàng Văn Khánh', 'hoangvankhanh@example.com', 1, '0909090909', 5, 1, 'password45', 'giaovien'),
(46, 'Lý Thị Lan', 'lythilan@example.com', 0, '0987654321', 6, 1, 'password46', 'giaovien'),
(47, 'Trần Văn Lực', 'tranvanluc@example.com', 1, '0123456789', 7, 1, 'password47', 'admin'),
(48, 'Nguyễn Thị Lương', 'nguyenthiluong@example.com', 0, '0909090909', 8, 1, 'password48', 'giaovien'),
(49, 'Lê Văn Minh', 'levanminh@example.com', 1, '0987654321', 9, 1, 'password49', 'giaovien'),
(50, 'Phạm Thị Mỹ', 'phamthimy@example.com', 0, '0123456789', 10, 1, 'password50', 'admin'),
(51, 'Hoàng Văn Nam', 'hoangvannam@example.com', 1, '0909090909', 1, 1, 'password51', 'giaovien'),
(52, 'Lý Thị Nhung', 'lythinhung@example.com', 0, '0987654321', 2, 1, 'password52', 'giaovien'),
(53, 'Trần Văn Oanh', 'tranvanoanh@example.com', 1, '0123456789', 3, 1, 'password53', 'admin'),
(54, 'Nguyễn Thị Phương', 'nguyenthiphuong@example.com', 0, '0909090909', 4, 1, 'password54', 'giaovien'),
(55, 'Lê Văn Quân', 'levanquan@example.com', 1, '0987654321', 5, 1, 'password55', 'giaovien'),
(56, 'Phạm Thị Quỳnh', 'phamthiquynh@example.com', 0, '0123456789', 6, 1, 'password56', 'admin'),
(57, 'Hoàng Văn Rất', 'hoangvanrat@example.com', 1, '0909090909', 7, 1, 'password57', 'giaovien'),
(58, 'Lý Thị Sáng', 'lythisang@example.com', 0, '0987654321', 8, 1, 'password58', 'giaovien'),
(59, 'Trần Văn Tâm', 'tranvantam@example.com', 1, '0123456789', 9, 1, 'password59', 'admin'),
(60, 'Nguyễn Thị Thảo', 'nguyenthithao@example.com', 0, '0909090909', 10, 1, 'password60', 'giaovien'),
(61, 'Lê Văn Thành', 'levanthanh@example.com', 1, '0987654321', 1, 1, 'password61', 'giaovien'),
(62, 'Phạm Thị Thu', 'phamthithu@example.com', 0, '0123456789', 2, 1, 'password62', 'admin'),
(63, 'Hoàng Văn Tiến', 'hoangvantien@example.com', 1, '0909090909', 3, 1, 'password63', 'giaovien'),
(64, 'Lý Thị Thúy', 'lythithuy@example.com', 0, '0987654321', 4, 1, 'password64', 'giaovien'),
(65, 'Trần Văn Trí', 'tranvantri@example.com', 1, '0123456789', 5, 1, 'password65', 'admin'),
(66, 'Nguyễn Thị Tuyết', 'nguyenthituyet@example.com', 0, '0909090909', 6, 1, 'password66', 'giaovien'),
(67, 'Lê Văn Tùng', 'levantung@example.com', 1, '0987654321', 7, 1, 'password67', 'giaovien'),
(68, 'Phạm Thị Uyên', 'phamthiuyen@example.com', 0, '0123456789', 8, 1, 'password68', 'admin'),
(69, 'Hoàng Văn Vĩ', 'hoangvanvi@example.com', 1, '0909090909', 9, 1, 'password69', 'giaovien'),
(70, 'Lý Thị Xuân', 'lythixuan@example.com', 0, '0987654321', 10, 1, 'password70', 'giaovien'),
(71, 'Trần Văn Yên', 'tranvanyen@example.com', 1, '0123456789', 1, 1, 'password71', 'admin'),
(72, 'Nguyễn Thị Yến', 'nguyenthiyen@example.com', 0, '0909090909', 2, 1, 'password72', 'giaovien'),
(73, 'Lê Văn Yết', 'levanyet@example.com', 1, '0987654321', 3, 1, 'password73', 'giaovien'),
(74, 'Phạm Thị Yến', 'phamthiyen@example.com', 0, '0123456789', 4, 1, 'password74', 'admin'),
(75, 'Hoàng Văn Vinh', 'hoangvanvinh@example.com', 1, '0909090909', 5, 1, 'password75', 'giaovien'),
(76, 'Lý Thị Vân', 'lythivan@example.com', 0, '0987654321', 6, 1, 'password76', 'giaovien'),
(77, 'Trần Văn Tài', 'tranvantai@example.com', 1, '0123456789', 7, 1, 'password77', 'admin'),
(78, 'Nguyễn Thị Thanh', 'nguyenthithanh@example.com', 0, '0909090909', 8, 1, 'password78', 'giaovien'),
(79, 'Lê Văn Thành', 'levanthanh@example.com', 1, '0987654321', 9, 1, 'password79', 'giaovien'),
(80, 'Phạm Thị Thu Hà', 'phamthithuha@example.com', 0, '0123456789', 10, 1, 'password80', 'admin'),
(81, 'Hoàng Văn Vĩnh', 'hoangvanvinh@example.com', 1, '0909090909', 1, 1, 'password81', 'giaovien'),
(82, 'Lý Thị Vân Anh', 'lythivananh@example.com', 0, '0987654321', 2, 1, 'password82', 'giaovien'),
(83, 'Trần Văn Sơn', 'tranvanson@example.com', 1, '0123456789', 3, 1, 'password83', 'admin'),
(84, 'Nguyễn Thị Tâm', 'nguyenthitam@example.com', 0, '0909090909', 4, 1, 'password84', 'giaovien'),
(85, 'Lê Văn Duyệt', 'levanduyet@example.com', 1, '0987654321', 5, 1, 'password85', 'giaovien'),
(86, 'Phạm Thị Hồng', 'phamthihong@example.com', 0, '0123456789', 6, 1, 'password86', 'admin'),
(87, 'Hoàng Văn Bình', 'hoangvanbinh@example.com', 1, '0909090909', 7, 1, 'password87', 'giaovien'),
(88, 'Lý Thị Mai', 'lythimai@example.com', 0, '0987654321', 8, 1, 'password88', 'giaovien'),
(89, 'Trần Văn Hoa', 'tranvanhoa@example.com', 1, '0123456789', 9, 1, 'password89', 'admin'),
(90, 'Nguyễn Thị Hải', 'nguyenthihai@example.com', 0, '0909090909', 10, 1, 'password90', 'giaovien'),
(91, 'Lê Văn Khánh', 'levankhanh@example.com', 1, '0987654321', 1, 1, 'password91', 'giaovien'),
(92, 'Phạm Thị Loan', 'phamthiloan@example.com', 0, '0123456789', 2, 1, 'password92', 'admin'),
(93, 'Hoàng Văn Bảo', 'hoangvanbao@example.com', 1, '0909090909', 3, 1, 'password93', 'giaovien'),
(94, 'Lý Thị Thơ', 'lythitho@example.com', 0, '0987654321', 4, 1, 'password94', 'giaovien'),
(95, 'Trần Văn Thành', 'tranvanthanh@example.com', 1, '0123456789', 5, 1, 'password95', 'admin'),
(96, 'Nguyễn Thị Hòa', 'nguyenthihoa@example.com', 0, '0909090909', 6, 1, 'password96', 'giaovien'),
(97, 'Lê Văn Tuấn', 'levantuan@example.com', 1, '0987654321', 7, 1, 'password97', 'giaovien'),
(98, 'Phạm Thị Mỹ Linh', 'phamthimylinh@example.com', 0, '0123456789', 8, 1, 'password98', 'admin'),
(99, 'Hoàng Văn Tài', 'hoangvantai@example.com', 1, '0909090909', 9, 1, 'password99', 'giaovien'),
(100, 'Lý Thị Diệu', 'lythidieu@example.com', 0, '0987654321', 10, 1, 'password100', 'giaovien');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MAKHOA`);

--
-- Indexes for table `mhoc`
--
ALTER TABLE `mhoc`
  ADD PRIMARY KEY (`IDMHOC`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MASV`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`magv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `MAKHOA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mhoc`
--
ALTER TABLE `mhoc`
  MODIFY `IDMHOC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `MASV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `magv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
