-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 11:54 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boncomdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminId` int(13) UNSIGNED NOT NULL,
  `AdminName` varchar(200) NOT NULL,
  `AdminEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `ChapterId` int(13) UNSIGNED NOT NULL,
  `CourseId` int(13) UNSIGNED NOT NULL,
  `ChapterName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseId` int(13) UNSIGNED NOT NULL,
  `CourseName` varchar(200) NOT NULL,
  `CourseDuration` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fascilitator`
--

CREATE TABLE `fascilitator` (
  `FascilitatorId` int(13) UNSIGNED NOT NULL,
  `CourseId` int(13) UNSIGNED NOT NULL,
  `FascilitatorName` varchar(200) NOT NULL,
  `FascilitatorEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `powerpoint`
--

CREATE TABLE `powerpoint` (
  `PowerPointId` int(13) UNSIGNED NOT NULL,
  `PowerPointName` varchar(200) NOT NULL,
  `PowerPointLink` varchar(200) NOT NULL,
  `ChapterId` int(13) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `powerpointaudio`
--

CREATE TABLE `powerpointaudio` (
  `PowerPointAudioId` int(13) UNSIGNED NOT NULL,
  `ChapterId` int(13) UNSIGNED NOT NULL,
  `PowerPointAudioName` varchar(200) NOT NULL,
  `PowerPointAudioLink` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentId` int(13) UNSIGNED NOT NULL,
  `CourseID` int(13) UNSIGNED NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `StudentPassword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subtitle`
--

CREATE TABLE `subtitle` (
  `SubtitleId` int(13) UNSIGNED NOT NULL,
  `VideoId` int(13) UNSIGNED NOT NULL,
  `SubtitleName` varchar(200) NOT NULL,
  `SubtitleLink` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `VideoId` int(13) UNSIGNED NOT NULL,
  `ChapterId` int(13) UNSIGNED NOT NULL,
  `VideoName` varchar(200) NOT NULL,
  `VideoLink` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminId`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`ChapterId`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseId`);

--
-- Indexes for table `fascilitator`
--
ALTER TABLE `fascilitator`
  ADD PRIMARY KEY (`FascilitatorId`);

--
-- Indexes for table `powerpoint`
--
ALTER TABLE `powerpoint`
  ADD PRIMARY KEY (`PowerPointId`);

--
-- Indexes for table `powerpointaudio`
--
ALTER TABLE `powerpointaudio`
  ADD PRIMARY KEY (`PowerPointAudioId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `subtitle`
--
ALTER TABLE `subtitle`
  ADD PRIMARY KEY (`SubtitleId`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`VideoId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminId` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `ChapterId` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CourseId` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fascilitator`
--
ALTER TABLE `fascilitator`
  MODIFY `FascilitatorId` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `powerpoint`
--
ALTER TABLE `powerpoint`
  MODIFY `PowerPointId` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `powerpointaudio`
--
ALTER TABLE `powerpointaudio`
  MODIFY `PowerPointAudioId` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `StudentId` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subtitle`
--
ALTER TABLE `subtitle`
  MODIFY `SubtitleId` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `VideoId` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
