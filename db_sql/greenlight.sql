-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 08:46 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenlight`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_no` int(30) NOT NULL,
  `patient_id` int(30) NOT NULL,
  `speciality` varchar(30) NOT NULL,
  `medical_condition` text,
  `doctors_suggestion` varchar(30) DEFAULT NULL,
  `payment_amount` int(199) DEFAULT NULL,
  `case_closed` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_no`, `patient_id`, `speciality`, `medical_condition`, `doctors_suggestion`, `payment_amount`, `case_closed`) VALUES
(1, 7, 'Audiologist', 'jfyyy', NULL, NULL, NULL),
(2, 8, 'Audiologist', 'nsg gdnd nd', NULL, NULL, NULL),
(3, 5, 'Allergist', 'ereterteryery', NULL, NULL, NULL),
(4, 12, 'Cardiologist', 'ngdnddn', NULL, NULL, NULL),
(5, 14, 'Dermatologist', 'sbg d n', NULL, NULL, NULL),
(6, 13, 'Cardiologist', 'frgrghrwghwwrghw', NULL, NULL, NULL),
(7, 22, 'Audiologist', 'cough', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `speciality` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`email`, `password`, `fullname`, `speciality`) VALUES
('chiran@gmail.com', 'a', 'Chiran nallaperuma', 'Allergist'),
('chirannad@gmail.com', 'a', 'Chiran nallaperuma', 'Anesthesiologist'),
('doctor@doctor.com', 'doctor', 'Doctor', 'Audiologist'),
('gayan@gayan.com', 'gayan', 'Gayan', 'Cardiologist'),
('sanduni@gmail.com', 'sanduni', 'Sanduni imalsha', 'Cardiologist'),
('supun1@gmail.com', 'supun', 'Supun', 'Endocrinologist');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='stores information about nurse';

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`email`, `password`, `fullname`) VALUES
('lakshan@1233.com', 'lakshan', 'Lakshan'),
('nurse@nurse.com', 'nurse', 'Nurse');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` int(10) NOT NULL,
  `phone_no` int(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`firstname`, `lastname`, `address`, `age`, `phone_no`, `email`, `password`) VALUES
('chiran', 'nallaperuma', 'weligama,welipitiya', 56, 775420561, 'chi@gmail.com', 'chiran'),
('chiran ', 'nallaperuma', 'university of colombo', 24, 775420561, 'chiran@12.com', 'chiran'),
('chiran', 'nallaperuma', 'weligama,welipitiya', 12, 771059431, 'chirannad@gmail.com', 'chiran'),
('gayan', 'nallaperuma', 'frwevgrf', 6, 775420561, 'gayan@1.com', 'gayan'),
('chiran', 'nallaperuma', 'frwevgrf', 4, 775420561, 'gayan@12.com', 'gayan'),
('gayan', 'nallaperuma', 'weligama', 12, 2147483647, 'gayan@12gmail.com', 'gayan'),
('gayan', 'nallaperuma', 'bvvssbsjbvks', 4, 771059431, 'gayan@gmail.com', 'gayan'),
('Hima', 'Wije', 'sjgafhjmf', 22, 65438, 'hima@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `patient_Id` int(20) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `DOB` int(10) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `address` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='patient';

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`patient_Id`, `full_name`, `DOB`, `phone_no`, `address`) VALUES
(7, 'Chiran', 1, '02222222', 'djtycjj'),
(8, 'Lakshan', 4, '02222222', 'efzfsfb'),
(5, 'Lakshan', 45, '0775420561', 'retretert '),
(12, 'Chiran', 2, '02222222', 'evfbzbsb'),
(14, 'Lakshan', 4, '3574', 'fhmmm'),
(13, 'Chiran nallaperuma', 24, '0775420561', 'university of colombo'),
(22, 'Hima', 22, '364536', 'jksgjakgf');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='stores information about receptionist';

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`email`, `password`, `fullname`) VALUES
('receptionist@receptionist.com', 'receptionist', 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`) VALUES
(1, 'admin@admin.com', 'admin', 1),
(2, 'doctor@doctor.com', 'doctor', 2),
(3, 'nurse@nurse.com', 'nurse', 3),
(4, 'receptionist@receptionist.com', 'receptionist', 4),
(5, 'chirannad@gmail.com', 'chiran', 5),
(7, 'chi@gmail.com', 'chiran', 5),
(8, 'gayan@gmail.com', 'gayan', 5),
(10, 'chiran@gmail.com', 'a', 2),
(11, 'gayan@gayan.com', 'gayan', 2),
(12, 'gayan@12.com', 'gayan', 5),
(13, 'chiran@12.com', 'chiran', 2),
(14, 'gayan@1.com', 'gayan', 5),
(15, 'lakshan@1233.com', 'lakshan', 3),
(16, 'sanduni@gmail.com', 'sanduni', 2),
(17, 'supun1@gmail.com', 'supun', 2),
(21, 'gayan@12gmail.com', 'gayan', 5),
(22, 'hima@gmail.com', '1234', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_no`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_no` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
