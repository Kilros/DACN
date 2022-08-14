-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 23, 2022 lúc 01:30 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dacn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calendars`
--

CREATE TABLE `calendars` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `in_time` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `in_date` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `out_date` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `out_time` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `calendars`
--

INSERT INTO `calendars` (`id`, `title`, `in_time`, `user_id`, `created_at`, `updated_at`, `in_date`, `out_date`, `out_time`) VALUES
(1052, 'Điểm danh', '08:30:18', 7, '2021-11-14 08:18:30', '2021-11-14 08:18:30', '2021-11-14', '2021-11-14', '12:30:18'),
(1085, 'Điểm danh', '08:30:18', 4, '2021-11-14 08:18:30', '2021-11-14 08:18:30', '2021-11-14', '2021-11-14', '12:30:18'),
(1086, 'Điểm danh', '08:30:18', 5, '2021-11-14 08:18:30', '2021-11-14 08:18:30', '2021-11-14', '2021-11-14', '12:30:18'),
(1087, 'Điểm danh', '08:30:18', 8, '2021-11-14 08:18:30', '2021-11-14 08:18:30', '2021-11-14', '2021-11-14', '12:30:18'),
(1088, 'Điểm danh', '09:30:18', 8, '2021-11-14 08:18:30', '2021-11-14 08:18:30', '2021-11-15', '2021-11-15', '11:30:18'),
(1089, 'Điểm danh', '09:30:18', 4, '2021-11-14 08:18:30', '2021-11-14 08:18:30', '2021-11-15', '2021-11-15', '11:30:18'),
(1090, 'Điểm danh', '09:20:26.782251', 6, '2021-11-25 09:26:20', '2021-11-25 09:26:20', '2021-11-25', '', ''),
(1091, 'Điểm danh', '09:32:07.479679', 5, '2021-11-25 09:07:32', '2021-11-25 09:07:32', '2021-11-25', '2021-11-25', '10:33:26.996353'),
(1092, 'Điểm danh', '10:42:17.845136', 7, '2021-11-25 10:17:42', '2021-11-25 10:17:42', '2021-11-25', '2021-11-25', '10:42:25.051253'),
(1093, 'Điểm danh', '09:31:48.557261', 7, '2021-11-28 09:48:31', '2021-11-28 09:48:31', '2021-11-28', '2021-11-28', '09:31:55.566441'),
(1094, 'Điểm danh', '10:12:12.641549', 5, '2021-11-28 10:12:12', '2021-11-28 10:12:12', '2021-11-28', '2021-11-28', '10:12:18.401295'),
(1095, 'Điểm danh', '13:17:09.677912', 5, '2021-11-29 13:09:17', '2021-11-29 13:09:17', '2021-11-29', '2021-11-29', '13:17:16.498850'),
(1096, 'Điểm danh', '12:08:31.007770', 5, '2021-12-01 12:31:08', '2021-12-01 12:31:08', '2021-12-01', '', ''),
(1097, 'Điểm danh', '12:12:48.129221', 6, '2021-12-01 12:48:12', '2021-12-01 12:48:12', '2021-12-01', '', ''),
(1098, 'Điểm danh', '12:12:57.130366', 4, '2021-12-01 12:57:12', '2021-12-01 12:57:12', '2021-12-01', '', ''),
(1104, 'Điểm danh', '14:57:27.256517', 4, '2021-12-09 14:27:57', '2021-12-09 14:27:57', '2021-12-09', '2021-12-09', '14:57:54.652517'),
(1105, 'Điểm danh', '13:30:51.049702', 5, '2021-12-20 13:51:30', '2021-12-20 13:51:30', '2021-12-20', '', ''),
(1106, 'Điểm danh', '15:12:58.056193', 5, '2021-12-23 15:58:12', '2021-12-23 15:58:12', '2021-12-23', '', ''),
(1107, 'Điểm danh', '15:00:27.497148', 7, '2021-12-25 14:21:59', '2021-12-25 14:21:59', '2021-12-25', '', ''),
(1108, 'Điểm danh', '15:03:40.465753', 4, '2021-12-25 15:34:02', '2021-12-25 15:34:02', '2021-12-25', '2021-12-25', '15:04:18.138153'),
(1109, 'Điểm danh', '15:51:40.860026', 5, '2021-12-25 15:40:51', '2021-12-25 15:40:51', '2021-12-25', '', ''),
(1110, 'Điểm danh', '14:54:57.436891', 5, '2022-01-03 14:57:54', '2022-01-03 14:57:54', '2022-01-03', '', ''),
(1111, 'Điểm danh', '14:56:21.914101', 4, '2022-01-03 14:21:56', '2022-01-03 14:21:56', '2022-01-03', '2022-01-03', '14:57:10.512559'),
(1112, 'Điểm danh', '18:54:45.745988', 5, '2022-01-06 18:45:54', '2022-01-06 18:45:54', '2022-01-06', '2022-01-06', '18:54:56.334665'),
(1113, 'Điểm danh', '18:56:24.153403', 4, '2022-01-06 18:24:56', '2022-01-06 18:24:56', '2022-01-06', '2022-01-06', '18:56:29.243787'),
(1114, 'Điểm danh', '09:51:00.219465', 6, '2022-01-20 09:00:51', '2022-01-20 09:00:51', '2022-01-20', '2022-01-20', '09:55:08.152487'),
(1115, 'Điểm danh', '09:51:54.605319', 8, '2022-01-20 09:54:51', '2022-01-20 09:54:51', '2022-01-20', '2022-01-20', '09:55:27.243506'),
(1116, 'Điểm danh', '09:52:11.229593', 5, '2022-01-20 09:11:52', '2022-01-20 09:11:52', '2022-01-20', '2022-01-20', '09:55:43.795266'),
(1117, 'Điểm danh', '09:53:19.739652', 7, '2022-01-20 09:19:53', '2022-01-20 09:19:53', '2022-01-20', '2022-01-20', '09:54:49.655810'),
(1124, 'Điểm danh', '09:47:43.160504', 7, '2022-01-22 09:43:47', '2022-01-22 09:43:47', '2022-01-22', '', ''),
(1125, 'Điểm danh', '09:48:21.088698', 6, '2022-01-22 09:21:48', '2022-01-22 09:21:48', '2022-01-22', '2022-01-22', '09:48:29.846700');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `event_name`, `time`, `id_user`, `created_at`, `updated_at`) VALUES
(9, 'Team building', '2022-01-25 01:44:00', 4, '2021-10-31 22:41:37', '2022-01-22 01:41:44'),
(11, 'test', '2022-01-22 09:54:00', 4, '2022-01-22 09:01:55', '2022-01-22 09:01:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imgs`
--

