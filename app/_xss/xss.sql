-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 29, 2016 at 02:00 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xss`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL,
  `log` text NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`id`, `log`, `hora`) VALUES
(9152, 'PHPSESSID=pes1h2essmmm6svo0ue52l3ma6', '2016-12-17 15:31:40'),
(9153, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6Ik1hcmPDo28gZG9ubyBkbyBzaXRlIiwiYWRtaW4iOnRydWUsInVzZXJuYW1lIjoiYWRtaW4iLCJ1aWQiOjF9.maQil1sjd-UYoomiJjm_29gCnMue7OszkmvOR8j_5F8', '2016-12-17 15:31:55'),
(9154, 'PHPSESSID=pes1h2essmmm6svo0ue52l3ma6', '2016-12-17 15:31:55'),
(9155, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6Ik1hcmPDo28gZG9ubyBkbyBzaXRlIiwiYWRtaW4iOnRydWUsInVzZXJuYW1lIjoiYWRtaW4iLCJ1aWQiOjF9.maQil1sjd-UYoomiJjm_29gCnMue7OszkmvOR8j_5F8', '2016-12-17 15:36:00'),
(9156, 'PHPSESSID=pes1h2essmmm6svo0ue52l3ma6', '2016-12-17 15:36:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9157;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
