-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/08/2023 às 21:14
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `oficina2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `cliente` varchar(20) NOT NULL,
  `vendedor` varchar(18) NOT NULL,
  `descricao` varchar(18) NOT NULL,
  `data` date NOT NULL,
  `hora` varchar(6) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `cliente`, `vendedor`, `descricao`, `data`, `hora`, `valor`) VALUES
(1, 'Abbot Mcintosh', 'Hilel Houston', 'Madonna French', '2024-08-17', '3:13', 647),
(2, 'Tanek Manning', 'Wallace Frost', 'Colby Mack', '2024-08-19', '7:51', 5205),
(3, 'Abbot Mcintosh', 'September Holmes', 'Aspen Beasley', '2024-08-20', '11:42', 8267),
(4, 'Abbot Mcintosh', 'Hilel Houston', 'Byron Bowers', '2024-08-18', '3:49', 2217),
(5, 'Abbot Mcintosh', 'Hilel Houston', 'Baker Delgado', '2024-08-18', '3:09', 1492),
(6, 'Abbot Mcintosh', 'Hilel Houston', 'Colleen Huffman', '2024-08-20', '10:01', 4144),
(7, 'Tanek Manning', 'Hilel Houston', 'Lawrence Stokes', '2024-08-19', '12:35', 6264),
(8, 'Tanek Manning', 'Hilel Houston', 'Germane Allen', '2024-08-20', '10:50', 6237),
(9, 'Tanek Manning', 'Wallace Frost', 'Quentin Kidd', '2024-08-17', '11:15', 8860),
(10, 'Tanek Manning', 'Wallace Frost', 'Elmo Wilkinson', '2024-08-20', '9:37', 7523),
(11, 'Rebekah Marsh', 'Wallace Frost', 'Gannon Mathis', '2024-08-19', '12:35', 10096),
(12, 'Richard Watson', 'Wallace Frost', 'Lael Hardy', '2024-08-20', '4:42', 3317),
(13, 'Devin Landry', 'Wallace Frost', 'Hakeem Barker', '2024-08-19', '1:56', 450),
(14, 'Brent Decker', 'September Holmes', 'Nevada Burton', '2024-08-20', '3:00', 10890),
(15, 'Tyrone Morse', 'September Holmes', 'Felix Rodgers', '2024-08-19', '4:52', 3573),
(16, 'Melanie Neal', 'September Holmes', 'Jerry Cortez', '2024-08-20', '8:57', 6519),
(17, 'Breanna Roach', 'September Holmes', 'Peter Lara', '2024-08-19', '4:18', 4667),
(18, 'Abbot Mcintosh', 'Jillian Valenzuela', 'Lysandra Ray', '2024-08-19', '11:06', 6779),
(19, 'Abbot Mcintosh', 'Harrison Dejesus', 'Quintessa Le', '2024-08-19', '6:41', 8400),
(20, 'Abbot Mcintosh', 'Phillip Salinas', 'Galvin Clay', '2024-08-20', '4:12', 3912),
(21, 'Abbot Mcintosh', 'Mufutau Mcconnell', 'Gage Calderon', '2024-08-20', '2:43', 3648),
(22, 'Tanek Manning', 'Drake Massey', 'Sonya Peters', '2024-08-19', '9:26', 1635),
(23, 'Tanek Manning', 'Aidan Martinez', 'Ora Duffy', '2024-08-20', '10:33', 2607),
(24, 'Tanek Manning', 'Xena Velez', 'Abraham Gill', '2024-08-18', '11:58', 7348),
(25, 'Tanek Manning', 'Patience Reilly', 'Lael Harvey', '2024-08-17', '10:20', 5475),
(26, 'Wesley Meadows', 'Quinn Whitfield', 'Howard Munoz', '2024-08-17', '9:47', 2072),
(27, 'Felix Preston', 'Kane Jimenez', 'Avye Foley', '2024-08-19', '3:41', 5531),
(28, 'Oliver Russell', 'Nash Murphy', 'Alden Lott', '2024-08-20', '12:54', 2216),
(29, 'Fitzgerald Salazar', 'Unity Larson', 'Rhoda Pearson', '2024-08-18', '9:00', 5524),
(30, 'Allistair Hogan', 'Gil Mercado', 'Hayden Andrews', '2024-08-18', '8:54', 6912),
(31, 'Olympia Wiley', 'Marah Meadows', 'Gavin Newton', '2024-08-20', '11:57', 3213),
(32, 'Gavin Wells', 'Alma Rojas', 'Dai English', '2024-08-17', '1:45', 2601),
(33, 'Trevor Odom', 'Cade Brady', 'Joelle Lambert', '2024-08-18', '8:00', 2354),
(34, 'Oleg Casey', 'Conan Mullins', 'Chandler Phelps', '2024-08-18', '1:45', 1218),
(35, 'Fredericka Wilkinson', 'Tamara Bass', 'Ifeoma Greer', '2024-08-20', '12:36', 10166),
(36, 'Aline Holder', 'India Spence', 'Avram Lowery', '2024-08-19', '8:36', 3996),
(37, 'Harriet Cohen', 'Mikayla Phillips', 'Carter Thomas', '2024-08-20', '11:35', 4583),
(38, 'Ivan Contreras', 'Inez Rhodes', 'Ariana Sellers', '2024-08-18', '7:29', 1369),
(39, 'Evangeline Cole', 'Kevin Morales', 'Quamar Horton', '2024-08-19', '3:38', 6793),
(40, 'Gavin Mcfadden', 'Xander Juarez', 'Emi Browning', '2024-08-18', '2:33', 8471),
(41, 'Irma Medina', 'Hope Lee', 'Nero Nolan', '2024-08-18', '11:22', 10178),
(42, 'Yuli Fitzgerald', 'Leah Frank', 'Angela Garza', '2024-08-19', '1:17', 6543),
(43, 'Renee Diaz', 'Timon Blevins', 'Peter Jones', '2024-08-18', '6:13', 7738),
(44, 'Joshua Sherman', 'Adam Stanley', 'Noelani Vincent', '2024-08-19', '12:56', 9054),
(45, 'Brent Hughes', 'Oprah Lambert', 'Calvin Chang', '2024-08-17', '11:44', 3368),
(46, 'Quinn Pace', 'Inez Tillman', 'Roth Hester', '2024-08-19', '6:11', 3274),
(47, 'Olga Bass', 'Simon Reynolds', 'Yoko O\'Neill', '2024-08-17', '11:46', 2861),
(48, 'Autumn Ortiz', 'Fitzgerald Ellis', 'Charity Barry', '2024-08-17', '7:04', 6458),
(49, 'Jael Mcdaniel', 'Chiquita Solomon', 'Geoffrey Whitfield', '2024-08-17', '4:37', 10370),
(50, 'Rose Glover', 'Macon Glenn', 'Galvin Donovan', '2024-08-19', '6:39', 5497),
(51, 'Gemma Graham', 'Harding Garrison', 'Jonas Solis', '2024-08-19', '3:50', 10515),
(52, 'Lisandra Strong', 'Keefe Mckee', 'Ivor Singleton', '2024-08-19', '8:47', 799),
(53, 'Chandler Collins', 'Ila Johnston', 'Ivy Wallace', '2024-08-18', '6:43', 8389),
(54, 'Sacha Morales', 'Leslie Kirkland', 'Porter Weiss', '2024-08-19', '11:07', 4541),
(55, 'Colin Talley', 'Dieter Lynch', 'Lynn Navarro', '2024-08-18', '9:01', 999),
(56, 'Pascale Stewart', 'Prescott Miles', 'Chelsea Hebert', '2024-08-20', '12:56', 3055),
(57, 'Noel Humphrey', 'Samantha Walters', 'Leonard Fernandez', '2024-08-19', '2:09', 1079),
(58, 'Lionel Giles', 'Sydney Jefferson', 'Orlando Abbott', '2024-08-20', '10:47', 7142),
(59, 'Cheyenne Ingram', 'Martha Sutton', 'Ramona Foster', '2024-08-18', '9:42', 3639),
(60, 'Steven French', 'Rowan Key', 'Marshall Myers', '2024-08-17', '8:09', 7949),
(61, 'Dennis Terry', 'Margaret Holder', 'Zachery Benson', '2024-08-18', '4:44', 1378),
(62, 'Selma Mcguire', 'Malachi Graham', 'Callie Goodman', '2024-08-18', '8:21', 4813),
(63, 'Alika Snider', 'Tarik Franks', 'Gwendolyn Wagner', '2024-08-19', '7:17', 2669),
(64, 'Mallory Charles', 'Hyatt Miles', 'Joelle Bates', '2024-08-18', '12:06', 7116),
(65, 'Cara Reid', 'Nicholas Robbins', 'Larissa Henson', '2024-08-18', '10:40', 3235),
(66, 'Rachel Lester', 'Gannon Wiley', 'Noble Finley', '2024-08-19', '1:37', 6154),
(67, 'McKenzie Barnett', 'Hu Dorsey', 'Theodore Dejesus', '2024-08-19', '12:30', 9688),
(68, 'Oren Zamora', 'Quintessa Preston', 'Zena Dillon', '2024-08-17', '10:00', 1396),
(69, 'Chantale Mckee', 'Clark Abbott', 'Macey Lindsey', '2024-08-18', '11:34', 4166),
(70, 'Jamal Patton', 'Whitney Chen', 'Macaulay Goodwin', '2024-08-18', '4:05', 6350),
(71, 'Jackson Franklin', 'Peter Workman', 'Fleur Justice', '2024-08-20', '10:10', 4670),
(72, 'Vernon England', 'Tarik Lane', 'Nehru Kent', '2024-08-17', '6:31', 2946),
(73, 'Justina Warner', 'Elmo Winters', 'Bernard Dyer', '2024-08-20', '11:22', 5362),
(74, 'Ali Lawson', 'Erin Harding', 'Omar Roman', '2024-08-19', '8:48', 7805),
(75, 'Tucker Hobbs', 'Sacha Neal', 'Zeus Pierce', '2024-08-20', '4:14', 8448),
(76, 'Shea Mccullough', 'Andrew Conway', 'Timothy Hart', '2024-08-20', '9:30', 236),
(77, 'Xaviera Hendricks', 'Madeson Young', 'Jasper Conner', '2024-08-18', '10:37', 3402),
(78, 'Harper Poole', 'Sydney Blair', 'Cairo Robbins', '2024-08-19', '5:40', 7440),
(79, 'Sheila Myers', 'Zane Mendoza', 'Peter Dyer', '2024-08-19', '6:17', 6504),
(80, 'Summer Burch', 'Roary Graves', 'Dustin Dawson', '2024-08-19', '8:07', 5241),
(81, 'Alan Lyons', 'Shelby Hays', 'Belle Blair', '2024-08-19', '3:19', 3530),
(82, 'Joy Potter', 'Lamar Castro', 'Joelle Saunders', '2024-08-18', '5:07', 8151),
(83, 'Harlan Gates', 'Judith Branch', 'Fredericka Gibbs', '2024-08-20', '3:46', 2988),
(84, 'Xanthus Hurley', 'Mia Blanchard', 'Scott Golden', '2024-08-20', '9:42', 5939),
(85, 'Oleg Wells', 'Melinda Carson', 'Camden O\'Neill', '2024-08-17', '2:23', 2685),
(86, 'Cullen Tyler', 'Yuri Harris', 'Sylvester Trevino', '2024-08-19', '7:43', 10204),
(87, 'Demetria Gonzalez', 'Lev Wade', 'Freya Santos', '2024-08-20', '4:10', 2850),
(88, 'Patience Jackson', 'Xavier Mathews', 'Tana Madden', '2024-08-18', '5:56', 3880),
(89, 'Hedy Bryan', 'Caldwell Reyes', 'Alisa Stone', '2024-08-20', '6:35', 9830),
(90, 'Oprah Rivers', 'Cody Phelps', 'Haviva Vaughn', '2024-08-18', '8:53', 5332),
(91, 'Wesley Burris', 'Plato Kirk', 'Hiram Mccarty', '2024-08-19', '12:10', 10323),
(92, 'Marny Erickson', 'Jonah Welch', 'Hayley Reeves', '2024-08-19', '3:37', 9403),
(93, 'Fredericka Ware', 'Curran Harrington', 'Marny Mcdowell', '2024-08-20', '12:26', 6325),
(94, 'Knox Dawson', 'Seth Foreman', 'Baxter Kirby', '2024-08-18', '3:20', 2968),
(95, 'Paki Moore', 'Zachary Tanner', 'Graham Brewer', '2024-08-19', '11:06', 2754),
(96, 'Josiah Ellis', 'Evelyn Rodriquez', 'Shaine Greene', '2024-08-17', '9:03', 7825),
(97, 'Tanner Woodward', 'Trevor Mosley', 'Dominic Santiago', '2024-08-18', '11:36', 2872),
(98, 'Daquan Stanton', 'Velma French', 'Idona Kirk', '2024-08-17', '1:28', 8580),
(99, 'Reece Key', 'Gannon Oneal', 'Christopher Jarvis', '2024-08-17', '2:16', 7101),
(100, 'Clarke Cochran', 'Lynn Elliott', 'Cameron Frazier', '2024-08-20', '9:06', 818);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
