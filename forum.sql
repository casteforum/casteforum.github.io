-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 11:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `attivita`
--

CREATE TABLE `attivita` (
  `ID` int(11) NOT NULL,
  `Giorno` smallint(6) NOT NULL,
  `Sede` tinyint(4) NOT NULL,
  `Turno` tinyint(4) NOT NULL,
  `Titolo` varchar(255) NOT NULL,
  `Info` text NOT NULL,
  `Categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attivita`
--

INSERT INTO `attivita` (`ID`, `Giorno`, `Sede`, `Turno`, `Titolo`, `Info`, `Categoria`) VALUES
(1, 0, 0, 0, 'sede g1 t1', 'i1', 'c1'),
(2, 0, 0, 1, 'sede g1 t2', 'i2', 'c2'),
(3, 0, 1, 0, 'succ g1 t1', 'i3', 'c3'),
(4, 0, 1, 1, 'succ g1 t2', 'i4', 'c4'),
(5, 1, 0, 0, 'sede g2 t1', 'i1', 'c1'),
(6, 1, 0, 1, 'sede g2 t2', 'i2', 'c2'),
(7, 1, 1, 0, 'succ g2 t1', 'i3', 'c3'),
(8, 1, 1, 1, 'succ g2 t2', 'i4', 'c4'),
(9, 2, 0, 0, 'sede g3 t1', 'i1', 'c1'),
(10, 2, 0, 1, 'sede g3 t2', 'i2', 'c2'),
(11, 2, 1, 0, 'succ g3 t1', 'i3', 'c3'),
(12, 2, 1, 1, 'succ g3 t2', 'i4', 'c4');

-- --------------------------------------------------------

--
-- Table structure for table `utenti`
--

CREATE TABLE `utenti` (
  `NC` varchar(255) NOT NULL,
  `ID` varchar(255) NOT NULL,
  `giorni` varchar(3) NOT NULL,
  `att` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utenti`
--

INSERT INTO `utenti` (`NC`, `ID`, `giorni`, `att`) VALUES
('NICCOLO&#039; FREDDUCCI', '7703452', '133', '3 | 4 | -1 | -1 | -1 | -1'),
('MATTEO FORNAINI', '7703885', '133', '2 | 3 | -1 | -1 | -1 | -1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attivita`
--
ALTER TABLE `attivita`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `utenti`
--
ALTER TABLE `utenti`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attivita`
--
ALTER TABLE `attivita`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
