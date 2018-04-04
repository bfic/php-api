-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2018 at 12:04 PM
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
-- Table structure for table `Modules`
--

CREATE TABLE `Modules` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `fields` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Modules`
--

INSERT INTO `Modules` (`id`, `type`, `slug`, `fields`) VALUES
(1, 'TopHeader', 'top-header', '{\r\n  \"backgroundImage\": \"/images/gda-bg.jpg\",\r\n  \"largeHeader\": \"Bartosz Fic\",\r\n  \"smallHeader\": \"Freelancer\",\r\n  \"introduction\": \"Frontend Development\"\r\n}'),
(2, 'TextModule', 'text-module', '{\r\n  \"smallHeader\": \"About\",\r\n  \"largeHeader\": \"Me\",\r\n  \"ingress\": \"Hello! Let me introduce myself. My name is Bartosz. I am doing a great job developing frontend applications. Do you want to cooperate with me ? Let me tell you something about me.\",\r\n  \"content\": \"I put an attention to details.<br/><br/>My code is:<br/>                           <ul>                             <li>consistent</li>                             <li>concise</li>                             <li>reusable</li>                             <li>well formatted</li>                             <li>considered</li>                             <li>is looking good across all devices</li>                           </ul>\"\r\n}'),
(3, 'ResponsiveDisplay', 'responsive-display', '{}'),
(4, 'ArticlesGrid', 'articles-grid', '{\r\n   \"smallHeader\": \"Frontend\",\r\n   \"largeHeader\": \"Projects\",\r\n   \"gapsBetweenRows\": true,\r\n   \"articleCollection\": [\r\n      {\r\n         \"slug\": \"taylor-james\",\r\n         \"title\": \"Taylor James\",\r\n         \"url\": \"http://taylorjames.com\",\r\n         \"description\": \"Responsive company site for Taylor James team.\",\r\n         \"responsibilities\": \"development of responsive front-end application for desktop and mobile\",\r\n         \"technologies\": \"React JS, ES6, Webpack, Express, Babel, Redux, SASS, CSS3, HTML5\"\r\n      },\r\n      {\r\n         \"slug\": \"sijabra\",\r\n         \"title\": \"Sijabra\",\r\n         \"url\": \"http://sijabra.com\",\r\n         \"description\": \"Application for Scandinavian client for connecting people planning wedding  with vendors who provides wedding services (like wedding place, haircut, wedding cake, music bands etc).\",\r\n         \"responsibilities\": \"Development of the front-end application for desktop\",\r\n         \"technologies\": \"Vue.js, jQuery, ES6, Babel, Webpack, LESS, CSS3, HTML5\"\r\n      },\r\n      {\r\n         \"slug\": \"yall-100-hundred-miles\",\r\n         \"title\": \"Yall 100 hundred miles\",\r\n         \"url\": null,\r\n         \"description\": \"Application for Yall music band, sponsored by Sony Entertainment Group, promoting new single called “Hundred Miles”. The site presents hyperlapse experience of Google Street View journey across 100 miles from user’s location.\",\r\n         \"responsibilities\": null,\r\n         \"technologies\": \"PHP5, ES5, Hyperlapse, jQuery, CSS3, HTML5\"\r\n      },\r\n      {\r\n         \"slug\": \"sig\",\r\n         \"title\": \"SIG.biz\",\r\n         \"url\": \"http://sig.biz\",\r\n         \"description\": \"Corporate site for Swiss company providing technology process for producing food and beverage packages.\",\r\n         \"responsibilities\": \"Development of responsive front-end application for desktop and mobile\",\r\n         \"technologies\": \"React JS, ES6, Webpack, Express, Babel, Redux, SASS, CSS3, HTML5\"\r\n      },\r\n      {\r\n         \"slug\": \"meczyki-pl\",\r\n         \"title\": \"meczyki.pl\",\r\n         \"url\": \"http://meczyki.pl\",\r\n         \"description\": \"Application for football fans. Provides watching transmissions online, soccer live scores, game highlights, bet league, news and now probably some more.\",\r\n         \"responsibilities\": \"Development of whole application (including frontend and backend). Written scripts for getting livescore data from xml API to store it in database and later display live. \",\r\n         \"technologies\": \"PHP, Yii framework, MySQL, ES5,  jQuery, Bootstrap, CSS3, HTML5, memcached\"\r\n      },\r\n      {\r\n         \"slug\": \"skillue\",\r\n         \"title\": \"Skillue\",\r\n         \"url\": \"http://app.skillue.com\",\r\n         \"description\": \"The career app for people with extraordinary skills\",\r\n         \"responsibilities\": \"Development of the front-end application for desktop and mobile\",\r\n         \"technologies\": \"Ionic, Angular2, ES6, Babel, Webpack, CSS3, HTML5\"\r\n      }\r\n   ]\r\n}'),
(5, 'Logos', 'logos', '{\r\n   \"logos\": [\r\n      {\r\n         \"imageDesktop\": \"/images/html.png\",\r\n         \"name\": \"HTML 5\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/css.png\",\r\n         \"name\": \"CSS 3\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/js.png\",\r\n         \"name\": \"JS5 ES6\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/python.png\",\r\n         \"name\": \"Python 3\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/php.png\",\r\n         \"name\": \"PHP 7\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/react.svg\",\r\n         \"name\": \"React\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/vue.png\",\r\n         \"name\": \"Vue\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/angular.svg\",\r\n         \"name\": \"Angular\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/jquery.gif\",\r\n         \"name\": \"jQuery\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/amazon.png\",\r\n         \"name\": \"Amazon Web Services\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/ionic.svg\",\r\n         \"name\": \"Ionic\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/craftcms.png\",\r\n         \"name\": \"Craft cms\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/wordpress.svg\",\r\n         \"name\": \"Wordpress\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/ubuntu.svg\",\r\n         \"name\": \"Ubuntu\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/android.png\",\r\n         \"name\": \"Android\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/apple.svg\",\r\n         \"name\": \"Apple ios\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/git.svg\",\r\n         \"name\": \"GIT\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/slack.svg\",\r\n         \"name\": \"Slack\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/ps.svg\",\r\n         \"name\": \"Photoshop\"\r\n      },\r\n      {\r\n         \"imageDesktop\": \"/images/browserstack.png\",\r\n         \"name\": \"Browserstack\"\r\n      }\r\n   ],\r\n   \"smallHeader\": \"Used\",\r\n   \"largeHeader\": \"Technologies\",\r\n   \"description\": \"A lot of professional expierience\"\r\n}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Modules`
--
ALTER TABLE `Modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Modules`
--
ALTER TABLE `Modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
