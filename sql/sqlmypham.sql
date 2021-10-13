-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 09:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sqlmypham`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_account` int(30) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(5) NOT NULL,
  `ho_ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gioi_tinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_account`, `user_name`, `password`, `level`, `ho_ten`, `dien_thoai`, `gioi_tinh`, `dia_chi`) VALUES
(11, 'thao', '202cb962ac59075b964b07152d234b70', 3, 'tthao', '123', 'Nữ', '45'),
(12, 'thaothao', '17f9dd3b1bcc120b7052d5ba4a2a41b9', 3, 'Nguyễn Thị Thảo', '12345679', 'Nữ', '58 3.2 NK,CT');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(50) NOT NULL,
  `name_banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `name_banner`, `image_banner`) VALUES
(3, '', 'baner_4.jpg'),
(4, '', 'baner_2.jpg'),
(5, '', 'baner_3.jpg'),
(6, '', 'baner_1.jpg'),
(7, '', 'baner_5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

CREATE TABLE `don_hang` (
  `ma_don_hang` int(50) NOT NULL,
  `id_product` int(50) NOT NULL,
  `name_product` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `so_luong` int(50) NOT NULL,
  `tong_tien` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `don_hang`
--

INSERT INTO `don_hang` (`ma_don_hang`, `id_product`, `name_product`, `so_luong`, `tong_tien`) VALUES
(22, 4, 'Bộ kit Murad Better Skin Bonus GWP', 1, 1806000),
(23, 17, 'Kem lót trang điểm chống lão hóa Dermalogica Skinperfect Primer ', 1, 1962000),
(23, 18, 'Son Christian Louboutin Velvet Matte Lip', 2, 7920000),
(23, 60, 'Tinh chất căng mọng Murad Hydro Dynamic Quenching Essence Pro', 1, 6351000),
(23, 62, 'Collagen thế hệ mới Murad Rapid Collagen Infusion Pro', 1, 6858000),
(23, 63, 'Collagen thế hệ mới Murad Rapid Collagen Infusion', 1, 2700000),
(25, 18, 'Son Christian Louboutin Velvet Matte Lip', 1, 3960000),
(25, 61, 'Tinh chất căng mọng Murad Hydro Dynamic Quenching Essence', 1, 2691000),
(26, 18, 'Son Christian Louboutin Velvet Matte Lip', 1, 3960000);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id_hd` int(50) NOT NULL,
  `ho_ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_dat_hang` date NOT NULL,
  `dien_thoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id_hd`, `ho_ten`, `ngay_dat_hang`, `dien_thoai`, `dia_chi`) VALUES
(22, 'Lữ Quí Long', '2016-08-15', '0984114827', '21 Võ trường toản'),
(23, 'Quách què', '2016-08-22', '0986369456', ''),
(25, 'Lữ Quí Long', '2016-08-22', '0984114827', '21 Võ trường toản'),
(26, 'Lữ Quí Long', '2016-08-25', '0984114827', '21 Võ trường toản');

-- --------------------------------------------------------

--
-- Table structure for table `logo_website`
--

CREATE TABLE `logo_website` (
  `id_logo` int(50) NOT NULL,
  `name_logo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_logo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logo_website`
--

INSERT INTO `logo_website` (`id_logo`, `name_logo`, `image_logo`) VALUES
(1, 'Mỹ phẩm cao cấp', 'logo_T.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(10) NOT NULL,
  `name_menu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link_menu` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `name_menu`, `link_menu`) VALUES
(1, 'Trang Chủ', 'index.php'),
(2, 'Mỹ Phẩm', 'my-pham.php'),
(3, 'Trang Điểm', 'page-menu/trang-diem.php'),
(4, 'Dinh Dưỡng - Sức Khỏe', 'page-menu/dd-suckhoe.php');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id_news` int(20) NOT NULL,
  `tittle_news` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image_news` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `short_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type_news` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `long_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_update` datetime NOT NULL,
  `id_beauti` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `tittle_news`, `image_news`, `short_content`, `type_news`, `long_content`, `date_update`, `id_beauti`) VALUES
