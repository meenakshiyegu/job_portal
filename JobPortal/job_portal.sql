-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 08:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_description` varchar(200) NOT NULL,
  `company_size` int(11) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_description`, `company_size`, `company_email`, `company_website`) VALUES
(1, 'xyz', '', 1, 'xyz@zyz.com', 'xyz.ae'),
(2, 'crossover for work', 'Crossovers mission is to democratize access to impactful, high-paying jobs. We recruit and screen only people with exemplary skills and drive to work with the worlds best businesses.', 3, 'hr@crossover.com', 'crossover.com'),
(3, 'Accenture', 'Accenture is a global professional services company with leading capabilities in digital, cloud and security. Combining unmatched experience and specialized skills across more than 40 industries, we o', 3, 'hr@accenture.com', 'accenture.com'),
(4, 'IBM', 'Software Developers at IBM are the backbone of our strategic initiatives to design, code, test, and provide industry-leading solutions that make the world run today - planes and trains take off on tim', 4, 'hr@ibm.com', 'ibm.com'),
(5, 'QualComm', 'As we unlock 5G, we’re applying our mobile expertise to transform industries, create jobs, and enrich lives. | Posting guidelines: http://bit.ly/1sKRdOT.', 2, 'hr@qualcomm.com', 'qualcomm.com'),
(6, 'kyndryl', 'We have the world’s best talent that design, run, and manage the most advanced and reliable technology infrastructure each day. Together, we think holistically about the health of these vital technolo', 2, 'hr@kyndryl.com', 'kyndryl.com'),
(7, 'media melon', 'MediaMelon offers a SmartSuite of streaming video analytics solutions purpose-built for OTT providers to power the delivery of high-quality streaming experiences. ', 1, 'hr@medianmelon.com', 'mediamelon.com'),
(8, 'fact set', 'FactSet creates flexible, open data and software solutions for tens of thousands of investment professionals around the world, providing instant access to financial data and analytics that investors u', 2, 'hr@factset.com', 'factset.com'),
(9, 'digicert', 'DigiCert is the only provider of enterprise-grade SSL, IoT and PKI solutions. The world’s top banks, e-commerce retailers, healthcare providers, manufacturers and technology companies rely on us to se', 3, 'hr@digicert.com', 'digicert.com'),
(10, 'McAfee', 'McAfee is a global organization with a 30-year history and a brand known the world over for innovation, collaboration and trust.', 1, 'hr@mcafee.com', 'mcafee.com');

-- --------------------------------------------------------

--
-- Table structure for table `company_size`
--

CREATE TABLE `company_size` (
  `company_size_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_size`
--

INSERT INTO `company_size` (`company_size_id`, `name`) VALUES
(1, 'less than 10 employees'),
(2, '11 to 50 employees'),
(3, '50 to 1000 employees'),
(4, 'more than 1000 employees');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_title_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_description` varchar(250) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `job_skill_list_id` int(11) NOT NULL,
  `date_posted` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title_id`, `location_id`, `company_id`, `job_description`, `job_type_id`, `job_skill_list_id`, `date_posted`) VALUES
(1, 4, 1, 2, 'At least 4-6 years of experience in product development including design and development tasks along with Code review / bug analysis / Unit Testing.\r\nA proven track record of developing/shipping high quality, scalable software in Linux, or *NIX platf', 1, 1, '0000-00-00'),
(2, 4, 4, 3, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 1, 2, '0000-00-00'),
(3, 2, 3, 4, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 3, 3, '0000-00-00'),
(4, 2, 6, 10, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 3, 4, '0000-00-00'),
(5, 3, 2, 5, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 5, 5, '0000-00-00'),
(6, 3, 5, 8, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 4, 5, '0000-00-00'),
(7, 1, 1, 9, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 1, 5, '0000-00-00'),
(8, 1, 3, 7, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 1, 6, '0000-00-00'),
(9, 11, 4, 7, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 1, 3, '0000-00-00'),
(10, 11, 2, 4, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 4, 5, '0000-00-00'),
(11, 9, 4, 5, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 1, 2, '0000-00-00'),
(12, 9, 6, 3, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 1, 6, '0000-00-00'),
(13, 7, 6, 4, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 1, 1, '0000-00-00'),
(14, 7, 5, 2, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 1, 3, '0000-00-00'),
(15, 6, 3, 1, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 3, 10, '0000-00-00'),
(16, 6, 4, 8, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 1, 9, '0000-00-00'),
(17, 5, 4, 6, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 4, 8, '0000-00-00'),
(18, 5, 4, 9, 'Should have programming, debugging experience, and excellent problem solving skills. Proven knowledge of debugging using tools like gdb and crash.', 4, 7, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `job_skill`
--

CREATE TABLE `job_skill` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_skill`
--

INSERT INTO `job_skill` (`skill_id`, `skill_name`) VALUES
(1, 'Angular JS'),
(2, 'Node JS'),
(3, 'React'),
(4, 'Java'),
(5, 'PHP'),
(6, 'Mysql'),
(7, 'HTML'),
(8, 'CSS'),
(9, 'JQuery'),
(10, 'Ruby'),
(11, 'dot net'),
(12, 'AWS'),
(13, 'Python'),
(14, 'MongoDB'),
(15, 'Oracle');

-- --------------------------------------------------------

--
-- Table structure for table `job_skill_map`
--

CREATE TABLE `job_skill_map` (
  `job_skill_map_id` int(11) NOT NULL,
  `skill1_id` int(11) NOT NULL,
  `skill2_id` int(11) NOT NULL,
  `skill3_id` int(11) NOT NULL,
  `skill4_id` int(11) NOT NULL,
  `skill5_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_skill_map`
--

INSERT INTO `job_skill_map` (`job_skill_map_id`, `skill1_id`, `skill2_id`, `skill3_id`, `skill4_id`, `skill5_id`) VALUES
(1, 1, 8, 7, 14, 12),
(2, 12, 4, 6, 14, 9),
(3, 11, 8, 2, 5, 15),
(4, 12, 10, 3, 1, 13),
(5, 7, 14, 9, 5, 6),
(6, 7, 3, 10, 4, 14),
(7, 12, 7, 8, 4, 2),
(8, 9, 13, 3, 10, 2),
(9, 8, 12, 1, 7, 14),
(10, 12, 6, 15, 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `job_title`
--

CREATE TABLE `job_title` (
  `title_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_title`
--

INSERT INTO `job_title` (`title_id`, `title`) VALUES
(1, 'senior software developer'),
(2, 'Software developer'),
(3, 'Senior software engineer'),
(4, 'Software engineer'),
(5, 'Fresher'),
(6, 'Full stack developer'),
(7, 'Javascript developer'),
(8, 'HR'),
(9, 'Java software engineer'),
(10, 'Content writer'),
(11, 'PHP developer');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE `job_type` (
  `job_type_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`job_type_id`, `type`) VALUES
