-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2017 at 10:08 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umande`
--

-- --------------------------------------------------------

--
-- Table structure for table `barinfo`
--

CREATE TABLE `barinfo` (
  `id` int(11) NOT NULL,
  `head` text NOT NULL,
  `des` text NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barinfo`
--

INSERT INTO `barinfo` (`id`, `head`, `des`, `page`) VALUES
(1, 'Description lists', 'Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.\r\nDonec id elit non mi porta gravida at eget metus.', 'makina'),
(2, 'Description lists', 'Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.\r\nDonec id elit non mi porta gravida at eget metus.', 'sara'),
(3, 'Description lists', 'Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.\r\nDonec id elit non mi porta gravida at eget metus.', 'saba'),
(4, 'Description lists', 'Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.\r\nDonec id elit non mi porta gravida at eget metus.', 'lindi');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `pob` text NOT NULL,
  `loc` text NOT NULL,
  `phone` text NOT NULL,
  `mail` text NOT NULL,
  `hours` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `pob`, `loc`, `phone`, `mail`, `hours`) VALUES
(1, ' Umande Trust<br>\r\n P.O. BOX 43691-00100,<br>\r\n Nairobi, Kenya.', 'Kibra Sports Ground,Off Kibera Drive', '0772092343 / 0723 560692', 'Info@Umande.Org', ' 8a.m - 5 p.m');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sub` text NOT NULL,
  `des` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `name`, `sub`, `des`, `link`) VALUES
(1, 'Newsletter', 'Download our newsletter', 'This is our first newsletter..............', '#'),
(2, 'Terms and conditions', 'Download our T&C', 'To ensure we abide by the laws kindly download our T&C......', '#'),
(3, 'Bulletin', 'Download our weekly bulletin', 'To ensure we abide by the laws kindly download our T&C......', '#');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(12, ' 	  Orientation with the Parents of the College Freshmen', 0, '06/04/2013', '06/04/2013'),
(13, 'Start of Classes', 0, '11/04/2013', '11/04/2013'),
(14, 'Intercampus Sports and Cultural Fest/College Week', 0, '11/19/2013', '11/22/2013'),
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(16, 'Long Test', 0, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013'),
(18, 'try', 0, '01/03/2017', '01/04/2017');

-- --------------------------------------------------------

--
-- Table structure for table `hevents`
--

CREATE TABLE `hevents` (
  `id` int(11) NOT NULL,
  `event` varchar(200) NOT NULL,
  `venue` text NOT NULL,
  `title` text NOT NULL,
  `datere` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tarehes` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hevents`
--

INSERT INTO `hevents` (`id`, `event`, `venue`, `title`, `datere`, `status`, `tarehes`) VALUES
(7, 'ICT Conference', 'KICC ballroom', 'EVENTS', '01/08/2017 - 01/08/2017', 'Cancelled', '2017-01-08 12:38:43'),
(9, 'Live Streaming', 'Umande facebook page ', '', '02/01/2017 - 02/02/2017', 'Cancelled', '2017-01-08 12:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `hgallery`
--

CREATE TABLE `hgallery` (
  `id` int(10) NOT NULL,
  `maintitle` text NOT NULL,
  `title` text NOT NULL,
  `descp` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hgallery`
--