(6, '\r\nMẹo độc giúp vòng 1 lép kẹp cũng tăng size chóng mặt chỉ bằng…hành tây', 'medium-vong-1-2.jpg', 'Hành tây chứa nhiều kalium, selenium, vitamin C và các chất chống oxy hóa có khả năng kích thích vòng 1 tăng size nhanh chóng mà không cần sử dụng các sản phẩm hóa học.', '2', '<p>H&agrave;nh t&acirc;y chứa nhiều kalium, selenium, vitamin C v&agrave; c&aacute;c chất chống oxy h&oacute;a c&oacute; khả năng k&iacute;ch th&iacute;ch v&ograve;ng 1 tăng size nhanh ch&oacute;ng m&agrave; kh&ocirc;ng cần sử dụng c&aacute;c sản phẩm h&oacute;a học.</p>\r\n\r\n<p><strong>1. H&agrave;nh t&acirc;y v&agrave; l&ograve;ng trắng trứng</strong></p>\r\n\r\n<p><strong>Chuẩn bị:</strong></p>\r\n\r\n<p>- 1 củ h&agrave;nh t&acirc;y</p>\r\n\r\n<p>- 1 quả trứng g&agrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/3/vong-1-1.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m:</strong></p>\r\n\r\n<p>- H&agrave;nh t&acirc;y bỏ vỏ, cắt nhỏ rồi đem gi&atilde; nhỏ. Trứng t&aacute;ch lấy l&ograve;ng trắng rồi trộn với h&agrave;nh t&acirc;y gi&atilde; nhỏ th&agrave;nh hỗn hợp sệt.</p>\r\n\r\n<p>- Lấy hỗn hợp n&agrave;y thoa l&ecirc;n ngực, kết hợp massage nhẹ nh&agrave;ng khoảng 30 ph&uacute;t rồi rửa lại với nước sạch.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/3/vong-1-2.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p>Với phương ph&aacute;p n&agrave;y&cedil;bạn &aacute;p dụng trước khi đi ngủ để mang lại hiệu quả tốt nhất. Kem nở ngực từ h&agrave;nh t&acirc;y v&agrave; l&ograve;ng trắng trứng kh&ocirc;ng những gi&uacute;p v&ograve;ng 1 nảy nở an to&agrave;n m&agrave; c&ograve;n khiến v&ugrave;ng da n&agrave;y th&ecirc;m tươi trẻ v&agrave; mịn m&agrave;ng hơn rất nhiều.</p>\r\n\r\n<p><strong>2. H&agrave;nh t&acirc;y v&agrave; mật ong</strong></p>\r\n\r\n<p><strong>Chuẩn bị:</strong></p>\r\n\r\n<p>- 1 củ h&agrave;nh t&acirc;y</p>\r\n\r\n<p>- 1 th&igrave;a bột nghệ</p>\r\n\r\n<p>- 2 th&igrave;a mật ong.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/3/vong-1-3.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m:</strong></p>\r\n\r\n<p>- H&agrave;nh t&acirc;y đem &eacute;p lấy nước. Sau đ&oacute; trộn đều với mật ong v&agrave; bột nghệ theo tỉ lệ ở tr&ecirc;n th&agrave;nh hỗn hợp đồng nhất.</p>\r\n\r\n<p>- Tắm rửa sạch sẽ, sau đ&oacute; thoa hỗn hợp n&agrave;y l&ecirc;n bầu ngực v&agrave; kết hợp massage. Sau khi massage khoảng 20 ph&uacute;t, bạn n&ecirc;n mặc &aacute;o ngực v&agrave;o để cố định v&ograve;ng 1 lại. Cuối c&ugrave;ng mới tắm lại với nước sạch như b&igrave;nh thường.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/3/vong-1-4.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p>Nhiều người lo lắng hỗn hợp từ h&agrave;nh t&acirc;y sẽ để lại m&ugrave;i tr&ecirc;n cơ thể th&igrave; ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m nh&eacute;. V&igrave; mật ong sẽ gi&uacute;p kiềm lại m&ugrave;i của h&agrave;nh t&acirc;y v&agrave; kh&ocirc;ng g&acirc;y m&ugrave;i kh&oacute; chịu. Ki&ecirc;n tr&igrave; &aacute;p dụng, chắc chắn bạn sẽ phải bất ngờ v&igrave; sự thay đổi nhanh ch&oacute;ng v&ograve;ng 1 của m&igrave;nh đấy.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/3/vong-1-5.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng!</p>\r\n', '2016-08-29 13:16:00', 0),
(7, '\r\nBận rộn đến mấy cũng nên xông hơi theo cách này 2 lần 1 tuần, nếu không bạn sẽ tiếc cả đời', 'medium-xong-hoi-1.jpg', 'Xông hơi có thể coi là cách làm đẹp đơn giản và an toàn nhất, hãy thực hiện ngay ngày hôm nay để cảm nhận sự khác biệt của làn da.', '2', '<p>X&ocirc;ng hơi c&oacute; thể coi l&agrave; c&aacute;ch l&agrave;m đẹp đơn giản v&agrave; an to&agrave;n nhất, h&atilde;y thực hiện ngay ng&agrave;y h&ocirc;m nay để cảm nhận sự kh&aacute;c biệt của l&agrave;n da.</p>\n\n<p><img alt=\"Xông hơi\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/xong-hoi-1(5).jpg\" /></p>\n\n<p>Kh&ocirc;ng g&acirc;y k&iacute;ch ứng da, kh&ocirc;ng tốn nhiều tiền v&agrave; nguy&ecirc;n liệu rất dễ kiếm để thực hiện. Phương ph&aacute;p x&ocirc;ng hơi được rất nhiều chị em ưa chuộng, cho d&ugrave; l&agrave; da nhờn, da nhạy cảm bạn cũng vẫn y&ecirc;n t&acirc;m &aacute;p dụng. Dựa tr&ecirc;n cơ chế l&agrave;m th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng, gi&uacute;p da đ&agrave;o thải độc tố cũng như bụi bẩn t&iacute;ch tụ l&acirc;u ng&agrave;y, đặc biệt với những chị em thường xuy&ecirc;n trang điểm th&igrave; c&agrave;ng kh&ocirc;ng n&ecirc;n bỏ qua.</p>\n\n<p><strong>- Nguy&ecirc;n liệu cần chuẩn bị</strong></p>\n\n<p><img alt=\"Nguyên liệu cần chuẩn bị\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/xong-hoi-2(5).jpg\" /></p>\n\n<p>+ L&aacute; t&iacute;a t&ocirc;</p>\n\n<p>+ Kinh giới</p>\n\n<p>+ Ngải cứu, chanh, sả</p>\n\n<p><strong>- C&aacute;ch thực hiện</strong></p>\n\n<p><img alt=\"Cách thực hiện\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/xong-hoi-3(4).jpg\" /></p>\n\n<p>+ Mỗi loại nguy&ecirc;n liệu lấy 1 nắm nhỏ đem rửa sạch, loại bỏ phần l&aacute; v&agrave;ng. Sau đ&oacute; cho v&agrave;o nồi đun s&ocirc;i với 1 b&aacute;t nước to c&ugrave;ng 1 ch&uacute;t muối.<br />\n+ Đổ nước x&ocirc;ng ra chậu hoặc để nguy&ecirc;n cả nồi, để gần mặt 1 ch&uacute;t cho hơi n&oacute;ng bốc l&ecirc;n t&aacute;c động đến da, tr&ugrave;m k&iacute;n để ngăn hơi tho&aacute;t ra bằng 1 chiếc khăn hoặc chăn mỏng.&nbsp;</p>\n\n<p><strong>Lưu &yacute; l&agrave; bạn đ&atilde; rửa sạch mặt trước khi x&ocirc;ng.</strong></p>\n\n<p><img alt=\"Lưu ý là bạn đã rửa sạch mặt trước khi xông.\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/xong-hoi-4(5).jpg\" /></p>\n\n<p>+ Kh&ocirc;ng để qu&aacute; gần, tr&aacute;nh l&agrave;m bỏng da. X&ocirc;ng mặt cho đến khi nước nguội th&igrave; th&ocirc;i.</p>\n\n<p>+ Sau khi kết th&uacute;c qu&aacute; tr&igrave;nh x&ocirc;ng hơi, bạn d&ugrave;ng khăn lau kh&ocirc; rồi thoa l&ecirc;n da nước hoa hồng để se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng v&agrave; thực hiện c&aacute;c bước dưỡng da như b&igrave;nh thường.</p>\n\n<p>&Aacute;p dụng &iacute;t nhất 2 lần 1 tuần, nếu c&oacute; thời gian bạn h&atilde;y tăng số lần l&ecirc;n v&agrave;o c&aacute;c buổi tối.</p>\n\n<p><strong>- C&ocirc;ng dụng</strong></p>\n\n<p><img alt=\"Công dụng\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/xong-hoi-5.jpg\" /></p>\n\n<p>Đ&acirc;y đều l&agrave; những loại rau quen thuộc c&oacute; t&aacute;c dụng l&agrave;m sạch da, kh&aacute;ng khuẩn rất tốt. T&iacute;nh chống vi&ecirc;m c&oacute; trong muối, rau ngải cứu hỗ trợ l&agrave;m da giảm sưng mụn hiệu quả. Rau t&iacute;a t&ocirc; chứa vitamin A, C c&ugrave;ng nhiều kho&aacute;ng chất kh&aacute;c gi&uacute;p da s&aacute;ng mịn hơn.</p>\n\n<p>X&ocirc;ng hơi gi&uacute;p đẩy mụn ẩn trồi l&ecirc;n, l&agrave;m sạch lỗ ch&acirc;n l&ocirc;ng từ s&acirc;u b&ecirc;n trong cho da săn chắc, khỏe mạnh, kh&ocirc;ng để mụn c&oacute; cơ hội h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển. B&ecirc;n cạnh đ&oacute; ch&uacute;ng c&ograve;n gi&uacute;p da điều chỉnh lượng b&atilde; nhờn tiết ra, tăng tuần ho&agrave;n m&aacute;u khiến bạn c&oacute; được sắc mặt hồng h&agrave;o v&agrave; tươi trẻ, l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a da tuyệt vời.</p>\n', '2016-08-29 09:24:23', 0),
(8, '\r\nĐây chính là màu tóc ‘’bà ngoại’’ đang khiến giới trẻ sốt sình sịch hiện nay', 'medium-toc-dep-3.jpg', 'Màu tóc ombre xám bạc đang trở thành ‘’hot item’’ thịnh hành nhất hiện nay.', '2', '<p>M&agrave;u t&oacute;c ombre x&aacute;m bạc đang trở th&agrave;nh &lsquo;&rsquo;hot item&rsquo;&rsquo; thịnh h&agrave;nh nhất hiện nay.</p>\r\n\r\n<p><img alt=\"Tóc đẹp\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/toc-dep-1(2).jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c xu hướng t&oacute;c th&igrave; m&agrave;u t&oacute;c cũng được giới trẻ quan t&acirc;m. V&igrave; đ&ocirc;i khi chỉ cần thay đổi m&agrave;u t&oacute;c đ&atilde; c&oacute; thể tạo n&ecirc;n sự kh&aacute;c biệt r&otilde; r&agrave;ng rồi. Nếu muốn sở hữu một m&agrave;u t&oacute;c thời thượng, c&aacute; t&iacute;nh nhưng kh&ocirc;ng qu&aacute; nổi bật v&agrave; &lsquo;&rsquo;chất chơi&rsquo;&rsquo; th&igrave; m&agrave;u t&oacute;c ombre bạc x&aacute;m ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo cho bạn. Nếu như đầu năm 2016 l&agrave; quần v&agrave; gi&agrave;y &lsquo;&rsquo;b&agrave; ngoại&rsquo;&rsquo; l&ecirc;n ng&ocirc;i th&igrave; nửa cuối năm nay, m&agrave;u t&oacute;c &lsquo;&rsquo;b&agrave; ngoại&rsquo;&rsquo; sẽ trở th&agrave;nh &lsquo;&rsquo;hot item&rsquo;&rsquo; được giới trẻ săn l&ugrave;ng.</p>\r\n\r\n<p><img alt=\"Tóc mới\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/toc-dep-2(2).jpg\" /></p>\r\n\r\n<p>Sở dĩ m&agrave;u t&oacute;c n&agrave;y được gọi l&agrave; m&agrave;u t&oacute;c &lsquo;&rsquo;b&agrave; ngoại&rsquo;&rsquo; v&igrave; nh&igrave;n qua sẽ giống như t&oacute;c của người gi&agrave;. Cơn sốt n&agrave;y tạo n&ecirc;n sức h&uacute;t kh&ocirc;ng hề nhỏ phủ s&oacute;ng khắp nơi trong thời gian gần đ&acirc;y v&igrave; kh&iacute; chất c&aacute; t&iacute;nh nhưng kh&ocirc;ng k&eacute;m phần trẻ trung của kiểu t&oacute;c n&agrave;y.</p>\r\n\r\n<p>Muốn m&agrave;u x&aacute;m bạc l&ecirc;n m&agrave;u chuẩn đ&uacute;ng điệu, bạn phải nhuộm t&oacute;c ombre nếu kh&ocirc;ng muốn phải tẩy v&agrave; nhuộm lại qu&aacute; nhiều lần bởi ch&acirc;n t&oacute;c đen mọc ra nhanh. Nếu kh&ocirc;ng muốn nhuộm cả đầu, bạn c&oacute; thể giữ nguy&ecirc;n ch&acirc;n t&oacute;c m&agrave;u đen v&agrave; chỉ nhuộm phần đu&ocirc;i t&oacute;c tr&ocirc;ng cũng rất đẹp v&agrave; c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"Màu tóc\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/toc-dep-3(2).jpg\" /></p>\r\n\r\n<p>&lsquo;&rsquo;Da n&acirc;u, m&ocirc;i tều&rsquo;&rsquo; đang l&agrave; &lsquo;&rsquo;hot trend&rsquo;&rsquo; được giới trẻ ưa chuộng. Th&ecirc;m một điểm cộng của m&agrave;u t&oacute;c &lsquo;&rsquo;b&agrave; ngoại&rsquo;&rsquo; l&agrave; bạn c&oacute; thể thỏa sức trang điểm m&ocirc;i tều cực k&igrave; ăn &yacute; v&agrave; c&aacute; t&iacute;nh. Th&ecirc;m một h&agrave;ng l&ocirc;ng m&agrave;y rậm, sắc tr&ocirc;ng bạn &lsquo;&rsquo;đậm chất T&acirc;y&rsquo;&rsquo; m&agrave; da c&ograve;n s&aacute;ng l&ecirc;n thấy r&otilde;. Với những c&ocirc; n&agrave;ng ưa chuộng phong c&aacute;ch b&aacute;nh b&egrave;o th&igrave; d&ugrave;ng tone son hồng, trang điểm theo phong c&aacute;ch trong veo H&agrave;n Quốc tr&ocirc;ng vẫn v&ocirc; c&ugrave;ng hấp dẫn nh&eacute;.</p>\r\n\r\n<p>H&atilde;y thử &lsquo;&rsquo;l&agrave;m mới bản th&acirc;n&rsquo;&rsquo; bằng m&agrave;u t&oacute;c cực hot, sang chảnh n&agrave;y, bạn sẽ phải bất ngờ v&igrave; sự thay đổi của ch&iacute;nh m&igrave;nh đấy.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng!</p>\r\n', '2016-08-29 06:11:12', 0),
(9, '\r\nĐánh bay sẹo rỗ với những nguyên liệu chưa đến 5k, không thử thì phí cả đời', 'medium-tri-seo-5.jpg', 'Sẹo rỗ cứng đầu là nỗi lo đối với tất cả chị em phụ nữ, cùng thổi bay khuyết điểm ấy với công thức đơn giản dưới đây.', '1', '<p>Ki&ecirc;ng khem, luyện tập vất vả thậm ch&iacute; tốn nhiều tiền v&agrave;o những spa đắt đỏ m&agrave; vẫn bị &aacute;m ảnh bởi lớp mỡ thừa tr&ecirc;n cơ thể th&igrave; h&atilde;y thử nghiệm phương ph&aacute;p dưới đ&acirc;y để sở hữu v&oacute;c d&aacute;ng ngọc ng&agrave; nh&eacute;.</p>\r\n\r\n<p><img alt=\"giảm cân\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/nuoc-uong-giam-can-1(3).jpg\" /></p>\r\n\r\n<p>Phương ph&aacute;p n&agrave;y chỉ cần &aacute;p dụng trong 2 tuần l&agrave; bạn sẽ cảm nhận r&otilde; hiệu quả mang lại. Một lọ gừng ng&acirc;m dấm sẽ gi&uacute;p bạn giảm c&acirc;n nhanh ch&oacute;ng v&agrave; kh&ocirc;ng c&ograve;n phải lo lắng về lớp mỡ thừa tr&ecirc;n cơ thể nữa.</p>\r\n\r\n<p>Gừng c&oacute; t&iacute;nh chất n&oacute;ng, được mệnh danh l&agrave; 1 trong 10 thực phẩm đốt ch&aacute;y chất b&eacute;o hiệu quả, gi&uacute;p giảm c&acirc;n v&agrave; ngăn ngừa b&eacute;o bụng, thon gọn bắp tay rất tốt. Th&agrave;nh phần gingerol v&agrave; shogaol trong gừng gi&uacute;p th&uacute;c đẩy sự ph&acirc;n hủy chất b&eacute;o diễn ra nhanh ch&oacute;ng, ức chế lượng chất b&eacute;o tự nhi&ecirc;n. Khi kết hợp với c&aacute;c axit amin c&oacute; trong dấm gi&uacute;p giảm c&acirc;n v&agrave; th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất thuận lợi hơn.</p>\r\n\r\n<p><strong>T&aacute;c dụng:</strong></p>\r\n\r\n<p><img alt=\"Tác dụng:\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/nuoc-uong-giam-can-2(3).jpg\" /></p>\r\n\r\n<p>- Gừng ng&acirc;m dấm gi&uacute;p giảm mỡ an to&agrave;n, lấy lại v&ograve;ng eo con kiến v&agrave; bắp tay săn chắc. Kh&ocirc;ng những thế, hỗn hợp thần k&igrave; n&agrave;y c&ograve;n gi&uacute;p điều trị chứng mất ngủ, ngăn ngừa l&atilde;o h&oacute;a sớm hiệu quả.</p>\r\n\r\n<p>- Ngo&agrave;i ra, bạn cũng c&oacute; thể kết hợp massage với rượu gừng hoặc uống tr&agrave; gừng h&agrave;ng ng&agrave;y để mang lại hiệu quả tốt hơn.<br />\r\nC&aacute;ch l&agrave;m như sau:</p>\r\n\r\n<p><img alt=\"Tác dụng:1\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/nuoc-uong-giam-can-3(3).jpg\" /></p>\r\n\r\n<p>- Lấy những củ gừng tươi rửa sạch, th&aacute;i nhỏ th&agrave;nh những l&aacute;t mỏng đều nhau. Lưu &yacute; n&ecirc;n chọn gừng tươi để mang lại hiệu quả giảm c&acirc;n, tăng cường ti&ecirc;u h&oacute;a v&agrave; tuần ho&agrave;n m&aacute;u tốt nhất.</p>\r\n\r\n<p>- Xếp những l&aacute;t gừng v&agrave;o chai, sau đ&oacute; đổ ngập dấm v&agrave;o chai. Bạn c&oacute; thể sử dụng dấm gạo hoặc dấm t&aacute;o t&ugrave;y sở th&iacute;ch.</p>\r\n\r\n<p>- Bảo quản ở ngăn m&aacute;t tủ lạnh khoảng 1 tuần v&agrave; d&ugrave;ng dần.</p>\r\n\r\n<p><strong>C&aacute;ch sử dụng:</strong></p>\r\n\r\n<p><img alt=\"Cách sử dụng:\" src=\"http://hoaanhdao.vn/img/08/files/Dandan/nuoc-uong-giam-can-4(2).jpg\" /></p>\r\n\r\n<p>Bạn d&ugrave;ng v&agrave;o buổi s&aacute;ng sau khi ăn khoảng 30 ph&uacute;t l&agrave; tốt nhất. Mỗi lần ăn 2-4 l&aacute;t gừng, sau 2 tuần bạn sẽ thấy mỡ bụng giảm đi r&otilde; rệt. Hi vọng rằng c&ocirc;ng thức giảm c&acirc;n tr&ecirc;n sẽ nhanh ch&oacute;ng gi&uacute;p bạn lấy lại v&oacute;c d&aacute;ng ho&agrave;n hảo, tự tin diện v&aacute;y ngắn trong m&ugrave;a h&egrave; n&agrave;y.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn giảm c&acirc;n th&agrave;nh c&ocirc;ng!</p>\r\n', '2016-08-29 06:18:21', 0),
(10, 'Người Việt ở Mỹ sốt rần rần với phương pháp trị nám được...', 'medium-minh-sang-6.jpg', '', '1', '<p><em><strong>Bị n&aacute;m thật tồi tệ. N&oacute; rất kh&oacute; điều trị, n&oacute; cực kh&oacute; coi, n&oacute; khiến bản th&acirc;n m&igrave;nh&nbsp;bực bội v&agrave; đơn giản đ&ocirc;i l&uacute;c&nbsp;n&oacute; tạo cho ta cảm gi&aacute;c xấu hổ khi tiếp x&uacute;c với người kh&aacute;c&hellip;&nbsp;</strong></em></p>\r\n\r\n<p>Chừng ấy th&ocirc;i l&agrave; cả một vấn đề&nbsp;khiến nhiều chị em đ&atilde; chi ti&ecirc;u h&agrave;ng chục, thậm ch&iacute; trăm triệu để chiến đấu với n&aacute;m, v&agrave; thực sự chẳng mang đến kết quả như họ mong muốn. Bởi tr&ecirc;n thực tế, một số loại kem chỉ c&oacute; thể l&agrave;m s&aacute;ng da tạm thời, một thời gian sau n&aacute;m lại b&ugrave;ng ph&aacute;t. Một số mỹ phẩm c&oacute; thể gi&uacute;p che n&aacute;m kh&aacute; tốt, nhưng kh&ocirc;ng phải l&agrave; rẻ v&agrave; n&oacute; tạo cảm gi&aacute;c kh&aacute; nặng nề. N&aacute;m da cứ thế, l&agrave; một v&ograve;ng tuần ho&agrave;n luẩn quẩn m&agrave; nhiều phụ nữ kết th&uacute;c n&oacute; với một sự thất vọng.</p>\r\n\r\n<p>Một số chị em, thay v&igrave; bỏ cuộc, tiếp tục trao niềm tin cho c&aacute;c loại kem c&oacute; chứa hydroquinone, nhưng họ kh&ocirc;ng ngờ rằng, tuy chất ấy c&oacute; thể trị n&aacute;m nhưng lại t&aacute;c động nguy hiểm cho gan, tuyến gi&aacute;p, tuyến thượng thận. Một số b&aacute;c sĩ, chuy&ecirc;n gia cho lời khuy&ecirc;n đi liệu tr&igrave;nh laser n&agrave;y nọ, nhưng kết quả mang lại đ&ocirc;i khi kh&ocirc;ng được như sự h&agrave;i l&ograve;ng&hellip;</p>\r\n\r\n<p>T&ocirc;i chắc chắn kh&ocirc;ng &iacute;t chị em rơi v&agrave;o những trường hợp tr&ecirc;n. V&agrave; ch&iacute;nh t&ocirc;i cũng kh&ocirc;ng ngoại lệ.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/co/minh-sang-13.png\" /></p>\r\n\r\n<p><em>&quot;T&ocirc;i của 10 năm trước đ&atilde; bị n&aacute;m, nhưng kh&ocirc;ng qu&aacute; nặng...&quot;</em></p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/co/minh-sang-15.png\" /></p>\r\n\r\n<p><em>&quot;V&agrave; 3 năm trước t&igrave;nh trạng nặng hơn do d&ugrave;ng mỹ phẩm sai c&aacute;ch&quot;</em></p>\r\n\r\n<p><strong>TRỊ N&Aacute;M - Ở MỸ, Ở&nbsp;VIỆT NAM HAY Ở&nbsp;NƠI Đ&Acirc;U TR&Ecirc;N TO&Agrave;N THẾ GIỚI NHƯ NHAU CẢ,&nbsp;CŨNG LẮM GIAN NAN</strong></p>\r\n\r\n<p>T&ocirc;i l&agrave; Minh Sang, hiện đang sống v&agrave; kinh doanh tại Mỹ.&nbsp;T&ocirc;i đ&atilde; chiến đấu&nbsp;với t&igrave;nh trạng&nbsp;n&aacute;m da trong khoảng 10 năm. T&ocirc;i được x&aacute;c nhận&nbsp;nguy&ecirc;n nh&acirc;n&nbsp;g&acirc;y ra n&aacute;m l&agrave;&nbsp;bởi một số loại thuốc kh&aacute;ng sinh t&ocirc;i từng d&ugrave;ng l&agrave;m&nbsp;ảnh hưởng đến nội tiết&nbsp;v&agrave; do tiếp x&uacute;c với &aacute;nh mặt trời.&nbsp;N&oacute; đ&atilde; ph&aacute;t triển tồi tệ hơn đ&aacute;ng kể trong 3 năm qua. T&ocirc;i c&oacute; cả&nbsp;những đốm n&aacute;m&nbsp;tr&ecirc;n cả hai m&aacute; v&agrave; t&ocirc;i dường như kh&ocirc;ng thể n&agrave;o trị được n&oacute;. Mấy năm qua, l&agrave;n&nbsp;da của t&ocirc;i đ&atilde; cải thiện hơn một ch&uacute;t&nbsp;nhờ x&agrave;i c&aacute;c loại kem hydroquinone đắt tiền, nhưng n&oacute; lu&ocirc;n lu&ocirc;n quay trở lại chỉ sau v&agrave;i th&aacute;ng ngưng sử dụng đ&uacute;ng như bản chất của n&oacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/co/minh-sang-2.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/co/minh-sang-3.jpg\" /></p>\r\n\r\n<p><em>&quot;Trị th&agrave;nh c&ocirc;ng&nbsp;n&aacute;m đ&atilde; l&acirc;u, t&ocirc;i c&oacute; cơ hội chia sẻ h&igrave;nh ảnh của m&igrave;nh cho chị em&quot;</em></p>\r\n\r\n<p>T&ocirc;i cũng&nbsp;c&oacute; từng&nbsp;sử dụng một mẫu thử của một sản phẩm trị n&aacute;m nổi tiếng của T&acirc;y Ban Nha, kh&aacute; h&agrave;i l&ograve;ng về mẫu thử v&agrave; mua về x&agrave;i&nbsp; trong 2 th&aacute;ng, v&agrave; t&ocirc;i cũng đ&atilde; thấy chỉ c&oacute; sự cải thiện rất nhỏ, d&ugrave; t&ocirc;i lu&ocirc;n chống nắng với chỉ số chống nắng SPF 50 cho da mặt v&agrave; cổ. T&ocirc;i cảm thấy như&nbsp;<a href=\"http://hoaanhdao.vn/kem-chong-nang.html\" target=\"_blank\" title=\"kem chống nắng\">kem chống nắng</a>&nbsp;đang bảo vệ khu&ocirc;n mặt của t&ocirc;i v&agrave; ngăn ngừa thiệt hại mới chứ những điểm n&aacute;m cũ vẫn c&ograve;n trơ l&igrave;. T&ocirc;i rất tự &yacute; thức được rằng, việc trị n&aacute;m kh&oacute; khăn đến nhường n&agrave;o từ l&uacute;c đầu.</p>\r\n\r\n<p>T&ocirc;i từ chối rời khỏi nh&agrave; những cuộc hẹn gấp khi&nbsp;kh&ocirc;ng đủ thời gian để t&ocirc;i trang điểm. T&ocirc;i đ&atilde; từng&nbsp;rất mệt mỏi về những&nbsp;điều n&agrave;y.&nbsp;T&ocirc;i nhớ đến l&agrave;n da đẹp t&ocirc;i đ&atilde; c&oacute; khi t&ocirc;i c&ograve;n trẻ v&agrave; rất th&iacute;ch gương mặt mộc tự nhi&ecirc;n. T&ocirc;i cảm thấy m&igrave;nh phải l&agrave;m g&igrave; đ&oacute; cho l&agrave;n da của m&igrave;nh.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;t&ocirc;i đến b&aacute;c sĩ da liễu của t&ocirc;i&nbsp;để kh&aacute;m ung thư da định kỳ, t&ocirc;i đ&atilde; nhận một đề nghị l&agrave; n&ecirc;n điều trị bằng bộ sản phẩm trị n&aacute;m Sakura từ một người chị tầm 50 tuổi (hơn t&ocirc;i 7 tuổi) cũng đi kh&aacute;m c&ugrave;ng ph&ograve;ng kh&aacute;m đ&oacute;. Chị ấy n&oacute;i rằng bản th&acirc;n chị ấy đ&atilde; d&ugrave;ng bộ sản phẩm trị n&aacute;m của Sakura do người nh&agrave; từ Việt Nam gửi qua. Chị ấy cũng chia sẻ cụ thể, rằng chị ấy vẫn đang duy tr&igrave; sử dụng vi&ecirc;n uống trong bộ trị n&aacute;m để ngừa n&aacute;m t&aacute;i ph&aacute;t v&agrave; chống nhăn da lu&ocirc;n. Chị ấy c&oacute; khoe da cho t&ocirc;i xem v&agrave; thực sự thấy da chị ấy rất đẹp. Chị ấy bảo tới gặp b&aacute;c sĩ để xem da v&agrave; sử khỏe của m&igrave;nh như thế n&agrave;o v&agrave; chia sẻ niềm vui với t&ocirc;i khi mọi thứ đều ổn cả.</p>\r\n\r\n<p><strong>TỨC TỐC TỪ MỸ GỌI VỀ VIỆT NAM, NHỜ NGƯỜI NH&Agrave;&nbsp;MUA SẢN PHẨM TRỊ N&Aacute;M</strong></p>\r\n\r\n<p>Như gặp được v&agrave;ng, theo lời chia sẻ của người chị t&ocirc;i gặp ở ph&ograve;ng kh&aacute;m da liễu, t&ocirc;i gọi điện về nh&agrave; nhờ người th&acirc;n li&ecirc;n hệ đặt mua cho t&ocirc;i bộ sản phẩm trị n&aacute;m của Sakura.&nbsp;T&ocirc;i đ&atilde; quyết định t&igrave;m hiểu v&agrave; mua liệu tr&igrave;nh y chang&nbsp;như&nbsp;chị ấy.</p>\r\n\r\n<p>Cảm gi&aacute;c lần đầu b&ocirc;i kem, hơi b&oacute;ng dầu v&agrave; ch&acirc;m ch&iacute;ch nhẹ, nhưng n&oacute; chỉ k&eacute;o d&agrave;i v&agrave;i gi&acirc;y rồi hết. Sang ng&agrave;y thứ 9&nbsp;sử dụng&nbsp;t&ocirc;i c&oacute;&nbsp;rửa mặt trước khi b&ocirc;i kem, v&agrave; v&ocirc; t&igrave;nh t&ocirc;i rửa mạnh tay&nbsp;n&ecirc;n bị&nbsp;trầy xước nhẹ tại khu vực da n&aacute;m, v&agrave; thật kỳ diệu khi mảng da n&aacute;m đ&oacute; bị cuốn v&agrave;o m&oacute;ng tay của t&ocirc;i, v&ugrave;ng da bị trầy như ph&aacute;t s&aacute;ng. T&ocirc;i tiếp tục b&ocirc;i kem nhưng kh&ocirc;ng b&ocirc;i v&agrave;o mảng da bị trầy ấy như li&ecirc;n hệ với c&ocirc; b&eacute; chuy&ecirc;n vi&ecirc;n tư vấn hướng dẫn cho.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/co/minh-sang-4.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/co/minh-sang-5.jpg\" /></p>\r\n\r\n<p><em>&quot;T&ocirc;i thấy tự tin hơn với l&agrave;n da căng mướt, sạch n&aacute;m&quot;</em></p>\r\n\r\n<p>Những ng&agrave;y đầu, t&ocirc;i đ&atilde; bị sốc khi nh&igrave;n đọc những b&igrave;nh luận về bộ sản phẩm ở một số diễn đ&agrave;n, rằng d&ugrave;ng sản phẩm sẽ khiến da c&agrave;ng sạm n&aacute;m hơn. L&uacute;c ấy, t&ocirc;i soi gương v&agrave; giật m&igrave;nh khi da t&ocirc;i sạm lại thật. T&ocirc;i đ&atilde; vội đ&aacute;nh gi&aacute; rằng những lời n&oacute;i, những g&igrave; t&ocirc;i đọc được về bộ sản phẩm trị n&aacute;m n&agrave;y chỉ l&agrave; những quảng c&aacute;o của nh&agrave; sản xuất hồng để b&aacute;n được sản phẩm, v&agrave; l&uacute;c ấy t&ocirc;i thực sự bức x&uacute;c. Nhưng khi li&ecirc;n hệ với b&aacute;c sĩ về da t&ocirc;i từng đi kh&aacute;m, được giải th&iacute;ch cặn kẻ t&ocirc;i đ&atilde; hiểu hơn nhiều về một sản phẩm trị n&aacute;m đ&uacute;ng nghĩa, v&agrave; những hiệu quả m&agrave; sản phẩm đ&oacute; mang lại. T&ocirc;i biết cơ chế thay đổi l&agrave;n da mới&nbsp;phải sau &iacute;t nhất 28 ng&agrave;y, nghĩa l&agrave; sau 28 ng&agrave;y sử dụng mới thấy hiệu quả thực sự. V&igrave; t&ocirc;i mới d&ugrave;ng bộ sản phẩm n&agrave;y được hơn 10 ng&agrave;y&nbsp;n&ecirc;n t&ocirc;i ki&ecirc;n tr&igrave; để xem t&igrave;nh h&igrave;nh thế n&agrave;o.</p>\r\n\r\n<p>T&ocirc;i cảm thấy biết ơn khi sau&nbsp;30 ng&agrave;y sử dụng, l&agrave;n da của t&ocirc;i đ&atilde; giảm xuống rất nhiều. V&agrave; sau khi kết th&uacute;c liệu tr&igrave;nh 1 bộ trong 3 th&aacute;ng, l&agrave;n da của t&ocirc;i gần như được trả về thời đầu l&uacute;c chưa bị n&aacute;m. T&ocirc;i thấy mừng v&igrave; m&igrave;nh đ&atilde; kh&ocirc;ng bỏ cuộc sớm.</p>\r\n\r\n<p><strong>MỖI LẦN VỀ NƯỚC, BỘ SẢN PHẨM TRỊ N&Aacute;M SAKURA LU&Ocirc;N L&Agrave; QU&Agrave; TẶNG T&Ocirc;I KH&Ocirc;NG THỂ QU&Ecirc;N</strong></p>\r\n\r\n<p>C&oacute; cơ hội về Việt Nam, t&ocirc;i lu&ocirc;n nhớ tới bộ sản phẩm, v&agrave; thường mua v&agrave;i ba bộ để l&agrave;m qu&agrave; tặng cho bạn b&egrave;. V&agrave; cảm thấy vui khi chị em ai cũng rất th&iacute;ch.&nbsp;Hiện tại, d&ugrave; đ&atilde; ngưng liệu tr&igrave;nh từ trước Tết, nhưng sau n&agrave;y t&ocirc;i vẫn duy tr&igrave; d&ugrave;ng vi&ecirc;n uống Sakura HCL. T&ocirc;i vẫn đi kh&aacute;m định kỳ h&agrave;ng th&aacute;ng v&agrave; được b&aacute;c sĩ kết luận sức khỏe tốt, tinh thần cũng ổn định. C&oacute; lẽ phần do t&ocirc;i trị n&aacute;m th&agrave;nh c&ocirc;ng n&ecirc;n thoải m&aacute;i, phần nhờ t&aacute;c dụng của một số th&agrave;nh phần c&oacute; trong vi&ecirc;n uống HCL cho sức khỏe tổng thể của t&ocirc;i. T&ocirc;i thấy vui v&igrave; sản phẩm an to&agrave;n, được b&aacute;c sĩ của t&ocirc;i c&ocirc;ng nhận.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/co/minh-sang-8.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/co/minh-sang-9.jpg\" /></p>\r\n\r\n<p><em>&quot;C&oacute; cơ hội về Việt Nam, bộ trị n&aacute;m lu&ocirc;n l&agrave; qu&agrave; tặng t&ocirc;i nhớ tới&quot;</em></p>\r\n\r\n<p>Bạn c&oacute; n&aacute;m da? H&atilde;y chia sẻ c&acirc;u chuyện của bạn. Nếu bạn đ&atilde; điều trị với bộ sản phẩm trị n&aacute;m của Sakura,&nbsp;t&ocirc;i rất th&iacute;ch nghe c&acirc;u chuyện v&agrave; chia sẻ&nbsp;kinh nghiệm&nbsp;của bạn, v&agrave; cả&nbsp;kết quả của bạn sau khi điều trị nữa. T&ocirc;i mong muốn được nghe nhiều hơn những chia sẻ (d&ugrave; hiệu quả chậm hay l&acirc;u) trung thực từ qu&yacute; bạn, qu&yacute; chị em để ai cũng c&oacute; thể những kinh nghiệm r&uacute;t ra, gi&uacute;p những người điều trị sau n&agrave;y c&oacute; th&ecirc;m nhiều hiểu biết hơn. Cuối c&ugrave;ng, xin ch&uacute;c bạn c&oacute; thể trị n&aacute;m th&agrave;nh c&ocirc;ng như t&ocirc;i, v&agrave; lu&ocirc;n l&agrave; người phụ nữ thật hạnh ph&uacute;c!</p>\r\n\r\n<p><em><strong>Chia sẻ chị Minh Sang ở Mỹ</strong></em></p>\r\n', '2016-08-29 10:25:26', 0),
(11, '\r\nĐánh bay sẹo lồi nhờ 3 loại lá sẵn trong vườn nhà', 'medium-danh-bay-seo-2.jpg', '', '1', '<p>Kh&ocirc;ng phải tốn tiến d&ugrave;ng c&aacute;c phương ph&aacute;p c&ocirc;ng nghệ cao, mỹ phẩm đắt tiền, 3 b&agrave;i thuốc d&acirc;n gian dưới đ&acirc;y sẽ gi&uacute;p bạn trị sẹo v&ocirc; c&ugrave;ng hiệu quả.</p>\r\n\r\n<p>Sẹo lồi xuất hiện tr&ecirc;n da thường do sự tăng qu&aacute; mức collagen l&agrave;nh t&iacute;nh hoặc cơ thể th&uacute;c đẩy l&agrave;m l&agrave;nh vết thương th&aacute;i qu&aacute;. Sẹo lồi kh&ocirc;ng chỉ ảnh hưởng đến sức khỏe m&agrave; c&ograve;n khiến bạn tự ti khi xuất hiện trước đ&aacute;m đ&ocirc;ng.&nbsp;</p>\r\n\r\n<p>Nếu bạn đ&atilde; d&ugrave;ng rất nhiều loại thuốc đắt, mỹ phẩm xa xỉ m&agrave; vẫn kh&ocirc;ng thể x&oacute;a được những vết sẹo cứng đầu tr&ecirc;n gương mặt. Đừng lo lắng, với 3 b&agrave;i thuốc d&acirc;n gian trị sẹo lồi v&ocirc; c&ugrave;ng hiệu quả được truyền lại dưới đ&acirc;y bạn sẽ nhanh ch&oacute;ng khắc phục được t&igrave;nh trạng n&agrave;y.&nbsp;</p>\r\n\r\n<p>Đơn giản, dễ kiếm, an to&agrave;n v&agrave; hiệu quả l&agrave; những ưu điểm của c&aacute;c b&agrave;i thuốc n&agrave;y.&nbsp;</p>\r\n\r\n<p>C&aacute;ch trị sẹo lồi si&ecirc;u hiệu quả từ 3 loại l&aacute; c&oacute; sẵn trong vườn nh&agrave;</p>\r\n\r\n<p><strong>1. Ngải cứu</strong></p>\r\n\r\n<p>Ngải cứu vốn dĩ l&agrave; một b&agrave;i thuốc d&acirc;n gian phổ biến được nhiều người biết đến. Ngo&agrave;i t&aacute;c dụng điều trị một số bệnh về thần kinh như đau đầu, mất ngủ... ngải cứu c&ograve;n c&oacute; thể điều trị sẹo lồi rất tốt nhờ t&iacute;nh khử tr&ugrave;ng v&agrave; khả năng chống oxy h&oacute;a cao.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/2/danh-bay-seo-1.jpg\" /></p>\r\n\r\n<p>Sử dụng ngải cứu để trị sẹo lồi nhờ t&iacute;nh khử tốt</p>\r\n\r\n<p><strong>Nguy&ecirc;n liệu:</strong></p>\r\n\r\n<p>+ 1 nắm l&aacute; ngải cứu tươi</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m:</strong></p>\r\n\r\n<p>Bước 1: Rửa sạch l&aacute; ngải cứu</p>\r\n\r\n<p>Bước 2: Cho l&aacute; ngải cứu v&agrave;o đun lại</p>\r\n\r\n<p>Bước 3: Để nguội bớt rồi d&ugrave;ng miếng vải lọc lấy phần nước</p>\r\n\r\n<p>Bước 4: Bảo quản trong ngăn m&aacute;t tủ lạnh để d&ugrave;ng dần</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/2/danh-bay-seo-2.jpg\" /></p>\r\n\r\n<p>Ngải cứu gi&atilde; n&aacute;t</p>\r\n\r\n<p><strong>C&aacute;ch sử dụng:</strong></p>\r\n\r\n<p>Đầu ti&ecirc;n bạn rửa sạch v&ugrave;ng bị sẹo với nước. Tiếp đến d&ugrave;ng b&ocirc;ng thấm nước ngải cứu xoa l&ecirc;n v&ugrave;ng sẹo lồi thật kỳ, cuối c&ugrave;ng để kh&ocirc; tự nhi&ecirc;n rồi rửa sạch lại với nước.</p>\r\n\r\n<p>Một tuần bạn n&ecirc;n thực hiện 3 lần để c&oacute; kết quả tốt nhất. Chỉ sau 3 tuần bạn sẽ nh&igrave;n thấy hiệu quả bất ngờ.</p>\r\n\r\n<p>C&aacute;ch trị sẹo lồi bằng ngải cứu v&ocirc; c&ugrave;ng đơn giản nhưng mang đến hiệu quả cực kỳ cao. Nếu sẹo mới th&igrave; khả năng mờ sẹo đến 80&permil; l&agrave; rất cao. Bạn đừng n&ecirc;n bỏ qua loại rau hữu &iacute;ch n&agrave;y nh&eacute;.</p>\r\n\r\n<p><strong>2. Rau m&aacute;</strong></p>\r\n\r\n<p>Rau m&aacute; l&agrave; thực phẩm c&oacute; khả năng cung cấp nhiều vitamin v&agrave; kho&aacute;ng chất. Tuy nhi&ecirc;n kh&ocirc;ng chỉ l&agrave; loại thuốc qu&yacute;, rau m&aacute; c&oacute; t&iacute;nh h&agrave;n c&oacute; t&aacute;c dụng thanh nhiệt, giải độc, trị c&aacute;c loại bệnh như mụn nhọt, r&ocirc;m...</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/2/danh-bay-seo-3.jpg\" /></p>\r\n\r\n<p>Rau m&aacute; vừa uống vừa đắp sẹo đều tốt</p>\r\n\r\n<p>Sở dĩ rau m&aacute; c&oacute; khả năng trị sẹo lồi l&agrave; bởi th&agrave;nh phần trong c&acirc;y rau m&aacute; c&oacute; thể ức chế việc sản xuất qu&aacute; mức collagen ở trong c&aacute;c m&ocirc; sẹo, n&acirc;ng cao c&aacute;c chất chống oxy h&oacute;a v&agrave; th&uacute;c đẩy sự ph&aacute;t triển, t&aacute;i tạo l&agrave;n da mới cho những vết sẹo cũ.</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m:</strong></p>\r\n\r\n<p>Bước 1: Rau m&aacute; mua về ng&acirc;m trong nước muối trong 15 ph&uacute;t.</p>\r\n\r\n<p>Bước 2: Rửa sạch, gi&atilde; n&aacute;t rồi lọc lấy nước. Bạn c&oacute; thể cho th&ecirc;m &iacute;t đường v&agrave;o cho dễ uống.</p>\r\n\r\n<p>Bước 3: D&ugrave;ng b&atilde; rau m&aacute; đắp mặt hoặc rửa mặt bằng nước rau m&aacute; tươi.</p>\r\n\r\n<p>H&agrave;m lượng chất xơ của rau m&aacute; kh&ocirc;ng chỉ nằm trong nước m&agrave; c&ograve;n trong b&atilde; của rau m&aacute;. Nếu chỉ gi&atilde; lấy nước th&igrave; sẽ mất đi hoạt chất n&agrave;y. Bạn n&ecirc;n đắp hỗn hợp rau m&aacute; sau khi bị sẹo c&agrave;ng sớm h&agrave;ng tốt.</p>\r\n\r\n<p>Khi sử dụng rau m&aacute; để trị sẹo cần rửa sạch v&agrave; ki&ecirc;n tr&igrave;, điều trị ngay sau khi vết thương l&ecirc;n da non sẽ c&oacute; được hiệu quả tốt nhất.</p>\r\n\r\n<p>Thực hiện phương ph&aacute;p n&agrave;y h&agrave;ng ng&agrave;y sau 1 th&aacute;ng sẽ nh&igrave;n thấy c&aacute;c vết th&acirc;m mờ đi đồng thời c&aacute;c vết sẹo sẽ phẳng hơn. Sau 2 th&aacute;ng bạn sẽ c&oacute; được l&agrave;n da mịn m&agrave;ng, thậm ch&iacute; bật tone trước khi sử dụng.</p>\r\n\r\n<p><strong>3. Tr&agrave; xanh</strong></p>\r\n\r\n<p>Tr&agrave; xanh c&oacute; nhiều t&aacute;c dụng với sức khỏe con người. Th&agrave;nh phần kh&aacute;ng sinh chống vi&ecirc;m của tr&agrave; xanh c&oacute; thể gi&uacute;p bảo vệ cơ thể khỏe mạnh, nu&ocirc;i dưỡng da mặt. Ngo&agrave;i những t&aacute;c dụng l&agrave;m đẹp của nước tr&agrave; xanh c&oacute; thể loại bỏ sẹo nhanh ch&oacute;ng v&agrave; hiệu quả.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/2/danh-bay-seo-4.jpg\" /></p>\r\n\r\n<p>L&aacute; tr&agrave; xanh c&oacute; nhiều t&aacute;c dụng l&agrave;m đẹp kh&aacute;c nhau</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m:</strong></p>\r\n\r\n<p>Bước 1: Tr&agrave; xanh rửa sạch, đun l&ecirc;n lấy nước.</p>\r\n\r\n<p>Bước 2: Đợi nước nguội d&ugrave;ng b&ocirc;ng thấm nước tr&agrave; xanh thoa nhẹ nh&agrave;ng l&ecirc;n v&ugrave;ng da c&oacute; sẹo</p>\r\n\r\n<p>Bạn n&ecirc;n thực hiện c&aacute;ch n&agrave;y h&agrave;ng ng&agrave;y trong thời gian d&agrave;i để mang đến hiệu quả. Nước tr&agrave; xanh c&ograve;n c&oacute; t&aacute;c dụng giảm th&acirc;m v&agrave; gi&uacute;p da s&aacute;ng mịn hơn sau khi d&ugrave;ng.</p>\r\n', '2016-08-29 05:19:21', 0),
(12, 'Tự làm toner trà xanh giải quyết nỗi lo cho các nàng da mụn', 'medium-tri-mun-5.jpg', '', '1', '<p>Nếu bạn g&aacute;i n&agrave;o kh&ocirc;ng may mắn gặp phải l&agrave;n da nhạy cảm hoặc da mụn th&igrave; h&atilde;y t&igrave;m hiểu ngay c&ocirc;ng thức l&agrave;m toner, xịt kho&aacute;ng từ tr&agrave; xanh n&agrave;y nh&eacute;.</p>\r\n\r\n<p>Ng&agrave;y nay c&aacute;c d&ograve;ng mỹ phẩm chiết xuất từ tr&agrave; xanh lu&ocirc;n được người ti&ecirc;u d&ugrave;ng tin tưởng. Ngo&agrave;i l&agrave;m đẹp da, chống l&atilde;o h&oacute;a, &nbsp;tr&agrave; xanh c&ograve;n c&oacute; t&aacute;c dụng kh&aacute;ng vi&ecirc;m trị mụn m&agrave; từ l&acirc;u đ&atilde; được c&aacute;c chị em chứng thực.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, thay v&igrave; phải bỏ ra h&agrave;ng trăm đến h&agrave;ng triệu đồng mua c&aacute;c sản phẩm b&aacute;n sẵn ch&uacute;ng ta ho&agrave;n to&agrave;n c&oacute; thể tự chế mỹ phẩm từ nguy&ecirc;n liệu n&agrave;y tại nh&agrave; rất rẻ m&agrave; an to&agrave;n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/1/tri-mun-1.jpg\" /><br />\r\nTr&agrave; xanh được đ&ocirc;ng đảo chị em phụ nữ y&ecirc;u th&iacute;ch</p>\r\n\r\n<p>B&agrave;i viết n&agrave;y sẽ hướng dẫn c&aacute;c bạn c&aacute;ch chế toner 100&permil; từ tr&agrave; xanh cho c&aacute;c c&ocirc; n&agrave;ng đang khổ sở v&igrave; da mụn nh&eacute;!</p>\r\n\r\n<p><strong>1. Nguy&ecirc;n liệu</strong></p>\r\n\r\n<p>- L&aacute; tr&agrave; xanh tươi 500g (hoặc c&oacute; thể thay bằng t&uacute;i tr&agrave; lọc trong t&igrave;nh huống kh&ocirc;ng c&oacute; l&aacute; tươi)</p>\r\n\r\n<p>- Nồi c&oacute; vung l&agrave; ch&oacute;p nhọn v&agrave; th&acirc;n s&acirc;u</p>\r\n\r\n<p>- Khay hấp</p>\r\n\r\n<p>- B&aacute;t thủy tinh</p>\r\n\r\n<p>- Đ&aacute; vi&ecirc;n số lượng lớn</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/1/tri-mun-2.jpg\" /><br />\r\nNguy&ecirc;n liệu cần chuẩn bị</p>\r\n\r\n<p><strong>2. C&aacute;ch l&agrave;m</strong></p>\r\n\r\n<p>- Rửa sạch l&aacute; tr&agrave; v&agrave; ng&acirc;m nước muối cho sạch.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/1/tri-mun-3.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p>- Cho l&aacute; tr&agrave; v&agrave;o nồi v&agrave; đổ nước sao cho nước vừa đủ s&acirc;m sấp mặt l&aacute;.</p>\r\n\r\n<p>- Để khay hấp v&agrave;o rồi đặt b&aacute;t thủy tinh l&ecirc;n tr&ecirc;n.</p>\r\n\r\n<p>- &Uacute;p ngược vung nồi xuống sao cho phần ch&oacute;p nhọn hướng thẳng v&agrave;o miệng b&aacute;t.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/1/tri-mun-3.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p>- Bật bếp l&ecirc;n đun s&ocirc;i nồi nước tr&agrave;, khi nước bắt đầu s&ocirc;i để đ&aacute; lạnh l&ecirc;n tr&ecirc;n vung nồi.</p>\r\n\r\n<p>- Đun li&ecirc;n tục cho đến khi thu được đầy b&aacute;t thủy tinh nước. Đ&acirc;y ch&iacute;nh l&agrave; toner tr&agrave; xanh nguy&ecirc;n chất.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/1/tri-mun-5.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p>Nguy&ecirc;n l&yacute; c&aacute;ch lấy toner từ l&aacute; tr&agrave; l&agrave; khi đun s&ocirc;i, nước c&oacute; tinh dầu tr&agrave; sẽ bốc hơi b&aacute;m l&ecirc;n nắp nồi. L&uacute;c n&agrave;y gặp lạnh đột ngột do đ&aacute; vi&ecirc;n đặt ph&iacute;a tr&ecirc;n sẽ lắng lại th&agrave;nh giọt v&agrave; chảy theo ch&oacute;p nhọn của vung nồi xuống b&aacute;t thủy tinh.&nbsp;</p>\r\n\r\n<p><strong>3. C&aacute;ch sử dụng</strong></p>\r\n\r\n<p>- Cho v&agrave;o chai xịt để d&ugrave;ng như xịt kho&aacute;ng h&agrave;ng ng&agrave;y hoặc cho v&agrave;o chai c&oacute; nắp đậy k&iacute;n v&agrave; bảo quản trong tủ lạnh. Mỗi khi d&ugrave;ng c&aacute;c bạn d&ugrave;ng b&ocirc;ng tẩy trang thấm dung dịch tr&agrave; xanh thoa đều khắp mặt một ng&agrave;y 2 - 3 lần.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/1/tri-mun-6.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p>Bảo quản toner trong k&iacute;n để tủ lạnh</p>\r\n\r\n<p>- Toner tr&agrave; xanh tự l&agrave;m rất l&agrave;nh t&iacute;nh ph&ugrave; hợp với tất cả loại da đặc biệt l&agrave; da nhạy cảm v&agrave; da dầu mụn.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoaanhdao.vn/img/08/files/TIEN/8/29/1/tri-mun-7.jpg\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p>Toner tr&agrave; xanh c&oacute; t&aacute;c dụng trị mụn, chống vi&ecirc;m v&agrave; hồi phục da nhạy cảm</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng!</p>\r\n', '2016-08-30 06:20:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(10) NOT NULL,
  `name_product` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `describe_product` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price_product` int(10) NOT NULL,
  `image_product` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type_product` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `useful_product` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parent_product` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `xuatxu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quy_cach` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tinh_trang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_sub` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `name_product`, `describe_product`, `price_product`, `image_product`, `type_product`, `useful_product`, `parent_product`, `xuatxu`, `quy_cach`, `noi_dung`, `tinh_trang`, `id_sub`) VALUES
