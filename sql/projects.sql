-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2018 at 04:25 PM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `folio`
--

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `id` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `responsibilities` text NOT NULL,
  `technologies` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Projects`
--

INSERT INTO `Projects` (`id`, `slug`, `title`, `url`, `description`, `responsibilities`, `technologies`) VALUES
(1, 'taylor-james', 'Taylor James', 'http://taylorjames.com', 'Responsive company site for Taylor James team.\'', 'development of responsive front-end application for desktop and mobile', 'React JS, ES6, Webpack, Express, Babel, Redux, SASS, CSS3, HTML5'),
(2, 'sijabra', 'Sijabra', 'http://sijabra.com', 'Application for Scandinavian client for connecting people planning wedding  with vendors who provides wedding services (like wedding place, haircut, wedding cake, music bands etc).', 'Development of the front-end application for desktop', 'Vue.js, jQuery, ES6, Babel, Webpack, LESS, CSS3, HTML5'),
(3, 'yall-100-hundred-miles', 'Yall 100 hundred miles', '', 'Application for Yall music band, sponsored by Sony Entertainment Group, promoting new single called “Hundred Miles”. The site presents hyperlapse experience of Google Street View journey across 100 miles from user’s location.', '', 'PHP5, ES5, Hyperlapse, jQuery, CSS3, HTML5'),
(4, 'sig', 'SIG.biz', 'http://sig.biz', 'Corporate site for Swiss company providing technology process for producing food and beverage packages.', 'Development of responsive front-end application for desktop and mobile', 'React JS, ES6, Webpack, Express, Babel, Redux, SASS, CSS3, HTML5'),
(5, 'meczyki-pl', 'meczyki.pl', 'http://meczyki.pl', 'Application for football fans. Provides watching transmissions online, soccer live scores, game highlights, bet league, news and now probably some more.', 'Development of whole application (including frontend and backend). Written scripts for getting livescore data from xml API to store it in database and later display live.', 'PHP, Yii framework, MySQL, ES5,  jQuery, Bootstrap, CSS3, HTML5, memcached'),
(6, 'skillue', 'Skillue', 'http://app.skillue.com', 'The career app for people with extraordinary skills', 'Development of the front-end application for desktop and mobile', 'Ionic, Angular2, ES6, Babel, Webpack, CSS3, HTML5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Projects`
--
ALTER TABLE `Projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
