-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2023 at 03:36 AM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u808534763_hbwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'tjwebdev', '12345'),
(2, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(1, 1, 'Simple Room', 300, 300, NULL, 'tjwebdev', '123', 'ad'),
(2, 2, 'Simple Room', 300, 600, 'a2', 'tjwebdev', '123', 'ad'),
(3, 3, 'Simple Room', 300, 1800, NULL, 'tjwebdev', '123', 'ad'),
(4, 4, 'Supreme deluxe room', 900, 4500, NULL, 'tjwebdev', '123', 'ad'),
(5, 5, 'Supreme deluxe room', 900, 900, NULL, 'tjwebdev', '123', 'ad'),
(6, 6, 'Supreme deluxe room', 900, 7200, '52', 'tjwebdev', '12323432', 'ad2342343'),
(7, 7, 'Supreme deluxe room', 900, 900, NULL, 'tjwebdev', '123', 'ad'),
(8, 8, 'Simple Room', 300, 600, NULL, 'tjwebdev', '123', 'ad'),
(9, 9, 'Luxury Room', 600, 3000, '159A', 'tj webdev', '123', 'ad'),
(10, 10, 'Luxury Room', 600, 1800, '15S', 'tj webdev', '123', 'ad'),
(11, 11, 'Supreme deluxe room', 900, 2700, '1', 'tj webdev', '123', 'ad'),
(12, 12, 'Simple Room', 300, 1200, '2', 'tj webdev', '123', 'ad'),
(13, 13, 'Deluxe Room', 500, 3000, '23', 'tj webdev', '123', 'ad'),
(14, 14, 'Luxury Room', 600, 2400, '44', 'tj webdev', '123', 'ad'),
(15, 15, 'Luxury Room', 600, 1200, NULL, 'tj webdev', '123', 'ad'),
(16, 16, 'Luxury Room', 600, 1200, '1', 'tj webdev', '123', 'ad'),
(17, 17, 'Simple Room', 300, 900, '20A', 'tj webdev', '123', 'ad'),
(18, 18, '1 Person in 8-Bed Dormitory - Mixed', 878, 878, NULL, 'tj webdev', '123', 'ad'),
(19, 19, 'Private Room', 2494, 2494, NULL, 'Kenshin', '123', 'ad'),
(20, 20, '1 Person in 6-Bed Dormitory -- Mixed', 857, 857, NULL, 'Anton', '09479643710', 'Caloocan'),
(21, 21, 'Survey Room', 1, 1, NULL, 'Anton', '09479643710', 'Caloocan'),
(22, 22, 'Survey Room', 1, 1, NULL, 'Anton', '09479643710', 'Caloocan'),
(23, 23, 'Survey Room', 1, 1, NULL, 'Anton', '09479643710', 'Caloocan'),
(24, 24, 'Survey Room', 1, 1, NULL, 'Anton', '09479643710', 'Caloocan'),
(25, 25, 'Private Bunk', 2494, 4988, NULL, 'Bridx Aquino', '111', 'aaa'),
(26, 26, 'Private Bunk', 2494, 2494, NULL, 'Bridx Aquino', '111', 'aaa'),
(27, 27, 'Private Bunk', 2494, 2494, NULL, 'Bridx Aquino', '111', 'aaa'),
(28, 28, 'Private Room', 2494, 2494, NULL, 'Bridx Aquino', '111', 'aaa'),
(29, 29, 'Survey Room', 1, 1, NULL, 'Anton', '09479643710', 'Caloocan');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(26, 8, 13, '2023-03-30', '2023-03-31', 0, NULL, 'pending', 'ORD_85254248', NULL, 0, 'pending', NULL, NULL, '2023-03-26 17:57:36'),
(27, 8, 13, '2023-03-28', '2023-03-29', 0, NULL, 'pending', 'ORD_83022246', NULL, 0, 'pending', NULL, NULL, '2023-03-26 18:03:50'),
(28, 8, 7, '2023-03-28', '2023-03-29', 0, NULL, 'pending', 'ORD_87045941', NULL, 0, 'pending', NULL, NULL, '2023-03-26 18:25:26'),
(29, 13, 14, '2023-04-04', '2023-04-05', 0, NULL, 'pending', 'ORD_136834021', NULL, 0, 'pending', NULL, NULL, '2023-04-04 09:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(21, 'IMG_59597.jpg'),
(22, 'IMG_33106.jpg'),
(23, 'IMG_53154.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, '5660 Don Pedro, Makati, 1209 Metro Manila', 'https://goo.gl/maps/fLQr99jivqAau1AX7', 28560851, 639178898531, 'zhostelph@gmail.com', 'https://web.facebook.com/ZHostelph', 'https://www.instagram.com/zhostelph/', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.618877604159!2d121.02919401492298!3d14.563774089825896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c9aaf1f35e4f:0x7f6c432bba82e5b3!2sZ Hostel!5e0!3m2!1sen!2sph!4v1677936659559!5m2!1sen!2sph');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'FREE WIFI', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus incidunt odio quos dolore commodi repudiandae tenetur.'),
(14, 'IMG_49949.svg', 'AIR CONDITIONER', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus incidunt odio quos dolore commodi repudiandae tenetur.'),
(20, 'IMG_67128.svg', 'LUGGAGE', ''),
(21, 'IMG_18304.svg', 'LOCKER', ''),
(22, 'IMG_15104.svg', 'PC AT LOBBY', ''),
(23, 'IMG_80935.svg', 'HOT &amp; COLD SHOWER', ''),
(24, 'IMG_62300.svg', '24HR SECURITY &amp; CCTV', ''),
(25, 'IMG_23440.svg', 'CONCIERGE', ''),
(27, 'IMG_76490.svg', 'FRONT DESK', ''),
(28, 'IMG_48408.svg', 'SANITATION KIT &amp; TOILETRIES', ''),
(29, 'IMG_28415.svg', 'CLOTHING', ''),
(30, 'IMG_37133.svg', 'TEMPERATURE CHECK', '');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(18, 'Free Breakfast'),
(19, 'Free Wifi'),
(20, 'Air conditioning'),
(23, 'Linens'),
(24, 'Non-smoking'),
(25, 'City View'),
(26, 'Free bottled water'),
(27, 'Reading Light'),
(28, 'Locker'),
(29, 'Extra long bed'),
(30, 'Desk'),
(32, 'TV'),
(34, 'Towels'),
(35, 'Toiletries'),
(36, 'Hand sanitizer'),
(37, 'Trash cans'),
(38, 'Smoke detector'),
(39, 'Socket near the bed'),
(40, 'Shared Bathroom'),
(41, 'Own bathroom'),
(42, '1 queen bed'),
(43, '1 bunk bed'),
(44, 'Shower');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'simple room', 159, 58, 56, 12, 2, 'asdf asd', 1, 1),
(2, 'simple room 2', 785, 159, 85, 452, 10, 'adfasdfa sd', 1, 1),
(3, 'Simple Room', 250, 300, 10, 5, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 1),
(4, 'Deluxe Room', 300, 500, 10, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 1),
(5, 'Luxury Room', 600, 600, 2, 8, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 1),
(6, 'Supreme deluxe room', 500, 900, 12, 9, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 1),
(7, 'Private Room', 161, 2494, 10, 2, 1, 'Good vibes taken on a whole new level! Strategically located on the highest floors, our private rooms are the perfect place for comfort while staying at the hostel --- it is fully air-conditioned, features a queen size bed with two pillows and duvet, your own private bathroom en-suite, and two bathrobes.  And the great part? You are just a few steps away from the world-renowned Z Roofdeck, which gives you a breathtaking view of the skyline while having some cold beers at the bar. The music beats might just get you in the groove for some drinks and socializing at night! So if you are looking for a good night’s sleep, this might not be the ideal place for you.', 1, 0),
(8, 'Private Room', 161, 2494, 10, 2, 1, 'Good vibes taken on a whole new level! Strategically located on the highest floors, our private rooms are the perfect place for comfort while staying at the hostel --- it is fully air-conditioned, features a queen size bed with two pillows and duvet, your own private bathroom en-suite, and two bathrobes.  And the great part? You are just a few step', 1, 1),
(9, '1 Person in 8-Bed Dormitory - Mixed', 323, 878, 26, 8, 10, 'Stylish 8 bed dorms!\r\nIf you\'re up for a party and designed for interaction without compromising comfort. They are near the elevators, too, for an easier access to the Roofdeck or the lobby for a chill-out session with your new-found friends!\r\n\r\n*The 6-bed and 8-bed dorm rooms also have a built-in sink inside the room for a quick fix-up without having to wait forever for the shower room.', 1, 0),
(10, '1 Person in 6-Bed Dormitory -- Mixed', 323, 857, 24, 6, 10, 'Stylish 6 bed dorms!\r\nJust the right amount of people to turn your stay into a fun experience\r\n\r\n*The 6-bed and 8-bed dorm rooms also have a built-in sink inside the room for a quick fix-up without having to wait forever for the shower room.', 1, 0),
(11, '1 Person in 6-Bed Dormitory -- Female Only', 323, 923, 1, 6, 10, 'Who says backpacking means always having to rough it up? Unleash the lady in you and welcome to our “Stiletto” room! Our All-Female Dorm is every girl traveller’s ideal home on the road. There’s a dresser where you can lounge around and a vanity mirror to get ready for that night out in the city! We’ve got your priceless possessions covered, too! The room’s lockers are designed to be bigger than usual mixed dorm lockers. This room is perfect for socializing with fellow female travelers and being comfortable in your skin. And if you’re a group of girls traveling together, then make this your she-shed while in Manila!\r\n\r\n*Hairdryer, flat iron and board are available upon request.\r\n\r\n*Free Breakfast Included', 1, 0),
(12, '1 Bed in 4 Bed Mixed Dormitory', 161, 940, 1, 4, 10, 'Stylish 4 bed dorms!\r\nPerfect for those who want a good mix of privacy and sociability', 1, 0),
(13, 'Private Bunk', 161, 2494, 1, 2, 1, 'Privacy and personal space in one — Z Hostel is spoiling you with this Private Bunk Bed Room! Now you can have a whole room for you and your buddy but you also get your own down or private time from each other. Not that being cozy is bad but you get what we mean!\r\n\r\n*Hairdryer, flat iron and board are available upon request\r\n\r\n*Free Breakfast for 2 included', 1, 0),
(14, 'Survey Room', 161, 1, 1, 10, 1, 'For survey room', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(101, 7, 13),
(102, 7, 14),
(103, 7, 20),
(104, 7, 21),
(105, 7, 22),
(106, 7, 23),
(107, 7, 24),
(108, 7, 25),
(109, 7, 27),
(110, 7, 28),
(111, 7, 29),
(112, 7, 30),
(113, 9, 13),
(114, 9, 14),
(115, 9, 20),
(116, 9, 21),
(117, 9, 22),
(118, 9, 23),
(119, 9, 24),
(120, 9, 25),
(121, 9, 27),
(122, 9, 28),
(123, 9, 29),
(124, 9, 30),
(125, 10, 13),
(126, 10, 14),
(127, 10, 20),
(128, 10, 21),
(129, 10, 22),
(130, 10, 23),
(131, 10, 24),
(132, 10, 25),
(133, 10, 27),
(134, 10, 28),
(135, 10, 29),
(136, 10, 30),
(137, 11, 13),
(138, 11, 14),
(139, 11, 20),
(140, 11, 21),
(141, 11, 22),
(142, 11, 23),
(143, 11, 24),
(144, 11, 25),
(145, 11, 27),
(146, 11, 28),
(147, 11, 29),
(148, 11, 30),
(149, 12, 13),
(150, 12, 14),
(151, 12, 20),
(152, 12, 21),
(153, 12, 22),
(154, 12, 23),
(155, 12, 24),
(156, 12, 25),
(157, 12, 27),
(158, 12, 28),
(159, 12, 29),
(160, 12, 30),
(161, 13, 13),
(162, 13, 14),
(163, 13, 20),
(164, 13, 21),
(165, 13, 22),
(166, 13, 23),
(167, 13, 24),
(168, 13, 25),
(169, 13, 27),
(170, 13, 28),
(171, 13, 29),
(172, 13, 30),
(173, 14, 13),
(174, 14, 14),
(175, 14, 20),
(176, 14, 21),
(177, 14, 22),
(178, 14, 23),
(179, 14, 24),
(180, 14, 25),
(181, 14, 27),
(182, 14, 28),
(183, 14, 29),
(184, 14, 30);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(195, 7, 18),
(196, 7, 19),
(197, 7, 20),
(198, 7, 23),
(199, 7, 24),
(200, 7, 25),
(201, 7, 26),
(202, 7, 27),
(203, 7, 29),
(204, 7, 30),
(205, 7, 34),
(206, 7, 35),
(207, 7, 36),
(208, 7, 37),
(209, 7, 38),
(210, 7, 39),
(211, 7, 41),
(212, 7, 42),
(213, 7, 44),
(214, 9, 18),
(215, 9, 19),
(216, 9, 20),
(217, 9, 23),
(218, 9, 24),
(219, 9, 25),
(220, 9, 28),
(221, 9, 29),
(222, 9, 34),
(223, 9, 35),
(224, 9, 36),
(225, 9, 37),
(226, 9, 38),
(227, 9, 39),
(228, 9, 40),
(229, 9, 43),
(230, 9, 44),
(231, 10, 18),
(232, 10, 19),
(233, 10, 20),
(234, 10, 23),
(235, 10, 24),
(236, 10, 25),
(237, 10, 28),
(238, 10, 29),
(239, 10, 34),
(240, 10, 35),
(241, 10, 36),
(242, 10, 37),
(243, 10, 38),
(244, 10, 39),
(245, 10, 40),
(246, 10, 43),
(247, 10, 44),
(248, 11, 18),
(249, 11, 19),
(250, 11, 20),
(251, 11, 23),
(252, 11, 24),
(253, 11, 25),
(254, 11, 28),
(255, 11, 29),
(256, 11, 34),
(257, 11, 35),
(258, 11, 36),
(259, 11, 37),
(260, 11, 38),
(261, 11, 39),
(262, 11, 41),
(263, 11, 43),
(264, 11, 44),
(265, 12, 18),
(266, 12, 19),
(267, 12, 20),
(268, 12, 23),
(269, 12, 24),
(270, 12, 28),
(271, 12, 34),
(272, 12, 35),
(273, 12, 36),
(274, 12, 37),
(275, 12, 38),
(276, 12, 39),
(277, 12, 40),
(278, 12, 43),
(279, 12, 44),
(280, 13, 18),
(281, 13, 19),
(282, 13, 20),
(283, 13, 23),
(284, 13, 26),
(285, 13, 28),
(286, 13, 30),
(287, 13, 34),
(288, 13, 35),
(289, 13, 36),
(290, 13, 37),
(291, 13, 38),
(292, 13, 39),
(293, 13, 41),
(294, 13, 43),
(295, 13, 44),
(296, 14, 18),
(297, 14, 19),
(298, 14, 20),
(299, 14, 23),
(300, 14, 24),
(301, 14, 26),
(302, 14, 28),
(303, 14, 29),
(304, 14, 34),
(305, 14, 35),
(306, 14, 36),
(307, 14, 37),
(308, 14, 38),
(309, 14, 39),
(310, 14, 40),
(311, 14, 43),
(312, 14, 44);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(1, 7, 'IMG_83375.jpg', 1),
(2, 7, 'IMG_87407.jpg', 0),
(3, 7, 'IMG_81569.jpg', 0),
(4, 7, 'IMG_17811.jpg', 0),
(5, 7, 'IMG_89785.jpg', 0),
(6, 7, 'IMG_99925.jpg', 0),
(7, 7, 'IMG_21357.jpg', 0),
(8, 7, 'IMG_31255.jpg', 0),
(9, 7, 'IMG_97988.jpg', 0),
(10, 9, 'IMG_47283.jpg', 0),
(11, 9, 'IMG_55396.jpg', 0),
(12, 9, 'IMG_96443.jpg', 0),
(13, 9, 'IMG_96337.jpg', 0),
(14, 9, 'IMG_66205.jpg', 0),
(15, 9, 'IMG_41964.jpg', 0),
(16, 9, 'IMG_90455.jpg', 0),
(17, 9, 'IMG_15332.jpg', 0),
(18, 9, 'IMG_48023.jpg', 1),
(19, 9, 'IMG_72168.jpg', 0),
(20, 10, 'IMG_40047.jpg', 0),
(21, 10, 'IMG_70684.jpg', 0),
(22, 10, 'IMG_48160.jpg', 0),
(23, 10, 'IMG_20145.jpg', 1),
(24, 10, 'IMG_90280.jpg', 0),
(25, 10, 'IMG_78665.jpg', 0),
(26, 10, 'IMG_63106.jpg', 0),
(27, 10, 'IMG_53877.jpg', 0),
(28, 10, 'IMG_44778.jpg', 0),
(29, 10, 'IMG_56418.jpg', 0),
(30, 10, 'IMG_57577.jpg', 0),
(31, 11, 'IMG_38782.webp', 0),
(32, 11, 'IMG_83838.webp', 0),
(33, 11, 'IMG_38994.jpg', 0),
(34, 11, 'IMG_32258.jpg', 0),
(35, 11, 'IMG_12544.jpg', 0),
(36, 11, 'IMG_17474.jpg', 1),
(37, 11, 'IMG_65288.jpg', 0),
(38, 11, 'IMG_67398.jpg', 0),
(39, 11, 'IMG_82518.jpg', 0),
(40, 11, 'IMG_21471.jpg', 0),
(41, 11, 'IMG_80792.jpg', 0),
(42, 11, 'IMG_49751.jpg', 0),
(43, 12, 'IMG_47224.webp', 0),
(44, 12, 'IMG_96855.webp', 0),
(45, 12, 'IMG_53520.jpg', 0),
(46, 12, 'IMG_20212.jpg', 1),
(47, 12, 'IMG_81997.jpg', 0),
(48, 12, 'IMG_26833.jpg', 0),
(49, 12, 'IMG_44725.jpg', 0),
(50, 12, 'IMG_52189.jpg', 0),
(51, 12, 'IMG_28695.jpg', 0),
(52, 12, 'IMG_29126.jpg', 0),
(53, 12, 'IMG_75491.jpg', 0),
(54, 12, 'IMG_45876.jpg', 0),
(55, 12, 'IMG_17265.webp', 0),
(56, 12, 'IMG_84657.webp', 0),
(57, 13, 'IMG_60424.webp', 0),
(59, 13, 'IMG_20621.webp', 1),
(60, 13, 'IMG_64160.webp', 0),
(61, 13, 'IMG_76930.jpg', 0),
(62, 13, 'IMG_67423.jpg', 0),
(63, 13, 'IMG_75630.jpg', 0),
(64, 13, 'IMG_95830.webp', 0),
(65, 14, 'IMG_16083.jpg', 1),
(66, 14, 'IMG_36917.webp', 0),
(67, 14, 'IMG_81099.webp', 0),
(68, 14, 'IMG_52216.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` mediumtext NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Z Hostel', 'This is Z Hostel, a new generation of travel accommodation that is transforming the hospitality industry: more interactive, more social, more human. Z Hostel is a pioneering social hostel located at the heart of the Makati metropolis.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(9, 'person 1', 'IMG_69318.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(12, 'Bridx Aquino', 'xdirb32@gmail.com', 'testing', '09173301654', 3319, '2001-01-23', 'IMG_46469.jpeg', '$2y$10$xeYhh/Xmn1pOIyAspBTJ.eq8N7om01207ExPDeiEoopTmeVC6n4gS', 1, 'e7a041d45b89f3ba8dbfa705118c26ee', NULL, 1, '2023-04-01 07:12:42'),
(13, 'Anton', 'antontandiama@gmail.com', 'Caloocan', '09479643710', 1421, '2001-04-19', 'IMG_32085.jpeg', '$2y$10$Bzgq1IL3GAox0Vd4DKECsODUiTP68ylrN9o8QEzJc.17YV/hSIXIi', 1, 'a45b91a92fdf5fb09ec7a7dd9183098a', NULL, 1, '2023-04-01 07:16:06'),
(14, 'Max', 'maxtandiama@gmail.com', 'Caloocan', '11111', 1421, '2001-04-19', 'IMG_21672.jpeg', '$2y$10$JELiBQGG2FFoWsrFL4lyIeRBdEcR29.d8IhoPzjewJbTyh/7YFJem', 1, '7738593df7ba78d36d9e3d35e053adee', NULL, 1, '2023-04-02 12:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(12, 'Kenshin', 'kebnshin@gmail.com', 'Hi', 'HELLO PO', '2023-03-24 14:58:30', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