(1, 'Full-time'),
(2, 'Part-time'),
(3, 'Contract'),
(4, 'Internship'),
(5, 'Temporary');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `city_name` varchar(200) NOT NULL,
  `state_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `city_name`, `state_name`) VALUES
(1, 'Bangalore', 'Karnataka'),
(2, 'Mumbai', 'Maharashtra'),
(3, 'Chennai', 'TamilNadu'),
(4, 'Hyderabad', 'Andra pradesh'),
(5, 'Pune', 'Maharashtra'),
(6, 'Noida', 'Uttar pradesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `constraint1` (`company_size`);

--
-- Indexes for table `company_size`
--
ALTER TABLE `company_size`
  ADD PRIMARY KEY (`company_size_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `job_skill_list_id` (`job_skill_list_id`),
  ADD KEY `job_title_id` (`job_title_id`),
  ADD KEY `job_type_id` (`job_type_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `job_skill`
--
ALTER TABLE `job_skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `job_skill_map`
--
ALTER TABLE `job_skill_map`
  ADD PRIMARY KEY (`job_skill_map_id`),
  ADD KEY `skill1_id` (`skill1_id`),
  ADD KEY `skill2_id` (`skill2_id`),
  ADD KEY `skill3_id` (`skill3_id`),
  ADD KEY `skill4_id` (`skill4_id`),
  ADD KEY `skill5_id` (`skill5_id`);

--
-- Indexes for table `job_title`
--
ALTER TABLE `job_title`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `job_type`
--
ALTER TABLE `job_type`
  ADD PRIMARY KEY (`job_type_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `company_size`
--
ALTER TABLE `company_size`
  MODIFY `company_size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `job_skill`
--
ALTER TABLE `job_skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_skill_map`
--
ALTER TABLE `job_skill_map`
  MODIFY `job_skill_map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_title`
--
ALTER TABLE `job_title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_type`
--
ALTER TABLE `job_type`
  MODIFY `job_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `constraint1` FOREIGN KEY (`company_size`) REFERENCES `company_size` (`company_size_id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`job_skill_list_id`) REFERENCES `job_skill_map` (`job_skill_map_id`),
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`job_title_id`) REFERENCES `job_title` (`title_id`),
  ADD CONSTRAINT `jobs_ibfk_4` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`job_type_id`),
  ADD CONSTRAINT `jobs_ibfk_5` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `job_skill_map`
--
ALTER TABLE `job_skill_map`
  ADD CONSTRAINT `job_skill_map_ibfk_1` FOREIGN KEY (`skill1_id`) REFERENCES `job_skill` (`skill_id`),
  ADD CONSTRAINT `job_skill_map_ibfk_2` FOREIGN KEY (`skill2_id`) REFERENCES `job_skill` (`skill_id`),
  ADD CONSTRAINT `job_skill_map_ibfk_3` FOREIGN KEY (`skill3_id`) REFERENCES `job_skill` (`skill_id`),
  ADD CONSTRAINT `job_skill_map_ibfk_4` FOREIGN KEY (`skill4_id`) REFERENCES `job_skill` (`skill_id`),
  ADD CONSTRAINT `job_skill_map_ibfk_5` FOREIGN KEY (`skill5_id`) REFERENCES `job_skill` (`skill_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
