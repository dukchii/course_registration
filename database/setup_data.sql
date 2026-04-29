-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 29, 2026 lúc 03:42 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dkhp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `academic_results`
--

CREATE TABLE `academic_results` (
  `id` bigint(20) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `grade` double DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `enrollment_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `academic_results`
--

INSERT INTO `academic_results` (`id`, `student_id`, `course_id`, `grade`, `status`, `semester`, `enrollment_id`) VALUES
(291, 'SV0001', 'INT101', 8.5, 'PASSED', 'HK1-2026', NULL),
(292, 'SV0002', 'INT101', 5.4, 'PASSED', 'HK1-2026', NULL),
(293, 'SV0003', 'INT101', 7.2, 'PASSED', 'HK1-2026', NULL),
(294, 'SV0004', 'INT101', 4.5, 'PASSED', 'HK1-2026', NULL),
(295, 'SV0005', 'INT101', 7.3, 'FAILED', 'HK1-2026', NULL),
(296, 'SV0006', 'INT101', 8.6, 'PASSED', 'HK1-2026', NULL),
(297, 'SV0007', 'INT101', 6.9, 'FAILED', 'HK1-2026', NULL),
(298, 'SV0008', 'INT101', 6.4, 'PASSED', 'HK1-2026', NULL),
(299, 'SV0009', 'INT101', 4.2, 'PASSED', 'HK1-2026', NULL),
(300, 'SV0010', 'INT101', 9.6, 'FAILED', 'HK1-2026', NULL),
(301, 'SV0011', 'INT101', 5.9, 'PASSED', 'HK1-2026', NULL),
(302, 'SV0012', 'INT101', 5.2, 'PASSED', 'HK1-2026', NULL),
(303, 'SV0013', 'INT101', 4.7, 'PASSED', 'HK1-2026', NULL),
(304, 'SV0014', 'INT101', 7.7, 'PASSED', 'HK1-2026', NULL),
(305, 'SV0015', 'INT101', 8, 'PASSED', 'HK1-2026', NULL),
(306, 'SV0016', 'INT101', 6.4, 'PASSED', 'HK1-2026', NULL),
(307, 'SV0017', 'INT101', 9.1, 'PASSED', 'HK1-2026', NULL),
(308, 'SV0018', 'INT101', 4.2, 'PASSED', 'HK1-2026', NULL),
(309, 'SV0019', 'INT101', 5.2, 'PASSED', 'HK1-2026', NULL),
(310, 'SV0020', 'INT101', 5.6, 'FAILED', 'HK1-2026', NULL),
(311, 'SV0021', 'INT101', 5, 'PASSED', 'HK1-2026', NULL),
(312, 'SV0022', 'INT101', 3.8, 'PASSED', 'HK1-2026', NULL),
(313, 'SV0023', 'INT101', 6.5, 'FAILED', 'HK1-2026', NULL),
(314, 'SV0024', 'INT101', 5.9, 'PASSED', 'HK1-2026', NULL),
(315, 'SV0025', 'INT101', 6.5, 'PASSED', 'HK1-2026', NULL),
(316, 'SV0026', 'INT101', 9, 'PASSED', 'HK1-2026', NULL),
(317, 'SV0027', 'INT101', 8.9, 'FAILED', 'HK1-2026', NULL),
(318, 'SV0028', 'INT101', 5.5, 'FAILED', 'HK1-2026', NULL),
(319, 'SV0029', 'INT101', 3.2, 'PASSED', 'HK1-2026', NULL),
(320, 'SV0030', 'INT101', 5.8, 'PASSED', 'HK1-2026', NULL),
(321, 'SV0031', 'INT101', 4.9, 'PASSED', 'HK1-2026', NULL),
(322, 'SV0032', 'INT101', 6.5, 'PASSED', 'HK1-2026', NULL),
(323, 'SV0033', 'INT101', 4.3, 'FAILED', 'HK1-2026', NULL),
(324, 'SV0034', 'INT101', 9.5, 'PASSED', 'HK1-2026', NULL),
(325, 'SV0035', 'INT101', 3.6, 'PASSED', 'HK1-2026', NULL),
(326, 'SV0036', 'INT101', 4.4, 'FAILED', 'HK1-2026', NULL),
(327, 'SV0037', 'INT101', 3.8, 'FAILED', 'HK1-2026', NULL),
(328, 'SV0038', 'INT101', 4.6, 'PASSED', 'HK1-2026', NULL),
(329, 'SV0039', 'INT101', 6, 'PASSED', 'HK1-2026', NULL),
(330, 'SV0040', 'INT101', 3.5, 'PASSED', 'HK1-2026', NULL),
(331, 'SV0041', 'INT101', 6.6, 'PASSED', 'HK1-2026', NULL),
(332, 'SV0042', 'INT101', 3.8, 'PASSED', 'HK1-2026', NULL),
(333, 'SV0043', 'INT101', 7, 'PASSED', 'HK1-2026', NULL),
(334, 'SV0044', 'INT101', 9.4, 'PASSED', 'HK1-2026', NULL),
(335, 'SV0045', 'INT101', 3.8, 'PASSED', 'HK1-2026', NULL),
(336, 'SV0046', 'INT101', 3.7, 'PASSED', 'HK1-2026', NULL),
(337, 'SV0047', 'INT101', 8.9, 'PASSED', 'HK1-2026', NULL),
(338, 'SV0048', 'INT101', 4.6, 'FAILED', 'HK1-2026', NULL),
(339, 'SV0049', 'INT101', 7.5, 'FAILED', 'HK1-2026', NULL),
(340, 'SV0050', 'INT101', 4.9, 'FAILED', 'HK1-2026', NULL),
(341, 'SV0001', 'MAT101', 4.8, 'PASSED', 'HK1-2026', NULL),
(342, 'SV0002', 'MAT101', 6.3, 'PASSED', 'HK1-2026', NULL),
(343, 'SV0003', 'MAT101', 7.1, 'PASSED', 'HK1-2026', NULL),
(344, 'SV0004', 'MAT101', 9.7, 'PASSED', 'HK1-2026', NULL),
(345, 'SV0005', 'MAT101', 9, 'PASSED', 'HK1-2026', NULL),
(346, 'SV0006', 'MAT101', 7.9, 'PASSED', 'HK1-2026', NULL),
(347, 'SV0007', 'MAT101', 8, 'PASSED', 'HK1-2026', NULL),
(348, 'SV0008', 'MAT101', 4, 'FAILED', 'HK1-2026', NULL),
(349, 'SV0009', 'MAT101', 5.1, 'FAILED', 'HK1-2026', NULL),
(350, 'SV0010', 'MAT101', 5.6, 'PASSED', 'HK1-2026', NULL),
(351, 'SV0011', 'MAT101', 5.4, 'PASSED', 'HK1-2026', NULL),
(352, 'SV0012', 'MAT101', 4.7, 'FAILED', 'HK1-2026', NULL),
(353, 'SV0013', 'MAT101', 7.3, 'FAILED', 'HK1-2026', NULL),
(354, 'SV0014', 'MAT101', 6.4, 'PASSED', 'HK1-2026', NULL),
(355, 'SV0015', 'MAT101', 7.1, 'FAILED', 'HK1-2026', NULL),
(356, 'SV0016', 'MAT101', 9.2, 'FAILED', 'HK1-2026', NULL),
(357, 'SV0017', 'MAT101', 6.2, 'FAILED', 'HK1-2026', NULL),
(358, 'SV0018', 'MAT101', 8.8, 'PASSED', 'HK1-2026', NULL),
(359, 'SV0019', 'MAT101', 7.1, 'PASSED', 'HK1-2026', NULL),
(360, 'SV0020', 'MAT101', 6.8, 'PASSED', 'HK1-2026', NULL),
(361, 'SV0021', 'MAT101', 4.3, 'PASSED', 'HK1-2026', NULL),
(362, 'SV0022', 'MAT101', 7.2, 'FAILED', 'HK1-2026', NULL),
(363, 'SV0023', 'MAT101', 8, 'FAILED', 'HK1-2026', NULL),
(364, 'SV0024', 'MAT101', 4.5, 'FAILED', 'HK1-2026', NULL),
(365, 'SV0025', 'MAT101', 7.5, 'PASSED', 'HK1-2026', NULL),
(366, 'SV0026', 'MAT101', 5.3, 'FAILED', 'HK1-2026', NULL),
(367, 'SV0027', 'MAT101', 5.2, 'PASSED', 'HK1-2026', NULL),
(368, 'SV0028', 'MAT101', 9.9, 'PASSED', 'HK1-2026', NULL),
(369, 'SV0029', 'MAT101', 3.1, 'PASSED', 'HK1-2026', NULL),
(370, 'SV0030', 'MAT101', 5.8, 'FAILED', 'HK1-2026', NULL),
(371, 'SV0031', 'MAT101', 6.1, 'PASSED', 'HK1-2026', NULL),
(372, 'SV0032', 'MAT101', 9.3, 'PASSED', 'HK1-2026', NULL),
(373, 'SV0033', 'MAT101', 3.2, 'PASSED', 'HK1-2026', NULL),
(374, 'SV0034', 'MAT101', 6.7, 'PASSED', 'HK1-2026', NULL),
(375, 'SV0035', 'MAT101', 8.7, 'FAILED', 'HK1-2026', NULL),
(376, 'SV0036', 'MAT101', 7.6, 'FAILED', 'HK1-2026', NULL),
(377, 'SV0037', 'MAT101', 5, 'PASSED', 'HK1-2026', NULL),
(378, 'SV0038', 'MAT101', 6.7, 'PASSED', 'HK1-2026', NULL),
(379, 'SV0039', 'MAT101', 6.6, 'PASSED', 'HK1-2026', NULL),
(380, 'SV0040', 'MAT101', 3.2, 'FAILED', 'HK1-2026', NULL),
(381, 'SV0041', 'MAT101', 9.8, 'PASSED', 'HK1-2026', NULL),
(382, 'SV0042', 'MAT101', 4.5, 'PASSED', 'HK1-2026', NULL),
(383, 'SV0043', 'MAT101', 4.4, 'FAILED', 'HK1-2026', NULL),
(384, 'SV0044', 'MAT101', 8.6, 'FAILED', 'HK1-2026', NULL),
(385, 'SV0045', 'MAT101', 6.8, 'FAILED', 'HK1-2026', NULL),
(386, 'SV0046', 'MAT101', 4.3, 'PASSED', 'HK1-2026', NULL),
(387, 'SV0047', 'MAT101', 6.6, 'PASSED', 'HK1-2026', NULL),
(388, 'SV0048', 'MAT101', 3.5, 'PASSED', 'HK1-2026', NULL),
(389, 'SV0049', 'MAT101', 7.8, 'FAILED', 'HK1-2026', NULL),
(390, 'SV0050', 'MAT101', 5.1, 'PASSED', 'HK1-2026', NULL),
(391, 'SV0063', 'INT101', 6.4, 'PASSED', 'HK1-2026', NULL),
(392, 'SV0064', 'INT101', 6.7, 'PASSED', 'HK1-2026', NULL),
(393, 'SV0065', 'INT101', 7.1, 'PASSED', 'HK1-2026', NULL),
(394, 'SV0066', 'INT101', 5.5, 'PASSED', 'HK1-2026', NULL),
(395, 'SV0067', 'INT101', 7, 'FAILED', 'HK1-2026', NULL),
(396, 'SV0068', 'INT101', 8.3, 'PASSED', 'HK1-2026', NULL),
(397, 'SV0063', 'MAT101', 4.3, 'PASSED', 'HK1-2026', NULL),
(398, 'SV0064', 'MAT101', 7.9, 'FAILED', 'HK1-2026', NULL),
(399, 'SV0065', 'MAT101', 7.2, 'PASSED', 'HK1-2026', NULL),
(400, 'SV0066', 'MAT101', 4.7, 'PASSED', 'HK1-2026', NULL),
(401, 'SV0067', 'MAT101', 4, 'PASSED', 'HK1-2026', NULL),
(402, 'SV0068', 'MAT101', 6.8, 'PASSED', 'HK1-2026', NULL),
(403, 'SV0057', 'INT101', 9.3, 'PASSED', 'HK1-2026', NULL),
(404, 'SV0058', 'INT101', 4.2, 'PASSED', 'HK1-2026', NULL),
(405, 'SV0059', 'INT101', 4.8, 'PASSED', 'HK1-2026', NULL),
(406, 'SV0060', 'INT101', 4.7, 'PASSED', 'HK1-2026', NULL),
(407, 'SV0061', 'INT101', 5.1, 'PASSED', 'HK1-2026', NULL),
(408, 'SV0062', 'INT101', 7.2, 'FAILED', 'HK1-2026', NULL),
(409, 'SV0057', 'MAT101', 7.6, 'FAILED', 'HK1-2026', NULL),
(410, 'SV0058', 'MAT101', 4.1, 'PASSED', 'HK1-2026', NULL),
(411, 'SV0059', 'MAT101', 9.7, 'PASSED', 'HK1-2026', NULL),
(412, 'SV0060', 'MAT101', 9.3, 'FAILED', 'HK1-2026', NULL),
(413, 'SV0061', 'MAT101', 5.3, 'FAILED', 'HK1-2026', NULL),
(414, 'SV0062', 'MAT101', 4.5, 'PASSED', 'HK1-2026', NULL),
(415, 'SV0086', 'BUS101', 3.6, 'PASSED', 'HK1-2026', NULL),
(416, 'SV0087', 'BUS101', 8, 'PASSED', 'HK1-2026', NULL),
(417, 'SV0088', 'BUS101', 9.3, 'FAILED', 'HK1-2026', NULL),
(418, 'SV0089', 'BUS101', 8.1, 'PASSED', 'HK1-2026', NULL),
(419, 'SV0090', 'BUS101', 7.2, 'PASSED', 'HK1-2026', NULL),
(420, 'SV0086', 'INT101', 9.8, 'FAILED', 'HK1-2026', NULL),
(421, 'SV0087', 'INT101', 4, 'PASSED', 'HK1-2026', NULL),
(422, 'SV0088', 'INT101', 9.9, 'PASSED', 'HK1-2026', NULL),
(423, 'SV0089', 'INT101', 5.5, 'FAILED', 'HK1-2026', NULL),
(424, 'SV0090', 'INT101', 3, 'PASSED', 'HK1-2026', NULL),
(425, 'SV0086', 'ENG101', 9.1, 'FAILED', 'HK1-2026', NULL),
(426, 'SV0087', 'ENG101', 5.7, 'PASSED', 'HK1-2026', NULL),
(427, 'SV0088', 'ENG101', 6.3, 'PASSED', 'HK1-2026', NULL),
(428, 'SV0089', 'ENG101', 6.9, 'PASSED', 'HK1-2026', NULL),
(429, 'SV0090', 'ENG101', 4.5, 'PASSED', 'HK1-2026', NULL),
(430, 'SV0051', 'BUS101', 3.3, 'FAILED', 'HK1-2026', NULL),
(431, 'SV0052', 'BUS101', 8.9, 'PASSED', 'HK1-2026', NULL),
(432, 'SV0053', 'BUS101', 7.2, 'FAILED', 'HK1-2026', NULL),
(433, 'SV0054', 'BUS101', 8.1, 'PASSED', 'HK1-2026', NULL),
(434, 'SV0055', 'BUS101', 7.2, 'PASSED', 'HK1-2026', NULL),
(435, 'SV0056', 'BUS101', 8.7, 'FAILED', 'HK1-2026', NULL),
(436, 'SV0051', 'INT101', 9.8, 'FAILED', 'HK1-2026', NULL),
(437, 'SV0052', 'INT101', 4.4, 'PASSED', 'HK1-2026', NULL),
(438, 'SV0053', 'INT101', 4, 'PASSED', 'HK1-2026', NULL),
(439, 'SV0054', 'INT101', 8.9, 'PASSED', 'HK1-2026', NULL),
(440, 'SV0055', 'INT101', 9.1, 'PASSED', 'HK1-2026', NULL),
(441, 'SV0056', 'INT101', 9.3, 'PASSED', 'HK1-2026', NULL),
(442, 'SV0069', 'BUS101', 4.6, 'PASSED', 'HK1-2026', NULL),
(443, 'SV0070', 'BUS101', 4.3, 'PASSED', 'HK1-2026', NULL),
(444, 'SV0071', 'BUS101', 6.5, 'FAILED', 'HK1-2026', NULL),
(445, 'SV0072', 'BUS101', 8.8, 'PASSED', 'HK1-2026', NULL),
(446, 'SV0073', 'BUS101', 4.5, 'FAILED', 'HK1-2026', NULL),
(447, 'SV0074', 'BUS101', 7.2, 'FAILED', 'HK1-2026', NULL),
(448, 'SV0096', 'INT101', 6.5, 'PASSED', 'HK1-2026', NULL),
(449, 'SV0097', 'INT101', 3.9, 'PASSED', 'HK1-2026', NULL),
(450, 'SV0098', 'INT101', 9.2, 'FAILED', 'HK1-2026', NULL),
(451, 'SV0099', 'INT101', 8.6, 'PASSED', 'HK1-2026', NULL),
(452, 'SV0100', 'INT101', 4.8, 'FAILED', 'HK1-2026', NULL),
(453, 'SV0091', 'BUS101', 7.3, 'PASSED', 'HK1-2026', NULL),
(454, 'SV0092', 'BUS101', 5.8, 'PASSED', 'HK1-2026', NULL),
(455, 'SV0093', 'BUS101', 4.2, 'PASSED', 'HK1-2026', NULL),
(456, 'SV0094', 'BUS101', 6.6, 'PASSED', 'HK1-2026', NULL),
(457, 'SV0095', 'BUS101', 4, 'PASSED', 'HK1-2026', NULL),
(458, 'SV0091', 'INT101', 4.6, 'PASSED', 'HK1-2026', NULL),
(459, 'SV0092', 'INT101', 3.5, 'PASSED', 'HK1-2026', NULL),
(460, 'SV0093', 'INT101', 4.5, 'PASSED', 'HK1-2026', NULL),
(461, 'SV0094', 'INT101', 6.5, 'PASSED', 'HK1-2026', NULL),
(462, 'SV0095', 'INT101', 6.9, 'PASSED', 'HK1-2026', NULL),
(463, 'SV0075', 'BUS101', 3.5, 'PASSED', 'HK1-2026', NULL),
(464, 'SV0076', 'BUS101', 4.7, 'PASSED', 'HK1-2026', NULL),
(465, 'SV0077', 'BUS101', 9.8, 'PASSED', 'HK1-2026', NULL),
(466, 'SV0078', 'BUS101', 5.2, 'PASSED', 'HK1-2026', NULL),
(467, 'SV0079', 'BUS101', 4.4, 'FAILED', 'HK1-2026', NULL),
(468, 'SV0080', 'BUS101', 9.8, 'PASSED', 'HK1-2026', NULL),
(469, 'SV0081', 'ENG101', 8.1, 'FAILED', 'HK1-2026', NULL),
(470, 'SV0082', 'ENG101', 9.6, 'PASSED', 'HK1-2026', NULL),
(471, 'SV0083', 'ENG101', 6.6, 'PASSED', 'HK1-2026', NULL),
(472, 'SV0084', 'ENG101', 5, 'PASSED', 'HK1-2026', NULL),
(473, 'SV0085', 'ENG101', 7.9, 'PASSED', 'HK1-2026', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classes`
--

CREATE TABLE `classes` (
  `class_id` bigint(20) NOT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `instructor_id` varchar(255) DEFAULT NULL,
  `max_students` int(11) DEFAULT NULL,
  `current_students` int(11) DEFAULT 0,
  `status` varchar(20) DEFAULT NULL,
  `training_type` varchar(50) DEFAULT NULL,
  `major_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`, `course_id`, `semester_id`, `instructor_id`, `max_students`, `current_students`, `status`, `training_type`, `major_id`) VALUES
(1, 'CNTT26216042', 'INT101', 4, 'GV001', 50, 0, 'CANCELLED', 'Đại trà', 'CNTT'),
(2, 'CNTT26299230', 'INT102', 4, 'GV001', 40, 0, 'CANCELLED', 'Đại trà', 'CNTT'),
(3, 'QTKD26848026', 'BUS101', 4, 'GV001', 50, 1, 'OPEN', 'Đại trà', 'QTKD'),
(4, 'QTKD26342437', 'BUS101', 4, 'GV001', 40, 0, 'CANCELLED', 'Đại trà', 'QTKD'),
(6, 'LHP00001', 'MH0001', 4, 'GV002', 50, 0, 'OPEN', 'Đại trà', 'CNTT'),
(7, 'LHP00002', 'MH0002', 4, 'GV003', 50, 0, 'OPEN', 'Đại trà', 'CNTT'),
(8, 'LHP00003', 'MH0003', 4, 'GV004', 50, 0, 'OPEN', 'Chất lượng cao', 'CNTT'),
(9, 'LHP00004', 'MH0004', 4, 'GV005', 50, 0, 'OPEN', 'Chất lượng cao', 'CNTT'),
(10, 'LHP00005', 'MH0005', 4, 'GV006', 50, 0, 'OPEN', 'Đại trà', 'CNTT'),
(11, 'LHP00006', 'MH0006', 4, 'GV007', 50, 0, 'OPEN', 'Đại trà', 'CNTT'),
(12, 'LHP00007', 'MH0007', 4, 'GV008', 50, 1, 'OPEN', 'Đại trà', 'KTPM'),
(13, 'LHP00008', 'MH0008', 4, 'GV009', 50, 0, 'OPEN', 'Đại trà', 'KTPM'),
(14, 'LHP00009', 'MH0009', 4, 'GV010', 50, 0, 'OPEN', 'Đại trà', 'KTPM'),
(15, 'LHP00010', 'MH0010', 4, 'GV011', 50, 0, 'OPEN', 'Đại trà', 'KTPM'),
(16, 'LHP00011', 'MH0011', 4, 'GV012', 50, 0, 'OPEN', 'Đại trà', 'KTPM'),
(17, 'LHP00012', 'MH0012', 4, 'GV013', 50, 0, 'OPEN', 'Đại trà', 'KTPM'),
(18, 'LHP00013', 'MH0013', 4, 'GV014', 50, 0, 'OPEN', 'Đại trà', 'KHMT'),
(19, 'LHP00014', 'MH0014', 4, 'GV015', 50, 0, 'OPEN', 'Đại trà', 'KHMT'),
(20, 'LHP00015', 'MH0015', 4, 'GV016', 50, 0, 'OPEN', 'Đại trà', 'KHMT'),
(21, 'LHP00016', 'MH0016', 4, 'GV017', 50, 0, 'OPEN', 'Đại trà', 'KHMT'),
(22, 'LHP00017', 'MH0017', 4, 'GV018', 50, 0, 'OPEN', 'Đại trà', 'KHMT'),
(23, 'LHP00018', 'MH0018', 4, 'GV019', 50, 0, 'OPEN', 'Đại trà', 'KHMT'),
(24, 'LHP00019', 'MH0019', 4, 'GV020', 50, 1, 'OPEN', 'Đại trà', 'QTKD'),
(25, 'LHP00020', 'MH0020', 4, 'GV021', 50, 0, 'OPEN', 'Đại trà', 'QTKD'),
(26, 'LHP00021', 'MH0021', 4, 'GV022', 50, 0, 'OPEN', 'Đại trà', 'QTKD'),
(27, 'LHP00022', 'MH0022', 4, 'GV023', 50, 0, 'OPEN', 'Đại trà', 'QTKD'),
(28, 'LHP00023', 'MH0023', 4, 'GV024', 50, 0, 'OPEN', 'Đại trà', 'QTKD'),
(29, 'LHP00024', 'MH0024', 4, 'GV025', 50, 0, 'OPEN', 'Đại trà', 'QTKD'),
(30, 'LHP00025', 'MH0025', 4, 'GV026', 50, 0, 'OPEN', 'Đại trà', 'QTKD'),
(31, 'LHP00026', 'MH0026', 4, 'GV027', 50, 0, 'OPEN', 'Đại trà', 'KETO'),
(32, 'LHP00027', 'MH0027', 4, 'GV028', 50, 0, 'OPEN', 'Chất lượng cao', 'KETO'),
(33, 'LHP00028', 'MH0028', 4, 'GV029', 50, 0, 'OPEN', 'Chất lượng cao', 'KETO'),
(34, 'LHP00029', 'MH0029', 4, 'GV030', 50, 0, 'OPEN', 'Chất lượng cao', 'KETO'),
(35, 'LHP00030', 'MH0030', 4, 'GV001', 50, 1, 'OPEN', 'Đại trà', 'KETO'),
(36, 'LHP00031', 'MH0031', 4, 'GV002', 50, 0, 'OPEN', 'Đại trà', 'KETO'),
(37, 'LHP00032', 'MH0032', 4, 'GV003', 50, 0, 'OPEN', 'Đại trà', 'KETO'),
(38, 'LHP00033', 'MH0033', 4, 'GV004', 50, 0, 'OPEN', 'Đại trà', 'LOGI'),
(39, 'LHP00034', 'MH0034', 4, 'GV005', 50, 0, 'OPEN', 'Đại trà', 'LOGI'),
(40, 'LHP00035', 'MH0035', 4, 'GV006', 50, 0, 'OPEN', 'Đại trà', 'LOGI'),
(41, 'LHP00036', 'MH0036', 4, 'GV007', 50, 0, 'OPEN', 'Đại trà', 'LOGI'),
(42, 'LHP00037', 'MH0037', 4, 'GV008', 50, 0, 'OPEN', 'Đại trà', 'TMDT'),
(43, 'LHP00038', 'MH0038', 4, 'GV009', 50, 0, 'OPEN', 'Đại trà', 'TMDT'),
(44, 'LHP00039', 'MH0039', 4, 'GV010', 50, 0, 'OPEN', 'Đại trà', 'TMDT'),
(45, 'LHP00040', 'MH0040', 4, 'GV011', 50, 0, 'OPEN', 'Đại trà', 'TMDT'),
(46, 'LHP00041', 'MH0041', 4, 'GV012', 50, 1, 'OPEN', 'Đại trà', 'TCNH'),
(47, 'LHP00042', 'MH0042', 4, 'GV013', 50, 0, 'OPEN', 'Đại trà', 'TCNH'),
(48, 'LHP00043', 'MH0043', 4, 'GV014', 50, 0, 'OPEN', 'Đại trà', 'TCNH'),
(49, 'LHP00044', 'MH0044', 4, 'GV015', 50, 0, 'OPEN', 'Đại trà', 'TCNH'),
(50, 'LHP00045', 'MH0045', 4, 'GV016', 50, 0, 'OPEN', 'Đại trà', 'TCNH'),
(51, 'KTPM26381021', 'MH0007', 4, 'GV003', 40, 0, 'OPEN', 'Đại trà', 'KTPM'),
(52, 'Lớp_INT101_K24_01', 'INT101', 1, 'GV001', 50, 50, 'CLOSED', 'Đại trà', 'CNTT'),
(53, 'Lớp_MAT101_K24_02', 'MAT101', 1, 'GV008', 60, 60, 'CLOSED', 'Đại trà', 'CNTT'),
(54, 'Lớp_ENG101_K24_01', 'ENG101', 1, 'GV010', 45, 45, 'CLOSED', 'Đại trà', 'QTKD'),
(55, 'Lớp_BUS101_K24_03', 'BUS101', 1, 'GV003', 50, 50, 'CLOSED', 'Đại trà', 'QTKD'),
(56, 'Lớp_INT102_K24_01', 'INT102', 2, 'GV001', 50, 50, 'CLOSED', 'Đại trà', 'CNTT'),
(57, 'Lớp_MAT102_K24_01', 'MAT102', 2, 'GV008', 60, 60, 'CLOSED', 'Đại trà', 'CNTT'),
(58, 'Lớp_MH0002_K24_01', 'MH0002', 2, 'GV003', 50, 50, 'CLOSED', 'Đại trà', 'CNTT'),
(59, 'Lớp_MH0010_K24_01', 'MH0010', 2, 'GV011', 50, 50, 'CLOSED', 'Đại trà', 'KTPM'),
(60, 'Lớp_INT201_K24_01', 'INT201', 3, 'GV002', 50, 50, 'CLOSED', 'Đại trà', 'CNTT'),
(61, 'Lớp_INT202_K24_01', 'INT202', 3, 'GV004', 50, 50, 'CLOSED', 'Chất lượng cao', 'CNTT'),
(62, 'Lớp_MH0001_K24_01', 'MH0001', 3, 'GV002', 50, 50, 'CLOSED', 'Đại trà', 'CNTT'),
(63, 'Lớp_MH0017_K24_01', 'MH0017', 3, 'GV018', 50, 50, 'CLOSED', 'Đại trà', 'KHMT'),
(71, 'TMDT26731291', 'INT301', 4, 'GV004', 40, 0, 'OPEN', 'Đại trà', 'TMDT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class_schedules`
--

CREATE TABLE `class_schedules` (
  `schedule_id` bigint(20) NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `day_of_week` int(11) DEFAULT NULL,
  `start_period` int(11) DEFAULT NULL,
  `end_period` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `group_name` varchar(20) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `class_schedules`
--

INSERT INTO `class_schedules` (`schedule_id`, `class_id`, `day_of_week`, `start_period`, `end_period`, `type`, `group_name`, `room_id`) VALUES
(64, 1, 3, 4, 6, 'THEORY', 'Lý thuyết', 2),
(65, 2, 4, 7, 9, 'THEORY', 'Lý thuyết', 3),
(66, 3, 5, 10, 12, 'THEORY', 'Lý thuyết', 4),
(67, 4, 6, 13, 15, 'THEORY', 'Lý thuyết', 1),
(68, 6, 2, 4, 6, 'THEORY', 'Lý thuyết', 3),
(69, 7, 3, 7, 9, 'THEORY', 'Lý thuyết', 4),
(70, 8, 4, 10, 12, 'THEORY', 'Lý thuyết', 1),
(71, 9, 5, 13, 15, 'THEORY', 'Lý thuyết', 2),
(72, 10, 6, 1, 3, 'THEORY', 'Lý thuyết', 3),
(73, 11, 7, 4, 6, 'THEORY', 'Lý thuyết', 4),
(74, 12, 2, 7, 9, 'THEORY', 'Lý thuyết', 1),
(75, 13, 3, 10, 12, 'THEORY', 'Lý thuyết', 2),
(76, 14, 4, 13, 15, 'THEORY', 'Lý thuyết', 3),
(77, 15, 5, 1, 3, 'THEORY', 'Lý thuyết', 4),
(78, 16, 6, 4, 6, 'THEORY', 'Lý thuyết', 1),
(79, 17, 7, 7, 9, 'THEORY', 'Lý thuyết', 2),
(80, 18, 2, 10, 12, 'THEORY', 'Lý thuyết', 3),
(81, 19, 3, 13, 15, 'THEORY', 'Lý thuyết', 4),
(82, 20, 4, 1, 3, 'THEORY', 'Lý thuyết', 1),
(83, 21, 5, 4, 6, 'THEORY', 'Lý thuyết', 2),
(84, 22, 6, 7, 9, 'THEORY', 'Lý thuyết', 3),
(85, 23, 7, 10, 12, 'THEORY', 'Lý thuyết', 4),
(86, 24, 2, 13, 15, 'THEORY', 'Lý thuyết', 1),
(87, 25, 3, 1, 3, 'THEORY', 'Lý thuyết', 2),
(88, 26, 4, 4, 6, 'THEORY', 'Lý thuyết', 3),
(89, 27, 5, 7, 9, 'THEORY', 'Lý thuyết', 4),
(90, 28, 6, 10, 12, 'THEORY', 'Lý thuyết', 1),
(91, 29, 7, 13, 15, 'THEORY', 'Lý thuyết', 2),
(92, 30, 2, 1, 3, 'THEORY', 'Lý thuyết', 3),
(93, 31, 3, 4, 6, 'THEORY', 'Lý thuyết', 4),
(94, 32, 4, 7, 9, 'THEORY', 'Lý thuyết', 1),
(95, 33, 5, 10, 12, 'THEORY', 'Lý thuyết', 2),
(96, 34, 6, 13, 15, 'THEORY', 'Lý thuyết', 3),
(97, 35, 7, 1, 3, 'THEORY', 'Lý thuyết', 4),
(98, 36, 2, 4, 6, 'THEORY', 'Lý thuyết', 1),
(99, 37, 3, 7, 9, 'THEORY', 'Lý thuyết', 2),
(100, 38, 4, 10, 12, 'THEORY', 'Lý thuyết', 3),
(101, 39, 5, 13, 15, 'THEORY', 'Lý thuyết', 4),
(102, 40, 6, 1, 3, 'THEORY', 'Lý thuyết', 1),
(103, 41, 7, 4, 6, 'THEORY', 'Lý thuyết', 2),
(104, 42, 2, 7, 9, 'THEORY', 'Lý thuyết', 3),
(105, 43, 3, 10, 12, 'THEORY', 'Lý thuyết', 4),
(106, 44, 4, 13, 15, 'THEORY', 'Lý thuyết', 1),
(107, 45, 5, 1, 3, 'THEORY', 'Lý thuyết', 2),
(108, 46, 6, 4, 6, 'THEORY', 'Lý thuyết', 3),
(109, 47, 7, 7, 9, 'THEORY', 'Lý thuyết', 4),
(110, 48, 2, 10, 12, 'THEORY', 'Lý thuyết', 1),
(111, 49, 3, 13, 15, 'THEORY', 'Lý thuyết', 2),
(112, 50, 4, 1, 3, 'THEORY', 'Lý thuyết', 3),
(127, 31, 4, 7, 9, 'PRACTICE', 'Nhóm 1', 6),
(128, 32, 5, 10, 12, 'PRACTICE', 'Nhóm 1', 7),
(129, 33, 6, 13, 15, 'PRACTICE', 'Nhóm 1', 5),
(130, 34, 7, 1, 3, 'PRACTICE', 'Nhóm 1', 6),
(131, 35, 2, 4, 6, 'PRACTICE', 'Nhóm 1', 7),
(132, 36, 3, 7, 9, 'PRACTICE', 'Nhóm 1', 5),
(133, 37, 4, 10, 12, 'PRACTICE', 'Nhóm 1', 6),
(134, 38, 5, 13, 15, 'PRACTICE', 'Nhóm 1', 7),
(135, 39, 6, 1, 3, 'PRACTICE', 'Nhóm 1', 5),
(136, 40, 7, 4, 6, 'PRACTICE', 'Nhóm 1', 6),
(137, 41, 2, 7, 9, 'PRACTICE', 'Nhóm 1', 7),
(138, 42, 3, 10, 12, 'PRACTICE', 'Nhóm 1', 5),
(139, 43, 4, 13, 15, 'PRACTICE', 'Nhóm 1', 6),
(140, 44, 5, 1, 3, 'PRACTICE', 'Nhóm 1', 7),
(141, 45, 6, 4, 6, 'PRACTICE', 'Nhóm 1', 5),
(142, 46, 7, 7, 9, 'PRACTICE', 'Nhóm 1', 6),
(143, 47, 2, 10, 12, 'PRACTICE', 'Nhóm 1', 7),
(144, 48, 3, 13, 15, 'PRACTICE', 'Nhóm 1', 5),
(145, 49, 4, 1, 3, 'PRACTICE', 'Nhóm 1', 6),
(146, 50, 5, 4, 6, 'PRACTICE', 'Nhóm 1', 7),
(158, 31, 5, 10, 12, 'PRACTICE', 'Nhóm 2', 7),
(159, 32, 6, 13, 15, 'PRACTICE', 'Nhóm 2', 5),
(160, 33, 7, 1, 3, 'PRACTICE', 'Nhóm 2', 6),
(161, 34, 2, 4, 6, 'PRACTICE', 'Nhóm 2', 7),
(162, 35, 3, 7, 9, 'PRACTICE', 'Nhóm 2', 5),
(163, 36, 4, 10, 12, 'PRACTICE', 'Nhóm 2', 6),
(164, 37, 5, 13, 15, 'PRACTICE', 'Nhóm 2', 7),
(165, 38, 6, 1, 3, 'PRACTICE', 'Nhóm 2', 5),
(166, 39, 7, 4, 6, 'PRACTICE', 'Nhóm 2', 6),
(167, 40, 2, 7, 9, 'PRACTICE', 'Nhóm 2', 7),
(168, 41, 3, 10, 12, 'PRACTICE', 'Nhóm 2', 5),
(169, 42, 4, 13, 15, 'PRACTICE', 'Nhóm 2', 6),
(170, 43, 5, 1, 3, 'PRACTICE', 'Nhóm 2', 7),
(171, 44, 6, 4, 6, 'PRACTICE', 'Nhóm 2', 5),
(172, 45, 7, 7, 9, 'PRACTICE', 'Nhóm 2', 6),
(173, 46, 2, 10, 12, 'PRACTICE', 'Nhóm 2', 7),
(174, 47, 3, 13, 15, 'PRACTICE', 'Nhóm 2', 5),
(175, 48, 4, 1, 3, 'PRACTICE', 'Nhóm 2', 6),
(176, 49, 5, 4, 6, 'PRACTICE', 'Nhóm 2', 7),
(177, 50, 6, 7, 9, 'PRACTICE', 'Nhóm 2', 5),
(189, 51, 4, 1, 3, 'THEORY', 'Lý thuyết', 2),
(190, 52, 2, 1, 3, 'THEORY', 'Lý thuyết', 1),
(191, 53, 3, 4, 6, 'THEORY', 'Lý thuyết', 2),
(192, 54, 4, 7, 9, 'THEORY', 'Lý thuyết', 3),
(193, 55, 5, 10, 12, 'THEORY', 'Lý thuyết', 4),
(194, 56, 2, 4, 6, 'THEORY', 'Lý thuyết', 1),
(195, 56, 4, 1, 3, 'PRACTICE', 'Nhóm 1', 5),
(196, 57, 3, 7, 9, 'THEORY', 'Lý thuyết', 2),
(197, 58, 6, 1, 3, 'THEORY', 'Lý thuyết', 3),
(198, 59, 7, 4, 6, 'THEORY', 'Lý thuyết', 4),
(199, 60, 2, 7, 9, 'THEORY', 'Lý thuyết', 1),
(200, 60, 4, 10, 12, 'PRACTICE', 'Nhóm 1', 6),
(201, 61, 3, 10, 12, 'THEORY', 'Lý thuyết', 2),
(202, 61, 5, 1, 3, 'PRACTICE', 'Nhóm 1', 7),
(203, 62, 6, 4, 6, 'THEORY', 'Lý thuyết', 3),
(204, 63, 7, 7, 9, 'THEORY', 'Lý thuyết', 4),
(212, 71, 2, 1, 3, 'THEORY', 'Lý thuyết', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `course_id` varchar(20) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `recommended_semester` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `credits`, `description`, `recommended_semester`) VALUES
('BUS101', 'Kinh tế học', 2, NULL, 1),
('ENG101', 'Tiếng Anh cơ bản', 3, 'Giao tiếp tiếng Anh mức độ 1', 1),
('INT101', 'Nhập môn CNTT', 3, 'Tổng quan về ngành và kỹ năng số', 1),
('INT102', 'Kỹ thuật lập trình C', 3, 'Cơ bản về tư duy lập trình', 2),
('INT201', 'Cấu trúc dữ liệu và Giải thuật', 4, 'Các thuật toán sắp xếp, tìm kiếm', 3),
('INT202', 'Lập trình hướng đối tượng Java', 4, 'OOP với ngôn ngữ Java', 3),
('INT301', 'Cơ sở dữ liệu', 3, 'SQL và thiết kế Database', 4),
('INT302', 'Lập trình Java nâng cao', 4, 'Spring Boot và Web API', 4),
('MAT101', 'Giải tích 1', 3, 'Toán học cơ bản cho kỹ thuật', 1),
('MAT102', 'Đại số tuyến tính', 3, 'Toán học ma trận và không gian', 2),
('MH0001', 'Môn học số 1', 3, 'Mô tả môn học 1', 3),
('MH0002', 'Môn học số 2', 4, 'Mô tả môn học 2', 2),
('MH0003', 'Môn học số 3', 3, 'Mô tả môn học 3', 4),
('MH0004', 'Môn học số 4', 4, 'Mô tả môn học 4', 5),
('MH0005', 'Môn học số 5', 2, 'Mô tả môn học 5', 6),
('MH0006', 'Môn học số 6', 2, 'Mô tả môn học 6', 1),
('MH0007', 'Môn học số 7', 3, 'Mô tả môn học 7', 8),
('MH0008', 'Môn học số 8', 2, 'Mô tả môn học 8', 1),
('MH0009', 'Môn học số 9', 4, 'Mô tả môn học 9', 4),
('MH0010', 'Môn học số 10', 2, 'Mô tả môn học 10', 2),
('MH0011', 'Môn học số 11', 4, 'Mô tả môn học 11', 6),
('MH0012', 'Môn học số 12', 2, 'Mô tả môn học 12', 7),
('MH0013', 'Môn học số 13', 3, 'Mô tả môn học 13', 5),
('MH0014', 'Môn học số 14', 4, 'Mô tả môn học 14', 5),
('MH0015', 'Môn học số 15', 3, 'Mô tả môn học 15', 4),
('MH0016', 'Môn học số 16', 4, 'Mô tả môn học 16', 1),
('MH0017', 'Môn học số 17', 4, 'Mô tả môn học 17', 3),
('MH0018', 'Môn học số 18', 3, 'Mô tả môn học 18', 2),
('MH0019', 'Môn học số 19', 4, 'Mô tả môn học 19', 6),
('MH0020', 'Môn học số 20', 4, 'Mô tả môn học 20', 7),
('MH0021', 'Môn học số 21', 4, 'Mô tả môn học 21', 6),
('MH0022', 'Môn học số 22', 4, 'Mô tả môn học 22', 4),
('MH0023', 'Môn học số 23', 4, 'Mô tả môn học 23', 4),
('MH0024', 'Môn học số 24', 3, 'Mô tả môn học 24', 8),
('MH0025', 'Môn học số 25', 4, 'Mô tả môn học 25', 7),
('MH0026', 'Môn học số 26', 4, 'Mô tả môn học 26', 4),
('MH0027', 'Môn học số 27', 4, 'Mô tả môn học 27', 5),
('MH0028', 'Môn học số 28', 4, 'Mô tả môn học 28', 8),
('MH0029', 'Môn học số 29', 3, 'Mô tả môn học 29', 1),
('MH0030', 'Môn học số 30', 3, 'Mô tả môn học 30', 8),
('MH0031', 'Môn học số 31', 3, 'Mô tả môn học 31', 1),
('MH0032', 'Môn học số 32', 2, 'Mô tả môn học 32', 3),
('MH0033', 'Môn học số 33', 2, 'Mô tả môn học 33', 8),
('MH0034', 'Môn học số 34', 2, 'Mô tả môn học 34', 3),
('MH0035', 'Môn học số 35', 4, 'Mô tả môn học 35', 1),
('MH0036', 'Môn học số 36', 4, 'Mô tả môn học 36', 2),
('MH0037', 'Môn học số 37', 2, 'Mô tả môn học 37', 7),
('MH0038', 'Môn học số 38', 4, 'Mô tả môn học 38', 4),
('MH0039', 'Môn học số 39', 2, 'Mô tả môn học 39', 3),
('MH0040', 'Môn học số 40', 2, 'Mô tả môn học 40', 5),
('MH0041', 'Môn học số 41', 2, 'Mô tả môn học 41', 1),
('MH0042', 'Môn học số 42', 3, 'Mô tả môn học 42', 6),
('MH0043', 'Môn học số 43', 3, 'Mô tả môn học 43', 6),
('MH0044', 'Môn học số 44', 3, 'Mô tả môn học 44', 4),
('MH0045', 'Môn học số 45', 4, 'Mô tả môn học 45', 8),
('MH0046', 'Môn học số 46', 4, 'Mô tả môn học 46', 8),
('MH0047', 'Môn học số 47', 4, 'Mô tả môn học 47', 7),
('MH0048', 'Môn học số 48', 2, 'Mô tả môn học 48', 2),
('MH0049', 'Môn học số 49', 4, 'Mô tả môn học 49', 7),
('MH0050', 'Môn học số 50', 4, 'Mô tả môn học 50', 3),
('MH0051', 'Môn học số 51', 4, 'Mô tả môn học 51', 1),
('MH0052', 'Môn học số 52', 4, 'Mô tả môn học 52', 2),
('MH0053', 'Môn học số 53', 3, 'Mô tả môn học 53', 7),
('MH0054', 'Môn học số 54', 3, 'Mô tả môn học 54', 4),
('MH0055', 'Môn học số 55', 4, 'Mô tả môn học 55', 5),
('MH0056', 'Môn học số 56', 4, 'Mô tả môn học 56', 5),
('MH0057', 'Môn học số 57', 3, 'Mô tả môn học 57', 4),
('MH0058', 'Môn học số 58', 4, 'Mô tả môn học 58', 4),
('MH0059', 'Môn học số 59', 2, 'Mô tả môn học 59', 8),
('MH0060', 'Môn học số 60', 2, 'Mô tả môn học 60', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` bigint(20) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `selected_practice_id` bigint(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `student_id`, `class_id`, `selected_practice_id`, `status`, `created_at`) VALUES
(6, 'SV0001', 46, 142, 'ENROLLED', '2026-04-18 19:17:23'),
(8, 'SV0001', 35, 131, 'ENROLLED', '2026-04-18 20:38:19'),
(14, 'SV0001', 3, NULL, 'ENROLLED', '2026-04-27 08:09:42'),
(15, 'SV0001', 12, NULL, 'ENROLLED', '2026-04-28 02:05:13'),
(16, 'SV0001', 24, NULL, 'ENROLLED', '2026-04-28 02:05:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `instructors`
--

CREATE TABLE `instructors` (
  `instructor_id` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `instructors`
--

INSERT INTO `instructors` (`instructor_id`, `department`, `full_name`, `email`, `phone`, `user_name`) VALUES
('GV001', 'CNTT', 'Nguyễn Văn A', 'a@gmail.com', NULL, 'gv001'),
('GV002', 'CNTT', 'Trần Thị B', 'b@gmail.com', NULL, 'gv002'),
('GV003', 'QTKD', 'Lê Hoàng C', 'clh@university.edu.vn', NULL, 'gv003'),
('GV004', 'CNTT', 'Giảng viên 4', 'gv004@university.edu.vn', NULL, 'gv004'),
('GV005', 'CNTT', 'Giảng viên 5', 'gv005@university.edu.vn', NULL, 'gv005'),
('GV006', 'CNTT', 'Giảng viên 6', 'gv006@university.edu.vn', NULL, 'gv006'),
('GV007', 'CNTT', 'Giảng viên 7', 'gv007@university.edu.vn', NULL, 'gv007'),
('GV008', 'CNTT', 'Giảng viên 8', 'gv008@university.edu.vn', NULL, 'gv008'),
('GV009', 'CNTT', 'Giảng viên 9', 'gv009@university.edu.vn', NULL, 'gv009'),
('GV010', 'CNTT', 'Giảng viên 10', 'gv010@university.edu.vn', NULL, 'gv010'),
('GV011', 'CNTT', 'Giảng viên 11', 'gv011@university.edu.vn', NULL, 'gv011'),
('GV012', 'CNTT', 'Giảng viên 12', 'gv012@university.edu.vn', NULL, 'gv012'),
('GV013', 'CNTT', 'Giảng viên 13', 'gv013@university.edu.vn', NULL, 'gv013'),
('GV014', 'KHMT', 'Giảng viên 14', 'gv014@university.edu.vn', NULL, 'gv014'),
('GV015', 'KHMT', 'Giảng viên 15', 'gv015@university.edu.vn', NULL, 'gv015'),
('GV016', 'KHMT', 'Giảng viên 16', 'gv016@university.edu.vn', NULL, 'gv016'),
('GV017', 'KHMT', 'Giảng viên 17', 'gv017@university.edu.vn', NULL, 'gv017'),
('GV018', 'KHMT', 'Giảng viên 18', 'gv018@university.edu.vn', NULL, 'gv018'),
('GV019', 'KHMT', 'Giảng viên 19', 'gv019@university.edu.vn', NULL, 'gv019'),
('GV020', 'KHMT', 'Giảng viên 20', 'gv020@university.edu.vn', NULL, 'gv020'),
('GV021', 'KHMT', 'Giảng viên 21', 'gv021@university.edu.vn', NULL, 'gv021'),
('GV022', 'KHMT', 'Giảng viên 22', 'gv022@university.edu.vn', NULL, 'gv022'),
('GV023', 'KHMT', 'Giảng viên 23', 'gv023@university.edu.vn', NULL, 'gv023'),
('GV024', 'KTPM', 'Giảng viên 24', 'gv024@university.edu.vn', NULL, 'gv024'),
('GV025', 'KTPM', 'Giảng viên 25', 'gv025@university.edu.vn', NULL, 'gv025'),
('GV026', 'KTPM', 'Giảng viên 26', 'gv026@university.edu.vn', NULL, 'gv026'),
('GV027', 'KTPM', 'Giảng viên 27', 'gv027@university.edu.vn', NULL, 'gv027'),
('GV028', 'KTPM', 'Giảng viên 28', 'gv028@university.edu.vn', NULL, 'gv028'),
('GV029', 'KTPM', 'Giảng viên 29', 'gv029@university.edu.vn', NULL, 'gv029'),
('GV030', 'KTPM', 'Giảng viên 30', 'gv030@university.edu.vn', NULL, 'gv030');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `majors`
--

CREATE TABLE `majors` (
  `major_id` varchar(10) NOT NULL,
  `major_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `majors`
--

INSERT INTO `majors` (`major_id`, `major_name`) VALUES
('CNTT', 'Công nghệ thông tin'),
('KETO', 'Kế toán'),
('KHMT', 'Khoa học máy tính'),
('KTPM', 'Kỹ thuật phần mềm'),
('LOGI', 'Logistics'),
('MKT', 'Marketing'),
('NNA', 'Ngôn ngữ Anh'),
('QTKD', 'Quản trị kinh doanh'),
('TCNH', 'Tài chính ngân hàng'),
('TMDT', 'Thương mại điện tử');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `major_courses`
--

CREATE TABLE `major_courses` (
  `id` bigint(20) NOT NULL,
  `major_id` varchar(10) DEFAULT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `recommended_semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `major_courses`
--

INSERT INTO `major_courses` (`id`, `major_id`, `course_id`, `recommended_semester`) VALUES
(1, 'CNTT', 'INT101', 1),
(2, 'CNTT', 'INT102', 2),
(3, 'CNTT', 'INT201', 3),
(4, 'CNTT', 'INT202', 3),
(5, 'CNTT', 'INT301', 4),
(6, 'CNTT', 'INT302', 4),
(7, 'CNTT', 'MAT101', 1),
(8, 'CNTT', 'MAT102', 2),
(9, 'CNTT', 'MH0001', 3),
(10, 'CNTT', 'MH0002', 4),
(11, 'CNTT', 'MH0003', 5),
(12, 'CNTT', 'MH0004', 6),
(13, 'CNTT', 'MH0005', 7),
(14, 'CNTT', 'MH0006', 8),
(15, 'KTPM', 'INT101', 1),
(16, 'KTPM', 'INT102', 2),
(17, 'KTPM', 'INT202', 3),
(18, 'KTPM', 'INT302', 4),
(19, 'KTPM', 'MAT101', 1),
(20, 'KTPM', 'MH0007', 3),
(21, 'KTPM', 'MH0008', 4),
(22, 'KTPM', 'MH0009', 5),
(23, 'KTPM', 'MH0010', 6),
(24, 'KTPM', 'MH0011', 7),
(25, 'KTPM', 'MH0012', 8),
(26, 'KHMT', 'INT101', 1),
(27, 'KHMT', 'INT202', 3),
(28, 'KHMT', 'INT301', 4),
(29, 'KHMT', 'MAT101', 1),
(30, 'KHMT', 'MH0013', 3),
(31, 'KHMT', 'MH0014', 4),
(32, 'KHMT', 'MH0015', 5),
(33, 'KHMT', 'MH0016', 6),
(34, 'KHMT', 'MH0017', 7),
(35, 'KHMT', 'MH0018', 8),
(36, 'QTKD', 'BUS101', 1),
(37, 'QTKD', 'INT101', 1),
(38, 'QTKD', 'ENG101', 1),
(39, 'QTKD', 'MH0019', 2),
(40, 'QTKD', 'MH0020', 3),
(41, 'QTKD', 'MH0021', 4),
(42, 'QTKD', 'MH0022', 5),
(43, 'QTKD', 'MH0023', 6),
(44, 'QTKD', 'MH0024', 7),
(45, 'QTKD', 'MH0025', 8),
(46, 'KETO', 'BUS101', 1),
(47, 'KETO', 'INT101', 1),
(48, 'KETO', 'MH0026', 2),
(49, 'KETO', 'MH0027', 3),
(50, 'KETO', 'MH0028', 4),
(51, 'KETO', 'MH0029', 5),
(52, 'KETO', 'MH0030', 6),
(53, 'KETO', 'MH0031', 7),
(54, 'KETO', 'MH0032', 8),
(55, 'LOGI', 'BUS101', 1),
(56, 'LOGI', 'INT102', 2),
(57, 'LOGI', 'MH0033', 3),
(58, 'LOGI', 'MH0034', 4),
(59, 'LOGI', 'MH0035', 5),
(60, 'LOGI', 'MH0036', 6),
(61, 'TMDT', 'INT101', 1),
(62, 'TMDT', 'INT102', 2),
(63, 'TMDT', 'INT202', 3),
(64, 'TMDT', 'INT301', 4),
(65, 'TMDT', 'MH0037', 5),
(66, 'TMDT', 'MH0038', 6),
(67, 'TMDT', 'MH0039', 7),
(68, 'TMDT', 'MH0040', 8),
(69, 'TCNH', 'BUS101', 1),
(70, 'TCNH', 'INT101', 1),
(71, 'TCNH', 'MH0041', 2),
(72, 'TCNH', 'MH0042', 3),
(73, 'TCNH', 'MH0043', 4),
(74, 'TCNH', 'MH0044', 5),
(75, 'TCNH', 'MH0045', 6),
(76, 'TCNH', 'MH0046', 7),
(77, 'TCNH', 'MH0047', 8),
(78, 'MKT', 'BUS101', 1),
(79, 'MKT', 'INT102', 2),
(80, 'MKT', 'MH0048', 3),
(81, 'MKT', 'MH0049', 4),
(82, 'MKT', 'MH0050', 5),
(83, 'MKT', 'MH0051', 6),
(84, 'MKT', 'MH0052', 7),
(85, 'MKT', 'MH0053', 8),
(86, 'NNA', 'ENG101', 1),
(87, 'NNA', 'MH0054', 2),
(88, 'NNA', 'MH0055', 3),
(89, 'NNA', 'MH0056', 4),
(90, 'NNA', 'MH0057', 5),
(91, 'NNA', 'MH0058', 6),
(92, 'NNA', 'MH0059', 7),
(93, 'NNA', 'MH0060', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prerequisites`
--

CREATE TABLE `prerequisites` (
  `course_id` varchar(20) NOT NULL,
  `pre_course_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `prerequisites`
--

INSERT INTO `prerequisites` (`course_id`, `pre_course_id`) VALUES
('INT102', 'INT101'),
('INT201', 'INT102'),
('INT202', 'INT102'),
('INT301', 'INT201'),
('INT302', 'INT202'),
('MAT102', 'MAT101'),
('MH0002', 'MH0001'),
('MH0003', 'MH0002'),
('MH0004', 'MH0003'),
('MH0005', 'MH0004'),
('MH0006', 'MH0005'),
('MH0008', 'MH0007'),
('MH0009', 'MH0008'),
('MH0010', 'MH0009'),
('MH0012', 'MH0011'),
('MH0013', 'MH0012'),
('MH0015', 'MH0014'),
('MH0016', 'MH0015'),
('MH0017', 'MH0016'),
('MH0020', 'MH0019'),
('MH0021', 'MH0020'),
('MH0022', 'MH0021'),
('MH0024', 'MH0023'),
('MH0025', 'MH0024'),
('MH0027', 'MH0026'),
('MH0028', 'MH0027'),
('MH0029', 'MH0028'),
('MH0031', 'MH0030'),
('MH0032', 'MH0031'),
('MH0034', 'MH0033'),
('MH0035', 'MH0034'),
('MH0037', 'MH0036'),
('MH0038', 'MH0037'),
('MH0039', 'MH0038'),
('MH0042', 'MH0041'),
('MH0043', 'MH0042'),
('MH0044', 'MH0043'),
('MH0046', 'MH0045'),
('MH0047', 'MH0046'),
('MH0049', 'MH0048'),
('MH0050', 'MH0049'),
('MH0052', 'MH0051'),
('MH0053', 'MH0052'),
('MH0055', 'MH0054'),
('MH0056', 'MH0055'),
('MH0057', 'MH0056'),
('MH0059', 'MH0058'),
('MH0060', 'MH0059');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'ROLE_ADMIN'),
(3, 'ROLE_LECTURER'),
(2, 'ROLE_STUDENT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `room_id` bigint(20) NOT NULL,
  `room_name` varchar(50) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_name`, `capacity`, `type`) VALUES
(1, 'Phòng A101', 50, 'Theory'),
(2, 'Phòng A102', 40, 'Theory'),
(3, 'Phòng A201', 60, 'Theory'),
(4, 'Phòng A202', 60, 'Theory'),
(5, 'Phòng Lab B301', 40, 'Lab'),
(6, 'Phòng Lab B302', 40, 'Lab'),
(7, 'Phòng Lab B401', 45, 'Lab'),
(8, 'Hội trường C1', 150, 'Auditorium'),
(9, 'Hội trường C2', 200, 'Auditorium'),
(10, 'Phòng A101', 50, 'Theory'),
(11, 'Phòng A102', 50, 'Theory'),
(12, 'Phòng A103', 50, 'Theory'),
(13, 'Phòng A104', 50, 'Theory'),
(14, 'Phòng A105', 50, 'Theory'),
(15, 'Phòng A106', 50, 'Theory'),
(16, 'Phòng A107', 50, 'Theory'),
(17, 'Phòng A108', 50, 'Theory'),
(18, 'Phòng A109', 50, 'Theory'),
(25, 'Phòng Lab KHMT B506', 40, 'Lab'),
(26, 'Phòng Lab AI - KHMT B601', 35, 'Specialized'),
(27, 'Phòng Lab KTPM B403', 40, 'Lab'),
(28, 'Phòng Thực hành DevOps B302', 35, 'Specialized'),
(29, 'Phòng Mô phỏng Doanh nghiệp D201', 45, 'Specialized'),
(30, 'Phòng Thí nghiệm Tài chính C302', 40, 'Specialized'),
(31, 'Phòng Mô phỏng Ngân hàng V902', 40, 'Specialized'),
(32, 'Phòng Thực hành Kế toán', 40, 'Specialized'),
(33, 'Phòng Lab Marketing Digital', 35, 'Lab'),
(34, 'Phòng Studio Marketing', 30, 'Specialized'),
(35, 'Phòng Lab Ngoại ngữ 1', 40, 'Lab'),
(36, 'Phòng Lab Ngoại ngữ 2', 40, 'Lab'),
(37, 'Phòng Lab TMĐT', 40, 'Lab'),
(38, 'Phòng Thực hành E-commerce', 35, 'Specialized'),
(39, 'Phòng Mô phỏng Logistics', 45, 'Specialized'),
(40, 'Phòng Lab Chuỗi cung ứng', 40, 'Lab');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `semesters`
--

CREATE TABLE `semesters` (
  `semester_id` int(11) NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `is_registration_open` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `semesters`
--

INSERT INTO `semesters` (`semester_id`, `is_active`, `term`, `year`, `is_registration_open`) VALUES
(1, 0, 'HK1', 2025, 0),
(2, 0, 'HK2', 2025, 0),
(3, 0, 'HK3', 2025, 0),
(4, 1, 'HK1', 2026, 1),
(5, 0, 'HK2', 2026, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `student_id` varchar(20) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `major_id` varchar(10) DEFAULT NULL,
  `current_semester` int(11) DEFAULT NULL,
  `enrollment_year` int(11) DEFAULT NULL,
  `training_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`student_id`, `user_name`, `full_name`, `major_id`, `current_semester`, `enrollment_year`, `training_type`) VALUES
('SV0001', 'sv0001', 'Sinh viên 1', 'CNTT', 1, 2025, 'Đại trà'),
('SV0002', 'sv0002', 'Sinh viên 2', 'CNTT', 1, 2025, 'Đại trà'),
('SV0003', 'sv0003', 'Sinh viên 3', 'CNTT', 1, 2025, 'Đại trà'),
('SV0004', 'sv0004', 'Sinh viên 4', 'CNTT', 1, 2025, 'Đại trà'),
('SV0005', 'sv0005', 'Sinh viên 5', 'CNTT', 1, 2025, 'Đại trà'),
('SV0006', 'sv0006', 'Sinh viên 6', 'CNTT', 1, 2025, 'Đại trà'),
('SV0007', 'sv0007', 'Sinh viên 7', 'CNTT', 1, 2025, 'Đại trà'),
('SV0008', 'sv0008', 'Sinh viên 8', 'CNTT', 1, 2025, 'Đại trà'),
('SV0009', 'sv0009', 'Sinh viên 9', 'CNTT', 1, 2025, 'Đại trà'),
('SV0010', 'sv0010', 'Sinh viên 10', 'CNTT', 1, 2025, 'Đại trà'),
('SV0011', 'sv0011', 'Sinh viên 11', 'CNTT', 1, 2025, 'Đại trà'),
('SV0012', 'sv0012', 'Sinh viên 12', 'CNTT', 1, 2025, 'Đại trà'),
('SV0013', 'sv0013', 'Sinh viên 13', 'CNTT', 1, 2025, 'Đại trà'),
('SV0014', 'sv0014', 'Sinh viên 14', 'CNTT', 1, 2025, 'Đại trà'),
('SV0015', 'sv0015', 'Sinh viên 15', 'CNTT', 1, 2025, 'Đại trà'),
('SV0016', 'sv0016', 'Sinh viên 16', 'CNTT', 1, 2025, 'Đại trà'),
('SV0017', 'sv0017', 'Sinh viên 17', 'CNTT', 1, 2025, 'Đại trà'),
('SV0018', 'sv0018', 'Sinh viên 18', 'CNTT', 1, 2025, 'Chất lượng cao'),
('SV0019', 'sv0019', 'Sinh viên 19', 'CNTT', 1, 2025, 'Đại trà'),
('SV0020', 'sv0020', 'Sinh viên 20', 'CNTT', 1, 2025, 'Đại trà'),
('SV0021', 'sv0021', 'Sinh viên 21', 'CNTT', 1, 2025, 'Đại trà'),
('SV0022', 'sv0022', 'Sinh viên 22', 'CNTT', 1, 2025, 'Đại trà'),
('SV0023', 'sv0023', 'Sinh viên 23', 'CNTT', 1, 2025, 'Chất lượng cao'),
('SV0024', 'sv0024', 'Sinh viên 24', 'CNTT', 1, 2025, 'Đại trà'),
('SV0025', 'sv0025', 'Sinh viên 25', 'CNTT', 1, 2025, 'Đại trà'),
('SV0026', 'sv0026', 'Sinh viên 26', 'CNTT', 1, 2025, 'Chất lượng cao'),
('SV0027', 'sv0027', 'Sinh viên 27', 'CNTT', 1, 2025, 'Đại trà'),
('SV0028', 'sv0028', 'Sinh viên 28', 'CNTT', 1, 2025, 'Đại trà'),
('SV0029', 'sv0029', 'Sinh viên 29', 'CNTT', 1, 2025, 'Đại trà'),
('SV0030', 'sv0030', 'Sinh viên 30', 'CNTT', 1, 2025, 'Đại trà'),
('SV0031', 'sv0031', 'Sinh viên 31', 'CNTT', 1, 2025, 'Đại trà'),
('SV0032', 'sv0032', 'Sinh viên 32', 'CNTT', 1, 2025, 'Đại trà'),
('SV0033', 'sv0033', 'Sinh viên 33', 'CNTT', 1, 2025, 'Chất lượng cao'),
('SV0034', 'sv0034', 'Sinh viên 34', 'CNTT', 1, 2025, 'Đại trà'),
('SV0035', 'sv0035', 'Sinh viên 35', 'CNTT', 1, 2025, 'Chất lượng cao'),
('SV0036', 'sv0036', 'Sinh viên 36', 'CNTT', 1, 2025, 'Đại trà'),
('SV0037', 'sv0037', 'Sinh viên 37', 'CNTT', 1, 2025, 'Đại trà'),
('SV0038', 'sv0038', 'Sinh viên 38', 'CNTT', 1, 2025, 'Đại trà'),
('SV0039', 'sv0039', 'Sinh viên 39', 'CNTT', 1, 2025, 'Đại trà'),
('SV0040', 'sv0040', 'Sinh viên 40', 'CNTT', 1, 2025, 'Đại trà'),
('SV0041', 'sv0041', 'Sinh viên 41', 'CNTT', 1, 2025, 'Đại trà'),
('SV0042', 'sv0042', 'Sinh viên 42', 'CNTT', 1, 2025, 'Đại trà'),
('SV0043', 'sv0043', 'Sinh viên 43', 'CNTT', 1, 2025, 'Đại trà'),
('SV0044', 'sv0044', 'Sinh viên 44', 'CNTT', 1, 2025, 'Chất lượng cao'),
('SV0045', 'sv0045', 'Sinh viên 45', 'CNTT', 1, 2025, 'Đại trà'),
('SV0046', 'sv0046', 'Sinh viên 46', 'CNTT', 1, 2025, 'Đại trà'),
('SV0047', 'sv0047', 'Sinh viên 47', 'CNTT', 1, 2025, 'Đại trà'),
('SV0048', 'sv0048', 'Sinh viên 48', 'CNTT', 1, 2025, 'Chất lượng cao'),
('SV0049', 'sv0049', 'Sinh viên 49', 'CNTT', 1, 2025, 'Chất lượng cao'),
('SV0050', 'sv0050', 'Sinh viên 50', 'CNTT', 1, 2025, 'Đại trà'),
('SV0051', 'sv0051', 'Sinh viên 51', 'KETO', 1, 2025, 'Đại trà'),
('SV0052', 'sv0052', 'Sinh viên 52', 'KETO', 1, 2025, 'Đại trà'),
('SV0053', 'sv0053', 'Sinh viên 53', 'KETO', 1, 2025, 'Đại trà'),
('SV0054', 'sv0054', 'Sinh viên 54', 'KETO', 1, 2025, 'Chất lượng cao'),
('SV0055', 'sv0055', 'Sinh viên 55', 'KETO', 1, 2025, 'Đại trà'),
('SV0056', 'sv0056', 'Sinh viên 56', 'KETO', 1, 2025, 'Chất lượng cao'),
('SV0057', 'sv0057', 'Sinh viên 57', 'KHMT', 1, 2025, 'Đại trà'),
('SV0058', 'sv0058', 'Sinh viên 58', 'KHMT', 1, 2025, 'Đại trà'),
('SV0059', 'sv0059', 'Sinh viên 59', 'KHMT', 1, 2025, 'Đại trà'),
('SV0060', 'sv0060', 'Sinh viên 60', 'KHMT', 1, 2025, 'Đại trà'),
('SV0061', 'sv0061', 'Sinh viên 61', 'KHMT', 1, 2025, 'Đại trà'),
('SV0062', 'sv0062', 'Sinh viên 62', 'KHMT', 1, 2025, 'Đại trà'),
('SV0063', 'sv0063', 'Sinh viên 63', 'KTPM', 1, 2025, 'Đại trà'),
('SV0064', 'sv0064', 'Sinh viên 64', 'KTPM', 1, 2025, 'Đại trà'),
('SV0065', 'sv0065', 'Sinh viên 65', 'KTPM', 1, 2025, 'Chất lượng cao'),
('SV0066', 'sv0066', 'Sinh viên 66', 'KTPM', 1, 2025, 'Đại trà'),
('SV0067', 'sv0067', 'Sinh viên 67', 'KTPM', 1, 2025, 'Đại trà'),
('SV0068', 'sv0068', 'Sinh viên 68', 'KTPM', 1, 2025, 'Đại trà'),
('SV0069', 'sv0069', 'Sinh viên 69', 'LOGI', 1, 2025, 'Đại trà'),
('SV0070', 'sv0070', 'Sinh viên 70', 'LOGI', 1, 2025, 'Chất lượng cao'),
('SV0071', 'sv0071', 'Sinh viên 71', 'LOGI', 1, 2025, 'Đại trà'),
('SV0072', 'sv0072', 'Sinh viên 72', 'LOGI', 1, 2025, 'Đại trà'),
('SV0073', 'sv0073', 'Sinh viên 73', 'LOGI', 1, 2025, 'Đại trà'),
('SV0074', 'sv0074', 'Sinh viên 74', 'LOGI', 1, 2025, 'Đại trà'),
('SV0075', 'sv0075', 'Sinh viên 75', 'MKT', 1, 2025, 'Chất lượng cao'),
('SV0076', 'sv0076', 'Sinh viên 76', 'MKT', 1, 2025, 'Đại trà'),
('SV0077', 'sv0077', 'Sinh viên 77', 'MKT', 1, 2025, 'Đại trà'),
('SV0078', 'sv0078', 'Sinh viên 78', 'MKT', 1, 2025, 'Chất lượng cao'),
('SV0079', 'sv0079', 'Sinh viên 79', 'MKT', 1, 2025, 'Đại trà'),
('SV0080', 'sv0080', 'Sinh viên 80', 'MKT', 1, 2025, 'Đại trà'),
('SV0081', 'sv0081', 'Sinh viên 81', 'NNA', 1, 2025, 'Đại trà'),
('SV0082', 'sv0082', 'Sinh viên 82', 'NNA', 1, 2025, 'Đại trà'),
('SV0083', 'sv0083', 'Sinh viên 83', 'NNA', 1, 2025, 'Chất lượng cao'),
('SV0084', 'sv0084', 'Sinh viên 84', 'NNA', 1, 2025, 'Đại trà'),
('SV0085', 'sv0085', 'Sinh viên 85', 'NNA', 1, 2025, 'Đại trà'),
('SV0086', 'sv0086', 'Sinh viên 86', 'QTKD', 1, 2025, 'Đại trà'),
('SV0087', 'sv0087', 'Sinh viên 87', 'QTKD', 1, 2025, 'Đại trà'),
('SV0088', 'sv0088', 'Sinh viên 88', 'QTKD', 1, 2025, 'Đại trà'),
('SV0089', 'sv0089', 'Sinh viên 89', 'QTKD', 1, 2025, 'Đại trà'),
('SV0090', 'sv0090', 'Sinh viên 90', 'QTKD', 1, 2025, 'Đại trà'),
('SV0091', 'sv0091', 'Sinh viên 91', 'TCNH', 1, 2025, 'Đại trà'),
('SV0092', 'sv0092', 'Sinh viên 92', 'TCNH', 1, 2025, 'Đại trà'),
('SV0093', 'sv0093', 'Sinh viên 93', 'TCNH', 1, 2025, 'Đại trà'),
('SV0094', 'sv0094', 'Sinh viên 94', 'TCNH', 1, 2025, 'Chất lượng cao'),
('SV0095', 'sv0095', 'Sinh viên 95', 'TCNH', 1, 2025, 'Đại trà'),
('SV0096', 'sv0096', 'Sinh viên 96', 'TMDT', 1, 2025, 'Đại trà'),
('SV0097', 'sv0097', 'Sinh viên 97', 'TMDT', 1, 2025, 'Đại trà'),
('SV0098', 'sv0098', 'Sinh viên 98', 'TMDT', 1, 2025, 'Đại trà'),
('SV0099', 'sv0099', 'Sinh viên 99', 'TMDT', 1, 2025, 'Đại trà'),
('SV0100', 'sv0100', 'Sinh viên 100', 'TMDT', 1, 2025, 'Đại trà');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv001', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv002', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv003', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv004', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv005', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv006', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv007', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv008', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv009', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv010', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv011', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv012', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv013', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv014', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv015', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv016', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv017', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv018', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv019', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv020', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv021', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv022', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv023', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv024', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv025', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv026', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv027', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv028', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv029', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('gv030', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0001', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0002', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0003', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0004', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0005', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0006', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0007', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0008', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0009', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0010', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0011', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0012', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0013', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0014', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0015', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0016', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0017', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0018', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0019', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0020', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0021', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0022', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0023', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0024', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0025', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0026', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0027', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0028', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0029', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0030', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0031', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0032', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0033', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0034', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0035', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0036', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0037', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0038', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0039', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0040', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0041', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0042', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0043', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0044', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0045', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0046', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0047', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0048', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0049', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0050', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0051', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0052', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0053', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0054', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0055', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0056', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0057', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0058', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0059', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0060', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0061', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0062', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0063', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0064', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0065', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0066', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0067', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0068', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0069', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0070', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0071', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0072', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0073', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0074', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0075', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0076', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0077', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0078', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0079', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0080', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0081', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0082', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0083', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0084', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0085', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0086', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0087', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0088', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0089', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0090', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0091', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0092', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0093', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0094', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0095', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0096', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0097', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0098', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0099', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny'),
('sv0100', '$2a$12$MkM/etjPUEQpt796YfkKqOb1HSFG2NbxpG9buTqoymuhklR/vfmny');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_name` varchar(50) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_name`, `role_id`) VALUES
('admin', 1),
('gv001', 3),
('gv002', 3),
('gv003', 3),
('gv004', 3),
('gv005', 3),
('gv006', 3),
('gv007', 3),
('gv008', 3),
('gv009', 3),
('gv010', 3),
('gv011', 3),
('gv012', 3),
('gv013', 3),
('gv014', 3),
('gv015', 3),
('gv016', 3),
('gv017', 3),
('gv018', 3),
('gv019', 3),
('gv020', 3),
('gv021', 3),
('gv022', 3),
('gv023', 3),
('gv024', 3),
('gv025', 3),
('gv026', 3),
('gv027', 3),
('gv028', 3),
('gv029', 3),
('gv030', 3),
('sv0001', 2),
('sv0002', 2),
('sv0003', 2),
('sv0004', 2),
('sv0005', 2),
('sv0006', 2),
('sv0007', 2),
('sv0008', 2),
('sv0009', 2),
('sv0010', 2),
('sv0011', 2),
('sv0012', 2),
('sv0013', 2),
('sv0014', 2),
('sv0015', 2),
('sv0016', 2),
('sv0017', 2),
('sv0018', 2),
('sv0019', 2),
('sv0020', 2),
('sv0021', 2),
('sv0022', 2),
('sv0023', 2),
('sv0024', 2),
('sv0025', 2),
('sv0026', 2),
('sv0027', 2),
('sv0028', 2),
('sv0029', 2),
('sv0030', 2),
('sv0031', 2),
('sv0032', 2),
('sv0033', 2),
('sv0034', 2),
('sv0035', 2),
('sv0036', 2),
('sv0037', 2),
('sv0038', 2),
('sv0039', 2),
('sv0040', 2),
('sv0041', 2),
('sv0042', 2),
('sv0043', 2),
('sv0044', 2),
('sv0045', 2),
('sv0046', 2),
('sv0047', 2),
('sv0048', 2),
('sv0049', 2),
('sv0050', 2),
('sv0051', 2),
('sv0052', 2),
('sv0053', 2),
('sv0054', 2),
('sv0055', 2),
('sv0056', 2),
('sv0057', 2),
('sv0058', 2),
('sv0059', 2),
('sv0060', 2),
('sv0061', 2),
('sv0062', 2),
('sv0063', 2),
('sv0064', 2),
('sv0065', 2),
('sv0066', 2),
('sv0067', 2),
('sv0068', 2),
('sv0069', 2),
('sv0070', 2),
('sv0071', 2),
('sv0072', 2),
('sv0073', 2),
('sv0074', 2),
('sv0075', 2),
('sv0076', 2),
('sv0077', 2),
('sv0078', 2),
('sv0079', 2),
('sv0080', 2),
('sv0081', 2),
('sv0082', 2),
('sv0083', 2),
('sv0084', 2),
('sv0085', 2),
('sv0086', 2),
('sv0087', 2),
('sv0088', 2),
('sv0089', 2),
('sv0090', 2),
('sv0091', 2),
('sv0092', 2),
('sv0093', 2),
('sv0094', 2),
('sv0095', 2),
('sv0096', 2),
('sv0097', 2),
('sv0098', 2),
('sv0099', 2),
('sv0100', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `academic_results`
--
ALTER TABLE `academic_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `enrollment_id` (`enrollment_id`);

--
-- Chỉ mục cho bảng `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `instructor_id` (`instructor_id`),
  ADD KEY `fk_classes_majors` (`major_id`);

--
-- Chỉ mục cho bảng `class_schedules`
--
ALTER TABLE `class_schedules`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Chỉ mục cho bảng `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`class_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `selected_practice_id` (`selected_practice_id`);

--
-- Chỉ mục cho bảng `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`instructor_id`),
  ADD KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`major_id`);

--
-- Chỉ mục cho bảng `major_courses`
--
ALTER TABLE `major_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `major_id` (`major_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Chỉ mục cho bảng `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD PRIMARY KEY (`course_id`,`pre_course_id`),
  ADD KEY `pre_course_id` (`pre_course_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Chỉ mục cho bảng `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`semester_id`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `major_id` (`major_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_name`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `academic_results`
--
ALTER TABLE `academic_results`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT cho bảng `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `class_schedules`
--
ALTER TABLE `class_schedules`
  MODIFY `schedule_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT cho bảng `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `major_courses`
--
ALTER TABLE `major_courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `semesters`
--
ALTER TABLE `semesters`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `academic_results`
--
ALTER TABLE `academic_results`
  ADD CONSTRAINT `academic_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `academic_results_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `academic_results_ibfk_3` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollments` (`enrollment_id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `classes_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semester_id`),
  ADD CONSTRAINT `classes_ibfk_3` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`instructor_id`),
  ADD CONSTRAINT `fk_classes_majors` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `class_schedules`
--
ALTER TABLE `class_schedules`
  ADD CONSTRAINT `class_schedules_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  ADD CONSTRAINT `class_schedules_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);

--
-- Các ràng buộc cho bảng `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  ADD CONSTRAINT `enrollments_ibfk_3` FOREIGN KEY (`selected_practice_id`) REFERENCES `class_schedules` (`schedule_id`);

--
-- Các ràng buộc cho bảng `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `users` (`username`);

--
-- Các ràng buộc cho bảng `major_courses`
--
ALTER TABLE `major_courses`
  ADD CONSTRAINT `major_courses_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`),
  ADD CONSTRAINT `major_courses_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Các ràng buộc cho bảng `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD CONSTRAINT `prerequisites_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prerequisites_ibfk_2` FOREIGN KEY (`pre_course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`user_name`) REFERENCES `users` (`username`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