(1, 'Bộ sản phẩm trị mụn Caryophy Potulaca', 'Caryophy là bộ sản phẩm trị mụn với thành phần chủ yếu từ thiên nhiên đảm bảo hiệu quả an toàn, lành tính.', 1020000, 'bosptrimun_1.jpg', 'chăm sóc da mặt', 'sữa rửa mặt', 'mỹ phẩm', 'Hàn Quốc', '150ml', '<p><strong>Bộ sản phẩm bao gồm:</strong></p> <p><strong>Sữa rửa mặt trị mụn Caryophy Potulaca</strong></p> <p>Sữa rửa mặt dịu nhẹ không kích ứng da, hỗ trợ điều trị mụn, giúp cả thiện làn da.</p> <p><strong>Tonner trị mụn Caryophy Potulaca</strong></p> <p>Tonner nước cân bằng da giúp làm dịu da tức thời, tăng độ ẩm giảm bong tróc da, làm dịu vết sưng.</p> <p>Giúp da luôn trong trạng thái sáng khỏe, căng mọng.</p> <p><strong>Tinh chất serum trị mụn Caryophy Potulaca</strong></p> <p>Giúp điều trị mụn hiệu quả, kháng khuẩn chống viêm cho da.</p> <p>Ngăn chặn các dấu hiệu mụn và ngăn ngừa mụn tái phát.</p>', 'Còn hàng', 0),
(2, 'Bộ 03 sản phẩm Chống Lão Hóa - OHUI Age Recovery Mini Set 47ml', 'Với những ưu điểm nổi trội cùng thiết kế sang trọng, ấn tượng đang được nhiều người yêu thích và lựa chọn. Thiết kế nhỏ gọn của sản phẩm giúp bạn có thể dễ dàng đem theo khi đi công tác và du lịch. Chính vì thế, đây là sản phẩm được rất nhiều người yêu thích và lựa chọn hiện nay.', 260000, 'ohui.jpg', 'chăm sóc da mặt', 'sữa rửa mặt', 'mỹ phẩm', 'Mỹ', '47ml', '<p>Bộ sản phẩm gồm:</p>  <p><strong>Nước Hoa Hồng Chống Lão Hóa OHUI Age Recovery Skin Softener 20ml</strong></p>  <p>Sản phẩm giúp cân bằng pH cho da sau khi rửa mặt, giúp da mịn màng và được bổ sung đủ ẩm. Giúp làm sạch sâu, đem tới cho làn da vẻ hồng hào, khỏe mạnh từ sâu bên trong.</p>  <p><strong>Sữa dưỡng phục hồi lão hóa da OHUI Age Recovery Emulsion 20ml</strong></p>  <p>Sản phẩm giúp cải thiện nếp nhăn, tái tạo và phục hồi làn da bị tổn thương do tuổi tác và các nhân tố có hại.</p> <p>Thành phần giàu hợp chất chứa collagen giúp da săn chắc, khỏe mạnh.</p> <p><strong>Kem dưỡng chống lão hóa OHUI Age Recovery Cream 7ml</strong></p>  <p>Kem dưỡng chống lão hóa OHUI Age Recovery Cream là sản phẩm có chức năng khóa ẩm, giúp các bước lotion và sữa dưỡng đạt hiệu quả cao hơn.</p>', 'Còn hàng', 0),
(3, 'Bộ dưỡng da trị mụn Innisfree Bija Anti Trouble Set', 'Đây là bộ sản phẩm mới Bija anti-trouble của hãng mỹ phẩm Hàn Quốc INNISFREE - một thương hiệu nổi tiếng thân thiện với môi trường. Dòng sản phẩm đặc trị này giúp kiểm soát được lượng dầu thừa đồng thời sát khuẩn nhẹ làm se mụn nhanh và ngăn ngừa mụn mới tái phát.', 1210000, 'insis.jpg', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '<p>Bộ sản phẩm gồm:</p>  <p><strong>Nước Hoa Hồng Dành Cho Da Mụn Jeju Bija Anti-Trouble Skin 200ml</strong></p>  <p>Jeju bija Anti-Trouble Skin của thương hiệu Innisfree chính là khả năng tẩy sạch các tạp chất sâu bên trong dưới lỗ chân lông, sát khuẩn và kiểm soát được lượng dầu thừa, hạn chế các nguyên nhân chính sản sinh ra mụn.</p>  <p><strong>Sữa Dưỡng Innisfree Cho Da Mụn Jeju bija Anti-Trouble Lotion 100ml</strong></p>  <p>Sữa dưỡng Bija anti-trouble lotion là sản phẩm mới thuộc dòng Bija anti-trouble của hãng mỹ phẩm nổi tiếng thân thiện với môi trường của Hàn Quốc INNISFREE. Dòng sản phẩm đặc trị này giúp kiểm soát được lượng dầu thừa đồng thời sát khuẩn nhẹ làm se mụn nhanh và ngăn ngừa mụn mới tái phát. Sản phẩm phù hợp cho da nhậy cảm, da gặp nhiều vấn đề về mụn (mụn bọc, mụn mũ).</p>  <p><strong>Tinh Chất Gel Trị Mụn Sưng Đỏ Jeju Bija Anti-Trouble Spot Essence 15ml</strong></p>  <p>Tinh chất Gel trị mụn sưng đỏ Jejubija Anti-Trouble spot essence giúp da kiểm soát được lượng dầu thừa đồng thời sát khuẩn nhẹ làm se mụn nhanh và ngăn ngừa mụn mới tái phát. Sản phẩm phù hợp cho da nhậy cảm, da có vấn đề về mụn và dầu.</p>', 'Còn hàng', 0),
(4, 'Bộ sản phẩm trị mụn Decumar New', 'Decumar New là một sản phẩm trị mụn và thâm vô cùng hiệu quả và cũng rất lành tính, phù hợp với mọi loại da bởi nó được chiết xuất hoàn toàn từ các thành phần tự nhiên tốt.', 860000, 'dema_1.jpg', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Việt Nam', '100ml', '', 'Còn hàng', 0),
(5, 'Kem trị nám L’oreal', 'Kem trị nám L\'oreal được giới thiệu tinh chế từ nhiều thành phần thiên nhiên với công dụng trị nám, đẹp da hiệu quả: Hỗ trợ điều trị nám da, thúc đẩy quá trình đẩy lùi sắc tố melanin, ngăn ngừa nám da mặt hình thành và phát tán rộng.', 560000, 'lore.jpg', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '50g', '<p>Hỗ trợ điều trị nám da, thúc đẩy quá trình đẩy lùi sắc tố melanin, ngăn ngừa nám da mặt hình thành và phát tán rộng.Cung cấp dưỡng chất giúp da căng mịn, sáng hồng tự nhiên.Các hoạt chất của kem trị nám ban ngày có tác dụng dưỡng da, bảo vệ da trước tác động của ánh nắng mặt trời, khói bụi.</p>', 'Còn hàng', 0),
(6, 'qwewqeqweqweqwe', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1460000, 'small-kem-tri-nam-the-perfect-bleaching-cream.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(7, 'Son Kem Dưỡng Môi Dior Addict Lip Maximizer Collagen Activ', 'Son Kem Dưỡng Môi Dior Addict Lip Maximizer Collagen Activ là son dưỡng nổi tiếng của hãng Dior (Pháp) có công dụng dưỡng ẩm, trị thâm và khô môi, đem lại cho bạn đôi môi hồng tự nhiên quyến rũ.', 680000, 'dior_1.jpg', 'mặt', 'son dưỡng môi', 'trang điểm', 'Mỹ', '6ml', '<p>Collagen trong son giúp giảm thâm môi hiệu quả, đồng thời cung cấp độ ẩm khiến môi trông đầy đặn hơn. Nếu sử dụng dưỡng trong thời gian dài, môi bạn sẽ mượt mà và sáng màu hơn trông thấy.</p>', 'Còn hàng', 0),
(8, 'Phấn Má Hồng 3ce Face Blush', 'Phấn má hồng 3CE Face Blush thuộc thương hiệu 3CE. Bên cạnh đó, 3CE vừa tung ra thị trường dòng son mà cả thế giới săn lùng tìm kiếm và ưa thích. Bởi vậy mà Phấn má hồng 3CE Face Blush được nhiều chị em Châu Á tin dùng vì màu sắc tự nhiên, độ bám cao và giữ màu lâu.', 380000, 'mahong3ce.jpg', 'mặt', 'phấn má hồng', 'trang điểm', 'Hàn Quốc', '3g', '<p>Chất phấn siêu mềm mịn hoàn hảo, bám da cực tốt nhưng không hề gây cảm giác nặng nề cho da, không gây bít lỗ chân lông.\r\nKhả năng bám màu tốt, lên đến suốt cả ngày, cho bạn gái lớp makeup tươi sáng rạng rỡ tự nhiên nhất có thể.</p>', 'Còn hàng', 0),
(9, 'Bút Kẻ Mắt Nước Chống Trôi Merzy Another Me The First Pen Eyeliner', 'Bút Kẻ Mắt Nước Chống Trôi Merzy Another Me The First Pen Eyeliner. Thiết kế dạng bút đẹp mắt, đầu cọ siêu mảnh giúp bạn dễ dàng tạo những đường kẻ sắc nét hoàn hảo.', 124000, 'mezy.jpg', 'mặt', 'Eyeliner', 'trang điểm', 'Hàn Quốc', '2ml', '<p>Lông cọ mềm mại đảm bảo không gây hại cho mắt, hạn chế kích ứng vùng da mắt. Không lem, không trôi, không thấm nước. Bền màu lên đến 24h. Chất mực đẹp, mực ra đều, tạo độ bóng nhẹ nhìn cực sang.</p>', 'Còn hàng', 0),
(10, 'Kem nền BB Cream The Face Shop Power Perfection SPF 37 PA++', 'Kem nền BB TFS 20g (tuýp nhỏ)– một trong những sản phẩm của dòng sản phẩm gây sốt cho tín đồ làm đẹp của thương hiệu The Face Shop. Đừng bỏ lỡ sản phẩm này nếu bạn  là một tín đồ của  The Face Shop nhé.', 169000, 'kemnenne.jpg', 'mặt', 'kem trang điểm', 'trang điểm', 'Mỹ', '60ml', '<p>Phù hợp với nhiều loại da, đặc biệt là những loại da mụn và da nhạy cảm. Làm đều màu, nâng tone da và cấp nước dưỡng ẩm cho làn da. Độ che phủ rất tốt, có thể bảo vệ da và che đi những đốm mụn nhỏ, li ti hay những vùng da sẹo, không đều màu và nhiều tàn nhang.</p>', 'Còn hàng', 0),
(11, 'Bộ cọ trang điểm cá nhân 8 cây vintage ', 'Bộ cọ trang điểm 8 cây Vintage với thiết kế nhỏ gọn xinh xắn, nhưng không kém phần hiệu quả với 8 cây cọ đủ sức đáp ứng nhu cầu trang điểm của chị em phụ nữ mọi lúc mọi nơi.', 590000, 'boco.jpg', 'mặt', 'cọ trang điểm', 'trang điểm', 'Việt Nam', '8 cây', '<p>Bên cạnh mỹ phẩm, các dụng cụ trang điểm làm đẹp như bông phấn, cọ trang điểm… cũng rất quan trọng bởi chúng giúp phát huy tối đa tác dụng của mỹ phẩm. Nếu bạn thích trang điểm mỗi ngày và thích thử nghiệm những phong cách make up mới lạ thì hãy trang bị ngay cho mình bộ cọ trang điểm cá nhân hello kitty 7 món mà chúng tôi giới thiệu sau đây.</p>', 'Còn hàng', 0),
(12, 'Kem dưỡng trắng da toàn thân Nivea', 'Tập đoàn Beiersdorf đã sản xuất và cho ra đời nhiều loại sản phẩm dưỡng trắng da Nivea để phù hợp với từng loại da khác nhau của chị em phụ nữ. Và khi hỏi kem dưỡng trắng da toàn thân nào tốt thì không thể không nhắc đến sản phẩm này của Nivea.', 250000, 'kemnivea.png', 'chăm sóc body', 'kem dưỡng ẩm', 'mỹ phẩm', 'Việt Nam', '300ml', '<p>Chất kem lỏng vừa, mịn, thấm nhanh vào da. Khi bôi lên thì da sáng liền nhưng không bị bệt. Mùi hương trái cây mang lại mùi thơm dễ chịu, thư giãn. Đặc biệt, loại này cũng có chỉ số chống nắng SPF 30 giúp da bạn không bị bắt nắng. Tuy nhiên, nếu hoạt động ngoài trời nắng liên tục thì bạn vẫn phải bôi thêm kem chống nắng để bảo vệ làn da của bạn trước các tia nắng mạnh.</p>', 'Còn hàng', 0),
(13, 'Lăn Khử Mùi Etiaxil – Lăn Khử Mùi Etiaxil 50ml', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 320000, 'lankhumui.jpg', 'chăm sóc body', 'kem dưỡng trắng', 'mỹ phẩm', 'Mỹ', '50ml', '<p>Có tác dụng chống thâm sần, trắng vùng da sử dụng, không gây ngứa ngáy khó chịu. Mặt hàng được nhiều nước trên thế giới ưa thích, chất lượng công dụng vượt trội cho mọi loại da, bổ sung dưỡng chất chho da. Chống các loại vi khuẩn cho da, công dụng hiệu quả cho 48h, sản phẩm không có hương thơm phù hợp cho những ai kén mùi, không để lại vết ố vàng bám trên áo.</p>', 'Còn hàng', 0),
(14, 'Kem dưỡng trắng Snow White Milky Pack Hàn Quốc', 'Kem dưỡng trắng Snow White Milky Pack Hàn Quốc', 175000, 'kemsnow.jpg', 'chăm sóc body', 'kem dưỡng trắng', 'mỹ phẩm', 'Hàn Quốc', '200ml', '<p>Kem dưỡng trắng Snow White Milky Pack Hàn Quốc</p>', 'Còn hàng', 0),
(15, 'Sữa dưỡng thể chống nắng Vaseline Healthy White 50X', 'Sữa dưỡng thể chống nắng Vaseline Healthy White 50X', 155000, 'vaseline.jpg', 'chăm sóc body', 'dưỡng thể', 'mỹ phẩm', 'Nhật Bản', '725ml', 'dưỡng thể chống nắng Vaseline Healthy White 50X', 'Còn hàng', 0),
(16, 'Sữa dưỡng thể chống nắng Hatomugi Nhật Bản', 'sữa dưỡng thể chống nắng Hatomugi Nhật Bản', 385000, 'duongnhat.jpg', 'chăm sóc body', 'kem dưỡng ẩm', 'mỹ phẩm', 'Nhật Bản', '500ml', '<p>sữa dưỡng thể chống nắng Hatomugi Nhật Bản</p>', 'Còn hàng', 0),
(18, 'Son Christian Louboutin Velvet Matte Lip', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 3960000, 'small-son-moi-Christian-Louboutin-Velvet-Matte-Lip.png', 'mặt', 'son môi', 'trang điểm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(19, 'Son dưỡng môi Addict Lipstick Dior', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 890000, 'son-thoi-addict-lipstick-di_180x180.jpg', 'mặt', 'son dưỡng môi', 'trang điểm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(20, 'Mascara 2 đầu dưỡng dài và dày mi MD Ultimate Mascara', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1245000, 'small-mascara-2-dau-md-ultimate-mascara-dou.png', 'mắtt', 'mascara', 'trang điểm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(21, 'Bộ Mascara Dưỡng Mi, Trang Điểm Mascara by RevitaLash', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1380000, 'revitalash0612e_180x180.jpg', 'mắtt', 'mascara', 'trang điểm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(22, 'Mascara Trang Điểm Dưỡng Mi RevitaLash VOLUMIZING Mascara', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 690000, 'small-cam-giac-ngua-khi-su-dung-thuoc-moc-mi-co-phai-do-tac-dung-phu1.jpg', 'mắtt', 'mascara', 'trang điểm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(23, 'Mascara Tạo Dáng Mi Perfect Primer Revitalash', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 690000, 'small-mascara-dai-mi5.jpg', 'mắtt', 'mascara', 'trang điểm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(24, 'Viên uống cải thiện tone màu da Heliocare Purewhite', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2218000, 'small-vien-uong-trang-da-heliocare-purewhite-c.png', 'uống đẹp da', 'viên uống trắng da', 'Dinh Dưỡng - Sức Khỏe', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(25, 'Viên uống trắng da chống lão hoá Sakura White Advance', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1800000, 'small-vien-uong-trang-da-chong-lao-hoa-sakura-white-advance.png', 'uống đẹp da', 'viên uống trắng da', 'Dinh Dưỡng - Sức Khỏe', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(26, 'Viên uống làm đẹp da Sakura CHP Enhanced Beauty Nutraceuticals 30 ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 900000, 'small-vien-uong-dep-da-sakura-chp-enhanced-beauty-nutraceuticals-30-vien1.png', 'uống đẹp da', 'viên uống trắng da', 'Dinh Dưỡng - Sức Khỏe', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(27, 'Viên uống làm đẹp da Sakura CHP Enhanced Beauty Nutraceuticals 60 ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1650000, 'small-vien-uong-dep-da-sakura-chp-enhanced-beauty-nutraceuticals1.png', 'uống đẹp da', ' viên uống trắng da', 'Dinh Dưỡng - Sức Khỏe', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(28, 'Kem chống nắng Heliocare 360° Gel Oil-free SPF 50', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1172000, 'small-kem-chong-nang-Heliocare-360-Gel-Oil-free-SPF-50-a.png', 'chăm sóc da mặt', 'kem chống nắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(29, 'Kem chống nắng Heliocare XF Gel SPF50', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1097000, 'small-kem-chong-nang-heliocare-advanced-xf-gel-spf50-a.png', 'chăm sóc da mặt', 'kem chống nắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(30, 'Kem Chống Nắng Heliocare Cream SPF 50', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1022000, 'small-kem-chong-nang-heliocare-cream-spf-50-a.png', 'chăm sóc da mặt', 'kem chống nắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(31, 'Kem Chống Nắng Heliocare SPF50 cho da nhờn, mụn', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1022000, 'small-gel-chong-nang-heliocare-gel-spf50-cho-da-nhon-mun-a.png', 'chăm sóc da mặt', ' kem chống nắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(32, 'Kem Chống Nắng Heliocare Ultra Gel SPF 90', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1097000, 'small-gel-chong-nang-heliocare-gel-spf-90-b.png', 'chăm sóc da mặt', 'kem chống nắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(33, 'Kem Chống Nắng Dạng Xịt Heliocare Spray SPF 50', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1097000, 'small-kem-chong-nang-dang-xit-heliocare-spray-spf-50-a.png', 'chăm sóc da mặt', 'kem chống nắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(34, 'Viên uống chống nắng Heliocare Oral', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1147000, 'small-heliocare-oral-vien-uong-chong-nang-a.png', 'chăm sóc da mặt', 'kem chống nắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(35, 'Viên uống chống nắng Heliocare Sunsafe 60 viên', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1147000, 'small-vien-uong-chong-nang-haliocare-sunsafe-rx-60.png', 'chăm sóc da mặt', 'kem chống nắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(36, 'Kem giúp giảm mụn Neostrata Spot Treatment', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 698000, 'small-kem-dieu-tri-mun-neostrata-spot-treatment.png', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(37, 'Kem giảm mụn tầng sâu Murad Acne CLearing Solution Pro', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2348000, 'small-kem-giup-giam-mun-murad-acne-clearubg-solution-a1.png', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(38, 'Kem giảm mụn tầng sâu Murad Acne CLearing Solution', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1658000, 'small-kem-giup-giam-mun-murad-acne-clearubg-solution-a.png', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(39, 'Toner giúp giảm Mụn Dạng Xịt Murad Clarifying Body Spray', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1209000, 'small-tri-mun-dang-xit-murad-clarifying-body-spray-a.png', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(40, 'Kem Che Khuyết Điểm, giúp giảm Mụn Murad Blemish Treatment ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 685000, 'small-cay-che-khuyet-diem-giam-mun-murad-blemish-treatment-concealer-light-a.png', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(41, 'Kem giúp giảm Mụn Cấp Tốc Murad Blemish Spot Treatment', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 614000, 'small-gel-tri-mun-cap-toc-murad-blemish-spot-treatment-a.png', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(42, 'Gel giúp giảm Mụn Murad Exfoliating Blemish Treatment Gel ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1768000, 'small-gel-tri-mun-murad-exfoliating-blemish-treatment-gel-dang-manh-a.png', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(43, 'Kem giúp giảm mụn Dermalogica Clear Start Emergency Spot Fix', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 678000, 'small-kem-giup-giam-mun-Dermalogica-Clear-Start-Emergency-Spot-Fix-a.png', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(44, 'Tinh chất giảm mụn Dermalogica Clear Start Overnight Gel Treatment', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 678000, 'small-tinh-chat-giam-mun-Dermalogica-Clear-Start-Overnight-Gel-Treatment-a.png', 'chăm sóc da mặt', 'kem giảm mụn', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(45, 'Serum giúp giảm nám Nanoluxe Dark Spot Remover by Reluma', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1400000, 'small-kem-tri-nam-nanoluxe-dark-spot-remover-by-reluma.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(46, 'Serum giảm nám làm khỏe da Active Radiance Serum Murad Pro', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 7292000, 'small-serum-tri-nam-active-radiance-serum-murad-lam-khoe-da-a1.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(47, 'Serum giảm nám làm khỏe da Active Radiance Serum Murad', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 3058000, 'small-serum-tri-nam-active-radiance-serum-murad-lam-khoe-da-a.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(48, 'Kem Che Khuyết Điểm giúp giảm Mụn Tông Vừa Murad Blemish ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 685000, 'small-cay-che-khuyet-diem-da-mun-tong-vua-murad-blemish-treatment-concealer-medium-dark-a.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(49, 'Serum giúp giảm nám chống lão hóa da Rapid Age Spot and ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2855000, 'kem-tri-nam-rapid-age-spot_180x180.jpg', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(50, 'Vitamin C 15‰ điều giúp giảm nám Is Clinical C-15 Serum Advance', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1978000, 'small-is-clinical-c-15-serum-advance-tri-dom-nau-nam-tan-nhang-lam-sang-da.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(51, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 10790220, 'small-vitamin-c-dieu-tri-nam-dom-nau-tan-nhang-mesoestetic-ampoules-of-vitamin-c1.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(52, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2457400, 'small-vitamin-c-dieu-tri-nam-dom-nau-tan-nhang-mesoestetic-ampoules-of-vitamin-c.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(53, 'Kem giúp giảm nám đốm nâu Mesoestetic Ultimate W Whitening ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2189000, 'small-kem-duong-trang-tri-nam-mesoestetic-ultimate-w-whitening-spot-eraser.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(54, 'Serum Đặc giúp giảm Nám, Sạm, Thiếu Sức Sống Mesoestetic ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2323600, 'small-serum-tri-nam-sam-thieu-suc-song-mesoestetic-energy-c-complex.png', 'chăm sóc da mặt', 'kem trị nám', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 0),
(55, 'Serum hồi sinh sức sống cho da Murad Intensive Age Diffusing ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 7115000, 'small-serum-hoi-sinh-suc-song-cho-da-Murad-Intensive-Age-Diffusing-Serum-a1.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(56, 'Serum dưỡng làm sáng da Endocare Tensage Serum', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1832000, 'small-ENDOCARE-TENSAGE-SERUM.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(57, 'Serum hồi sinh sức sống cho da Murad Intensive Age Diffusing ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2846000, 'small-serum-hoi-sinh-suc-song-cho-da-Murad-Intensive-Age-Diffusing-Serum-a.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(58, 'Kem dưỡng hồi sinh da ban đêm Murad Age-Balancing Night Cream', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2338000, 'small-kem-duong-hoi-sinh-da-ban-dem-Murad-Age-Balancing-Night-Cream-a.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(59, 'Toner hồi sinh da Murad Hydrating Toner', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 819000, 'small-toner-hoi-sinh-da-Murad-Hydrating-Toner-a.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(60, 'Tinh chất căng mọng Murad Hydro Dynamic Quenching Essence Pro', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 6351000, 'small-tinh-chat-cang-mong-da-Murad-Hydro-Dynamic-Quenching-Essence-a1.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(61, 'Tinh chất căng mọng Murad Hydro Dynamic Quenching Essence', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2691000, 'small-tinh-chat-cang-mong-da-Murad-Hydro-Dynamic-Quenching-Essence-a.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(62, 'Collagen thế hệ mới Murad Rapid Collagen Infusion Pro', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 6858000, 'small-collagen-the-he-moi-Murad-Rapid-Collagen-Infusion-a1.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(63, 'Collagen thế hệ mới Murad Rapid Collagen Infusion', '', 2700000, 'small-collagen-the-he-moi-Murad-Rapid-Collagen-Infusion-a.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(64, 'Bảo vệ & làm dịu da và môi Murad Soothing Skin Lip Curticle Care', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2092000, 'small-bao-ve-lam-diu-da-va-moi-Murad-Soothing-Skin-Lip-Curticle-Care-a.png', 'chăm sóc da mặt', 'kem dưỡng da', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 4),
(65, 'Kem tắm trắng bùn khoáng thiên nhiên và tinh chất sen trắng Sakura ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 185000, 'small-kem-tam-trang-bun-bien-skaura-dead-sea-mineral-mud-whitening-mask-cream-d.png', 'chăm sóc body', 'kem tắm trắng', 'mỹ phẩm', 'v', '100ml', '', 'Còn hàng', 14),
(66, 'Bộ kem tắm trắng cao cấp tiêu chuẩn Spa Sakura Super White Spa ', 'vKem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 350000, 'small-kem-tam-trang-sakura-super-white-spa-system-p1.png', 'chăm sóc body', 'kem tắm trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 14),
(67, 'Bộ kem tắm trắng cao cấp tiêu chuẩn Spa Sakura Super White Pro ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 450000, 'small-kem-tam-trang-sakura-super-white-spa-system-m.png', 'chăm sóc body', 'kem tắm trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 14),
(68, 'Bộ kem tắm trắng Vitamin C và thảo dược tổng hợp Sakura ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 250000, 'small-set-kem-tam-trang-sakura-multivitamin-herbals-hoaanhdaovn-r.png', 'chăm sóc body', 'kem tắm trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 14),
(69, 'Kem tắm trắng toàn thân ngọc trai tơ tằm Sakura Pearl Silk Rich ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 185000, 'small-kem-tam-trang-ngoc-trai-to-tam-sakura-pearl-silk-rich-special-whitrning-cream.png', 'chăm sóc body', 'kem tắm trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 14),
(70, 'Kem tắm trắng Ipsasa từ ngọc trai và tơ tằm', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 165000, 'small-kem-tam-trang-ngoc-trai-to-tam-sakura1.png', 'chăm sóc body', 'kem tắm trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 14),
(71, 'Kem tắm trắng Ipsasa từ cà phê và hoa cúc', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 165000, 'small-kem-tam-trang-ipsasa-tu-ngoc-trai-to-tam1.png', 'chăm sóc body', 'kem tắm trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 14),
(72, 'Gel tắm Dermalogica Conditioning Body Wash 500ml', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1877000, 'small-gel-tam-Dermalogica-Conditioning-Body-Wash-a1.png', 'chăm sóc body', 'kem dưỡng trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 15),
(73, 'Kem Dưỡng Trắng Da Tay Dermalogica Multivitamin Hand ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 943000, 'small-kem-duong-tay-va-mong-Dermalogica-Multivitamin-Hand-And-Nail-Treatment-a.png', 'chăm sóc body', 'kem dưỡng trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 15),
(74, 'Combo 3 Bộ sản phẩm làm trắng da body cao cấp Sakura tiêu chuẩn ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2365000, 'small-combo-3-bo-san-pham-lam-trang-da-body-cao-cap-sakura-tieu-chuan-nhat-ban-new.png', 'chăm sóc body', 'kem dưỡng trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 15),
(75, 'Combo 4 Bộ sản phẩm làm trắng da body cao cấp Sakura tiêu chuẩn ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2430000, 'small-combo-4-bo-san-pham-lam-trang-da-body-cao-cap-tieu-chuan-nhat-ban-new.png', 'chăm sóc body', 'kem dưỡng trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 15),
(76, 'Bộ kem dưỡng trắng da toàn thân Sakura Body Gift Set', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 4180000, 'small-bo-kem-duong-trang-da-toan-than-sakura-body-gift-set-new.png', 'chăm sóc body', 'kem dưỡng trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 15),
(77, 'Combo 6 Bộ Sản phẩm làm trắng da body cao cấp Sakura tiêu chuẩn ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 2630000, 'small-combo-6-bo-san-pham-lam-trang-da-body-cao-cap-sakura-tieu-chuan-nhat-ban-new.png', 'chăm sóc body', 'kem dưỡng trắng', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 15),
(78, 'Kem giúp giảm sẹo Kelo Cote Giúp Làm Giảm Các Sẹo Do Phẫu Thuật', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 5310000, 'small-thuoc-tri-seo-kelo-cote-giup-lam-giam-cac-seo-do-phau-thuat.png', 'chăm sóc body', 'kem giảm sẹo', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 17),
(79, 'Kem Dưỡng Da Làm Lành Vết Thương Cải Thiện Da S O S', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 499000, 'sos_180x180.jpg', 'chăm sóc body', 'kem giảm sẹo', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 17),
(80, 'Kem giúp giảm sẹo S.O.S', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 531000, 'sos6_180x180.jpg', 'chăm sóc body', 'kem giảm sẹo', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 17),
(81, 'Kem giúp giảm sẹo rỗ, lồi lõm Activa Condolisa', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 432000, 'condolisa_180x180.jpg', 'chăm sóc body', 'kem giảm sẹo', 'mỹ phẩm', 'Mỹ', '100ml', '', 'Còn hàng', 17),
(82, 'Kem lót trang điểm chống lão hóa Dermalogica Skinperfect Primer ', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 1962000, 'sos_180x180.jpg', 'mặt', 'kem trang điểm', 'trang điểm', 'Mỹ', '100ml', '', 'Còn hàng', 0);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id_sub` int(10) NOT NULL,
  `name_sub` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link_sub` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(50) NOT NULL,
  `type_sub` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_sub`, `name_sub`, `link_sub`, `parent`, `type_sub`) VALUES
(1, 'Kem Chống Nắng', 'kem-chong-nang.php', 2, 'chăm sóc da mặt'),
(2, 'Kem Giảm Mụn', 'kem-giam-mun.php', 2, 'chăm sóc da mặt'),
(3, 'Kem Trị Nám', 'kem-tri-nam.php', 2, 'chăm sóc da mặt'),
(4, 'Kem Dưỡng Da\r\n', 'kem-duong-da.php', 2, 'chăm sóc da mặt'),
(8, 'Kem Trang Điểm', '', 3, 'mặt'),
(9, 'Son Dưỡng Môi', '', 3, 'mặt'),
(10, 'Phấn Má Hồng', '', 3, 'mặt'),
(13, 'Son Môi', '', 3, 'mặt'),
(14, 'Kem Tắm Trắng', 'kem-tam-trang.php', 2, 'chăm sóc body'),
(15, 'Kem Dưỡng Trắng', 'kem-duong-trang.php', 2, 'chăm sóc body'),
(16, 'Kem Dưỡng Ẩm', 'kem-duong-am.php', 2, 'chăm sóc body'),
(17, 'Kem Giúp Giảm sẹo', 'kem-giam-seo.php', 2, 'chăm sóc body'),
(21, 'Viên Uống Trắng Da', '', 4, 'uống đẹp da'),
(22, 'Viên Uống Giúp Giảm Nám Da', '', 4, 'uống đẹp da'),
(23, 'Viên Uống Giúp Giảm Mụn', '', 4, 'uống đẹp da'),
(24, 'Mascara', '', 3, 'mắtt'),
(25, 'Chì Kẻ Mắt', '', 3, 'mắtt'),
(26, 'Cách Dưỡng Trắng Da', '', 5, 'làm đẹp'),
(27, 'Cách Chống Nắng', '', 5, 'làm đẹp'),
(28, 'Điều Trị Mụn', '', 5, 'làm đẹp');

-- --------------------------------------------------------

--
-- Table structure for table `type_beauti`
--

CREATE TABLE `type_beauti` (
  `id_beauti` int(50) NOT NULL,
  `name_beauti` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_beauti`
--

INSERT INTO `type_beauti` (`id_beauti`, `name_beauti`) VALUES
(1, 'Cách Dưỡng Trắng Da'),
(2, 'Cách Chống Nắng'),
(3, 'Điều Trị Mụn');

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

CREATE TABLE `type_product` (
  `id_type` int(50) NOT NULL,
  `name_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`id_type`, `name_type`) VALUES
(1, 'chăm sóc da mặt'),
(2, 'chăm sóc body'),
(3, 'uống đẹp da'),
(4, 'mắtt'),
(5, 'mặt');

-- --------------------------------------------------------

--
-- Table structure for table `useful_product`
--

CREATE TABLE `useful_product` (
  `id_useful` int(50) NOT NULL,
  `name_useful` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `useful_product`
--

INSERT INTO `useful_product` (`id_useful`, `name_useful`) VALUES
(1, 'kem giảm sẹo'),
(2, 'kem dưỡng trắng'),
(3, 'kem tắm trắng'),
(4, 'kem dưỡng da'),
(5, 'kem trị nám'),
(7, 'kem giảm mụn'),
(8, 'kem chống nắng'),
(9, 'viên uống trắng da'),
(10, 'mascara'),
(11, 'son dưỡng môi'),
(12, 'son môi'),
(13, 'kem trang điểm'),
(14, 'kem dưỡng ẩm'),
(15, 'phấn má hồng'),
(16, 'sữa rửa mặt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id_hd`);

--
-- Indexes for table `logo_website`
--
ALTER TABLE `logo_website`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `type_beauti`
--
ALTER TABLE `type_beauti`
  ADD PRIMARY KEY (`id_beauti`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `useful_product`
--
ALTER TABLE `useful_product`
  ADD PRIMARY KEY (`id_useful`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id_hd` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `logo_website`
--
ALTER TABLE `logo_website`
  MODIFY `id_logo` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id_sub` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `type_beauti`
--
ALTER TABLE `type_beauti`
  MODIFY `id_beauti` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id_type` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `useful_product`
--
ALTER TABLE `useful_product`
  MODIFY `id_useful` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