CREATE TABLE `imgs` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `st` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `imgs`
--

INSERT INTO `imgs` (`id`, `thumbnail`, `st`, `user_id`, `created_at`, `updated_at`) VALUES
(165, 'public/profile/photo_gallery/User.5.1.jpg', 'false', 5, '2021-11-18 10:57:43', '2021-11-18 10:57:43'),
(166, 'public/profile/photo_gallery/User.5.2.jpg', 'false', 5, '2021-11-18 10:57:43', '2021-11-18 10:57:43'),
(167, 'public/profile/photo_gallery/User.5.3.jpg', 'false', 5, '2021-11-18 10:57:43', '2021-11-18 10:57:43'),
(168, 'public/profile/photo_gallery/User.5.4.jpg', 'false', 5, '2021-11-18 10:57:43', '2021-11-18 10:57:43'),
(169, 'public/profile/photo_gallery/User.5.5.jpg', 'false', 5, '2021-11-18 10:58:43', '2021-11-18 10:58:43'),
(170, 'public/profile/photo_gallery/User.5.6.jpg', 'false', 5, '2021-11-18 10:58:43', '2021-11-18 10:58:43'),
(171, 'public/profile/photo_gallery/User.5.7.jpg', 'false', 5, '2021-11-18 10:58:43', '2021-11-18 10:58:43'),
(172, 'public/profile/photo_gallery/User.5.8.jpg', 'false', 5, '2021-11-18 10:58:43', '2021-11-18 10:58:43'),
(173, 'public/profile/photo_gallery/User.5.9.jpg', 'false', 5, '2021-11-18 10:58:43', '2021-11-18 10:58:43'),
(174, 'public/profile/photo_gallery/User.5.10.jpg', 'false', 5, '2021-11-18 10:58:43', '2021-11-18 10:58:43'),
(175, 'public/profile/photo_gallery/User.5.11.jpg', 'false', 5, '2021-11-18 10:59:43', '2021-11-18 10:59:43'),
(176, 'public/profile/photo_gallery/User.5.12.jpg', 'false', 5, '2021-11-18 10:59:43', '2021-11-18 10:59:43'),
(177, 'public/profile/photo_gallery/User.5.13.jpg', 'false', 5, '2021-11-18 10:59:43', '2021-11-18 10:59:43'),
(178, 'public/profile/photo_gallery/User.5.14.jpg', 'false', 5, '2021-11-18 10:59:43', '2021-11-18 10:59:43'),
(179, 'public/profile/photo_gallery/User.5.15.jpg', 'false', 5, '2021-11-18 10:00:44', '2021-11-18 10:00:44'),
(180, 'public/profile/photo_gallery/User.5.16.jpg', 'false', 5, '2021-11-18 10:00:44', '2021-11-18 10:00:44'),
(181, 'public/profile/photo_gallery/User.5.17.jpg', 'false', 5, '2021-11-18 10:00:44', '2021-11-18 10:00:44'),
(182, 'public/profile/photo_gallery/User.5.18.jpg', 'false', 5, '2021-11-18 10:00:44', '2021-11-18 10:00:44'),
(183, 'public/profile/photo_gallery/User.5.19.jpg', 'false', 5, '2021-11-18 10:00:44', '2021-11-18 10:00:44'),
(184, 'public/profile/photo_gallery/User.5.20.jpg', 'false', 5, '2021-11-18 10:01:44', '2021-11-18 10:01:44'),
(185, 'public/profile/photo_gallery/User.5.21.jpg', 'false', 5, '2021-11-18 10:01:44', '2021-11-18 10:01:44'),
(186, 'public/profile/photo_gallery/User.5.22.jpg', 'false', 5, '2021-11-18 10:01:44', '2021-11-18 10:01:44'),
(187, 'public/profile/photo_gallery/User.5.23.jpg', 'false', 5, '2021-11-18 10:01:44', '2021-11-18 10:01:44'),
(188, 'public/profile/photo_gallery/User.5.24.jpg', 'false', 5, '2021-11-18 10:01:44', '2021-11-18 10:01:44'),
(189, 'public/profile/photo_gallery/User.5.25.jpg', 'false', 5, '2021-11-18 10:02:44', '2021-11-18 10:02:44'),
(190, 'public/profile/photo_gallery/User.5.26.jpg', 'false', 5, '2021-11-18 10:02:44', '2021-11-18 10:02:44'),
(191, 'public/profile/photo_gallery/User.5.27.jpg', 'false', 5, '2021-11-18 10:02:44', '2021-11-18 10:02:44'),
(192, 'public/profile/photo_gallery/User.5.28.jpg', 'false', 5, '2021-11-18 10:02:44', '2021-11-18 10:02:44'),
(193, 'public/profile/photo_gallery/User.5.29.jpg', 'false', 5, '2021-11-18 10:02:44', '2021-11-18 10:02:44'),
(194, 'public/profile/photo_gallery/User.5.30.jpg', 'false', 5, '2021-11-18 10:02:44', '2021-11-18 10:02:44'),
(195, 'public/profile/photo_gallery/User.5.31.jpg', 'false', 5, '2021-11-18 10:02:44', '2021-11-18 10:02:44'),
(196, 'public/profile/photo_gallery/User.5.32.jpg', 'false', 5, '2021-11-18 10:03:44', '2021-11-18 10:03:44'),
(197, 'public/profile/photo_gallery/User.5.33.jpg', 'false', 5, '2021-11-18 10:03:44', '2021-11-18 10:03:44'),
(198, 'public/profile/photo_gallery/User.5.34.jpg', 'false', 5, '2021-11-18 10:03:44', '2021-11-18 10:03:44'),
(199, 'public/profile/photo_gallery/User.5.35.jpg', 'false', 5, '2021-11-18 10:03:44', '2021-11-18 10:03:44'),
(200, 'public/profile/photo_gallery/User.5.36.jpg', 'false', 5, '2021-11-18 10:03:44', '2021-11-18 10:03:44'),
(201, 'public/profile/photo_gallery/User.5.37.jpg', 'false', 5, '2021-11-18 10:03:44', '2021-11-18 10:03:44'),
(202, 'public/profile/photo_gallery/User.5.38.jpg', 'false', 5, '2021-11-18 10:03:44', '2021-11-18 10:03:44'),
(203, 'public/profile/photo_gallery/User.5.39.jpg', 'false', 5, '2021-11-18 10:03:44', '2021-11-18 10:03:44'),
(204, 'public/profile/photo_gallery/User.5.40.jpg', 'false', 5, '2021-11-18 10:04:44', '2021-11-18 10:04:44'),
(205, 'public/profile/photo_gallery/User.5.41.jpg', 'false', 5, '2021-11-18 10:04:44', '2021-11-18 10:04:44'),
(206, 'public/profile/photo_gallery/User.5.42.jpg', 'false', 5, '2021-11-18 10:04:44', '2021-11-18 10:04:44'),
(207, 'public/profile/photo_gallery/User.5.43.jpg', 'false', 5, '2021-11-18 10:04:44', '2021-11-18 10:04:44'),
(208, 'public/profile/photo_gallery/User.5.44.jpg', 'false', 5, '2021-11-18 10:04:44', '2021-11-18 10:04:44'),
(209, 'public/profile/photo_gallery/User.5.45.jpg', 'false', 5, '2021-11-18 10:04:44', '2021-11-18 10:04:44'),
(210, 'public/profile/photo_gallery/User.5.46.jpg', 'false', 5, '2021-11-18 10:04:44', '2021-11-18 10:04:44'),
(211, 'public/profile/photo_gallery/User.5.47.jpg', 'false', 5, '2021-11-18 10:04:44', '2021-11-18 10:04:44'),
(212, 'public/profile/photo_gallery/User.5.48.jpg', 'false', 5, '2021-11-18 10:04:44', '2021-11-18 10:04:44'),
(213, 'public/profile/photo_gallery/User.5.49.jpg', 'false', 5, '2021-11-18 10:05:44', '2021-11-18 10:05:44'),
(214, 'public/profile/photo_gallery/User.5.50.jpg', 'false', 5, '2021-11-18 10:05:44', '2021-11-18 10:05:44'),
(215, 'public/profile/photo_gallery/User.7.1.jpg', 'false', 7, '2021-11-18 10:10:46', '2021-11-18 10:10:46'),
(216, 'public/profile/photo_gallery/User.7.2.jpg', 'false', 7, '2021-11-18 10:10:46', '2021-11-18 10:10:46'),
(217, 'public/profile/photo_gallery/User.7.3.jpg', 'false', 7, '2021-11-18 10:10:46', '2021-11-18 10:10:46'),
(218, 'public/profile/photo_gallery/User.7.4.jpg', 'false', 7, '2021-11-18 10:10:46', '2021-11-18 10:10:46'),
(219, 'public/profile/photo_gallery/User.7.5.jpg', 'false', 7, '2021-11-18 10:11:46', '2021-11-18 10:11:46'),
(220, 'public/profile/photo_gallery/User.7.6.jpg', 'false', 7, '2021-11-18 10:11:46', '2021-11-18 10:11:46'),
(221, 'public/profile/photo_gallery/User.7.7.jpg', 'false', 7, '2021-11-18 10:11:46', '2021-11-18 10:11:46'),
(222, 'public/profile/photo_gallery/User.7.8.jpg', 'false', 7, '2021-11-18 10:11:46', '2021-11-18 10:11:46'),
(223, 'public/profile/photo_gallery/User.7.9.jpg', 'false', 7, '2021-11-18 10:11:46', '2021-11-18 10:11:46'),
(224, 'public/profile/photo_gallery/User.7.10.jpg', 'false', 7, '2021-11-18 10:11:46', '2021-11-18 10:11:46'),
(225, 'public/profile/photo_gallery/User.7.11.jpg', 'false', 7, '2021-11-18 10:11:46', '2021-11-18 10:11:46'),
(226, 'public/profile/photo_gallery/User.7.12.jpg', 'false', 7, '2021-11-18 10:12:46', '2021-11-18 10:12:46'),
(227, 'public/profile/photo_gallery/User.7.13.jpg', 'false', 7, '2021-11-18 10:12:46', '2021-11-18 10:12:46'),
(228, 'public/profile/photo_gallery/User.7.14.jpg', 'false', 7, '2021-11-18 10:12:46', '2021-11-18 10:12:46'),
(229, 'public/profile/photo_gallery/User.7.15.jpg', 'false', 7, '2021-11-18 10:12:46', '2021-11-18 10:12:46'),
(230, 'public/profile/photo_gallery/User.7.16.jpg', 'false', 7, '2021-11-18 10:12:46', '2021-11-18 10:12:46'),
(231, 'public/profile/photo_gallery/User.7.17.jpg', 'false', 7, '2021-11-18 10:12:46', '2021-11-18 10:12:46'),
(232, 'public/profile/photo_gallery/User.7.18.jpg', 'false', 7, '2021-11-18 10:12:46', '2021-11-18 10:12:46'),
(233, 'public/profile/photo_gallery/User.7.19.jpg', 'false', 7, '2021-11-18 10:12:46', '2021-11-18 10:12:46'),
(234, 'public/profile/photo_gallery/User.7.20.jpg', 'false', 7, '2021-11-18 10:13:46', '2021-11-18 10:13:46'),
(235, 'public/profile/photo_gallery/User.7.21.jpg', 'false', 7, '2021-11-18 10:13:46', '2021-11-18 10:13:46'),
(236, 'public/profile/photo_gallery/User.7.22.jpg', 'false', 7, '2021-11-18 10:13:46', '2021-11-18 10:13:46'),
(237, 'public/profile/photo_gallery/User.7.23.jpg', 'false', 7, '2021-11-18 10:13:46', '2021-11-18 10:13:46'),
(238, 'public/profile/photo_gallery/User.7.24.jpg', 'false', 7, '2021-11-18 10:13:46', '2021-11-18 10:13:46'),
(239, 'public/profile/photo_gallery/User.7.25.jpg', 'false', 7, '2021-11-18 10:13:46', '2021-11-18 10:13:46'),
(240, 'public/profile/photo_gallery/User.7.26.jpg', 'false', 7, '2021-11-18 10:14:46', '2021-11-18 10:14:46'),
(241, 'public/profile/photo_gallery/User.7.27.jpg', 'false', 7, '2021-11-18 10:14:46', '2021-11-18 10:14:46'),
(242, 'public/profile/photo_gallery/User.7.28.jpg', 'false', 7, '2021-11-18 10:14:46', '2021-11-18 10:14:46'),
(243, 'public/profile/photo_gallery/User.7.29.jpg', 'false', 7, '2021-11-18 10:14:46', '2021-11-18 10:14:46'),
(244, 'public/profile/photo_gallery/User.7.30.jpg', 'false', 7, '2021-11-18 10:14:46', '2021-11-18 10:14:46'),
(245, 'public/profile/photo_gallery/User.7.31.jpg', 'false', 7, '2021-11-18 10:14:46', '2021-11-18 10:14:46'),
(246, 'public/profile/photo_gallery/User.7.32.jpg', 'false', 7, '2021-11-18 10:14:46', '2021-11-18 10:14:46'),
(247, 'public/profile/photo_gallery/User.7.33.jpg', 'false', 7, '2021-11-18 10:14:46', '2021-11-18 10:14:46'),
(248, 'public/profile/photo_gallery/User.7.34.jpg', 'false', 7, '2021-11-18 10:15:46', '2021-11-18 10:15:46'),
(249, 'public/profile/photo_gallery/User.7.35.jpg', 'false', 7, '2021-11-18 10:15:46', '2021-11-18 10:15:46'),
(250, 'public/profile/photo_gallery/User.7.36.jpg', 'false', 7, '2021-11-18 10:15:46', '2021-11-18 10:15:46'),
(251, 'public/profile/photo_gallery/User.7.37.jpg', 'false', 7, '2021-11-18 10:15:46', '2021-11-18 10:15:46'),
(252, 'public/profile/photo_gallery/User.7.38.jpg', 'false', 7, '2021-11-18 10:15:46', '2021-11-18 10:15:46'),
(253, 'public/profile/photo_gallery/User.7.39.jpg', 'false', 7, '2021-11-18 10:15:46', '2021-11-18 10:15:46'),
(254, 'public/profile/photo_gallery/User.7.40.jpg', 'false', 7, '2021-11-18 10:16:46', '2021-11-18 10:16:46'),
(255, 'public/profile/photo_gallery/User.7.41.jpg', 'false', 7, '2021-11-18 10:16:46', '2021-11-18 10:16:46'),
(256, 'public/profile/photo_gallery/User.7.42.jpg', 'false', 7, '2021-11-18 10:16:46', '2021-11-18 10:16:46'),
(257, 'public/profile/photo_gallery/User.7.43.jpg', 'false', 7, '2021-11-18 10:16:46', '2021-11-18 10:16:46'),
(258, 'public/profile/photo_gallery/User.7.44.jpg', 'false', 7, '2021-11-18 10:16:46', '2021-11-18 10:16:46'),
(259, 'public/profile/photo_gallery/User.7.45.jpg', 'false', 7, '2021-11-18 10:16:46', '2021-11-18 10:16:46'),
(260, 'public/profile/photo_gallery/User.7.46.jpg', 'false', 7, '2021-11-18 10:16:46', '2021-11-18 10:16:46'),
(261, 'public/profile/photo_gallery/User.7.47.jpg', 'false', 7, '2021-11-18 10:16:46', '2021-11-18 10:16:46'),
(262, 'public/profile/photo_gallery/User.7.48.jpg', 'false', 7, '2021-11-18 10:17:46', '2021-11-18 10:17:46'),
(263, 'public/profile/photo_gallery/User.7.49.jpg', 'false', 7, '2021-11-18 10:17:46', '2021-11-18 10:17:46'),
(264, 'public/profile/photo_gallery/User.7.50.jpg', 'false', 7, '2021-11-18 10:17:46', '2021-11-18 10:17:46'),
(265, 'public/profile/photo_gallery/User.6.1.jpg', 'false', 6, '2021-11-18 10:01:49', '2021-11-18 10:01:49'),
(266, 'public/profile/photo_gallery/User.6.2.jpg', 'false', 6, '2021-11-18 10:01:49', '2021-11-18 10:01:49'),
(267, 'public/profile/photo_gallery/User.6.3.jpg', 'false', 6, '2021-11-18 10:01:49', '2021-11-18 10:01:49'),
(268, 'public/profile/photo_gallery/User.6.4.jpg', 'false', 6, '2021-11-18 10:01:49', '2021-11-18 10:01:49'),
(269, 'public/profile/photo_gallery/User.6.5.jpg', 'false', 6, '2021-11-18 10:01:49', '2021-11-18 10:01:49'),
(270, 'public/profile/photo_gallery/User.6.6.jpg', 'false', 6, '2021-11-18 10:01:49', '2021-11-18 10:01:49'),
(271, 'public/profile/photo_gallery/User.6.7.jpg', 'false', 6, '2021-11-18 10:01:49', '2021-11-18 10:01:49'),
(272, 'public/profile/photo_gallery/User.6.8.jpg', 'false', 6, '2021-11-18 10:01:49', '2021-11-18 10:01:49'),
(273, 'public/profile/photo_gallery/User.6.9.jpg', 'false', 6, '2021-11-18 10:02:49', '2021-11-18 10:02:49'),
(274, 'public/profile/photo_gallery/User.6.10.jpg', 'false', 6, '2021-11-18 10:02:49', '2021-11-18 10:02:49'),
(275, 'public/profile/photo_gallery/User.6.11.jpg', 'false', 6, '2021-11-18 10:02:49', '2021-11-18 10:02:49'),
(276, 'public/profile/photo_gallery/User.6.12.jpg', 'false', 6, '2021-11-18 10:02:49', '2021-11-18 10:02:49'),
(277, 'public/profile/photo_gallery/User.6.13.jpg', 'false', 6, '2021-11-18 10:02:49', '2021-11-18 10:02:49'),
(278, 'public/profile/photo_gallery/User.6.14.jpg', 'false', 6, '2021-11-18 10:02:49', '2021-11-18 10:02:49'),
(279, 'public/profile/photo_gallery/User.6.15.jpg', 'false', 6, '2021-11-18 10:03:49', '2021-11-18 10:03:49'),
(280, 'public/profile/photo_gallery/User.6.16.jpg', 'false', 6, '2021-11-18 10:03:49', '2021-11-18 10:03:49'),
(281, 'public/profile/photo_gallery/User.6.17.jpg', 'false', 6, '2021-11-18 10:03:49', '2021-11-18 10:03:49'),
(282, 'public/profile/photo_gallery/User.6.18.jpg', 'false', 6, '2021-11-18 10:03:49', '2021-11-18 10:03:49'),
(283, 'public/profile/photo_gallery/User.6.19.jpg', 'false', 6, '2021-11-18 10:03:49', '2021-11-18 10:03:49'),
(284, 'public/profile/photo_gallery/User.6.20.jpg', 'false', 6, '2021-11-18 10:03:49', '2021-11-18 10:03:49'),
(285, 'public/profile/photo_gallery/User.6.21.jpg', 'false', 6, '2021-11-18 10:04:49', '2021-11-18 10:04:49'),
(286, 'public/profile/photo_gallery/User.6.22.jpg', 'false', 6, '2021-11-18 10:04:49', '2021-11-18 10:04:49'),
(287, 'public/profile/photo_gallery/User.6.23.jpg', 'false', 6, '2021-11-18 10:04:49', '2021-11-18 10:04:49'),
(288, 'public/profile/photo_gallery/User.6.24.jpg', 'false', 6, '2021-11-18 10:04:49', '2021-11-18 10:04:49'),
(289, 'public/profile/photo_gallery/User.6.25.jpg', 'false', 6, '2021-11-18 10:04:49', '2021-11-18 10:04:49'),
(290, 'public/profile/photo_gallery/User.6.26.jpg', 'false', 6, '2021-11-18 10:04:49', '2021-11-18 10:04:49'),
(291, 'public/profile/photo_gallery/User.6.27.jpg', 'false', 6, '2021-11-18 10:04:49', '2021-11-18 10:04:49'),
(292, 'public/profile/photo_gallery/User.6.28.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(293, 'public/profile/photo_gallery/User.6.29.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(294, 'public/profile/photo_gallery/User.6.30.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(295, 'public/profile/photo_gallery/User.6.31.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(296, 'public/profile/photo_gallery/User.6.32.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(297, 'public/profile/photo_gallery/User.6.33.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(298, 'public/profile/photo_gallery/User.6.34.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(299, 'public/profile/photo_gallery/User.6.35.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(300, 'public/profile/photo_gallery/User.6.36.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(301, 'public/profile/photo_gallery/User.6.37.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(302, 'public/profile/photo_gallery/User.6.38.jpg', 'false', 6, '2021-11-18 10:05:49', '2021-11-18 10:05:49'),
(303, 'public/profile/photo_gallery/User.6.39.jpg', 'false', 6, '2021-11-18 10:06:49', '2021-11-18 10:06:49'),
(304, 'public/profile/photo_gallery/User.6.40.jpg', 'false', 6, '2021-11-18 10:06:49', '2021-11-18 10:06:49'),
(305, 'public/profile/photo_gallery/User.6.41.jpg', 'false', 6, '2021-11-18 10:06:49', '2021-11-18 10:06:49'),
(306, 'public/profile/photo_gallery/User.6.42.jpg', 'false', 6, '2021-11-18 10:06:49', '2021-11-18 10:06:49'),
(307, 'public/profile/photo_gallery/User.6.43.jpg', 'false', 6, '2021-11-18 10:06:49', '2021-11-18 10:06:49'),
(308, 'public/profile/photo_gallery/User.6.44.jpg', 'false', 6, '2021-11-18 10:06:49', '2021-11-18 10:06:49'),
(309, 'public/profile/photo_gallery/User.6.45.jpg', 'false', 6, '2021-11-18 10:06:49', '2021-11-18 10:06:49'),
(310, 'public/profile/photo_gallery/User.6.46.jpg', 'false', 6, '2021-11-18 10:06:49', '2021-11-18 10:06:49'),
(311, 'public/profile/photo_gallery/User.6.47.jpg', 'false', 6, '2021-11-18 10:07:49', '2021-11-18 10:07:49'),
(312, 'public/profile/photo_gallery/User.6.48.jpg', 'false', 6, '2021-11-18 10:07:49', '2021-11-18 10:07:49'),
(313, 'public/profile/photo_gallery/User.6.49.jpg', 'false', 6, '2021-11-18 10:07:49', '2021-11-18 10:07:49'),
(314, 'public/profile/photo_gallery/User.6.50.jpg', 'false', 6, '2021-11-18 10:07:49', '2021-11-18 10:07:49'),
(315, 'public/profile/photo_gallery/User.4.1.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(316, 'public/profile/photo_gallery/User.4.2.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(317, 'public/profile/photo_gallery/User.4.3.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(318, 'public/profile/photo_gallery/User.4.4.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(319, 'public/profile/photo_gallery/User.4.5.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(320, 'public/profile/photo_gallery/User.4.6.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(321, 'public/profile/photo_gallery/User.4.7.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(322, 'public/profile/photo_gallery/User.4.8.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(323, 'public/profile/photo_gallery/User.4.9.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(324, 'public/profile/photo_gallery/User.4.10.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(325, 'public/profile/photo_gallery/User.4.11.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(326, 'public/profile/photo_gallery/User.4.12.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(327, 'public/profile/photo_gallery/User.4.13.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(328, 'public/profile/photo_gallery/User.4.14.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(329, 'public/profile/photo_gallery/User.4.15.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(330, 'public/profile/photo_gallery/User.4.16.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(331, 'public/profile/photo_gallery/User.4.17.jpg', 'false', 4, '2021-11-21 02:57:35', '2021-11-21 02:57:35'),
(332, 'public/profile/photo_gallery/User.4.18.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(333, 'public/profile/photo_gallery/User.4.19.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(334, 'public/profile/photo_gallery/User.4.20.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(335, 'public/profile/photo_gallery/User.4.21.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(336, 'public/profile/photo_gallery/User.4.22.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(337, 'public/profile/photo_gallery/User.4.23.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(338, 'public/profile/photo_gallery/User.4.24.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(339, 'public/profile/photo_gallery/User.4.25.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(340, 'public/profile/photo_gallery/User.4.26.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(341, 'public/profile/photo_gallery/User.4.27.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(342, 'public/profile/photo_gallery/User.4.28.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(343, 'public/profile/photo_gallery/User.4.29.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(344, 'public/profile/photo_gallery/User.4.30.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(345, 'public/profile/photo_gallery/User.4.31.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(346, 'public/profile/photo_gallery/User.4.32.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(347, 'public/profile/photo_gallery/User.4.33.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(348, 'public/profile/photo_gallery/User.4.34.jpg', 'false', 4, '2021-11-21 02:58:35', '2021-11-21 02:58:35'),
(349, 'public/profile/photo_gallery/User.4.35.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(350, 'public/profile/photo_gallery/User.4.36.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(351, 'public/profile/photo_gallery/User.4.37.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(352, 'public/profile/photo_gallery/User.4.38.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(353, 'public/profile/photo_gallery/User.4.39.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(354, 'public/profile/photo_gallery/User.4.40.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(355, 'public/profile/photo_gallery/User.4.41.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(356, 'public/profile/photo_gallery/User.4.42.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(357, 'public/profile/photo_gallery/User.4.43.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(358, 'public/profile/photo_gallery/User.4.44.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(359, 'public/profile/photo_gallery/User.4.45.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(360, 'public/profile/photo_gallery/User.4.46.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(361, 'public/profile/photo_gallery/User.4.47.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(362, 'public/profile/photo_gallery/User.4.48.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(363, 'public/profile/photo_gallery/User.4.49.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(364, 'public/profile/photo_gallery/User.4.50.jpg', 'false', 4, '2021-11-21 02:59:35', '2021-11-21 02:59:35'),
(365, 'public/profile/photo_gallery/User.8.1.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(366, 'public/profile/photo_gallery/User.8.2.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(367, 'public/profile/photo_gallery/User.8.3.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(368, 'public/profile/photo_gallery/User.8.4.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(369, 'public/profile/photo_gallery/User.8.5.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(370, 'public/profile/photo_gallery/User.8.6.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(371, 'public/profile/photo_gallery/User.8.7.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(372, 'public/profile/photo_gallery/User.8.8.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(373, 'public/profile/photo_gallery/User.8.9.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(374, 'public/profile/photo_gallery/User.8.10.jpg', 'false', 8, '2021-11-21 02:20:37', '2021-11-21 02:20:37'),
(375, 'public/profile/photo_gallery/User.8.11.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(376, 'public/profile/photo_gallery/User.8.12.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(377, 'public/profile/photo_gallery/User.8.13.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(378, 'public/profile/photo_gallery/User.8.14.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(379, 'public/profile/photo_gallery/User.8.15.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(380, 'public/profile/photo_gallery/User.8.16.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(381, 'public/profile/photo_gallery/User.8.17.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(382, 'public/profile/photo_gallery/User.8.18.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(383, 'public/profile/photo_gallery/User.8.19.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(384, 'public/profile/photo_gallery/User.8.20.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(385, 'public/profile/photo_gallery/User.8.21.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(386, 'public/profile/photo_gallery/User.8.22.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(387, 'public/profile/photo_gallery/User.8.23.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(388, 'public/profile/photo_gallery/User.8.24.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(389, 'public/profile/photo_gallery/User.8.25.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(390, 'public/profile/photo_gallery/User.8.26.jpg', 'false', 8, '2021-11-21 02:21:37', '2021-11-21 02:21:37'),
(391, 'public/profile/photo_gallery/User.8.27.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(392, 'public/profile/photo_gallery/User.8.28.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(393, 'public/profile/photo_gallery/User.8.29.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(394, 'public/profile/photo_gallery/User.8.30.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(395, 'public/profile/photo_gallery/User.8.31.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(396, 'public/profile/photo_gallery/User.8.32.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(397, 'public/profile/photo_gallery/User.8.33.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(398, 'public/profile/photo_gallery/User.8.34.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(399, 'public/profile/photo_gallery/User.8.35.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(400, 'public/profile/photo_gallery/User.8.36.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(401, 'public/profile/photo_gallery/User.8.37.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(402, 'public/profile/photo_gallery/User.8.38.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(403, 'public/profile/photo_gallery/User.8.39.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(404, 'public/profile/photo_gallery/User.8.40.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(405, 'public/profile/photo_gallery/User.8.41.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(406, 'public/profile/photo_gallery/User.8.42.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(407, 'public/profile/photo_gallery/User.8.43.jpg', 'false', 8, '2021-11-21 02:22:37', '2021-11-21 02:22:37'),
(408, 'public/profile/photo_gallery/User.8.44.jpg', 'false', 8, '2021-11-21 02:23:37', '2021-11-21 02:23:37'),
(409, 'public/profile/photo_gallery/User.8.45.jpg', 'false', 8, '2021-11-21 02:23:37', '2021-11-21 02:23:37'),
(410, 'public/profile/photo_gallery/User.8.46.jpg', 'false', 8, '2021-11-21 02:23:37', '2021-11-21 02:23:37'),
(411, 'public/profile/photo_gallery/User.8.47.jpg', 'false', 8, '2021-11-21 02:23:37', '2021-11-21 02:23:37'),
(412, 'public/profile/photo_gallery/User.8.48.jpg', 'false', 8, '2021-11-21 02:23:37', '2021-11-21 02:23:37'),
(413, 'public/profile/photo_gallery/User.8.49.jpg', 'false', 8, '2021-11-21 02:23:37', '2021-11-21 02:23:37'),
(414, 'public/profile/photo_gallery/User.8.50.jpg', 'false', 8, '2021-11-21 02:23:37', '2021-11-21 02:23:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_tokens`
--

CREATE TABLE `login_tokens` (
  `id_user` int(11) NOT NULL,
  `token` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `login_tokens`
--

INSERT INTO `login_tokens` (`id_user`, `token`) VALUES
(4, '2db3a857d1a8ed156cba13d9fe62d546'),
(4, 'd9b42d454f85ea94f22a47e23fe61e85'),
(4, 'eefa666dc10230a18a3ed294bfc3036b'),
(8, 'b3550012e529d16709930cb5a5bc14e0'),
(131, '5bbf5dc362d4e3d22b69ce58734415bb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(300) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `role` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mssv` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`, `updated_at`, `role`, `fullname`, `avatar`, `mssv`) VALUES
(4, 'kilros123hcm', '$2y$10$ByoIr9AaQ93ifaYvwBJWKuG56vRcIysBMnwaLw86kEL/hZEDaYkM.', '41800516@gmail.com', '2021-08-23 15:24:25', '2022-01-22 09:19:53', 'Admin', 'Nguyễn Minh Khôi', 'public/profile/avatar/113.3ee607477a51890fd040.jpg', '41800516'),
(5, 'sang', '$2y$10$ZUrL9WXBD1/3Wucwp2kyu.o7OzcreT.4nI9XNp3kSAnjhqRZj42Rq', 'sang@gmail.com', '2021-10-30 15:14:31', '2022-01-22 09:25:53', 'Admin', 'Nguyễn Tấn Sang', 'public/profile/avatar/5.User.5.11.jpg', '41801047'),
(6, 'huy', '$2y$10$zW1jDVoyS7U/8gjZs7cQHe1K1tibGamNwCKWvsLtbis4dllbUR7n6', 'huy@gmail.com', '2021-08-23 15:24:25', '2021-11-18 10:38:51', 'Staff', 'Phạm Trương Quốc Huy', 'public/profile/avatar/6.User.6.1.jpg', '41801013'),
(7, 'cuong', '$2y$10$hul2fu/u2tEJ0ZPW5sbavOKMg48cOS9/YshTf9YniOjCe/4VxfAea', 'cuong@gmail.com', '2021-11-13 19:15:48', '2021-11-18 10:34:48', 'Staff', 'Lê Gia Cương', 'public/profile/avatar/7.User.7.1.jpg', '41800992'),
(8, 'nhan', '$2y$10$hOk9QAefDE9dLIcqyEvphOtFq1VKmHmcNuWXlu9Lmj0KLoSt9/ZiS', 'nhan@gmail.com', '2021-11-13 19:15:48', '2021-11-18 10:24:47', 'Staff', 'Lê Thành Nhân', '', '41801033');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD PRIMARY KEY (`id_user`,`token`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1126;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
