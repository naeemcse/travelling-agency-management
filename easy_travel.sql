-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 09:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easy_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `ordertour`
--

CREATE TABLE `ordertour` (
  `Place` varchar(50) NOT NULL,
  `Member` int(11) NOT NULL DEFAULT 1,
  `ArrivalDate` date NOT NULL,
  `LeaveDate` date NOT NULL,
  `Comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordertour`
--

INSERT INTO `ordertour` (`Place`, `Member`, `ArrivalDate`, `LeaveDate`, `Comment`) VALUES
('Salbon Bihar', 2, '2024-12-09', '2024-12-12', 'We want to a wonderful environment and a healthy food.'),
('Cox Bazar', 2, '2024-12-09', '2024-12-12', 'We want to a wonderful environment and a healthy food.'),
('Sundar  Ban', 6, '2024-12-17', '2024-12-22', 'We need Ship and Speed Boad.'),
('Sundar  Ban', 6, '2024-12-17', '2024-12-22', 'We need Ship and Speed Boad.'),
('Sylhet', 0, '0000-00-00', '0000-00-00', ''),
('Sylhet', 10, '2024-12-10', '2024-12-20', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Name` varchar(20) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Name`, `Mobile`, `Email`, `Password`) VALUES
('Najmul Islam Naeem', '01867210892', 'naeem@gmal.com', '1234'),
('Najmul Islam Naeem', '01867210892', 'naeem@gmal.com', '1234'),
('Hasibul Hasan Rizvi', '018..', 'rizvi@gmail.com', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
