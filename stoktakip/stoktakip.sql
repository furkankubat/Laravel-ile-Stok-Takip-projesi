-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2023 at 12:57 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stoktakip`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ilcelers`
--

CREATE TABLE `ilcelers` (
  `id` bigint UNSIGNED NOT NULL,
  `il_id` int NOT NULL,
  `ilce_adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilcelers`
--

INSERT INTO `ilcelers` (`id`, `il_id`, `ilce_adi`, `created_at`, `updated_at`) VALUES
(1, 1, 'Seyhan', NULL, NULL),
(2, 1, 'Ceyhan', NULL, NULL),
(3, 1, 'Feke', NULL, NULL),
(4, 1, 'Karaisalı', NULL, NULL),
(5, 1, 'Karataş', NULL, NULL),
(6, 1, 'Kozan', NULL, NULL),
(7, 1, 'Pozantı', NULL, NULL),
(8, 1, 'Saimbeyli', NULL, NULL),
(9, 1, 'Tufanbeyli', NULL, NULL),
(10, 1, 'Yumurtalık', NULL, NULL),
(11, 1, 'Yüreğir', NULL, NULL),
(12, 1, 'Aladağ', NULL, NULL),
(13, 1, 'İmamoğlu', NULL, NULL),
(14, 1, 'Sarıçam', NULL, NULL),
(15, 1, 'Çukurova', NULL, NULL),
(16, 2, 'Adıyaman Merkez', NULL, NULL),
(17, 2, 'Besni', NULL, NULL),
(18, 2, 'Çelikhan', NULL, NULL),
(19, 2, 'Gerger', NULL, NULL),
(20, 2, 'Gölbaşı / Adıyaman', NULL, NULL),
(21, 2, 'Kahta', NULL, NULL),
(22, 2, 'Samsat', NULL, NULL),
(23, 2, 'Sincik', NULL, NULL),
(24, 2, 'Tut', NULL, NULL),
(25, 3, 'Afyonkarahisar Merkez', NULL, NULL),
(26, 3, 'Bolvadin', NULL, NULL),
(27, 3, 'Çay', NULL, NULL),
(28, 3, 'Dazkırı', NULL, NULL),
(29, 3, 'Dinar', NULL, NULL),
(30, 3, 'Emirdağ', NULL, NULL),
(31, 3, 'İhsaniye', NULL, NULL),
(32, 3, 'Sandıklı', NULL, NULL),
(33, 3, 'Sinanpaşa', NULL, NULL),
(34, 3, 'Sultandağı', NULL, NULL),
(35, 3, 'Şuhut', NULL, NULL),
(36, 3, 'Başmakçı', NULL, NULL),
(37, 3, 'Bayat / Afyonkarahisar', NULL, NULL),
(38, 3, 'İscehisar', NULL, NULL),
(39, 3, 'Çobanlar', NULL, NULL),
(40, 3, 'Evciler', NULL, NULL),
(41, 3, 'Hocalar', NULL, NULL),
(42, 3, 'Kızılören', NULL, NULL),
(43, 4, 'Ağrı Merkez', NULL, NULL),
(44, 4, 'Diyadin', NULL, NULL),
(45, 4, 'Doğubayazıt', NULL, NULL),
(46, 4, 'Eleşkirt', NULL, NULL),
(47, 4, 'Hamur', NULL, NULL),
(48, 4, 'Patnos', NULL, NULL),
(49, 4, 'Taşlıçay', NULL, NULL),
(50, 4, 'Tutak', NULL, NULL),
(51, 5, 'Amasya Merkez', NULL, NULL),
(52, 5, 'Göynücek', NULL, NULL),
(53, 5, 'Gümüşhacıköy', NULL, NULL),
(54, 5, 'Merzifon', NULL, NULL),
(55, 5, 'Suluova', NULL, NULL),
(56, 5, 'Taşova', NULL, NULL),
(57, 5, 'Hamamözü', NULL, NULL),
(58, 6, 'Altındağ', NULL, NULL),
(59, 6, 'Ayaş', NULL, NULL),
(60, 6, 'Bala', NULL, NULL),
(61, 6, 'Beypazarı', NULL, NULL),
(62, 6, 'Çamlıdere', NULL, NULL),
(63, 6, 'Çankaya', NULL, NULL),
(64, 6, 'Çubuk', NULL, NULL),
(65, 6, 'Elmadağ', NULL, NULL),
(66, 6, 'Güdül', NULL, NULL),
(67, 6, 'Haymana', NULL, NULL),
(68, 6, 'Kalecik', NULL, NULL),
(69, 6, 'Kızılcahamam', NULL, NULL),
(70, 6, 'Nallıhan', NULL, NULL),
(71, 6, 'Polatlı', NULL, NULL),
(72, 6, 'Şereflikoçhisar', NULL, NULL),
(73, 6, 'Yenimahalle', NULL, NULL),
(74, 6, 'Gölbaşı / Ankara', NULL, NULL),
(75, 6, 'Keçiören', NULL, NULL),
(76, 6, 'Mamak', NULL, NULL),
(77, 6, 'Sincan', NULL, NULL),
(78, 6, 'Kazan', NULL, NULL),
(79, 6, 'Akyurt', NULL, NULL),
(80, 6, 'Etimesgut', NULL, NULL),
(81, 6, 'Evren', NULL, NULL),
(82, 6, 'Pursaklar', NULL, NULL),
(83, 7, 'Akseki', NULL, NULL),
(84, 7, 'Alanya', NULL, NULL),
(85, 7, 'Elmalı', NULL, NULL),
(86, 7, 'Finike', NULL, NULL),
(87, 7, 'Gazipaşa', NULL, NULL),
(88, 7, 'Gündoğmuş', NULL, NULL),
(89, 7, 'Kaş', NULL, NULL),
(90, 7, 'Korkuteli', NULL, NULL),
(91, 7, 'Kumluca', NULL, NULL),
(92, 7, 'Manavgat', NULL, NULL),
(93, 7, 'Serik', NULL, NULL),
(94, 7, 'Demre', NULL, NULL),
(95, 7, 'İbradı', NULL, NULL),
(96, 7, 'Kemer / Antalya', NULL, NULL),
(97, 7, 'Aksu / Antalya', NULL, NULL),
(98, 7, 'Döşemealtı', NULL, NULL),
(99, 7, 'Kepez', NULL, NULL),
(100, 7, 'Konyaaltı', NULL, NULL),
(101, 7, 'Muratpaşa', NULL, NULL),
(102, 8, 'Ardanuç', NULL, NULL),
(103, 8, 'Arhavi', NULL, NULL),
(104, 8, 'Artvin Merkez', NULL, NULL),
(105, 8, 'Borçka', NULL, NULL),
(106, 8, 'Hopa', NULL, NULL),
(107, 8, 'Şavşat', NULL, NULL),
(108, 8, 'Yusufeli', NULL, NULL),
(109, 8, 'Murgul', NULL, NULL),
(110, 9, 'Bozdoğan', NULL, NULL),
(111, 9, 'Çine', NULL, NULL),
(112, 9, 'Germencik', NULL, NULL),
(113, 9, 'Karacasu', NULL, NULL),
(114, 9, 'Koçarlı', NULL, NULL),
(115, 9, 'Kuşadası', NULL, NULL),
(116, 9, 'Kuyucak', NULL, NULL),
(117, 9, 'Nazilli', NULL, NULL),
(118, 9, 'Söke', NULL, NULL),
(119, 9, 'Sultanhisar', NULL, NULL),
(120, 9, 'Yenipazar / Aydın', NULL, NULL),
(121, 9, 'Buharkent', NULL, NULL),
(122, 9, 'İncirliova', NULL, NULL),
(123, 9, 'Karpuzlu', NULL, NULL),
(124, 9, 'Köşk', NULL, NULL),
(125, 9, 'Didim', NULL, NULL),
(126, 9, 'Efeler', NULL, NULL),
(127, 10, 'Ayvalık', NULL, NULL),
(128, 10, 'Balya', NULL, NULL),
(129, 10, 'Bandırma', NULL, NULL),
(130, 10, 'Bigadiç', NULL, NULL),
(131, 10, 'Burhaniye', NULL, NULL),
(132, 10, 'Dursunbey', NULL, NULL),
(133, 10, 'Edremit / Balıkesir', NULL, NULL),
(134, 10, 'Erdek', NULL, NULL),
(135, 10, 'Gönen / Balıkesir', NULL, NULL),
(136, 10, 'Havran', NULL, NULL),
(137, 10, 'İvrindi', NULL, NULL),
(138, 10, 'Kepsut', NULL, NULL),
(139, 10, 'Manyas', NULL, NULL),
(140, 10, 'Savaştepe', NULL, NULL),
(141, 10, 'Sındırgı', NULL, NULL),
(142, 10, 'Susurluk', NULL, NULL),
(143, 10, 'Marmara', NULL, NULL),
(144, 10, 'Gömeç', NULL, NULL),
(145, 10, 'Altıeylül', NULL, NULL),
(146, 10, 'Karesi', NULL, NULL),
(147, 11, 'Bilecik Merkez', NULL, NULL),
(148, 11, 'Bozüyük', NULL, NULL),
(149, 11, 'Gölpazarı', NULL, NULL),
(150, 11, 'Osmaneli', NULL, NULL),
(151, 11, 'Pazaryeri', NULL, NULL),
(152, 11, 'Söğüt', NULL, NULL),
(153, 11, 'Yenipazar / Bilecik', NULL, NULL),
(154, 11, 'İnhisar', NULL, NULL),
(155, 12, 'Bingöl Merkez', NULL, NULL),
(156, 12, 'Genç', NULL, NULL),
(157, 12, 'Karlıova', NULL, NULL),
(158, 12, 'Kiğı', NULL, NULL),
(159, 12, 'Solhan', NULL, NULL),
(160, 12, 'Adaklı', NULL, NULL),
(161, 12, 'Yayladere', NULL, NULL),
(162, 12, 'Yedisu', NULL, NULL),
(163, 13, 'Adilcevaz', NULL, NULL),
(164, 13, 'Ahlat', NULL, NULL),
(165, 13, 'Bitlis Merkez', NULL, NULL),
(166, 13, 'Hizan', NULL, NULL),
(167, 13, 'Mutki', NULL, NULL),
(168, 13, 'Tatvan', NULL, NULL),
(169, 13, 'Güroymak', NULL, NULL),
(170, 14, 'Bolu Merkez', NULL, NULL),
(171, 14, 'Gerede', NULL, NULL),
(172, 14, 'Göynük', NULL, NULL),
(173, 14, 'Kıbrıscık', NULL, NULL),
(174, 14, 'Mengen', NULL, NULL),
(175, 14, 'Mudurnu', NULL, NULL),
(176, 14, 'Seben', NULL, NULL),
(177, 14, 'Dörtdivan', NULL, NULL),
(178, 14, 'Yeniçağa', NULL, NULL),
(179, 15, 'Ağlasun', NULL, NULL),
(180, 15, 'Bucak', NULL, NULL),
(181, 15, 'Burdur Merkez', NULL, NULL),
(182, 15, 'Gölhisar', NULL, NULL),
(183, 15, 'Tefenni', NULL, NULL),
(184, 15, 'Yeşilova', NULL, NULL),
(185, 15, 'Karamanlı', NULL, NULL),
(186, 15, 'Kemer / Burdur', NULL, NULL),
(187, 15, 'Altınyayla / Burdur', NULL, NULL),
(188, 15, 'Çavdır', NULL, NULL),
(189, 15, 'Çeltikçi', NULL, NULL),
(190, 16, 'Gemlik', NULL, NULL),
(191, 16, 'İnegöl', NULL, NULL),
(192, 16, 'İznik', NULL, NULL),
(193, 16, 'Karacabey', NULL, NULL),
(194, 16, 'Keles', NULL, NULL),
(195, 16, 'Mudanya', NULL, NULL),
(196, 16, 'Mustafakemalpaşa', NULL, NULL),
(197, 16, 'Orhaneli', NULL, NULL),
(198, 16, 'Orhangazi', NULL, NULL),
(199, 16, 'Yenişehir / Bursa', NULL, NULL),
(200, 16, 'Büyükorhan', NULL, NULL),
(201, 16, 'Harmancık', NULL, NULL),
(202, 16, 'Nilüfer', NULL, NULL),
(203, 16, 'Osmangazi', NULL, NULL),
(204, 16, 'Yıldırım', NULL, NULL),
(205, 16, 'Gürsu', NULL, NULL),
(206, 16, 'Kestel', NULL, NULL),
(207, 17, 'Ayvacık / Çanakkale', NULL, NULL),
(208, 17, 'Bayramiç', NULL, NULL),
(209, 17, 'Biga', NULL, NULL),
(210, 17, 'Bozcaada', NULL, NULL),
(211, 17, 'Çan', NULL, NULL),
(212, 17, 'Çanakkale Merkez', NULL, NULL),
(213, 17, 'Eceabat', NULL, NULL),
(214, 17, 'Ezine', NULL, NULL),
(215, 17, 'Gelibolu', NULL, NULL),
(216, 17, 'Gökçeada', NULL, NULL),
(217, 17, 'Lapseki', NULL, NULL),
(218, 17, 'Yenice / Çanakkale', NULL, NULL),
(219, 18, 'Çankırı Merkez', NULL, NULL),
(220, 18, 'Çerkeş', NULL, NULL),
(221, 18, 'Eldivan', NULL, NULL),
(222, 18, 'Ilgaz', NULL, NULL),
(223, 18, 'Kurşunlu', NULL, NULL),
(224, 18, 'Orta', NULL, NULL),
(225, 18, 'Şabanözü', NULL, NULL),
(226, 18, 'Yapraklı', NULL, NULL),
(227, 18, 'Atkaracalar', NULL, NULL),
(228, 18, 'Kızılırmak', NULL, NULL),
(229, 18, 'Bayramören', NULL, NULL),
(230, 18, 'Korgun', NULL, NULL),
(231, 19, 'Alaca', NULL, NULL),
(232, 19, 'Bayat / Çorum', NULL, NULL),
(233, 19, 'Çorum Merkez', NULL, NULL),
(234, 19, 'İskilip', NULL, NULL),
(235, 19, 'Kargı', NULL, NULL),
(236, 19, 'Mecitözü', NULL, NULL),
(237, 19, 'Ortaköy / Çorum', NULL, NULL),
(238, 19, 'Osmancık', NULL, NULL),
(239, 19, 'Sungurlu', NULL, NULL),
(240, 19, 'Boğazkale', NULL, NULL),
(241, 19, 'Uğurludağ', NULL, NULL),
(242, 19, 'Dodurga', NULL, NULL),
(243, 19, 'Laçin', NULL, NULL),
(244, 19, 'Oğuzlar', NULL, NULL),
(245, 20, 'Acıpayam', NULL, NULL),
(246, 20, 'Buldan', NULL, NULL),
(247, 20, 'Çal', NULL, NULL),
(248, 20, 'Çameli', NULL, NULL),
(249, 20, 'Çardak', NULL, NULL),
(250, 20, 'Çivril', NULL, NULL),
(251, 20, 'Güney', NULL, NULL),
(252, 20, 'Kale / Denizli', NULL, NULL),
(253, 20, 'Sarayköy', NULL, NULL),
(254, 20, 'Tavas', NULL, NULL),
(255, 20, 'Babadağ', NULL, NULL),
(256, 20, 'Bekilli', NULL, NULL),
(257, 20, 'Honaz', NULL, NULL),
(258, 20, 'Serinhisar', NULL, NULL),
(259, 20, 'Pamukkale', NULL, NULL),
(260, 20, 'Baklan', NULL, NULL),
(261, 20, 'Beyağaç', NULL, NULL),
(262, 20, 'Bozkurt / Denizli', NULL, NULL),
(263, 20, 'Merkezefendi', NULL, NULL),
(264, 21, 'Bismil', NULL, NULL),
(265, 21, 'Çermik', NULL, NULL),
(266, 21, 'Çınar', NULL, NULL),
(267, 21, 'Çüngüş', NULL, NULL),
(268, 21, 'Dicle', NULL, NULL),
(269, 21, 'Ergani', NULL, NULL),
(270, 21, 'Hani', NULL, NULL),
(271, 21, 'Hazro', NULL, NULL),
(272, 21, 'Kulp', NULL, NULL),
(273, 21, 'Lice', NULL, NULL),
(274, 21, 'Silvan', NULL, NULL),
(275, 21, 'Eğil', NULL, NULL),
(276, 21, 'Kocaköy', NULL, NULL),
(277, 21, 'Bağlar', NULL, NULL),
(278, 21, 'Kayapınar', NULL, NULL),
(279, 21, 'Sur', NULL, NULL),
(280, 21, 'Yenişehir / Diyarbakır', NULL, NULL),
(281, 22, 'Edirne Merkez', NULL, NULL),
(282, 22, 'Enez', NULL, NULL),
(283, 22, 'Havsa', NULL, NULL),
(284, 22, 'İpsala', NULL, NULL),
(285, 22, 'Keşan', NULL, NULL),
(286, 22, 'Lalapaşa', NULL, NULL),
(287, 22, 'Meriç', NULL, NULL),
(288, 22, 'Uzunköprü', NULL, NULL),
(289, 22, 'Süloğlu', NULL, NULL),
(290, 23, 'Ağın', NULL, NULL),
(291, 23, 'Baskil', NULL, NULL),
(292, 23, 'Elazığ Merkez', NULL, NULL),
(293, 23, 'Karakoçan', NULL, NULL),
(294, 23, 'Keban', NULL, NULL),
(295, 23, 'Maden', NULL, NULL),
(296, 23, 'Palu', NULL, NULL),
(297, 23, 'Sivrice', NULL, NULL),
(298, 23, 'Arıcak', NULL, NULL),
(299, 23, 'Kovancılar', NULL, NULL),
(300, 23, 'Alacakaya', NULL, NULL),
(301, 24, 'Çayırlı', NULL, NULL),
(302, 24, 'Erzincan Merkez', NULL, NULL),
(303, 24, 'İliç', NULL, NULL),
(304, 24, 'Kemah', NULL, NULL),
(305, 24, 'Kemaliye', NULL, NULL),
(306, 24, 'Refahiye', NULL, NULL),
(307, 24, 'Tercan', NULL, NULL),
(308, 24, 'Üzümlü', NULL, NULL),
(309, 24, 'Otlukbeli', NULL, NULL),
(310, 25, 'Aşkale', NULL, NULL),
(311, 25, 'Çat', NULL, NULL),
(312, 25, 'Hınıs', NULL, NULL),
(313, 25, 'Horasan', NULL, NULL),
(314, 25, 'İspir', NULL, NULL),
(315, 25, 'Karayazı', NULL, NULL),
(316, 25, 'Narman', NULL, NULL),
(317, 25, 'Oltu', NULL, NULL),
(318, 25, 'Olur', NULL, NULL),
(319, 25, 'Pasinler', NULL, NULL),
(320, 25, 'Şenkaya', NULL, NULL),
(321, 25, 'Tekman', NULL, NULL),
(322, 25, 'Tortum', NULL, NULL),
(323, 25, 'Karaçoban', NULL, NULL),
(324, 25, 'Uzundere', NULL, NULL),
(325, 25, 'Pazaryolu', NULL, NULL),
(326, 25, 'Aziziye', NULL, NULL),
(327, 25, 'Köprüköy', NULL, NULL),
(328, 25, 'Palandöken', NULL, NULL),
(329, 25, 'Yakutiye', NULL, NULL),
(330, 26, 'Çifteler', NULL, NULL),
(331, 26, 'Mahmudiye', NULL, NULL),
(332, 26, 'Mihalıççık', NULL, NULL),
(333, 26, 'Sarıcakaya', NULL, NULL),
(334, 26, 'Seyitgazi', NULL, NULL),
(335, 26, 'Sivrihisar', NULL, NULL),
(336, 26, 'Alpu', NULL, NULL),
(337, 26, 'Beylikova', NULL, NULL),
(338, 26, 'İnönü', NULL, NULL),
(339, 26, 'Günyüzü', NULL, NULL),
(340, 26, 'Han', NULL, NULL),
(341, 26, 'Mihalgazi', NULL, NULL),
(342, 26, 'Odunpazarı', NULL, NULL),
(343, 26, 'Tepebaşı', NULL, NULL),
(344, 27, 'Araban', NULL, NULL),
(345, 27, 'İslahiye', NULL, NULL),
(346, 27, 'Nizip', NULL, NULL),
(347, 27, 'Oğuzeli', NULL, NULL),
(348, 27, 'Yavuzeli', NULL, NULL),
(349, 27, 'Şahinbey', NULL, NULL),
(350, 27, 'Şehitkamil', NULL, NULL),
(351, 27, 'Karkamış', NULL, NULL),
(352, 27, 'Nurdağı', NULL, NULL),
(353, 28, 'Alucra', NULL, NULL),
(354, 28, 'Bulancak', NULL, NULL),
(355, 28, 'Dereli', NULL, NULL),
(356, 28, 'Espiye', NULL, NULL),
(357, 28, 'Eynesil', NULL, NULL),
(358, 28, 'Giresun Merkez', NULL, NULL),
(359, 28, 'Görele', NULL, NULL),
(360, 28, 'Keşap', NULL, NULL),
(361, 28, 'Şebinkarahisar', NULL, NULL),
(362, 28, 'Tirebolu', NULL, NULL),
(363, 28, 'Piraziz', NULL, NULL),
(364, 28, 'Yağlıdere', NULL, NULL),
(365, 28, 'Çamoluk', NULL, NULL),
(366, 28, 'Çanakçı', NULL, NULL),
(367, 28, 'Doğankent', NULL, NULL),
(368, 28, 'Güce', NULL, NULL),
(369, 29, 'Gümüşhane Merkez', NULL, NULL),
(370, 29, 'Kelkit', NULL, NULL),
(371, 29, 'Şiran', NULL, NULL),
(372, 29, 'Torul', NULL, NULL),
(373, 29, 'Köse', NULL, NULL),
(374, 29, 'Kürtün', NULL, NULL),
(375, 30, 'Çukurca', NULL, NULL),
(376, 30, 'Hakkari Merkez', NULL, NULL),
(377, 30, 'Şemdinli', NULL, NULL),
(378, 30, 'Yüksekova', NULL, NULL),
(379, 31, 'Altınözü', NULL, NULL),
(380, 31, 'Dörtyol', NULL, NULL),
(381, 31, 'Hassa', NULL, NULL),
(382, 31, 'İskenderun', NULL, NULL),
(383, 31, 'Kırıkhan', NULL, NULL),
(384, 31, 'Reyhanlı', NULL, NULL),
(385, 31, 'Samandağ', NULL, NULL),
(386, 31, 'Yayladağı', NULL, NULL),
(387, 31, 'Erzin', NULL, NULL),
(388, 31, 'Belen', NULL, NULL),
(389, 31, 'Kumlu', NULL, NULL),
(390, 31, 'Antakya', NULL, NULL),
(391, 31, 'Arsuz', NULL, NULL),
(392, 31, 'Defne', NULL, NULL),
(393, 31, 'Payas', NULL, NULL),
(394, 32, 'Atabey', NULL, NULL),
(395, 32, 'Eğirdir', NULL, NULL),
(396, 32, 'Gelendost', NULL, NULL),
(397, 32, 'Isparta Merkez', NULL, NULL),
(398, 32, 'Keçiborlu', NULL, NULL),
(399, 32, 'Senirkent', NULL, NULL),
(400, 32, 'Sütçüler', NULL, NULL),
(401, 32, 'Şarkikaraağaç', NULL, NULL),
(402, 32, 'Uluborlu', NULL, NULL),
(403, 32, 'Yalvaç', NULL, NULL),
(404, 32, 'Aksu / Isparta', NULL, NULL),
(405, 32, 'Gönen / Isparta', NULL, NULL),
(406, 32, 'Yenişarbademli', NULL, NULL),
(407, 33, 'Anamur', NULL, NULL),
(408, 33, 'Erdemli', NULL, NULL),
(409, 33, 'Gülnar', NULL, NULL),
(410, 33, 'Mut', NULL, NULL),
(411, 33, 'Silifke', NULL, NULL),
(412, 33, 'Tarsus', NULL, NULL),
(413, 33, 'Aydıncık / Mersin', NULL, NULL),
(414, 33, 'Bozyazı', NULL, NULL),
(415, 33, 'Çamlıyayla', NULL, NULL),
(416, 33, 'Akdeniz', NULL, NULL),
(417, 33, 'Mezitli', NULL, NULL),
(418, 33, 'Toroslar', NULL, NULL),
(419, 33, 'Yenişehir / Mersin', NULL, NULL),
(420, 34, 'Adalar', NULL, NULL),
(421, 34, 'Bakırköy', NULL, NULL),
(422, 34, 'Beşiktaş', NULL, NULL),
(423, 34, 'Beykoz', NULL, NULL),
(424, 34, 'Beyoğlu', NULL, NULL),
(425, 34, 'Çatalca', NULL, NULL),
(426, 34, 'Eyüp', NULL, NULL),
(427, 34, 'Fatih', NULL, NULL),
(428, 34, 'Gaziosmanpaşa', NULL, NULL),
(429, 34, 'Kadıköy', NULL, NULL),
(430, 34, 'Kartal', NULL, NULL),
(431, 34, 'Sarıyer', NULL, NULL),
(432, 34, 'Silivri', NULL, NULL),
(433, 34, 'Şile', NULL, NULL),
(434, 34, 'Şişli', NULL, NULL),
(435, 34, 'Üsküdar', NULL, NULL),
(436, 34, 'Zeytinburnu', NULL, NULL),
(437, 34, 'Büyükçekmece', NULL, NULL),
(438, 34, 'Kağıthane', NULL, NULL),
(439, 34, 'Küçükçekmece', NULL, NULL),
(440, 34, 'Pendik', NULL, NULL),
(441, 34, 'Ümraniye', NULL, NULL),
(442, 34, 'Bayrampaşa', NULL, NULL),
(443, 34, 'Avcılar', NULL, NULL),
(444, 34, 'Bağcılar', NULL, NULL),
(445, 34, 'Bahçelievler', NULL, NULL),
(446, 34, 'Güngören', NULL, NULL),
(447, 34, 'Maltepe', NULL, NULL),
(448, 34, 'Sultanbeyli', NULL, NULL),
(449, 34, 'Tuzla', NULL, NULL),
(450, 34, 'Esenler', NULL, NULL),
(451, 34, 'Arnavutköy', NULL, NULL),
(452, 34, 'Ataşehir', NULL, NULL),
(453, 34, 'Başakşehir', NULL, NULL),
(454, 34, 'Beylikdüzü', NULL, NULL),
(455, 34, 'Çekmeköy', NULL, NULL),
(456, 34, 'Esenyurt', NULL, NULL),
(457, 34, 'Sancaktepe', NULL, NULL),
(458, 34, 'Sultangazi', NULL, NULL),
(459, 35, 'Aliağa', NULL, NULL),
(460, 35, 'Bayındır', NULL, NULL),
(461, 35, 'Bergama', NULL, NULL),
(462, 35, 'Bornova', NULL, NULL),
(463, 35, 'Çeşme', NULL, NULL),
(464, 35, 'Dikili', NULL, NULL),
(465, 35, 'Foça', NULL, NULL),
(466, 35, 'Karaburun', NULL, NULL),
(467, 35, 'Karşıyaka', NULL, NULL),
(468, 35, 'Kemalpaşa / İzmir', NULL, NULL),
(469, 35, 'Kınık', NULL, NULL),
(470, 35, 'Kiraz', NULL, NULL),
(471, 35, 'Menemen', NULL, NULL),
(472, 35, 'Ödemiş', NULL, NULL),
(473, 35, 'Seferihisar', NULL, NULL),
(474, 35, 'Selçuk', NULL, NULL),
(475, 35, 'Tire', NULL, NULL),
(476, 35, 'Torbalı', NULL, NULL),
(477, 35, 'Urla', NULL, NULL),
(478, 35, 'Beydağ', NULL, NULL),
(479, 35, 'Buca', NULL, NULL),
(480, 35, 'Konak', NULL, NULL),
(481, 35, 'Menderes', NULL, NULL),
(482, 35, 'Balçova', NULL, NULL),
(483, 35, 'Çiğli', NULL, NULL),
(484, 35, 'Gaziemir', NULL, NULL),
(485, 35, 'Narlıdere', NULL, NULL),
(486, 35, 'Güzelbahçe', NULL, NULL),
(487, 35, 'Bayraklı', NULL, NULL),
(488, 35, 'Karabağlar', NULL, NULL),
(489, 36, 'Arpaçay', NULL, NULL),
(490, 36, 'Digor', NULL, NULL),
(491, 36, 'Kağızman', NULL, NULL),
(492, 36, 'Kars Merkez', NULL, NULL),
(493, 36, 'Sarıkamış', NULL, NULL),
(494, 36, 'Selim', NULL, NULL),
(495, 36, 'Susuz', NULL, NULL),
(496, 36, 'Akyaka', NULL, NULL),
(497, 37, 'Abana', NULL, NULL),
(498, 37, 'Araç', NULL, NULL),
(499, 37, 'Azdavay', NULL, NULL),
(500, 37, 'Bozkurt / Kastamonu', NULL, NULL),
(501, 37, 'Cide', NULL, NULL),
(502, 37, 'Çatalzeytin', NULL, NULL),
(503, 37, 'Daday', NULL, NULL),
(504, 37, 'Devrekani', NULL, NULL),
(505, 37, 'İnebolu', NULL, NULL),
(506, 37, 'Kastamonu Merkez', NULL, NULL),
(507, 37, 'Küre', NULL, NULL),
(508, 37, 'Taşköprü', NULL, NULL),
(509, 37, 'Tosya', NULL, NULL),
(510, 37, 'İhsangazi', NULL, NULL),
(511, 37, 'Pınarbaşı / Kastamonu', NULL, NULL),
(512, 37, 'Şenpazar', NULL, NULL),
(513, 37, 'Ağlı', NULL, NULL),
(514, 37, 'Doğanyurt', NULL, NULL),
(515, 37, 'Hanönü', NULL, NULL),
(516, 37, 'Seydiler', NULL, NULL),
(517, 38, 'Bünyan', NULL, NULL),
(518, 38, 'Develi', NULL, NULL),
(519, 38, 'Felahiye', NULL, NULL),
(520, 38, 'İncesu', NULL, NULL),
(521, 38, 'Pınarbaşı / Kayseri', NULL, NULL),
(522, 38, 'Sarıoğlan', NULL, NULL),
(523, 38, 'Sarız', NULL, NULL),
(524, 38, 'Tomarza', NULL, NULL),
(525, 38, 'Yahyalı', NULL, NULL),
(526, 38, 'Yeşilhisar', NULL, NULL),
(527, 38, 'Akkışla', NULL, NULL),
(528, 38, 'Talas', NULL, NULL),
(529, 38, 'Kocasinan', NULL, NULL),
(530, 38, 'Melikgazi', NULL, NULL),
(531, 38, 'Hacılar', NULL, NULL),
(532, 38, 'Özvatan', NULL, NULL),
(533, 39, 'Babaeski', NULL, NULL),
(534, 39, 'Demirköy', NULL, NULL),
(535, 39, 'Kırklareli Merkez', NULL, NULL),
(536, 39, 'Kofçaz', NULL, NULL),
(537, 39, 'Lüleburgaz', NULL, NULL),
(538, 39, 'Pehlivanköy', NULL, NULL),
(539, 39, 'Pınarhisar', NULL, NULL),
(540, 39, 'Vize', NULL, NULL),
(541, 40, 'Çiçekdağı', NULL, NULL),
(542, 40, 'Kaman', NULL, NULL),
(543, 40, 'Kırşehir Merkez', NULL, NULL),
(544, 40, 'Mucur', NULL, NULL),
(545, 40, 'Akpınar', NULL, NULL),
(546, 40, 'Akçakent', NULL, NULL),
(547, 40, 'Boztepe', NULL, NULL),
(548, 41, 'Gebze', NULL, NULL),
(549, 41, 'Gölcük', NULL, NULL),
(550, 41, 'Kandıra', NULL, NULL),
(551, 41, 'Karamürsel', NULL, NULL),
(552, 41, 'Körfez', NULL, NULL),
(553, 41, 'Derince', NULL, NULL),
(554, 41, 'Başiskele', NULL, NULL),
(555, 41, 'Çayırova', NULL, NULL),
(556, 41, 'Darıca', NULL, NULL),
(557, 41, 'Dilovası', NULL, NULL),
(558, 41, 'İzmit', NULL, NULL),
(559, 41, 'Kartepe', NULL, NULL),
(560, 42, 'Akşehir', NULL, NULL),
(561, 42, 'Beyşehir', NULL, NULL),
(562, 42, 'Bozkır', NULL, NULL),
(563, 42, 'Cihanbeyli', NULL, NULL),
(564, 42, 'Çumra', NULL, NULL),
(565, 42, 'Doğanhisar', NULL, NULL),
(566, 42, 'Ereğli / Konya', NULL, NULL),
(567, 42, 'Hadim', NULL, NULL),
(568, 42, 'Ilgın', NULL, NULL),
(569, 42, 'Kadınhanı', NULL, NULL),
(570, 42, 'Karapınar', NULL, NULL),
(571, 42, 'Kulu', NULL, NULL),
(572, 42, 'Sarayönü', NULL, NULL),
(573, 42, 'Seydişehir', NULL, NULL),
(574, 42, 'Yunak', NULL, NULL),
(575, 42, 'Akören', NULL, NULL),
(576, 42, 'Altınekin', NULL, NULL),
(577, 42, 'Derebucak', NULL, NULL),
(578, 42, 'Hüyük', NULL, NULL),
(579, 42, 'Karatay', NULL, NULL),
(580, 42, 'Meram', NULL, NULL),
(581, 42, 'Selçuklu', NULL, NULL),
(582, 42, 'Taşkent', NULL, NULL),
(583, 42, 'Ahırlı', NULL, NULL),
(584, 42, 'Çeltik', NULL, NULL),
(585, 42, 'Derbent', NULL, NULL),
(586, 42, 'Emirgazi', NULL, NULL),
(587, 42, 'Güneysınır', NULL, NULL),
(588, 42, 'Halkapınar', NULL, NULL),
(589, 42, 'Tuzlukçu', NULL, NULL),
(590, 42, 'Yalıhüyük', NULL, NULL),
(591, 43, 'Altıntaş', NULL, NULL),
(592, 43, 'Domaniç', NULL, NULL),
(593, 43, 'Emet', NULL, NULL),
(594, 43, 'Gediz', NULL, NULL),
(595, 43, 'Kütahya Merkez', NULL, NULL),
(596, 43, 'Simav', NULL, NULL),
(597, 43, 'Tavşanlı', NULL, NULL),
(598, 43, 'Aslanapa', NULL, NULL),
(599, 43, 'Dumlupınar', NULL, NULL),
(600, 43, 'Hisarcık', NULL, NULL),
(601, 43, 'Şaphane', NULL, NULL),
(602, 43, 'Çavdarhisar', NULL, NULL),
(603, 43, 'Pazarlar', NULL, NULL),
(604, 44, 'Akçadağ', NULL, NULL),
(605, 44, 'Arapgir', NULL, NULL),
(606, 44, 'Arguvan', NULL, NULL),
(607, 44, 'Darende', NULL, NULL),
(608, 44, 'Doğanşehir', NULL, NULL),
(609, 44, 'Hekimhan', NULL, NULL),
(610, 44, 'Pütürge', NULL, NULL),
(611, 44, 'Yeşilyurt / Malatya', NULL, NULL),
(612, 44, 'Battalgazi', NULL, NULL),
(613, 44, 'Doğanyol', NULL, NULL),
(614, 44, 'Kale / Malatya', NULL, NULL),
(615, 44, 'Kuluncak', NULL, NULL),
(616, 44, 'Yazıhan', NULL, NULL),
(617, 45, 'Akhisar', NULL, NULL),
(618, 45, 'Alaşehir', NULL, NULL),
(619, 45, 'Demirci', NULL, NULL),
(620, 45, 'Gördes', NULL, NULL),
(621, 45, 'Kırkağaç', NULL, NULL),
(622, 45, 'Kula', NULL, NULL),
(623, 45, 'Salihli', NULL, NULL),
(624, 45, 'Sarıgöl', NULL, NULL),
(625, 45, 'Saruhanlı', NULL, NULL),
(626, 45, 'Selendi', NULL, NULL),
(627, 45, 'Soma', NULL, NULL),
(628, 45, 'Turgutlu', NULL, NULL),
(629, 45, 'Ahmetli', NULL, NULL),
(630, 45, 'Gölmarmara', NULL, NULL),
(631, 45, 'Köprübaşı / Manisa', NULL, NULL),
(632, 45, 'Şehzadeler', NULL, NULL),
(633, 45, 'Yunusemre', NULL, NULL),
(634, 46, 'Afşin', NULL, NULL),
(635, 46, 'Andırın', NULL, NULL),
(636, 46, 'Elbistan', NULL, NULL),
(637, 46, 'Göksun', NULL, NULL),
(638, 46, 'Pazarcık', NULL, NULL),
(639, 46, 'Türkoğlu', NULL, NULL),
(640, 46, 'Çağlayancerit', NULL, NULL),
(641, 46, 'Ekinözü', NULL, NULL),
(642, 46, 'Nurhak', NULL, NULL),
(643, 46, 'Dulkadiroğlu', NULL, NULL),
(644, 46, 'Onikişubat', NULL, NULL),
(645, 47, 'Derik', NULL, NULL),
(646, 47, 'Kızıltepe', NULL, NULL),
(647, 47, 'Mazıdağı', NULL, NULL),
(648, 47, 'Midyat', NULL, NULL),
(649, 47, 'Nusaybin', NULL, NULL),
(650, 47, 'Ömerli', NULL, NULL),
(651, 47, 'Savur', NULL, NULL),
(652, 47, 'Dargeçit', NULL, NULL),
(653, 47, 'Yeşilli', NULL, NULL),
(654, 47, 'Artuklu', NULL, NULL),
(655, 48, 'Bodrum', NULL, NULL),
(656, 48, 'Datça', NULL, NULL),
(657, 48, 'Fethiye', NULL, NULL),
(658, 48, 'Köyceğiz', NULL, NULL),
(659, 48, 'Marmaris', NULL, NULL),
(660, 48, 'Milas', NULL, NULL),
(661, 48, 'Ula', NULL, NULL),
(662, 48, 'Yatağan', NULL, NULL),
(663, 48, 'Dalaman', NULL, NULL),
(664, 48, 'Ortaca', NULL, NULL),
(665, 48, 'Kavaklıdere', NULL, NULL),
(666, 48, 'Menteşe', NULL, NULL),
(667, 48, 'Seydikemer', NULL, NULL),
(668, 49, 'Bulanık', NULL, NULL),
(669, 49, 'Malazgirt', NULL, NULL),
(670, 49, 'Muş Merkez', NULL, NULL),
(671, 49, 'Varto', NULL, NULL),
(672, 49, 'Hasköy', NULL, NULL),
(673, 49, 'Korkut', NULL, NULL),
(674, 50, 'Avanos', NULL, NULL),
(675, 50, 'Derinkuyu', NULL, NULL),
(676, 50, 'Gülşehir', NULL, NULL),
(677, 50, 'Hacıbektaş', NULL, NULL),
(678, 50, 'Kozaklı', NULL, NULL),
(679, 50, 'Nevşehir Merkez', NULL, NULL),
(680, 50, 'Ürgüp', NULL, NULL),
(681, 50, 'Acıgöl', NULL, NULL),
(682, 51, 'Bor', NULL, NULL),
(683, 51, 'Çamardı', NULL, NULL),
(684, 51, 'Niğde Merkez', NULL, NULL),
(685, 51, 'Ulukışla', NULL, NULL),
(686, 51, 'Altunhisar', NULL, NULL),
(687, 51, 'Çiftlik', NULL, NULL),
(688, 52, 'Akkuş', NULL, NULL),
(689, 52, 'Aybastı', NULL, NULL),
(690, 52, 'Fatsa', NULL, NULL),
(691, 52, 'Gölköy', NULL, NULL),
(692, 52, 'Korgan', NULL, NULL),
(693, 52, 'Kumru', NULL, NULL),
(694, 52, 'Mesudiye', NULL, NULL),
(695, 52, 'Perşembe', NULL, NULL),
(696, 52, 'Ulubey / Ordu', NULL, NULL),
(697, 52, 'Ünye', NULL, NULL),
(698, 52, 'Gülyalı', NULL, NULL),
(699, 52, 'Gürgentepe', NULL, NULL),
(700, 52, 'Çamaş', NULL, NULL),
(701, 52, 'Çatalpınar', NULL, NULL),
(702, 52, 'Çaybaşı', NULL, NULL),
(703, 52, 'İkizce', NULL, NULL),
(704, 52, 'Kabadüz', NULL, NULL),
(705, 52, 'Kabataş', NULL, NULL),
(706, 52, 'Altınordu', NULL, NULL),
(707, 53, 'Ardeşen', NULL, NULL),
(708, 53, 'Çamlıhemşin', NULL, NULL),
(709, 53, 'Çayeli', NULL, NULL),
(710, 53, 'Fındıklı', NULL, NULL),
(711, 53, 'İkizdere', NULL, NULL),
(712, 53, 'Kalkandere', NULL, NULL),
(713, 53, 'Pazar / Rize', NULL, NULL),
(714, 53, 'Rize Merkez', NULL, NULL),
(715, 53, 'Güneysu', NULL, NULL),
(716, 53, 'Derepazarı', NULL, NULL),
(717, 53, 'Hemşin', NULL, NULL),
(718, 53, 'İyidere', NULL, NULL),
(719, 54, 'Akyazı', NULL, NULL),
(720, 54, 'Geyve', NULL, NULL),
(721, 54, 'Hendek', NULL, NULL),
(722, 54, 'Karasu', NULL, NULL),
(723, 54, 'Kaynarca', NULL, NULL),
(724, 54, 'Sapanca', NULL, NULL),
(725, 54, 'Kocaali', NULL, NULL),
(726, 54, 'Pamukova', NULL, NULL),
(727, 54, 'Taraklı', NULL, NULL),
(728, 54, 'Ferizli', NULL, NULL),
(729, 54, 'Karapürçek', NULL, NULL),
(730, 54, 'Söğütlü', NULL, NULL),
(731, 54, 'Adapazarı', NULL, NULL),
(732, 54, 'Arifiye', NULL, NULL),
(733, 54, 'Erenler', NULL, NULL),
(734, 54, 'Serdivan', NULL, NULL),
(735, 55, 'Alaçam', NULL, NULL),
(736, 55, 'Bafra', NULL, NULL),
(737, 55, 'Çarşamba', NULL, NULL),
(738, 55, 'Havza', NULL, NULL),
(739, 55, 'Kavak', NULL, NULL),
(740, 55, 'Ladik', NULL, NULL),
(741, 55, 'Terme', NULL, NULL),
(742, 55, 'Vezirköprü', NULL, NULL),
(743, 55, 'Asarcık', NULL, NULL),
(744, 55, '19.May', NULL, NULL),
(745, 55, 'Salıpazarı', NULL, NULL),
(746, 55, 'Tekkeköy', NULL, NULL),
(747, 55, 'Ayvacık / Samsun', NULL, NULL),
(748, 55, 'Yakakent', NULL, NULL),
(749, 55, 'Atakum', NULL, NULL),
(750, 55, 'Canik', NULL, NULL),
(751, 55, 'İlkadım', NULL, NULL),
(752, 56, 'Baykan', NULL, NULL),
(753, 56, 'Eruh', NULL, NULL),
(754, 56, 'Kurtalan', NULL, NULL),
(755, 56, 'Pervari', NULL, NULL),
(756, 56, 'Siirt Merkez', NULL, NULL),
(757, 56, 'Şirvan', NULL, NULL),
(758, 56, 'Tillo', NULL, NULL),
(759, 57, 'Ayancık', NULL, NULL),
(760, 57, 'Boyabat', NULL, NULL),
(761, 57, 'Durağan', NULL, NULL),
(762, 57, 'Erfelek', NULL, NULL),
(763, 57, 'Gerze', NULL, NULL),
(764, 57, 'Sinop Merkez', NULL, NULL),
(765, 57, 'Türkeli', NULL, NULL),
(766, 57, 'Dikmen', NULL, NULL),
(767, 57, 'Saraydüzü', NULL, NULL),
(768, 58, 'Divriği', NULL, NULL),
(769, 58, 'Gemerek', NULL, NULL),
(770, 58, 'Gürün', NULL, NULL),
(771, 58, 'Hafik', NULL, NULL),
(772, 58, 'İmranlı', NULL, NULL),
(773, 58, 'Kangal', NULL, NULL),
(774, 58, 'Koyulhisar', NULL, NULL),
(775, 58, 'Sivas Merkez', NULL, NULL),
(776, 58, 'Suşehri', NULL, NULL),
(777, 58, 'Şarkışla', NULL, NULL),
(778, 58, 'Yıldızeli', NULL, NULL),
(779, 58, 'Zara', NULL, NULL),
(780, 58, 'Akıncılar', NULL, NULL),
(781, 58, 'Altınyayla / Sivas', NULL, NULL),
(782, 58, 'Doğanşar', NULL, NULL),
(783, 58, 'Gölova', NULL, NULL),
(784, 58, 'Ulaş', NULL, NULL),
(785, 59, 'Çerkezköy', NULL, NULL),
(786, 59, 'Çorlu', NULL, NULL),
(787, 59, 'Hayrabolu', NULL, NULL),
(788, 59, 'Malkara', NULL, NULL),
(789, 59, 'Muratlı', NULL, NULL),
(790, 59, 'Saray / Tekirdağ', NULL, NULL),
(791, 59, 'Şarköy', NULL, NULL),
(792, 59, 'Marmaraereğlisi', NULL, NULL),
(793, 59, 'Ergene', NULL, NULL),
(794, 59, 'Kapaklı', NULL, NULL),
(795, 59, 'Süleymanpaşa', NULL, NULL),
(796, 60, 'Almus', NULL, NULL),
(797, 60, 'Artova', NULL, NULL),
(798, 60, 'Erbaa', NULL, NULL),
(799, 60, 'Niksar', NULL, NULL),
(800, 60, 'Reşadiye', NULL, NULL),
(801, 60, 'Tokat Merkez', NULL, NULL),
(802, 60, 'Turhal', NULL, NULL),
(803, 60, 'Zile', NULL, NULL),
(804, 60, 'Pazar / Tokat', NULL, NULL),
(805, 60, 'Yeşilyurt / Tokat', NULL, NULL),
(806, 60, 'Başçiftlik', NULL, NULL),
(807, 60, 'Sulusaray', NULL, NULL),
(808, 61, 'Akçaabat', NULL, NULL),
(809, 61, 'Araklı', NULL, NULL),
(810, 61, 'Arsin', NULL, NULL),
(811, 61, 'Çaykara', NULL, NULL),
(812, 61, 'Maçka', NULL, NULL),
(813, 61, 'Of', NULL, NULL),
(814, 61, 'Sürmene', NULL, NULL),
(815, 61, 'Tonya', NULL, NULL),
(816, 61, 'Vakfıkebir', NULL, NULL),
(817, 61, 'Yomra', NULL, NULL),
(818, 61, 'Beşikdüzü', NULL, NULL),
(819, 61, 'Şalpazarı', NULL, NULL),
(820, 61, 'Çarşıbaşı', NULL, NULL),
(821, 61, 'Dernekpazarı', NULL, NULL),
(822, 61, 'Düzköy', NULL, NULL),
(823, 61, 'Hayrat', NULL, NULL),
(824, 61, 'Köprübaşı / Trabzon', NULL, NULL),
(825, 61, 'Ortahisar', NULL, NULL),
(826, 62, 'Çemişgezek', NULL, NULL),
(827, 62, 'Hozat', NULL, NULL),
(828, 62, 'Mazgirt', NULL, NULL),
(829, 62, 'Nazımiye', NULL, NULL),
(830, 62, 'Ovacık / Tunceli', NULL, NULL),
(831, 62, 'Pertek', NULL, NULL),
(832, 62, 'Pülümür', NULL, NULL),
(833, 62, 'Tunceli Merkez', NULL, NULL),
(834, 63, 'Akçakale', NULL, NULL),
(835, 63, 'Birecik', NULL, NULL),
(836, 63, 'Bozova', NULL, NULL),
(837, 63, 'Ceylanpınar', NULL, NULL),
(838, 63, 'Halfeti', NULL, NULL),
(839, 63, 'Hilvan', NULL, NULL),
(840, 63, 'Siverek', NULL, NULL),
(841, 63, 'Suruç', NULL, NULL),
(842, 63, 'Viranşehir', NULL, NULL),
(843, 63, 'Harran', NULL, NULL),
(844, 63, 'Eyyübiye', NULL, NULL),
(845, 63, 'Haliliye', NULL, NULL),
(846, 63, 'Karaköprü', NULL, NULL),
(847, 64, 'Banaz', NULL, NULL),
(848, 64, 'Eşme', NULL, NULL),
(849, 64, 'Karahallı', NULL, NULL),
(850, 64, 'Sivaslı', NULL, NULL),
(851, 64, 'Ulubey / Uşak', NULL, NULL),
(852, 64, 'Uşak Merkez', NULL, NULL),
(853, 65, 'Başkale', NULL, NULL),
(854, 65, 'Çatak', NULL, NULL),
(855, 65, 'Erciş', NULL, NULL),
(856, 65, 'Gevaş', NULL, NULL),
(857, 65, 'Gürpınar', NULL, NULL),
(858, 65, 'Muradiye', NULL, NULL),
(859, 65, 'Özalp', NULL, NULL),
(860, 65, 'Bahçesaray', NULL, NULL),
(861, 65, 'Çaldıran', NULL, NULL),
(862, 65, 'Edremit / Van', NULL, NULL),
(863, 65, 'Saray / Van', NULL, NULL),
(864, 65, 'İpekyolu', NULL, NULL),
(865, 65, 'Tuşba', NULL, NULL),
(866, 66, 'Akdağmadeni', NULL, NULL),
(867, 66, 'Boğazlıyan', NULL, NULL),
(868, 66, 'Çayıralan', NULL, NULL),
(869, 66, 'Çekerek', NULL, NULL),
(870, 66, 'Sarıkaya', NULL, NULL),
(871, 66, 'Sorgun', NULL, NULL),
(872, 66, 'Şefaatli', NULL, NULL),
(873, 66, 'Yerköy', NULL, NULL),
(874, 66, 'Yozgat Merkez', NULL, NULL),
(875, 66, 'Aydıncık / Yozgat', NULL, NULL),
(876, 66, 'Çandır', NULL, NULL),
(877, 66, 'Kadışehri', NULL, NULL),
(878, 66, 'Saraykent', NULL, NULL),
(879, 66, 'Yenifakılı', NULL, NULL),
(880, 67, 'Çaycuma', NULL, NULL),
(881, 67, 'Devrek', NULL, NULL),
(882, 67, 'Ereğli / Zonguldak', NULL, NULL),
(883, 67, 'Zonguldak Merkez', NULL, NULL),
(884, 67, 'Alaplı', NULL, NULL),
(885, 67, 'Gökçebey', NULL, NULL),
(886, 67, 'Kilimli', NULL, NULL),
(887, 67, 'Kozlu', NULL, NULL),
(888, 68, 'Aksaray Merkez', NULL, NULL),
(889, 68, 'Ortaköy / Aksaray', NULL, NULL),
(890, 68, 'Ağaçören', NULL, NULL),
(891, 68, 'Güzelyurt', NULL, NULL),
(892, 68, 'Sarıyahşi', NULL, NULL),
(893, 68, 'Eskil', NULL, NULL),
(894, 68, 'Gülağaç', NULL, NULL),
(895, 69, 'Bayburt Merkez', NULL, NULL),
(896, 69, 'Aydıntepe', NULL, NULL),
(897, 69, 'Demirözü', NULL, NULL),
(898, 70, 'Ermenek', NULL, NULL),
(899, 70, 'Karaman Merkez', NULL, NULL),
(900, 70, 'Ayrancı', NULL, NULL),
(901, 70, 'Kazımkarabekir', NULL, NULL),
(902, 70, 'Başyayla', NULL, NULL),
(903, 70, 'Sarıveliler', NULL, NULL),
(904, 71, 'Delice', NULL, NULL),
(905, 71, 'Keskin', NULL, NULL),
(906, 71, 'Kırıkkale Merkez', NULL, NULL),
(907, 71, 'Sulakyurt', NULL, NULL),
(908, 71, 'Bahşili', NULL, NULL),
(909, 71, 'Balışeyh', NULL, NULL),
(910, 71, 'Çelebi', NULL, NULL),
(911, 71, 'Karakeçili', NULL, NULL),
(912, 71, 'Yahşihan', NULL, NULL),
(913, 72, 'Batman Merkez', NULL, NULL),
(914, 72, 'Beşiri', NULL, NULL),
(915, 72, 'Gercüş', NULL, NULL),
(916, 72, 'Kozluk', NULL, NULL),
(917, 72, 'Sason', NULL, NULL),
(918, 72, 'Hasankeyf', NULL, NULL),
(919, 73, 'Beytüşşebap', NULL, NULL),
(920, 73, 'Cizre', NULL, NULL),
(921, 73, 'İdil', NULL, NULL),
(922, 73, 'Silopi', NULL, NULL),
(923, 73, 'Şırnak Merkez', NULL, NULL),
(924, 73, 'Uludere', NULL, NULL),
(925, 73, 'Güçlükonak', NULL, NULL),
(926, 74, 'Bartın Merkez', NULL, NULL),
(927, 74, 'Kurucaşile', NULL, NULL),
(928, 74, 'Ulus', NULL, NULL),
(929, 74, 'Amasra', NULL, NULL),
(930, 75, 'Ardahan Merkez', NULL, NULL),
(931, 75, 'Çıldır', NULL, NULL),
(932, 75, 'Göle', NULL, NULL),
(933, 75, 'Hanak', NULL, NULL),
(934, 75, 'Posof', NULL, NULL),
(935, 75, 'Damal', NULL, NULL),
(936, 76, 'Aralık', NULL, NULL),
(937, 76, 'Iğdır Merkez', NULL, NULL),
(938, 76, 'Tuzluca', NULL, NULL),
(939, 76, 'Karakoyunlu', NULL, NULL),
(940, 77, 'Yalova Merkez', NULL, NULL),
(941, 77, 'Altınova', NULL, NULL),
(942, 77, 'Armutlu', NULL, NULL),
(943, 77, 'Çınarcık', NULL, NULL),
(944, 77, 'Çiftlikköy', NULL, NULL),
(945, 77, 'Termal', NULL, NULL),
(946, 78, 'Eflani', NULL, NULL),
(947, 78, 'Eskipazar', NULL, NULL),
(948, 78, 'Karabük Merkez', NULL, NULL),
(949, 78, 'Ovacık / Karabük', NULL, NULL),
(950, 78, 'Safranbolu', NULL, NULL),
(951, 78, 'Yenice / Karabük', NULL, NULL),
(952, 79, 'Kilis Merkez', NULL, NULL),
(953, 79, 'Elbeyli', NULL, NULL),
(954, 79, 'Musabeyli', NULL, NULL),
(955, 79, 'Polateli', NULL, NULL),
(956, 80, 'Bahçe', NULL, NULL),
(957, 80, 'Kadirli', NULL, NULL),
(958, 80, 'Osmaniye Merkez', NULL, NULL),
(959, 80, 'Düziçi', NULL, NULL),
(960, 80, 'Hasanbeyli', NULL, NULL),
(961, 80, 'Sumbas', NULL, NULL),
(962, 80, 'Toprakkale', NULL, NULL),
(963, 81, 'Akçakoca', NULL, NULL),
(964, 81, 'Düzce Merkez', NULL, NULL),
(965, 81, 'Yığılca', NULL, NULL),
(966, 81, 'Cumayeri', NULL, NULL),
(967, 81, 'Gölyaka', NULL, NULL),
(968, 81, 'Çilimli', NULL, NULL),
(969, 81, 'Gümüşova', NULL, NULL),
(970, 81, 'Kaynaşlı', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `illers`
--

CREATE TABLE `illers` (
  `id` bigint UNSIGNED NOT NULL,
  `il_adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `illers`
--

INSERT INTO `illers` (`id`, `il_adi`, `created_at`, `updated_at`) VALUES
(1, 'Adana', NULL, NULL),
(2, 'Adıyaman', NULL, NULL),
(3, 'Afyonkarahisar', NULL, NULL),
(4, 'Ağrı', NULL, NULL),
(5, 'Amasya', NULL, NULL),
(6, 'Ankara', NULL, NULL),
(7, 'Antalya', NULL, NULL),
(8, 'Artvin', NULL, NULL),
(9, 'Aydın', NULL, NULL),
(10, 'Balıkesir', NULL, NULL),
(11, 'Bilecik', NULL, NULL),
(12, 'Bingöl', NULL, NULL),
(13, 'Bitlis', NULL, NULL),
(14, 'Bolu', NULL, NULL),
(15, 'Burdur', NULL, NULL),
(16, 'Bursa', NULL, NULL),
(17, 'Çanakkale', NULL, NULL),
(18, 'Çankırı', NULL, NULL),
(19, 'Çorum', NULL, NULL),
(20, 'Denizli', NULL, NULL),
(21, 'Diyarbakır', NULL, NULL),
(22, 'Edirne', NULL, NULL),
(23, 'Elazığ', NULL, NULL),
(24, 'Erzincan', NULL, NULL),
(25, 'Erzurum', NULL, NULL),
(26, 'Eskişehir', NULL, NULL),
(27, 'Gaziantep', NULL, NULL),
(28, 'Giresun', NULL, NULL),
(29, 'Gümüşhane', NULL, NULL),
(30, 'Hakkari', NULL, NULL),
(31, 'Hatay', NULL, NULL),
(32, 'Isparta', NULL, NULL),
(33, 'Mersin', NULL, NULL),
(34, 'İstanbul', NULL, NULL),
(35, 'İzmir', NULL, NULL),
(36, 'Kars', NULL, NULL),
(37, 'Kastamonu', NULL, NULL),
(38, 'Kayseri', NULL, NULL),
(39, 'Kırklareli', NULL, NULL),
(40, 'Kırşehir', NULL, NULL),
(41, 'Kocaeli', NULL, NULL),
(42, 'Konya', NULL, NULL),
(43, 'Kütahya', NULL, NULL),
(44, 'Malatya', NULL, NULL),
(45, 'Manisa', NULL, NULL),
(46, 'Kahramanmaraş', NULL, NULL),
(47, 'Mardin', NULL, NULL),
(48, 'Muğla', NULL, NULL),
(49, 'Muş', NULL, NULL),
(50, 'Nevşehir', NULL, NULL),
(51, 'Niğde', NULL, NULL),
(52, 'Ordu', NULL, NULL),
(53, 'Rize', NULL, NULL),
(54, 'Sakarya', NULL, NULL),
(55, 'Samsun', NULL, NULL),
(56, 'Siirt', NULL, NULL),
(57, 'Sinop', NULL, NULL),
(58, 'Sivas', NULL, NULL),
(59, 'Tekirdağ', NULL, NULL),
(60, 'Tokat', NULL, NULL),
(61, 'Trabzon', NULL, NULL),
(62, 'Tunceli', NULL, NULL),
(63, 'Şanlıurfa', NULL, NULL),
(64, 'Uşak', NULL, NULL),
(65, 'Van', NULL, NULL),
(66, 'Yozgat', NULL, NULL),
(67, 'Zonguldak', NULL, NULL),
(68, 'Aksaray', NULL, NULL),
(69, 'Bayburt', NULL, NULL),
(70, 'Karaman', NULL, NULL),
(71, 'Kırıkkale', NULL, NULL),
(72, 'Batman', NULL, NULL),
(73, 'Şırnak', NULL, NULL),
(74, 'Bartın', NULL, NULL),
(75, 'Ardahan', NULL, NULL),
(76, 'Iğdır', NULL, NULL),
(77, 'Yalova', NULL, NULL),
(78, 'Karabük', NULL, NULL),
(79, 'Kilis', NULL, NULL),
(80, 'Osmaniye', NULL, NULL),
(81, 'Düzce', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_27_152934_create_urunlers_table', 2),
(6, '2023_07_27_204500_create_musterilers_table', 3),
(7, '2023_07_28_145921_create_urunlers_table', 4),
(8, '2023_07_28_152149_create_illers_table', 5),
(9, '2023_07_28_152336_create_ilcelers_table', 5),
(10, '2023_07_30_212733_create_satislars_table', 6),
(11, '2023_08_01_130228_create_permission_tables', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `musterilers`
--

CREATE TABLE `musterilers` (
  `id` bigint UNSIGNED NOT NULL,
  `adi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soyadi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adres` text COLLATE utf8mb4_unicode_ci,
  `il` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ilce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `musterilers`
--

INSERT INTO `musterilers` (`id`, `adi`, `soyadi`, `email`, `tc`, `telefon`, `adres`, `il`, `ilce`, `created_at`, `updated_at`) VALUES
(1, 'Furkan', 'Kubat', 'furkankubat@gmail.com', '111111111111', '05340000000', 'Yavuzselim Kerpiç Sokak', '16', '204', '2023-07-28 09:47:14', '2023-07-28 10:38:08'),
(4, 'Deneme3', 'Deneme3', 'deneme3@gmail.com', '1001001010', '05340256589', 'Çeltikçi', '9', '118', '2023-07-28 13:21:25', '2023-07-28 19:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grup_adi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `grup_adi`, `created_at`, `updated_at`) VALUES
(1, 'musteriler.menu', 'web', 'musteriler', '2023-08-01 11:03:15', '2023-08-01 11:03:15'),
(3, 'musteriler.duzenle', 'web', 'musteriler', '2023-08-01 11:05:31', '2023-08-01 11:05:31'),
(4, 'urunler.duzenle', 'web', 'urunler', '2023-08-01 11:06:02', '2023-08-01 11:06:02'),
(5, 'satislar.menu', 'web', 'satislar', '2023-08-01 11:06:35', '2023-08-01 11:06:35'),
(6, 'satislar.yap', 'web', 'satislar', '2023-08-01 11:07:26', '2023-08-01 11:07:26'),
(9, 'urunler.menu', 'web', 'urunler', '2023-08-06 10:07:42', '2023-08-06 10:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-08-02 12:03:46', '2023-08-02 12:03:46'),
(3, 'SuperAdmin', 'web', '2023-08-02 12:15:02', '2023-08-02 12:15:02'),
(4, 'Editör', 'web', '2023-08-02 12:15:11', '2023-08-02 12:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(3, 1),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(9, 3),
(1, 4),
(3, 4),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `satislars`
--

CREATE TABLE `satislars` (
  `id` bigint UNSIGNED NOT NULL,
  `musteri_id` int NOT NULL,
  `urun_id` int NOT NULL,
  `satis_fiyati` int NOT NULL,
  `urun_adedi` int NOT NULL,
  `kar_zarar` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satislars`
--

INSERT INTO `satislars` (`id`, `musteri_id`, `urun_id`, `satis_fiyati`, `urun_adedi`, `kar_zarar`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 600, 1, 100, '2023-07-30 20:24:03', NULL),
(3, 4, 3, 700, 2, 0, '2023-07-30 20:27:43', NULL),
(4, 1, 3, 800, 3, 300, '2023-07-30 20:28:24', NULL),
(5, 1, 1, 624, 2, 248, '2023-07-30 20:37:40', NULL),
(6, 4, 3, 500, 2, -400, '2023-07-31 09:12:32', NULL),
(7, 1, 1, 700, 3, 600, '2023-07-31 09:43:13', NULL),
(8, 1, 3, 800, 2, 200, '2023-07-31 09:43:13', NULL),
(9, 1, 1, 900, 2, 800, '2023-07-31 12:53:39', NULL),
(10, 1, 3, 900, 3, 600, '2023-07-31 12:53:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `urunlers`
--

CREATE TABLE `urunlers` (
  `id` bigint UNSIGNED NOT NULL,
  `urun_kodu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urun_adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urun_stok` int NOT NULL,
  `urun_alis_fiyat` int NOT NULL,
  `urun_satis_fiyat` int DEFAULT NULL,
  `urun_aciklama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urun_resim` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `urunlers`
--

INSERT INTO `urunlers` (`id`, `urun_kodu`, `urun_adi`, `urun_stok`, `urun_alis_fiyat`, `urun_satis_fiyat`, `urun_aciklama`, `urun_resim`, `created_at`, `updated_at`) VALUES
(1, 'P-0001', 'Pantolon', 42, 500, 650, 'Pantolon açıklama', 'upload/urunler/1773247804856495.jpg', '2023-07-28 20:51:46', '2023-08-06 10:48:51'),
(3, 'P-0002', 'T-Shirt', 58, 700, 850, 'T-Shirt açıklama', 'upload/urunler/1773247792189464.jpg', '2023-07-30 07:13:35', '2023-08-06 10:48:14'),
(6, 'P-0003', 'Çorap', 60, 300, 450, 'Çorap açıklama', 'upload/urunler/1773247776241455.jpg', '2023-08-03 19:14:21', NULL),
(8, 'P-0004', 'Kemer', 20, 40, 70, 'Kemer Açıklama', 'upload/urunler/1773574680574229.webp', '2023-08-07 09:50:21', '2023-08-07 09:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `rol`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Furkan Kubat', 'furkan@gmail.com', NULL, '$2y$10$y1o2ovDh0anZX.KB5gAsIOfjlXxQ1Rtw/z16WZ8DToOlEKtdya.oG', 'admin', 'csvTpAJVnksiG6SMWlZ5VlrjaOllGdI8T6146LZnkktIrWzijjlo7jXlrVaR', '2023-07-26 19:52:46', '2023-07-26 20:05:07'),
(2, 'Burak Tapinç', 'burak@gmail.com', NULL, '$2y$10$pVLPA8XKWwOrlMXPMRJvWecqzHLyXueuBVQqQRY0SJZ7OTq8WRM6O', NULL, NULL, '2023-07-27 11:52:10', '2023-07-27 11:52:10'),
(3, 'İbrahim Toprak', 'ibrahim@gmail.com', NULL, '$2y$10$7fcCFsvyB2QhsciEKv6gL.mV77Xc5vHHjurFkuFHoJk1mYuE90uvO', NULL, NULL, '2023-08-01 09:54:55', '2023-08-01 09:54:55'),
(4, 'Deneme DENEME', 'deneme@gmail.com', NULL, '$2y$10$Excx4AM.sVvJgR4KjWeSoOdIm0vAoVVCIByhOBySFDzQow02.MBvC', 'admin', NULL, '2023-08-05 11:48:19', '2023-08-05 11:48:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `ilcelers`
--
ALTER TABLE `ilcelers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `illers`
--
ALTER TABLE `illers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `musterilers`
--
ALTER TABLE `musterilers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `satislars`
--
ALTER TABLE `satislars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urunlers`
--
ALTER TABLE `urunlers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ilcelers`
--
ALTER TABLE `ilcelers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;

--
-- AUTO_INCREMENT for table `illers`
--
ALTER TABLE `illers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `musterilers`
--
ALTER TABLE `musterilers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `satislars`
--
ALTER TABLE `satislars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `urunlers`
--
ALTER TABLE `urunlers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
