-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 29, 2020 at 03:09 AM
-- Server version: 10.3.23-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `madnxfzb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gstin` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind_attn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `gstin`, `kind_attn`, `address`, `city`, `pincode`, `state`, `country`, `created_at`, `updated_at`) VALUES
(2, 'M/S.SONI POLYMERS PVT.LTD.', 'import@soniofficemate.com', '+91-712-2236463', '27AAICS4013J1ZC', 'MR.PRASHANT/SHILPI', '42,\"UTKARSH VISHAKHA\" BAJAJ NAGAR ,', 'NAGPUR', 440010, 'MAHARASHTRA', 'INDIA', '2020-05-21 15:58:35', '2020-05-21 15:58:35'),
(3, 'ICICI BANK', 'pankaj.lanjewar@icicibank.com', '+91-712-6627396', NULL, 'MR.PANKAJ LANJEWAR', 'SHRI RAM TOWER , SADAR', 'NAGPUR', 440001, 'MAHARASHTRA', 'INDIA', '2020-05-23 11:52:00', '2020-05-23 11:53:25'),
(4, 'BANK OF INDIA', 'nagpur.nagpur1@bankofindia.co.in', '+91-0712-2546981', NULL, 'POOJA PANJWANI', 'KINGSWAY ROAD, OPP. KASTURCHAND PARK , MOHAN NAGAR', 'NAGPUR', 440001, 'MAHARASHTRA', 'INDIA', '2020-05-23 11:58:00', '2020-05-23 14:07:23'),
(5, 'MPM PVT LTD', 'kushal@mpmindia.com', '+91 9860025681', NULL, 'MR.KUSHAL SALODKAR', 'M-22,HINGNA INDUSTRIAL ESTATE ,MIDC', 'NAGPUR', 440016, 'MAHARASHTRA', 'INDIA', '2020-05-23 12:38:45', '2020-05-23 12:38:45'),
(6, 'MKS  FLEXITUFF LIMITED', 'hooffice@themksgroup.com', '9021339161', ':27AALCM0517A1ZX', 'MR.TRINATH', '20-2,H.NO.526,1ST FLOOR , BHANGDIYA HOUSE ,NEAR GETWELL HOSPITAL ,DHANTOLI', 'NAGPUR', 440012, 'MAHARASHTRA', 'INDIA', '2020-05-23 12:43:17', '2020-05-23 12:43:17'),
(7, 'MANMOHAN MINERALS & CHEMICALS PVT. LTD.', 'shobha@manmohan-india.com', '+7104-237020', NULL, 'MS.SHOBHA NANDKUMAR', 'J-18,MIDC INDUSTRIAL ESTATE HINGNA', 'NAGPUR', 440016, 'MAHARASHTRA', 'INDIA', '2020-05-23 12:47:19', '2020-05-23 12:47:19'),
(8, 'BETA COMPUTRONICS', 'betacongp@gmail.com', '+91-9763711367', NULL, 'MR,.SANDEEP DARWHEKAR', '10,1,IT PARK ROAD,PARSODI , GAYATRI NAGAR', 'NAGPUR', 440022, 'MAHARASHTRA', 'INDIA', '2020-05-23 12:53:28', '2020-05-23 12:53:28'),
(9, 'DIFFUSION ENGINERS LTD.', 'cchitra@diffusionengineers.com', '+91- 9765569082', NULL, 'MS.C CHITRA', 'T-5 & T-6, MIDC AREA , HINGA', 'NAGPUR', 440016, 'MAHARASHTRA', 'INDIA', '2020-05-23 13:12:16', '2020-05-23 13:12:16'),
(10, 'STAR CIRCLIPS & ENGINEERING LTD.', 'hina.thakkar@starcirclips.net', '+91-9371672095', NULL, 'MS.HINA THAKKAR', 'B-24,MIDC INDUSTRIAL AREA HINGNA', 'NAGPUR', 440016, 'MAHARASHTRA', 'INDIA', '2020-05-23 13:15:05', '2020-05-23 13:15:05'),
(11, 'EXCEL CONTROLINKAGE PVT LTD.', 'nilesh@excelcontrolinkage.com', '+91 9764093551', NULL, 'NILESH DHANARE', 'W-68 (B) MIDC INDUSTRIAL AREA , HINGNA ROAD', 'NAGPUR', 440016, 'MAHARASHTRA', 'INDIA', '2020-05-23 14:00:41', '2020-05-23 14:00:41'),
(12, 'ORIENTAL BANK OF COMMERCE', 'bm0123@obc.co.in', '+91-9011708166', NULL, 'MR.VIKASH', 'KINGSWAY ROAD, S.V. PATEL MARG', 'NAGPUR', 440001, 'MAHARASHTRA', 'INDIA', '2020-05-23 14:06:31', '2020-05-23 14:06:31'),
(13, 'CLARION DRUGS LTD.', 'sumantk@clariondrugs.com', '+91-712-2552671', NULL, 'MR.SUMANT KEWATE', 'D-8,ANMOL APARTMENTS , CLARK TOWN', NULL, 440004, 'MAHARASHTRA', 'INDIA', '2020-05-23 14:10:21', '2020-05-23 14:10:21'),
(14, 'NAGPUR PYROLUSITE PVT.LTD.', 'info@nagpurpyrolusite.com', '+91-712-2424642', NULL, 'MR.SANJAY JAINARAYAN', '85, YASHWANT STADIUM DHANTOLI', 'NAGPUR', 440012, 'MAHARASHTRA', 'INDIA', '2020-05-23 14:16:02', '2020-05-23 14:16:02'),
(15, 'ASSOCIATES ENGG. INDIA', 'roy@aeingp.com', '+91-9765554236', NULL, 'MR.ATANU ROY', 'P 22/5, MIDC INDUSTRIAL AREA HINGNA ROAD', 'NAGPUR', 440016, 'MAHARASHTRA', 'INDIA', '2020-05-23 14:24:01', '2020-05-23 14:24:01'),
(16, 'NAGPUR  KRISHMA MACHINE TOOLS PVT LTD.', 'nkmtngp@gmail.com', '+91-9823405152', NULL, 'MR.KHETA', 'PLOT NO.U-81,HINGNA ROAD,MIDC INDUSTRIAL AREA', 'NAGPUR', 440016, 'MAHARASHTRA', 'INDIA', '2020-05-23 14:27:11', '2020-05-23 14:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Customer Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'email', 'text', 'Customer Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'phone', 'text', 'Customer Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'gstin', 'text', 'Gstin', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'kind_attn', 'text', 'Kind Attn', 0, 0, 1, 1, 1, 1, '{}', 6),
(28, 4, 'address', 'text_area', 'Address', 0, 0, 1, 1, 1, 1, '{}', 7),
(29, 4, 'city', 'text', 'City', 0, 0, 1, 1, 1, 1, '{}', 8),
(30, 4, 'pincode', 'text', 'Pincode', 0, 0, 1, 1, 1, 1, '{}', 9),
(31, 4, 'state', 'text', 'State', 0, 0, 1, 1, 1, 1, '{}', 10),
(32, 4, 'country', 'text', 'Country', 0, 0, 1, 1, 1, 1, '{}', 11),
(33, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 12),
(34, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(35, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(36, 5, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(37, 5, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(38, 5, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(39, 5, 'gstin', 'text', 'Gstin', 0, 1, 1, 1, 1, 1, '{}', 5),
(40, 5, 'kind_attn', 'text', 'Kind Attn', 0, 0, 1, 1, 1, 1, '{}', 6),
(41, 5, 'address', 'text_area', 'Address', 0, 1, 1, 1, 1, 1, '{}', 7),
(42, 5, 'city', 'text', 'City', 0, 0, 1, 1, 1, 1, '{}', 8),
(43, 5, 'pincode', 'text', 'Pincode', 0, 0, 1, 1, 1, 1, '{}', 9),
(44, 5, 'state', 'text', 'State', 0, 0, 1, 1, 1, 1, '{}', 10),
(45, 5, 'country', 'text', 'Country', 0, 0, 1, 1, 1, 1, '{}', 11),
(46, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 12),
(47, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(48, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 8, 'consignment_id', 'text', 'Consignment Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(50, 8, 'customer_ref', 'text', 'Customer Ref', 0, 1, 1, 1, 1, 1, '{}', 3),
(51, 8, 'service', 'text', 'Service', 0, 1, 1, 1, 1, 1, '{}', 4),
(52, 8, 'sender_address_id', 'text', 'Sender Address Id', 0, 0, 0, 1, 1, 1, '{}', 5),
(53, 8, 'receiver_address_id', 'text', 'Receiver Address Id', 0, 0, 0, 1, 1, 1, '{}', 6),
(54, 8, 'delivery_address_id', 'text', 'Delivery Address Id', 0, 0, 0, 1, 1, 1, '{}', 7),
(55, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 8),
(56, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(57, 8, 'user_id', 'text', 'User Id', 1, 0, 0, 0, 0, 0, '{}', 2),
(58, 8, 'sender_acc_no', 'text', 'Sender Acc No', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 9, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 2),
(61, 9, 'weight', 'text', 'Weight', 0, 1, 1, 1, 1, 1, '{}', 3),
(62, 9, 'zone', 'text', 'Zone', 0, 1, 1, 1, 1, 1, '{}', 4),
(63, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(64, 9, 'provider', 'text', 'Provider', 0, 1, 1, 1, 1, 1, '{}', 6),
(65, 9, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 7),
(66, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(67, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(68, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(75, 10, 'state_code', 'text', 'State Code', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"state_code\"}}', 4),
(77, 10, 'invoice_date', 'date', 'Invoice Date', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"invoice_date\"}}', 5),
(79, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 6),
(80, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(81, 10, 'invoice_customer_belongsto_customer_relationship', 'relationship', 'Select Customer', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"customers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(82, 10, 'customer_id', 'text', 'Customer Id', 0, 0, 0, 1, 1, 1, '{}', 3),
(83, 10, 'gross_amount', 'text', 'Gross Amount', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"gross_amount\"}}', 7),
(84, 10, 'fuel_surcharge_index', 'text', 'Fuel Surcharge Index', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"fuel_surcharge_index\"}}', 9),
(85, 10, 'custom_clearance', 'number', 'Custom Clearance', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_clearnce\"},\"default\":\"0\"}', 10),
(86, 10, 'oda_charges', 'number', 'ODA Charges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"oda_charges\"},\"default\":\"0\"}', 11),
(87, 10, 'adc_noc_charges', 'number', 'ADC NOC Charges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"ad_noc_charges\"},\"default\":\"0\"}', 12),
(88, 10, 'do_charges', 'number', 'DO Charges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"do_charges\"},\"default\":\"0\"}', 13),
(89, 10, 'non_conveyar_charges', 'number', 'Non Conveyar Charges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"non_conveyar_charges\"},\"default\":\"0\"}', 14),
(90, 10, 'address_correction_charges', 'number', 'Address Correction Charges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"address_correction_charges\"},\"default\":\"0\"}', 15),
(91, 10, 'war_surcharges', 'number', 'War Surcharges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"war_surcharges\"},\"default\":\"0\"}', 16),
(92, 10, 'warehousing_charges', 'number', 'Warehousing Charges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"warehoising_charges\"},\"default\":\"0\"}', 17),
(93, 10, 'ad_code_registration_charges', 'number', 'AD Code Registration Charges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"ad_code_registrtion_charges\"},\"default\":\"0\"}', 18),
(94, 10, 'air_cargo_registration_charges', 'number', 'Air Cargo Registration Charges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"air_Corgo_registration\"},\"default\":\"0\"}', 19),
(95, 10, 'enhanced_security_charges', 'number', 'Enhanced Security Charges', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"enhanced_security_charges\"},\"default\":\"0\"}', 20),
(96, 10, 'c_gst', 'text', 'CGST', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"c_gst\"}}', 22),
(97, 10, 's_gst', 'text', 'SGST', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"s_gst\"}}', 23),
(98, 10, 'i_gst', 'text', 'IGST', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"i_gst\"}}', 24),
(99, 10, 'freight_amount', 'number', 'Freight Amount', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"freight_amount\"},\"default\":\"0\"}', 25),
(100, 10, 'duty_payment', 'number', 'Duty Payment', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"duty_payment\"},\"default\":\"0\"}', 26),
(101, 10, 'net_amount', 'text', 'Net Amount', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"net_amount\"}}', 27),
(102, 10, 'type', 'select_dropdown', 'Select Type', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"type\"},\"default\":\"import\",\"options\":{\"import\":\"Import\",\"export\":\"Export\"}}', 21),
(103, 9, 'doc', 'text', 'Doc', 0, 1, 1, 1, 1, 1, '{}', 10),
(104, 9, 'service', 'text', 'Service', 0, 1, 1, 1, 1, 1, '{}', 11);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-09-16 08:38:34', '2019-09-16 08:38:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-09-16 08:38:34', '2019-09-16 08:38:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-09-16 08:38:34', '2019-09-16 08:38:34'),
(4, 'customers', 'customers', 'Customer', 'Customers', NULL, 'App\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-09-16 08:52:20', '2019-09-16 08:52:20'),
(5, 'walking_customers', 'walking-customers', 'Walking Customer', 'Walking Customers', NULL, 'App\\WalkingCustomer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-09-16 09:00:10', '2019-09-16 09:00:10'),
(6, 'Employees', 'employees', 'Employee', 'Employees', NULL, 'App\\Employee', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-09-18 05:27:04', '2019-09-18 05:27:04'),
(8, 'dockets', 'generate-docket', 'Generate Docket', 'Dockets', NULL, 'App\\Docket', NULL, 'App\\Http\\Controllers\\DocketController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-18 08:13:01', '2019-09-18 20:36:46'),
(9, 'prices', 'prices', 'Import Price List', 'Import Price Lists', 'voyager-double-down', 'App\\Price', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-09 02:53:39', '2020-04-10 09:56:51'),
(10, 'invoice_customers', 'invoice-customers', 'Invoice', 'Invoices', 'voyager-file-text', 'App\\InvoiceCustomer', NULL, '\\App\\Http\\Controllers\\InvoiceController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-27 20:19:02', '2019-12-04 13:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `zone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gstin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `cust_id`, `zone`, `name`, `address`, `city`, `state`, `country`, `gstin`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(13, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '1234567', '07776960995', 'f24aalam@gmail.com', '2019-12-23 21:56:48', '2019-12-23 21:56:48'),
(14, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '1234567', '07776960995', 'f24aalam@gmail.com', '2019-12-23 21:59:16', '2019-12-23 21:59:16'),
(15, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '1234567', '07776960995', 'f24aalam@gmail.com', '2019-12-23 22:00:33', '2019-12-23 22:00:33'),
(16, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '1234567', '07776960995', 'f24aalam@gmail.com', '2019-12-23 22:04:12', '2019-12-23 22:04:12'),
(17, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '1234567', '07776960995', 'f24aalam@gmail.com', '2019-12-23 22:04:20', '2019-12-23 22:04:20'),
(18, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '1234567', '07776960995', 'f24aalam@gmail.com', '2019-12-23 22:04:27', '2019-12-23 22:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `dockets`
--

CREATE TABLE `dockets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_acc_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `consignment_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_address_id` int(11) DEFAULT NULL,
  `receiver_address_id` int(11) DEFAULT NULL,
  `delivery_address_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_customers`
--

CREATE TABLE `invoice_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `gross_amount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuel_surcharge_index` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_clearance` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oda_charges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adc_noc_charges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `do_charges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `non_conveyar_charges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_correction_charges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `war_surcharges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warehousing_charges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ad_code_registration_charges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_cargo_registration_charges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enhanced_security_charges` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_gst` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_gst` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `i_gst` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freight_amount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duty_payment` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `net_amount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_customers`
--

INSERT INTO `invoice_customers` (`id`, `state_code`, `invoice_date`, `created_at`, `updated_at`, `customer_id`, `gross_amount`, `fuel_surcharge_index`, `custom_clearance`, `oda_charges`, `adc_noc_charges`, `do_charges`, `non_conveyar_charges`, `address_correction_charges`, `war_surcharges`, `warehousing_charges`, `ad_code_registration_charges`, `air_cargo_registration_charges`, `enhanced_security_charges`, `c_gst`, `s_gst`, `i_gst`, `freight_amount`, `duty_payment`, `net_amount`, `type`) VALUES
(16, NULL, NULL, '2020-06-12 13:36:48', '2020-06-12 13:36:48', NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', NULL, 'export'),
(17, '27', '2020-06-12', '2020-06-12 13:46:00', '2020-06-12 14:07:49', 6, '15971', '3992.75', '100', '100', '100', '100', '100', '100', '100', '100', '100', '100', '100', '1895.7375', '1895.7375', NULL, '15971', '0', '24855.225', 'import'),
(18, NULL, NULL, '2020-06-13 10:30:51', '2020-06-13 10:30:51', 3, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', NULL, 'import');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_customer_id` int(11) NOT NULL,
  `consignment_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refrence_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actual_weight` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volumetric_weight` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chargeable_weight` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_customer_id`, `consignment_no`, `refrence_no`, `booking_date`, `origin`, `destination`, `zone`, `product`, `actual_weight`, `volumetric_weight`, `chargeable_weight`, `amount`, `created_at`, `updated_at`) VALUES
(5, 10, 'MI12340', '12345', '2019-01-01', 'AW', 'AM', 'm', 'non doc', '12', '12', '12', '10', '2019-12-06 22:30:33', '2019-12-06 22:30:33'),
(6, 10, 'MI12340', '12345', '2019-12-31', 'AL', 'AL', 'zone2', 'non doc', '12', '12', '12', '99', '2019-12-06 22:30:34', '2019-12-06 22:30:34'),
(7, 10, 'MI12340', '12345', '2019-01-01', 'AZ', 'BD', 'zone5', 'non doc', '12', '12', '12', '8', '2019-12-06 22:38:20', '2019-12-06 22:38:20'),
(8, 11, 'MI12340', '12345', '2019-12-08', 'AF', 'AF', 'zone1', 'doc', '10', '0.3456', '10', '12', '2019-12-08 06:36:40', '2019-12-08 06:36:40'),
(9, 12, 'MI12340', '12345', '2019-12-31', 'AL', 'AL', 'zone2', 'non doc', '12', '0.1134', '12', '20', '2019-12-11 13:32:41', '2019-12-11 13:32:41'),
(10, 12, 'MI12341', '12345', '2019-12-31', 'AL', 'AL', 'zone2', 'non doc', '12', '0.1512', '12', '20', '2019-12-11 13:32:41', '2019-12-11 13:32:41'),
(11, 12, 'MI12342', '12345', '2019-12-31', 'AL', 'AL', 'zone2', 'non doc', '12', '0.1134', '12', '30', '2019-12-11 13:32:41', '2019-12-11 13:32:41'),
(12, 12, 'MI12343', '12345', '2019-12-31', 'AL', 'AL', 'zone2', 'non doc', '12', '0.1728', '12', '10', '2019-12-11 13:32:41', '2019-12-11 13:32:41'),
(13, 12, 'MI12344', '12345', '2019-12-31', 'AL', 'AL', 'zone2', 'non doc', '12', '0.2944', '12', '40', '2019-12-11 13:32:41', '2019-12-11 13:32:41'),
(14, 13, NULL, NULL, NULL, 'AF', 'AF', 'Zone 1', 'doc', NULL, '0', NULL, '0', '2020-06-01 22:36:29', '2020-06-01 22:36:29'),
(15, 14, '123123123', '12', '2020-06-12', 'IN', 'BD', 'Zone 1', 'doc', '0.320', '0', '0.5', '2046', '2020-06-12 11:37:51', '2020-06-12 11:37:51'),
(16, 15, '123123123', '12', '2020-06-12', 'IN', 'BD', 'Zone 2', 'doc', '0.20', '0', NULL, '0', '2020-06-12 11:39:48', '2020-06-12 11:39:48'),
(17, 16, '123123123', '123', '2020-06-12', 'IN', 'BD', 'Zone 2', 'doc', '0.300', '0', '0.5', '900', '2020-06-12 13:36:48', '2020-06-12 13:36:48'),
(18, 16, '321321321', '321', '2020-06-12', 'IN', 'BD', 'Zone 3', 'doc', '5.20', '0.2', '5.5', '3376', '2020-06-12 13:36:48', '2020-06-12 13:36:48'),
(19, 17, '123123123', '123', '2020-06-12', 'IN', 'BD', 'Zone 2', 'doc', '0.300', '0', '0.5', '900', '2020-06-12 13:46:29', '2020-06-12 13:46:29'),
(20, 17, '321321321', '321', '2020-06-12', 'IN', 'BD', 'Zone 2', 'non doc', '5.2', '0.3456', '5.5', '3292', '2020-06-12 13:46:29', '2020-06-12 13:46:29'),
(21, 17, '159159159', '159', '2020-06-12', 'IN', 'BD', 'Zone 4', 'non doc', '5', '18.225', '18.5', '6816', '2020-06-12 13:46:29', '2020-06-12 13:46:29'),
(22, 17, '951951951', '951', '2020-06-12', 'IN', 'BD', 'Zone 2', 'non doc', '10', '0.3456', '10', '7312', '2020-06-12 13:46:29', '2020-06-12 13:46:29'),
(23, 18, '123123123', '123', '2020-06-13', 'IN', 'BD', 'Zone 2', 'doc', '0.2', '0', '0.5', '0', '2020-06-13 10:30:51', '2020-06-13 10:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-09-16 08:38:35', '2019-09-16 08:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-09-16 08:38:35', '2019-09-16 08:38:35', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 10, '2019-09-16 08:38:35', '2019-11-27 20:19:22', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 9, '2019-09-16 08:38:35', '2019-11-27 20:19:22', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 8, '2019-09-16 08:38:36', '2019-11-27 20:19:22', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2019-09-16 08:38:36', '2019-11-27 20:19:23', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-09-16 08:38:36', '2019-09-16 08:52:33', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-09-16 08:38:36', '2019-09-16 08:52:34', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-09-16 08:38:36', '2019-09-16 08:52:34', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-09-16 08:38:36', '2019-09-16 08:52:34', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2019-09-16 08:38:36', '2019-11-27 20:19:23', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-09-16 08:38:40', '2019-09-16 08:52:34', 'voyager.hooks', NULL),
(12, 1, 'Customers', '', '_self', 'voyager-people', '#000000', NULL, 4, '2019-09-16 08:52:21', '2019-11-27 20:19:22', 'voyager.customers.index', 'null'),
(13, 1, 'Walking Customers', '', '_self', 'voyager-github', '#000000', NULL, 5, '2019-09-16 09:00:10', '2019-11-27 20:19:22', 'voyager.walking-customers.index', 'null'),
(15, 1, 'Dockets', '', '_self', 'voyager-pen', '#000000', NULL, 2, '2019-09-18 08:13:02', '2019-09-18 08:13:41', 'voyager.generate-docket.index', 'null'),
(18, 1, 'Invoices', '/admin/invoices', '_self', 'voyager-certificate', '#000000', NULL, 7, '2019-09-28 05:40:56', '2019-11-27 20:19:22', NULL, ''),
(19, 1, 'Import Price Lists', '', '_self', 'voyager-double-down', NULL, NULL, 6, '2019-11-09 02:53:39', '2019-11-27 20:19:22', 'voyager.prices.index', NULL),
(20, 1, 'Invoices', '', '_self', 'voyager-file-text', NULL, NULL, 3, '2019-11-27 20:19:03', '2019-11-27 20:19:22', 'voyager.invoice-customers.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 2),
(5, '2016_01_01_000000_create_data_types_table', 2),
(6, '2016_05_19_173453_create_menu_table', 2),
(7, '2016_10_21_190000_create_roles_table', 2),
(8, '2016_10_21_190000_create_settings_table', 2),
(9, '2016_11_30_135954_create_permission_table', 2),
(10, '2016_11_30_141208_create_permission_role_table', 2),
(11, '2016_12_26_201236_data_types__add__server_side', 2),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(13, '2017_01_14_005015_create_translations_table', 2),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(18, '2017_08_05_000000_add_group_to_settings_table', 2),
(19, '2017_11_26_013050_add_user_role_relationship', 2),
(20, '2017_11_26_015000_create_user_roles_table', 2),
(21, '2018_03_11_000000_add_user_settings', 2),
(22, '2018_03_14_000000_add_details_to_data_types_table', 2),
(23, '2018_03_16_000000_make_settings_value_nullable', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-09-16 08:38:36', '2019-09-16 08:38:36'),
(2, 'browse_bread', NULL, '2019-09-16 08:38:36', '2019-09-16 08:38:36'),
(3, 'browse_database', NULL, '2019-09-16 08:38:36', '2019-09-16 08:38:36'),
(4, 'browse_media', NULL, '2019-09-16 08:38:36', '2019-09-16 08:38:36'),
(5, 'browse_compass', NULL, '2019-09-16 08:38:36', '2019-09-16 08:38:36'),
(6, 'browse_menus', 'menus', '2019-09-16 08:38:36', '2019-09-16 08:38:36'),
(7, 'read_menus', 'menus', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(8, 'edit_menus', 'menus', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(9, 'add_menus', 'menus', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(10, 'delete_menus', 'menus', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(11, 'browse_roles', 'roles', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(12, 'read_roles', 'roles', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(13, 'edit_roles', 'roles', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(14, 'add_roles', 'roles', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(15, 'delete_roles', 'roles', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(16, 'browse_users', 'users', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(17, 'read_users', 'users', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(18, 'edit_users', 'users', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(19, 'add_users', 'users', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(20, 'delete_users', 'users', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(21, 'browse_settings', 'settings', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(22, 'read_settings', 'settings', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(23, 'edit_settings', 'settings', '2019-09-16 08:38:37', '2019-09-16 08:38:37'),
(24, 'add_settings', 'settings', '2019-09-16 08:38:38', '2019-09-16 08:38:38'),
(25, 'delete_settings', 'settings', '2019-09-16 08:38:38', '2019-09-16 08:38:38'),
(26, 'browse_hooks', NULL, '2019-09-16 08:38:40', '2019-09-16 08:38:40'),
(27, 'browse_customers', 'customers', '2019-09-16 08:52:21', '2019-09-16 08:52:21'),
(28, 'read_customers', 'customers', '2019-09-16 08:52:21', '2019-09-16 08:52:21'),
(29, 'edit_customers', 'customers', '2019-09-16 08:52:21', '2019-09-16 08:52:21'),
(30, 'add_customers', 'customers', '2019-09-16 08:52:21', '2019-09-16 08:52:21'),
(31, 'delete_customers', 'customers', '2019-09-16 08:52:21', '2019-09-16 08:52:21'),
(32, 'browse_walking_customers', 'walking_customers', '2019-09-16 09:00:10', '2019-09-16 09:00:10'),
(33, 'read_walking_customers', 'walking_customers', '2019-09-16 09:00:10', '2019-09-16 09:00:10'),
(34, 'edit_walking_customers', 'walking_customers', '2019-09-16 09:00:10', '2019-09-16 09:00:10'),
(35, 'add_walking_customers', 'walking_customers', '2019-09-16 09:00:10', '2019-09-16 09:00:10'),
(36, 'delete_walking_customers', 'walking_customers', '2019-09-16 09:00:10', '2019-09-16 09:00:10'),
(37, 'browse_Employees', 'Employees', '2019-09-18 05:27:04', '2019-09-18 05:27:04'),
(38, 'read_Employees', 'Employees', '2019-09-18 05:27:04', '2019-09-18 05:27:04'),
(39, 'edit_Employees', 'Employees', '2019-09-18 05:27:04', '2019-09-18 05:27:04'),
(40, 'add_Employees', 'Employees', '2019-09-18 05:27:04', '2019-09-18 05:27:04'),
(41, 'delete_Employees', 'Employees', '2019-09-18 05:27:04', '2019-09-18 05:27:04'),
(42, 'browse_dockets', 'dockets', '2019-09-18 08:13:01', '2019-09-18 08:13:01'),
(43, 'read_dockets', 'dockets', '2019-09-18 08:13:01', '2019-09-18 08:13:01'),
(44, 'edit_dockets', 'dockets', '2019-09-18 08:13:02', '2019-09-18 08:13:02'),
(45, 'add_dockets', 'dockets', '2019-09-18 08:13:02', '2019-09-18 08:13:02'),
(46, 'delete_dockets', 'dockets', '2019-09-18 08:13:02', '2019-09-18 08:13:02'),
(47, 'browse_prices', 'prices', '2019-11-09 02:53:39', '2019-11-09 02:53:39'),
(48, 'read_prices', 'prices', '2019-11-09 02:53:39', '2019-11-09 02:53:39'),
(49, 'edit_prices', 'prices', '2019-11-09 02:53:39', '2019-11-09 02:53:39'),
(50, 'add_prices', 'prices', '2019-11-09 02:53:39', '2019-11-09 02:53:39'),
(51, 'delete_prices', 'prices', '2019-11-09 02:53:39', '2019-11-09 02:53:39'),
(52, 'browse_invoice_customers', 'invoice_customers', '2019-11-27 20:19:03', '2019-11-27 20:19:03'),
(53, 'read_invoice_customers', 'invoice_customers', '2019-11-27 20:19:03', '2019-11-27 20:19:03'),
(54, 'edit_invoice_customers', 'invoice_customers', '2019-11-27 20:19:03', '2019-11-27 20:19:03'),
(55, 'add_invoice_customers', 'invoice_customers', '2019-11-27 20:19:03', '2019-11-27 20:19:03'),
(56, 'delete_invoice_customers', 'invoice_customers', '2019-11-27 20:19:03', '2019-11-27 20:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(19, 3),
(20, 1),
(20, 2),
(20, 3),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 2),
(28, 3),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(32, 3),
(33, 1),
(33, 2),
(33, 3),
(34, 1),
(34, 2),
(34, 3),
(35, 1),
(35, 2),
(35, 3),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(42, 3),
(43, 1),
(43, 2),
(43, 3),
(44, 1),
(44, 2),
(44, 3),
(45, 1),
(45, 2),
(45, 3),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 2),
(49, 3),
(50, 1),
(50, 2),
(50, 3),
(51, 1),
(51, 2),
(51, 3),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices_2`
--

CREATE TABLE `prices_2` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prices_2`
--

INSERT INTO `prices_2` (`id`, `key`, `value`, `type`, `created_at`, `updated_at`) VALUES
(739, 'import-du2-1', '283', 'import', '2019-09-24 06:54:09', '2019-09-24 08:25:03'),
(740, 'import-du2-2', '123', 'import', '2019-09-24 06:54:09', '2019-09-28 08:24:59'),
(741, 'import-du2-3', '133', 'import', '2019-09-24 06:54:09', '2019-09-28 08:24:59'),
(742, 'import-du2-4', '233', 'import', '2019-09-24 06:54:10', '2019-09-28 08:24:59'),
(743, 'import-du2-5', '222', 'import', '2019-09-24 06:54:10', '2019-09-28 08:24:59'),
(744, 'import-du2-6', '233', 'import', '2019-09-24 06:54:10', '2019-09-28 08:25:00'),
(745, 'import-du2-7', '222', 'import', '2019-09-24 06:54:10', '2019-09-28 08:25:00'),
(746, 'import-du2-8', '222', 'import', '2019-09-24 06:54:10', '2019-09-28 08:25:00'),
(747, 'import-du2-9', '234', 'import', '2019-09-24 06:54:10', '2019-09-28 08:25:00'),
(748, 'import-du2-10', NULL, 'import', '2019-09-24 06:54:10', '2019-09-24 06:54:10'),
(749, 'import-du2-11', NULL, 'import', '2019-09-24 06:54:10', '2019-09-24 06:54:10'),
(750, 'import-du2-12', NULL, 'import', '2019-09-24 06:54:10', '2019-09-24 06:54:10'),
(751, 'import-du2-13', NULL, 'import', '2019-09-24 06:54:11', '2019-09-24 06:54:11'),
(752, 'import-du2-14', NULL, 'import', '2019-09-24 06:54:11', '2019-09-24 06:54:11'),
(753, 'import-du2-15', NULL, 'import', '2019-09-24 06:54:11', '2019-09-24 06:54:11'),
(754, 'import-du2-16', NULL, 'import', '2019-09-24 06:54:11', '2019-09-24 06:54:11'),
(755, 'import-du2-17', NULL, 'import', '2019-09-24 06:54:11', '2019-09-24 06:54:11'),
(756, 'import-du2-18', NULL, 'import', '2019-09-24 06:54:11', '2019-09-24 06:54:11'),
(757, 'import-du2-19', NULL, 'import', '2019-09-24 06:54:11', '2019-09-24 06:54:11'),
(758, 'import-du2-20', NULL, 'import', '2019-09-24 06:54:11', '2019-09-24 06:54:11'),
(759, 'import-du2-21', NULL, 'import', '2019-09-24 06:54:11', '2019-09-24 06:54:11'),
(760, 'import-du2-22', NULL, 'import', '2019-09-24 06:54:12', '2019-09-24 06:54:12'),
(761, 'import-du2-23', NULL, 'import', '2019-09-24 06:54:12', '2019-09-24 06:54:12'),
(762, 'import-du2-24', NULL, 'import', '2019-09-24 06:54:12', '2019-09-24 06:54:12'),
(763, 'import-du2-25', NULL, 'import', '2019-09-24 06:54:12', '2019-09-24 06:54:12'),
(764, 'import-du2-26', NULL, 'import', '2019-09-24 06:54:12', '2019-09-24 06:54:12'),
(765, 'import-du2-27', NULL, 'import', '2019-09-24 06:54:12', '2019-09-24 06:54:12'),
(766, 'import-du2-28', NULL, 'import', '2019-09-24 06:54:12', '2019-09-24 06:54:12'),
(767, 'import-du2-29', NULL, 'import', '2019-09-24 06:54:12', '2019-09-24 06:54:12'),
(768, 'import-du2-30', NULL, 'import', '2019-09-24 06:54:12', '2019-09-24 06:54:12'),
(769, 'import-du2-31', NULL, 'import', '2019-09-24 06:54:13', '2019-09-24 06:54:13'),
(770, 'import-du2-32', NULL, 'import', '2019-09-24 06:54:13', '2019-09-24 06:54:13'),
(771, 'import-du2-33', NULL, 'import', '2019-09-24 06:54:13', '2019-09-24 06:54:13'),
(772, 'import-du2-34', NULL, 'import', '2019-09-24 06:54:13', '2019-09-24 06:54:13'),
(773, 'import-du2-35', NULL, 'import', '2019-09-24 06:54:13', '2019-09-24 06:54:13'),
(774, 'import-du2-36', NULL, 'import', '2019-09-24 06:54:13', '2019-09-24 06:54:13'),
(775, 'import-du2-37', '', 'import', '2019-09-24 06:54:14', '2019-09-24 06:54:14'),
(776, 'import-du2-38', '', 'import', '2019-09-24 06:54:14', '2019-09-24 06:54:14'),
(777, 'import-du2-39', '', 'import', '2019-09-24 06:54:14', '2019-09-24 06:54:14'),
(778, 'import-du2-40', '', 'import', '2019-09-24 06:54:14', '2019-09-24 06:54:14'),
(779, 'import-du2-41', '', 'import', '2019-09-24 06:54:14', '2019-09-24 06:54:15'),
(780, 'import-du2-42', '', 'import', '2019-09-24 06:54:15', '2019-09-24 06:54:15'),
(781, 'import-du2-43', '', 'import', '2019-09-24 06:54:15', '2019-09-24 06:54:15'),
(782, 'import-du2-44', '', 'import', '2019-09-24 06:54:15', '2019-09-24 06:54:15'),
(783, 'import-du2-45', '', 'import', '2019-09-24 06:54:15', '2019-09-24 06:54:15'),
(784, 'import-nd2-1', NULL, 'import', '2019-09-24 06:54:15', '2019-09-24 06:54:15'),
(785, 'import-nd2-2', NULL, 'import', '2019-09-24 06:54:15', '2019-09-24 06:54:15'),
(786, 'import-nd2-3', NULL, 'import', '2019-09-24 06:54:15', '2019-09-24 06:54:15'),
(787, 'import-nd2-4', NULL, 'import', '2019-09-24 06:54:15', '2019-09-24 06:54:15'),
(788, 'import-nd2-5', NULL, 'import', '2019-09-24 06:54:16', '2019-09-24 06:54:16'),
(789, 'import-nd2-6', NULL, 'import', '2019-09-24 06:54:16', '2019-09-24 06:54:16'),
(790, 'import-nd2-7', NULL, 'import', '2019-09-24 06:54:16', '2019-09-24 06:54:16'),
(791, 'import-nd2-8', NULL, 'import', '2019-09-24 06:54:16', '2019-09-24 06:54:16'),
(792, 'import-nd2-9', NULL, 'import', '2019-09-24 06:54:16', '2019-09-24 06:54:16'),
(793, 'import-nd2-10', NULL, 'import', '2019-09-24 06:54:16', '2019-09-24 06:54:16'),
(794, 'import-nd2-11', NULL, 'import', '2019-09-24 06:54:16', '2019-09-24 06:54:16'),
(795, 'import-nd2-12', NULL, 'import', '2019-09-24 06:54:16', '2019-09-24 06:54:16'),
(796, 'import-nd2-13', NULL, 'import', '2019-09-24 06:54:17', '2019-09-24 06:54:17'),
(797, 'import-nd2-14', NULL, 'import', '2019-09-24 06:54:17', '2019-09-24 06:54:17'),
(798, 'import-nd2-15', NULL, 'import', '2019-09-24 06:54:17', '2019-09-24 06:54:17'),
(799, 'import-nd2-16', NULL, 'import', '2019-09-24 06:54:17', '2019-09-24 06:54:17'),
(800, 'import-nd2-17', NULL, 'import', '2019-09-24 06:54:17', '2019-09-24 06:54:17'),
(801, 'import-nd2-18', NULL, 'import', '2019-09-24 06:54:17', '2019-09-24 06:54:18'),
(802, 'import-nd2-19', NULL, 'import', '2019-09-24 06:54:18', '2019-09-24 06:54:18'),
(803, 'import-nd2-20', NULL, 'import', '2019-09-24 06:54:18', '2019-09-24 06:54:18'),
(804, 'import-nd2-21', NULL, 'import', '2019-09-24 06:54:18', '2019-09-24 06:54:18'),
(805, 'import-nd2-22', NULL, 'import', '2019-09-24 06:54:18', '2019-09-24 06:54:18'),
(806, 'import-nd2-23', NULL, 'import', '2019-09-24 06:54:18', '2019-09-24 06:54:18'),
(807, 'import-nd2-24', NULL, 'import', '2019-09-24 06:54:18', '2019-09-24 06:54:18'),
(808, 'import-nd2-25', NULL, 'import', '2019-09-24 06:54:18', '2019-09-24 06:54:18'),
(809, 'import-nd2-26', NULL, 'import', '2019-09-24 06:54:18', '2019-09-24 06:54:18'),
(810, 'import-nd2-27', NULL, 'import', '2019-09-24 06:54:18', '2019-09-24 06:54:19'),
(811, 'import-nd2-28', NULL, 'import', '2019-09-24 06:54:19', '2019-09-24 06:54:19'),
(812, 'import-nd2-29', NULL, 'import', '2019-09-24 06:54:19', '2019-09-24 06:54:19'),
(813, 'import-nd2-30', NULL, 'import', '2019-09-24 06:54:19', '2019-09-24 06:54:19'),
(814, 'import-nd2-31', NULL, 'import', '2019-09-24 06:54:19', '2019-09-24 06:54:19'),
(815, 'import-nd2-32', NULL, 'import', '2019-09-24 06:54:19', '2019-09-24 06:54:19'),
(816, 'import-nd2-33', NULL, 'import', '2019-09-24 06:54:19', '2019-09-24 06:54:20'),
(817, 'import-nd2-34', NULL, 'import', '2019-09-24 06:54:20', '2019-09-24 06:54:20'),
(818, 'import-nd2-35', NULL, 'import', '2019-09-24 06:54:20', '2019-09-24 06:54:20'),
(819, 'import-nd2-36', NULL, 'import', '2019-09-24 06:54:20', '2019-09-24 06:54:20'),
(820, 'import-nd2-37', NULL, 'import', '2019-09-24 06:54:20', '2019-09-24 06:54:20'),
(821, 'import-nd2-38', NULL, 'import', '2019-09-24 06:54:20', '2019-09-24 06:54:20'),
(822, 'import-nd2-39', NULL, 'import', '2019-09-24 06:54:20', '2019-09-24 06:54:20'),
(823, 'import-nd2-40', NULL, 'import', '2019-09-24 06:54:20', '2019-09-24 06:54:21'),
(824, 'import-nd2-41', NULL, 'import', '2019-09-24 06:54:21', '2019-09-24 06:54:21'),
(825, 'import-nd2-42', NULL, 'import', '2019-09-24 06:54:21', '2019-09-24 06:54:21'),
(826, 'import-nd2-43', NULL, 'import', '2019-09-24 06:54:21', '2019-09-24 06:54:21'),
(827, 'import-nd2-44', NULL, 'import', '2019-09-24 06:54:21', '2019-09-24 06:54:21'),
(828, 'import-nd2-45', NULL, 'import', '2019-09-24 06:54:21', '2019-09-24 06:54:21'),
(829, 'import-nd2-46', NULL, 'import', '2019-09-24 06:54:21', '2019-09-24 06:54:21'),
(830, 'import-nd2-47', NULL, 'import', '2019-09-24 06:54:21', '2019-09-24 06:54:21'),
(831, 'import-nd2-48', NULL, 'import', '2019-09-24 06:54:21', '2019-09-24 06:54:21'),
(832, 'import-nd2-49', NULL, 'import', '2019-09-24 06:54:21', '2019-09-24 06:54:22'),
(833, 'import-nd2-50', NULL, 'import', '2019-09-24 06:54:22', '2019-09-24 06:54:22'),
(834, 'import-nd2-51', NULL, 'import', '2019-09-24 06:54:22', '2019-09-24 06:54:22'),
(835, 'import-nd2-52', NULL, 'import', '2019-09-24 06:54:22', '2019-09-24 06:54:22'),
(836, 'import-nd2-53', NULL, 'import', '2019-09-24 06:54:22', '2019-09-24 06:54:22'),
(837, 'import-nd2-54', NULL, 'import', '2019-09-24 06:54:22', '2019-09-24 06:54:22'),
(838, 'import-nd2-55', NULL, 'import', '2019-09-24 06:54:22', '2019-09-24 06:54:22'),
(839, 'import-nd2-56', NULL, 'import', '2019-09-24 06:54:22', '2019-09-24 06:54:22'),
(840, 'import-nd2-57', NULL, 'import', '2019-09-24 06:54:22', '2019-09-24 06:54:22'),
(841, 'import-nd2-58', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:23'),
(842, 'import-nd2-59', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:23'),
(843, 'import-nd2-60', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:23'),
(844, 'import-nd2-61', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:23'),
(845, 'import-nd2-62', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:23'),
(846, 'import-nd2-63', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:23'),
(847, 'import-nd2-64', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:23'),
(848, 'import-nd2-65', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:23'),
(849, 'import-nd2-66', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:23'),
(850, 'import-nd2-67', NULL, 'import', '2019-09-24 06:54:23', '2019-09-24 06:54:24'),
(851, 'import-nd2-68', NULL, 'import', '2019-09-24 06:54:24', '2019-09-24 06:54:24'),
(852, 'import-nd2-69', NULL, 'import', '2019-09-24 06:54:24', '2019-09-24 06:54:24'),
(853, 'import-nd2-70', NULL, 'import', '2019-09-24 06:54:24', '2019-09-24 06:54:24'),
(854, 'import-nd2-71', NULL, 'import', '2019-09-24 06:54:24', '2019-09-24 06:54:24'),
(855, 'import-nd2-72', NULL, 'import', '2019-09-24 06:54:24', '2019-09-24 06:54:24'),
(856, 'import-nd2-73', NULL, 'import', '2019-09-24 06:54:24', '2019-09-24 06:54:24'),
(857, 'import-nd2-74', NULL, 'import', '2019-09-24 06:54:24', '2019-09-24 06:54:24'),
(858, 'import-nd2-75', NULL, 'import', '2019-09-24 06:54:24', '2019-09-24 06:54:25'),
(859, 'import-nd2-76', NULL, 'import', '2019-09-24 06:54:25', '2019-09-24 06:54:25'),
(860, 'import-nd2-77', NULL, 'import', '2019-09-24 06:54:25', '2019-09-24 06:54:25'),
(861, 'import-nd2-78', NULL, 'import', '2019-09-24 06:54:25', '2019-09-24 06:54:25'),
(862, 'import-nd2-79', NULL, 'import', '2019-09-24 06:54:25', '2019-09-24 06:54:25'),
(863, 'import-nd2-80', NULL, 'import', '2019-09-24 06:54:25', '2019-09-24 06:54:25'),
(864, 'import-nd2-81', NULL, 'import', '2019-09-24 06:54:25', '2019-09-24 06:54:25'),
(865, 'import-nd2-82', NULL, 'import', '2019-09-24 06:54:25', '2019-09-24 06:54:25'),
(866, 'import-nd2-83', NULL, 'import', '2019-09-24 06:54:25', '2019-09-24 06:54:25'),
(867, 'import-nd2-84', NULL, 'import', '2019-09-24 06:54:25', '2019-09-24 06:54:26'),
(868, 'import-nd2-85', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:26'),
(869, 'import-nd2-86', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:26'),
(870, 'import-nd2-87', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:26'),
(871, 'import-nd2-88', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:26'),
(872, 'import-nd2-89', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:26'),
(873, 'import-nd2-90', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:26'),
(874, 'import-nd2-91', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:26'),
(875, 'import-nd2-92', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:26'),
(876, 'import-nd2-93', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:26'),
(877, 'import-nd2-94', NULL, 'import', '2019-09-24 06:54:26', '2019-09-24 06:54:27'),
(878, 'import-nd2-95', NULL, 'import', '2019-09-24 06:54:27', '2019-09-24 06:54:27'),
(879, 'import-nd2-96', NULL, 'import', '2019-09-24 06:54:27', '2019-09-24 06:54:27'),
(880, 'import-nd2-97', NULL, 'import', '2019-09-24 06:54:27', '2019-09-24 06:54:27'),
(881, 'import-nd2-98', NULL, 'import', '2019-09-24 06:54:27', '2019-09-24 06:54:27'),
(882, 'import-nd2-99', NULL, 'import', '2019-09-24 06:54:27', '2019-09-24 06:54:27'),
(883, 'import-nd2-100', NULL, 'import', '2019-09-24 06:54:28', '2019-09-24 06:54:28'),
(884, 'import-nd2-101', NULL, 'import', '2019-09-24 06:54:28', '2019-09-24 06:54:28'),
(885, 'import-nd2-102', NULL, 'import', '2019-09-24 06:54:28', '2019-09-24 06:54:28'),
(886, 'import-nd2-103', NULL, 'import', '2019-09-24 06:54:28', '2019-09-24 06:54:28'),
(887, 'import-nd2-104', NULL, 'import', '2019-09-24 06:54:28', '2019-09-24 06:54:28'),
(888, 'import-nd2-105', NULL, 'import', '2019-09-24 06:54:28', '2019-09-24 06:54:28'),
(889, 'import-nd2-106', NULL, 'import', '2019-09-24 06:54:28', '2019-09-24 06:54:28'),
(890, 'import-nd2-107', NULL, 'import', '2019-09-24 06:54:28', '2019-09-24 06:54:28'),
(891, 'import-nd2-108', NULL, 'import', '2019-09-24 06:54:29', '2019-09-24 06:54:29'),
(892, 'import-nd2-109', NULL, 'import', '2019-09-24 06:54:29', '2019-09-24 06:54:29'),
(893, 'import-nd2-110', NULL, 'import', '2019-09-24 06:54:29', '2019-09-24 06:54:29'),
(894, 'import-nd2-111', NULL, 'import', '2019-09-24 06:54:29', '2019-09-24 06:54:29'),
(895, 'import-nd2-112', NULL, 'import', '2019-09-24 06:54:29', '2019-09-24 06:54:29'),
(896, 'import-nd2-113', NULL, 'import', '2019-09-24 06:54:30', '2019-09-24 06:54:30'),
(897, 'import-nd2-114', NULL, 'import', '2019-09-24 06:54:30', '2019-09-24 06:54:30'),
(898, 'import-nd2-115', NULL, 'import', '2019-09-24 06:54:30', '2019-09-24 06:54:30'),
(899, 'import-nd2-116', NULL, 'import', '2019-09-24 06:54:30', '2019-09-24 06:54:30'),
(900, 'import-nd2-117', NULL, 'import', '2019-09-24 06:54:30', '2019-09-24 06:54:30'),
(901, 'import-nd2-118', NULL, 'import', '2019-09-24 06:54:30', '2019-09-24 06:54:30'),
(902, 'import-nd2-119', NULL, 'import', '2019-09-24 06:54:31', '2019-09-24 06:54:31'),
(903, 'import-nd2-120', NULL, 'import', '2019-09-24 06:54:31', '2019-09-24 06:54:31'),
(904, 'import-nd2-121', NULL, 'import', '2019-09-24 06:54:31', '2019-09-24 06:54:31'),
(905, 'import-nd2-122', NULL, 'import', '2019-09-24 06:54:31', '2019-09-24 06:54:31'),
(906, 'import-nd2-123', NULL, 'import', '2019-09-24 06:54:31', '2019-09-24 06:54:31'),
(907, 'import-nd2-124', NULL, 'import', '2019-09-24 06:54:31', '2019-09-24 06:54:31'),
(908, 'import-nd2-125', NULL, 'import', '2019-09-24 06:54:31', '2019-09-24 06:54:31'),
(909, 'import-nd2-126', NULL, 'import', '2019-09-24 06:54:31', '2019-09-24 06:54:31'),
(910, 'import-nd2-127', NULL, 'import', '2019-09-24 06:54:32', '2019-09-24 06:54:32'),
(911, 'import-nd2-128', NULL, 'import', '2019-09-24 06:54:32', '2019-09-24 06:54:32'),
(912, 'import-nd2-129', NULL, 'import', '2019-09-24 06:54:32', '2019-09-24 06:54:32'),
(913, 'import-nd2-130', NULL, 'import', '2019-09-24 06:54:32', '2019-09-24 06:54:32'),
(914, 'import-nd2-131', NULL, 'import', '2019-09-24 06:54:32', '2019-09-24 06:54:32'),
(915, 'import-nd2-132', NULL, 'import', '2019-09-24 06:54:32', '2019-09-24 06:54:32'),
(916, 'import-nd2-133', NULL, 'import', '2019-09-24 06:54:32', '2019-09-24 06:54:32'),
(917, 'import-nd2-134', NULL, 'import', '2019-09-24 06:54:32', '2019-09-24 06:54:33'),
(918, 'import-nd2-135', NULL, 'import', '2019-09-24 06:54:33', '2019-09-24 06:54:33'),
(919, 'import-nd2-136', NULL, 'import', '2019-09-24 06:54:33', '2019-09-24 06:54:33'),
(920, 'import-nd2-137', NULL, 'import', '2019-09-24 06:54:33', '2019-09-24 06:54:33'),
(921, 'import-nd2-138', NULL, 'import', '2019-09-24 06:54:33', '2019-09-24 06:54:33'),
(922, 'import-nd2-139', NULL, 'import', '2019-09-24 06:54:33', '2019-09-24 06:54:33'),
(923, 'import-nd2-140', NULL, 'import', '2019-09-24 06:54:33', '2019-09-24 06:54:33'),
(924, 'import-nd2-141', NULL, 'import', '2019-09-24 06:54:33', '2019-09-24 06:54:34'),
(925, 'import-nd2-142', NULL, 'import', '2019-09-24 06:54:34', '2019-09-24 06:54:34'),
(926, 'import-nd2-143', NULL, 'import', '2019-09-24 06:54:34', '2019-09-24 06:54:34'),
(927, 'import-nd2-144', NULL, 'import', '2019-09-24 06:54:34', '2019-09-24 06:54:34'),
(928, 'import-nd2-145', NULL, 'import', '2019-09-24 06:54:34', '2019-09-24 06:54:34'),
(929, 'import-nd2-146', NULL, 'import', '2019-09-24 06:54:34', '2019-09-24 06:54:34'),
(930, 'import-nd2-147', NULL, 'import', '2019-09-24 06:54:34', '2019-09-24 06:54:34'),
(931, 'import-nd2-148', NULL, 'import', '2019-09-24 06:54:34', '2019-09-24 06:54:34'),
(932, 'import-nd2-149', NULL, 'import', '2019-09-24 06:54:34', '2019-09-24 06:54:34'),
(933, 'import-nd2-150', NULL, 'import', '2019-09-24 06:54:34', '2019-09-24 06:54:35'),
(934, 'import-nd2-151', NULL, 'import', '2019-09-24 06:54:35', '2019-09-24 06:54:35'),
(935, 'import-nd2-152', NULL, 'import', '2019-09-24 06:54:35', '2019-09-24 06:54:35'),
(936, 'import-nd2-153', NULL, 'import', '2019-09-24 06:54:35', '2019-09-24 06:54:35'),
(937, 'import-nd2-154', NULL, 'import', '2019-09-24 06:54:35', '2019-09-24 06:54:35'),
(938, 'import-nd2-155', NULL, 'import', '2019-09-24 06:54:35', '2019-09-24 06:54:35'),
(939, 'import-nd2-156', NULL, 'import', '2019-09-24 06:54:35', '2019-09-24 06:54:35'),
(940, 'import-nd2-157', NULL, 'import', '2019-09-24 06:54:35', '2019-09-24 06:54:35'),
(941, 'import-nd2-158', NULL, 'import', '2019-09-24 06:54:35', '2019-09-24 06:54:35'),
(942, 'import-nd2-159', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:36'),
(943, 'import-nd2-160', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:36'),
(944, 'import-nd2-161', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:36'),
(945, 'import-nd2-162', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:36'),
(946, 'import-nd2-163', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:36'),
(947, 'import-nd2-164', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:36'),
(948, 'import-nd2-165', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:36'),
(949, 'import-nd2-166', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:36'),
(950, 'import-nd2-167', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:36'),
(951, 'import-nd2-168', NULL, 'import', '2019-09-24 06:54:36', '2019-09-24 06:54:37'),
(952, 'import-nd2-169', NULL, 'import', '2019-09-24 06:54:37', '2019-09-24 06:54:37'),
(953, 'import-nd2-170', NULL, 'import', '2019-09-24 06:54:37', '2019-09-24 06:54:37'),
(954, 'import-nd2-171', NULL, 'import', '2019-09-24 06:54:37', '2019-09-24 06:54:37'),
(955, 'import-nd2-172', NULL, 'import', '2019-09-24 06:54:37', '2019-09-24 06:54:37'),
(956, 'import-nd2-173', NULL, 'import', '2019-09-24 06:54:37', '2019-09-24 06:54:37'),
(957, 'import-nd2-174', NULL, 'import', '2019-09-24 06:54:37', '2019-09-24 06:54:37'),
(958, 'import-nd2-175', NULL, 'import', '2019-09-24 06:54:37', '2019-09-24 06:54:37'),
(959, 'import-nd2-176', NULL, 'import', '2019-09-24 06:54:37', '2019-09-24 06:54:38'),
(960, 'import-nd2-177', NULL, 'import', '2019-09-24 06:54:38', '2019-09-24 06:54:38'),
(961, 'import-nd2-178', NULL, 'import', '2019-09-24 06:54:38', '2019-09-24 06:54:38'),
(962, 'import-nd2-179', NULL, 'import', '2019-09-24 06:54:38', '2019-09-24 06:54:38'),
(963, 'import-nd2-180', NULL, 'import', '2019-09-24 06:54:38', '2019-09-24 06:54:38'),
(964, 'import-nd2-181', NULL, 'import', '2019-09-24 06:54:38', '2019-09-24 06:54:38'),
(965, 'import-nd2-182', NULL, 'import', '2019-09-24 06:54:38', '2019-09-24 06:54:38'),
(966, 'import-nd2-183', NULL, 'import', '2019-09-24 06:54:38', '2019-09-24 06:54:38'),
(967, 'import-nd2-184', NULL, 'import', '2019-09-24 06:54:39', '2019-09-24 06:54:39'),
(968, 'import-nd2-185', NULL, 'import', '2019-09-24 06:54:39', '2019-09-24 06:54:39'),
(969, 'import-nd2-186', NULL, 'import', '2019-09-24 06:54:39', '2019-09-24 06:54:39'),
(970, 'import-nd2-187', NULL, 'import', '2019-09-24 06:54:39', '2019-09-24 06:54:39'),
(971, 'import-nd2-188', NULL, 'import', '2019-09-24 06:54:39', '2019-09-24 06:54:39'),
(972, 'import-nd2-189', NULL, 'import', '2019-09-24 06:54:39', '2019-09-24 06:54:39'),
(973, 'import-nd2-190', NULL, 'import', '2019-09-24 06:54:39', '2019-09-24 06:54:39'),
(974, 'import-nd2-191', NULL, 'import', '2019-09-24 06:54:39', '2019-09-24 06:54:39'),
(975, 'import-nd2-192', NULL, 'import', '2019-09-24 06:54:39', '2019-09-24 06:54:39'),
(976, 'import-nd2-193', NULL, 'import', '2019-09-24 06:54:40', '2019-09-24 06:54:40'),
(977, 'import-nd2-194', NULL, 'import', '2019-09-24 06:54:40', '2019-09-24 06:54:40'),
(978, 'import-nd2-195', NULL, 'import', '2019-09-24 06:54:40', '2019-09-24 06:54:40'),
(979, 'import-nd2-196', NULL, 'import', '2019-09-24 06:54:40', '2019-09-24 06:54:40'),
(980, 'import-nd2-197', NULL, 'import', '2019-09-24 06:54:40', '2019-09-24 06:54:40'),
(981, 'import-nd2-198', NULL, 'import', '2019-09-24 06:54:40', '2019-09-24 06:54:40'),
(982, 'import-nd2-199', NULL, 'import', '2019-09-24 06:54:40', '2019-09-24 06:54:40'),
(983, 'import-nd2-200', NULL, 'import', '2019-09-24 06:54:40', '2019-09-24 06:54:41'),
(984, 'import-nd2-201', NULL, 'import', '2019-09-24 06:54:41', '2019-09-24 06:54:41'),
(985, 'import-nd2-202', NULL, 'import', '2019-09-24 06:54:41', '2019-09-24 06:54:41'),
(986, 'import-nd2-203', NULL, 'import', '2019-09-24 06:54:41', '2019-09-24 06:54:41'),
(987, 'import-nd2-204', NULL, 'import', '2019-09-24 06:54:41', '2019-09-24 06:54:41'),
(988, 'import-nd2-205', NULL, 'import', '2019-09-24 06:54:41', '2019-09-24 06:54:41'),
(989, 'import-nd2-206', NULL, 'import', '2019-09-24 06:54:41', '2019-09-24 06:54:41'),
(990, 'import-nd2-207', NULL, 'import', '2019-09-24 06:54:41', '2019-09-24 06:54:41'),
(991, 'import-nd2-208', NULL, 'import', '2019-09-24 06:54:41', '2019-09-24 06:54:42'),
(992, 'import-nd2-209', NULL, 'import', '2019-09-24 06:54:42', '2019-09-24 06:54:42'),
(993, 'import-nd2-210', NULL, 'import', '2019-09-24 06:54:42', '2019-09-24 06:54:42'),
(994, 'import-nd2-211', NULL, 'import', '2019-09-24 06:54:42', '2019-09-24 06:54:42'),
(995, 'import-nd2-212', NULL, 'import', '2019-09-24 06:54:42', '2019-09-24 06:54:42'),
(996, 'import-nd2-213', NULL, 'import', '2019-09-24 06:54:42', '2019-09-24 06:54:42'),
(997, 'import-nd2-214', NULL, 'import', '2019-09-24 06:54:42', '2019-09-24 06:54:42'),
(998, 'import-nd2-215', NULL, 'import', '2019-09-24 06:54:42', '2019-09-24 06:54:43'),
(999, 'import-nd2-216', NULL, 'import', '2019-09-24 06:54:43', '2019-09-24 06:54:43'),
(1000, 'import-nd2-217', NULL, 'import', '2019-09-24 06:54:43', '2019-09-24 06:54:43'),
(1001, 'import-nd2-218', NULL, 'import', '2019-09-24 06:54:43', '2019-09-24 06:54:43'),
(1002, 'import-nd2-219', NULL, 'import', '2019-09-24 06:54:43', '2019-09-24 06:54:43'),
(1003, 'import-nd2-220', NULL, 'import', '2019-09-24 06:54:43', '2019-09-24 06:54:43'),
(1004, 'import-nd2-221', NULL, 'import', '2019-09-24 06:54:43', '2019-09-24 06:54:43'),
(1005, 'import-nd2-222', NULL, 'import', '2019-09-24 06:54:43', '2019-09-24 06:54:43'),
(1006, 'import-nd2-223', NULL, 'import', '2019-09-24 06:54:44', '2019-09-24 06:54:44'),
(1007, 'import-nd2-224', NULL, 'import', '2019-09-24 06:54:44', '2019-09-24 06:54:44'),
(1008, 'import-nd2-225', NULL, 'import', '2019-09-24 06:54:44', '2019-09-24 06:54:44'),
(1009, 'import-nd2-226', NULL, 'import', '2019-09-24 06:54:44', '2019-09-24 06:54:44'),
(1010, 'import-nd2-227', NULL, 'import', '2019-09-24 06:54:44', '2019-09-24 06:54:44'),
(1011, 'import-nd2-228', NULL, 'import', '2019-09-24 06:54:44', '2019-09-24 06:54:44'),
(1012, 'import-nd2-229', NULL, 'import', '2019-09-24 06:54:44', '2019-09-24 06:54:44'),
(1013, 'import-nd2-230', NULL, 'import', '2019-09-24 06:54:44', '2019-09-24 06:54:44'),
(1014, 'import-nd2-231', NULL, 'import', '2019-09-24 06:54:45', '2019-09-24 06:54:45'),
(1015, 'import-nd2-232', NULL, 'import', '2019-09-24 06:54:45', '2019-09-24 06:54:45'),
(1016, 'import-nd2-233', NULL, 'import', '2019-09-24 06:54:45', '2019-09-24 06:54:45'),
(1017, 'import-nd2-234', NULL, 'import', '2019-09-24 06:54:45', '2019-09-24 06:54:45'),
(1018, 'import-nd2-235', NULL, 'import', '2019-09-24 06:54:45', '2019-09-24 06:54:45'),
(1019, 'import-nd2-236', NULL, 'import', '2019-09-24 06:54:45', '2019-09-24 06:54:45'),
(1020, 'import-nd2-237', NULL, 'import', '2019-09-24 06:54:45', '2019-09-24 06:54:45'),
(1021, 'import-nd2-238', NULL, 'import', '2019-09-24 06:54:45', '2019-09-24 06:54:45'),
(1022, 'import-nd2-239', NULL, 'import', '2019-09-24 06:54:45', '2019-09-24 06:54:45'),
(1023, 'import-nd2-240', NULL, 'import', '2019-09-24 06:54:46', '2019-09-24 06:54:46'),
(1024, 'import-nd2-241', NULL, 'import', '2019-09-24 06:54:46', '2019-09-24 06:54:46'),
(1025, 'import-nd2-242', NULL, 'import', '2019-09-24 06:54:46', '2019-09-24 06:54:46'),
(1026, 'import-nd2-243', NULL, 'import', '2019-09-24 06:54:46', '2019-09-24 06:54:46'),
(1027, 'import-nd2-244', NULL, 'import', '2019-09-24 06:54:46', '2019-09-24 06:54:46'),
(1028, 'import-nd2-245', NULL, 'import', '2019-09-24 06:54:46', '2019-09-24 06:54:46'),
(1029, 'import-nd2-246', NULL, 'import', '2019-09-24 06:54:46', '2019-09-24 06:54:46'),
(1030, 'import-nd2-247', NULL, 'import', '2019-09-24 06:54:46', '2019-09-24 06:54:46'),
(1031, 'import-nd2-248', NULL, 'import', '2019-09-24 06:54:46', '2019-09-24 06:54:46'),
(1032, 'import-nd2-249', NULL, 'import', '2019-09-24 06:54:47', '2019-09-24 06:54:47'),
(1033, 'import-nd2-250', NULL, 'import', '2019-09-24 06:54:47', '2019-09-24 06:54:47'),
(1034, 'import-nd2-251', NULL, 'import', '2019-09-24 06:54:47', '2019-09-24 06:54:47'),
(1035, 'import-nd2-252', NULL, 'import', '2019-09-24 06:54:47', '2019-09-24 06:54:47'),
(1036, 'import-nd2-253', NULL, 'import', '2019-09-24 06:54:47', '2019-09-24 06:54:47'),
(1037, 'import-nd2-254', NULL, 'import', '2019-09-24 06:54:47', '2019-09-24 06:54:47'),
(1038, 'import-nd2-255', NULL, 'import', '2019-09-24 06:54:47', '2019-09-24 06:54:47'),
(1039, 'import-nd2-256', NULL, 'import', '2019-09-24 06:54:47', '2019-09-24 06:54:48'),
(1040, 'import-nd2-257', NULL, 'import', '2019-09-24 06:54:48', '2019-09-24 06:54:48'),
(1041, 'import-nd2-258', NULL, 'import', '2019-09-24 06:54:48', '2019-09-24 06:54:48'),
(1042, 'import-nd2-259', NULL, 'import', '2019-09-24 06:54:48', '2019-09-24 06:54:48'),
(1043, 'import-nd2-260', NULL, 'import', '2019-09-24 06:54:48', '2019-09-24 06:54:48'),
(1044, 'import-nd2-261', NULL, 'import', '2019-09-24 06:54:49', '2019-09-24 06:54:49'),
(1045, 'import-nd2-262', NULL, 'import', '2019-09-24 06:54:49', '2019-09-24 06:54:49'),
(1046, 'import-nd2-263', NULL, 'import', '2019-09-24 06:54:49', '2019-09-24 06:54:49'),
(1047, 'import-nd2-264', NULL, 'import', '2019-09-24 06:54:49', '2019-09-24 06:54:49'),
(1048, 'import-nd2-265', NULL, 'import', '2019-09-24 06:54:49', '2019-09-24 06:54:49'),
(1049, 'import-nd2-266', NULL, 'import', '2019-09-24 06:54:49', '2019-09-24 06:54:49'),
(1050, 'import-nd2-267', NULL, 'import', '2019-09-24 06:54:49', '2019-09-24 06:54:49'),
(1051, 'import-nd2-268', NULL, 'import', '2019-09-24 06:54:49', '2019-09-24 06:54:49'),
(1052, 'import-nd2-269', NULL, 'import', '2019-09-24 06:54:49', '2019-09-24 06:54:49'),
(1053, 'import-nd2-270', NULL, 'import', '2019-09-24 06:54:50', '2019-09-24 06:54:50'),
(1054, 'import-nd2-271', NULL, 'import', '2019-09-24 06:54:50', '2019-09-24 06:54:50'),
(1055, 'import-nd2-272', NULL, 'import', '2019-09-24 06:54:50', '2019-09-24 06:54:50'),
(1056, 'import-nd2-273', NULL, 'import', '2019-09-24 06:54:50', '2019-09-24 06:54:50'),
(1057, 'import-nd2-274', NULL, 'import', '2019-09-24 06:54:50', '2019-09-24 06:54:50'),
(1058, 'import-nd2-275', NULL, 'import', '2019-09-24 06:54:50', '2019-09-24 06:54:50'),
(1059, 'import-nd2-276', NULL, 'import', '2019-09-24 06:54:50', '2019-09-24 06:54:50'),
(1060, 'import-nd2-277', NULL, 'import', '2019-09-24 06:54:50', '2019-09-24 06:54:50'),
(1061, 'import-nd2-278', NULL, 'import', '2019-09-24 06:54:51', '2019-09-24 06:54:51'),
(1062, 'import-nd2-279', NULL, 'import', '2019-09-24 06:54:51', '2019-09-24 06:54:51'),
(1063, 'import-nd2-280', NULL, 'import', '2019-09-24 06:54:51', '2019-09-24 06:54:51'),
(1064, 'import-nd2-281', NULL, 'import', '2019-09-24 06:54:51', '2019-09-24 06:54:51'),
(1065, 'import-nd2-282', NULL, 'import', '2019-09-24 06:54:51', '2019-09-24 06:54:51'),
(1066, 'import-nd2-283', NULL, 'import', '2019-09-24 06:54:51', '2019-09-24 06:54:51'),
(1067, 'import-nd2-284', NULL, 'import', '2019-09-24 06:54:51', '2019-09-24 06:54:51'),
(1068, 'import-nd2-285', NULL, 'import', '2019-09-24 06:54:51', '2019-09-24 06:54:51'),
(1069, 'import-nd2-286', NULL, 'import', '2019-09-24 06:54:51', '2019-09-24 06:54:51'),
(1070, 'import-nd2-287', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:52'),
(1071, 'import-nd2-288', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:52'),
(1072, 'import-nd2-289', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:52'),
(1073, 'import-nd2-290', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:52'),
(1074, 'import-nd2-291', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:52'),
(1075, 'import-nd2-292', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:52'),
(1076, 'import-nd2-293', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:52'),
(1077, 'import-nd2-294', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:52'),
(1078, 'import-nd2-295', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:52'),
(1079, 'import-nd2-296', NULL, 'import', '2019-09-24 06:54:52', '2019-09-24 06:54:53'),
(1080, 'import-nd2-297', NULL, 'import', '2019-09-24 06:54:53', '2019-09-24 06:54:53'),
(1081, 'import-nd2-298', NULL, 'import', '2019-09-24 06:54:53', '2019-09-24 06:54:53'),
(1082, 'import-nd2-299', NULL, 'import', '2019-09-24 06:54:53', '2019-09-24 06:54:53'),
(1083, 'import-nd2-300', NULL, 'import', '2019-09-24 06:54:53', '2019-09-24 06:54:53'),
(1084, 'import-nd2-301', NULL, 'import', '2019-09-24 06:54:53', '2019-09-24 06:54:53'),
(1085, 'import-nd2-302', NULL, 'import', '2019-09-24 06:54:53', '2019-09-24 06:54:53'),
(1086, 'import-nd2-303', NULL, 'import', '2019-09-24 06:54:53', '2019-09-24 06:54:53'),
(1087, 'import-nd2-304', NULL, 'import', '2019-09-24 06:54:54', '2019-09-24 06:54:54'),
(1088, 'import-nd2-305', NULL, 'import', '2019-09-24 06:54:54', '2019-09-24 06:54:54'),
(1089, 'import-nd2-306', NULL, 'import', '2019-09-24 06:54:54', '2019-09-24 06:54:54'),
(1090, 'import-nd2-307', NULL, 'import', '2019-09-24 06:54:54', '2019-09-24 06:54:54'),
(1091, 'import-nd2-308', NULL, 'import', '2019-09-24 06:54:54', '2019-09-24 06:54:54'),
(1092, 'import-nd2-309', NULL, 'import', '2019-09-24 06:54:54', '2019-09-24 06:54:54'),
(1093, 'import-nd2-310', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:55'),
(1094, 'import-nd2-311', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:55'),
(1095, 'import-nd2-312', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:55'),
(1096, 'import-nd2-313', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:55'),
(1097, 'import-nd2-314', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:55'),
(1098, 'import-nd2-315', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:55'),
(1099, 'import-nd2-316', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:55'),
(1100, 'import-nd2-317', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:55'),
(1101, 'import-nd2-318', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:55'),
(1102, 'import-nd2-319', NULL, 'import', '2019-09-24 06:54:55', '2019-09-24 06:54:56'),
(1103, 'import-nd2-320', NULL, 'import', '2019-09-24 06:54:56', '2019-09-24 06:54:56'),
(1104, 'import-nd2-321', NULL, 'import', '2019-09-24 06:54:56', '2019-09-24 06:54:56'),
(1105, 'import-nd2-322', NULL, 'import', '2019-09-24 06:54:56', '2019-09-24 06:54:56'),
(1106, 'import-nd2-323', NULL, 'import', '2019-09-24 06:54:56', '2019-09-24 06:54:56'),
(1107, 'import-nd2-324', NULL, 'import', '2019-09-24 06:54:56', '2019-09-24 06:54:56'),
(1108, 'import-nd2-325', NULL, 'import', '2019-09-24 06:54:56', '2019-09-24 06:54:56'),
(1109, 'import-nd2-326', NULL, 'import', '2019-09-24 06:54:56', '2019-09-24 06:54:56'),
(1110, 'import-nd2-327', NULL, 'import', '2019-09-24 06:54:56', '2019-09-24 06:54:56'),
(1111, 'import-nd2-328', NULL, 'import', '2019-09-24 06:54:56', '2019-09-24 06:54:56'),
(1112, 'import-nd2-329', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:57'),
(1113, 'import-nd2-330', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:57'),
(1114, 'import-nd2-331', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:57'),
(1115, 'import-nd2-332', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:57'),
(1116, 'import-nd2-333', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:57'),
(1117, 'import-nd2-334', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:57'),
(1118, 'import-nd2-335', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:57'),
(1119, 'import-nd2-336', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:57'),
(1120, 'import-nd2-337', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:57'),
(1121, 'import-nd2-338', NULL, 'import', '2019-09-24 06:54:57', '2019-09-24 06:54:58'),
(1122, 'import-nd2-339', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:58'),
(1123, 'import-nd2-340', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:58'),
(1124, 'import-nd2-341', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:58'),
(1125, 'import-nd2-342', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:58'),
(1126, 'import-nd2-343', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:58'),
(1127, 'import-nd2-344', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:58'),
(1128, 'import-nd2-345', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:58'),
(1129, 'import-nd2-346', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:58'),
(1130, 'import-nd2-347', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:58'),
(1131, 'import-nd2-348', NULL, 'import', '2019-09-24 06:54:58', '2019-09-24 06:54:59'),
(1132, 'import-nd2-349', NULL, 'import', '2019-09-24 06:54:59', '2019-09-24 06:54:59'),
(1133, 'import-nd2-350', NULL, 'import', '2019-09-24 06:54:59', '2019-09-24 06:54:59'),
(1134, 'import-nd2-351', NULL, 'import', '2019-09-24 06:54:59', '2019-09-24 06:54:59'),
(1135, 'import-nd2-352', NULL, 'import', '2019-09-24 06:54:59', '2019-09-24 06:55:00'),
(1136, 'import-nd2-353', NULL, 'import', '2019-09-24 06:55:00', '2019-09-24 06:55:00'),
(1137, 'import-nd2-354', NULL, 'import', '2019-09-24 06:55:00', '2019-09-24 06:55:00'),
(1138, 'import-nd2-355', NULL, 'import', '2019-09-24 06:55:00', '2019-09-24 06:55:00'),
(1139, 'import-nd2-356', NULL, 'import', '2019-09-24 06:55:00', '2019-09-24 06:55:01'),
(1140, 'import-nd2-357', NULL, 'import', '2019-09-24 06:55:01', '2019-09-24 06:55:01'),
(1141, 'import-nd2-358', NULL, 'import', '2019-09-24 06:55:01', '2019-09-24 06:55:01'),
(1142, 'import-nd2-359', NULL, 'import', '2019-09-24 06:55:01', '2019-09-24 06:55:01'),
(1143, 'import-nd2-360', NULL, 'import', '2019-09-24 06:55:01', '2019-09-24 06:55:01'),
(1144, 'import-nd2-361', NULL, 'import', '2019-09-24 06:55:01', '2019-09-24 06:55:01'),
(1145, 'import-nd2-362', NULL, 'import', '2019-09-24 06:55:01', '2019-09-24 06:55:01'),
(1146, 'import-nd2-363', NULL, 'import', '2019-09-24 06:55:01', '2019-09-24 06:55:01'),
(1147, 'import-nd2-364', NULL, 'import', '2019-09-24 06:55:01', '2019-09-24 06:55:01'),
(1148, 'import-nd2-365', NULL, 'import', '2019-09-24 06:55:02', '2019-09-24 06:55:02'),
(1149, 'import-nd2-366', NULL, 'import', '2019-09-24 06:55:02', '2019-09-24 06:55:02'),
(1150, 'import-nd2-367', NULL, 'import', '2019-09-24 06:55:02', '2019-09-24 06:55:02'),
(1151, 'import-nd2-368', NULL, 'import', '2019-09-24 06:55:02', '2019-09-24 06:55:02'),
(1152, 'import-nd2-369', NULL, 'import', '2019-09-24 06:55:02', '2019-09-24 06:55:02'),
(1153, 'import-nd2-370', NULL, 'import', '2019-09-24 06:55:02', '2019-09-24 06:55:02'),
(1154, 'import-nd2-371', NULL, 'import', '2019-09-24 06:55:02', '2019-09-24 06:55:02'),
(1155, 'import-nd2-372', NULL, 'import', '2019-09-24 06:55:02', '2019-09-24 06:55:03'),
(1156, 'import-nd2-373', NULL, 'import', '2019-09-24 06:55:03', '2019-09-24 06:55:03'),
(1157, 'import-nd2-374', NULL, 'import', '2019-09-24 06:55:03', '2019-09-24 06:55:03'),
(1158, 'import-nd2-375', NULL, 'import', '2019-09-24 06:55:03', '2019-09-24 06:55:03'),
(1159, 'import-nd2-376', NULL, 'import', '2019-09-24 06:55:03', '2019-09-24 06:55:03'),
(1160, 'import-nd2-377', NULL, 'import', '2019-09-24 06:55:03', '2019-09-24 06:55:03'),
(1161, 'import-nd2-378', NULL, 'import', '2019-09-24 06:55:03', '2019-09-24 06:55:03'),
(1162, 'import-nd2-379', NULL, 'import', '2019-09-24 06:55:03', '2019-09-24 06:55:03'),
(1163, 'import-nd2-380', NULL, 'import', '2019-09-24 06:55:03', '2019-09-24 06:55:03'),
(1164, 'import-nd2-381', NULL, 'import', '2019-09-24 06:55:04', '2019-09-24 06:55:04'),
(1165, 'import-nd2-382', NULL, 'import', '2019-09-24 06:55:04', '2019-09-24 06:55:04'),
(1166, 'import-nd2-383', NULL, 'import', '2019-09-24 06:55:04', '2019-09-24 06:55:04'),
(1167, 'import-nd2-384', NULL, 'import', '2019-09-24 06:55:04', '2019-09-24 06:55:04'),
(1168, 'import-nd2-385', NULL, 'import', '2019-09-24 06:55:04', '2019-09-24 06:55:04'),
(1169, 'import-nd2-386', NULL, 'import', '2019-09-24 06:55:04', '2019-09-24 06:55:04'),
(1170, 'import-nd2-387', NULL, 'import', '2019-09-24 06:55:04', '2019-09-24 06:55:04'),
(1171, 'import-nd2-388', NULL, 'import', '2019-09-24 06:55:04', '2019-09-24 06:55:05'),
(1172, 'import-nd2-389', NULL, 'import', '2019-09-24 06:55:05', '2019-09-24 06:55:05'),
(1173, 'import-nd2-390', NULL, 'import', '2019-09-24 06:55:05', '2019-09-24 06:55:05'),
(1174, 'import-nd2-391', NULL, 'import', '2019-09-24 06:55:05', '2019-09-24 06:55:05'),
(1175, 'import-nd2-392', NULL, 'import', '2019-09-24 06:55:05', '2019-09-24 06:55:05'),
(1176, 'import-nd2-393', NULL, 'import', '2019-09-24 06:55:05', '2019-09-24 06:55:05'),
(1177, 'import-nd2-394', NULL, 'import', '2019-09-24 06:55:05', '2019-09-24 06:55:05'),
(1178, 'import-nd2-395', NULL, 'import', '2019-09-24 06:55:05', '2019-09-24 06:55:05'),
(1179, 'import-nd2-396', NULL, 'import', '2019-09-24 06:55:05', '2019-09-24 06:55:06'),
(1180, 'import-nd2-397', NULL, 'import', '2019-09-24 06:55:06', '2019-09-24 06:55:06'),
(1181, 'import-nd2-398', NULL, 'import', '2019-09-24 06:55:06', '2019-09-24 06:55:06'),
(1182, 'import-nd2-399', NULL, 'import', '2019-09-24 06:55:06', '2019-09-24 06:55:06'),
(1183, 'import-nd2-400', NULL, 'import', '2019-09-24 06:55:06', '2019-09-24 06:55:06'),
(1184, 'import-nd2-401', NULL, 'import', '2019-09-24 06:55:06', '2019-09-24 06:55:06'),
(1185, 'import-nd2-402', NULL, 'import', '2019-09-24 06:55:06', '2019-09-24 06:55:06'),
(1186, 'import-nd2-403', NULL, 'import', '2019-09-24 06:55:07', '2019-09-24 06:55:07'),
(1187, 'import-nd2-404', NULL, 'import', '2019-09-24 06:55:07', '2019-09-24 06:55:07'),
(1188, 'import-nd2-405', NULL, 'import', '2019-09-24 06:55:07', '2019-09-24 06:55:07'),
(1189, 'import-nd2-406', NULL, 'import', '2019-09-24 06:55:07', '2019-09-24 06:55:07'),
(1190, 'import-nd2-407', NULL, 'import', '2019-09-24 06:55:07', '2019-09-24 06:55:07'),
(1191, 'import-nd2-408', NULL, 'import', '2019-09-24 06:55:07', '2019-09-24 06:55:07'),
(1192, 'import-nd2-409', NULL, 'import', '2019-09-24 06:55:07', '2019-09-24 06:55:07'),
(1193, 'import-nd2-410', NULL, 'import', '2019-09-24 06:55:07', '2019-09-24 06:55:07'),
(1194, 'import-nd2-411', NULL, 'import', '2019-09-24 06:55:07', '2019-09-24 06:55:07'),
(1195, 'import-nd2-412', NULL, 'import', '2019-09-24 06:55:08', '2019-09-24 06:55:08'),
(1196, 'import-nd2-413', NULL, 'import', '2019-09-24 06:55:08', '2019-09-24 06:55:08'),
(1197, 'import-nd2-414', NULL, 'import', '2019-09-24 06:55:08', '2019-09-24 06:55:08'),
(1198, 'import-ep2-1', '1', 'import', '2019-09-24 06:55:08', '2019-09-24 06:57:06'),
(1199, 'import-ep2-2', '2', 'import', '2019-09-24 06:55:08', '2019-09-24 06:57:06'),
(1200, 'import-ep2-3', '3', 'import', '2019-09-24 06:55:08', '2019-09-24 06:57:06'),
(1201, 'import-ep2-4', '4', 'import', '2019-09-24 06:55:08', '2019-09-24 06:57:06'),
(1202, 'import-ep2-5', '5', 'import', '2019-09-24 06:55:08', '2019-09-24 06:57:06'),
(1203, 'import-ep2-6', '6', 'import', '2019-09-24 06:55:08', '2019-09-24 06:57:06'),
(1204, 'import-ep2-7', '7', 'import', '2019-09-24 06:55:08', '2019-09-24 06:57:06'),
(1205, 'import-ep2-8', '8', 'import', '2019-09-24 06:55:09', '2019-09-24 06:57:07'),
(1206, 'import-ep2-9', '9', 'import', '2019-09-24 06:55:09', '2019-09-24 06:57:07'),
(1207, 'import-ep2-10', NULL, 'import', '2019-09-24 06:55:09', '2019-09-24 06:55:09'),
(1208, 'import-ep2-11', NULL, 'import', '2019-09-24 06:55:09', '2019-09-24 06:55:09'),
(1209, 'import-ep2-12', NULL, 'import', '2019-09-24 06:55:09', '2019-09-24 06:55:09'),
(1210, 'import-ep2-13', NULL, 'import', '2019-09-24 06:55:09', '2019-09-24 06:55:09'),
(1211, 'import-ep2-14', NULL, 'import', '2019-09-24 06:55:09', '2019-09-24 06:55:09'),
(1212, 'import-ep2-15', NULL, 'import', '2019-09-24 06:55:09', '2019-09-24 06:55:10'),
(1213, 'import-ep2-16', NULL, 'import', '2019-09-24 06:55:10', '2019-09-24 06:55:10'),
(1214, 'import-ep2-17', NULL, 'import', '2019-09-24 06:55:10', '2019-09-24 06:55:10'),
(1215, 'import-ep2-18', NULL, 'import', '2019-09-24 06:55:10', '2019-09-24 06:55:10'),
(1216, 'import-ep2-19', NULL, 'import', '2019-09-24 06:55:10', '2019-09-24 06:55:10'),
(1217, 'import-ep2-20', NULL, 'import', '2019-09-24 06:55:10', '2019-09-24 06:55:10'),
(1218, 'import-ep2-21', NULL, 'import', '2019-09-24 06:55:10', '2019-09-24 06:55:10'),
(1219, 'import-ep2-22', NULL, 'import', '2019-09-24 06:55:10', '2019-09-24 06:55:10'),
(1220, 'import-ep2-23', NULL, 'import', '2019-09-24 06:55:10', '2019-09-24 06:55:10'),
(1221, 'import-ep2-24', NULL, 'import', '2019-09-24 06:55:11', '2019-09-24 06:55:11'),
(1222, 'import-ep2-25', NULL, 'import', '2019-09-24 06:55:11', '2019-09-24 06:55:11'),
(1223, 'import-ep2-26', NULL, 'import', '2019-09-24 06:55:11', '2019-09-24 06:55:11'),
(1224, 'import-ep2-27', NULL, 'import', '2019-09-24 06:55:11', '2019-09-24 06:55:11'),
(1225, 'import-ep2-28', NULL, 'import', '2019-09-24 06:55:11', '2019-09-24 06:55:11'),
(1226, 'import-ep2-29', NULL, 'import', '2019-09-24 06:55:11', '2019-09-24 06:55:11'),
(1227, 'import-ep2-30', NULL, 'import', '2019-09-24 06:55:11', '2019-09-24 06:55:11'),
(1228, 'import-ep2-31', NULL, 'import', '2019-09-24 06:55:11', '2019-09-24 06:55:11'),
(1229, 'import-ep2-32', NULL, 'import', '2019-09-24 06:55:11', '2019-09-24 06:55:11'),
(1230, 'import-ep2-33', NULL, 'import', '2019-09-24 06:55:12', '2019-09-24 06:55:12'),
(1231, 'import-ep2-34', NULL, 'import', '2019-09-24 06:55:12', '2019-09-24 06:55:12'),
(1232, 'import-ep2-35', NULL, 'import', '2019-09-24 06:55:12', '2019-09-24 06:55:12'),
(1233, 'import-ep2-36', NULL, 'import', '2019-09-24 06:55:12', '2019-09-24 06:55:12'),
(1234, 'import-ep2-37', NULL, 'import', '2019-09-24 06:55:12', '2019-09-24 06:55:12'),
(1235, 'import-ep2-38', NULL, 'import', '2019-09-24 06:55:12', '2019-09-24 06:55:12'),
(1236, 'import-ep2-39', NULL, 'import', '2019-09-24 06:55:12', '2019-09-24 06:55:12'),
(1237, 'import-ep2-40', NULL, 'import', '2019-09-24 06:55:12', '2019-09-24 06:55:12'),
(1238, 'import-ep2-41', NULL, 'import', '2019-09-24 06:55:12', '2019-09-24 06:55:12'),
(1239, 'import-ep2-42', NULL, 'import', '2019-09-24 06:55:13', '2019-09-24 06:55:13'),
(1240, 'import-ep2-43', NULL, 'import', '2019-09-24 06:55:13', '2019-09-24 06:55:13'),
(1241, 'import-ep2-44', NULL, 'import', '2019-09-24 06:55:13', '2019-09-24 06:55:13'),
(1242, 'import-ep2-45', NULL, 'import', '2019-09-24 06:55:13', '2019-09-24 06:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `receiver_addresses`
--

CREATE TABLE `receiver_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `zone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gstin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receiver_addresses`
--

INSERT INTO `receiver_addresses` (`id`, `cust_id`, `zone`, `name`, `address`, `city`, `state`, `country`, `gstin`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(13, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '12346789', '+917776960995', 'f24aalam@gmail.com', '2019-12-23 21:56:48', '2019-12-23 21:56:48'),
(14, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '12346789', '+917776960995', 'f24aalam@gmail.com', '2019-12-23 21:59:16', '2019-12-23 21:59:16'),
(15, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '12346789', '+917776960995', 'f24aalam@gmail.com', '2019-12-23 22:00:33', '2019-12-23 22:00:33'),
(16, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '12346789', '+917776960995', 'f24aalam@gmail.com', '2019-12-23 22:04:12', '2019-12-23 22:04:12'),
(17, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '12346789', '+917776960995', 'f24aalam@gmail.com', '2019-12-23 22:04:20', '2019-12-23 22:04:20'),
(18, NULL, 'Zone-1', 'Faizan Aalam', 'Bandenawaz Nagar\r\n131', 'Nagpur', 'Maharashtra', 'India', '12346789', '+917776960995', 'f24aalam@gmail.com', '2019-12-23 22:04:27', '2019-12-23 22:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-09-16 08:38:36', '2019-09-16 08:38:36'),
(2, 'user', 'Normal User', '2019-09-16 08:38:36', '2019-09-16 08:38:36'),
(3, 'employee', 'Employee', '2019-10-01 06:15:51', '2019-10-01 06:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `sender_addresses`
--

CREATE TABLE `sender_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gstin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sender_addresses`
--

INSERT INTO `sender_addresses` (`id`, `cust_id`, `name`, `address`, `city`, `state`, `country`, `gstin`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(15, 1, 'Faizan Aalam', 'Bandenawaz Nagar', 'Nagpur', 'Maharashtra', 'India', '9876543210', '07776960995', 'f24aalam@gmail.com', '2019-12-23 21:56:48', '2019-12-23 21:56:48'),
(16, 1, 'Faizan Aalam', 'Bandenawaz Nagar', 'Nagpur', 'Maharashtra', 'India', '9876543210', '07776960995', 'f24aalam@gmail.com', '2019-12-23 21:59:16', '2019-12-23 21:59:16'),
(17, 1, 'Faizan Aalam', 'Bandenawaz Nagar', 'Nagpur', 'Maharashtra', 'India', '9876543210', '07776960995', 'f24aalam@gmail.com', '2019-12-23 22:00:33', '2019-12-23 22:00:33'),
(18, 1, 'Faizan Aalam', 'Bandenawaz Nagar', 'Nagpur', 'Maharashtra', 'India', '9876543210', '07776960995', 'f24aalam@gmail.com', '2019-12-23 22:04:12', '2019-12-23 22:04:12'),
(19, 1, 'Faizan Aalam', 'Bandenawaz Nagar', 'Nagpur', 'Maharashtra', 'India', '9876543210', '07776960995', 'f24aalam@gmail.com', '2019-12-23 22:04:20', '2019-12-23 22:04:20'),
(20, 1, 'Faizan Aalam', 'Bandenawaz Nagar', 'Nagpur', 'Maharashtra', 'India', '9876543210', '07776960995', 'f24aalam@gmail.com', '2019-12-23 22:04:27', '2019-12-23 22:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$1dsm3pZJYo230TAT1WFbbuL3Tthf3vrqvJPcvt9vynQNMlKnpos9.', 'XjURrllRypAMJn2WMoMQlFTbkdYrhu1qKVNM2VAaeLN62mwGbPcm4pLCCDNN', NULL, '2019-09-16 08:39:06', '2019-09-16 08:39:07'),
(3, 3, 'User One', 'user@user.com', 'users/default.png', NULL, '$2y$10$GbUbe24QLA4LiV1Sm8Bqzeqbz31OcpiEg0KZx5umhvEojITiuNrBy', NULL, '{\"locale\":\"en\"}', '2019-10-18 05:05:18', '2019-11-17 08:09:26'),
(4, NULL, 'Faizan Aalam', 'f24aalam@gmail.com', 'users/default.png', NULL, '$2y$10$MzCoZMLQLJSODVCU9ylhjec6AX0WHF0PtUWNdXzKg5C2hsY8SomBS', NULL, '{\"locale\":\"en\"}', '2019-10-18 05:16:58', '2019-10-18 05:16:58'),
(5, 2, 'Faizan Aalam', 'f24@gmail.com', 'users/default.png', NULL, '$2y$10$NVLZFBbl5po436xaZ6S54eZ6lV41FOyYO3pHybw5bfM22gKd2sJBO', NULL, '{\"locale\":\"en\"}', '2019-10-18 07:20:58', '2019-10-18 07:20:58'),
(6, NULL, 'Faizan Aalam', 'f24aalam@g.com', 'users/default.png', NULL, '$2y$10$ueqfgNYS8I.F7gfuOLR3euYkOX40ySRC7Et638InrTxDpvcCcWzQu', NULL, '{\"locale\":\"en\"}', '2019-10-18 08:40:14', '2019-10-18 08:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `volumns`
--

CREATE TABLE `volumns` (
  `id` int(10) UNSIGNED NOT NULL,
  `docket_id` int(11) DEFAULT NULL,
  `goods_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `kg` int(11) DEFAULT NULL,
  `grams` int(11) DEFAULT NULL,
  `l` int(11) DEFAULT NULL,
  `h` int(11) DEFAULT NULL,
  `w` int(11) DEFAULT NULL,
  `final_weight` double DEFAULT NULL,
  `charge_weight` double DEFAULT NULL,
  `amnt_rs` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `walking_customers`
--

CREATE TABLE `walking_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gstin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind_attn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dockets`
--
ALTER TABLE `dockets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_customers`
--
ALTER TABLE `invoice_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices_2`
--
ALTER TABLE `prices_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receiver_addresses`
--
ALTER TABLE `receiver_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sender_addresses`
--
ALTER TABLE `sender_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `volumns`
--
ALTER TABLE `volumns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walking_customers`
--
ALTER TABLE `walking_customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dockets`
--
ALTER TABLE `dockets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_customers`
--
ALTER TABLE `invoice_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2096185;

--
-- AUTO_INCREMENT for table `prices_2`
--
ALTER TABLE `prices_2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1243;

--
-- AUTO_INCREMENT for table `receiver_addresses`
--
ALTER TABLE `receiver_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sender_addresses`
--
ALTER TABLE `sender_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `volumns`
--
ALTER TABLE `volumns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `walking_customers`
--
ALTER TABLE `walking_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
