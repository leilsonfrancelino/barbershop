-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 20-Nov-2022 às 20:25
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barbershop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ad-settings`
--

DROP TABLE IF EXISTS `ad-settings`;
CREATE TABLE IF NOT EXISTS `ad-settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `top_ad` text NOT NULL,
  `bottom_ad` text NOT NULL,
  `top_ad_status` tinyint(1) NOT NULL DEFAULT '1',
  `bottom_ad_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ad-settings`
--

INSERT INTO `ad-settings` (`id`, `top_ad`, `bottom_ad`, `top_ad_status`, `bottom_ad_status`) VALUES
(1, 'https://via.placeholder.com/728x90?text=salon', 'https://via.placeholder.com/728x90?text=salon', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `agents`
--

DROP TABLE IF EXISTS `agents`;
CREATE TABLE IF NOT EXISTS `agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentName` varchar(255) NOT NULL,
  `agentImage` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `totalBookings` varchar(255) NOT NULL,
  `agentDetail` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agents`
--

INSERT INTO `agents` (`id`, `agentName`, `agentImage`, `experience`, `totalBookings`, `agentDetail`) VALUES
(7, 'Danilo', 'avatar6.png', '5', '10', '&lt;p&gt;Especializado em corte de cabelo masculino.&lt;/p&gt;\r\n'),
(8, 'Teste', 'default-avatar.jpg', '1', '1', '&lt;p&gt;Teste&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `analytics-settings`
--

DROP TABLE IF EXISTS `analytics-settings`;
CREATE TABLE IF NOT EXISTS `analytics-settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `analytics-settings`
--

INSERT INTO `analytics-settings` (`id`, `code`) VALUES
(1, 'UA-123456789-0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime_added` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime_updated` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1 = Active, 2 = In Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `blog`
--

INSERT INTO `blog` (`id`, `title`, `permalink`, `description`, `image`, `datetime_added`, `datetime_updated`, `status`) VALUES
(9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod rhoncus orci, ut lacinia enim. Etiam lectus nulla, ultrices in bibendum non, sollicitudin eleifend lacus. Quisque ultricies maximus nisl, sit amet condimentum risus dictum porttitor. Sed sed urna sit amet mauris malesuada facilisis nec at dolor. Pellentesque suscipit efficitur diam nec scelerisque. Quisque gravida nulla quis arcu venenatis accumsan. Nam ultricies, nisi sit amet vestibulum sollicitudin, justo mauris varius tortor, vitae elementum tellus lectus in massa. Nam erat nisi, pellentesque id feugiat vitae, fringilla at arcu. Ut lacinia ullamcorper nibh, sit amet condimentum lorem gravida eu. Nullam vel lectus viverra, hendrerit elit nec, fermentum orci. Morbi id lacus interdum, aliquam ex ac, tristique ipsum. In in sem felis. Ut vitae varius ante. Vivamus odio ipsum, vulputate a ullamcorper nec, viverra at enim. Nullam ac lectus sodales velit scelerisque finibus ac vitae purus.&lt;br&gt;&lt;br&gt;Etiam hendrerit faucibus placerat. Aenean pharetra tincidunt est sodales viverra. In faucibus sollicitudin iaculis. Integer magna neque, pulvinar ut pellentesque sit amet, ullamcorper quis tellus. Donec mattis euismod est, sed venenatis ex tincidunt a. Fusce nec ultricies justo, eget euismod augue. Nunc non tincidunt risus. Etiam pharetra suscipit lorem, quis gravida nulla ultrices sodales. Proin egestas ipsum purus, eu aliquam nisl mollis sit amet. Praesent nec arcu mollis, mattis dolor ac, imperdiet metus. Cras porttitor, neque id lobortis finibus, erat nisl dignissim urna, in vulputate metus libero sollicitudin augue. Nullam suscipit semper sapien, et facilisis felis ullamcorper et.&lt;br&gt;&lt;br&gt;In vestibulum, neque non viverra faucibus, tellus ante eleifend massa, nec tincidunt ligula nisl eget risus. Aenean volutpat vulputate nibh ut porttitor. Suspendisse porta ipsum sagittis augue aliquam, vel convallis nibh facilisis. Sed luctus mauris eget efficitur imperdiet. Maecenas non rutrum urna. Fusce pellentesque convallis ante, at vulputate felis ornare vel. Suspendisse nec euismod enim. Phasellus posuere odio sed lobortis fermentum. Donec mollis imperdiet mollis. Phasellus fringilla odio ut diam facilisis, eget convallis magna consectetur. Curabitur pretium iaculis vestibulum. Integer tincidunt nunc vitae risus interdum luctus. Vivamus et justo a eros ultricies ullamcorper at id leo. &lt;br&gt;', 'flt_1.jpg', '2020-08-08 21:41:21', '2020-08-09 08:21:04', 1),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod rhoncus orci, ut lacinia enim. Etiam lectus nulla, ultrices in bibendum non, sollicitudin eleifend lacus. Quisque ultricies maximus nisl, sit amet condimentum risus dictum porttitor. Sed sed urna sit amet mauris malesuada facilisis nec at dolor. Pellentesque suscipit efficitur diam nec scelerisque. Quisque gravida nulla quis arcu venenatis accumsan. Nam ultricies, nisi sit amet vestibulum sollicitudin, justo mauris varius tortor, vitae elementum tellus lectus in massa. Nam erat nisi, pellentesque id feugiat vitae, fringilla at arcu. Ut lacinia ullamcorper nibh, sit amet condimentum lorem gravida eu. Nullam vel lectus viverra, hendrerit elit nec, fermentum orci. Morbi id lacus interdum, aliquam ex ac, tristique ipsum. In in sem felis. Ut vitae varius ante. Vivamus odio ipsum, vulputate a ullamcorper nec, viverra at enim. Nullam ac lectus sodales velit scelerisque finibus ac vitae purus.&lt;br&gt;&lt;br&gt;Etiam hendrerit faucibus placerat. Aenean pharetra tincidunt est sodales viverra. In faucibus sollicitudin iaculis. Integer magna neque, pulvinar ut pellentesque sit amet, ullamcorper quis tellus. Donec mattis euismod est, sed venenatis ex tincidunt a. Fusce nec ultricies justo, eget euismod augue. Nunc non tincidunt risus. Etiam pharetra suscipit lorem, quis gravida nulla ultrices sodales. Proin egestas ipsum purus, eu aliquam nisl mollis sit amet. Praesent nec arcu mollis, mattis dolor ac, imperdiet metus. Cras porttitor, neque id lobortis finibus, erat nisl dignissim urna, in vulputate metus libero sollicitudin augue. Nullam suscipit semper sapien, et facilisis felis ullamcorper et.&lt;br&gt;&lt;br&gt;In vestibulum, neque non viverra faucibus, tellus ante eleifend massa, nec tincidunt ligula nisl eget risus. Aenean volutpat vulputate nibh ut porttitor. Suspendisse porta ipsum sagittis augue aliquam, vel convallis nibh facilisis. Sed luctus mauris eget efficitur imperdiet. Maecenas non rutrum urna. Fusce pellentesque convallis ante, at vulputate felis ornare vel. Suspendisse nec euismod enim. Phasellus posuere odio sed lobortis fermentum. Donec mollis imperdiet mollis. Phasellus fringilla odio ut diam facilisis, eget convallis magna consectetur. Curabitur pretium iaculis vestibulum. Integer tincidunt nunc vitae risus interdum luctus. Vivamus et justo a eros ultricies ullamcorper at id leo. &lt;br&gt;&lt;/p&gt;', 'flt_1.jpg', '2020-08-09 08:40:28', '2020-08-09 08:43:52', 1),
(12, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet-1', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod rhoncus orci, ut lacinia enim. Etiam lectus nulla, ultrices in bibendum non, sollicitudin eleifend lacus. Quisque ultricies maximus nisl, sit amet condimentum risus dictum porttitor. Sed sed urna sit amet mauris malesuada facilisis nec at dolor. Pellentesque suscipit efficitur diam nec scelerisque. Quisque gravida nulla quis arcu venenatis accumsan. Nam ultricies, nisi sit amet vestibulum sollicitudin, justo mauris varius tortor, vitae elementum tellus lectus in massa. Nam erat nisi, pellentesque id feugiat vitae, fringilla at arcu. Ut lacinia ullamcorper nibh, sit amet condimentum lorem gravida eu. Nullam vel lectus viverra, hendrerit elit nec, fermentum orci. Morbi id lacus interdum, aliquam ex ac, tristique ipsum. In in sem felis. Ut vitae varius ante. Vivamus odio ipsum, vulputate a ullamcorper nec, viverra at enim. Nullam ac lectus sodales velit scelerisque finibus ac vitae purus.&lt;br&gt;&lt;br&gt;Etiam hendrerit faucibus placerat. Aenean pharetra tincidunt est sodales viverra. In faucibus sollicitudin iaculis. Integer magna neque, pulvinar ut pellentesque sit amet, ullamcorper quis tellus. Donec mattis euismod est, sed venenatis ex tincidunt a. Fusce nec ultricies justo, eget euismod augue. Nunc non tincidunt risus. Etiam pharetra suscipit lorem, quis gravida nulla ultrices sodales. Proin egestas ipsum purus, eu aliquam nisl mollis sit amet. Praesent nec arcu mollis, mattis dolor ac, imperdiet metus. Cras porttitor, neque id lobortis finibus, erat nisl dignissim urna, in vulputate metus libero sollicitudin augue. Nullam suscipit semper sapien, et facilisis felis ullamcorper et.&lt;br&gt;&lt;br&gt;In vestibulum, neque non viverra faucibus, tellus ante eleifend massa, nec tincidunt ligula nisl eget risus. Aenean volutpat vulputate nibh ut porttitor. Suspendisse porta ipsum sagittis augue aliquam, vel convallis nibh facilisis. Sed luctus mauris eget efficitur imperdiet. Maecenas non rutrum urna. Fusce pellentesque convallis ante, at vulputate felis ornare vel. Suspendisse nec euismod enim. Phasellus posuere odio sed lobortis fermentum. Donec mollis imperdiet mollis. Phasellus fringilla odio ut diam facilisis, eget convallis magna consectetur. Curabitur pretium iaculis vestibulum. Integer tincidunt nunc vitae risus interdum luctus. Vivamus et justo a eros ultricies ullamcorper at id leo. &lt;br&gt;&lt;/p&gt;', 'flt_1.jpg', '2020-08-09 08:48:47', '2020-08-09 08:48:47', 1),
(13, 'Lorem ipsum dolor sit amet11', 'lorem-ipsum-dolor-sit-amet11', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod rhoncus orci, ut lacinia enim. Etiam lectus nulla, ultrices in bibendum non, sollicitudin eleifend lacus. Quisque ultricies maximus nisl, sit amet condimentum risus dictum porttitor. Sed sed urna sit amet mauris malesuada facilisis nec at dolor. Pellentesque suscipit efficitur diam nec scelerisque. Quisque gravida nulla quis arcu venenatis accumsan. Nam ultricies, nisi sit amet vestibulum sollicitudin, justo mauris varius tortor, vitae elementum tellus lectus in massa. Nam erat nisi, pellentesque id feugiat vitae, fringilla at arcu. Ut lacinia ullamcorper nibh, sit amet condimentum lorem gravida eu. Nullam vel lectus viverra, hendrerit elit nec, fermentum orci. Morbi id lacus interdum, aliquam ex ac, tristique ipsum. In in sem felis. Ut vitae varius ante. Vivamus odio ipsum, vulputate a ullamcorper nec, viverra at enim. Nullam ac lectus sodales velit scelerisque finibus ac vitae purus.&lt;br&gt;&lt;br&gt;Etiam hendrerit faucibus placerat. Aenean pharetra tincidunt est sodales viverra. In faucibus sollicitudin iaculis. Integer magna neque, pulvinar ut pellentesque sit amet, ullamcorper quis tellus. Donec mattis euismod est, sed venenatis ex tincidunt a. Fusce nec ultricies justo, eget euismod augue. Nunc non tincidunt risus. Etiam pharetra suscipit lorem, quis gravida nulla ultrices sodales. Proin egestas ipsum purus, eu aliquam nisl mollis sit amet. Praesent nec arcu mollis, mattis dolor ac, imperdiet metus. Cras porttitor, neque id lobortis finibus, erat nisl dignissim urna, in vulputate metus libero sollicitudin augue. Nullam suscipit semper sapien, et facilisis felis ullamcorper et.&lt;br&gt;&lt;br&gt;In vestibulum, neque non viverra faucibus, tellus ante eleifend massa, nec tincidunt ligula nisl eget risus. Aenean volutpat vulputate nibh ut porttitor. Suspendisse porta ipsum sagittis augue aliquam, vel convallis nibh facilisis. Sed luctus mauris eget efficitur imperdiet. Maecenas non rutrum urna. Fusce pellentesque convallis ante, at vulputate felis ornare vel. Suspendisse nec euismod enim. Phasellus posuere odio sed lobortis fermentum. Donec mollis imperdiet mollis. Phasellus fringilla odio ut diam facilisis, eget convallis magna consectetur. Curabitur pretium iaculis vestibulum. Integer tincidunt nunc vitae risus interdum luctus. Vivamus et justo a eros ultricies ullamcorper at id leo. &lt;br&gt;&lt;/p&gt;', 'flt_1.jpg', '2020-08-09 08:48:59', '2020-08-09 08:48:59', 1),
(14, 'Lorem ipsum dolor sit amet11', 'lorem-ipsum-dolor-sit-amet11-1', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod rhoncus orci, ut lacinia enim. Etiam lectus nulla, ultrices in bibendum non, sollicitudin eleifend lacus. Quisque ultricies maximus nisl, sit amet condimentum risus dictum porttitor. Sed sed urna sit amet mauris malesuada facilisis nec at dolor. Pellentesque suscipit efficitur diam nec scelerisque. Quisque gravida nulla quis arcu venenatis accumsan. Nam ultricies, nisi sit amet vestibulum sollicitudin, justo mauris varius tortor, vitae elementum tellus lectus in massa. Nam erat nisi, pellentesque id feugiat vitae, fringilla at arcu. Ut lacinia ullamcorper nibh, sit amet condimentum lorem gravida eu. Nullam vel lectus viverra, hendrerit elit nec, fermentum orci. Morbi id lacus interdum, aliquam ex ac, tristique ipsum. In in sem felis. Ut vitae varius ante. Vivamus odio ipsum, vulputate a ullamcorper nec, viverra at enim. Nullam ac lectus sodales velit scelerisque finibus ac vitae purus.&lt;br&gt;&lt;br&gt;Etiam hendrerit faucibus placerat. Aenean pharetra tincidunt est sodales viverra. In faucibus sollicitudin iaculis. Integer magna neque, pulvinar ut pellentesque sit amet, ullamcorper quis tellus. Donec mattis euismod est, sed venenatis ex tincidunt a. Fusce nec ultricies justo, eget euismod augue. Nunc non tincidunt risus. Etiam pharetra suscipit lorem, quis gravida nulla ultrices sodales. Proin egestas ipsum purus, eu aliquam nisl mollis sit amet. Praesent nec arcu mollis, mattis dolor ac, imperdiet metus. Cras porttitor, neque id lobortis finibus, erat nisl dignissim urna, in vulputate metus libero sollicitudin augue. Nullam suscipit semper sapien, et facilisis felis ullamcorper et.&lt;br&gt;&lt;br&gt;In vestibulum, neque non viverra faucibus, tellus ante eleifend massa, nec tincidunt ligula nisl eget risus. Aenean volutpat vulputate nibh ut porttitor. Suspendisse porta ipsum sagittis augue aliquam, vel convallis nibh facilisis. Sed luctus mauris eget efficitur imperdiet. Maecenas non rutrum urna. Fusce pellentesque convallis ante, at vulputate felis ornare vel. Suspendisse nec euismod enim. Phasellus posuere odio sed lobortis fermentum. Donec mollis imperdiet mollis. Phasellus fringilla odio ut diam facilisis, eget convallis magna consectetur. Curabitur pretium iaculis vestibulum. Integer tincidunt nunc vitae risus interdum luctus. Vivamus et justo a eros ultricies ullamcorper at id leo. &lt;br&gt;&lt;/p&gt;', 'flt_1.jpg', '2020-08-09 08:49:06', '2020-08-09 08:49:06', 1),
(15, 'Lorem ipsum dolor sit amet11', 'lorem-ipsum-dolor-sit-amet11-1-2-3', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod rhoncus orci, ut lacinia enim. Etiam lectus nulla, ultrices in bibendum non, sollicitudin eleifend lacus. Quisque ultricies maximus nisl, sit amet condimentum risus dictum porttitor. Sed sed urna sit amet mauris malesuada facilisis nec at dolor. Pellentesque suscipit efficitur diam nec scelerisque. Quisque gravida nulla quis arcu venenatis accumsan. Nam ultricies, nisi sit amet vestibulum sollicitudin, justo mauris varius tortor, vitae elementum tellus lectus in massa. Nam erat nisi, pellentesque id feugiat vitae, fringilla at arcu. Ut lacinia ullamcorper nibh, sit amet condimentum lorem gravida eu. Nullam vel lectus viverra, hendrerit elit nec, fermentum orci. Morbi id lacus interdum, aliquam ex ac, tristique ipsum. In in sem felis. Ut vitae varius ante. Vivamus odio ipsum, vulputate a ullamcorper nec, viverra at enim. Nullam ac lectus sodales velit scelerisque finibus ac vitae purus.&lt;br&gt;&lt;br&gt;Etiam hendrerit faucibus placerat. Aenean pharetra tincidunt est sodales viverra. In faucibus sollicitudin iaculis. Integer magna neque, pulvinar ut pellentesque sit amet, ullamcorper quis tellus. Donec mattis euismod est, sed venenatis ex tincidunt a. Fusce nec ultricies justo, eget euismod augue. Nunc non tincidunt risus. Etiam pharetra suscipit lorem, quis gravida nulla ultrices sodales. Proin egestas ipsum purus, eu aliquam nisl mollis sit amet. Praesent nec arcu mollis, mattis dolor ac, imperdiet metus. Cras porttitor, neque id lobortis finibus, erat nisl dignissim urna, in vulputate metus libero sollicitudin augue. Nullam suscipit semper sapien, et facilisis felis ullamcorper et.&lt;br&gt;&lt;br&gt;In vestibulum, neque non viverra faucibus, tellus ante eleifend massa, nec tincidunt ligula nisl eget risus. Aenean volutpat vulputate nibh ut porttitor. Suspendisse porta ipsum sagittis augue aliquam, vel convallis nibh facilisis. Sed luctus mauris eget efficitur imperdiet. Maecenas non rutrum urna. Fusce pellentesque convallis ante, at vulputate felis ornare vel. Suspendisse nec euismod enim. Phasellus posuere odio sed lobortis fermentum. Donec mollis imperdiet mollis. Phasellus fringilla odio ut diam facilisis, eget convallis magna consectetur. Curabitur pretium iaculis vestibulum. Integer tincidunt nunc vitae risus interdum luctus. Vivamus et justo a eros ultricies ullamcorper at id leo. &lt;br&gt;&lt;/p&gt;&quot;&gt;&lt;img&gt;', 'flt_1.jpg', '2020-08-09 08:49:15', '2020-08-16 07:56:04', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blogstatus`
--

DROP TABLE IF EXISTS `blogstatus`;
CREATE TABLE IF NOT EXISTS `blogstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bstatus` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `blogstatus`
--

INSERT INTO `blogstatus` (`id`, `bstatus`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bookingtbl`
--

DROP TABLE IF EXISTS `bookingtbl`;
CREATE TABLE IF NOT EXISTS `bookingtbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceId` int(255) DEFAULT NULL,
  `agentId` int(11) NOT NULL,
  `adults` int(11) DEFAULT NULL,
  `childrens` int(11) DEFAULT NULL,
  `date` varchar(255) CHARACTER SET latin1 NOT NULL,
  `timing` varchar(255) CHARACTER SET latin1 NOT NULL,
  `serviceBill` float NOT NULL,
  `paymentStatus` varchar(50) CHARACTER SET latin1 NOT NULL,
  `orderId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `serviceStatus` varchar(50) CHARACTER SET latin1 NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `bookingtbl`
--

INSERT INTO `bookingtbl` (`id`, `serviceId`, `agentId`, `adults`, `childrens`, `date`, `timing`, `serviceBill`, `paymentStatus`, `orderId`, `serviceStatus`, `userId`, `upload_date`) VALUES
(2, 25, 7, 1, 0, '21/11/2022', '08:00 AM - 09:00 AM', 0, '0', '', '', 142, '2022-11-20 19:52:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments-settings`
--

DROP TABLE IF EXISTS `comments-settings`;
CREATE TABLE IF NOT EXISTS `comments-settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_plugin` int(11) DEFAULT '1' COMMENT '1 = Facebook, 2 = Disqus',
  `facebook_app_id` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `disqus_short_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comments-settings`
--

INSERT INTO `comments-settings` (`id`, `active_plugin`, `facebook_app_id`, `disqus_short_name`) VALUES
(1, 2, '1645146312195843', 'local-site-1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactdetails`
--

DROP TABLE IF EXISTS `contactdetails`;
CREATE TABLE IF NOT EXISTS `contactdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` text CHARACTER SET latin1 NOT NULL,
  `phone` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` text CHARACTER SET latin1 NOT NULL,
  `map_src` text CHARACTER SET latin1 NOT NULL,
  `map_wd` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `map_ht` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `urlFb` text CHARACTER SET latin1 NOT NULL,
  `urlTwt` text CHARACTER SET latin1 NOT NULL,
  `urlIn` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contactdetails`
--

INSERT INTO `contactdetails` (`id`, `address`, `phone`, `email`, `map_src`, `map_wd`, `map_ht`, `urlFb`, `urlTwt`, `urlIn`) VALUES
(1, 'Skippergata 33, 0154&lt;br&gt;\r\nOslo, Norway', '(123) 456 7892', 'desclix1@gmail.com', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d64033.28149209223!2d10.7247325!3d59.898285!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46416e61f267f039:0x7e92605fd3231e9a!2sOslo, Norway!5e0!3m2!1sen!2s!4v1595953265617!5m2!1sen!2s', '100%', '582', '#fb', '#twt', '#in');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `imgDetails` text CHARACTER SET latin1 NOT NULL,
  `imgPath` text CHARACTER SET latin1 NOT NULL,
  `catId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `gallery`
--

INSERT INTO `gallery` (`id`, `imgName`, `imgDetails`, `imgPath`, `catId`) VALUES
(17, 'Hair design 1', 'Hair design 1 Short Detail.&lt;br&gt;', 'hairdesign1.jpg', 7),
(18, 'Hair design 2', 'Hair design 2 Short Detail.&lt;br&gt;', 'hairdesign2.jpg', 7),
(19, 'Hair design 3', 'Hair design 3 Short Detail.&lt;br&gt;', 'hairdesign3.jpg', 7),
(20, 'Hair design 4', 'Hair design 4 Short Detail.&lt;br&gt;', 'hairdesign4.jpg', 7),
(22, 'Haircut 1', 'Haircut 1 Short Detail.&lt;br&gt;', 'haircut1.jpg', 8),
(23, 'Haircut 2', 'Haircut 2 Short Detail.&lt;br&gt;', 'haircut2.jpg', 8),
(24, 'Haircut 3', 'Haircut 3 Short Detail.&lt;br&gt;', 'haircut3.jpg', 8),
(28, 'Spa 1', 'Spa 1 Short Detail.&lt;br&gt;', 'spa1.jpg', 9),
(29, 'Spa 2', 'Spa 2 Short Detail.&lt;br&gt;', 'spa2.jpg', 9),
(30, 'Spa 3', 'Spa 3 Short Detail.&lt;br&gt;', 'spa3.jpg', 9),
(34, ' Nail Service 1', '&lt;p&gt;Nail service 1 Short Detail.&lt;/p&gt;', 'nail1.jpg', 10),
(35, ' Nail Service 2', '&lt;p&gt;Nail service 2 Short Detail.&lt;/p&gt;', 'nail2.jpg', 10),
(36, ' Nail Service 3', '&lt;p&gt;Nail service 3 Short Detail.&lt;/p&gt;', 'nail3.jpg', 10),
(37, 'Makeup 1', '&lt;p&gt;Makeup 1 Short Detail.&lt;/p&gt;', 'makeup1.jpg', 11),
(38, 'Makeup 2', '&lt;p&gt;Makeup 2 Short Detail.&lt;/p&gt;', 'makeup2.jpg', 11),
(39, 'Makeup 3', '&lt;p&gt;Makeup 3 Short Detail.&lt;/p&gt;', 'makeup3.jpg', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcategory`
--

DROP TABLE IF EXISTS `gcategory`;
CREATE TABLE IF NOT EXISTS `gcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cName` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `gcategory`
--

INSERT INTO `gcategory` (`id`, `cName`) VALUES
(7, 'Hair Design'),
(8, 'Haircut'),
(9, 'Spa'),
(10, 'Nail Service'),
(11, 'Makeup');

-- --------------------------------------------------------

--
-- Estrutura da tabela `general-settings`
--

DROP TABLE IF EXISTS `general-settings`;
CREATE TABLE IF NOT EXISTS `general-settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `keywords` text CHARACTER SET latin1 NOT NULL,
  `logo` text CHARACTER SET latin1 NOT NULL,
  `favicon` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `general-settings`
--

INSERT INTO `general-settings` (`id`, `title`, `description`, `keywords`, `logo`, `favicon`) VALUES
(1, 'Barbershop', 'Salon booking system make easy to use to get appointment and you can easily manage your bookings.', 'beauty salon, salon booking, booking system, salon', 'logo2.png', 'favicon.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logintbl`
--

DROP TABLE IF EXISTS `logintbl`;
CREATE TABLE IF NOT EXISTS `logintbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `verifiedEmail` int(5) NOT NULL,
  `image` varchar(500) CHARACTER SET latin1 NOT NULL,
  `photoURL` varchar(500) CHARACTER SET latin1 NOT NULL,
  `role` int(5) NOT NULL,
  `phone` varchar(255) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(10) CHARACTER SET latin1 NOT NULL,
  `bookingId` int(10) NOT NULL,
  `activated` int(11) NOT NULL,
  `activationCode` text CHARACTER SET latin1 NOT NULL,
  `google` tinyint(1) NOT NULL,
  `facebook` tinyint(1) NOT NULL,
  `privacy` tinyint(1) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `logintbl`
--

INSERT INTO `logintbl` (`id`, `fullName`, `email`, `password`, `verifiedEmail`, `image`, `photoURL`, `role`, `phone`, `gender`, `bookingId`, `activated`, `activationCode`, `google`, `facebook`, `privacy`, `register_date`) VALUES
(104, 'client1', 'client1@mail.com', '$2y$10$BUz2rDlMpqNRgnSFESJqMOBDNHL2b2k64bRza1s2TUBw7jIh6lbyq', 0, '', '', 0, '+923335754716', '', 0, 0, '60d99e7142530a930e74272e27069ecc', 0, 0, 0, '2020-07-29 15:35:24'),
(105, 'client2', 'client2@mail.com', '$2y$10$BkGbW/vgUUH27AF6NQelEODBW8rNdzMCLDasy9FYaaW1mRz7fkpk.', 0, '', '', 0, '+926548765320', '', 0, 0, '9c8ef6ff34ddb86f06231664558ea160', 0, 0, 0, '2020-07-29 15:36:41'),
(106, 'client3', 'client3@mail.com', '$2y$10$YnCp9ib20/kepaIiCNDpj.fuWqo9uYLfsuMNXb.lch3O3v6oHFgam', 0, '', '', 0, '00576654192048', '', 0, 0, '28dbf93f5d65e041000d1e47126419bf', 0, 0, 0, '2020-07-29 15:37:34'),
(140, 'admin1', 'admin@gmail.com', '$2y$10$HzBQtLU2cn1J7COxXHkHee7cOHLh32z4iVOLz018jPqGWrlJc.H72', 0, '', '', 1, '', '', 0, 0, '', 0, 0, 0, '2020-08-03 06:07:48'),
(141, '12345', 'admin@admin.com', '$2y$10$IbzI/xCT54XJzQa1X.BJXu5q6piGwWX1DQ5mlKpEQcj8PETFQSwJu', 0, '', '', 1, '', '', 0, 0, '', 0, 0, 0, '2022-11-20 17:01:03'),
(142, 'Paulo', 'paulo@paulo.com.br', '$2y$10$TMVgvrBkx0O./eAMPTm3eeaGzz6sTxW5U76TrCVygFaU9dQfmux0u', 0, '', '', 0, '161234567', '', 0, 0, 'aebe531ab497870c001893ea4b80d75e', 0, 0, 0, '2022-11-20 19:52:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `meta-tags-settings`
--

DROP TABLE IF EXISTS `meta-tags-settings`;
CREATE TABLE IF NOT EXISTS `meta-tags-settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_tags` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `meta-tags-settings`
--

INSERT INTO `meta-tags-settings` (`id`, `meta_tags`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `bookingId` int(11) NOT NULL,
  `transectionId` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `paid_currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `receipt_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `permalink` text NOT NULL,
  `content` text NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `page_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `title`, `permalink`, `content`, `position`, `status`, `page_order`) VALUES
(2, 'Pol&iacute;tica de Privacidade', 'privacy-policy', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut neque eget velit sagittis viverra vitae ac nisi. Cras tincidunt, erat venenatis ornare hendrerit, lacus ante pulvinar enim, bibendum accumsan arcu eros sed orci. In tempor tincidunt auctor. Vestibulum placerat dignissim lacinia. Vestibulum imperdiet libero elit, sit amet vestibulum ex pellentesque at. Nam egestas erat nisi, quis sollicitudin quam sagittis sed. Phasellus elit urna, mollis sit amet lacus in, lobortis pellentesque leo. Pellentesque hendrerit maximus lacus a faucibus. Aliquam erat volutpat. Mauris eu augue placerat, congue urna sit amet, eleifend leo. Nullam id molestie est. Morbi rhoncus enim at libero ullamcorper, non pellentesque mi molestie. Nam commodo elementum diam, nec aliquam leo gravida vel. Maecenas et lacus metus. Integer lobortis nisi arcu, non elementum erat interdum eu.&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut neque eget velit sagittis viverra vitae ac nisi. Cras tincidunt, erat venenatis ornare hendrerit, lacus ante pulvinar enim, bibendum accumsan arcu eros sed orci. In tempor tincidunt auctor. Vestibulum placerat dignissim lacinia. Vestibulum imperdiet libero elit, sit amet vestibulum ex pellentesque at. Nam egestas erat nisi, quis sollicitudin quam sagittis sed. Phasellus elit urna, mollis sit amet lacus in, lobortis pellentesque leo. Pellentesque hendrerit maximus lacus a faucibus. Aliquam erat volutpat. Mauris eu augue placerat, congue urna sit amet, eleifend leo. Nullam id molestie est. Morbi rhoncus enim at libero ullamcorper, non pellentesque mi molestie. Nam commodo elementum diam, nec aliquam leo gravida vel. Maecenas et lacus metus. Integer lobortis nisi arcu, non elementum erat interdum eu.&lt;/p&gt;\r\n\r\n&lt;p&gt;Fusce vitae leo finibus, placerat ligula nec:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n &lt;li&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit.&lt;/li&gt;\r\n &lt;li&gt;Vestibulum consectetur ex in elementum pulvinar.&lt;/li&gt;\r\n &lt;li&gt;Quisque finibus lectus quis nulla ultrices, ac malesuada turpis consectetur.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut neque eget velit sagittis viverra vitae ac nisi. Cras tincidunt, erat venenatis ornare hendrerit, lacus ante pulvinar enim, bibendum accumsan arcu eros sed orci. In tempor tincidunt auctor. Vestibulum placerat dignissim lacinia. Vestibulum imperdiet libero elit, sit amet vestibulum ex pellentesque at. Nam egestas erat nisi, quis sollicitudin quam sagittis sed. Phasellus elit urna, mollis sit amet lacus in, lobortis pellentesque leo. Pellentesque hendrerit maximus lacus a faucibus. Aliquam erat volutpat. Mauris eu augue placerat, congue urna sit amet, eleifend leo. Nullam id molestie est. Morbi rhoncus enim at libero ullamcorper, non pellentesque mi molestie. Nam commodo elementum diam, nec aliquam leo gravida vel. Maecenas et lacus metus. Integer lobortis nisi arcu, non elementum erat interdum eu.&lt;/p&gt;\r\n', 2, 1, 1),
(4, 'Termos e Condi&ccedil;&otilde;es', 'terms-conditions', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut neque eget velit sagittis viverra vitae ac nisi. Cras tincidunt, erat venenatis ornare hendrerit, lacus ante pulvinar enim, bibendum accumsan arcu eros sed orci. In tempor tincidunt auctor. Vestibulum placerat dignissim lacinia. Vestibulum imperdiet libero elit, sit amet vestibulum ex pellentesque at. Nam egestas erat nisi, quis sollicitudin quam sagittis sed. Phasellus elit urna, mollis sit amet lacus in, lobortis pellentesque leo. Pellentesque hendrerit maximus lacus a faucibus. Aliquam erat volutpat. Mauris eu augue placerat, congue urna sit amet, eleifend leo. Nullam id molestie est. Morbi rhoncus enim at libero ullamcorper, non pellentesque mi molestie. Nam commodo elementum diam, nec aliquam leo gravida vel. Maecenas et lacus metus. Integer lobortis nisi arcu, non elementum erat interdum eu.&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut neque eget velit sagittis viverra vitae ac nisi. Cras tincidunt, erat venenatis ornare hendrerit, lacus ante pulvinar enim, bibendum accumsan arcu eros sed orci. In tempor tincidunt auctor. Vestibulum placerat dignissim lacinia. Vestibulum imperdiet libero elit, sit amet vestibulum ex pellentesque at. Nam egestas erat nisi, quis sollicitudin quam sagittis sed. Phasellus elit urna, mollis sit amet lacus in, lobortis pellentesque leo. Pellentesque hendrerit maximus lacus a faucibus. Aliquam erat volutpat. Mauris eu augue placerat, congue urna sit amet, eleifend leo. Nullam id molestie est. Morbi rhoncus enim at libero ullamcorper, non pellentesque mi molestie. Nam commodo elementum diam, nec aliquam leo gravida vel. Maecenas et lacus metus. Integer lobortis nisi arcu, non elementum erat interdum eu.&lt;/p&gt;\r\n\r\n&lt;p&gt;Fusce vitae leo finibus, placerat ligula nec:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n &lt;li&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit.&lt;/li&gt;\r\n &lt;li&gt;Vestibulum consectetur ex in elementum pulvinar.&lt;/li&gt;\r\n &lt;li&gt;Quisque finibus lectus quis nulla ultrices, ac malesuada turpis consectetur.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut neque eget velit sagittis viverra vitae ac nisi. Cras tincidunt, erat venenatis ornare hendrerit, lacus ante pulvinar enim, bibendum accumsan arcu eros sed orci. In tempor tincidunt auctor. Vestibulum placerat dignissim lacinia. Vestibulum imperdiet libero elit, sit amet vestibulum ex pellentesque at. Nam egestas erat nisi, quis sollicitudin quam sagittis sed. Phasellus elit urna, mollis sit amet lacus in, lobortis pellentesque leo. Pellentesque hendrerit maximus lacus a faucibus. Aliquam erat volutpat. Mauris eu augue placerat, congue urna sit amet, eleifend leo. Nullam id molestie est. Morbi rhoncus enim at libero ullamcorper, non pellentesque mi molestie. Nam commodo elementum diam, nec aliquam leo gravida vel. Maecenas et lacus metus. Integer lobortis nisi arcu, non elementum erat interdum eu.&lt;/p&gt;\r\n', 2, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `recaptcha-settings`
--

DROP TABLE IF EXISTS `recaptcha-settings`;
CREATE TABLE IF NOT EXISTS `recaptcha-settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `site_key` text NOT NULL,
  `secret_key` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `recaptcha-settings`
--

INSERT INTO `recaptcha-settings` (`id`, `status`, `site_key`, `secret_key`) VALUES
(1, 0, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicetable`
--

DROP TABLE IF EXISTS `servicetable`;
CREATE TABLE IF NOT EXISTS `servicetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `price` float NOT NULL,
  `servStart` varchar(20) CHARACTER SET latin1 NOT NULL,
  `servEnd` varchar(20) CHARACTER SET latin1 NOT NULL,
  `servDuration` varchar(20) CHARACTER SET latin1 NOT NULL,
  `servSpace` int(50) NOT NULL,
  `image` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `agentIds` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servicetable`
--

INSERT INTO `servicetable` (`id`, `title`, `description`, `price`, `servStart`, `servEnd`, `servDuration`, `servSpace`, `image`, `agentIds`) VALUES
(19, 'Barba', '&lt;p&gt;Aparar ou retirar barba.&lt;/p&gt;\r\n', 18, '08:00 AM', '07:00 PM', '01:00', 1, 'hairdesign41.jpg', '7'),
(20, 'Corte e Barba', '&lt;p&gt;Corte social e retirar ou aparar&nbsp;barba.&lt;/p&gt;\r\n', 25, '08:00 AM', '07:00 PM', '01:30', 1, 'haircut51.jpg', '7'),
(21, 'Corte Degrad&ecirc; Navalhado', '&lt;p&gt;Corte degrad&ecirc; feito na m&aacute;quina e navalha.&lt;/p&gt;\r\n', 30, '08:00 AM', '07:00 PM', '01:15', 1, 'spa1.jpg', '7,4,1'),
(25, 'Corte Degrad&ecirc;', '&lt;p&gt;Corte com degrad&ecirc; feito na m&aacute;quina.&lt;/p&gt;\r\n', 15, '08:00 AM', '07:00 PM', '01:00', 1, 'Screenshot_3.png', '7,6,4,3'),
(26, 'Corte Social', '&lt;p&gt;Corte na tesoura ou m&aacute;quina.&lt;/p&gt;\r\n', 20, '08:00 AM', '07:00 PM', '01:00', 1, 'Screenshot_3.png', '7');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smtp-settings`
--

DROP TABLE IF EXISTS `smtp-settings`;
CREATE TABLE IF NOT EXISTS `smtp-settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` text NOT NULL,
  `port` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `email` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `smtp-settings`
--

INSERT INTO `smtp-settings` (`id`, `host`, `port`, `username`, `password`, `status`, `email`) VALUES
(1, '', '', '', '', 0, 'admin@admin.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `social-keys-settings`
--

DROP TABLE IF EXISTS `social-keys-settings`;
CREATE TABLE IF NOT EXISTS `social-keys-settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `google_public` varchar(255) NOT NULL,
  `google_secret` varchar(255) NOT NULL,
  `facebook_public` varchar(255) NOT NULL,
  `facebook_secret` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `social-keys-settings`
--

INSERT INTO `social-keys-settings` (`id`, `google_public`, `google_secret`, `facebook_public`, `facebook_secret`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `stripe-settings`
--

DROP TABLE IF EXISTS `stripe-settings`;
CREATE TABLE IF NOT EXISTS `stripe-settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `stripe_api_key` text NOT NULL,
  `stripe_publishable_key` text NOT NULL,
  `stripe_currency` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `stripe-settings`
--

INSERT INTO `stripe-settings` (`id`, `status`, `stripe_api_key`, `stripe_publishable_key`, `stripe_currency`) VALUES
(1, 0, '', '', 'USD');

-- --------------------------------------------------------

--
-- Estrutura da tabela `themesettings`
--

DROP TABLE IF EXISTS `themesettings`;
CREATE TABLE IF NOT EXISTS `themesettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `themesettings`
--

INSERT INTO `themesettings` (`id`, `theme`) VALUES
(1, 'redishtheme');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