INSERT INTO `hgallery` (`id`, `maintitle`, `title`, `descp`, `image`, `date`) VALUES
(1, 'Gallery', 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, '', 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, '', 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, '', 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(6, '', 'Aqua', 'Detol', '1.8L MAC Aqua.png', '2014-01-23 03:56:49'),
(7, '', 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `hlocation`
--

CREATE TABLE `hlocation` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `linfo` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hlocation`
--

INSERT INTO `hlocation` (`id`, `name`, `linfo`, `contact`, `email`) VALUES
(1, 'Sarangombe voice centere', ' near Ghetto sana', '+254712345678', 'info@wangara.com'),
(2, 'Makina Voice centres', ' near Ghetto primary school', '+254712345678', 'INFO@WHO.WHAT'),
(3, 'Laini Saba Voice centres', ' near Ghetto primary school', '+254712345678', 'INFO@WHO.WHAT'),
(4, 'Lindi  Voice centre', ' near Ghetto primary school', '+254712345678', 'INFO@WHO.WHAT');

-- --------------------------------------------------------

--
-- Table structure for table `hmap`
--

CREATE TABLE `hmap` (
  `id` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hmap`
--

INSERT INTO `hmap` (`id`, `url`, `title`) VALUES
(1, 'https://www.google.com/maps/d/embed?mid=1BNz5FR1aFawBJTCdvcqP56gROCw', 'Umande Map');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` int(11) NOT NULL,
  `hobby` text NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `logo` varchar(3000) NOT NULL,
  `title` text NOT NULL,
  `info` varchar(20000) NOT NULL,
  `remo` varchar(20000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `logo`, `title`, `info`, `remo`) VALUES
(1, 'uploads/index.jpg', 'Project Introduction.', 'There is a gap in gender representation among the people of Kibera in regards to having the womenâ€™s voices heard on issues involving their community and the society they live in. This project, Womenâ€™s Voices, seeks to capture womenâ€™s views and ideas about county development, and make sure, these ideas are shared with the relevant authorities. It looks to address four main themes of governance, transparency, accountability, and anti-corruption. "', ' To do this, we plan to train women in the community to be representatives of the rest of the community, called women voices champions. These women will be in charge of collection and analyzing data from and about the community as well as other administrative work. The women will also be in charge of updating a dashboard that connects the project to the community and the rest of the world through social media, and updating the dashboard with real time information about what is happening in the community. The information they work to collect and present will be shared with the relevant county officials, so they can put the communityâ€™s thoughts into action. The womenâ€™s voices champions will help to give voice to other female members of the community whose ideas and opinions may not have been able to be shared without this project. Womenâ€™s Voices will be run through four of Kiberaâ€™s bio-sanitation facilities since they are already a focal point for men and women in the community.');

-- --------------------------------------------------------

--
-- Table structure for table `hquotes`
--

CREATE TABLE `hquotes` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `inspiretitle` text NOT NULL,
  `inspire` varchar(2000) NOT NULL,
  `populartitle` text NOT NULL,
  `it` varchar(5000) NOT NULL,
  `popular` varchar(2000) NOT NULL,
  `pt` varchar(5000) NOT NULL,
  `motivate` varchar(2000) NOT NULL,
  `motivatetitle` text NOT NULL,
  `mt` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hquotes`
--

INSERT INTO `hquotes` (`id`, `title`, `inspiretitle`, `inspire`, `populartitle`, `it`, `popular`, `pt`, `motivate`, `motivatetitle`, `mt`) VALUES
(1, 'Quotes of the day', 'Inspirational Quotes', 'If you don''t know the guy on the other side of the world, love him anyway because he''s just like you. He has the same dreams, the same hopes and fears. It''s one world, pal. We''re all neighbors.', 'Popular Quotes', 'Frank Sinatra', 'Two things are infinite: the universe and human stupidity; and I''m not sure about the universe.', 'Albert Einstein', 'The will to win, the desire to succeed, the urge to reach your full potential... these are the keys that will unlock the door to personal excellence', 'Motivational Quotes', 'Confucius');

-- --------------------------------------------------------

--
-- Table structure for table `hstrip`
--

CREATE TABLE `hstrip` (
  `id` int(11) NOT NULL,
  `number` varchar(1100) NOT NULL,
  `info` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hstrip`
--

INSERT INTO `hstrip` (`id`, `number`, `info`) VALUES
(1, '5,210', 'AUDIENCE'),
(2, '10,390', 'DAYS'),
(3, 'Ksh.24,813,153', 'BUDGET'),
(4, '1200 Kms', 'AREA COVERED');

-- --------------------------------------------------------

--
-- Table structure for table `lagallery`
--

CREATE TABLE `lagallery` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lagallery`
--

INSERT INTO `lagallery` (`id`, `title`, `desc`, `image`, `date`) VALUES
(1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.JPG', '2014-01-23 03:56:49'),
(6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.jpg', '2014-01-23 03:56:49'),
(7, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `laproimg`
--

CREATE TABLE `laproimg` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laproimg`
--

INSERT INTO `laproimg` (`id`, `title`, `desc`, `image`, `date`) VALUES
(1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.JPG', '2014-01-23 03:56:49'),
(6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.jpg', '2014-01-23 03:56:49'),
(7, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `ligallery`
--

CREATE TABLE `ligallery` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ligallery`
--

INSERT INTO `ligallery` (`id`, `title`, `desc`, `image`, `date`) VALUES
(1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.JPG', '2014-01-23 03:56:49'),
(6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.jpg', '2014-01-23 03:56:49'),
(7, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `lindicurrent`
--

CREATE TABLE `lindicurrent` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `complete` text NOT NULL,
  `des` text NOT NULL,
  `per` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lindicurrent`
--

INSERT INTO `lindicurrent` (`id`, `name`, `complete`, `des`, `per`, `type`) VALUES
(1, 'Tembea Kenya', '60% Complete', 'The project was allocated a budget of Ksh. 10m', '60%', 'county'),
(2, 'Gawa Umeme', '70% Complete', 'The project was allocated a budget of Ksh. 10m', '70%', 'ngo'),
(3, 'Bio yetu', '40% Complete', 'The project was allocated a budget of Ksh. 10m', '40%', 'cbo'),
(4, 'Cow ', '30% Complete', 'The project was allocated a budget of Ksh. 10m', '30%', 'county'),
(5, 'Gawa Umeme', '70% Complete', 'The project was allocated a budget of Ksh. 10m', '70%', 'ngo'),
(6, 'Gawa Umeme', '90% Complete', 'The project was allocated a budget of Ksh. 10m', '90%', 'cbo');

-- --------------------------------------------------------

--
-- Table structure for table `lindi_cproject`
--

CREATE TABLE `lindi_cproject` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sdate` text NOT NULL,
  `edate` text NOT NULL,
  `status` text NOT NULL,
  `org` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lindi_cproject`
--

INSERT INTO `lindi_cproject` (`id`, `name`, `sdate`, `edate`, `status`, `org`) VALUES
(1, 'Project 1', '1/11/2015', '10/12/2016', 'complete', 'county'),
(2, 'Project 3', '1/11/2015', '10/12/2016', 'complete', 'ngo'),
(3, 'Project 5', '1/11/2015', '10/12/2016', 'complete', 'cbo'),
(4, 'Project 2', '1/11/2015', '10/12/2016', 'complete', 'county'),
(5, 'Project 4', '1/11/2015', '10/12/2016', 'complete', 'ngo'),
(6, 'Project 6', '1/11/2015', '10/12/2016', 'complete', 'cbo');

-- --------------------------------------------------------

--
-- Table structure for table `liproimg`
--

CREATE TABLE `liproimg` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liproimg`
--

INSERT INTO `liproimg` (`id`, `title`, `desc`, `image`, `date`) VALUES
(1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.JPG', '2014-01-23 03:56:49'),
(6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.jpg', '2014-01-23 03:56:49'),
(7, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `magallery`
--

CREATE TABLE `magallery` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `magallery`
--

INSERT INTO `magallery` (`id`, `title`, `desc`, `image`, `date`) VALUES
(1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.JPG', '2014-01-23 03:56:49'),
(6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.jpg', '2014-01-23 03:56:49'),
(7, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `sname` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `makinacurrent`
--

CREATE TABLE `makinacurrent` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `complete` text NOT NULL,
  `des` text NOT NULL,
  `per` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makinacurrent`
--

INSERT INTO `makinacurrent` (`id`, `name`, `complete`, `des`, `per`, `type`) VALUES
(1, 'Tembea Kenya', '60% Complete', 'The project was allocated a budget of Ksh. 10m', '60%', 'county'),
(2, 'Gawa Umeme', '70% Complete', 'The project was allocated a budget of Ksh. 10m', '70%', 'ngo'),
(3, 'Bio yetu', '40% Complete', 'The project was allocated a budget of Ksh. 10m', '40%', 'cbo'),
(4, 'Cow ', '30% Complete', 'The project was allocated a budget of Ksh. 10m', '30%', 'county'),
(5, 'Gawa Umeme', '70% Complete', 'The project was allocated a budget of Ksh. 10m', '70%', 'ngo'),
(6, 'Gawa Umeme', '90% Complete', 'The project was allocated a budget of Ksh. 10m', '90%', 'cbo');

-- --------------------------------------------------------

--
-- Table structure for table `makina_cproject`
--

CREATE TABLE `makina_cproject` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sdate` text NOT NULL,
  `edate` text NOT NULL,
  `status` text NOT NULL,
  `org` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makina_cproject`
--

INSERT INTO `makina_cproject` (`id`, `name`, `sdate`, `edate`, `status`, `org`) VALUES
(1, 'Project 1', '1/11/2015', '10/12/2016', 'complete', 'county'),
(2, 'Project 3', '1/11/2015', '10/12/2016', 'complete', 'ngo'),
(3, 'Project 5', '1/11/2015', '10/12/2016', 'complete', 'cbo'),
(4, 'Project 2', '1/11/2015', '10/12/2016', 'complete', 'county'),
(5, 'Project 4', '1/11/2015', '10/12/2016', 'complete', 'ngo'),
(6, 'Project 6', '1/11/2015', '10/12/2016', 'complete', 'cbo');

-- --------------------------------------------------------

--
-- Table structure for table `maproimg`
--

CREATE TABLE `maproimg` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maproimg`
--

INSERT INTO `maproimg` (`id`, `title`, `desc`, `image`, `date`) VALUES
(1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.JPG', '2014-01-23 03:56:49'),
(6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.jpg', '2014-01-23 03:56:49'),
(7, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `mediaimg`
--

CREATE TABLE `mediaimg` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mediaimg`
--

INSERT INTO `mediaimg` (`id`, `title`, `desc`, `image`, `date`) VALUES
(1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.JPG', '2014-01-23 03:56:49'),
(6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.jpg', '2014-01-23 03:56:49'),
(7, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `pdes`
--

CREATE TABLE `pdes` (
  `id` int(11) NOT NULL,
  `head` text NOT NULL,
  `des` text NOT NULL,
  `page` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdes`
--

INSERT INTO `pdes` (`id`, `head`, `des`, `page`) VALUES
(1, 'Sub Heading', 'There is a gap in gender representation among the people of Kibera in regards to having the women''s voices heard on issues involving their community and the society they live in. This project, Women''s Voices, seeks to capture women''s views and ideas about county development, and make sure, these ideas are shared with the relevant authorities. It looks to address four main themes of governance, transparency, accountability, and anti-corruption. To do this, we plan to train women in the community to be representatives of the rest of the community, called women voices champions.', 'makina'),
(2, 'Sub Heading', 'There is a gap in gender representation among the people of Kibera in regards to having the women''s voices heard on issues involving their community and the society they live in. This project, Women''s Voices, seeks to capture women''s views and ideas about county development, and make sure, these ideas are shared with the relevant authorities. It looks to address four main themes of governance, transparency, accountability, and anti-corruption. To do this, we plan to train women in the community to be representatives of the rest of the community, called women voices champions.', 'sara'),
(3, 'Sub Heading', 'There is a gap in gender representation among the people of Kibera in regards to having the women''s voices heard on issues involving their community and the society they live in. This project, Women''s Voices, seeks to capture women''s views and ideas about county development, and make sure, these ideas are shared with the relevant authorities. It looks to address four main themes of governance, transparency, accountability, and anti-corruption. To do this, we plan to train women in the community to be representatives of the rest of the community, called women voices champions.', 'saba'),
(4, 'Sub Heading', 'There is a gap in gender representation among the people of Kibera in regards to having the women''s voices heard on issues involving their community and the society they live in. This project, Women''s Voices, seeks to capture women''s views and ideas about county development, and make sure, these ideas are shared with the relevant authorities. It looks to address four main themes of governance, transparency, accountability, and anti-corruption. To do this, we plan to train women in the community to be representatives of the rest of the community, called women voices champions.', 'lindi');

-- --------------------------------------------------------

--
-- Table structure for table `pieinfo`
--

CREATE TABLE `pieinfo` (
  `id` int(11) NOT NULL,
  `des` text NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pieinfo`
--

INSERT INTO `pieinfo` (`id`, `des`, `page`) VALUES
(1, 'Umande brings together teams of resource persons who share a passion and commitment to learn from, share and achieve lasting change with people. This team comprises community organizers, academics, geo-informatics, urban planning, human rights, civil engineering, social scientists, environmental, gender, youth and enterprise development resource persons Team members have several years of experience from diverse research, civil society and public sector agencies .', 'makina'),
(2, 'Umande brings together teams of resource persons who share a passion and commitment to learn from, share and achieve lasting change with people. This team comprises community organizers, academics, geo-informatics, urban planning, human rights, civil engineering, social scientists, environmental, gender, youth and enterprise development resource persons Team members have several years of experience from diverse research, civil society and public sector agencies .', 'sara'),
(3, 'Umande brings together teams of resource persons who share a passion and commitment to learn from, share and achieve lasting change with people. This team comprises community organizers, academics, geo-informatics, urban planning, human rights, civil engineering, social scientists, environmental, gender, youth and enterprise development resource persons Team members have several years of experience from diverse research, civil society and public sector agencies .', 'saba'),
(4, 'Umande brings together teams of resource persons who share a passion and commitment to learn from, share and achieve lasting change with people. This team comprises community organizers, academics, geo-informatics, urban planning, human rights, civil engineering, social scientists, environmental, gender, youth and enterprise development resource persons Team members have several years of experience from diverse research, civil society and public sector agencies .', 'lindi');

-- --------------------------------------------------------

--
-- Table structure for table `planned`
--

CREATE TABLE `planned` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `des` text NOT NULL,
  `page` text NOT NULL,
  `budget` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planned`
--

INSERT INTO `planned` (`id`, `name`, `des`, `page`, `budget`) VALUES
(1, 'Project 1', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf ', 'makina', '10.6 M'),
(2, 'Project 2', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf ', 'makina', '60 m'),
(3, 'Project 3', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf ', 'makina', '60 m'),
(4, 'Project 1', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf ', 'sara', '10.6 M'),
(5, 'Project 2', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf ', 'sara', '60 m'),
(6, 'Project 2', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf ', 'lindi', '60 m'),
(7, 'Project 2', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf ', 'saba', '60 m');

-- --------------------------------------------------------

--
-- Table structure for table `prioinfo`
--

CREATE TABLE `prioinfo` (
  `id` int(11) NOT NULL,
  `des` text NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prioinfo`
--

INSERT INTO `prioinfo` (`id`, `des`, `page`) VALUES
(1, 'Umande brings together teams of resource persons who share a passion and commitment to learn from, share and achieve lasting change with people. This team comprises community organizers, academics, geo-informatics, urban planning, human rights, civil engineering, social scientists, environmental, gender, youth and enterprise development resource persons Team members have several years of experience from diverse research, civil society and public sector agencies .', 'makina');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `age` text NOT NULL,
  `image` text NOT NULL,
  `page` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `age`, `image`, `page`, `date`) VALUES
(1, 'Jane Doe', '27 years', '1.jpg', 'makina', '2014-01-23 03:53:13'),
(13, 'Jane Doe', '27 years', '2.jpg', 'sara', '2014-01-23 03:53:13'),
(14, 'Jane Doe', '27 years', '3.jpg', 'saba', '2014-01-23 03:53:13'),
(12, 'Jane Doe', '27 years', '1.jpg', 'lindi', '2014-01-23 03:53:13'),
(10, 'Jane Doe', '27 years', '1.jpg', '', '2014-01-23 03:53:13'),
(11, 'Jane Doe', '27 years', '1.jpg', '', '2014-01-23 03:53:13'),
(9, 'Jane Doe', '27 years', '1.jpg', '', '2014-01-23 03:53:13'),
(8, 'Jane Doe', '27 years', '1.jpg', '', '2014-01-23 03:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `ptop`
--

CREATE TABLE `ptop` (
  `id` int(11) NOT NULL,
  `lh` varchar(500) NOT NULL,
  `ln` varchar(500) NOT NULL,
  `mh` varchar(500) NOT NULL,
  `mn` varchar(500) NOT NULL,
  `rh` varchar(500) NOT NULL,
  `rn` varchar(500) NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ptop`
--

INSERT INTO `ptop` (`id`, `lh`, `ln`, `mh`, `mn`, `rh`, `rn`, `page`) VALUES
(1, 'C.B.O', '101', 'N.G.O', '500', 'ENVIRONMENTAL ORGS', '302', 'makina'),
(2, 'C.B.O', '101', 'N.G.O', '500', 'ENVIRONMENTAL ORGS', '302', 'lindi'),
(3, 'C.B.O', '101', 'N.G.O', '500', 'ENVIRONMENTAL ORGS', '302', 'sara'),
(4, 'C.B.O', '101', 'N.G.O', '500', 'ENVIRONMENTAL ORGS', '302', 'saba');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `cate` text NOT NULL,
  `neno` varchar(20000) NOT NULL,
  `who` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `title`, `cate`, `neno`, `who`) VALUES
(1, 'Quotes of the day', 'Inspirational Quote', 'Put your heart, mind, and soul into even your smallest acts. This is the secret of success.\r\n', 'Swami Sivananda'),
(2, 'Quotes of the day', 'Popular Quotes', 'Put your heart, mind, and soul into even your smallest acts. This is the secret of success', 'Albert Einstein'),
(3, 'Quotes of the day', 'Motivational Quotes', 'Put your heart, mind, and soul into even your smallest acts. This is the secret of success.', 'Confucius');

-- --------------------------------------------------------

--
-- Table structure for table `sabacurrent`
--

CREATE TABLE `sabacurrent` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `complete` text NOT NULL,
  `des` text NOT NULL,
  `per` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sabacurrent`
--

INSERT INTO `sabacurrent` (`id`, `name`, `complete`, `des`, `per`, `type`) VALUES
(1, 'Tembea Kenya', '60% Complete', 'The project was allocated a budget of Ksh. 10m', '60%', 'county'),
(2, 'Gawa Umeme', '70% Complete', 'The project was allocated a budget of Ksh. 10m', '70%', 'ngo'),
(3, 'Bio yetu', '40% Complete', 'The project was allocated a budget of Ksh. 10m', '40%', 'cbo'),
(4, 'Cow ', '30% Complete', 'The project was allocated a budget of Ksh. 10m', '30%', 'county'),
(5, 'Gawa Umeme', '70% Complete', 'The project was allocated a budget of Ksh. 10m', '70%', 'ngo'),
(6, 'Gawa Umeme', '90% Complete', 'The project was allocated a budget of Ksh. 10m', '90%', 'cbo');

-- --------------------------------------------------------

--
-- Table structure for table `saba_cproject`
--

CREATE TABLE `saba_cproject` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sdate` text NOT NULL,
  `edate` text NOT NULL,
  `status` text NOT NULL,
  `org` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saba_cproject`
--

INSERT INTO `saba_cproject` (`id`, `name`, `sdate`, `edate`, `status`, `org`) VALUES
(1, 'Project 1', '1/11/2015', '10/12/2016', 'complete', 'county'),
(2, 'Project 3', '1/11/2015', '10/12/2016', 'complete', 'ngo'),
(3, 'Project 5', '1/11/2015', '10/12/2016', 'complete', 'cbo'),
(4, 'Project 2', '1/11/2015', '10/12/2016', 'complete', 'county'),
(5, 'Project 4', '1/11/2015', '10/12/2016', 'complete', 'ngo'),
(6, 'Project 6', '1/11/2015', '10/12/2016', 'complete', 'cbo');

-- --------------------------------------------------------

--
-- Table structure for table `sagallery`
--

CREATE TABLE `sagallery` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sagallery`
--

INSERT INTO `sagallery` (`id`, `title`, `desc`, `image`, `date`) VALUES
(1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.JPG', '2014-01-23 03:56:49'),
(6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.jpg', '2014-01-23 03:56:49'),
(7, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `saproimg`
--

CREATE TABLE `saproimg` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saproimg`
--

INSERT INTO `saproimg` (`id`, `title`, `desc`, `image`, `date`) VALUES
(1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.jpg', '2014-01-23 03:53:13'),
(2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.jpg', '2014-01-23 03:53:13'),
(3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.jpeg', '2014-01-23 03:54:40'),
(4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.JPG', '2014-01-23 03:54:40'),
(5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.JPG', '2014-01-23 03:56:49'),
(6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.jpg', '2014-01-23 03:56:49'),
(7, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '7.png', '2014-01-23 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `saracurrent`
--

CREATE TABLE `saracurrent` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `complete` text NOT NULL,
  `des` text NOT NULL,
  `per` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saracurrent`
--

INSERT INTO `saracurrent` (`id`, `name`, `complete`, `des`, `per`, `type`) VALUES
(1, 'Tembea Kenya', '60% Complete', 'The project was allocated a budget of Ksh. 10m', '60%', 'county'),
(2, 'Gawa Umeme', '70% Complete', 'The project was allocated a budget of Ksh. 10m', '70%', 'ngo'),
(3, 'Bio yetu', '40% Complete', 'The project was allocated a budget of Ksh. 10m', '40%', 'cbo'),
(4, 'Cow ', '30% Complete', 'The project was allocated a budget of Ksh. 10m', '30%', 'county'),
(5, 'Gawa Umeme', '70% Complete', 'The project was allocated a budget of Ksh. 10m', '70%', 'ngo'),
(6, 'Gawa Umeme', '90% Complete', 'The project was allocated a budget of Ksh. 10m', '90%', 'cbo');

-- --------------------------------------------------------

--
-- Table structure for table `sara_cproject`
--

CREATE TABLE `sara_cproject` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sdate` text NOT NULL,
  `edate` text NOT NULL,
  `status` text NOT NULL,
  `org` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sara_cproject`
--

INSERT INTO `sara_cproject` (`id`, `name`, `sdate`, `edate`, `status`, `org`) VALUES
(1, 'Project 1', '1/11/2015', '10/12/2016', 'complete', 'county'),
(2, 'Project 3', '1/11/2015', '10/12/2016', 'complete', 'ngo'),
(3, 'Project 5', '1/11/2015', '10/12/2016', 'complete', 'cbo'),
(4, 'Project 2', '1/11/2015', '10/12/2016', 'complete', 'county'),
(5, 'Project 4', '1/11/2015', '10/12/2016', 'complete', 'ngo'),
(6, 'Project 6', '1/11/2015', '10/12/2016', 'complete', 'cbo');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill` text NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `account` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `account`, `link`) VALUES
(1, 'facebook', 'https://www.facebook.com/UmandeTrust/'),
(2, 'twitter', 'https://www.facebook.com/UmandeTrust/'),
(3, 'instagram', 'https://www.facebook.com/UmandeTrust/'),
(4, 'youtube', 'https://www.facebook.com/UmandeTrust/');

-- --------------------------------------------------------

--
-- Table structure for table `testimony`
--

CREATE TABLE `testimony` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimony`
--

INSERT INTO `testimony` (`id`, `message`, `name`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius adipisci, sed libero. Iste asperiores suscipit, consequatur debitis animi impedit numquam facilis iusto porro labore dolorem, maxime magni.', 'Alex McGee'),
(2, 'Totam at eius excepturi deleniti sed, error repellat itaque omnis maiores tempora ratione dolor velit minus porro aspernatur repudiandae labore quas adipisci esse, nulla tempore voluptatibus cupiditate.', 'Melissa Washington'),
(3, 'Possimus deserunt nisi perferendis, consequuntur odio et aperiam, est, dicta dolor itaque sunt laborum, magni qui optio illum dolore laudantium similique harum. Ab provident, porro atque.', 'Joseph Salazar'),
(4, 'Vel nam odio dolorem, voluptas sequi minus quo tempore, animi est quia earum maxime. Reiciendis quae repellat, modi non, veniam natus soluta at optio vitae in excepturi minima eveniet dolor.', 'Maria Douglas'),
(5, 'Accusantium at omnis vel, possimus fugiat explicabo necessitatibus facilis tempore voluptate, ea in, sunt magnam officia? Beatae reprehenderit non tempore, assumenda reiciendis.', 'Gary Benham');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(13, 'teph', 'teph', 'Stephanie', 'villanueva'),
(14, 'jkev', 'jkev', 'john kevin', 'lorayna'),
(15, 'wangara88@gmail.com', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(6, 'teph', '2017-01-04 22:26:39', '2017-01-04 22:58:38', 13),
(7, 'teph', '2017-01-04 22:27:50', '2017-01-04 22:58:38', 13),
(8, 'teph', '2017-01-04 22:43:44', '2017-01-04 22:58:38', 13),
(9, 'teph', '2017-01-04 22:43:53', '2017-01-04 22:58:38', 13),
(10, 'teph', '2017-01-04 22:45:35', '2017-01-04 22:58:38', 13),
(11, 'teph', '2017-01-04 22:47:04', '2017-01-04 22:58:38', 13),
(12, 'teph', '2017-01-04 22:47:53', '2017-01-04 22:58:38', 13),
(13, 'teph', '2017-01-04 22:48:05', '2017-01-04 22:58:38', 13),
(14, 'teph', '2017-01-04 22:49:24', '2017-01-04 22:58:38', 13),
(15, 'teph', '2017-01-04 22:57:15', '2017-01-04 22:58:38', 13),
(16, 'teph', '2017-01-04 22:58:29', '2017-01-04 22:58:38', 13),
(17, 'teph', '2017-01-04 22:58:47', '', 13),
(18, 'teph', '2017-01-04 23:00:52', '', 13),
(19, 'teph', '2017-01-04 23:28:49', '', 13),
(20, 'teph', '2017-01-04 23:49:21', '', 13),
(21, 'teph', '2017-01-04 23:52:12', '', 13),
(22, 'teph', '2017-01-05 10:07:17', '', 13),
(23, 'teph', '2017-01-05 10:13:20', '', 13),
(24, 'teph', '2017-01-05 13:25:49', '', 13),
(25, 'teph', '2017-01-05 13:36:06', '', 13),
(26, 'teph', '2017-01-05 15:53:49', '', 13),
(27, 'teph', '2017-01-05 15:55:40', '', 13),
(28, 'teph', '2017-01-07 13:08:30', '', 13),
(29, 'teph', '2017-01-08 11:39:54', '', 13),
(30, 'teph', '2017-01-09 12:17:34', '', 13),
(31, 'teph', '2017-01-09 17:47:06', '', 13),
(32, 'teph', '2017-01-09 23:43:15', '', 13),
(33, 'teph', '2017-01-10 00:36:56', '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `ward_rep`
--

CREATE TABLE `ward_rep` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `des` text NOT NULL,
  `edu` text NOT NULL,
  `loc` text NOT NULL,
  `image` text NOT NULL,
  `ward` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barinfo`
--
ALTER TABLE `barinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `hevents`
--
ALTER TABLE `hevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hgallery`
--
ALTER TABLE `hgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hlocation`
--
ALTER TABLE `hlocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hmap`
--
ALTER TABLE `hmap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hquotes`
--
ALTER TABLE `hquotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hstrip`
--
ALTER TABLE `hstrip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lagallery`
--
ALTER TABLE `lagallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laproimg`
--
ALTER TABLE `laproimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ligallery`
--
ALTER TABLE `ligallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lindicurrent`
--
ALTER TABLE `lindicurrent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lindi_cproject`
--
ALTER TABLE `lindi_cproject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liproimg`
--
ALTER TABLE `liproimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magallery`
--
ALTER TABLE `magallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makinacurrent`
--
ALTER TABLE `makinacurrent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makina_cproject`
--
ALTER TABLE `makina_cproject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maproimg`
--
ALTER TABLE `maproimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mediaimg`
--
ALTER TABLE `mediaimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdes`
--
ALTER TABLE `pdes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pieinfo`
--
ALTER TABLE `pieinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planned`
--
ALTER TABLE `planned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prioinfo`
--
ALTER TABLE `prioinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptop`
--
ALTER TABLE `ptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sabacurrent`
--
ALTER TABLE `sabacurrent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saba_cproject`
--
ALTER TABLE `saba_cproject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sagallery`
--
ALTER TABLE `sagallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saproimg`
--
ALTER TABLE `saproimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saracurrent`
--
ALTER TABLE `saracurrent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sara_cproject`
--
ALTER TABLE `sara_cproject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimony`
--
ALTER TABLE `testimony`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- Indexes for table `ward_rep`
--
ALTER TABLE `ward_rep`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barinfo`
--
ALTER TABLE `barinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `hevents`
--
ALTER TABLE `hevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `hgallery`
--
ALTER TABLE `hgallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `hlocation`
--
ALTER TABLE `hlocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hmap`
--
ALTER TABLE `hmap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hquotes`
--
ALTER TABLE `hquotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hstrip`
--
ALTER TABLE `hstrip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lagallery`
--
ALTER TABLE `lagallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `laproimg`
--
ALTER TABLE `laproimg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ligallery`
--
ALTER TABLE `ligallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lindicurrent`
--
ALTER TABLE `lindicurrent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lindi_cproject`
--
ALTER TABLE `lindi_cproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `liproimg`
--
ALTER TABLE `liproimg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `magallery`
--
ALTER TABLE `magallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `makinacurrent`
--
ALTER TABLE `makinacurrent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `makina_cproject`
--
ALTER TABLE `makina_cproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `maproimg`
--
ALTER TABLE `maproimg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mediaimg`
--
ALTER TABLE `mediaimg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pdes`
--
ALTER TABLE `pdes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pieinfo`
--
ALTER TABLE `pieinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `planned`
--
ALTER TABLE `planned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `prioinfo`
--
ALTER TABLE `prioinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ptop`
--
ALTER TABLE `ptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sabacurrent`
--
ALTER TABLE `sabacurrent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `saba_cproject`
--
ALTER TABLE `saba_cproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sagallery`
--
ALTER TABLE `sagallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `saproimg`
--
ALTER TABLE `saproimg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `saracurrent`
--
ALTER TABLE `saracurrent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sara_cproject`
--
ALTER TABLE `sara_cproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `testimony`
--
ALTER TABLE `testimony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `ward_rep`
--
ALTER TABLE `ward_rep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;