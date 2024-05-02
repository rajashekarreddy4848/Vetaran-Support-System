CREATE DATABASE IF NOT EXISTS veteran_database;

USE veteran_database;

CREATE TABLE `communityevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventName` varchar(255) DEFAULT NULL,
  `eventDate` date DEFAULT NULL,
  `eventLocation` varchar(255) DEFAULT NULL,
  `eventDescription` text DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `communityevents` (`eventName`, `eventDate`, `eventLocation`, `eventDescription`) VALUES
('Veterans Day Parade', '2024-11-11', 'Main Street, Cityville', 'Annual parade honoring veterans with music, floats, and ceremonies.');

CREATE TABLE `educationmaterials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `educationmaterials` (`title`, `description`, `link`) VALUES
('Transitioning to Civilian Careers', 'Learn about transitioning from military to civilian careers.', 'https://example.com/civilian_careers');

CREATE TABLE `personalizedplans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planName` varchar(255) DEFAULT NULL,
  `planDescription` text DEFAULT NULL,
  `planDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `personalizedplans` (`planName`, `planDescription`, `planDate`) VALUES
('Plan 1', 'Description for Plan 1', '2024-04-25');

CREATE TABLE `supportplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `preferences` text DEFAULT NULL,
  `requests` text DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `supportplan` (`username`, `preferences`, `requests`) VALUES
('Username', 'Preferences', 'Requests');

CREATE TABLE `userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `service_branch` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `achievements` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `userprofile` (`username`, `email`, `service_branch`, `rank`, `achievements`, `experience`) VALUES
('Username', '11@11', 'Service Branch', 'Rank', 'Achievements', 'Experience');

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `achievements` text DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `users` (`username`, `password`, `email`, `age`, `experience`, `achievements`) VALUES
('Username', '2', '33@33', 4, '5', '2');
