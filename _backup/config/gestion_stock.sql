-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Mer 20 Décembre 2017 à 15:04
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données :  `gestion_stock`
--
CREATE DATABASE IF NOT EXISTS `gestion_stock` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gestion_stock`;

-- --------------------------------------------------------

--
-- Structure de la table `allowed_users`
--

CREATE TABLE `allowed_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `alias` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `allowed_users`
--

INSERT INTO `allowed_users` (`id`, `alias`, `name`, `password`) VALUES
(1, 'bp', 'Bertrand Peye', 'bp0371'),
(2, 'jl', 'Johnny Lassay', 'jl0182'),
(3, 'lc', 'Laurence Corbin', 'lc0676'),
(4, 'ht', 'Hervé Triffault', 'ht0980'),
(5, 'jb', 'Julien Boulay', 'jb0585'),
(6, 'mf', 'Maël Frénéhard', 'mf0588'),
(7, 'test', 'test', 'test00');

-- --------------------------------------------------------

--
-- Structure de la table `entry`
--

CREATE TABLE `entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `status` char(1) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date_entry` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `stock` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_location` varchar(30) NOT NULL,
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`id`, `num_location`, `locked`) VALUES
(1, '1A01', 0),
(2, '1A02', 0),
(3, '1A11', 0),
(4, '1A12', 0),
(5, '1A21', 0),
(6, '1A22', 0),
(7, '1B01', 0),
(8, '1B02', 0),
(9, '1B03', 0),
(10, '1B11', 0),
(11, '1B12', 0),
(12, '1B13', 0),
(13, '1B21', 0),
(14, '1B22', 0),
(15, '1B23', 0),
(16, '1C01', 0),
(17, '1C02', 0),
(18, '1C03', 0),
(19, '1C11', 0),
(20, '1C12', 0),
(21, '1C13', 0),
(22, '1C21', 0),
(23, '1C22', 0),
(24, '1C23', 0),
(25, '1D01', 0),
(26, '1D02', 0),
(27, '1D11', 0),
(28, '1D12', 0),
(29, '1D21', 0),
(30, '1D22', 0),
(31, '1E01', 0),
(32, '1E02', 0),
(33, '1E03', 0),
(34, '1E11', 0),
(35, '1E12', 0),
(36, '1E13', 0),
(37, '1E21', 0),
(38, '1E22', 0),
(39, '1E23', 0),
(40, '1F01', 0),
(41, '1F02', 0),
(42, '1F11', 0),
(43, '1F12', 0),
(44, '1F21', 0),
(45, '1F22', 0),
(46, '1G01', 0),
(47, '1G02', 0),
(48, '1G03', 0),
(49, '1G11', 0),
(50, '1G12', 0),
(51, '1G13', 0),
(52, '1G21', 0),
(53, '1G22', 0),
(54, '1G23', 0),
(55, '1H01', 0),
(56, '1H02', 0),
(57, '1H03', 0),
(58, '1H11', 0),
(59, '1H12', 0),
(60, '1H13', 0),
(61, '1H21', 0),
(62, '1H22', 0),
(63, '1H23', 0),
(64, '1I01', 0),
(65, '1I02', 0),
(66, '1I03', 0),
(67, '1I11', 0),
(68, '1I12', 0),
(69, '1I13', 0),
(70, '1I21', 0),
(71, '1I22', 0),
(72, '1I23', 0),
(73, '1J01', 0),
(74, '1J02', 0),
(75, '1J03', 0),
(76, '1J11', 0),
(77, '1J12', 0),
(78, '1J13', 0),
(79, '1J21', 0),
(80, '1J22', 0),
(81, '1J23', 0),
(82, '1K01', 0),
(83, '1K02', 0),
(84, '1K11', 0),
(85, '1K12', 0),
(86, '1K21', 0),
(87, '1K22', 0),
(88, '1L01', 0),
(89, '1L02', 0),
(90, '1L03', 0),
(91, '1L04', 0),
(92, '1L11', 0),
(93, '1L12', 0),
(94, '1L13', 0),
(95, '1L14', 0),
(96, '1L21', 0),
(97, '1L22', 0),
(98, '1L23', 0),
(99, '1L24', 0),
(100, '2A01', 0),
(101, '2A02', 0),
(102, '2A03', 0),
(103, '2A11', 0),
(104, '2A12', 0),
(105, '2A13', 0),
(106, '2A21', 0),
(107, '2A22', 0),
(108, '2A23', 0),
(109, '2B01', 0),
(110, '2B02', 0),
(111, '2B03', 0),
(112, '2B11', 0),
(113, '2B12', 0),
(114, '2B13', 0),
(115, '2B21', 0),
(116, '2B22', 0),
(117, '2B23', 0),
(118, '2C01', 0),
(119, '2C02', 0),
(120, '2C03', 0),
(121, '2C11', 0),
(122, '2C12', 0),
(123, '2C13', 0),
(124, '2C21', 0),
(125, '2C22', 0),
(126, '2C23', 0),
(127, '2D01', 0),
(128, '2D02', 0),
(129, '2D03', 0),
(130, '2D11', 0),
(131, '2D12', 0),
(132, '2D13', 0),
(133, '2D21', 0),
(134, '2D22', 0),
(135, '2D23', 0),
(136, '2E01', 0),
(137, '2E02', 0),
(138, '2E03', 0),
(139, '2E11', 0),
(140, '2E12', 0),
(141, '2E13', 0),
(142, '2E21', 0),
(143, '2E22', 0),
(144, '2E23', 0),
(145, '2F01', 0),
(146, '2F02', 0),
(147, '2F03', 0),
(148, '2F11', 0),
(149, '2F12', 0),
(150, '2F13', 0),
(151, '2F21', 0),
(152, '2F22', 0),
(153, '2F23', 0),
(154, '2G01', 0),
(155, '2G02', 0),
(156, '2G03', 0),
(157, '2G11', 0),
(158, '2G12', 0),
(159, '2G13', 0),
(160, '2G21', 0),
(161, '2G22', 0),
(162, '2G23', 0),
(163, '2H01', 0),
(164, '2H02', 0),
(165, '2H03', 0),
(166, '2H11', 0),
(167, '2H12', 0),
(168, '2H13', 0),
(169, '2H21', 0),
(170, '2H22', 0),
(171, '2H23', 0),
(172, '2I01', 0),
(173, '2I02', 0),
(174, '2I03', 0),
(175, '2I11', 0),
(176, '2I12', 0),
(177, '2I13', 0),
(178, '2I21', 0),
(179, '2I22', 0),
(180, '2I23', 0),
(181, '2J01', 0),
(182, '2J02', 0),
(183, '2J03', 0),
(184, '2J11', 0),
(185, '2J12', 0),
(186, '2J13', 0),
(187, '2J21', 0),
(188, '2J22', 0),
(189, '2J23', 0),
(190, '2K01', 0),
(191, '2K02', 0),
(192, '2K03', 0),
(193, '2K11', 0),
(194, '2K12', 0),
(195, '2K13', 0),
(196, '2K21', 0),
(197, '2K22', 0),
(198, '2K23', 0),
(199, '2L01', 0),
(200, '2L02', 0),
(201, '2L03', 0),
(202, '2L04', 0),
(203, '2L11', 0),
(204, '2L12', 0),
(205, '2L13', 0),
(206, '2L14', 0),
(207, '2L21', 0),
(208, '2L22', 0),
(209, '2L23', 0),
(210, '2L24', 0),
(211, '3A01', 0),
(212, '3A02', 0),
(213, '3A03', 0),
(214, '3A11', 0),
(215, '3A12', 0),
(216, '3A13', 0),
(217, '3A21', 0),
(218, '3A22', 0),
(219, '3A23', 0),
(220, '3B01', 0),
(221, '3B02', 0),
(222, '3B03', 0),
(223, '3B11', 0),
(224, '3B12', 0),
(225, '3B13', 0),
(226, '3B21', 0),
(227, '3B22', 0),
(228, '3B23', 0),
(229, '3C01', 0),
(230, '3C02', 0),
(231, '3C03', 0),
(232, '3C11', 0),
(233, '3C12', 0),
(234, '3C13', 0),
(235, '3C21', 0),
(236, '3C22', 0),
(237, '3C23', 0),
(238, '3D01', 0),
(239, '3D02', 0),
(240, '3D03', 0),
(241, '3D11', 0),
(242, '3D12', 0),
(243, '3D13', 0),
(244, '3D21', 0),
(245, '3D22', 0),
(246, '3D23', 0),
(247, '3E01', 0),
(248, '3E02', 0),
(249, '3E03', 0),
(250, '3E11', 0),
(251, '3E12', 0),
(252, '3E13', 0),
(253, '3E21', 0),
(254, '3E22', 0),
(255, '3E23', 0),
(256, '3F01', 0),
(257, '3F02', 0),
(258, '3F03', 0),
(259, '3F11', 0),
(260, '3F12', 0),
(261, '3F13', 0),
(262, '3F21', 0),
(263, '3F22', 0),
(264, '3F23', 0),
(265, '3G01', 0),
(266, '3G02', 0),
(267, '3G03', 0),
(268, '3G11', 0),
(269, '3G12', 0),
(270, '3G13', 0),
(271, '3G21', 0),
(272, '3G22', 0),
(273, '3G23', 0),
(274, '3H01', 0),
(275, '3H02', 0),
(276, '3H03', 0),
(277, '3H11', 0),
(278, '3H12', 0),
(279, '3H13', 0),
(280, '3H21', 0),
(281, '3H22', 0),
(282, '3H23', 0),
(283, '3I01', 0),
(284, '3I02', 0),
(285, '3I03', 0),
(286, '3I11', 0),
(287, '3I12', 0),
(288, '3I13', 0),
(289, '3I21', 0),
(290, '3I22', 0),
(291, '3I23', 0),
(292, '3J01', 0),
(293, '3J02', 0),
(294, '3J03', 0),
(295, '3J11', 0),
(296, '3J12', 0),
(297, '3J13', 0),
(298, '3J21', 0),
(299, '3J22', 0),
(300, '3J23', 0),
(301, '3K01', 0),
(302, '3K02', 0),
(303, '3K03', 0),
(304, '3K11', 0),
(305, '3K12', 0),
(306, '3K13', 0),
(307, '3K21', 0),
(308, '3K22', 0),
(309, '3K23', 0),
(310, '3L01', 0),
(311, '3L02', 0),
(312, '3L03', 0),
(313, '3L04', 0),
(314, '3L11', 0),
(315, '3L12', 0),
(316, '3L13', 0),
(317, '3L14', 0),
(318, '3L21', 0),
(319, '3L22', 0),
(320, '3L23', 0),
(321, '3L24', 0),
(322, '4A01', 0),
(323, '4A02', 0),
(324, '4A03', 0),
(325, '4A11', 0),
(326, '4A12', 0),
(327, '4A13', 0),
(328, '4A21', 0),
(329, '4A22', 0),
(330, '4A23', 0),
(331, '4B01', 0),
(332, '4B02', 0),
(333, '4B03', 0),
(334, '4B11', 0),
(335, '4B12', 0),
(336, '4B13', 0),
(337, '4B21', 0),
(338, '4B22', 0),
(339, '4B23', 0),
(340, '4C01', 0),
(341, '4C02', 0),
(342, '4C03', 0),
(343, '4C11', 0),
(344, '4C12', 0),
(345, '4C13', 0),
(346, '4C21', 0),
(347, '4C22', 0),
(348, '4C23', 0),
(349, '4D01', 0),
(350, '4D02', 0),
(351, '4D03', 0),
(352, '4D11', 0),
(353, '4D12', 0),
(354, '4D13', 0),
(355, '4D21', 0),
(356, '4D22', 0),
(357, '4D23', 0),
(358, '4E01', 0),
(359, '4E02', 0),
(360, '4E03', 0),
(361, '4E11', 0),
(362, '4E12', 0),
(363, '4E13', 0),
(364, '4E21', 0),
(365, '4E22', 0),
(366, '4E23', 0),
(367, '4F01', 0),
(368, '4F02', 0),
(369, '4F03', 0),
(370, '4F11', 0),
(371, '4F12', 0),
(372, '4F13', 0),
(373, '4F21', 0),
(374, '4F22', 0),
(375, '4F23', 0),
(376, '4G01', 0),
(377, '4G02', 0),
(378, '4G03', 0),
(379, '4G11', 0),
(380, '4G12', 0),
(381, '4G13', 0),
(382, '4G21', 0),
(383, '4G22', 0),
(384, '4G23', 0),
(385, '4H01', 0),
(386, '4H02', 0),
(387, '4H03', 0),
(388, '4H11', 0),
(389, '4H12', 0),
(390, '4H13', 0),
(391, '4H21', 0),
(392, '4H22', 0),
(393, '4H23', 0),
(394, '4I01', 0),
(395, '4I02', 0),
(396, '4I03', 0),
(397, '4I11', 0),
(398, '4I12', 0),
(399, '4I13', 0),
(400, '4I21', 0),
(401, '4I22', 0),
(402, '4I23', 0),
(403, '4J01', 0),
(404, '4J02', 0),
(405, '4J03', 0),
(406, '4J11', 0),
(407, '4J12', 0),
(408, '4J13', 0),
(409, '4J21', 0),
(410, '4J22', 0),
(411, '4J23', 0),
(412, '4K01', 0),
(413, '4K02', 0),
(414, '4K03', 0),
(415, '4K11', 0),
(416, '4K12', 0),
(417, '4K13', 0),
(418, '4K21', 0),
(419, '4K22', 0),
(420, '4K23', 0),
(421, '4L01', 0),
(422, '4L02', 0),
(423, '4L03', 0),
(424, '4L04', 0),
(425, '4L11', 0),
(426, '4L12', 0),
(427, '4L13', 0),
(428, '4L14', 0),
(429, '4L21', 0),
(430, '4L22', 0),
(431, '4L23', 0),
(432, '4L24', 0),
(433, '5A01', 0),
(434, '5A02', 0),
(435, '5A03', 0),
(436, '5A11', 0),
(437, '5A12', 0),
(438, '5A13', 0),
(439, '5A21', 0),
(440, '5A22', 0),
(441, '5A23', 0),
(442, '5B01', 0),
(443, '5B02', 0),
(444, '5B03', 0),
(445, '5B11', 0),
(446, '5B12', 0),
(447, '5B13', 0),
(448, '5B21', 0),
(449, '5B22', 0),
(450, '5B23', 0),
(451, '5C01', 0),
(452, '5C02', 0),
(453, '5C03', 0),
(454, '5C11', 0),
(455, '5C12', 0),
(456, '5C13', 0),
(457, '5C21', 0),
(458, '5C22', 0),
(459, '5C23', 0),
(460, '5D01', 0),
(461, '5D02', 0),
(462, '5D03', 0),
(463, '5D11', 0),
(464, '5D12', 0),
(465, '5D13', 0),
(466, '5D21', 0),
(467, '5D22', 0),
(468, '5D23', 0),
(469, '5E01', 0),
(470, '5E02', 0),
(471, '5E03', 0),
(472, '5E11', 0),
(473, '5E12', 0),
(474, '5E13', 0),
(475, '5E21', 0),
(476, '5E22', 0),
(477, '5E23', 0),
(478, '5F01', 0),
(479, '5F02', 0),
(480, '5F03', 0),
(481, '5F11', 0),
(482, '5F12', 0),
(483, '5F13', 0),
(484, '5F21', 0),
(485, '5F22', 0),
(486, '5F23', 0),
(487, '5G01', 0),
(488, '5G02', 0),
(489, '5G03', 0),
(490, '5G11', 0),
(491, '5G12', 0),
(492, '5G13', 0),
(493, '5G21', 0),
(494, '5G22', 0),
(495, '5G23', 0),
(496, '5H01', 0),
(497, '5H02', 0),
(498, '5H03', 0),
(499, '5H11', 0),
(500, '5H12', 0),
(501, '5H13', 0),
(502, '5H21', 0),
(503, '5H22', 0),
(504, '5H23', 0),
(505, '5I01', 0),
(506, '5I02', 0),
(507, '5I03', 0),
(508, '5I11', 0),
(509, '5I12', 0),
(510, '5I13', 0),
(511, '5I21', 0),
(512, '5I22', 0),
(513, '5I23', 0),
(514, '5J01', 0),
(515, '5J02', 0),
(516, '5J03', 0),
(517, '5J11', 0),
(518, '5J12', 0),
(519, '5J13', 0),
(520, '5J21', 0),
(521, '5J22', 0),
(522, '5J23', 0),
(523, '5K01', 0),
(524, '5K02', 0),
(525, '5K03', 0),
(526, '5K11', 0),
(527, '5K12', 0),
(528, '5K13', 0),
(529, '5K21', 0),
(530, '5K22', 0),
(531, '5K23', 0),
(532, '5L01', 0),
(533, '5L02', 0),
(534, '5L03', 0),
(535, '5L04', 0),
(536, '5L11', 0),
(537, '5L12', 0),
(538, '5L13', 0),
(539, '5L14', 0),
(540, '5L21', 0),
(541, '5L22', 0),
(542, '5L23', 0),
(543, '5L24', 0),
(544, '6A01', 0),
(545, '6A02', 0),
(546, '6A03', 0),
(547, '6A11', 0),
(548, '6A12', 0),
(549, '6A13', 0),
(550, '6A21', 0),
(551, '6A22', 0),
(552, '6A23', 0),
(553, '6B01', 0),
(554, '6B02', 0),
(555, '6B11', 0),
(556, '6B12', 0),
(557, '6B21', 0),
(558, '6B22', 0),
(559, '6C01', 0),
(560, '6C02', 0),
(561, '6C03', 0),
(562, '6C11', 0),
(563, '6C12', 0),
(564, '6C13', 0),
(565, '6C21', 0),
(566, '6C22', 0),
(567, '6C23', 0),
(568, '6D01', 0),
(569, '6D02', 0),
(570, '6D11', 0),
(571, '6D12', 0),
(572, '6D21', 0),
(573, '6D22', 0),
(574, '6E01', 0),
(575, '6E02', 0),
(576, '6E03', 0),
(577, '6E11', 0),
(578, '6E12', 0),
(579, '6E13', 0),
(580, '6E21', 0),
(581, '6E22', 0),
(582, '6E23', 0),
(583, '6F01', 0),
(584, '6F02', 0),
(585, '6F11', 0),
(586, '6F12', 0),
(587, '6F21', 0),
(588, '6F22', 0),
(589, '6G01', 0),
(590, '6G02', 0),
(591, '6G03', 0),
(592, '6G11', 0),
(593, '6G12', 0),
(594, '6G13', 0),
(595, '6G21', 0),
(596, '6G22', 0),
(597, '6G23', 0),
(598, '6H01', 0),
(599, '6H02', 0),
(600, '6H11', 0),
(601, '6H12', 0),
(602, '6H21', 0),
(603, '6H22', 0),
(604, '6I01', 0),
(605, '6I02', 0),
(606, '6I03', 0),
(607, '6I11', 0),
(608, '6I12', 0),
(609, '6I13', 0),
(610, '6I21', 0),
(611, '6I22', 0),
(612, '6I23', 0),
(613, '6J01', 0),
(614, '6J02', 0),
(615, '6J03', 0),
(616, '6J04', 0),
(617, '6J05', 0),
(618, '6J11', 0),
(619, '6J12', 0),
(620, '6J13', 0),
(621, '6J14', 0),
(622, '6J15', 0),
(623, '6J21', 0),
(624, '6J22', 0),
(625, '6J23', 0),
(626, '6J24', 0),
(627, '6J25', 0),
(628, '6K01', 0),
(629, '6K02', 0),
(630, '6K11', 0),
(631, '6K12', 0),
(632, '6K21', 0),
(633, '6K22', 0),
(634, '6L01', 0),
(635, '6L02', 0),
(636, '6L03', 0),
(637, '6L04', 0),
(638, '6L05', 0),
(639, '6L11', 0),
(640, '6L12', 0),
(641, '6L13', 0),
(642, '6L14', 0),
(643, '6L15', 0),
(644, '6L21', 0),
(645, '6L22', 0),
(646, '6L23', 0),
(647, '6L24', 0),
(648, '6L25', 0),
(649, '701', 0),
(650, '702', 0),
(651, '703', 0),
(652, '704', 0),
(653, '705', 0),
(654, '706', 0),
(655, '707', 0),
(656, '708', 0),
(657, '709', 0),
(658, '710', 0),
(659, '711', 0),
(660, '712', 0),
(661, '713', 0),
(662, '714', 0),
(663, '715', 0),
(664, '716', 0),
(665, '717', 0),
(666, '801', 0),
(667, '802', 0),
(668, '803', 0),
(669, '804', 0),
(670, '805', 0),
(671, '806', 0),
(672, '807', 0),
(673, '808', 0),
(674, '809', 0),
(675, '810', 0),
(676, '811', 0),
(677, '812', 0),
(678, '813', 0),
(679, '814', 0),
(680, '901', 0),
(681, '902', 0),
(682, '903', 0),
(683, '904', 0),
(684, '905', 0),
(685, '906', 0),
(686, '907', 0),
(687, '908', 0),
(688, '909', 0),
(689, '910', 0),
(690, '911', 0),
(691, '912', 0),
(692, '913', 0),
(693, '914', 0),
(694, '915', 0),
(695, '916', 0),
(696, '917', 0),
(697, '918', 0),
(698, '919', 0),
(699, '920', 0),
(700, '921', 0),
(701, '922', 0),
(702, '923', 0),
(703, '924', 0),
(704, '925', 0),
(705, '926', 0),
(706, '927', 0),
(707, '928', 0),
(708, '929', 0),
(709, '930', 0),
(710, '931', 0),
(711, '932', 0),
(712, '933', 0),
(713, '934', 0),
(714, '935', 0),
(715, '936', 0),
(716, '937', 0),
(717, '938', 0),
(718, '939', 0),
(719, '940', 0),
(720, '1001', 0),
(721, '1002', 0),
(722, '1003', 0),
(723, '1004', 0),
(724, '1005', 0),
(725, '1006', 0),
(726, '1007', 0),
(727, '1008', 0),
(728, '1009', 0),
(729, '1010', 0),
(730, '1011', 0),
(731, '1012', 0),
(732, '1013', 0),
(733, '1014', 0),
(734, '1015', 0),
(735, '1016', 0),
(736, '1017', 0),
(737, '1018', 0),
(738, '1019', 0),
(739, '1020', 0),
(740, '1021', 0),
(741, '1022', 0),
(742, '1023', 0),
(743, '1024', 0),
(744, '1025', 0),
(745, '1026', 0),
(746, '1027', 0),
(747, '1028', 0),
(748, '1029', 0),
(749, '1030', 0),
(750, '1031', 0),
(751, '1032', 0),
(752, '1033', 0),
(753, '1034', 0),
(754, '1035', 0),
(755, '1036', 0),
(756, '1037', 0),
(757, '1038', 0),
(758, '1039', 0),
(759, '1040', 0),
(760, '1101', 0),
(761, '1102', 0),
(762, '1103', 0),
(763, '1104', 0),
(764, '1105', 0),
(765, '1106', 0),
(766, '1107', 0),
(767, '1108', 0),
(768, '1109', 0),
(769, '1110', 0),
(770, '1111', 0),
(771, '1112', 0),
(772, '1113', 0),
(773, '1114', 0),
(774, '1115', 0),
(775, '1116', 0),
(776, '1117', 0),
(777, '1118', 0),
(778, '1119', 0),
(779, '1120', 0),
(780, '1121', 0),
(781, '1122', 0),
(782, '1123', 0),
(783, '1124', 0),
(784, '1125', 0),
(785, '1126', 0),
(786, '1127', 0),
(787, '1128', 0),
(788, '1129', 0),
(789, '1130', 0),
(790, '1131', 0),
(791, '1132', 0),
(792, '1133', 0),
(793, '1134', 0),
(794, '1135', 0),
(795, '1136', 0),
(796, '1137', 0),
(797, '1138', 0),
(798, '1139', 0),
(799, '1140', 0),
(800, '1201', 0),
(801, '1202', 0),
(802, '1203', 0),
(803, '1204', 0),
(804, '1205', 0),
(805, '1206', 0),
(806, '1207', 0),
(807, '1208', 0),
(808, '1209', 0),
(809, '1210', 0),
(810, '1211', 0),
(811, '1212', 0),
(812, '1213', 0),
(813, '1214', 0),
(814, '1215', 0),
(815, '1216', 0),
(816, '1217', 0),
(817, '1218', 0),
(818, '1219', 0),
(819, '1220', 0),
(820, '1221', 0),
(821, '1222', 0),
(822, '1223', 0),
(823, '1224', 0),
(824, '1225', 0),
(825, '1226', 0),
(826, '1227', 0),
(827, '1228', 0),
(828, '1229', 0),
(829, '1230', 0),
(830, '1231', 0),
(831, '1232', 0),
(832, '1233', 0),
(833, '1234', 0),
(834, 'ATE', 0),
(835, 'SAS', 0),
(836, 'ZONE PREPA', 0),
(837, 'STOCKAGE', 0),
(838, 'MASSE', 0),
(839, 'PLATEFORME STOCKAGE', 0),
(840, 'PLATEFORME ATE', 0);

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_loc` varchar(100) NOT NULL,
  `new_loc` varchar(100) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `old_qty` int(20) UNSIGNED NOT NULL,
  `new_qty` int(20) UNSIGNED NOT NULL,
  `status` char(5) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date_action` datetime NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `allowed_users_id` int(10) UNSIGNED NOT NULL,
  `date_connection` datetime NOT NULL,
  `online` tinyint(5) UNSIGNED NOT NULL,
  `last_activity` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `allowed_users`
--
ALTER TABLE `allowed_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allowed_users_id` (`allowed_users_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `allowed_users`
--
ALTER TABLE `allowed_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `free_entry`
--
ALTER TABLE `entry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `free_entry`
--
ALTER TABLE `entry`
  ADD CONSTRAINT `entry_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `entry_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`allowed_users_id`) REFERENCES `allowed_users` (`id`);
