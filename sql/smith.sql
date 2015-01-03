-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 03, 2015 at 04:33 PM
-- Server version: 5.5.35-33.0
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookread_smith`
--

-- --------------------------------------------------------

--
-- Table structure for table `fuel_archives`
--

CREATE TABLE IF NOT EXISTS `fuel_archives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` int(10) unsigned NOT NULL,
  `table_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `version` smallint(5) unsigned NOT NULL,
  `version_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `archived_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=619 ;

--
-- Dumping data for table `fuel_archives`
--

INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(3, 1, 'fuel_navigation', '{"id":1,"location":"home","group_id":"1","nav_key":"ho","label":"Home","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-04 18:55:49', 1),
(4, 2, 'fuel_navigation', '{"id":2,"location":"home","group_id":"1","nav_key":"ho","label":"Home","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-11-04 18:56:01', 1),
(15, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"sshomepage","published":"yes","cache":"yes","date_added":"2014-11-04 05:24:11","last_modified":"2014-11-05 14:06:36","last_modified_by":"1","variables":[{"id":"82","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"83","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"84","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"85","page_id":"1","name":"sections","scope":"","value":[{"slide_title":"Transfer de bani. ","banner_img":"slides\\/slide1.jpg","button_title":"Test","button_url":"home"},{"slide_title":"Slide 2","banner_img":"slides\\/slide2.jpg","button_title":"Titlu buton 2","button_url":"home"}],"type":"array","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"86","page_id":"1","name":"caseta_online_titlu","scope":"","value":"Money Transfer Onlin","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"87","page_id":"1","name":"caseta_online_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"88","page_id":"1","name":"caseta_online_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"89","page_id":"1","name":"caseta_acasa_titlu","scope":"","value":"Acasa (HD)","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"90","page_id":"1","name":"caseta_acasa_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"91","page_id":"1","name":"caseta_acasa_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"92","page_id":"1","name":"caseta_cash_titlu","scope":"","value":"Money Transfer Cash","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"93","page_id":"1","name":"caseta_cash_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"94","page_id":"1","name":"caseta_cash_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"95","page_id":"1","name":"caseta_comisioane_titlu","scope":"","value":"Commissions Cash Romania - Abroad","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"96","page_id":"1","name":"caseta_comisioane_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"97","page_id":"1","name":"caseta_comisioane_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"98","page_id":"1","name":"caseta_retea_titlu","scope":"","value":"Our Network","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"99","page_id":"1","name":"caseta_retea_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"100","page_id":"1","name":"caseta_retea_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"101","page_id":"1","name":"moneygram_img","scope":"","value":"banners\\/moneygram.png","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"}]}', 13, '2014-11-05 12:06:38', 1),
(16, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"sshomepage","published":"yes","cache":"yes","date_added":"2014-11-04 05:24:11","last_modified":"2014-11-05 14:06:50","last_modified_by":"1","variables":[{"id":"102","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"103","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"104","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"105","page_id":"1","name":"sections","scope":"","value":[{"slide_title":"Transfer de bani. ","banner_img":"slides\\/slide1.jpg","button_title":"Test","button_url":"home"},{"slide_title":"Slide 2","banner_img":"slides\\/slide2.jpg","button_title":"Titlu buton 2","button_url":"home"}],"type":"array","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"106","page_id":"1","name":"caseta_online_titlu","scope":"","value":"Money Transfer Online","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"107","page_id":"1","name":"caseta_online_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"108","page_id":"1","name":"caseta_online_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"109","page_id":"1","name":"caseta_acasa_titlu","scope":"","value":"Acasa (HD)","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"110","page_id":"1","name":"caseta_acasa_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"111","page_id":"1","name":"caseta_acasa_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"112","page_id":"1","name":"caseta_cash_titlu","scope":"","value":"Money Transfer Cash","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"113","page_id":"1","name":"caseta_cash_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"114","page_id":"1","name":"caseta_cash_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"115","page_id":"1","name":"caseta_comisioane_titlu","scope":"","value":"Commissions Cash Romania - Abroad","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"116","page_id":"1","name":"caseta_comisioane_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"117","page_id":"1","name":"caseta_comisioane_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"118","page_id":"1","name":"caseta_retea_titlu","scope":"","value":"Our Network","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"119","page_id":"1","name":"caseta_retea_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"120","page_id":"1","name":"caseta_retea_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"121","page_id":"1","name":"moneygram_img","scope":"","value":"banners\\/moneygram.png","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"}]}', 14, '2014-11-05 12:06:51', 1),
(17, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"sshomepage","published":"yes","cache":"yes","date_added":"2014-11-04 05:24:11","last_modified":"2014-11-05 14:11:29","last_modified_by":"1","variables":[{"id":"122","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"123","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"124","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"125","page_id":"1","name":"sections","scope":"","value":[{"slide_title":"Transfer de bani. ","banner_img":"slides\\/slide1.jpg","button_title":"Test","button_url":"home"},{"slide_title":"Slide 2","banner_img":"slides\\/slide2.jpg","button_title":"Titlu buton 2","button_url":"home"}],"type":"array","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"126","page_id":"1","name":"caseta_online_titlu","scope":"","value":"Money Transfer Onlin","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"127","page_id":"1","name":"caseta_online_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"128","page_id":"1","name":"caseta_online_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"129","page_id":"1","name":"caseta_acasa_titlu","scope":"","value":"Acasa (HD)","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"130","page_id":"1","name":"caseta_acasa_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"131","page_id":"1","name":"caseta_acasa_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"132","page_id":"1","name":"caseta_cash_titlu","scope":"","value":"Money Transfer Cash","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"133","page_id":"1","name":"caseta_cash_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"134","page_id":"1","name":"caseta_cash_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"135","page_id":"1","name":"caseta_comisioane_titlu","scope":"","value":"Commissions Cash Romania - Abroad","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"136","page_id":"1","name":"caseta_comisioane_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"137","page_id":"1","name":"caseta_comisioane_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"138","page_id":"1","name":"caseta_retea_titlu","scope":"","value":"Our Network","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"139","page_id":"1","name":"caseta_retea_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"140","page_id":"1","name":"caseta_retea_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"141","page_id":"1","name":"moneygram_img","scope":"","value":"banners\\/moneygram.png","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"}]}', 15, '2014-11-05 12:11:30', 1),
(18, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"sshomepage","published":"yes","cache":"yes","date_added":"2014-11-04 05:24:11","last_modified":"2014-11-05 14:11:40","last_modified_by":"1","variables":[{"id":"142","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"143","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"144","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"145","page_id":"1","name":"sections","scope":"","value":[{"slide_title":"Transfer de bani. ","banner_img":"slides\\/slide1.jpg","button_title":"Test","button_url":"home"},{"slide_title":"Slide 2","banner_img":"slides\\/slide2.jpg","button_title":"Titlu buton 2","button_url":"home"}],"type":"array","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"146","page_id":"1","name":"caseta_online_titlu","scope":"","value":"Money Transfer Online","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"147","page_id":"1","name":"caseta_online_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"148","page_id":"1","name":"caseta_online_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"149","page_id":"1","name":"caseta_acasa_titlu","scope":"","value":"Acasa (HD)","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"150","page_id":"1","name":"caseta_acasa_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"151","page_id":"1","name":"caseta_acasa_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"152","page_id":"1","name":"caseta_cash_titlu","scope":"","value":"Money Transfer Cash","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"153","page_id":"1","name":"caseta_cash_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"154","page_id":"1","name":"caseta_cash_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"155","page_id":"1","name":"caseta_comisioane_titlu","scope":"","value":"Commissions Cash Romania - Abroad","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"156","page_id":"1","name":"caseta_comisioane_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"157","page_id":"1","name":"caseta_comisioane_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"158","page_id":"1","name":"caseta_retea_titlu","scope":"","value":"Our Network","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"159","page_id":"1","name":"caseta_retea_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"160","page_id":"1","name":"caseta_retea_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"161","page_id":"1","name":"moneygram_img","scope":"","value":"banners\\/moneygram.png","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"}]}', 16, '2014-11-05 12:11:41', 1),
(21, 3, 'fuel_navigation', '{"id":3,"location":"home","group_id":"1","nav_key":"home","label":"Homepage","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-05 14:09:56', 1),
(22, 4, 'fuel_navigation', '{"id":4,"location":"stiri","group_id":"1","nav_key":"stiri","label":"Stiri","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-05 14:10:23', 1),
(23, 5, 'fuel_navigation', '{"id":5,"location":"home","group_id":"1","nav_key":"home","label":"Homepage","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-11-05 14:10:42', 1),
(24, 6, 'fuel_navigation', '{"id":6,"location":"stiri","group_id":"1","nav_key":"stiri","label":"News","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-11-05 14:11:04', 1),
(25, 3, 'fuel_navigation', '{"id":"3","location":"home","group_id":"1","nav_key":"home","label":"HOMEPAGE","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-05 14:28:35', 1),
(26, 5, 'fuel_navigation', '{"id":"5","location":"home","group_id":"1","nav_key":"home","label":"HOMEPAGE","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-11-05 14:29:30', 1),
(27, 4, 'fuel_navigation', '{"id":"4","location":"stiri","group_id":"1","nav_key":"stiri","label":"STIRI","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-05 14:29:44', 1),
(28, 6, 'fuel_navigation', '{"id":"6","location":"stiri","group_id":"1","nav_key":"stiri","label":"NEWS","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-11-05 14:29:55', 1),
(29, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"sshomepage","published":"yes","cache":"no","date_added":"2014-11-04 05:24:11","last_modified":"2014-11-05 20:46:00","last_modified_by":"1","variables":[{"id":"166","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"167","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"168","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"169","page_id":"1","name":"sections","scope":"","value":[{"slide_title":"Transfer de bani. ","banner_img":"slides\\/slide1.jpg","button_title":"Test","button_url":"home"},{"slide_title":"Slide 2","banner_img":"slides\\/slide2.jpg","button_title":"Titlu buton 2","button_url":"home"}],"type":"array","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"170","page_id":"1","name":"caseta_online_titlu","scope":"","value":"Money Transfer Online","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"171","page_id":"1","name":"caseta_online_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"172","page_id":"1","name":"caseta_online_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"173","page_id":"1","name":"caseta_acasa_titlu","scope":"","value":"Acasa (HD)","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"174","page_id":"1","name":"caseta_acasa_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"175","page_id":"1","name":"caseta_acasa_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"176","page_id":"1","name":"caseta_cash_titlu","scope":"","value":"Money Transfer Cash","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"177","page_id":"1","name":"caseta_cash_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"178","page_id":"1","name":"caseta_cash_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"179","page_id":"1","name":"caseta_comisioane_titlu","scope":"","value":"Commissions Cash Romania - Abroad","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"180","page_id":"1","name":"caseta_comisioane_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"181","page_id":"1","name":"caseta_comisioane_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"182","page_id":"1","name":"caseta_retea_titlu","scope":"","value":"Our Network","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"183","page_id":"1","name":"caseta_retea_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"184","page_id":"1","name":"caseta_retea_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"185","page_id":"1","name":"moneygram_img","scope":"","value":"banners\\/moneygram.png","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"}]}', 17, '2014-11-05 18:46:01', 1),
(33, 1, 'stiri', '{"id":1,"name":"Stire 01","content":"Aceasta e prima stire.","precedence":"0","published":"no","date_added":"2014-11-06 11:30:57","published_date":0,"language":"ro"}', 1, '2014-11-06 09:30:58', 1),
(34, 2, 'stiri', '{"id":2,"name":"Stire 01","content":"sasasa","precedence":"0","published":"yes","date_added":"2014-11-06 11:34:43","publish_date":0,"language":"ro"}', 1, '2014-11-06 09:34:43', 1),
(35, 3, 'stiri', '{"id":3,"name":"Stire 01","content":"asassasdasd","published":"yes","date_added":"2014-11-06 11:38:01","publish_date":0,"language":"ro"}', 1, '2014-11-06 09:38:01', 1),
(36, 4, 'stiri', '{"id":4,"name":"Stire 01","content":"dsdfsf","published":"yes","date_added":"2014-11-06 11:39:09","publish_date":0,"language":"ro"}', 1, '2014-11-06 09:39:09', 1),
(37, 5, 'stiri', '{"id":5,"name":"Stire 01","content":"dsdsads","published":"no","date_added":"2014-11-06 11:40:42","publish_date":"2014-11-06 00:00:00","language":"ro","precedence":""}', 1, '2014-11-06 09:40:42', 1),
(38, 5, 'stiri', '{"id":"5","name":"Stire 01","content":"dsdsads","published":"yes","date_added":"2014-11-06 11:40:42","publish_date":"2014-11-06 00:00:00","language":"ro","precedence":"0"}', 2, '2014-11-06 09:41:02', 1),
(39, 6, 'stiri', '{"id":6,"name":"news 01","content":"news 01","published":"yes","date_added":"2014-11-06 11:42:10","publish_date":"2014-11-06","language":"en","precedence":""}', 1, '2014-11-06 09:42:10', 1),
(40, 6, 'stiri', '{"id":"6","name":"news 01","content":"news 01","published":"yes","date_added":"2014-11-06 11:42:10","publish_date":"2014-11-06","language":"en","precedence":"0"}', 2, '2014-11-06 09:46:28', 1),
(41, 5, 'stiri', '{"id":"5","name":"Stire 01","content":"dsdsads","published":"yes","date_added":"2014-11-06 11:40:42","publish_date":"2014-11-06","language":"ro","precedence":"0"}', 3, '2014-11-06 09:46:39', 1),
(42, 7, 'stiri', '{"id":7,"name":"Majoritatea birourilor Smith&amp;Smith; au program 7 zile din 7","content":"Majoritatea birourilor Smith&amp;Smith; au program 7 zile din 7.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","published":"yes","date_added":"2014-11-06 12:01:59","publish_date":"2014-11-06","language":"ro","precedence":""}', 1, '2014-11-06 10:01:59', 1),
(43, 8, 'stiri', '{"id":8,"name":"Un nou agent Smith&amp;Smith; la Filiasi","content":"Un nou agent Smith&amp;Smith; la Filiasi\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","published":"yes","date_added":"2014-11-06 12:02:27","publish_date":"2014-11-06","language":"ro","precedence":""}', 1, '2014-11-06 10:02:27', 1),
(44, 8, 'stiri', '{"id":"8","name":"Un nou agent Smith&amp;Smith la Filiasi","content":"Un nou agent Smith&amp;Smith la Filiasi\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","published":"yes","date_added":"2014-11-06 12:02:27","publish_date":"2014-11-06","language":"ro","precedence":"0"}', 2, '2014-11-06 10:02:52', 1),
(45, 7, 'stiri', '{"id":"7","name":"Majoritatea birourilor Smith&amp;Smith au program 7 zile din 7","content":"Majoritatea birourilor Smith&amp;Smith au program 7 zile din 7.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","published":"yes","date_added":"2014-11-06 12:01:59","publish_date":"2014-11-06","language":"ro","precedence":"0"}', 2, '2014-11-06 10:03:12', 1),
(46, 1, 'news', '{"id":1,"title":"Majoritatea birourilor Smith&amp;Smith; au program 7 zile din 7","content":"Majoritatea birourilor Smith&amp;Smith; au program 7 zile din 7\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","publish_date":"2014-11-06","date_added":"2014-11-06 12:24:56","published":"yes","language":"ro"}', 1, '2014-11-06 10:24:56', 1),
(47, 1, 'news', '{"id":"1","title":"Majoritatea birourilor Smith&amp;Smith; au program 7 zile din 7","content":"Majoritatea birourilor Smith&amp;Smith au program 7 zile din 7\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","publish_date":"2014-11-06","date_added":"2014-11-06 12:24:56","published":"yes","language":"ro"}', 2, '2014-11-06 10:25:15', 1),
(48, 1, 'news', '{"id":"1","title":"Majoritatea birourilor Smith&amp;Smith au program 7 zile din 7","content":"Majoritatea birourilor Smith&amp;Smith au program 7 zile din 7\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","publish_date":"2014-11-06","date_added":"2014-11-06 12:24:56","published":"yes","language":"ro"}', 3, '2014-11-06 10:25:20', 1),
(49, 2, 'news', '{"id":2,"title":"Un nou agent SS la Filiasi","content":"Un nou agent SS la Filiasi\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","publish_date":"2014-11-06","date_added":"2014-11-06 12:25:46","published":"yes","language":"ro"}', 1, '2014-11-06 10:25:46', 1),
(50, 1, 'news', '{"id":1,"title":"Un nou agent SS la Filiasi","slug":"un-nou-agent-ss-la-filiasi","content":"Un nou agent SS la Filiasi\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","publish_date":"2014-11-06","date_added":"2014-11-06 12:36:44","published":"yes","language":"ro"}', 4, '2014-11-06 10:36:45', 1),
(51, 2, 'news', '{"id":2,"title":"Majoritatea birourilor SS au program 7 zile din 7","slug":"majoritatea-birourilor-ss-au-program-7-zile-din-7","content":"Majoritatea birourilor SS au program 7 zile din 7\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","publish_date":"2014-11-06","date_added":"2014-11-06 12:37:24","published":"yes","language":"ro"}', 2, '2014-11-06 10:37:24', 1),
(52, 3, 'news', '{"id":3,"title":"News 01","slug":"news-01","content":"Some content 01","publish_date":"2014-11-06","date_added":"2014-11-06 13:19:08","published":"yes","language":"en"}', 1, '2014-11-06 11:19:08', 1),
(53, 4, 'news', '{"id":4,"title":"News 02","slug":"news-02","content":"Some content 02","publish_date":"2014-11-06","date_added":"2014-11-06 13:19:24","published":"yes","language":"en"}', 1, '2014-11-06 11:19:24', 1),
(54, 2, 'fuel_navigation_groups', '{"id":2,"name":"footer","published":"yes"}', 1, '2014-11-06 11:38:08', 1),
(56, 3, 'fuel_navigation_groups', '{"id":3,"name":"footer_menu","published":"yes"}', 1, '2014-11-06 11:43:22', 1),
(57, 7, 'fuel_navigation', '{"id":"7","location":"www.anpc.gov.ro\\/","group_id":"3","nav_key":"www.anpc.gov.ro\\/","label":"ANPC","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-06 11:44:10', 1),
(59, 9, 'fuel_navigation', '{"id":9,"location":"www.cga.ro","group_id":"3","nav_key":"www.cga.ro","label":"CGA","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-06 11:46:00', 1),
(60, 8, 'fuel_navigation', '{"id":"8","location":"www.dataprotection.ro\\/","group_id":"3","nav_key":"www.dataprotection.ro\\/","label":"Data Protection","parent_id":"0","precedence":"3","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-06 11:47:14', 1),
(61, 8, 'fuel_navigation', '{"id":"8","location":"http:\\/\\/www.dataprotection.ro\\/","group_id":"3","nav_key":"www.dataprotection.ro\\/","label":"Data Protection","parent_id":"0","precedence":"3","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-11-06 11:50:31', 1),
(62, 5, 'ss_cities', '{"id":5,"name":"Bucuresti"}', 1, '2014-11-06 15:11:06', 1),
(63, 6, 'ss_cities', '{"id":6,"name":"Bucuresti"}', 1, '2014-11-06 15:11:45', 1),
(64, 7, 'ss_cities', '{"id":7,"name":"Brasov"}', 1, '2014-11-06 15:11:57', 1),
(65, 8, 'ss_cities', '{"id":8,"name":"Cluj"}', 1, '2014-11-06 15:12:07', 1),
(66, 2, 'news', '{"id":"2","title":"Program agentii SS","slug":"majoritatea-birourilor-ss-au-program-7-zile-din-7","content":"Majoritatea birourilor SS au program 7 zile din 7\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.","publish_date":"2014-11-06","date_added":"2014-11-06 12:37:24","published":"yes","language":"ro"}', 3, '2014-11-07 07:34:02', 1),
(67, 5, 'news', '{"id":5,"title":"E gata caseta de stiri","slug":"e-gata-caseta-de-stiri","content":"Am terminat si caseta de stiri, acum o sa fac un backup intrucat ma apuc de login cu ion_auth.","publish_date":"2014-11-07","date_added":"2014-11-07 09:59:04","published":"yes","language":"ro"}', 1, '2014-11-07 07:59:04', 1),
(68, 6, 'news', '{"id":6,"title":"Stirea numarul 4","slug":"stirea-numarul-4","content":"Aceasta e stirea numarul 4 in limba romana. \\r\\n\\r\\nE interesant de vazut daca listarea stirilor tine cont de limita de 3 stiri.","publish_date":"2014-11-07","date_added":"2014-11-07 10:00:07","published":"yes","language":"ro"}', 1, '2014-11-07 08:00:07', 1),
(69, 5, 'news', '{"id":"5","title":"E gata caseta de stiri","slug":"e-gata-caseta-de-stiri","content":"Am terminat si caseta de stiri, acum o sa fac un backup intrucat ma apuc de login cu ion_auth.","publish_date":"2014-11-06","date_added":"2014-11-07 09:59:04","published":"yes","language":"ro"}', 2, '2014-11-07 08:01:18', 1),
(71, 9, 'ss_suppliers', '{"id":"9","name":"Furnizor 1","IBAN":"RO32INGB0000999912341234","bank":"ING Bank Romania","s1":"","t1":"date","s2":"","t2":"date","s3":"","t3":"date","s4":"","t4":"date","s5":"","t5":"date","s6":"","t6":"date"}', 2, '2014-11-11 12:15:31', 1),
(72, 9, 'ss_suppliers', '{"id":"9","name":"Furnizor 1","IBAN":"RO32INGB0000999912341234","bank":"ING Bank Romania","s1":"","t1":"","s2":"","t2":"date","s3":"","t3":"date","s4":"","t4":"date","s5":"","t5":"date","s6":"","t6":"date"}', 3, '2014-11-11 12:27:29', 1),
(73, 10, 'ss_suppliers', '{"id":10,"name":"","IBAN":"","bank":"","s1":"","t1":"","s2":"","t2":"","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 1, '2014-11-11 12:29:53', 1),
(74, 9, 'ss_suppliers', '{"id":"9","name":"Furnizor 1","IBAN":"RO32INGB0000999912341234","bank":"ING Bank Romania","s1":"","t1":"","s2":"","t2":"","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 4, '2014-11-11 12:31:51', 1),
(76, 12, 'ss_suppliers', '{"id":12,"name":"VODAFONE SA","IBAN":"IBAN Vodafone","bank":"ING Bank Romania","s1":"","t1":"","s2":"","t2":"","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 1, '2014-11-11 12:39:54', 1),
(77, 1, 'ss_suppliers_cat', '{"id":1,"name":"Telecom"}', 1, '2014-11-11 12:50:16', 1),
(78, 2, 'ss_suppliers_cat', '{"id":2,"name":"Utilitati"}', 1, '2014-11-11 12:50:30', 1),
(79, 9, 'ss_suppliers', '{"id":"9","name":"Furnizor 1","IBAN":"RO32INGB0000999912341234","bank":"ING Bank Romania","id_cat":"1","s1":"","t1":"","s2":"","t2":"","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 5, '2014-11-11 13:13:13', 1),
(80, 9, 'ss_suppliers', '{"id":"9","name":"ENEL","IBAN":"RO32INGB0000999912341234","bank":"ING Bank Romania","id_cat":"2","s1":"","t1":"","s2":"","t2":"","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 6, '2014-11-11 13:13:23', 1),
(81, 1, 'ss_invoices', '{"id":1,"id_tx":"12321","id_user":"1","id_payment_type":"1","amount":"20000","currency":"RON","id_supplier_cat":"1","id_supplier":"1","fee":"100","total":"500","ts":"1970-01-01 02:00:00"}', 1, '2014-11-12 12:06:27', 1),
(82, 1, 'ss_invoices', '{"id":"1","id_tx":"12321","id_user":"1","id_payment_type":"1","amount":"2000.00","currency":"RON","id_supplier_cat":"1","id_supplier":"1","fee":"100.00","total":"500.00","ts":"1970-01-01 02:00:00"}', 2, '2014-11-12 12:08:00', 1),
(83, 3, 'ss_suppliers_cat', '{"id":3,"name":"Bancar"}', 1, '2014-11-12 13:52:27', 1),
(85, 12, 'ss_suppliers', '{"id":"12","name":"VODAFONE SA","IBAN":"IBAN Vodafone","bank":"ING Bank Romania","id_cat":"1","s1":"","t1":"","s2":"","t2":"","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 2, '2014-11-12 22:03:42', 1),
(86, 13, 'ss_suppliers', '{"id":13,"name":"Libra","IBAN":"3213213","bank":"Libra","id_cat":"3","s1":"","t1":"","s2":"","t2":"","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 1, '2014-11-12 22:07:05', 1),
(87, 11, 'ss_suppliers', '{"id":"11","name":"Orange SA","IBAN":"IBAN Orange","bank":"BRD GSG","id_cat":"1","s1":"Cod client","t1":"text","s2":"Data factura","t2":"date","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 3, '2014-11-13 09:14:18', 1),
(88, 11, 'ss_suppliers', '{"id":"11","name":"Orange SA","IBAN":"IBAN Orange","bank":"BRD GSG","id_cat":"1","s1":"Cod client","t1":"text","s2":"Data factura","t2":"date","s3":"Camp 3","t3":"","s4":"Camp 4","t4":"","s5":"Camp 5","t5":"","s6":"Camp 6","t6":""}', 4, '2014-11-13 11:37:07', 1),
(89, 11, 'ss_suppliers', '{"id":"11","name":"Orange SA","IBAN":"IBAN Orange","bank":"BRD GSG","id_cat":"1","s1":"Cod client","t1":"text","s2":"Data factura","t2":"date","s3":"Camp 3","t3":"numeric","s4":"Camp 4","t4":"textarea","s5":"Camp 5","t5":"text","s6":"Camp 6","t6":"date"}', 5, '2014-11-13 12:07:33', 1),
(90, 11, 'ss_suppliers', '{"id":"11","name":"Orange SA","IBAN":"IBAN Orange","bank":"BRD GSG","id_cat":"1","s1":"Cod client","t1":"text","s2":"Data factura","t2":"date","s3":"Camp 3 numeric","t3":"numeric","s4":"Camp 4 textarea","t4":"textarea","s5":"Camp 5 text","t5":"text","s6":"Camp 6 date","t6":"date"}', 6, '2014-11-13 12:07:53', 1),
(91, 12, 'ss_suppliers', '{"id":"12","name":"VODAFONE SA","IBAN":"IBAN Vodafone","bank":"ING Bank Romania","id_cat":"1","s1":"Cod client","t1":"text","s2":"","t2":"","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 3, '2014-11-13 13:21:14', 1),
(92, 1, 'ss_payment_methods', '{"id":1,"name":"Numerar la Smith & Smith"}', 1, '2014-11-19 21:42:00', 1),
(93, 2, 'ss_payment_methods', '{"id":2,"name":"Numerar la Smith & Smith"}', 1, '2014-11-19 21:42:31', 1),
(94, 3, 'ss_payment_methods', '{"id":3,"name":"Numerar la Banca Comerciala Romana"}', 1, '2014-11-19 21:42:48', 1),
(95, 4, 'ss_payment_methods', '{"id":4,"name":"Numerar la Romanian International Bank"}', 1, '2014-11-19 21:43:14', 1),
(96, 5, 'ss_payment_methods', '{"id":5,"name":"Numerar la Victoria Bank"}', 1, '2014-11-19 21:43:32', 1),
(97, 6, 'ss_payment_methods', '{"id":6,"name":"Numerar la Livrarea Acasa"}', 1, '2014-11-19 21:43:46', 1),
(98, 7, 'ss_payment_methods', '{"id":7,"name":"In Cont LEI Romania"}', 1, '2014-11-19 21:44:06', 1),
(99, 8, 'ss_payment_methods', '{"id":8,"name":"In Cont EUR Romania"}', 1, '2014-11-19 21:44:17', 1),
(100, 9, 'ss_payment_methods', '{"id":9,"name":"In Cont EUR UE"}', 1, '2014-11-19 21:44:32', 1),
(101, 7, 'ss_payment_methods', '{"id":"7","name":"In Cont EUR Romania","language":"ro"}', 2, '2014-11-19 21:50:30', 1),
(102, 8, 'ss_payment_methods', '{"id":"8","name":"In Cont EUR UE","language":"ro"}', 2, '2014-11-19 21:50:42', 1),
(103, 6, 'ss_payment_methods', '{"id":"6","name":"In Cont LEI Romania","language":"ro"}', 2, '2014-11-19 21:50:51', 1),
(104, 2, 'ss_payment_methods', '{"id":"2","name":"Numerar la Banca Comerciala Romana","language":"ro"}', 2, '2014-11-19 21:51:00', 1),
(105, 12, 'ss_suppliers', '{"id":"12","name":"VODAFONE SA","IBAN":"IBAN Vodafone","bank":"ING Bank Romania","id_cat":"1","s1":"ro: Cod client | en: Client code","t1":"text","s2":"","t2":"","s3":"","t3":"","s4":"","t4":"","s5":"","t5":"","s6":"","t6":""}', 4, '2014-11-20 12:47:48', 1),
(106, 11, 'ss_suppliers', '{"id":"11","name":"Orange SA","IBAN":"IBAN Orange","bank":"BRD GSG","id_cat":"1","s1":"ro: Cod client | en: Client code","t1":"text","s2":"ro: Data factura| en: Invoice date","t2":"date","s3":"ro: Camp 3 numeric ro | en: Camp 3 numeric en","t3":"","s4":"ro: Camp 4 textarea ro | en: Camp 4 textarea en","t4":"textarea","s5":"ro: Camp 5 text ro | en: Camp 5 text en","t5":"text","s6":"ro: Camp 6 date ro | en: Camp 6 date en","t6":"date"}', 7, '2014-11-20 13:22:07', 1),
(107, 5, 'ss_payment_methods', '{"id":"5","name":"ro:Numerar la Livrarea Acasa | en: Cash on home delivery"}', 2, '2014-11-21 09:37:54', 1),
(108, 7, 'ss_payment_methods', '{"id":"7","name":"ro:In Cont EUR Romania"}', 3, '2014-11-21 09:38:55', 1),
(109, 9, 'ss_profiles', '{"id":9,"name":"Prenume client","type":"client"}', 1, '2014-11-25 11:45:31', 1),
(110, 10, 'ss_profiles', '{"id":10,"name":"Prenume client","type":"client"}', 1, '2014-11-25 12:05:48', 1),
(111, 11, 'ss_profiles', '{"id":11,"name":"Data nasterii","type":"client"}', 1, '2014-11-25 12:06:00', 1),
(112, 12, 'ss_profiles', '{"id":12,"name":"Numar tranzactii","type":"client"}', 1, '2014-11-25 12:06:26', 1),
(113, 13, 'ss_profiles', '{"id":13,"name":"Resedinta","type":"client"}', 1, '2014-11-25 12:06:39', 1),
(114, 14, 'ss_profiles', '{"id":14,"name":"Prenume","type":"beneficiar"}', 1, '2014-11-25 12:06:51', 1),
(115, 15, 'ss_profiles', '{"id":15,"name":"Data nasterii","type":"beneficiar"}', 1, '2014-11-25 12:07:19', 1),
(116, 16, 'ss_profiles', '{"id":16,"name":"Numar tranzactii","type":"beneficiar"}', 1, '2014-11-25 12:07:34', 1),
(117, 17, 'ss_profiles', '{"id":17,"name":"Resedinta","type":"beneficiar"}', 1, '2014-11-25 12:07:44', 1),
(118, 9, 'ss_profiles', '{"id":"9","name":"Prenume","type":"client"}', 2, '2014-11-25 12:09:29', 1),
(119, 2, 'ss_profile_types', '{"id":2,"name":"Data nasterii client","type":"client"}', 1, '2014-11-25 12:36:08', 1),
(120, 3, 'ss_profile_types', '{"id":3,"name":"Numar tranzactii client","type":"client"}', 1, '2014-11-25 12:36:24', 1),
(121, 3, 'ss_profile_types', '{"id":"3","name":"Resedinta client","type":"client"}', 2, '2014-11-25 12:36:32', 1),
(122, 4, 'ss_profile_types', '{"id":4,"name":"prenume beneficiar","type":"beneficiar"}', 1, '2014-11-25 12:36:44', 1),
(123, 4, 'ss_profile_types', '{"id":"4","name":"Prenume beneficiar","type":"beneficiar"}', 2, '2014-11-25 12:36:49', 1);
INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(124, 5, 'ss_profile_types', '{"id":5,"name":"Data nasterii beneficiar","type":"beneficiar"}', 1, '2014-11-25 12:37:18', 1),
(125, 6, 'ss_profile_types', '{"id":6,"name":"Numar tranzactii beneficiar","type":"beneficiar"}', 1, '2014-11-25 12:37:34', 1),
(126, 7, 'ss_profile_types', '{"id":7,"name":"Resedinta beneficiar","type":"beneficiar"}', 1, '2014-11-25 12:37:46', 1),
(127, 8, 'ss_profile_types', '{"id":8,"name":"Numar tranzactii client","type":"client"}', 1, '2014-11-25 12:38:18', 1),
(128, 1, 'ss_profiles', '{"id":1,"name":"Prenume Gheorghe","value":"George, Gheorghe","id_profile_type":"1"}', 1, '2014-11-25 12:42:30', 1),
(129, 9, 'ss_types', '{"id":9,"name":"Flat","type":"fee"}', 1, '2014-11-25 13:13:05', 1),
(130, 10, 'ss_types', '{"id":10,"name":"Procent","type":"fee"}', 1, '2014-11-25 13:13:15', 1),
(131, 11, 'ss_types', '{"id":11,"name":"Interval","type":"fee"}', 1, '2014-11-25 13:13:46', 1),
(132, 12, 'ss_types', '{"id":12,"name":"Perioada","type":"fee"}', 1, '2014-11-25 13:13:57', 1),
(133, 13, 'ss_types', '{"id":13,"name":"Client","type":"fee"}', 1, '2014-11-25 13:14:11', 1),
(134, 14, 'ss_types', '{"id":14,"name":"Beneficiar","type":"fee"}', 1, '2014-11-25 13:14:21', 1),
(135, 15, 'ss_types', '{"id":15,"name":"Moneda","type":"fee"}', 1, '2014-11-25 13:14:29', 1),
(136, 16, 'ss_types', '{"id":16,"name":"Tranzactii","type":"fee"}', 1, '2014-11-25 13:14:52', 1),
(140, 1, 'ss_fees', '{"id":"1","com_val":"10","com_type":"prc","com_int_apply":"1","com_int_min":"400","com_int_max":"600","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"1970-01-01 02:00:00","com_time_apply":"0","com_time_stop":"1970-01-01 02:00:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"1","fk_ben_type":"4","fk_promo_type":"9","apply_to_amount":"1"}', 4, '2014-11-25 22:06:01', 1),
(141, 3, 'fuel_pages', '{"id":3,"location":"contact\\/mesaj","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 14:41:16","last_modified":"2014-11-26 14:41:16","last_modified_by":"","variables":[{"id":"201","page_id":"3","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"199","page_id":"3","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"200","page_id":"3","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"198","page_id":"3","name":"page_title","scope":"","value":"trimite_mesaj","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"}]}', 1, '2014-11-26 12:41:16', 1),
(148, 1, 'ss_faq', '{"id":1,"question":"Cate transferuri pot efectua intr-o singura zi?","answer":"Nelimitat","date_added":"2014-11-26 15:40:47","published":"yes","language":"ro"}', 1, '2014-11-26 13:40:47', 1),
(149, 2, 'ss_faq', '{"id":2,"question":"How many transfer can I make in one day?","answer":"Unlimited","date_added":"2014-11-26 15:41:12","published":"yes","language":"en"}', 1, '2014-11-26 13:41:12', 1),
(150, 3, 'ss_faq', '{"id":3,"question":"Can I pay invoices?","answer":"Yes, you can.","date_added":"2014-11-26 15:41:41","published":"yes","language":"en"}', 1, '2014-11-26 13:41:41', 1),
(151, 4, 'ss_faq', '{"id":4,"question":"Pot plati facturi?","answer":"Da","date_added":"2014-11-26 15:41:53","published":"yes","language":"ro"}', 1, '2014-11-26 13:41:53', 1),
(152, 4, 'fuel_pages', '{"id":4,"location":"faq","layout":"ssfaq","published":"yes","cache":"yes","date_added":"2014-11-26 15:49:30","last_modified":"2014-11-26 15:49:30","last_modified_by":"","variables":[{"id":"229","page_id":"4","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssfaq","location":"faq","page_published":"yes"},{"id":"227","page_id":"4","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssfaq","location":"faq","page_published":"yes"},{"id":"228","page_id":"4","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssfaq","location":"faq","page_published":"yes"},{"id":"226","page_id":"4","name":"page_title","scope":"","value":"FAQ","type":"string","language":"ro","active":"yes","layout":"ssfaq","location":"faq","page_published":"yes"}]}', 1, '2014-11-26 13:49:30', 1),
(153, 7, 'fuel_navigation', '{"id":7,"location":"faq","group_id":"1","nav_key":"faq","label":"Intrebari frecvente","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-11-26 14:01:35', 1),
(154, 8, 'fuel_navigation', '{"id":8,"location":"faq","group_id":"1","nav_key":"faq","label":"Frequently asked questions","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 4, '2014-11-26 14:01:51', 1),
(155, 8, 'fuel_navigation', '{"id":"8","location":"faq","group_id":"1","nav_key":"faq","label":"FAQ","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 5, '2014-11-26 14:03:32', 1),
(156, 7, 'fuel_navigation', '{"id":"7","location":"faq","group_id":"1","nav_key":"faq","label":"FAQ","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 4, '2014-11-26 14:03:47', 1),
(157, 7, 'fuel_navigation', '{"id":"7","location":"faq","group_id":"1","nav_key":"faq","label":"INTREBARI FRECVENTE","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 5, '2014-11-26 14:03:58', 1),
(158, 7, 'fuel_navigation', '{"id":"7","location":"faq","group_id":"1","nav_key":"faq","label":"INTREBARI FRECVENTE","parent_id":"0","precedence":"50","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 6, '2014-11-26 14:04:40', 1),
(159, 8, 'fuel_navigation', '{"id":"8","location":"faq","group_id":"1","nav_key":"faq","label":"FAQ","parent_id":"0","precedence":"50","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 6, '2014-11-26 14:04:53', 1),
(160, 5, 'fuel_pages', '{"id":5,"location":"contact\\/detalii","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 18:16:25","last_modified":"2014-11-26 18:16:25","last_modified_by":"","variables":[{"id":"233","page_id":"5","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"235","page_id":"5","name":"body","scope":"","value":"Detalii contact","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"236","page_id":"5","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"234","page_id":"5","name":"heading","scope":"","value":"Detalii contact","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"231","page_id":"5","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"232","page_id":"5","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"230","page_id":"5","name":"page_title","scope":"","value":"Detalii contact","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"}]}', 1, '2014-11-26 16:16:25', 1),
(161, 5, 'fuel_pages', '{"id":"5","location":"contact\\/detalii","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 18:16:25","last_modified":"2014-11-26 18:16:48","last_modified_by":"1","variables":[{"id":"240","page_id":"5","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"242","page_id":"5","name":"body","scope":"","value":"Detalii contact","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"243","page_id":"5","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"241","page_id":"5","name":"heading","scope":"","value":"Detalii contact","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"238","page_id":"5","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"239","page_id":"5","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"237","page_id":"5","name":"page_title","scope":"","value":"Detalii contact","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"}]}', 2, '2014-11-26 16:16:49', 1),
(162, 2, 'fuel_navigation_groups', '{"id":2,"name":"contact","published":"yes"}', 2, '2014-11-26 16:17:45', 1),
(163, 9, 'fuel_navigation', '{"id":9,"location":"contact\\/detalii","group_id":"2","nav_key":"contact\\/detalii","label":"Detalii contact","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-26 16:18:26', 1),
(164, 10, 'fuel_navigation', '{"id":10,"location":"","group_id":"2","nav_key":"","label":"call center","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-26 16:30:49', 1),
(165, 6, 'fuel_pages', '{"id":6,"location":"contact\\/callcenter","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 18:31:51","last_modified":"2014-11-26 18:31:51","last_modified_by":"","variables":[{"id":"247","page_id":"6","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"249","page_id":"6","name":"body","scope":"","value":"Informatii callcenter","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"250","page_id":"6","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"248","page_id":"6","name":"heading","scope":"","value":"Call center","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"245","page_id":"6","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"246","page_id":"6","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"244","page_id":"6","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"}]}', 1, '2014-11-26 16:31:52', 1),
(166, 10, 'fuel_navigation', '{"id":"10","location":"contact\\/callcenter","group_id":"2","nav_key":"contact\\/callcenter","label":"Call center","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-26 16:32:14', 1),
(167, 10, 'fuel_navigation', '{"id":"10","location":"contact\\/callcenter","group_id":"2","nav_key":"contact\\/callcenter","label":"Call center","parent_id":"0","precedence":"50","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-11-26 16:32:33', 1),
(168, 11, 'fuel_navigation', '{"id":11,"location":"contact\\/detalii","group_id":"1","nav_key":"contact\\/detalii","label":"Contact","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-26 16:33:20', 1),
(169, 11, 'fuel_navigation', '{"id":"11","location":"contact\\/detalii","group_id":"1","nav_key":"contact\\/detalii","label":"Contact","parent_id":"0","precedence":"60","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-26 16:33:51', 1),
(170, 6, 'fuel_pages', '{"id":"6","location":"contact\\/callcenter","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 18:31:51","last_modified":"2014-11-26 18:34:33","last_modified_by":"1","variables":[{"id":"254","page_id":"6","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"256","page_id":"6","name":"body","scope":"","value":"Informatii callcenter","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"257","page_id":"6","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"255","page_id":"6","name":"heading","scope":"","value":"Call center","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"252","page_id":"6","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"253","page_id":"6","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"251","page_id":"6","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"}]}', 2, '2014-11-26 16:34:34', 1),
(171, 12, 'fuel_navigation', '{"id":12,"location":"contact\\/detalii","group_id":"1","nav_key":"contact\\/detalii","label":"Contact","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-11-26 16:35:38', 1),
(172, 12, 'fuel_navigation', '{"id":"12","location":"contact\\/detalii","group_id":"1","nav_key":"contact\\/detalii","label":"Contact","parent_id":"0","precedence":"60","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-11-26 16:35:54', 1),
(173, 13, 'fuel_navigation', '{"id":13,"location":"contact\\/callcenter","group_id":"2","nav_key":"contact\\/callcenter","label":"Call center","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-11-26 16:36:51', 1),
(174, 14, 'fuel_navigation', '{"id":14,"location":"contact\\/detalii","group_id":"2","nav_key":"contact\\/detalii","label":"Contact details","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-11-26 16:37:29', 1),
(175, 13, 'fuel_navigation', '{"id":"13","location":"contact\\/callcenter","group_id":"2","nav_key":"contact\\/callcenter","label":"Call center","parent_id":"0","precedence":"50","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-11-26 16:38:01', 1),
(176, 7, 'fuel_pages', '{"id":7,"location":"contact\\/mesaj","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 18:39:00","last_modified":"2014-11-26 18:39:00","last_modified_by":"","variables":[{"id":"261","page_id":"7","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"263","page_id":"7","name":"body","scope":"","value":"{$form}","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"264","page_id":"7","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"262","page_id":"7","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"259","page_id":"7","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"260","page_id":"7","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"258","page_id":"7","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"}]}', 1, '2014-11-26 16:39:00', 1),
(177, 7, 'fuel_pages', '{"id":"7","location":"contact\\/mesaj","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 18:39:00","last_modified":"2014-11-26 18:39:57","last_modified_by":"1","variables":[{"id":"268","page_id":"7","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"270","page_id":"7","name":"body","scope":"","value":"{$form}","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"271","page_id":"7","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"269","page_id":"7","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"266","page_id":"7","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"267","page_id":"7","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"265","page_id":"7","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"}]}', 2, '2014-11-26 16:39:57', 1),
(178, 15, 'fuel_navigation', '{"id":15,"location":"contact\\/mesaj","group_id":"2","nav_key":"contact\\/mesaj","label":"Trimite mesaj","parent_id":"0","precedence":"25","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-26 16:45:38', 1),
(179, 16, 'fuel_navigation', '{"id":16,"location":"contact\\/mesaj","group_id":"2","nav_key":"contact\\/mesaj","label":"Send message","parent_id":"0","precedence":"25","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-11-26 16:45:53', 1),
(180, 3, 'fuel_navigation', '{"id":"3","location":"home","group_id":"1","nav_key":"home","label":"Prima pagina","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-11-27 09:09:24', 1),
(181, 8, 'fuel_pages', '{"id":8,"location":"services","layout":"ssservices_main","published":"yes","cache":"yes","date_added":"2014-11-27 11:39:51","last_modified":"2014-11-27 11:39:51","last_modified_by":"","variables":[{"id":"273","page_id":"8","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservices_main","location":"services","page_published":"yes"},{"id":"274","page_id":"8","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservices_main","location":"services","page_published":"yes"},{"id":"272","page_id":"8","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservices_main","location":"services","page_published":"yes"}]}', 1, '2014-11-27 09:39:51', 1),
(182, 9, 'fuel_pages', '{"id":9,"location":"services","layout":"ssservice_main","published":"yes","cache":"yes","date_added":"2014-11-27 11:40:50","last_modified":"2014-11-27 11:40:50","last_modified_by":"","variables":[{"id":"276","page_id":"9","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"services","page_published":"yes"},{"id":"277","page_id":"9","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"services","page_published":"yes"},{"id":"275","page_id":"9","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"services","page_published":"yes"}]}', 1, '2014-11-27 09:40:50', 1),
(183, 17, 'fuel_navigation', '{"id":17,"location":"servicii","group_id":"1","nav_key":"servicii","label":"Servicii","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-27 10:21:14', 1),
(184, 9, 'fuel_pages', '{"id":"9","location":"servicii","layout":"ssservice_main","published":"yes","cache":"yes","date_added":"2014-11-27 11:40:50","last_modified":"2014-11-27 12:21:26","last_modified_by":"1","variables":[{"id":"279","page_id":"9","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"},{"id":"280","page_id":"9","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"},{"id":"278","page_id":"9","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"}]}', 2, '2014-11-27 10:21:27', 1),
(185, 3, 'fuel_navigation', '{"id":"3","location":"home","group_id":"1","nav_key":"home","label":"Pagina principala","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 4, '2014-11-27 10:22:00', 1),
(186, 9, 'fuel_pages', '{"id":"9","location":"servicii","layout":"ssservice_main","published":"yes","cache":"yes","date_added":"2014-11-27 11:40:50","last_modified":"2014-11-27 13:16:03","last_modified_by":"1","variables":[{"id":"284","page_id":"9","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"},{"id":"282","page_id":"9","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"},{"id":"283","page_id":"9","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"},{"id":"281","page_id":"9","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"}]}', 3, '2014-11-27 11:16:04', 1),
(187, 9, 'fuel_pages', '{"id":"9","location":"servicii","layout":"ssservice_main","published":"yes","cache":"yes","date_added":"2014-11-27 11:40:50","last_modified":"2014-11-27 13:16:54","last_modified_by":"1","variables":[{"id":"288","page_id":"9","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"},{"id":"286","page_id":"9","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"},{"id":"287","page_id":"9","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"},{"id":"285","page_id":"9","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_main","location":"servicii","page_published":"yes"}]}', 4, '2014-11-27 11:16:54', 1),
(188, 3, 'fuel_navigation_groups', '{"id":3,"name":"servicii","published":"yes"}', 2, '2014-11-27 11:18:16', 1),
(189, 18, 'fuel_navigation', '{"id":18,"location":"","group_id":"3","nav_key":"","label":"Transfer de bani","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-27 11:18:40', 1),
(190, 19, 'fuel_navigation', '{"id":19,"location":"","group_id":"2","nav_key":"","label":"Conturi de plati","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-27 11:19:20', 1),
(191, 19, 'fuel_navigation', '{"id":"19","location":"","group_id":"3","nav_key":"1","label":"Conturi de plati","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-27 11:19:54', 1),
(192, 19, 'fuel_navigation', '{"id":"19","location":"","group_id":"3","nav_key":"home","label":"Conturi de plati","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-11-27 11:21:56', 1),
(193, 18, 'fuel_navigation', '{"id":"18","location":"home","group_id":"3","nav_key":"home1","label":"Transfer de bani","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-27 11:22:24', 1),
(194, 1, 'ss_display_fees', '{"id":1,"amount_min":"1","amount_max":"50","fee":"3.5"}', 1, '2014-11-27 12:00:34', 1),
(195, 2, 'ss_display_fees', '{"id":2,"amount_min":"51","amount_max":"100","fee":"4"}', 1, '2014-11-27 12:00:58', 1),
(196, 3, 'ss_display_fees', '{"id":3,"amount_min":"101","amount_max":"200","fee":"6"}', 1, '2014-11-27 12:01:10', 1),
(197, 4, 'ss_display_fees', '{"id":4,"amount_min":"201","amount_max":"300","fee":"9"}', 1, '2014-11-27 12:01:24', 1),
(198, 5, 'ss_display_fees', '{"id":5,"amount_min":"301","amount_max":"400","fee":"12"}', 1, '2014-11-27 12:01:37', 1),
(199, 6, 'ss_display_fees', '{"id":6,"amount_min":"401","amount_max":"500","fee":"14"}', 1, '2014-11-27 12:01:49', 1),
(200, 7, 'ss_display_fees', '{"id":7,"amount_min":"501","amount_max":"600","fee":"16"}', 1, '2014-11-27 12:02:05', 1),
(201, 8, 'ss_display_fees', '{"id":8,"amount_min":"601","amount_max":"700","fee":"20"}', 1, '2014-11-27 12:02:17', 1),
(202, 9, 'ss_display_fees', '{"id":9,"amount_min":"701","amount_max":"800","fee":"22"}', 1, '2014-11-27 12:02:28', 1),
(203, 10, 'ss_display_fees', '{"id":10,"amount_min":"801","amount_max":"900","fee":"24"}', 1, '2014-11-27 12:02:42', 1),
(204, 11, 'ss_display_fees', '{"id":11,"amount_min":"901","amount_max":"1000","fee":"28"}', 1, '2014-11-27 12:02:53', 1),
(205, 12, 'ss_display_fees', '{"id":12,"amount_min":"1001","amount_max":"9999","fee":"3","type":"prc"}', 1, '2014-11-27 12:05:27', 1),
(207, 11, 'fuel_pages', '{"id":11,"location":"servicii\\/conturi-plati","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:52","last_modified":"2014-11-27 15:35:52","last_modified_by":"","variables":[{"id":"296","page_id":"11","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"294","page_id":"11","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"295","page_id":"11","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"293","page_id":"11","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"}]}', 1, '2014-11-27 13:35:53', 1),
(208, 18, 'fuel_navigation', '{"id":"18","location":"servicii\\/transfer-bani","group_id":"3","nav_key":"servicii\\/transfer-bani","label":"Transfer de bani","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-11-27 13:36:51', 1),
(209, 19, 'fuel_navigation', '{"id":"19","location":"servicii\\/conturi-plati","group_id":"3","nav_key":"servicii\\/conturi-plati","label":"Conturi de plati","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 4, '2014-11-27 13:37:14', 1),
(210, 19, 'fuel_navigation', '{"id":"19","location":"servicii\\/conturi-plati","group_id":"3","nav_key":"servicii\\/conturi-plati","label":"Conturi de plati","parent_id":"0","precedence":"10","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 5, '2014-11-27 13:37:40', 1),
(213, 11, 'fuel_pages', '{"id":"11","location":"servicii\\/conturi-plati","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:52","last_modified":"2014-11-27 15:45:19","last_modified_by":"1","variables":[{"id":"314","page_id":"11","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"316","page_id":"11","name":"body","scope":"","value":"Conturi de plati","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"317","page_id":"11","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"315","page_id":"11","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"312","page_id":"11","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"313","page_id":"11","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"311","page_id":"11","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"}]}', 2, '2014-11-27 13:45:19', 1),
(215, 20, 'fuel_navigation', '{"id":20,"location":"servicii\\/transfer-bani\\/ro-ro","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-ro","label":"Romania - Romania","parent_id":"18","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-27 13:50:07', 1),
(217, 21, 'fuel_navigation', '{"id":21,"location":"servicii\\/transfer-bani\\/ro-str","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str","label":"Romania - strainatate","parent_id":"18","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-27 14:51:50', 1),
(218, 4, 'fuel_navigation_groups', '{"id":4,"name":"footer_bottom","published":"yes"}', 1, '2014-11-28 19:56:01', 1),
(219, 22, 'fuel_navigation', '{"id":22,"location":"http:\\/\\/www.anpc.gov.ro\\/","group_id":"4","nav_key":"http:\\/\\/www.anpc.gov.ro\\/","label":"ANPC","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-28 19:56:56', 1),
(220, 23, 'fuel_navigation', '{"id":23,"location":"","group_id":"4","nav_key":"1","label":"Conditii generale ale afacerii","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-28 19:57:27', 1),
(221, 14, 'fuel_pages', '{"id":14,"location":"Conditii-generale-ale-afacerii","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-28 21:58:44","last_modified":"2014-11-28 21:58:44","last_modified_by":"","variables":[{"id":"335","page_id":"14","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"Conditii-generale-ale-afacerii","page_published":"yes"},{"id":"337","page_id":"14","name":"body","scope":"","value":"Conditii generale ale afacerii","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"Conditii-generale-ale-afacerii","page_published":"yes"},{"id":"338","page_id":"14","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"Conditii-generale-ale-afacerii","page_published":"yes"},{"id":"336","page_id":"14","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"Conditii-generale-ale-afacerii","page_published":"yes"},{"id":"333","page_id":"14","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"Conditii-generale-ale-afacerii","page_published":"yes"},{"id":"334","page_id":"14","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"Conditii-generale-ale-afacerii","page_published":"yes"},{"id":"332","page_id":"14","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"Conditii-generale-ale-afacerii","page_published":"yes"}]}', 1, '2014-11-28 19:58:44', 1),
(222, 23, 'fuel_navigation', '{"id":"23","location":"Conditii-generale-ale-afacerii","group_id":"4","nav_key":"Conditii-generale-ale-afacerii","label":"Conditii generale ale afacerii","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-28 19:59:19', 1),
(223, 24, 'fuel_navigation', '{"id":24,"location":"http:\\/\\/www.dataprotection.ro\\/","group_id":"4","nav_key":"http:\\/\\/www.dataprotection.ro\\/","label":"Protectia datelor cu caracter personal","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-28 20:00:34', 1),
(224, 14, 'fuel_pages', '{"id":"14","location":"conditii-generale","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-28 21:58:44","last_modified":"2014-11-28 22:07:25","last_modified_by":"1","variables":[{"id":"342","page_id":"14","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"344","page_id":"14","name":"body","scope":"","value":"Conditii generale ale afacerii","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"345","page_id":"14","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"343","page_id":"14","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"340","page_id":"14","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"341","page_id":"14","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"339","page_id":"14","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"}]}', 2, '2014-11-28 20:07:26', 1),
(225, 15, 'fuel_pages', '{"id":15,"location":"conditii-generale_en","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-12-02 13:45:10","last_modified":"2014-12-02 13:45:10","last_modified_by":"","variables":[{"id":"349","page_id":"15","name":"banner_img","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale_en","page_published":"yes"},{"id":"351","page_id":"15","name":"body","scope":"","value":"Business Terms and Conditions","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale_en","page_published":"yes"},{"id":"352","page_id":"15","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale_en","page_published":"yes"},{"id":"350","page_id":"15","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale_en","page_published":"yes"},{"id":"347","page_id":"15","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale_en","page_published":"yes"},{"id":"348","page_id":"15","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale_en","page_published":"yes"},{"id":"346","page_id":"15","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale_en","page_published":"yes"}]}', 1, '2014-12-02 11:45:10', 1),
(226, 22, 'fuel_navigation', '{"id":22,"location":"servicii","group_id":"1","nav_key":"serv","label":"Services","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 11:47:49', 1),
(227, 14, 'fuel_pages', '{"id":"14","location":"conditii-generale","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-28 21:58:44","last_modified":"2014-12-02 13:53:16","last_modified_by":"1","variables":[{"id":"356","page_id":"14","name":"banner_img","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"342","page_id":"14","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"358","page_id":"14","name":"body","scope":"","value":"Business Terms and Conditions","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"344","page_id":"14","name":"body","scope":"","value":"Conditii generale ale afacerii","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"359","page_id":"14","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"345","page_id":"14","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"357","page_id":"14","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"343","page_id":"14","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"354","page_id":"14","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"340","page_id":"14","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"355","page_id":"14","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"341","page_id":"14","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"353","page_id":"14","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"},{"id":"339","page_id":"14","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"conditii-generale","page_published":"yes"}]}', 3, '2014-12-02 11:53:16', 1),
(228, 5, 'fuel_pages', '{"id":"5","location":"contact\\/detalii","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 18:16:25","last_modified":"2014-12-02 14:06:54","last_modified_by":"1","variables":[{"id":"363","page_id":"5","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"240","page_id":"5","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"365","page_id":"5","name":"body","scope":"","value":"Contact details","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"242","page_id":"5","name":"body","scope":"","value":"Detalii contact","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"366","page_id":"5","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"243","page_id":"5","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"364","page_id":"5","name":"heading","scope":"","value":"Detalii contact","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"241","page_id":"5","name":"heading","scope":"","value":"Detalii contact","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"361","page_id":"5","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"238","page_id":"5","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"362","page_id":"5","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"239","page_id":"5","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"360","page_id":"5","name":"page_title","scope":"","value":"Detalii contact","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"},{"id":"237","page_id":"5","name":"page_title","scope":"","value":"Detalii contact","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/detalii","page_published":"yes"}]}', 3, '2014-12-02 12:06:53', 1),
(229, 6, 'fuel_pages', '{"id":"6","location":"contact\\/callcenter","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 18:31:51","last_modified":"2014-12-02 14:07:21","last_modified_by":"1","variables":[{"id":"370","page_id":"6","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"254","page_id":"6","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"372","page_id":"6","name":"body","scope":"","value":"Callcenter information","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"256","page_id":"6","name":"body","scope":"","value":"Informatii callcenter","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"373","page_id":"6","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"257","page_id":"6","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"371","page_id":"6","name":"heading","scope":"","value":"Call center","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"255","page_id":"6","name":"heading","scope":"","value":"Call center","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"368","page_id":"6","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"252","page_id":"6","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"369","page_id":"6","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"253","page_id":"6","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"367","page_id":"6","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"},{"id":"251","page_id":"6","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/callcenter","page_published":"yes"}]}', 3, '2014-12-02 12:07:21', 1),
(230, 23, 'fuel_navigation', '{"id":23,"location":"servicii\\/conturi-plati","group_id":"3","nav_key":"servicii\\/conturi-plati","label":"Payment accounts","parent_id":"0","precedence":"10","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 3, '2014-12-02 12:10:38', 1),
(231, 24, 'fuel_navigation', '{"id":24,"location":"servicii\\/transfer-bani","group_id":"3","nav_key":"servicii\\/transfer-bani","label":"Money transfer","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 12:11:10', 1),
(232, 25, 'fuel_navigation', '{"id":25,"location":"servicii\\/transfer-bani\\/ro-ro","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-ro","label":"Romania - Romania","parent_id":"18","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 12:11:54', 1),
(233, 21, 'fuel_navigation', '{"id":"21","location":"servicii\\/transfer-bani\\/ro-str","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str","label":"Romania - abroad","parent_id":"18","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 12:12:32', 1);
INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(234, 26, 'fuel_navigation', '{"id":26,"location":"servicii\\/transfer-bani\\/ro-str","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str","label":"Romania - strainatate","parent_id":"18","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 12:13:12', 1),
(235, 10, 'fuel_pages', '{"id":"10","location":"servicii\\/transfer-bani","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:25","last_modified":"2014-12-02 14:16:14","last_modified_by":"1","variables":[{"id":"377","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"307","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"379","page_id":"10","name":"body","scope":"","value":"Money transfer","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"309","page_id":"10","name":"body","scope":"","value":"Transfer de bani","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"380","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"310","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"378","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"308","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"375","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"305","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"376","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"306","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"374","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"304","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"}]}', 4, '2014-12-02 12:16:14', 1),
(236, 12, 'fuel_pages', '{"id":"12","location":"servicii\\/transfer-bani\\/ro-ro","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:49:26","last_modified":"2014-12-02 14:16:39","last_modified_by":"1","variables":[{"id":"384","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"321","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"386","page_id":"12","name":"body","scope":"","value":"Money transfer RO RO","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"323","page_id":"12","name":"body","scope":"","value":"Transfer de bani RO RO","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"387","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"324","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"385","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"322","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"382","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"319","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"383","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"320","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"381","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"318","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"}]}', 2, '2014-12-02 12:16:39', 1),
(238, 11, 'fuel_pages', '{"id":"11","location":"servicii\\/conturi-plati","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:52","last_modified":"2014-12-02 14:18:01","last_modified_by":"1","variables":[{"id":"398","page_id":"11","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"314","page_id":"11","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"400","page_id":"11","name":"body","scope":"","value":"Payment accounts","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"316","page_id":"11","name":"body","scope":"","value":"Conturi de plati","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"401","page_id":"11","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"317","page_id":"11","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"399","page_id":"11","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"315","page_id":"11","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"396","page_id":"11","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"312","page_id":"11","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"397","page_id":"11","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"313","page_id":"11","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"395","page_id":"11","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"311","page_id":"11","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"}]}', 3, '2014-12-02 12:18:01', 1),
(239, 27, 'fuel_navigation', '{"id":27,"location":"servicii","group_id":"1","nav_key":"servicii","label":"Services","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 12:21:16', 1),
(240, 25, 'fuel_navigation', '{"id":"25","location":"servicii\\/transfer-bani\\/ro-ro","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-ro","label":"Romania - Romania","parent_id":"24","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 12:29:56', 1),
(241, 21, 'fuel_navigation', '{"id":"21","location":"servicii\\/transfer-bani\\/ro-str","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str","label":"Romania - abroad","parent_id":"24","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 3, '2014-12-02 12:30:32', 1),
(242, 4, 'fuel_navigation_groups', '{"id":4,"name":"foo_menu3","published":"yes"}', 2, '2014-12-02 15:09:57', 1),
(243, 28, 'fuel_navigation', '{"id":28,"location":"","group_id":"4","nav_key":"","label":"Despre noi","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 15:10:42', 1),
(244, 28, 'fuel_navigation', '{"id":"28","location":"\\/","group_id":"4","nav_key":"\\/","label":"Despre noi","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-02 15:10:52', 1),
(245, 29, 'fuel_navigation', '{"id":29,"location":"stiri","group_id":"4","nav_key":"stiri","label":"Stiri","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 15:11:24', 1),
(246, 30, 'fuel_navigation', '{"id":30,"location":"#","group_id":"4","nav_key":"1","label":"Partenerii nostri","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 15:11:58', 1),
(247, 31, 'fuel_navigation', '{"id":31,"location":"contact","group_id":"4","nav_key":"contact","label":"Contact","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 15:12:24', 1),
(248, 32, 'fuel_navigation', '{"id":32,"location":"agent","group_id":"4","nav_key":"agent","label":"Alatura-te echipei","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 15:13:02', 1),
(249, 32, 'fuel_navigation', '{"id":"32","location":"retea","group_id":"4","nav_key":"retea","label":"Reteaua noastra","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-02 15:13:14', 1),
(250, 33, 'fuel_navigation', '{"id":33,"location":"join","group_id":"4","nav_key":"join","label":"Alatura-te echipei","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 15:15:17', 1),
(251, 30, 'fuel_navigation', '{"id":"30","location":"partners","group_id":"4","nav_key":"partners","label":"Partenerii nostri","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-02 15:16:01', 1),
(252, 34, 'fuel_navigation', '{"id":34,"location":"despre","group_id":"4","nav_key":"despre","label":"about us","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 15:16:52', 1),
(253, 35, 'fuel_navigation', '{"id":35,"location":"partners","group_id":"4","nav_key":"partners","label":"our partners","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 15:17:18', 1),
(255, 36, 'fuel_navigation', '{"id":"36","location":"agent","group_id":"4","nav_key":"agent","label":"Become an agen","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 15:17:58', 1),
(256, 36, 'fuel_navigation', '{"id":"36","location":"agent","group_id":"4","nav_key":"agent","label":"Become an agent","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 3, '2014-12-02 15:18:06', 1),
(257, 37, 'fuel_navigation', '{"id":37,"location":"network","group_id":"4","nav_key":"network","label":"Our network","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 15:18:30', 1),
(258, 38, 'fuel_navigation', '{"id":38,"location":"stiri","group_id":"4","nav_key":"stiri","label":"News","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 15:18:49', 1),
(259, 37, 'fuel_navigation', '{"id":"37","location":"retea","group_id":"4","nav_key":"retea","label":"Our network","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 15:19:59', 1),
(260, 36, 'fuel_navigation', '{"id":"36","location":"join","group_id":"4","nav_key":"join","label":"Become an agent","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 4, '2014-12-02 15:20:38', 1),
(261, 39, 'fuel_navigation', '{"id":39,"location":"contact","group_id":"4","nav_key":"contact","label":"Contact","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 15:21:15', 1),
(262, 28, 'fuel_navigation', '{"id":"28","location":"depre","group_id":"4","nav_key":"despre","label":"Despre noi","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-12-02 15:22:31', 1),
(263, 38, 'fuel_navigation', '{"id":"38","location":"stiri","group_id":"4","nav_key":"stiri","label":"News","parent_id":"0","precedence":"10","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 15:22:53', 1),
(264, 29, 'fuel_navigation', '{"id":"29","location":"stiri","group_id":"4","nav_key":"stiri","label":"Stiri","parent_id":"0","precedence":"10","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-02 15:23:06', 1),
(265, 30, 'fuel_navigation', '{"id":"30","location":"partners","group_id":"4","nav_key":"partners","label":"Partenerii nostri","parent_id":"0","precedence":"20","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-12-02 15:23:21', 1),
(266, 35, 'fuel_navigation', '{"id":"35","location":"partners","group_id":"4","nav_key":"partners","label":"our partners","parent_id":"0","precedence":"20","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 15:23:33', 1),
(267, 33, 'fuel_navigation', '{"id":"33","location":"join","group_id":"4","nav_key":"join","label":"Alatura-te echipei","parent_id":"0","precedence":"30","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-02 15:23:46', 1),
(268, 36, 'fuel_navigation', '{"id":"36","location":"join","group_id":"4","nav_key":"join","label":"Become an agent","parent_id":"0","precedence":"30","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 5, '2014-12-02 15:24:04', 1),
(269, 32, 'fuel_navigation', '{"id":"32","location":"retea","group_id":"4","nav_key":"retea","label":"Reteaua noastra","parent_id":"0","precedence":"40","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-12-02 15:24:20', 1),
(270, 37, 'fuel_navigation', '{"id":"37","location":"retea","group_id":"4","nav_key":"retea","label":"Our network","parent_id":"0","precedence":"40","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 3, '2014-12-02 15:24:34', 1),
(271, 31, 'fuel_navigation', '{"id":"31","location":"contact","group_id":"4","nav_key":"contact","label":"Contact","parent_id":"0","precedence":"50","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-02 15:24:47', 1),
(272, 39, 'fuel_navigation', '{"id":"39","location":"contact","group_id":"4","nav_key":"contact","label":"Contact","parent_id":"0","precedence":"50","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 15:24:58', 1),
(273, 16, 'fuel_navigation', '{"id":"16","location":"en\\/contact\\/mesaj","group_id":"2","nav_key":"contact\\/mesaj","label":"Send message","parent_id":"0","precedence":"25","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 15:35:09', 1),
(274, 32, 'fuel_navigation', '{"id":32,"location":"aboutus","group_id":"1","nav_key":"aboutus","label":"Despre noi","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 4, '2014-12-02 17:49:57', 1),
(275, 33, 'fuel_navigation', '{"id":33,"location":"abouts","group_id":"1","nav_key":"abouts","label":"About us","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 3, '2014-12-02 17:53:04', 1),
(287, 5, 'fuel_navigation_groups', '{"id":5,"name":"foo_menu3","published":"yes"}', 1, '2014-12-02 19:26:06', 1),
(288, 34, 'fuel_navigation', '{"id":34,"location":"aboutus","group_id":"5","nav_key":"aboutus","label":"About us","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-02 19:27:18', 1),
(289, 35, 'fuel_navigation', '{"id":35,"location":"stiri","group_id":"5","nav_key":"stiri","label":"News","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 3, '2014-12-02 19:27:38', 1),
(290, 35, 'fuel_navigation', '{"id":"35","location":"aboutus\\/partners","group_id":"5","nav_key":"aboutus\\/partners","label":"our partners","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 4, '2014-12-02 19:28:11', 1),
(291, 36, 'fuel_navigation', '{"id":36,"location":"aboutus\\/agent","group_id":"5","nav_key":"aboutus\\/agent","label":"Become an agent","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 6, '2014-12-02 19:28:37', 1),
(292, 37, 'fuel_navigation', '{"id":37,"location":"aboutus\\/network","group_id":"5","nav_key":"aboutus\\/network","label":"Our network","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 4, '2014-12-02 19:28:56', 1),
(293, 38, 'fuel_navigation', '{"id":38,"location":"contact","group_id":"5","nav_key":"contact","label":"Contact","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 3, '2014-12-02 19:29:14', 1),
(294, 39, 'fuel_navigation', '{"id":39,"location":"stiri","group_id":"4","nav_key":"stiri","label":"news","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 3, '2014-12-02 19:29:48', 1),
(295, 39, 'fuel_navigation', '{"id":"39","location":"stiri","group_id":"5","nav_key":"stiri","label":"news","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 4, '2014-12-02 19:31:02', 1),
(296, 40, 'fuel_navigation', '{"id":40,"location":"aboutus","group_id":"4","nav_key":"ab","label":"Despre noi","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 19:32:27', 1),
(297, 40, 'fuel_navigation', '{"id":"40","location":"aboutus","group_id":"5","nav_key":"aboutus","label":"Despre noi","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-02 19:33:02', 1),
(298, 41, 'fuel_navigation', '{"id":41,"location":"stiri","group_id":"5","nav_key":"stiri","label":"Stiri","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 19:33:28', 1),
(299, 42, 'fuel_navigation', '{"id":42,"location":"aboutus\\/partners","group_id":"5","nav_key":"aboutus\\/partners","label":"our partners","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 19:33:49', 1),
(300, 43, 'fuel_navigation', '{"id":43,"location":"aboutus\\/agent","group_id":"5","nav_key":"aboutus\\/agent","label":"Alatura-te echipei","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 19:34:09', 1),
(301, 43, 'fuel_navigation', '{"id":"43","location":"aboutus\\/network","group_id":"5","nav_key":"aboutus\\/network","label":"Reteaua noastra","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-02 19:34:28', 1),
(302, 44, 'fuel_navigation', '{"id":44,"location":"contact","group_id":"5","nav_key":"contact","label":"Contact","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 19:34:49', 1),
(303, 45, 'fuel_navigation', '{"id":45,"location":"aboutus\\/agent","group_id":"5","nav_key":"aboutus\\/agent","label":"Alatura-te echipei","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 19:35:58', 1),
(306, 6, 'fuel_navigation_groups', '{"id":6,"name":"retea","published":"yes"}', 1, '2014-12-02 19:59:58', 1),
(307, 46, 'fuel_navigation', '{"id":46,"location":"retea\\/smith","group_id":"6","nav_key":"retea\\/smith","label":"Birouri si agentii proprii","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 20:01:06', 1),
(308, 47, 'fuel_navigation', '{"id":47,"location":"retea\\/bcr","group_id":"6","nav_key":"retea\\/bcr","label":"Birouri BCR","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 20:01:30', 1),
(309, 48, 'fuel_navigation', '{"id":48,"location":"retea\\/rib","group_id":"6","nav_key":"retea\\/rib","label":"Birouri RIB","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 20:01:53', 1),
(310, 49, 'fuel_navigation', '{"id":49,"location":"retea\\/vb","group_id":"6","nav_key":"retea\\/vb","label":"Victoria Bank","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-02 20:02:17', 1),
(311, 50, 'fuel_navigation', '{"id":50,"location":"retea\\/smith","group_id":"6","nav_key":"retea\\/smith","label":"Smith Offices","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 20:03:40', 1),
(312, 51, 'fuel_navigation', '{"id":51,"location":"retea\\/bcr","group_id":"6","nav_key":"retea\\/bcr","label":"BCR Offices","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 20:04:11', 1),
(313, 52, 'fuel_navigation', '{"id":52,"location":"retea\\/rib","group_id":"6","nav_key":"retea\\/rib","label":"RIB Offices","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 20:04:30', 1),
(314, 53, 'fuel_navigation', '{"id":53,"location":"retea\\/vb","group_id":"6","nav_key":"retea\\/vb","label":"Victoria Bank","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-02 20:04:48', 1),
(318, 2, 'ss_network', '{"id":2,"date_added":"2014-12-03 00:31:56","published":"yes","id_city":"8","judet":"Cluj","type":"1","phone":"0040213318043","email":"smith.cluj@smith-smith.ro","address":"Str.Al.Vaida-Voievod,nr. 53-55","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"","bh_break_end":"","details":"Mijloace de transport:troleul 25, autobuze 24, 24B si 48\\r\\nIn incinta Iulius Mall la parter,langa intrarea clienti de la Auchan"}', 1, '2014-12-02 22:31:55', 1),
(320, 20, 'fuel_pages', '{"id":20,"location":"retea\\/smith","layout":"ssnetwork","published":"yes","cache":"yes","date_added":"2014-12-03 11:08:11","last_modified":"2014-12-03 11:08:11","last_modified_by":"","variables":[{"id":"610","page_id":"20","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetwork","location":"retea\\/smith","page_published":"yes"},{"id":"608","page_id":"20","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetwork","location":"retea\\/smith","page_published":"yes"},{"id":"609","page_id":"20","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetwork","location":"retea\\/smith","page_published":"yes"},{"id":"607","page_id":"20","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetwork","location":"retea\\/smith","page_published":"yes"}]}', 1, '2014-12-03 09:08:11', 1),
(321, 31, 'fuel_navigation', '{"id":"31","location":"retea","group_id":"4","nav_key":"network","label":"RETEA","parent_id":"0","precedence":"40","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-12-03 09:14:41', 1),
(322, 31, 'fuel_navigation', '{"id":"31","location":"retea","group_id":"4","nav_key":"retea","label":"RETEA","parent_id":"0","precedence":"40","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 4, '2014-12-03 09:15:13', 1),
(323, 31, 'fuel_navigation', '{"id":"31","location":"retea\\/smith","group_id":"4","nav_key":"retea\\/smith","label":"RETEA","parent_id":"0","precedence":"40","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 5, '2014-12-03 09:19:05', 1),
(328, 1, 'ss_network', '{"id":"1","date_added":"2014-12-03 00:16:44","published":"yes","id_city":"7","county":"Brasov","type":"1","phone":"0040213318041","email":"smith.brasov@smith-smith.ro","address":"Str. 15 Noiembrie nr. 17","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"13:00:00","bh_break_end":"14:00:00","details":"info suplimentare"}', 5, '2014-12-03 18:04:30', 1),
(329, 1, 'ss_network', '{"id":"1","date_added":"2014-12-03 00:16:44","published":"yes","id_city":"7","county":"Brasov","type":"1","phone":"0040213318041","email":"smith.brasov@smith-smith.ro","address":"Str. 15 Noiembrie nr. 17","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"13:00:00","bh_break_end":"14:00:00","details":"info suplimentare, si altele"}', 6, '2014-12-03 18:05:28', 1),
(340, 3, 'ss_network', '{"id":"3","date_added":"2014-12-03 00:33:45","published":"yes","id_city":"5","county":"Bucuresti","type":"1","phone":"0040213318030","email":"smith.bucuresti@smith-smith.ro","address":"Str. Justitiei Nr. 54","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"Mijloace de transport: tramvaiul 32.\\r\\nIn apropiere de zona Piata Unirii, (11 Iunie intersectie cu B-dul Regina Maria). Strada Justitiei este paralela cu Strada 11 Iunie. Sediul Smith & Smith se afla langa Manastirea Antim, la parterul cladirii Ascensorul.","coord_lat":"44.425252","coord_long":"26.093440999999984"}', 14, '2014-12-03 18:18:42', 1),
(341, 1, 'ss_network', '{"id":"1","date_added":"2014-12-03 00:16:44","published":"yes","id_city":"7","county":"Brasov","type":"1","phone":"0040213318041","email":"smith.brasov@smith-smith.ro","address":"Str. 15 Noiembrie nr. 17","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"13:00:00","bh_break_end":"14:00:00","details":"info suplimentare, si altele","coord_lat":"45.646854","coord_long":"25.601206000000047"}', 7, '2014-12-03 18:20:54', 1),
(342, 2, 'ss_network', '{"id":"2","date_added":"2014-12-03 00:31:56","published":"yes","id_city":"8","county":"Cluj","type":"1","phone":"0040213318043","email":"smith.cluj@smith-smith.ro","address":"Str.Al.Vaida-Voievod,nr. 53-55","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"46.766667","coord_long":"23.58333300000004"}', 2, '2014-12-03 18:21:30', 1),
(348, 21, 'fuel_pages', '{"id":"21","location":"contact\\/mesaj","layout":"sscontactform","published":"yes","cache":"yes","date_added":"2014-12-03 22:08:38","last_modified":"2014-12-03 22:33:33","last_modified_by":"1","variables":[{"id":"649","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"642","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"651","page_id":"21","name":"body","scope":"","value":"You can contact us using the form below.\\r\\nWe will try to answer your inquiry as soon as possible.","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"644","page_id":"21","name":"body","scope":"","value":"Ne puteti contacta folosind formularul de mai jos.\\r\\nVom raspunde in cel mai scurt timp cu putinta.","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"652","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"645","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"650","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"643","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"647","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"640","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"648","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"641","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"646","page_id":"21","name":"page_title","scope":"","value":"Message","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"639","page_id":"21","name":"page_title","scope":"","value":"Mesaj","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"}]}', 6, '2014-12-03 20:33:34', 1),
(349, 21, 'fuel_pages', '{"id":"21","location":"contact\\/mesaj","layout":"sscontactform","published":"yes","cache":"yes","date_added":"2014-12-03 22:08:38","last_modified":"2014-12-03 22:34:10","last_modified_by":"1","variables":[{"id":"656","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"642","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"658","page_id":"21","name":"body","scope":"","value":"You can contact us using the form below.<p>\\r\\nWe will try to answer your inquiry as soon as possible.","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"644","page_id":"21","name":"body","scope":"","value":"Ne puteti contacta folosind formularul de mai jos.\\r\\nVom raspunde in cel mai scurt timp cu putinta.","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"659","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"645","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"657","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"643","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"654","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"640","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"655","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"641","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"653","page_id":"21","name":"page_title","scope":"","value":"Message","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"639","page_id":"21","name":"page_title","scope":"","value":"Mesaj","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"}]}', 7, '2014-12-03 20:34:10', 1),
(350, 21, 'fuel_pages', '{"id":"21","location":"contact\\/mesaj","layout":"sscontactform","published":"yes","cache":"yes","date_added":"2014-12-03 22:08:38","last_modified":"2014-12-03 22:34:29","last_modified_by":"1","variables":[{"id":"656","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"663","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"658","page_id":"21","name":"body","scope":"","value":"You can contact us using the form below.<p>\\r\\nWe will try to answer your inquiry as soon as possible.","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"665","page_id":"21","name":"body","scope":"","value":"Ne puteti contacta folosind formularul de mai jos.<p>\\r\\nVom raspunde in cel mai scurt timp cu putinta.","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"659","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"666","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"657","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"664","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"654","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"661","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"655","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"662","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"653","page_id":"21","name":"page_title","scope":"","value":"Message","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"660","page_id":"21","name":"page_title","scope":"","value":"Mesaj","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"}]}', 8, '2014-12-03 20:34:30', 1),
(353, 22, 'fuel_pages', '{"id":"22","location":"retea\\/bcr","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 22:43:19","last_modified":"2014-12-03 22:46:19","last_modified_by":"1","variables":[{"id":"674","page_id":"22","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"672","page_id":"22","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"673","page_id":"22","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"671","page_id":"22","name":"page_title","scope":"","value":"Birouri BCR","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"}]}', 3, '2014-12-03 20:46:20', 1),
(354, 22, 'fuel_pages', '{"id":"22","location":"retea\\/bcr","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 22:43:19","last_modified":"2014-12-03 22:54:04","last_modified_by":"1","variables":[{"id":"678","page_id":"22","name":"banner_img","scope":"","value":"banners\\/b_retea..1134x184..o.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"679","page_id":"22","name":"body","scope":"","value":"Banca Comerciala Romana este agent Smith&Smith din anul 2000.\\nCu o retea de peste 500 de locatii raspandite in toata tara, Banca Comerciala Romana  este o alternativa la indemana dumneavoastra de a primi banii din strainatate prin sistemul de transfer de bani Smith&Smith.\\nPentru a gasi cea mai apropiata sucursala a Bancii Comerciale Romane  in vederea ridicarii banilor trimisi prin sistemul Smith&Smith prin sistemul Smith&Smith, faceti click aici.","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"680","page_id":"22","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"676","page_id":"22","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"677","page_id":"22","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"675","page_id":"22","name":"page_title","scope":"","value":"Birouri BCR","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"}]}', 4, '2014-12-03 20:54:05', 1),
(355, 22, 'fuel_pages', '{"id":"22","location":"retea\\/bcr","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 22:43:19","last_modified":"2014-12-03 22:59:34","last_modified_by":"1","variables":[{"id":"684","page_id":"22","name":"banner_img","scope":"","value":"banners\\/b_retea..1134x184..o.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"685","page_id":"22","name":"body","scope":"","value":"Banca Comerciala Romana este agent Smith&Smith din anul 2000.\\nCu o retea de peste 500 de locatii raspandite in toata tara, Banca Comerciala Romana  este o alternativa la indemana dumneavoastra de a primi banii din strainatate prin sistemul de transfer de bani Smith&Smith.\\nPentru a gasi cea mai apropiata sucursala a Bancii Comerciale Romane  in vederea ridicarii banilor trimisi prin sistemul Smith&Smith prin sistemul Smith&Smith, faceti click <a href=\\"https:\\/\\/www.bcr.ro\\/ro\\/retea-unitati\\/\\" target=\\"_blank\\">aici. <\\/a>.","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"686","page_id":"22","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"682","page_id":"22","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"683","page_id":"22","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"681","page_id":"22","name":"page_title","scope":"","value":"Birouri BCR","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"}]}', 5, '2014-12-03 20:59:35', 1),
(356, 22, 'fuel_pages', '{"id":"22","location":"retea\\/bcr","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 22:43:19","last_modified":"2014-12-03 23:00:05","last_modified_by":"1","variables":[{"id":"690","page_id":"22","name":"banner_img","scope":"","value":"banners\\/b_retea..1134x184..o.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"691","page_id":"22","name":"body","scope":"","value":"Banca Comerciala Romana este agent Smith&Smith din anul 2000.\\nCu o retea de peste 500 de locatii raspandite in toata tara, Banca Comerciala Romana  este o alternativa la indemana dumneavoastra de a primi banii din strainatate prin sistemul de transfer de bani Smith&Smith.\\nPentru a gasi cea mai apropiata sucursala a Bancii Comerciale Romane  in vederea ridicarii banilor trimisi prin sistemul Smith&Smith prin sistemul Smith&Smith, faceti click <a href=\\"https:\\/\\/www.bcr.ro\\/ro\\/retea-unitati\\/\\" target=\\"_blank\\">aici. <\\/a>","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"692","page_id":"22","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"688","page_id":"22","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"689","page_id":"22","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"687","page_id":"22","name":"page_title","scope":"","value":"Birouri BCR","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"}]}', 6, '2014-12-03 21:00:06', 1),
(357, 23, 'fuel_pages', '{"id":23,"location":"retea\\/rib","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 23:03:30","last_modified":"2014-12-03 23:03:30","last_modified_by":"","variables":[{"id":"696","page_id":"23","name":"banner_img","scope":"","value":"banners\\/b_retea..1134x184..o.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"697","page_id":"23","name":"body","scope":"","value":"Romanian International Bank este agent Smith&Smith din anul 2010. \\nCu o retea extinsa in principalele orase din Romania, Romanian International Bank  este o alternativa la indemana dumneavoastra de a primi bani din strainatate prin sistemul de transfer de bani Smith&Smith.\\nPentru a gasi cea mai apropiata sucursala a Romanian International Bank in vederea ridicarii banilor trimisi prin sistemul Smith&Smith, faceti click <a href=\\"https:\\/\\/www.bcr.ro\\/ro\\/retea-unitati\\/\\" target=\\"_blank\\">aici. <\\/a>","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"698","page_id":"23","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"694","page_id":"23","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"695","page_id":"23","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"693","page_id":"23","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"}]}', 1, '2014-12-03 21:03:31', 1);
INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(358, 24, 'fuel_pages', '{"id":24,"location":"retea\\/rvb","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 23:06:57","last_modified":"2014-12-03 23:06:57","last_modified_by":"","variables":[{"id":"702","page_id":"24","name":"banner_img","scope":"","value":"banners\\/b_retea..1134x184..o.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rvb","page_published":"yes"},{"id":"703","page_id":"24","name":"body","scope":"","value":"Victoria Bank este agent Smith&Smith din 11 martie 2003. \\nCea mai mare banca privata din Republica Moldova, Victoriabank este o alternativa la indemana dumneavoastra de a primi bani din strainatate in Repubica Moldova prin sistemul de transfer de bani Smith&Smith.\\nPentru a gasi cea mai apropiata sucursala Victoriabank in Republica Moldova  in vederea ridicarii banilor trimisi prin sistemul Smith&Smith prin sistemul Smith&Smith, faceti click aici.","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rvb","page_published":"yes"},{"id":"704","page_id":"24","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rvb","page_published":"yes"},{"id":"700","page_id":"24","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rvb","page_published":"yes"},{"id":"701","page_id":"24","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rvb","page_published":"yes"},{"id":"699","page_id":"24","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rvb","page_published":"yes"}]}', 1, '2014-12-03 21:06:57', 1),
(359, 24, 'fuel_pages', '{"id":"24","location":"retea\\/vb","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 23:06:57","last_modified":"2014-12-03 23:07:44","last_modified_by":"1","variables":[{"id":"708","page_id":"24","name":"banner_img","scope":"","value":"banners\\/b_retea..1134x184..o.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"709","page_id":"24","name":"body","scope":"","value":"Victoria Bank este agent Smith&Smith din 11 martie 2003. \\nCea mai mare banca privata din Republica Moldova, Victoriabank este o alternativa la indemana dumneavoastra de a primi bani din strainatate in Repubica Moldova prin sistemul de transfer de bani Smith&Smith.\\nPentru a gasi cea mai apropiata sucursala Victoriabank in Republica Moldova  in vederea ridicarii banilor trimisi prin sistemul Smith&Smith prin sistemul Smith&Smith, faceti click <a href=\\"https:\\/\\/www.bcr.ro\\/ro\\/retea-unitati\\/\\" target=\\"_blank\\">aici. <\\/a>.","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"710","page_id":"24","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"706","page_id":"24","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"707","page_id":"24","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"705","page_id":"24","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"}]}', 2, '2014-12-03 21:07:44', 1),
(360, 21, 'fuel_pages', '{"id":"21","location":"contact\\/mesaj","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-12-03 22:08:38","last_modified":"2014-12-03 23:22:02","last_modified_by":"1","variables":[{"id":"656","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"714","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"658","page_id":"21","name":"body","scope":"","value":"You can contact us using the form below.<p>\\r\\nWe will try to answer your inquiry as soon as possible.","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"716","page_id":"21","name":"body","scope":"","value":"Ne puteti contacta folosind formularul de mai jos.<p>\\nVom raspunde in cel mai scurt timp cu putinta.","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"659","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"717","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"657","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"715","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"654","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"712","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"655","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"713","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"653","page_id":"21","name":"page_title","scope":"","value":"Message","type":"string","language":"en","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"711","page_id":"21","name":"page_title","scope":"","value":"Mesaj","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"}]}', 9, '2014-12-03 21:22:02', 1),
(361, 19, 'fuel_pages', '{"id":"19","location":"aboutus\\/becomeagent","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-12-02 20:00:41","last_modified":"2014-12-03 23:27:42","last_modified_by":"1","variables":[{"id":"721","page_id":"19","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"722","page_id":"19","name":"body","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"723","page_id":"19","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"719","page_id":"19","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"720","page_id":"19","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"718","page_id":"19","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/becomeagent","page_published":"yes"}]}', 15, '2014-12-03 21:27:43', 1),
(362, 19, 'fuel_pages', '{"id":"19","location":"aboutus\\/becomeagent","layout":"ssabout_agent","published":"yes","cache":"yes","date_added":"2014-12-02 20:00:41","last_modified":"2014-12-03 23:39:22","last_modified_by":"1","variables":[{"id":"727","page_id":"19","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"728","page_id":"19","name":"body","scope":"","value":"Sunteti o persoana cu spirit intreprinzator ?\\nSunteti familiarizat cu internetul si retelele de socializare?\\nStiti sa comunicati cu oamenii ?\\nVreti sa va construiti propria afacere ? \\nNimic mai simplu ! Si dumneavoastra puteti sa deveniti agent Smith&Smith!\\nCompletati formalarul de mai jos si Smith&Smith va va contacta in cel mai scurt timp posibil!","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"729","page_id":"19","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"725","page_id":"19","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"726","page_id":"19","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"724","page_id":"19","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"}]}', 16, '2014-12-03 21:39:23', 1),
(363, 33, 'fuel_navigation', '{"id":"33","location":"aboutus","group_id":"1","nav_key":"aboutus","label":"About us","parent_id":"0","precedence":"3","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 4, '2014-12-03 22:13:39', 1),
(364, 54, 'fuel_navigation', '{"id":54,"location":"retea\\/smith","group_id":"4","nav_key":"retea\\/smith","label":"network","parent_id":"0","precedence":"40","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-03 22:15:42', 1),
(365, 55, 'fuel_navigation', '{"id":55,"location":"aboutus\\/becomeagent","group_id":"4","nav_key":"becomeagent","label":"Become agent","parent_id":"0","precedence":"30","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-03 22:16:49', 1),
(366, 29, 'fuel_navigation', '{"id":"29","location":"aboutus\\/parteners","group_id":"4","nav_key":"parteners","label":"partners","parent_id":"0","precedence":"20","attributes":"","selected":"parteners","hidden":"no","language":"en","published":"yes"}', 3, '2014-12-03 22:17:11', 1),
(367, 28, 'fuel_navigation', '{"id":"28","location":"aboutus\\/profile","group_id":"4","nav_key":"profile","label":"profile","parent_id":"0","precedence":"10","attributes":"","selected":"aboutus","hidden":"no","language":"en","published":"yes"}', 4, '2014-12-03 22:17:29', 1),
(368, 21, 'fuel_pages', '{"id":"21","location":"contact\\/mesaj","layout":"sscontactform","published":"yes","cache":"yes","date_added":"2014-12-03 22:08:38","last_modified":"2014-12-04 01:27:54","last_modified_by":"1","variables":[{"id":"656","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"733","page_id":"21","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"658","page_id":"21","name":"body","scope":"","value":"You can contact us using the form below.<p>\\r\\nWe will try to answer your inquiry as soon as possible.","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"735","page_id":"21","name":"body","scope":"","value":"Ne puteti contacta folosind formularul de mai jos.<p>\\r\\nVom raspunde in cel mai scurt timp cu putinta.","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"659","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"736","page_id":"21","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"657","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"734","page_id":"21","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"654","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"731","page_id":"21","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"655","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"732","page_id":"21","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"653","page_id":"21","name":"page_title","scope":"","value":"Message","type":"string","language":"en","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"},{"id":"730","page_id":"21","name":"page_title","scope":"","value":"Mesaj","type":"string","language":"ro","active":"yes","layout":"sscontactform","location":"contact\\/mesaj","page_published":"yes"}]}', 10, '2014-12-03 23:27:55', 1),
(369, 56, 'fuel_navigation', '{"id":56,"location":"aboutus\\/parteners","group_id":"4","nav_key":"parteners","label":"parteneri","parent_id":"0","precedence":"20","attributes":"","selected":"parteners","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-04 09:18:35', 1),
(370, 57, 'fuel_navigation', '{"id":57,"location":"aboutus\\/profile","group_id":"4","nav_key":"profile","label":"profil","parent_id":"0","precedence":"10","attributes":"","selected":"aboutus","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-04 09:19:00', 1),
(371, 18, 'fuel_pages', '{"id":"18","location":"aboutus\\/parteners","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 14:56:10","last_modified":"2014-12-04 11:20:03","last_modified_by":"1","variables":[{"id":"740","page_id":"18","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"741","page_id":"18","name":"body","scope":"","value":"Smith&Smith, cea mai veche institutie de plata din Romania, lucreza cu peste 40 de sisteme de plati din toata lumea astfel incat prin intermediul Smith&Smith sa va bucurati de cele mai avantajoase tarife de transfer in conditii de siguranta si rapiditate. Din lista noastra de parteneri putem enumera: XXXX\\r\\n<br\\/>\\r\\nSmith&Smith este super agent MoneyGram din anul 2008. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. \\r\\nBanii sunt transferati imediat, ajung&acirc;nd la destina\\u0163ie &icirc;n circa 10 minute. Pentru a transfera banii, persoana &icirc;n cauz\\u0103 are nevoie doar de actul de identitate FARA a completa niciun formular. La acest link, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.\\r\\n<br\\/>\\r\\nSmith&Smith va ofera posibilitatea de afectua plati in peste 500 de locatii prin retelele Bancii Comerciale Romane si Romanian International Bank in Romania si prin Victoriabank in Republica Moldova.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"742","page_id":"18","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"738","page_id":"18","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"739","page_id":"18","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"737","page_id":"18","name":"page_title","scope":"","value":"Parteneri","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"}]}', 1, '2014-12-04 09:20:04', 1),
(372, 18, 'fuel_pages', '{"id":"18","location":"aboutus\\/parteners","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 14:56:10","last_modified":"2014-12-04 11:20:45","last_modified_by":"1","variables":[{"id":"746","page_id":"18","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"740","page_id":"18","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"747","page_id":"18","name":"body","scope":"","value":"Partners in english","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"741","page_id":"18","name":"body","scope":"","value":"Smith&Smith, cea mai veche institutie de plata din Romania, lucreza cu peste 40 de sisteme de plati din toata lumea astfel incat prin intermediul Smith&Smith sa va bucurati de cele mai avantajoase tarife de transfer in conditii de siguranta si rapiditate. Din lista noastra de parteneri putem enumera: XXXX\\r\\n<br\\/>\\r\\nSmith&Smith este super agent MoneyGram din anul 2008. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. \\r\\nBanii sunt transferati imediat, ajung&acirc;nd la destina\\u0163ie &icirc;n circa 10 minute. Pentru a transfera banii, persoana &icirc;n cauz\\u0103 are nevoie doar de actul de identitate FARA a completa niciun formular. La acest link, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.\\r\\n<br\\/>\\r\\nSmith&Smith va ofera posibilitatea de afectua plati in peste 500 de locatii prin retelele Bancii Comerciale Romane si Romanian International Bank in Romania si prin Victoriabank in Republica Moldova.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"748","page_id":"18","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"742","page_id":"18","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"744","page_id":"18","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"738","page_id":"18","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"745","page_id":"18","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"739","page_id":"18","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"743","page_id":"18","name":"page_title","scope":"","value":"Partners","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"737","page_id":"18","name":"page_title","scope":"","value":"Parteneri","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"}]}', 2, '2014-12-04 09:20:46', 1),
(377, 17, 'fuel_pages', '{"id":"17","location":"aboutus\\/profile","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 13:45:12","last_modified":"2014-12-04 11:25:06","last_modified_by":"1","variables":[{"id":"758","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"776","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"759","page_id":"17","name":"body","scope":"","value":"Profile in english","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"777","page_id":"17","name":"body","scope":"","value":"Smith&Smith este prima companie rom&acirc;neasca specializata &icirc;n transfer international de bani, infiintata &icirc;nca din 1999 si autorizata ca institutie de plata de catre Banca Nationala a Rom&acirc;niei &icirc;n conformitate cu prevederile Legii nr.197\\/2010, fiind &icirc;nregistrata &icirc;n Registrul Institutiilor de plata sub numarul IP-RO-0006..\\r\\n<br\\/>\\r\\nSmith&Smith are 43 de birouri in intreaga tara, majoritatea avand un program de functionare 7 zile din 7. Pentru a consulta lista birourilor noastre, accesati reteaua Smith&Smith. Smith&Smith efectueaza plati in peste 500 de locatii prin reteua BCR si RIB in Romania iar in Republica Moldova prin Victoriabank.\\r\\n<br\\/>\\r\\nUn transfer de bani prin Smith&Smith este:\\r\\n<ul>\\r\\n<li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.<\\/li>\\r\\n<\\/ul>\\r\\n<ul><b>Accesibil<\\/b>: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.<\\/ul>\\r\\n<ul>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.<\\/ul>\\r\\n<ul>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.<\\/ul>\\r\\n<br\\/>\\r\\nSmith&Smith lucreaza cu peste 40 de sisteme internationale de remitere de bani din toata lumea.\\r\\nSmith&Smith este si super agent Money Gram in Romania. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. La acest link, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"760","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"778","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"756","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"774","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"757","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"775","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"755","page_id":"17","name":"page_title","scope":"","value":"Profile","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"773","page_id":"17","name":"page_title","scope":"","value":"Profil","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"}]}', 5, '2014-12-04 09:25:06', 1),
(378, 17, 'fuel_pages', '{"id":"17","location":"aboutus\\/profile","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 13:45:12","last_modified":"2014-12-04 11:26:52","last_modified_by":"1","variables":[{"id":"758","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"782","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"759","page_id":"17","name":"body","scope":"","value":"Profile in english","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"783","page_id":"17","name":"body","scope":"","value":"Smith&Smith este prima companie rom&acirc;neasca specializata &icirc;n transfer international de bani, infiintata &icirc;nca din 1999 si autorizata ca institutie de plata de catre Banca Nationala a Rom&acirc;niei &icirc;n conformitate cu prevederile Legii nr.197\\/2010, fiind &icirc;nregistrata &icirc;n Registrul Institutiilor de plata sub numarul IP-RO-0006..\\r\\n<br\\/>\\r\\nSmith&Smith are 43 de birouri in intreaga tara, majoritatea avand un program de functionare 7 zile din 7. Pentru a consulta lista birourilor noastre, accesati reteaua Smith&Smith. Smith&Smith efectueaza plati in peste 500 de locatii prin reteua BCR si RIB in Romania iar in Republica Moldova prin Victoriabank.\\r\\n<br\\/>\\r\\nUn transfer de bani prin Smith&Smith este:\\r\\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.<\\/li>\\r\\n<li><b>Accesibil<\\/b>: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.<\\/li>\\r\\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.<\\/li>\\r\\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.<\\/li>\\r\\n<\\/ul>\\r\\n<br\\/>\\r\\nSmith&Smith lucreaza cu peste 40 de sisteme internationale de remitere de bani din toata lumea.\\r\\nSmith&Smith este si super agent Money Gram in Romania. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. La acest link, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"760","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"784","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"756","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"780","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"757","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"781","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"755","page_id":"17","name":"page_title","scope":"","value":"Profile","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"779","page_id":"17","name":"page_title","scope":"","value":"Profil","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"}]}', 6, '2014-12-04 09:26:53', 1),
(379, 17, 'fuel_pages', '{"id":"17","location":"aboutus\\/profile","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 13:45:12","last_modified":"2014-12-04 11:28:06","last_modified_by":"1","variables":[{"id":"758","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"788","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"759","page_id":"17","name":"body","scope":"","value":"Profile in english","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"789","page_id":"17","name":"body","scope":"","value":"Smith&Smith este prima companie rom&acirc;neasca specializata &icirc;n transfer international de bani, infiintata &icirc;nca din 1999 si autorizata ca institutie de plata de catre Banca Nationala a Rom&acirc;niei &icirc;n conformitate cu prevederile Legii nr.197\\/2010, fiind &icirc;nregistrata &icirc;n Registrul Institutiilor de plata sub numarul IP-RO-0006..\\r\\n<br\\/>\\r\\nSmith&Smith are 43 de birouri in intreaga tara, majoritatea avand un program de functionare 7 zile din 7. Pentru a consulta lista birourilor noastre, accesati reteaua Smith&Smith. Smith&Smith efectueaza plati in peste 500 de locatii prin reteua BCR si RIB in Romania iar in Republica Moldova prin Victoriabank.\\r\\n<br><\\/br>\\r\\nUn transfer de bani prin Smith&Smith este:\\r\\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.<\\/li>\\r\\n<li><b>Accesibil<\\/b>: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.<\\/li>\\r\\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.<\\/li>\\r\\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.<\\/li>\\r\\n<\\/ul>\\r\\n<br\\/>\\r\\nSmith&Smith lucreaza cu peste 40 de sisteme internationale de remitere de bani din toata lumea.\\r\\nSmith&Smith este si super agent Money Gram in Romania. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. La acest link, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"760","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"790","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"756","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"786","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"757","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"787","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"755","page_id":"17","name":"page_title","scope":"","value":"Profile","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"785","page_id":"17","name":"page_title","scope":"","value":"Profil","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"}]}', 7, '2014-12-04 09:28:07', 1),
(380, 1, 'ss_network', '{"id":"1","date_added":"2014-12-03 00:16:44","published":"yes","id_city":"7","county":"Brasov","type":"1","phone":"0040213318041","email":"smith.brasov@smith-smith.ro","address":"Str. 15 Noiembrie nr. 17","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"13:00:00","bh_break_end":"14:00:00","details":"","coord_lat":"45.646854","coord_long":"25.601206000000047"}', 8, '2014-12-04 10:05:56', 1),
(381, 3, 'ss_network', '{"id":"3","date_added":"2014-12-03 00:33:45","published":"yes","id_city":"5","county":"Bucuresti","type":"1","phone":"0040213318030","email":"smith.bucuresti@smith-smith.ro","address":"Str. Justitiei Nr. 54","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"44.425252","coord_long":"26.093440999999984"}', 15, '2014-12-04 10:06:14', 1),
(382, 3, 'ss_network', '{"id":"3","date_added":"2014-12-03 00:33:45","published":"yes","id_city":"5","county":"Bucuresti","type":"1","phone":"0040213318030","email":"smith.bucuresti@smith-smith.ro","address":"Str. Justitiei Nr. 54","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"Mijloace de transport: tramvaiul 32\\nIn apropiere de zona Piata Unirii, (11 Iunie intersectie cu B-dul Regina Maria). Strada Justitiei este paralela cu Strada 11 Iunie. Sediul Smith & Smith se afla langa Manastirea Antim, la parterul cladirii Ascensorul.","coord_lat":"44.425252","coord_long":"26.093440999999984"}', 16, '2014-12-04 10:54:54', 1),
(383, 3, 'ss_network', '{"id":"3","date_added":"2014-12-03 00:33:45","published":"yes","id_city":"5","county":"Bucuresti","type":"1","phone":"0040213318030","email":"smith.bucuresti@smith-smith.ro","address":"Str. Justitiei Nr. 54","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"Mijloace de transport: tramvaiul 32. \\nIn apropiere de zona Piata Unirii, (11 Iunie intersectie cu B-dul Regina Maria). Strada Justitiei este paralela cu Strada 11 Iunie. Sediul Smith & Smith se afla langa Manastirea Antim, la parterul cladirii Ascensorul.","coord_lat":"44.425252","coord_long":"26.093440999999984"}', 17, '2014-12-04 10:55:19', 1),
(385, 7, 'news', '{"id":7,"title":"news 03","slug":"news-03","content":"news 03","publish_date":"2014-12-04","date_added":"2014-12-04 13:34:01","published":"yes","language":"en"}', 1, '2014-12-04 11:34:01', 1),
(388, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"no","date_added":"2014-11-05 15:57:52","last_modified":"2014-12-04 14:02:23","last_modified_by":"1","variables":[{"id":"809","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"807","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"808","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"810","page_id":"2","name":"news_per_page","scope":"","value":"2","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"806","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 15, '2014-12-04 12:02:23', 1),
(389, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"no","date_added":"2014-11-05 15:57:52","last_modified":"2014-12-04 14:14:03","last_modified_by":"1","variables":[{"id":"814","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"812","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"813","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"815","page_id":"2","name":"news_per_page","scope":"","value":"3","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"811","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 16, '2014-12-04 12:14:03', 1),
(390, 8, 'news', '{"id":8,"title":"stire importanta","slug":"stire-importanta","content":"aceasta e o stire importanta","publish_date":"2014-12-04","date_added":"2014-12-04 15:06:17","published":"yes","language":"ro"}', 1, '2014-12-04 13:06:17', 1),
(391, 9, 'news', '{"id":9,"title":"news 05","slug":"news-05","content":"news 05","publish_date":"2014-12-03","date_added":"2014-12-04 15:39:14","published":"yes","language":"ro"}', 1, '2014-12-04 13:39:14', 1),
(392, 9, 'news', '{"id":"9","title":"news 05","slug":"news-05","content":"news 05","publish_date":"2014-12-04","date_added":"2014-12-04 15:39:14","published":"yes","language":"ro"}', 2, '2014-12-04 13:39:26', 1),
(393, 9, 'news', '{"id":"9","title":"news 05","slug":"news-05","content":"news 05","publish_date":"2014-12-04","date_added":"2014-12-04 15:39:14","published":"yes","language":"en"}', 3, '2014-12-04 13:39:34', 1),
(394, 10, 'news', '{"id":10,"title":"news 06","slug":"news-06","content":"news 06","publish_date":"2014-12-04","date_added":"2014-12-04 15:39:14","published":"yes","language":"en"}', 1, '2014-12-04 13:39:49', 1),
(395, 7, 'fuel_navigation_groups', '{"id":7,"name":"foo_menu5","published":"yes"}', 1, '2014-12-04 15:31:30', 1),
(396, 58, 'fuel_navigation', '{"id":58,"location":"http:\\/\\/facebook.com","group_id":"7","nav_key":"http:\\/\\/facebook.com","label":"Facebook","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-04 15:32:00', 1),
(397, 59, 'fuel_navigation', '{"id":59,"location":"http:\\/\\/twitter.com","group_id":"7","nav_key":"http:\\/\\/twitter.com","label":"Twitter","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-04 15:32:32', 1),
(398, 8, 'fuel_navigation_groups', '{"id":8,"name":"foo_menu4","published":"yes"}', 1, '2014-12-04 15:37:03', 1),
(399, 60, 'fuel_navigation', '{"id":60,"location":"aboutus\\/profile","group_id":"8","nav_key":"aboutus\\/profile","label":"profil","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-04 15:37:55', 1),
(400, 61, 'fuel_navigation', '{"id":61,"location":"aboutus\\/profile","group_id":"8","nav_key":"aboutus\\/profile","label":"profile","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-04 15:38:09', 1),
(401, 62, 'fuel_navigation', '{"id":62,"location":"retea\\/smith","group_id":"8","nav_key":"retea\\/smith","label":"retea","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-04 15:38:49', 1),
(402, 63, 'fuel_navigation', '{"id":63,"location":"retea\\/smith","group_id":"8","nav_key":"retea\\/smith","label":"network","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-04 15:39:04', 1),
(403, 64, 'fuel_navigation', '{"id":64,"location":"faq","group_id":"8","nav_key":"faq","label":"faq","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-04 15:39:37', 1),
(404, 65, 'fuel_navigation', '{"id":65,"location":"faq","group_id":"8","nav_key":"faq","label":"intrebari frecvente","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-04 15:39:55', 1),
(405, 14, 'fuel_pages', '{"id":"14","location":"conditii-generale","layout":"sssimple_page","published":"yes","cache":"yes","date_added":"2014-11-28 21:58:44","last_modified":"2014-12-04 17:58:13","last_modified_by":"1","variables":[{"id":"356","page_id":"14","name":"banner_img","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"358","page_id":"14","name":"body","scope":"","value":"Business Terms and Conditions","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"820","page_id":"14","name":"body","scope":"","value":"Conditii generale ale afacerii","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"359","page_id":"14","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"821","page_id":"14","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"357","page_id":"14","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"819","page_id":"14","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"354","page_id":"14","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"817","page_id":"14","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"355","page_id":"14","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"818","page_id":"14","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"353","page_id":"14","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"816","page_id":"14","name":"page_title","scope":"","value":"Conditii generale ale afacerii","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"}]}', 4, '2014-12-04 15:58:13', 1);
INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(406, 14, 'fuel_pages', '{"id":"14","location":"conditii-generale","layout":"sssimple_page","published":"yes","cache":"yes","date_added":"2014-11-28 21:58:44","last_modified":"2014-12-04 17:58:35","last_modified_by":"1","variables":[{"id":"826","page_id":"14","name":"body","scope":"","value":"Business Terms and Conditions","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"820","page_id":"14","name":"body","scope":"","value":"Conditii generale ale afacerii","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"827","page_id":"14","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"821","page_id":"14","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"825","page_id":"14","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"819","page_id":"14","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"823","page_id":"14","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"817","page_id":"14","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"824","page_id":"14","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"818","page_id":"14","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"822","page_id":"14","name":"page_title","scope":"","value":"Business terms and conditions","type":"string","language":"en","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"},{"id":"816","page_id":"14","name":"page_title","scope":"","value":"Conditii generale ale afacerii","type":"string","language":"ro","active":"yes","layout":"sssimple_page","location":"conditii-generale","page_published":"yes"}]}', 5, '2014-12-04 15:58:35', 1),
(407, 2, 'fuel_pages', '{"id":"2","location":"stiritemp","layout":"ssnews","published":"no","cache":"no","date_added":"2014-11-05 15:57:52","last_modified":"2014-12-04 22:16:42","last_modified_by":"1","variables":[{"id":"831","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiritemp","page_published":"no"},{"id":"829","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiritemp","page_published":"no"},{"id":"830","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiritemp","page_published":"no"},{"id":"832","page_id":"2","name":"news_per_page","scope":"","value":"3","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiritemp","page_published":"no"},{"id":"828","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiritemp","page_published":"no"}]}', 17, '2014-12-04 20:16:42', 1),
(408, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"no","cache":"no","date_added":"2014-11-05 15:57:52","last_modified":"2014-12-04 22:28:31","last_modified_by":"1","variables":[{"id":"836","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"no"},{"id":"834","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"no"},{"id":"835","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"no"},{"id":"837","page_id":"2","name":"news_per_page","scope":"","value":"3","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"no"},{"id":"833","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"no"}]}', 18, '2014-12-04 20:28:31', 1),
(409, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"no","date_added":"2014-11-05 15:57:52","last_modified":"2014-12-04 22:29:03","last_modified_by":"1","variables":[{"id":"841","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"839","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"840","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"842","page_id":"2","name":"news_per_page","scope":"","value":"3","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"838","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 19, '2014-12-04 20:29:03', 1),
(412, 13, 'fuel_pages', '{"id":"13","location":"servicii\\/transfer-bani\\/ro-str","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 16:51:15","last_modified":"2014-12-05 11:05:31","last_modified_by":"1","variables":[{"id":"860","page_id":"13","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"862","page_id":"13","name":"body","scope":"","value":"Transfer Ro - strainatate","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"863","page_id":"13","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"861","page_id":"13","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"858","page_id":"13","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"859","page_id":"13","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"857","page_id":"13","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"}]}', 5, '2014-12-05 09:05:32', 1),
(413, 25, 'fuel_pages', '{"id":25,"location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-05 11:12:27","last_modified":"2014-12-05 11:12:27","last_modified_by":"","variables":[{"id":"867","page_id":"25","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"869","page_id":"25","name":"body","scope":"","value":"servicii transfer ro-ro numerar","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"870","page_id":"25","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"868","page_id":"25","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"865","page_id":"25","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"866","page_id":"25","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"864","page_id":"25","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"}]}', 1, '2014-12-05 09:12:28', 1),
(414, 25, 'fuel_pages', '{"id":"25","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-05 11:12:27","last_modified":"2014-12-05 11:12:44","last_modified_by":"1","variables":[{"id":"874","page_id":"25","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"876","page_id":"25","name":"body","scope":"","value":"servicii transfer ro-ro numerar","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"877","page_id":"25","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"875","page_id":"25","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"872","page_id":"25","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"873","page_id":"25","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"871","page_id":"25","name":"page_title","scope":"","value":"Servicii transfer RO-RO numerar","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"}]}', 2, '2014-12-05 09:12:44', 1),
(415, 25, 'fuel_pages', '{"id":"25","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-05 11:12:27","last_modified":"2014-12-05 11:13:13","last_modified_by":"1","variables":[{"id":"881","page_id":"25","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"874","page_id":"25","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"883","page_id":"25","name":"body","scope":"","value":"Cash transfer RO-RO","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"876","page_id":"25","name":"body","scope":"","value":"servicii transfer ro-ro numerar","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"884","page_id":"25","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"877","page_id":"25","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"882","page_id":"25","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"875","page_id":"25","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"879","page_id":"25","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"872","page_id":"25","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"880","page_id":"25","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"873","page_id":"25","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"878","page_id":"25","name":"page_title","scope":"","value":"Cash transfer RO-RO","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"},{"id":"871","page_id":"25","name":"page_title","scope":"","value":"Servicii transfer RO-RO numerar","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","page_published":"yes"}]}', 3, '2014-12-05 09:13:13', 1),
(416, 66, 'fuel_navigation', '{"id":66,"location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-ro\\/numerar","label":"Numerar","parent_id":"20","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-05 09:16:34', 1),
(417, 67, 'fuel_navigation', '{"id":67,"location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-ro\\/numerar","label":"Cash","parent_id":"20","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-05 09:16:53', 1),
(418, 12, 'fuel_pages', '{"id":"12","location":"servicii\\/transfer-bani\\/ro-ro","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-11-27 15:49:26","last_modified":"2014-12-05 11:17:57","last_modified_by":"1","variables":[{"id":"384","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"888","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"386","page_id":"12","name":"body","scope":"","value":"Money transfer RO RO","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"890","page_id":"12","name":"body","scope":"","value":"Transfer de bani RO RO","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"387","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"891","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"385","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"889","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"382","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"886","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"383","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"887","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"381","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"885","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"}]}', 3, '2014-12-05 09:17:58', 1),
(419, 67, 'fuel_navigation', '{"id":"67","location":"servicii\\/transfer-bani\\/ro-ro\\/numerar","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-ro\\/numerar","label":"Cash","parent_id":"25","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-05 09:19:27', 1),
(420, 13, 'fuel_pages', '{"id":"13","location":"servicii\\/transfer-bani\\/ro-str","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 16:51:15","last_modified":"2014-12-05 11:21:34","last_modified_by":"1","variables":[{"id":"895","page_id":"13","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"897","page_id":"13","name":"body","scope":"","value":"Transfer Ro - abroad","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"898","page_id":"13","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"896","page_id":"13","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"893","page_id":"13","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"894","page_id":"13","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"892","page_id":"13","name":"page_title","scope":"","value":"Transfer ro abroad","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"}]}', 6, '2014-12-05 09:21:35', 1),
(421, 13, 'fuel_pages', '{"id":"13","location":"servicii\\/transfer-bani\\/ro-str","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 16:51:15","last_modified":"2014-12-05 11:22:05","last_modified_by":"1","variables":[{"id":"902","page_id":"13","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"904","page_id":"13","name":"body","scope":"","value":"Transfer Ro - strainatate","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"905","page_id":"13","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"903","page_id":"13","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"900","page_id":"13","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"901","page_id":"13","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"899","page_id":"13","name":"page_title","scope":"","value":"Transfer ro strainatate","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"}]}', 7, '2014-12-05 09:22:06', 1),
(422, 13, 'fuel_pages', '{"id":"13","location":"servicii\\/transfer-bani\\/ro-str","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-11-27 16:51:15","last_modified":"2014-12-05 11:22:33","last_modified_by":"1","variables":[{"id":"909","page_id":"13","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"911","page_id":"13","name":"body","scope":"","value":"Transfer Ro - strainatate","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"912","page_id":"13","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"910","page_id":"13","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"907","page_id":"13","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"908","page_id":"13","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"906","page_id":"13","name":"page_title","scope":"","value":"Transfer ro strainatate","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"}]}', 8, '2014-12-05 09:22:34', 1),
(423, 26, 'fuel_pages', '{"id":26,"location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-05 11:12:27","last_modified":"2014-12-05 11:24:07","last_modified_by":"1","variables":[{"id":"916","page_id":"26","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"918","page_id":"26","name":"body","scope":"","value":"Servicii transfer RO-strainatate moneygram","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"919","page_id":"26","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"917","page_id":"26","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"914","page_id":"26","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"915","page_id":"26","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"913","page_id":"26","name":"page_title","scope":"","value":"Servicii transfer RO-strainatate moneygram","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"}]}', 1, '2014-12-05 09:24:07', 1),
(424, 26, 'fuel_pages', '{"id":"26","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-05 11:12:27","last_modified":"2014-12-05 11:24:36","last_modified_by":"1","variables":[{"id":"923","page_id":"26","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"916","page_id":"26","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"925","page_id":"26","name":"body","scope":"","value":"Moneygram RO-abroad","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"918","page_id":"26","name":"body","scope":"","value":"Servicii transfer RO-strainatate moneygram","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"926","page_id":"26","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"919","page_id":"26","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"924","page_id":"26","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"917","page_id":"26","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"921","page_id":"26","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"914","page_id":"26","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"922","page_id":"26","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"915","page_id":"26","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"920","page_id":"26","name":"page_title","scope":"","value":"Moneygram RO-abroad","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"},{"id":"913","page_id":"26","name":"page_title","scope":"","value":"Servicii transfer RO-strainatate moneygram","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","page_published":"yes"}]}', 2, '2014-12-05 09:24:36', 1),
(425, 68, 'fuel_navigation', '{"id":68,"location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str\\/moneygram","label":"Moneygram","parent_id":"21","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-05 09:26:03', 1),
(426, 69, 'fuel_navigation', '{"id":69,"location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str\\/moneygram","label":"Moneygram","parent_id":"26","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-05 09:26:20', 1),
(427, 69, 'fuel_navigation', '{"id":"69","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str\\/moneygram","label":"Moneygram","parent_id":"21","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-05 09:28:29', 1),
(428, 70, 'fuel_navigation', '{"id":70,"location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str\\/moneygram","label":"Moneygram","parent_id":"21","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-05 09:35:52', 1),
(429, 70, 'fuel_navigation', '{"id":"70","location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str\\/moneygram","label":"Moneygram","parent_id":"26","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-05 09:38:00', 1),
(430, 71, 'fuel_navigation', '{"id":71,"location":"servicii\\/transfer-bani\\/ro-str\\/moneygram","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str\\/moneygram","label":"Moneygram","parent_id":"21","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-05 09:39:03', 1),
(431, 30, 'fuel_navigation', '{"id":"30","location":"aboutus\\/becomeagent","group_id":"4","nav_key":"aboutus\\/becomeagent","label":"CUM SA DEVII AGENT","parent_id":"0","precedence":"30","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 4, '2014-12-05 09:57:29', 1),
(432, 55, 'fuel_navigation', '{"id":"55","location":"aboutus\\/becomeagent","group_id":"4","nav_key":"aboutus\\/becomeagent","label":"Become agent","parent_id":"0","precedence":"30","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-12-05 09:58:28', 1),
(433, 30, 'fuel_navigation', '{"id":"30","location":"aboutus\\/becomeagent","group_id":"4","nav_key":"aboutus\\/becomeagent","label":"cum sa devii agent","parent_id":"0","precedence":"30","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 5, '2014-12-05 10:01:19', 1),
(434, 32, 'fuel_navigation', '{"id":"32","location":"aboutus\\/profile","group_id":"1","nav_key":"aboutus\\/profile","label":"Despre noi","parent_id":"0","precedence":"3","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 5, '2014-12-05 10:02:22', 1),
(435, 57, 'fuel_navigation', '{"id":"57","location":"aboutus\\/profile","group_id":"4","nav_key":"aboutus\\/profile","label":"profil","parent_id":"0","precedence":"10","attributes":"","selected":"aboutus","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-05 10:05:25', 1),
(436, 29, 'fuel_navigation', '{"id":"29","location":"aboutus\\/parteners","group_id":"4","nav_key":"aboutus\\/parteners","label":"partners","parent_id":"0","precedence":"20","attributes":"","selected":"parteners","hidden":"no","language":"en","published":"yes"}', 4, '2014-12-05 10:06:30', 1),
(437, 56, 'fuel_navigation', '{"id":"56","location":"aboutus\\/parteners","group_id":"4","nav_key":"aboutus\\/parteners","label":"parteneri","parent_id":"0","precedence":"20","attributes":"","selected":"parteners","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-05 10:07:11', 1),
(438, 28, 'fuel_navigation', '{"id":"28","location":"aboutus\\/profile","group_id":"4","nav_key":"aboutus\\/profile","label":"profile","parent_id":"0","precedence":"10","attributes":"","selected":"aboutus","hidden":"no","language":"en","published":"yes"}', 5, '2014-12-05 10:07:42', 1),
(439, 19, 'fuel_pages', '{"id":"19","location":"aboutus\\/becomeagent","layout":"ssabout_agent","published":"yes","cache":"yes","date_added":"2014-12-02 20:00:41","last_modified":"2014-12-07 22:22:08","last_modified_by":"1","variables":[{"id":"930","page_id":"19","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"931","page_id":"19","name":"body","scope":"","value":"Sunteti o persoana cu spirit intreprinzator ?\\r\\nSunteti familiarizat cu internetul si retelele de socializare?\\r\\nStiti sa comunicati cu oamenii ?\\r\\nVreti sa va construiti propria afacere ? \\r\\nNimic mai simplu ! Si dumneavoastra puteti sa deveniti agent Smith&Smith!\\r\\nCompletati formalarul de mai jos si Smith&Smith va va contacta in cel mai scurt timp posibil!","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"932","page_id":"19","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"928","page_id":"19","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"929","page_id":"19","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"927","page_id":"19","name":"page_title","scope":"","value":"Afiliere agent","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"}]}', 17, '2014-12-07 20:22:08', 1),
(440, 19, 'fuel_pages', '{"id":"19","location":"aboutus\\/becomeagent","layout":"ssabout_agent","published":"yes","cache":"yes","date_added":"2014-12-02 20:00:41","last_modified":"2014-12-07 22:22:25","last_modified_by":"1","variables":[{"id":"936","page_id":"19","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"930","page_id":"19","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"937","page_id":"19","name":"body","scope":"","value":"Sunteti o persoana cu spirit intreprinzator ?\\r\\nSunteti familiarizat cu internetul si retelele de socializare?\\r\\nStiti sa comunicati cu oamenii ?\\r\\nVreti sa va construiti propria afacere ? \\r\\nNimic mai simplu ! Si dumneavoastra puteti sa deveniti agent Smith&Smith!\\r\\nCompletati formalarul de mai jos si Smith&Smith va va contacta in cel mai scurt timp posibil!","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"931","page_id":"19","name":"body","scope":"","value":"Sunteti o persoana cu spirit intreprinzator ?\\r\\nSunteti familiarizat cu internetul si retelele de socializare?\\r\\nStiti sa comunicati cu oamenii ?\\r\\nVreti sa va construiti propria afacere ? \\r\\nNimic mai simplu ! Si dumneavoastra puteti sa deveniti agent Smith&Smith!\\r\\nCompletati formalarul de mai jos si Smith&Smith va va contacta in cel mai scurt timp posibil!","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"938","page_id":"19","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"932","page_id":"19","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"934","page_id":"19","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"928","page_id":"19","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"935","page_id":"19","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"929","page_id":"19","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"933","page_id":"19","name":"page_title","scope":"","value":"Agent affiliation","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"927","page_id":"19","name":"page_title","scope":"","value":"Afiliere agent","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"}]}', 18, '2014-12-07 20:22:24', 1),
(447, 27, 'fuel_pages', '{"id":"27","location":"paymnts","layout":"sspayments","published":"yes","cache":"yes","date_added":"2014-12-10 10:31:33","last_modified":"2014-12-10 10:41:44","last_modified_by":"1","variables":[{"id":"966","page_id":"27","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"paymnts","page_published":"yes"},{"id":"964","page_id":"27","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"paymnts","page_published":"yes"},{"id":"965","page_id":"27","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"paymnts","page_published":"yes"},{"id":"963","page_id":"27","name":"page_title","scope":"","value":"Payments","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"paymnts","page_published":"yes"}]}', 7, '2014-12-10 08:41:44', 1),
(448, 9, 'fuel_navigation_groups', '{"id":9,"name":"mainauth","published":"yes"}', 1, '2014-12-10 09:01:23', 1),
(449, 72, 'fuel_navigation', '{"id":72,"location":"paymnts","group_id":"9","nav_key":"paymnts","label":"Transfer bani","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-10 09:02:24', 1),
(450, 73, 'fuel_navigation', '{"id":73,"location":"youraccount","group_id":"9","nav_key":"youraccount","label":"CONTUL TAU","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-10 09:03:25', 1),
(451, 74, 'fuel_navigation', '{"id":74,"location":"tHistory","group_id":"9","nav_key":"tHistory","label":"ISTORIC TRANZACTII","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-10 09:04:14', 1),
(452, 75, 'fuel_navigation', '{"id":75,"location":"messages","group_id":"9","nav_key":"messages","label":"MESAJE","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-10 09:05:01', 1),
(453, 72, 'fuel_navigation', '{"id":"72","location":"paymnts","group_id":"9","nav_key":"paymnts","label":"TRANSFER DE BANI","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-10 09:05:50', 1),
(454, 1, 'ss_exchange_rate', '{"id":1,"type":"EUR","value":"4.45","date":0}', 1, '2014-12-10 09:10:35', 1),
(455, 2, 'ss_exchange_rate', '{"id":2,"type":"EUR","value":"4.45","date":0}', 1, '2014-12-10 09:11:02', 1),
(456, 3, 'ss_exchange_rate', '{"id":3,"type":"EUR","value":"4.45","date":0}', 1, '2014-12-10 09:13:20', 1),
(457, 4, 'ss_exchange_rate', '{"id":4,"type":"EUR","value":"4.45","apply_date":0}', 1, '2014-12-10 09:14:57', 1),
(458, 5, 'ss_exchange_rate', '{"id":5,"type":"EUR","value":"4.45","apply_date":0}', 1, '2014-12-10 09:17:17', 1),
(459, 5, 'ss_exchange_rate', '{"id":"5","type":"EUR","value":"4.4509","apply_date":0}', 2, '2014-12-10 09:18:18', 1),
(460, 7, 'ss_exchange_rate', '{"id":7,"type":"USD","value":"3.456","apply_date":0}', 1, '2014-12-10 09:24:42', 1),
(461, 8, 'ss_exchange_rate', '{"id":8,"type":"EUR","value":"4.4509","publish_date":0}', 1, '2014-12-10 09:28:23', 1),
(462, 9, 'ss_exchange_rate', '{"id":9,"type":"EUR","value":"4.4509","apply_date":"2014-12-01"}', 1, '2014-12-10 09:30:23', 1),
(463, 10, 'ss_exchange_rate', '{"id":10,"type":"EUR","value":"4.6789","apply_date":"2014-12-28"}', 1, '2014-12-10 09:32:48', 1),
(464, 11, 'ss_exchange_rate', '{"id":11,"type":"USD","value":"3.1234","apply_date":"2014-12-28"}', 1, '2014-12-10 09:33:20', 1),
(465, 27, 'fuel_pages', '{"id":"27","location":"paymnts","layout":"sspayments","published":"yes","cache":"yes","date_added":"2014-12-10 10:31:33","last_modified":"2014-12-10 12:59:52","last_modified_by":"1","variables":[{"id":"970","page_id":"27","name":"form_title","scope":"","value":"Facturi online","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"paymnts","page_published":"yes"},{"id":"968","page_id":"27","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"paymnts","page_published":"yes"},{"id":"969","page_id":"27","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"paymnts","page_published":"yes"},{"id":"967","page_id":"27","name":"page_title","scope":"","value":"Payments","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"paymnts","page_published":"yes"}]}', 8, '2014-12-10 10:59:52', 1),
(466, 27, 'fuel_pages', '{"id":"27","location":"payments","layout":"sspayments","published":"yes","cache":"yes","date_added":"2014-12-10 10:31:33","last_modified":"2014-12-10 17:27:17","last_modified_by":"1","variables":[{"id":"974","page_id":"27","name":"form_title","scope":"","value":"Facturi online","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"payments","page_published":"yes"},{"id":"972","page_id":"27","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"payments","page_published":"yes"},{"id":"973","page_id":"27","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"payments","page_published":"yes"},{"id":"971","page_id":"27","name":"page_title","scope":"","value":"Payments","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"payments","page_published":"yes"}]}', 9, '2014-12-10 15:27:17', 1),
(467, 27, 'fuel_pages', '{"id":"27","location":"sspayments","layout":"sspayments","published":"yes","cache":"yes","date_added":"2014-12-10 10:31:33","last_modified":"2014-12-10 17:27:39","last_modified_by":"1","variables":[{"id":"978","page_id":"27","name":"form_title","scope":"","value":"Facturi online","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"sspayments","page_published":"yes"},{"id":"976","page_id":"27","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"sspayments","page_published":"yes"},{"id":"977","page_id":"27","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"sspayments","page_published":"yes"},{"id":"975","page_id":"27","name":"page_title","scope":"","value":"Payments","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"sspayments","page_published":"yes"}]}', 10, '2014-12-10 15:27:40', 1),
(468, 72, 'fuel_navigation', '{"id":"72","location":"sspayments","group_id":"9","nav_key":"sspayments","label":"TRANSFER DE BANI","parent_id":"0","precedence":"1","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-12-10 15:29:31', 1),
(469, 27, 'fuel_pages', '{"id":"27","location":"sspayments","layout":"sspayments","published":"yes","cache":"yes","date_added":"2014-12-10 10:31:33","last_modified":"2014-12-10 21:11:39","last_modified_by":"1","variables":[{"id":"982","page_id":"27","name":"form_title","scope":"","value":"Facturi online","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"sspayments","page_published":"yes"},{"id":"980","page_id":"27","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"sspayments","page_published":"yes"},{"id":"981","page_id":"27","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"sspayments","page_published":"yes"},{"id":"979","page_id":"27","name":"page_title","scope":"","value":"Payments","type":"string","language":"ro","active":"yes","layout":"sspayments","location":"sspayments","page_published":"yes"}]}', 11, '2014-12-10 19:11:40', 1),
(470, 2, 'ss_profiles', '{"id":2,"name":"Prenume beneficiar Vasile","value":"Vasile","id_profile_type":"4"}', 1, '2014-12-15 09:05:03', 1),
(471, 3, 'ss_fees', '{"id":3,"com_val":"34","com_type":"flat","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"1970-01-01 02:00:00","com_time_apply":"0","com_time_stop":"1970-01-01 02:00:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"1","fk_ben_type":"2","fk_promo_type":"9","apply_to_amount":"1"}', 1, '2014-12-15 09:06:33', 1),
(472, 1, 'ss_fees', '{"id":"1","com_val":"10","com_type":"prc","com_int_apply":"1","com_int_min":"400","com_int_max":"600","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 13:25:00","com_time_apply":"0","com_time_stop":"2014-12-15 14:25:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"1","fk_ben_type":"2","fk_promo_type":"9","apply_to_amount":"1"}', 5, '2014-12-15 11:36:00', 1);
INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(473, 1, 'ss_fees', '{"id":"1","com_val":"10","com_type":"prc","com_int_apply":"1","com_int_min":"400","com_int_max":"600","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 13:25:00","com_time_apply":"0","com_time_stop":"2014-12-15 14:25:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"1","fk_ben_type":"2","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 6, '2014-12-15 11:37:44', 1),
(474, 4, 'ss_fees', '{"id":4,"com_val":"0","com_type":"flat","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 16:12:00","com_time_apply":"0","com_time_stop":"2014-12-15 17:12:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"2","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 1, '2014-12-15 14:59:37', 1),
(475, 5, 'ss_fees', '{"id":5,"com_val":"0","com_type":"flat","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 17:12:00","com_time_apply":"0","com_time_stop":"2014-12-15 18:12:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 1, '2014-12-15 15:00:18', 1),
(476, 6, 'ss_fees', '{"id":6,"com_val":"10","com_type":"prc","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 17:28:00","com_time_apply":"0","com_time_stop":"2014-12-31 18:28:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"0","active":"1"}', 1, '2014-12-15 15:29:37', 1),
(477, 7, 'ss_fees', '{"id":7,"com_val":"0","com_type":"flat","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 17:40:00","com_time_apply":"0","com_time_stop":"2014-12-15 18:40:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"0","active":"1"}', 1, '2014-12-15 15:40:10', 1),
(478, 1, 'ss_fees', '{"id":"1","com_val":"10","com_type":"prc","com_int_apply":"1","com_int_min":"400","com_int_max":"600","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 13:25:00","com_time_apply":"0","com_time_stop":"2014-12-30 14:25:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"0","active":"1"}', 7, '2014-12-15 15:43:04', 1),
(479, 6, 'ss_fees', '{"id":"6","com_val":"10","com_type":"prc","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 17:28:00","com_time_apply":"0","com_time_stop":"2014-12-31 18:28:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"0","active":"0"}', 2, '2014-12-15 15:44:07', 1),
(480, 6, 'ss_fees', '{"id":"6","com_val":"10","com_type":"prc","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 17:28:00","com_time_apply":"0","com_time_stop":"2014-12-31 18:28:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"0","active":"1"}', 3, '2014-12-15 15:44:26', 1),
(481, 6, 'ss_fees', '{"id":"6","com_val":"10","com_type":"prc","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 17:28:00","com_time_apply":"0","com_time_stop":"2014-12-31 18:28:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 4, '2014-12-15 15:53:44', 1),
(482, 1, 'ss_fees', '{"id":"1","com_val":"10","com_type":"prc","com_int_apply":"1","com_int_min":"400","com_int_max":"600","com_promo":"1","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 13:25:00","com_time_apply":"0","com_time_stop":"2014-12-30 14:25:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"0","active":"1"}', 8, '2014-12-15 16:07:18', 1),
(483, 8, 'ss_fees', '{"id":8,"com_val":"10","com_type":"prc","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 18:09:00","com_time_apply":"0","com_time_stop":"2014-12-15 19:09:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"0","active":"1"}', 1, '2014-12-15 16:09:26', 1),
(485, 8, 'ss_fees', '{"id":"8","com_val":"10","com_type":"prc","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-15 18:09:00","com_time_apply":"0","com_time_stop":"2014-12-16 19:09:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"0","active":"1"}', 2, '2014-12-16 09:45:52', 1),
(489, 9, 'ss_fees', '{"id":"9","com_val":"15","com_type":"flat","com_int_apply":"1","com_int_min":"100","com_int_max":"2000","com_promo":"0","com_spot":"1","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-16 11:42:00","com_time_apply":"0","com_time_stop":"2014-12-31 12:42:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 5, '2014-12-16 09:47:03', 1),
(490, 9, 'ss_fees', '{"id":"9","com_val":"15","com_type":"flat","com_int_apply":"1","com_int_min":"100","com_int_max":"2000","com_promo":"1","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-16 11:42:00","com_time_apply":"0","com_time_stop":"2014-12-31 12:42:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 6, '2014-12-16 09:48:04', 1),
(491, 9, 'ss_fees', '{"id":"9","com_val":"15","com_type":"flat","com_int_apply":"1","com_int_min":"100","com_int_max":"2000","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-16 11:42:00","com_time_apply":"0","com_time_stop":"2014-12-31 12:42:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 7, '2014-12-16 09:48:18', 1),
(492, 9, 'ss_fees', '{"id":"9","com_val":"15","com_type":"flat","com_int_apply":"1","com_int_min":"100","com_int_max":"2000","com_promo":"0","com_spot":"0","com_trn_apply":"1","com_trn_min":"4","com_trn_max":"7","com_time_start":"2014-12-16 11:42:00","com_time_apply":"0","com_time_stop":"2014-12-31 12:42:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 8, '2014-12-16 09:50:58', 1),
(493, 9, 'ss_fees', '{"id":"9","com_val":"15","com_type":"flat","com_int_apply":"1","com_int_min":"100","com_int_max":"2000","com_promo":"1","com_spot":"0","com_trn_apply":"1","com_trn_min":"4","com_trn_max":"7","com_time_start":"2014-12-16 11:42:00","com_time_apply":"0","com_time_stop":"2014-12-31 12:42:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 9, '2014-12-16 09:51:59', 1),
(494, 10, 'ss_fees', '{"id":10,"com_val":"100","com_type":"flat","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"1","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"2014-12-16 11:55:00","com_time_apply":"0","com_time_stop":"2014-12-16 12:55:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 1, '2014-12-16 09:55:55', 1),
(495, 10, 'ss_fees', '{"id":"10","com_val":"100","com_type":"flat","com_int_apply":"1","com_int_min":"1000","com_int_max":"2000","com_promo":"0","com_spot":"1","com_trn_apply":"1","com_trn_min":"10","com_trn_max":"200","com_time_start":"2014-12-16 11:55:00","com_time_apply":"0","com_time_stop":"2014-12-16 12:55:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"","fk_ben_type":"","fk_promo_type":"9","apply_to_amount":"1","active":"1"}', 2, '2014-12-16 09:56:50', 1),
(496, 73, 'fuel_navigation', '{"id":"73","location":"profile","group_id":"9","nav_key":"profile","label":"CONTUL TAU","parent_id":"0","precedence":"2","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-12-19 09:50:14', 1),
(497, 76, 'fuel_navigation', '{"id":76,"location":"\\/","group_id":"9","nav_key":"\\/","label":"Prima pagina","parent_id":"","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-19 09:55:20', 1),
(498, 10, 'fuel_pages', '{"id":"10","location":"servicii\\/transfer-bani","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:25","last_modified":"2014-12-22 11:05:09","last_modified_by":"1","variables":[{"id":"377","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"986","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"379","page_id":"10","name":"body","scope":"","value":"Money transfer","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"988","page_id":"10","name":"body","scope":"","value":"Prin Smith&Smith transferati bani atat in varianta traditionala in numerar (cash), cat si prin mijloace moderne de plata online (plata cu cardul sau plata din cont). \\n\\nPuteti de asemenea face plata utilitatilor la facturile din Romania direct din Strainatate la orice ora din zi si din noapte si din orice loc sau tara. Platile on-line se pot initia de pe card sau din cont.\\n\\nIn cazul mijloacelor traditionale de plata in numerar (cash) puteti opta pentru trimiterea banilor din Strainatate in Romania, din Romania in Romania prin birourile Smith&Smith sau din Romania in Strainatate.","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"380","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"989","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"378","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"987","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"375","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"984","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"376","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"985","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"374","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"983","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"}]}', 5, '2014-12-22 09:05:09', 1),
(499, 10, 'fuel_pages', '{"id":"10","location":"servicii\\/transfer-bani","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:25","last_modified":"2014-12-22 11:05:24","last_modified_by":"1","variables":[{"id":"377","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"993","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"379","page_id":"10","name":"body","scope":"","value":"Money transfer","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"995","page_id":"10","name":"body","scope":"","value":"Prin Smith&Smith transferati bani atat in varianta traditionala in numerar (cash), cat si prin mijloace moderne de plata online (plata cu cardul sau plata din cont). \\n\\n\\nPuteti de asemenea face plata utilitatilor la facturile din Romania direct din Strainatate la orice ora din zi si din noapte si din orice loc sau tara. Platile on-line se pot initia de pe card sau din cont.\\n\\n\\nIn cazul mijloacelor traditionale de plata in numerar (cash) puteti opta pentru trimiterea banilor din Strainatate in Romania, din Romania in Romania prin birourile Smith&Smith sau din Romania in Strainatate.","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"380","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"996","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"378","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"994","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"375","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"991","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"376","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"992","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"374","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"990","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"}]}', 6, '2014-12-22 09:05:24', 1),
(500, 10, 'fuel_pages', '{"id":"10","location":"servicii\\/transfer-bani","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:25","last_modified":"2014-12-22 11:05:50","last_modified_by":"1","variables":[{"id":"377","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1000","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"379","page_id":"10","name":"body","scope":"","value":"Money transfer","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1002","page_id":"10","name":"body","scope":"","value":"Prin Smith&Smith transferati bani atat in varianta traditionala in numerar (cash), cat si prin mijloace moderne de plata online (plata cu cardul sau plata din cont). \\n<br \\/>\\n\\nPuteti de asemenea face plata utilitatilor la facturile din Romania direct din Strainatate la orice ora din zi si din noapte si din orice loc sau tara. Platile on-line se pot initia de pe card sau din cont.\\n\\n\\nIn cazul mijloacelor traditionale de plata in numerar (cash) puteti opta pentru trimiterea banilor din Strainatate in Romania, din Romania in Romania prin birourile Smith&Smith sau din Romania in Strainatate.","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"380","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1003","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"378","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1001","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"375","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"998","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"376","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"999","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"374","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"997","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"}]}', 7, '2014-12-22 09:05:50', 1),
(501, 10, 'fuel_pages', '{"id":"10","location":"servicii\\/transfer-bani","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:25","last_modified":"2014-12-22 11:06:04","last_modified_by":"1","variables":[{"id":"377","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1007","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"379","page_id":"10","name":"body","scope":"","value":"Money transfer","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1009","page_id":"10","name":"body","scope":"","value":"Prin Smith&Smith transferati bani atat in varianta traditionala in numerar (cash), cat si prin mijloace moderne de plata online (plata cu cardul sau plata din cont). \\n<br \\/><br \\/>\\n\\nPuteti de asemenea face plata utilitatilor la facturile din Romania direct din Strainatate la orice ora din zi si din noapte si din orice loc sau tara. Platile on-line se pot initia de pe card sau din cont.\\n<br \\/><br \\/>\\n\\nIn cazul mijloacelor traditionale de plata in numerar (cash) puteti opta pentru trimiterea banilor din Strainatate in Romania, din Romania in Romania prin birourile Smith&Smith sau din Romania in Strainatate.","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"380","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1010","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"378","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1008","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"375","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1005","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"376","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1006","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"374","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"1004","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"}]}', 8, '2014-12-22 09:06:04', 1),
(502, 17, 'fuel_pages', '{"id":"17","location":"aboutus\\/profile","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 13:45:12","last_modified":"2014-12-22 11:09:36","last_modified_by":"1","variables":[{"id":"758","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1014","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"759","page_id":"17","name":"body","scope":"","value":"Profile in english","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1015","page_id":"17","name":"body","scope":"","value":"Smith&Smith este prima companie rom&acirc;neasca specializata &icirc;n transfer international de bani, infiintata &icirc;nca din 1999 si autorizata ca institutie de plata de catre Banca Nationala a Rom&acirc;niei &icirc;n conformitate cu prevederile Legii nr.197\\/2010, fiind &icirc;nregistrata &icirc;n Registrul Institutiilor de plata sub numarul IP-RO-0006..\\n<br \\/><br \\/>\\n\\nSmith&Smith are 43 de birouri in intreaga tara, majoritatea avand un program de functionare 7 zile din 7. Pentru a consulta lista birourilor noastre, accesati reteaua Smith&Smith. Smith&Smith efectueaza plati in peste 500 de locatii prin reteua BCR si RIB in Romania iar in Republica Moldova prin Victoriabank.\\n<br \\/><br \\/>\\n\\nUn transfer de bani prin Smith&Smith este:\\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.<\\/li>\\n<li>Accesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.<\\/li>\\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.<\\/li>\\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.<\\/li><\\/ul>\\n\\n<br \\/><br \\/>\\nSmith&Smith lucreaza cu peste 40 de sisteme internationale de remitere de bani din toata lumea.\\n\\n<br \\/><br \\/>\\nSmith&Smith este si super agent Money Gram in Romania. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. La acest link, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"760","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1016","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"756","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1012","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"757","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1013","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"755","page_id":"17","name":"page_title","scope":"","value":"Profile","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1011","page_id":"17","name":"page_title","scope":"","value":"Profil","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"}]}', 8, '2014-12-22 09:09:36', 1),
(503, 17, 'fuel_pages', '{"id":"17","location":"aboutus\\/profile","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 13:45:12","last_modified":"2014-12-22 11:10:34","last_modified_by":"1","variables":[{"id":"758","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1020","page_id":"17","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"759","page_id":"17","name":"body","scope":"","value":"Profile in english","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1021","page_id":"17","name":"body","scope":"","value":"Smith&Smith este prima companie rom&acirc;neasca specializata &icirc;n transfer international de bani, infiintata &icirc;nca din 1999 si autorizata ca institutie de plata de catre Banca Nationala a Rom&acirc;niei &icirc;n conformitate cu prevederile Legii nr.197\\/2010, fiind &icirc;nregistrata &icirc;n Registrul Institutiilor de plata sub numarul IP-RO-0006..\\n<br \\/><br \\/>\\n\\nSmith&Smith are 43 de birouri in intreaga tara, majoritatea avand un program de functionare 7 zile din 7. Pentru a consulta lista birourilor noastre, accesati reteaua Smith&Smith. Smith&Smith efectueaza plati in peste 500 de locatii prin reteua BCR si RIB in Romania iar in Republica Moldova prin Victoriabank.\\n<br \\/><br \\/>\\n\\nUn transfer de bani prin Smith&Smith este:\\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.<\\/li>\\n<li>Accesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.<\\/li>\\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.<\\/li>\\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.<\\/li><\\/ul>\\n\\n<br \\/><br \\/>\\nSmith&Smith lucreaza cu peste 40 de sisteme internationale de remitere de bani din toata lumea.\\n\\n<br \\/><br \\/>\\nSmith&Smith este si super agent Money Gram in Romania. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. La acest <a href=\\"https:\\/\\/www.moneygram.com\\/wps\\/portal\\/moneygramonline\\/home\\/estimator?LC=en-US\\">link<\\/a>, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"760","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1022","page_id":"17","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"756","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1018","page_id":"17","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"757","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1019","page_id":"17","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"755","page_id":"17","name":"page_title","scope":"","value":"Profile","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"},{"id":"1017","page_id":"17","name":"page_title","scope":"","value":"Profil","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/profile","page_published":"yes"}]}', 9, '2014-12-22 09:10:34', 1),
(504, 18, 'fuel_pages', '{"id":"18","location":"aboutus\\/parteners","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 14:56:10","last_modified":"2014-12-22 11:12:19","last_modified_by":"1","variables":[{"id":"746","page_id":"18","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1026","page_id":"18","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"747","page_id":"18","name":"body","scope":"","value":"Partners in english","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1027","page_id":"18","name":"body","scope":"","value":"Smith&Smith, cea mai veche institutie de plata din Romania, lucreza cu peste 40 de sisteme de plati din toata lumea astfel incat prin intermediul Smith&Smith sa va bucurati de cele mai avantajoase tarife de transfer in conditii de siguranta si rapiditate. Din lista noastra de parteneri putem enumera: XXXX\\n<br\\/><br\\/>\\nSmith&Smith este super agent MoneyGram din anul 2008. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. \\nBanii sunt transferati imediat, ajung&acirc;nd la destina\\u0163ie &icirc;n circa 10 minute. Pentru a transfera banii, persoana &icirc;n cauz\\u0103 are nevoie doar de actul de identitate FARA a completa niciun formular. La acest link, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.\\n<br\\/><br\\/>\\nSmith&Smith va ofera posibilitatea de afectua plati in peste 500 de locatii prin retelele Bancii Comerciale Romane si Romanian International Bank in Romania si prin Victoriabank in Republica Moldova.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"748","page_id":"18","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1028","page_id":"18","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"744","page_id":"18","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1024","page_id":"18","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"745","page_id":"18","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1025","page_id":"18","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"743","page_id":"18","name":"page_title","scope":"","value":"Partners","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1023","page_id":"18","name":"page_title","scope":"","value":"Parteneri","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"}]}', 3, '2014-12-22 09:12:20', 1),
(505, 18, 'fuel_pages', '{"id":"18","location":"aboutus\\/parteners","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 14:56:10","last_modified":"2014-12-22 11:12:34","last_modified_by":"1","variables":[{"id":"746","page_id":"18","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1032","page_id":"18","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"747","page_id":"18","name":"body","scope":"","value":"Partners in english","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1033","page_id":"18","name":"body","scope":"","value":"Smith&Smith, cea mai veche institutie de plata din Romania, lucreza cu peste 40 de sisteme de plati din toata lumea astfel incat prin intermediul Smith&Smith sa va bucurati de cele mai avantajoase tarife de transfer in conditii de siguranta si rapiditate. Din lista noastra de parteneri putem enumera: XXXX\\n<br\\/><br\\/>\\nSmith&Smith este super agent MoneyGram din anul 2008. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. <br\\/><br\\/>\\nBanii sunt transferati imediat, ajung&acirc;nd la destina\\u0163ie &icirc;n circa 10 minute. Pentru a transfera banii, persoana &icirc;n cauz\\u0103 are nevoie doar de actul de identitate FARA a completa niciun formular. La acest link, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.\\n<br\\/><br\\/>\\nSmith&Smith va ofera posibilitatea de afectua plati in peste 500 de locatii prin retelele Bancii Comerciale Romane si Romanian International Bank in Romania si prin Victoriabank in Republica Moldova.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"748","page_id":"18","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1034","page_id":"18","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"744","page_id":"18","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1030","page_id":"18","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"745","page_id":"18","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1031","page_id":"18","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"743","page_id":"18","name":"page_title","scope":"","value":"Partners","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1029","page_id":"18","name":"page_title","scope":"","value":"Parteneri","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"}]}', 4, '2014-12-22 09:12:34', 1),
(506, 18, 'fuel_pages', '{"id":"18","location":"aboutus\\/parteners","layout":"ssabout","published":"yes","cache":"yes","date_added":"2014-11-30 14:56:10","last_modified":"2014-12-22 11:13:01","last_modified_by":"1","variables":[{"id":"746","page_id":"18","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1038","page_id":"18","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"747","page_id":"18","name":"body","scope":"","value":"Partners in english","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1039","page_id":"18","name":"body","scope":"","value":"Smith&Smith, cea mai veche institutie de plata din Romania, lucreza cu peste 40 de sisteme de plati din toata lumea astfel incat prin intermediul Smith&Smith sa va bucurati de cele mai avantajoase tarife de transfer in conditii de siguranta si rapiditate. Din lista noastra de parteneri putem enumera: XXXX\\n<br\\/><br\\/>\\nSmith&Smith este super agent MoneyGram din anul 2008. Acest serviciu reprezint\\u0103 o modalitate rapid\\u0103, sigur\\u0103, usoara, de incredere \\u015fi la indem&acirc;n\\u0103 pentru a trimite \\u015fi a primi bani &icirc;n c&acirc;teva minute din lumea intreag\\u0103. Serviciul MoneyGram este disponibil &icirc;n peste 190 de \\u0163\\u0103ri \\u015fi &icirc;n mai mult de 176.000 de agen\\u0163i locali din intreaga lume. <br\\/><br\\/>\\nBanii sunt transferati imediat, ajung&acirc;nd la destina\\u0163ie &icirc;n circa 10 minute. Pentru a transfera banii, persoana &icirc;n cauz\\u0103 are nevoie doar de actul de identitate FARA a completa niciun formular. La acest <a href=\\"https:\\/\\/www.moneygram.com\\/wps\\/portal\\/moneygramonline\\/home\\/estimator?LC=en-US\\">link<\\/a>, pute\\u0163i afla c&acirc;t cost\\u0103 un transfer de bani c&acirc;t \\u015fi \\u0163\\u0103rile de unde pute\\u0163i beneficia de aceste servicii.\\n<br\\/><br\\/>\\nSmith&Smith va ofera posibilitatea de afectua plati in peste 500 de locatii prin retelele Bancii Comerciale Romane si Romanian International Bank in Romania si prin Victoriabank in Republica Moldova.","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"748","page_id":"18","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1040","page_id":"18","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"744","page_id":"18","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1036","page_id":"18","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"745","page_id":"18","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1037","page_id":"18","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"743","page_id":"18","name":"page_title","scope":"","value":"Partners","type":"string","language":"en","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"},{"id":"1035","page_id":"18","name":"page_title","scope":"","value":"Parteneri","type":"string","language":"ro","active":"yes","layout":"ssabout","location":"aboutus\\/parteners","page_published":"yes"}]}', 5, '2014-12-22 09:13:01', 1),
(507, 19, 'fuel_pages', '{"id":"19","location":"aboutus\\/becomeagent","layout":"ssabout_agent","published":"yes","cache":"yes","date_added":"2014-12-02 20:00:41","last_modified":"2014-12-22 11:14:08","last_modified_by":"1","variables":[{"id":"936","page_id":"19","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"1044","page_id":"19","name":"banner_img","scope":"","value":"banners\\/aboutus.jpg","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"937","page_id":"19","name":"body","scope":"","value":"Sunteti o persoana cu spirit intreprinzator ?\\r\\nSunteti familiarizat cu internetul si retelele de socializare?\\r\\nStiti sa comunicati cu oamenii ?\\r\\nVreti sa va construiti propria afacere ? \\r\\nNimic mai simplu ! Si dumneavoastra puteti sa deveniti agent Smith&Smith!\\r\\nCompletati formalarul de mai jos si Smith&Smith va va contacta in cel mai scurt timp posibil!","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"1045","page_id":"19","name":"body","scope":"","value":"Sunteti o persoana cu spirit intreprinzator?<br \\/>\\nSunteti familiarizat cu internetul si retelele de socializare?<br \\/>\\nStiti sa comunicati cu oamenii?<br \\/>\\nVreti sa va construiti propria afacere?<br \\/> \\nNimic mai simplu ! Si dumneavoastra puteti sa deveniti agent Smith&Smith!\\n<br \\/>Completati formalarul de mai jos si Smith&Smith va va contacta in cel mai scurt timp posibil!","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"938","page_id":"19","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"1046","page_id":"19","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"934","page_id":"19","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"1042","page_id":"19","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"935","page_id":"19","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"1043","page_id":"19","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"933","page_id":"19","name":"page_title","scope":"","value":"Agent affiliation","type":"string","language":"en","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"},{"id":"1041","page_id":"19","name":"page_title","scope":"","value":"Afiliere agent","type":"string","language":"ro","active":"yes","layout":"ssabout_agent","location":"aboutus\\/becomeagent","page_published":"yes"}]}', 19, '2014-12-22 09:14:08', 1);
INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(508, 12, 'fuel_pages', '{"id":"12","location":"servicii\\/transfer-bani\\/ro-ro","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-11-27 15:49:26","last_modified":"2014-12-22 11:18:12","last_modified_by":"1","variables":[{"id":"384","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1050","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"386","page_id":"12","name":"body","scope":"","value":"Money transfer RO RO","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1052","page_id":"12","name":"body","scope":"","value":"Trimiteti bani pe teritoriul Romaniei de la cel mai apropiat birou Smith&Smith la un alt birou Smith&Smith. Lista completa a birourilor Smith&Smith o gasiti aici. Banii pot fi trimisi pe teritoriul Romaniei in Euro, USD sau RON.\\n<br \\/><br \\/>\\nPrin Smith&Smith banii dumneavoastra ajung la destinatie in 10 minute la orice birou Smith&Smith in timpul programului de lucru. \\n<br \\/><br \\/>\\nAveti nevoie doar de buletinul de identitate pentru efectuarea tranzactiei. Veti primi un cod unic de identificare al tranzactiei (CUI) ce trebuie comunicat beneficiarului.\\n<br \\/><br \\/>\\nUn transfer de bani prin Smith&Smith este:\\nIeftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.\\nAccesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.\\nRapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.\\nSimplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"387","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1053","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"385","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1051","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"382","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1048","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"383","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1049","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"381","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1047","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"}]}', 4, '2014-12-22 09:18:12', 1),
(509, 12, 'fuel_pages', '{"id":"12","location":"servicii\\/transfer-bani\\/ro-ro","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-11-27 15:49:26","last_modified":"2014-12-22 11:18:29","last_modified_by":"1","variables":[{"id":"384","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1057","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"386","page_id":"12","name":"body","scope":"","value":"Money transfer RO RO","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1059","page_id":"12","name":"body","scope":"","value":"Trimiteti bani pe teritoriul Romaniei de la cel mai apropiat birou Smith&Smith la un alt birou Smith&Smith. Lista completa a birourilor Smith&Smith o gasiti aici. Banii pot fi trimisi pe teritoriul Romaniei in Euro, USD sau RON.\\n<br \\/><br \\/>\\nPrin Smith&Smith banii dumneavoastra ajung la destinatie in 10 minute la orice birou Smith&Smith in timpul programului de lucru. \\n<br \\/><br \\/>\\nAveti nevoie doar de buletinul de identitate pentru efectuarea tranzactiei. Veti primi un cod unic de identificare al tranzactiei (CUI) ce trebuie comunicat beneficiarului.\\n<br \\/><br \\/>\\nUn transfer de bani prin Smith&Smith este:\\n<ul>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.\\nAccesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.\\nRapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.\\nSimplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.<\\/ul>","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"387","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1060","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"385","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1058","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"382","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1055","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"383","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1056","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"381","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1054","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"}]}', 5, '2014-12-22 09:18:29', 1),
(510, 12, 'fuel_pages', '{"id":"12","location":"servicii\\/transfer-bani\\/ro-ro","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-11-27 15:49:26","last_modified":"2014-12-22 11:19:13","last_modified_by":"1","variables":[{"id":"384","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1064","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"386","page_id":"12","name":"body","scope":"","value":"Money transfer RO RO","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1066","page_id":"12","name":"body","scope":"","value":"Trimiteti bani pe teritoriul Romaniei de la cel mai apropiat birou Smith&Smith la un alt birou Smith&Smith. Lista completa a birourilor Smith&Smith o gasiti aici. Banii pot fi trimisi pe teritoriul Romaniei in Euro, USD sau RON.\\n<br \\/><br \\/>\\nPrin Smith&Smith banii dumneavoastra ajung la destinatie in 10 minute la orice birou Smith&Smith in timpul programului de lucru. \\n<br \\/><br \\/>\\nAveti nevoie doar de buletinul de identitate pentru efectuarea tranzactiei. Veti primi un cod unic de identificare al tranzactiei (CUI) ce trebuie comunicat beneficiarului.\\n<br \\/><br \\/>\\nUn transfer de bani prin Smith&Smith este:\\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.<\\/li>\\n<li>Accesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.<\\/li>\\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.<\\/li>\\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.<\\/li><\\/ul>","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"387","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1067","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"385","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1065","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"382","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1062","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"383","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1063","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"381","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"en","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"1061","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"}]}', 6, '2014-12-22 09:19:13', 1),
(511, 13, 'fuel_pages', '{"id":"13","location":"servicii\\/transfer-bani\\/ro-str","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-11-27 16:51:15","last_modified":"2014-12-22 11:22:17","last_modified_by":"1","variables":[{"id":"1071","page_id":"13","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"1073","page_id":"13","name":"body","scope":"","value":"Trimiteti bani in numerar din Romania in strainatate sau trimiteti bani in contul Beneficiarului deschis la oricare banca comerciala din strainatate !\\n<br \\/><br \\/>\\nAlegeti aici cel mai apropiat birou Smith&Smith. Aveti nevoie doar de buletinul de identitate pentru efectuarea tranzactiei. Veti primi un cod unic de identificare al tranzactiei (CUI) ce trebuie comunicat beneficiarului.\\n<br \\/><br \\/>\\nUn transfer de bani prin Smith&Smith este:\\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.<\\/li>\\n<li>Accesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.<\\/li>\\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.<\\/li>\\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.<\\/li><\\/ul>","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"1074","page_id":"13","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"1072","page_id":"13","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"1069","page_id":"13","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"1070","page_id":"13","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"1068","page_id":"13","name":"page_title","scope":"","value":"Transfer ro strainatate","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"}]}', 9, '2014-12-22 09:22:17', 1),
(512, 28, 'fuel_pages', '{"id":28,"location":"servicii\\/transfer-bani\\/strainatate-romania","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-22 11:23:45","last_modified":"2014-12-22 11:23:45","last_modified_by":"","variables":[{"id":"1078","page_id":"28","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1080","page_id":"28","name":"body","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1081","page_id":"28","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1079","page_id":"28","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1076","page_id":"28","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1077","page_id":"28","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1075","page_id":"28","name":"page_title","scope":"","value":"Str\\u0103in\\u0103tate - Rom&acirc;nia","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"}]}', 1, '2014-12-22 09:23:45', 1),
(513, 28, 'fuel_pages', '{"id":"28","location":"servicii\\/transfer-bani\\/strainatate-romania","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-22 11:23:45","last_modified":"2014-12-22 11:24:02","last_modified_by":"1","variables":[{"id":"1085","page_id":"28","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1087","page_id":"28","name":"body","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1088","page_id":"28","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1086","page_id":"28","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1083","page_id":"28","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1084","page_id":"28","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1082","page_id":"28","name":"page_title","scope":"","value":"Str\\u0103in\\u0103tate - Rom&acirc;nia","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"}]}', 2, '2014-12-22 09:24:02', 1),
(514, 77, 'fuel_navigation', '{"id":77,"location":"servicii\\/transfer-bani\\/strainatate-romania","group_id":"3","nav_key":"servicii\\/transfer-bani\\/strainatate-romania","label":"Str\\u0103in\\u0103tate - Rom&acirc;nia","parent_id":"18","precedence":"3","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-22 09:25:39', 1),
(515, 28, 'fuel_pages', '{"id":"28","location":"servicii\\/transfer-bani\\/strainatate-romania","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-22 11:23:45","last_modified":"2014-12-22 11:27:27","last_modified_by":"1","variables":[{"id":"1092","page_id":"28","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1094","page_id":"28","name":"body","scope":"","value":"Indiferent unde va aflati in strainatate trimiteti bani in numerar in Romania la birourile Smith&Smith sau in retelele Bancii Comerciale Romane si Romanian International Bank, iar in Republica Moldova la Victoriabank!\\n<br \\/><br \\/>\\nSmith&Smith lucreaza cu peste 40 de sisteme internationale de remitere de bani din toata lumea.\\n<br \\/><br \\/>\\nTrimiteti, totodata, bani in contul unui Beneficiar, deschis la orice banca comerciala din Romania! <br \\/><br \\/>\\nPentru platile in Euro, beneficiarul trebuie sa aibe un cont deschis la una din urmatoarele banci: (>>>)<br \\/>\\nPentru transferurile in RON, Beneficiarul trebuie sa aibe un cont deschis in Ron la ORICARE banca din Romania.\\n<br \\/><br \\/>\\nUn transfer de bani prin Smith&Smith este:\\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.<\\/li>\\n<li>Accesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.<\\/li>\\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.<\\/li>\\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.<\\/li><\\/ul>","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1095","page_id":"28","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1093","page_id":"28","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1090","page_id":"28","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1091","page_id":"28","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"},{"id":"1089","page_id":"28","name":"page_title","scope":"","value":"Str\\u0103in\\u0103tate - Rom&acirc;nia","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/strainatate-romania","page_published":"yes"}]}', 3, '2014-12-22 09:27:27', 1),
(516, 78, 'fuel_navigation', '{"id":78,"location":"servicii\\/transfer-bani\\/plata-la-domiciliu","group_id":"3","nav_key":"servicii\\/transfer-bani\\/plata-la-domiciliu","label":"Plata la domiciliu","parent_id":"18","precedence":"4","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-12-22 09:28:58', 1),
(517, 79, 'fuel_navigation', '{"id":79,"location":"servicii\\/transfer-bani\\/strainatate-romania","group_id":"3","nav_key":"servicii\\/transfer-bani\\/strainatate-romania","label":"Str\\u0103in\\u0103tate - Rom&acirc;nia","parent_id":"18","precedence":"3","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-22 09:29:05', 1),
(518, 80, 'fuel_navigation', '{"id":80,"location":"servicii\\/transfer-bani\\/plata-la-domiciliu","group_id":"3","nav_key":"servicii\\/transfer-bani\\/plata-la-domiciliu","label":"Plata la domiciliu","parent_id":"18","precedence":"4","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-12-22 09:29:11', 1),
(519, 29, 'fuel_pages', '{"id":29,"location":"servicii\\/transfer-bani\\/plata-la-domiciliu","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-22 11:29:29","last_modified":"2014-12-22 11:29:29","last_modified_by":"","variables":[{"id":"1099","page_id":"29","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1101","page_id":"29","name":"body","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1102","page_id":"29","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1100","page_id":"29","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1097","page_id":"29","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1098","page_id":"29","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1096","page_id":"29","name":"page_title","scope":"","value":"Plata la domiciliu","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"}]}', 1, '2014-12-22 09:29:29', 1),
(520, 29, 'fuel_pages', '{"id":"29","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","layout":"ssservice_simple","published":"yes","cache":"yes","date_added":"2014-12-22 11:29:29","last_modified":"2014-12-22 11:30:56","last_modified_by":"1","variables":[{"id":"1106","page_id":"29","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1108","page_id":"29","name":"body","scope":"","value":"NOU!  Trimiteti bani in Romania direct la domiciliul beneficiarului prin noul serviciu &ldquo;acasa&rdquo; - plata la domiciliu.\\n<br \\/>\\nAstfel beneficiarul va beneficia de:\\n<ul><li>COMODITATE: Nu mai trebuie sa se deplaseze sa isi ridice banii.<\\/li>\\n<li>ECONOMIE DE COSTURI: Fara cheltuieli suplimentare de transport.<\\/li>\\n<li>RAPIDITATE: Fara timp pierdut pe drum sau la cozi.<\\/li>\\n<li>ACOPERIRE NATIONALA: In peste 3100 locatii din Romania. Detalii la telefon 0040 21 331 8000.<\\/li>\\n<li>BANII POTI FI TRIMISI in LEI sau EURO.<\\/li>\\n<li>PLATA SE EFECTUEAZA PRIN CURIER RAPID: in a 2-a zi lucratoare (in conditii meteo normale).<\\/li><\\/ul>","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1109","page_id":"29","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1107","page_id":"29","name":"heading","scope":"","value":"Plata la domiciliu","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1104","page_id":"29","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1105","page_id":"29","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"},{"id":"1103","page_id":"29","name":"page_title","scope":"","value":"Plata la domiciliu","type":"string","language":"ro","active":"yes","layout":"ssservice_simple","location":"servicii\\/transfer-bani\\/plata-la-domiciliu","page_published":"yes"}]}', 2, '2014-12-22 09:30:56', 1),
(521, 9, 'ss_cities', '{"id":9,"name":"ADJUD"}', 1, '2014-12-22 11:07:43', 1),
(522, 4, 'ss_network', '{"id":4,"date_added":"2014-12-22 13:15:25","published":"yes","id_city":"9","county":"Alba","type":"1","phone":"+40 0213318049","email":"smith.adjud@smith-smith.ro","address":"Str. Republicii nr.18, bl.60, Jud. Vrancea","bh_week_start":"08:30:00","bh_week_end":"17:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"","coord_lat":"44.943087","coord_long":"26.026931"}', 1, '2014-12-22 11:15:25', 1),
(523, 10, 'ss_cities', '{"id":10,"name":"Alexandria"}', 1, '2014-12-22 11:16:39', 1),
(524, 5, 'ss_network', '{"id":5,"date_added":"2014-12-22 13:15:25","published":"yes","id_city":"10","county":"Teleorman","type":"1","phone":"+40 213318051","email":"smith.alexandria@smith-smith.ro","address":"Strada Bucuresti, bl. 220, ap. 4, Jud. Teleorman","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"vis-a-vis de CEC Bank si BRD","coord_lat":"43.966956","coord_long":"25.336586"}', 1, '2014-12-22 11:19:04', 1),
(525, 5, 'ss_network', '{"id":"5","date_added":"2014-12-22 13:15:25","published":"yes","id_city":"10","county":"Teleorman","type":"1","phone":"+40 213318051","email":"smith.alexandria@smith-smith.ro","address":"Strada Bucuresti, bl. 220, ap. 4","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"vis-a-vis de CEC Bank si BRD","coord_lat":"43.966956","coord_long":"25.336586"}', 2, '2014-12-22 11:19:33', 1),
(526, 11, 'ss_cities', '{"id":11,"name":"Arad"}', 1, '2014-12-22 11:26:02', 1),
(527, 6, 'ss_network', '{"id":6,"date_added":"2014-12-22 13:15:25","published":"yes","id_city":"11","county":"Arad","type":"1","phone":"+40 021 331 8032","email":"smith.arad@smith-smith.ro","address":"Calea Aurel Vlaicu nr. 10-12 Atrium Center et. 1","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"In incinta Centrului Comercial Atrium pe calea Aurel Vlaicu, langa Gara Mare la etajul 1.","coord_lat":"46.190142","coord_long":"21.321121"}', 1, '2014-12-22 11:28:00', 1),
(528, 1, 'ss_network', '{"id":"1","date_added":"2014-12-03 00:16:44","published":"yes","id_city":"7","county":"Brasov","type":"1","phone":"+40 213 318 041","email":"smith.brasov@smith-smith.ro","address":"Str. 15 Noiembrie nr. 17","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"13:00:00","bh_break_end":"14:00:00","details":"1,2,4,5,6,22,17,31,36,37,50,51\\nColt cu strada Agriselor, intre Teatrul Dramatic (la aproximativ 200 m fata de acesta, pe aceeasi parte) si cinematograful Patria.","coord_lat":"45.652587","coord_long":"25.594613"}', 9, '2014-12-22 11:30:10', 1),
(529, 12, 'ss_cities', '{"id":12,"name":"Bacau"}', 1, '2014-12-22 11:31:00', 1),
(530, 7, 'ss_network', '{"id":7,"date_added":"2014-12-22 13:33:30","published":"yes","id_city":"12","county":"Bacau","type":"1","phone":"+40 213 318 034","email":"smith.bacau@smith-smith.rooper","address":"Str. Oituz Nr. 1 Sc. A","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"","coord_lat":"46.580285","coord_long":"26.915145"}', 1, '2014-12-22 11:33:30', 1),
(531, 7, 'ss_network', '{"id":"7","date_added":"2014-12-22 13:33:30","published":"yes","id_city":"12","county":"Bacau","type":"1","phone":"+40 213 318 034","email":"smith.bacau@smith-smith.rooper","address":"Str. Oituz Nr. 1 Sc. A","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"","coord_lat":"46.567810","coord_long":"26.908066"}', 2, '2014-12-22 12:09:11', 1),
(532, 8, 'ss_network', '{"id":8,"date_added":"2014-12-22 13:33:30","published":"yes","id_city":"12","county":"Bacau","type":"1","phone":"+40 75 903 4841","email":"smith.romanarena@smith-smith.ro","address":"Str. Stefan cel Mare nr. 28, Arena Mall, etaj 2","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"La etajul 2 langa sala de jocuri","coord_lat":"46.580322","coord_long":"26.915124"}', 1, '2014-12-22 12:11:36', 1),
(533, 13, 'ss_cities', '{"id":13,"name":"BAIA-MARE"}', 1, '2014-12-22 12:12:01', 1),
(534, 9, 'ss_network', '{"id":9,"date_added":"2014-12-22 14:14:39","published":"yes","id_city":"13","county":"Baia Mare","type":"1","phone":"+40 213 318 036","email":"smith.baiamare@smith-smith.ro","address":"Bld. Traian nr. 7 (Eurolines)","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"In incinta sediului EUROLINES in zona centrala a orasului, langa braseria URSUS, la jumatatea distantei dintre GARA si Hotel MARA. Se poate ajunge cu mijloace de transport in comun METRO, nr 8 (statie autobuz URSUS ) la 10 minute de mers pana la GARA.","coord_lat":"47.649961","coord_long":"23.563840"}', 1, '2014-12-22 12:14:40', 1),
(535, 14, 'ss_cities', '{"id":14,"name":"BALS"}', 1, '2014-12-22 12:15:20', 1),
(536, 10, 'ss_network', '{"id":10,"date_added":"2014-12-22 14:14:39","published":"yes","id_city":"14","county":"Dolj","type":"1","phone":"+40 213 318 037","email":"smith.bals@smith-smith.ro","address":"Str.N Balcescu,Bl 38.Sc 1 Ap 3","bh_week_start":"08:30:00","bh_week_end":"17:00:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"Sediul e situat la 200 metri de la BCR catre centru, vis-a vis de Spital sau farmacia MEDICA.","coord_lat":"44.350241","coord_long":"24.101047"}', 1, '2014-12-22 12:16:57', 1),
(537, 15, 'ss_cities', '{"id":15,"name":"BARLAD"}', 1, '2014-12-22 12:17:24', 1),
(538, 11, 'ss_network', '{"id":11,"date_added":"2014-12-22 14:14:39","published":"yes","id_city":"15","county":"Vaslui","type":"1","phone":"+40 213 318 041","email":"smith.barlad@smith-smith.ro","address":"Str. Republicii nr.256, la etaj","bh_week_start":"09:30:00","bh_week_end":"17:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"","coord_lat":"46.2343024","coord_long":"27.67035599999997,8"}', 1, '2014-12-22 12:21:38', 1),
(539, 11, 'ss_network', '{"id":"11","date_added":"2014-12-22 14:14:39","published":"yes","id_city":"15","county":"Vaslui","type":"1","phone":"+40 213 318 041","email":"smith.barlad@smith-smith.ro","address":"Str. Republicii nr.256, la etaj","bh_week_start":"09:30:00","bh_week_end":"17:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"","coord_lat":"44.943072","coord_long":"26.026952"}', 2, '2014-12-22 12:22:30', 1),
(540, 16, 'ss_cities', '{"id":16,"name":"BISTRITA"}', 1, '2014-12-22 12:23:50', 1),
(541, 12, 'ss_network', '{"id":12,"date_added":"2014-12-22 14:26:07","published":"yes","id_city":"16","county":"Bistrita-Nasaud","type":"1","phone":"+40 213 318 038","email":"smith.bistrita@smith-smith.ro","address":"B-dul  Decebal Nr. 15, Sc. A,  Ap. 4","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"47.841461","coord_long":"25.922794"}', 1, '2014-12-22 12:26:07', 1),
(542, 12, 'ss_network', '{"id":"12","date_added":"2014-12-22 14:26:07","published":"yes","id_city":"16","county":"Bistrita-Nasaud","type":"1","phone":"+40 213 318 038","email":"smith.bistrita@smith-smith.ro","address":"B-dul  Decebal Nr. 15, Sc. A,  Ap. 4","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"In incinta Agentiei de turism Eurolines","coord_lat":"47.841461","coord_long":"25.922794"}', 2, '2014-12-22 12:26:40', 1),
(543, 17, 'ss_cities', '{"id":17,"name":"BOTOSANI"}', 1, '2014-12-22 12:27:06', 1),
(544, 13, 'ss_network', '{"id":13,"date_added":"2014-12-22 14:29:14","published":"yes","id_city":"17","county":"BOTOSANI","type":"1","phone":"+40 213 318 039","email":"smith.botosani@smith-smith.ro","address":"Str. Ion Pilat nr. 2, sc. C, ap. 4, parter","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"47.741328","coord_long":"26.668238"}', 1, '2014-12-22 12:29:14', 1),
(545, 13, 'ss_network', '{"id":"13","date_added":"2014-12-22 14:29:14","published":"yes","id_city":"17","county":"Botosani","type":"1","phone":"+40 213 318 039","email":"smith.botosani@smith-smith.ro","address":"Str. Ion Pilat nr. 2, sc. C, ap. 4, parter","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"47.741328","coord_long":"26.668238"}', 2, '2014-12-22 12:29:38', 1),
(546, 18, 'ss_cities', '{"id":18,"name":"BRAILA"}', 1, '2014-12-22 12:31:18', 1),
(547, 14, 'ss_network', '{"id":14,"date_added":"2014-12-22 14:33:04","published":"yes","id_city":"18","county":"Braila","type":"1","phone":"+40 213 318 040","email":"smith.braila@smith-smith.ro","address":"Calea Calarasilor Nr.65, Bl.C","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.259720","coord_long":"27.963925"}', 1, '2014-12-22 12:33:05', 1),
(548, 3, 'ss_network', '{"id":"3","date_added":"2014-12-03 00:33:45","published":"yes","id_city":"5","county":"Bucuresti","type":"1","phone":"+40 213 318 030","email":"smith.bucuresti@smith-smith.ro","address":"Str. Justitiei Nr. 54","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"Mijloace de transport: tramvaiul 32. \\nIn apropiere de zona Piata Unirii, (11 Iunie intersectie cu B-dul Regina Maria). Strada Justitiei este paralela cu Strada 11 Iunie. Sediul Smith & Smith se afla langa Manastirea Antim, la parterul cladirii Ascensorul.","coord_lat":"44.425252","coord_long":"26.093440999999984"}', 18, '2014-12-22 12:34:07', 1),
(549, 19, 'ss_cities', '{"id":19,"name":"Bucuresti Obor"}', 1, '2014-12-22 12:34:39', 1),
(550, 15, 'ss_network', '{"id":15,"date_added":"2014-12-03 00:33:45","published":"yes","id_city":"19","county":"Bucuresti","type":"1","phone":"+40 213 318 030","email":"smith.obor@smith-smith.ro","address":"Sos Colentina nr 2 parter intrarea 30, Bucur Obor","bh_week_start":"09:00:00","bh_week_end":"21:00:00","bh_sat_start":"09:00:00","bh_sat_end":"20:00:00","bh_sun_start":"09:00:00","bh_sun_end":"17:00:00","bh_break_start":"","bh_break_end":"","details":"Centru Comercial Obor, intrarea nr.30, pe latura cu sediul Primariei Sector 2","coord_lat":"44.450837","coord_long":"26.126658"}', 1, '2014-12-22 12:37:08', 1),
(551, 15, 'ss_network', '{"id":"15","date_added":"2014-12-03 00:33:45","published":"yes","id_city":"19","county":"Bucuresti","type":"1","phone":"+40 732 555 422","email":"smith.obor@smith-smith.ro","address":"Sos Colentina nr 2 parter intrarea 30, Bucur Obor","bh_week_start":"09:00:00","bh_week_end":"21:00:00","bh_sat_start":"09:00:00","bh_sat_end":"20:00:00","bh_sun_start":"09:00:00","bh_sun_end":"17:00:00","bh_break_start":"","bh_break_end":"","details":"Centru Comercial Obor, intrarea nr.30, pe latura cu sediul Primariei Sector 2","coord_lat":"44.450837","coord_long":"26.126658"}', 2, '2014-12-22 12:37:32', 1),
(552, 20, 'ss_cities', '{"id":20,"name":"BUZAU"}', 1, '2014-12-22 12:38:16', 1),
(553, 16, 'ss_network', '{"id":16,"date_added":"2014-12-22 14:41:04","published":"yes","id_city":"20","county":"Buzau","type":"1","phone":"","email":"smith.buzau@smith-smith.ro","address":"Str. Ostrovului, nr.19 etaj","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.151622","coord_long":"26.819840"}', 1, '2014-12-22 12:41:04', 1),
(554, 16, 'ss_network', '{"id":"16","date_added":"2014-12-22 14:41:04","published":"yes","id_city":"20","county":"Buzau","type":"1","phone":"+40 213 318 042","email":"smith.buzau@smith-smith.ro","address":"Str. Ostrovului, nr.19 etaj","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.151622","coord_long":"26.819840"}', 2, '2014-12-22 12:41:37', 1),
(555, 21, 'ss_cities', '{"id":21,"name":"DROBETA TR. SEVERIN"}', 1, '2014-12-22 12:42:06', 1),
(556, 17, 'ss_network', '{"id":17,"date_added":"2014-12-22 14:44:48","published":"yes","id_city":"21","county":"Mehedinti","type":"1","phone":"+40 213 318 048","email":"smith.drobeta@smith-smith.ro","address":"Str. Tudor Vladimirescu nr. 111","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"44.632633","coord_long":"22.656777"}', 1, '2014-12-22 12:44:48', 1),
(557, 22, 'ss_cities', '{"id":22,"name":"Vaslui"}', 1, '2014-12-22 12:47:01', 1),
(558, 18, 'ss_network', '{"id":18,"date_added":"2014-12-22 14:44:48","published":"yes","id_city":"22","county":"Vaslui","type":"1","phone":"+40 213 318 069","email":"smith.vaslui@smith-smith.ro","address":"Str. Dobrogeanu Gherea, nr. 38","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"46.634906","coord_long":"27.729856"}', 1, '2014-12-22 12:47:05', 1),
(559, 23, 'ss_cities', '{"id":23,"name":"CONSTANTA"}', 1, '2014-12-22 12:47:56', 1),
(560, 19, 'ss_network', '{"id":19,"date_added":"2014-12-22 14:44:48","published":"yes","id_city":"23","county":"Constanta","type":"1","phone":"+40 0213318044","email":"smith.constanta@smith-smith.ro","address":"B-dul 1 Decembrie 1918 Nr. 5, Bl F16","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"44.171998","coord_long":"28.636313"}', 1, '2014-12-22 12:48:59', 1),
(561, 19, 'ss_network', '{"id":"19","date_added":"2014-12-22 14:44:48","published":"yes","id_city":"23","county":"Constanta","type":"1","phone":"+40 0213318044","email":"smith.constanta@smith-smith.ro","address":"B-dul 1 Decembrie 1918 Nr. 5, Bl F16","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"Autobuz: 100, troleibuz: 48 B si maxi-taxi 310.\\nIn apropierea Garii Constanta, principale puncte de reper sunt Spitalul Municipal si Hipermarketul Kaufland, la o distanta de 50 m fata de acestea.","coord_lat":"44.171998","coord_long":"28.636313"}', 2, '2014-12-22 12:49:46', 1),
(562, 24, 'ss_cities', '{"id":24,"name":"CRAIOVA"}', 1, '2014-12-22 12:50:35', 1),
(563, 20, 'ss_network', '{"id":20,"date_added":"2014-12-22 14:52:07","published":"yes","id_city":"24","county":"Dolj","type":"1","phone":"+40 0213318045","email":"smith.craiova@smith-smith.ro","address":"Calea Bucuresti, BL 13B, Parter","bh_week_start":"09:30:00","bh_week_end":"18:00:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"","coord_lat":"44.320372","coord_long":"23.799020"}', 1, '2014-12-22 12:52:08', 1),
(564, 21, 'ss_network', '{"id":21,"date_added":"2014-12-22 14:54:22","published":"yes","id_city":"24","county":"Dolj","type":"1","phone":"+40 0213318046","email":"smith.craiovamall@smith-smith.ro","address":"Calea Bucuresti, Nr.80, in incinta Centrului Comercial Electrop","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"44.312907","coord_long":"23.837049"}', 1, '2014-12-22 12:54:23', 1),
(565, 25, 'ss_cities', '{"id":25,"name":"CURTEA DE ARGES"}', 1, '2014-12-22 12:54:50', 1),
(566, 26, 'ss_cities', '{"id":26,"name":"FILIASI"}', 1, '2014-12-22 12:59:37', 1),
(567, 22, 'ss_network', '{"id":22,"date_added":"2014-12-22 15:01:26","published":"yes","id_city":"26","county":"Dolj","type":"1","phone":"+40 251 444 501","email":"smith.filiasi@smith-smith.ro","address":"Filiasi,Str. Stadion, Bl.I1, parter","bh_week_start":"08:00:00","bh_week_end":"16:00:00","bh_sat_start":"08:30:00","bh_sat_end":"13:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"44.317287","coord_long":"23.813517"}', 1, '2014-12-22 13:01:26', 1),
(568, 27, 'ss_cities', '{"id":27,"name":"FOCSANI"}', 1, '2014-12-22 13:02:22', 1),
(569, 23, 'ss_network', '{"id":23,"date_added":"2014-12-22 15:04:16","published":"yes","id_city":"27","county":"Vrancea","type":"1","phone":"+40 0213318049","email":"smith.focsani@smith-smith.ro","address":"Str. Mihail Kogalniceanu nr. 25, Bl. 10, parter","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"vis-a-vis de Parcul Central si Piata Unirii.","coord_lat":"45.697487","coord_long":"27.186699"}', 1, '2014-12-22 13:04:16', 1),
(570, 28, 'ss_cities', '{"id":28,"name":"GALATI"}', 1, '2014-12-22 13:04:54', 1),
(571, 24, 'ss_network', '{"id":24,"date_added":"2014-12-22 15:06:26","published":"yes","id_city":"28","county":"Galati","type":"1","phone":"+40 0213318050","email":"smith.galati@smith-smith.ro","address":"Str. Domneasca nr. 24 (in incinta Coplexului Modern)","bh_week_start":"10:00:00","bh_week_end":"21:00:00","bh_sat_start":"10:00:00","bh_sat_end":"21:00:00","bh_sun_start":"10:00:00","bh_sun_end":"21:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.168094","coord_long":"28.792344"}', 1, '2014-12-22 13:06:26', 1),
(572, 25, 'ss_network', '{"id":25,"date_added":"2014-12-22 15:06:26","published":"yes","id_city":"28","county":"Galati","type":"1","phone":"+40 0213318050","email":"smith.galati@smith-smith.ro","address":"Str. Brailei nr 220 (in incinta Centrului Comercial Dunarea)","bh_week_start":"10:00:00","bh_week_end":"21:00:00","bh_sat_start":"10:00:00","bh_sat_end":"21:00:00","bh_sun_start":"10:00:00","bh_sun_end":"21:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.553949","coord_long":"28.049405"}', 1, '2014-12-22 13:08:23', 1),
(573, 29, 'ss_cities', '{"id":29,"name":"IASI"}', 1, '2014-12-22 13:08:55', 1);
INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(574, 26, 'ss_network', '{"id":26,"date_added":"2014-12-22 15:06:26","published":"yes","id_city":"29","county":"Iasi","type":"1","phone":"+40 021 331 8052","email":"smith.iasimall@smith-smith.ro","address":"Blvd. Tudor Vladimirescu nr.1 Iulius Mall, Parter","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"","bh_break_end":"","details":"In incinta Iulius Mall, la parter (zona Carrefour Market), in fata Farmaciei Aris si a ghiseelor Evenimentul si Quick Mobile.","coord_lat":"47.155211","coord_long":"27.605655"}', 1, '2014-12-22 13:10:28', 1),
(575, 27, 'ss_network', '{"id":27,"date_added":"2014-12-22 15:06:26","published":"yes","id_city":"29","county":"Iasi","type":"1","phone":"+40 213318051","email":"smith.iasi@smith-smith.ro","address":"Str.Costache Negri, nr.37, bl. P1, ap.3","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"Autobuz 43,46,41,14; maxi-taxi 20; tramvai 1,2,3,6,7,13\\nla 5 minute de mers de jos pana la Hala","coord_lat":"47.161194","coord_long":"27.589273"}', 1, '2014-12-22 13:12:40', 1),
(576, 30, 'ss_cities', '{"id":30,"name":"PANCIU"}', 1, '2014-12-22 13:13:07', 1),
(577, 28, 'ss_network', '{"id":28,"date_added":"2014-12-22 15:14:49","published":"yes","id_city":"30","county":"Vrancea","type":"1","phone":"+40 0722323486","email":"sauronmoneymg2013@yahoo.com","address":"Agent SC Sauronmoneymg SRL, Str. Nicolae Titulescu, Nr. 100, blo","bh_week_start":"09:30:00","bh_week_end":"15:00:00","bh_sat_start":"","bh_sat_end":"","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.906628","coord_long":"27.089038"}', 1, '2014-12-22 13:14:49', 1),
(578, 28, 'ss_network', '{"id":"28","date_added":"2014-12-22 15:14:49","published":"yes","id_city":"30","county":"Vrancea","type":"1","phone":"+40 0722323486","email":"sauronmoneymg2013@yahoo.com","address":"Agent SC Sauronmoneymg SRL, Str. Nicolae Titulescu, Nr. 100","bh_week_start":"09:30:00","bh_week_end":"15:00:00","bh_sat_start":"","bh_sat_end":"","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.906628","coord_long":"27.089038"}', 2, '2014-12-22 13:15:25', 1),
(579, 31, 'ss_cities', '{"id":31,"name":"PIATRA NEAMT"}', 1, '2014-12-22 13:16:56', 1),
(580, 29, 'ss_network', '{"id":29,"date_added":"2014-12-22 15:18:06","published":"yes","id_city":"25","county":"Arges","type":"1","phone":"+40 0213318047","email":"smith.curtea@smith-smith.ro","address":"B-dul Basarabilor Bl. A1, Complex Unic","bh_week_start":"08:30:00","bh_week_end":"17:00:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.149666","coord_long":"24.675642"}', 1, '2014-12-22 13:18:07', 1),
(581, 30, 'ss_network', '{"id":30,"date_added":"2014-12-22 15:20:27","published":"yes","id_city":"31","county":"Neamt","type":"1","phone":"+40 021 331 805","email":"smith.neamt@smith-smith.ro","address":"Str. Mihai Eminescu Nr. 5 Bl. D6 Ap. 2","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"46.929268","coord_long":"26.370207"}', 1, '2014-12-22 13:20:28', 1),
(582, 32, 'ss_cities', '{"id":32,"name":"PITESTI TRIVALE"}', 1, '2014-12-22 13:21:04', 1),
(583, 31, 'ss_network', '{"id":31,"date_added":"2014-12-22 15:22:28","published":"yes","id_city":"32","county":"Arges","type":"1","phone":"+40213318054","email":"smith.pitesti@smith-smith.ro","address":"Str. Victoriei nr 12, parter Trivale","bh_week_start":"09:00:00","bh_week_end":"21:00:00","bh_sat_start":"09:00:00","bh_sat_end":"21:00:00","bh_sun_start":"09:00:00","bh_sun_end":"21:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"44.857006","coord_long":"24.873185"}', 1, '2014-12-22 13:22:28', 1),
(584, 31, 'ss_network', '{"id":"31","date_added":"2014-12-22 15:22:28","published":"yes","id_city":"32","county":"Arges","type":"1","phone":"+40213318054","email":"smith.pitesti@smith-smith.ro","address":"Str. Victoriei nr 12, parter Trivale","bh_week_start":"09:00:00","bh_week_end":"21:00:00","bh_sat_start":"09:00:00","bh_sat_end":"21:00:00","bh_sun_start":"09:00:00","bh_sun_end":"21:00:00","bh_break_start":"","bh_break_end":"","details":"Mall Trivale","coord_lat":"44.857006","coord_long":"24.873185"}', 2, '2014-12-22 13:22:53', 1),
(585, 33, 'ss_cities', '{"id":33,"name":"PLOIESTI"}', 1, '2014-12-22 13:23:36', 1),
(586, 32, 'ss_network', '{"id":32,"date_added":"2014-12-22 15:25:06","published":"yes","id_city":"33","county":"Prahova","type":"1","phone":"+40213318055","email":"smith.ploiesti@smith-smith.ro","address":"Str. Stefan Greceanu Nr.3-5, Bl.L1-L2 parter","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"44.942708","coord_long":"26.027112"}', 1, '2014-12-22 13:25:06', 1),
(587, 34, 'ss_cities', '{"id":34,"name":"RADAUTI"}', 1, '2014-12-22 13:25:26', 1),
(588, 33, 'ss_network', '{"id":33,"date_added":"2014-12-22 15:27:04","published":"yes","id_city":"34","county":"Suceava","type":"1","phone":"+40 021 331 8056","email":"smith.radauti@smith-smith.ro","address":"Str. Piata Garoafelor Nr 1, Radauti","bh_week_start":"08:30:00","bh_week_end":"17:00:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"13:00:00","bh_break_end":"13:30:00","details":"","coord_lat":"44.423510","coord_long":"26.092032"}', 1, '2014-12-22 13:27:05', 1),
(589, 30, 'ss_network', '{"id":"30","date_added":"2014-12-22 15:20:27","published":"yes","id_city":"31","county":"Neamt","type":"1","phone":"+40 021 331 805","email":"smith.piatraneamt@smith-smith.ro","address":"Str. Mihai Eminescu Nr. 5 Bl. D6 Ap. 2","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"46.929268","coord_long":"26.370207"}', 2, '2014-12-22 13:28:19', 1),
(590, 35, 'ss_cities', '{"id":35,"name":"RAMNICU- VALCEA"}', 1, '2014-12-22 13:34:20', 1),
(591, 34, 'ss_network', '{"id":34,"date_added":"2014-12-22 15:36:01","published":"yes","id_city":"35","county":"Valcea","type":"1","phone":"+40213318058","email":"smith.ramnivalcea@smith-smith.ro","address":"Calea lui Traian nr 121, parter","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.102841","coord_long":"24.363384"}', 1, '2014-12-22 13:36:01', 1),
(592, 36, 'ss_cities', '{"id":36,"name":"ROMAN"}', 1, '2014-12-22 13:36:56', 1),
(593, 35, 'ss_network', '{"id":35,"date_added":"2014-12-22 15:27:04","published":"yes","id_city":"36","county":"Neamt","type":"1","phone":"+40 021 331 805","email":"smith.roman@smith-smith.ro","address":"Pietonal Stefan cel Mare, bl.7, parter 1","bh_week_start":"08:30:00","bh_week_end":"17:00:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"46.922683","coord_long":"26.925253"}', 1, '2014-12-22 13:38:23', 1),
(594, 35, 'ss_network', '{"id":"35","date_added":"2014-12-22 15:27:04","published":"yes","id_city":"36","county":"Neamt","type":"1","phone":"+40 021 331 805","email":"smith.roman@smith-smith.ro","address":"Pietonal Stefan cel Mare, bl.7, parter 1","bh_week_start":"08:30:00","bh_week_end":"17:00:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"In zona pietonala Stefan cel Mare, intrarea dinspre Romtelecom (la al doilea pasaj de trecere) sau intrarea dinspre Casa Pionerilor la etajul superior al pietonalului.","coord_lat":"46.922683","coord_long":"26.925253"}', 2, '2014-12-22 13:38:42', 1),
(595, 37, 'ss_cities', '{"id":37,"name":"ROSIORI DE VEDE"}', 1, '2014-12-22 13:39:05', 1),
(596, 29, 'ss_network', '{"id":"29","date_added":"2014-12-22 15:18:06","published":"yes","id_city":"25","county":"Arges","type":"1","phone":"+40 0213318047","email":"smith.curteadearges@smith-smith.ro","address":"B-dul Basarabilor Bl. A1, Complex Unic","bh_week_start":"08:30:00","bh_week_end":"17:00:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.149666","coord_long":"24.675642"}', 2, '2014-12-22 13:39:23', 1),
(597, 36, 'ss_network', '{"id":36,"date_added":"2014-12-22 15:27:04","published":"yes","id_city":"37","county":"Teleorman","type":"1","phone":"+40 0213318057","email":"smith.rosiori@smith-smith.ro","address":"Str. Rahovei Bloc 109, parter","bh_week_start":"08:30:00","bh_week_end":"17:00:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"In zona centrala a orasului pe strada pietonala Rahova vis-a-vis de Posta Mica, la 30 m de BCR inspre ceas.","coord_lat":"44.111795","coord_long":"24.992156"}', 1, '2014-12-22 13:40:14', 1),
(598, 38, 'ss_cities', '{"id":38,"name":"SIBIU"}', 1, '2014-12-22 13:43:44', 1),
(599, 37, 'ss_network', '{"id":37,"date_added":"2014-12-22 15:45:39","published":"yes","id_city":"38","county":"Sibiu","type":"1","phone":"+40 0213318060","email":"smith.sibiu@smith-smith.ro","address":"Selimbar, Str. Sibiului nr. 5, DN 1-km 306, Sibiu Shopping City","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"","bh_break_end":"","details":"Autobuz: 15 (Tursib)In incinta complexului comercial Sibiu Shopping City situat la iesirea dinspre Sibiu spre Selimbar pe partea dreapta. Suntem situati intre magazinul Flanco si intrarea in Magazinul Carrefour.","coord_lat":"45.777411","coord_long":"24.171073"}', 1, '2014-12-22 13:45:39', 1),
(600, 39, 'ss_cities', '{"id":39,"name":"SLATINA"}', 1, '2014-12-22 13:52:22', 1),
(601, 38, 'ss_network', '{"id":38,"date_added":"2014-12-22 15:53:23","published":"yes","id_city":"39","county":"Olt","type":"1","phone":"+4021338061","email":"smith.slatina@smith-smith.ro","address":"Bd.Alex.Ioan Cuza nr20, parter","bh_week_start":"","bh_week_end":"","bh_sat_start":"","bh_sat_end":"","bh_sun_start":"","bh_sun_end":"","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"44.427984","coord_long":"24.367144"}', 1, '2014-12-22 13:53:23', 1),
(602, 38, 'ss_network', '{"id":"38","date_added":"2014-12-22 15:53:23","published":"yes","id_city":"39","county":"Olt","type":"1","phone":"+4021338061","email":"smith.slatina@smith-smith.ro","address":"Bd.Alex.Ioan Cuza nr20, parter","bh_week_start":"09:00:00","bh_week_end":"20:00:00","bh_sat_start":"09:00:00","bh_sat_end":"16:00:00","bh_sun_start":"09:00:00","bh_sun_end":"14:00:00","bh_break_start":"","bh_break_end":"","details":"Este situata pe B-dul Alex.Ioan Cuza nr. 20 Complexul Comercial OLTUL","coord_lat":"44.427984","coord_long":"24.367144"}', 2, '2014-12-22 13:54:11', 1),
(603, 40, 'ss_cities', '{"id":40,"name":"SUCEAVA"}', 1, '2014-12-22 13:54:53', 1),
(604, 39, 'ss_network', '{"id":39,"date_added":"2014-12-22 15:56:42","published":"yes","id_city":"40","county":"Suceava","type":"1","phone":"+40 0213318062","email":"smith.suceava@smith-smith.ro","address":"Str. Marasesti, Nr. 44B, parter","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"Autobuze: 2, 4 si 5.\\nIn spatele Catedralei, langa Consulatul Ucrainei.","coord_lat":"47.647373","coord_long":"26.250015"}', 1, '2014-12-22 13:56:43', 1),
(605, 41, 'ss_cities', '{"id":41,"name":"TARGOVISTE"}', 1, '2014-12-22 14:00:35', 1),
(606, 40, 'ss_network', '{"id":40,"date_added":"2014-12-22 15:56:42","published":"yes","id_city":"41","county":"Dambovita","type":"1","phone":"+40213318063","email":"smith.targoviste@smith-smith.ro","address":"Str. Colonel Baltaretu Nr.36","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"Mijloace de transport in comun: autobuzele 1, 2, 3, 4, 9, 12, 16, statia Colonel Baltaretu\\nIn centrul orasului, intre Casa Sindicatelor si PAVCOM. Agentia este situata in acelasi sediu cu scoala de soferi Gigalo.","coord_lat":"44.921200","coord_long":"25.455161"}', 1, '2014-12-22 14:01:52', 1),
(607, 42, 'ss_cities', '{"id":42,"name":"TARGU JIU"}', 1, '2014-12-22 14:02:43', 1),
(608, 41, 'ss_network', '{"id":41,"date_added":"2014-12-22 15:56:42","published":"yes","id_city":"42","county":"Gorj","type":"1","phone":"+40 0213318064","email":"smith.timisoara@smith-smith.ro","address":"Bdul. Republicii, Bl.24, parter","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.043089","coord_long":"23.283379"}', 1, '2014-12-22 14:03:49', 1),
(609, 43, 'ss_cities', '{"id":43,"name":"TECUCI"}', 1, '2014-12-22 14:04:18', 1),
(610, 42, 'ss_network', '{"id":42,"date_added":"2014-12-22 15:56:42","published":"yes","id_city":"43","county":"Galati","type":"1","phone":"+40 0213318065","email":"smith.tecuci@smith-smith.ro","address":"Str. 1 Decembrie 1918, nr. 56","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"","coord_lat":"45.844356","coord_long":"27.430357"}', 1, '2014-12-22 14:05:18', 1),
(611, 44, 'ss_cities', '{"id":44,"name":"TIMISOARA"}', 1, '2014-12-22 14:05:44', 1),
(612, 43, 'ss_network', '{"id":43,"date_added":"2014-12-22 16:07:21","published":"yes","id_city":"44","county":"Timis","type":"1","phone":"+40213318066","email":"smith.timisoara@smith-smith.ro","address":"Str. C. Brediceanu, nr. 8, Piata 700","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"","bh_break_end":"","details":"Mijloace de transport:autobuze care au statie in Piata 700 sau cu tramvaiul\\nLa parterul cladirii Saiftim, in apropiere de centrul orasului, langa Piata 700, la 50 de m de statia de tramvai","coord_lat":"45.756675","coord_long":"21.224848"}', 1, '2014-12-22 14:07:21', 1),
(613, 44, 'ss_network', '{"id":44,"date_added":"2014-12-22 16:07:21","published":"yes","id_city":"44","county":"Timis","type":"1","phone":"+40 0213318067","email":"smith.timisoara@smith-smith.ro","address":"Str. Demetriade Nr. 1; Iulius Mall","bh_week_start":"10:00:00","bh_week_end":"22:00:00","bh_sat_start":"10:00:00","bh_sat_end":"22:00:00","bh_sun_start":"10:00:00","bh_sun_end":"22:00:00","bh_break_start":"","bh_break_end":"","details":"Trolebuz: 18, 14, 17, 40; expres 2, 1.\\nIn incinta Iulius Mall, langa Doriodo Just Play, aleea principala spre Foodcourt intrarea dinspre Calea Aradului.","coord_lat":"45.766314","coord_long":"21.228113"}', 1, '2014-12-22 14:08:53', 1),
(614, 45, 'ss_cities', '{"id":45,"name":"TULCEA"}', 1, '2014-12-22 14:09:18', 1),
(615, 45, 'ss_network', '{"id":45,"date_added":"2014-12-22 16:10:55","published":"yes","id_city":"45","county":"Tulcea","type":"1","phone":"+40 0213318068","email":"smith.tulcea@smith-smith.ro","address":"Str. Isaccei nr. 57, ( Bloc Pelican - mezanin )","bh_week_start":"08:30:00","bh_week_end":"18:30:00","bh_sat_start":"10:00:00","bh_sat_end":"15:00:00","bh_sun_start":"10:00:00","bh_sun_end":"13:00:00","bh_break_start":"","bh_break_end":"","details":"In cadrul complexului Pelican, la o distanta de cca 100 m de gara si autogara.","coord_lat":"45.179996","coord_long":"28.778129"}', 1, '2014-12-22 14:10:56', 1),
(616, 22, 'fuel_pages', '{"id":"22","location":"retea\\/bcr","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 22:43:19","last_modified":"2014-12-30 10:17:24","last_modified_by":"1","variables":[{"id":"1113","page_id":"22","name":"banner_img","scope":"","value":"banners\\/b_retea..1134x184..o.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"1114","page_id":"22","name":"body","scope":"","value":"Banca Comerciala Romana este agent Smith&Smith din anul 2000.<br \\/><br \\/>\\nCu o retea de peste 500 de locatii raspandite in toata tara, Banca Comerciala Romana  este o alternativa la indemana dumneavoastra de a primi banii din strainatate prin sistemul de transfer de bani Smith&Smith.<br \\/><br \\/>\\nPentru a gasi cea mai apropiata sucursala a Bancii Comerciale Romane  in vederea ridicarii banilor trimisi prin sistemul Smith&Smith prin sistemul Smith&Smith, faceti click <a href=\\"https:\\/\\/www.bcr.ro\\/ro\\/retea-unitati\\/\\" target=\\"_blank\\">aici. <\\/a>","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"1115","page_id":"22","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"1111","page_id":"22","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"1112","page_id":"22","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"},{"id":"1110","page_id":"22","name":"page_title","scope":"","value":"Birouri BCR","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/bcr","page_published":"yes"}]}', 7, '2014-12-30 08:17:24', 1),
(617, 23, 'fuel_pages', '{"id":"23","location":"retea\\/rib","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 23:03:30","last_modified":"2014-12-30 10:17:59","last_modified_by":"1","variables":[{"id":"1119","page_id":"23","name":"banner_img","scope":"","value":"banners\\/b_retea..1134x184..o.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"1120","page_id":"23","name":"body","scope":"","value":"Romanian International Bank este agent Smith&Smith din anul 2010. <br \\/><br \\/>\\nCu o retea extinsa in principalele orase din Romania, Romanian International Bank  este o alternativa la indemana dumneavoastra de a primi bani din strainatate prin sistemul de transfer de bani Smith&Smith.<br \\/><br \\/>\\nPentru a gasi cea mai apropiata sucursala a Romanian International Bank in vederea ridicarii banilor trimisi prin sistemul Smith&Smith, faceti click <a href=\\"https:\\/\\/www.bcr.ro\\/ro\\/retea-unitati\\/\\" target=\\"_blank\\">aici. <\\/a>","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"1121","page_id":"23","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"1117","page_id":"23","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"1118","page_id":"23","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"},{"id":"1116","page_id":"23","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/rib","page_published":"yes"}]}', 2, '2014-12-30 08:17:59', 1),
(618, 24, 'fuel_pages', '{"id":"24","location":"retea\\/vb","layout":"ssnetworks","published":"yes","cache":"yes","date_added":"2014-12-03 23:06:57","last_modified":"2014-12-30 10:18:42","last_modified_by":"1","variables":[{"id":"1125","page_id":"24","name":"banner_img","scope":"","value":"banners\\/b_retea..1134x184..o.jpg","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"1126","page_id":"24","name":"body","scope":"","value":"Victoria Bank este agent Smith&Smith din 11 martie 2003. <br \\/><br \\/>\\nCea mai mare banca privata din Republica Moldova, Victoriabank este o alternativa la indemana dumneavoastra de a primi bani din strainatate in Repubica Moldova prin sistemul de transfer de bani Smith&Smith.<br \\/><br \\/>\\nPentru a gasi cea mai apropiata sucursala Victoriabank in Republica Moldova  in vederea ridicarii banilor trimisi prin sistemul Smith&Smith prin sistemul Smith&Smith, faceti click <a href=\\"https:\\/\\/www.bcr.ro\\/ro\\/retea-unitati\\/\\" target=\\"_blank\\">aici. <\\/a>.","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"1127","page_id":"24","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"1123","page_id":"24","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"1124","page_id":"24","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"},{"id":"1122","page_id":"24","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnetworks","location":"retea\\/vb","page_published":"yes"}]}', 3, '2014-12-30 08:18:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_blocks`
--

CREATE TABLE IF NOT EXISTS `fuel_blocks` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_categories`
--

CREATE TABLE IF NOT EXISTS `fuel_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(100) NOT NULL DEFAULT '',
  `context` varchar(100) NOT NULL DEFAULT '',
  `precedence` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_logs`
--

CREATE TABLE IF NOT EXISTS `fuel_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=872 ;

--
-- Dumping data for table `fuel_logs`
--

INSERT INTO `fuel_logs` (`id`, `entry_date`, `user_id`, `message`, `type`) VALUES
(1, '2014-11-04 05:13:21', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(2, '2014-11-04 05:13:50', 1, 'Password reset from CMS for ''admin'' from ::1', 'debug'),
(3, '2014-11-04 05:23:32', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(4, '2014-11-04 16:12:07', 1, 'Pages item <em>home</em> edited', 'info'),
(5, '2014-11-04 20:53:33', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(6, '2014-11-04 20:55:49', 1, 'Navigation item <em>Home</em> edited', 'info'),
(7, '2014-11-04 20:56:01', 1, 'Navigation item <em>Home</em> edited', 'info'),
(8, '2014-11-04 20:56:55', 1, 'Multiple <em>navigation</em> deleted', 'info'),
(9, '2014-11-04 23:17:40', 1, 'The cache has been cleared.', 'info'),
(10, '2014-11-04 23:19:20', 1, 'The cache has been cleared.', 'info'),
(11, '2014-11-04 23:58:12', 1, 'The cache has been cleared.', 'info'),
(12, '2014-11-05 00:12:17', 1, 'The cache has been cleared.', 'info'),
(13, '2014-11-05 10:21:29', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(14, '2014-11-05 10:44:54', 1, 'Pages item <em>home</em> edited', 'info'),
(15, '2014-11-05 10:45:55', 1, 'Pages item <em>home</em> edited', 'info'),
(16, '2014-11-05 11:24:08', 1, 'The cache has been cleared.', 'info'),
(17, '2014-11-05 11:36:16', 1, 'Pages item <em>home</em> edited', 'info'),
(18, '2014-11-05 11:37:13', 1, 'Pages item <em>home</em> edited', 'info'),
(19, '2014-11-05 12:12:39', 1, 'Pages item <em>home</em> edited', 'info'),
(20, '2014-11-05 12:12:49', 1, 'Pages item <em>home</em> edited', 'info'),
(21, '2014-11-05 13:26:33', 1, 'Assets item <em>moneygram.png</em> edited', 'info'),
(22, '2014-11-05 13:26:40', 1, 'Pages item <em>home</em> edited', 'info'),
(23, '2014-11-05 14:00:14', 1, 'Pages item <em>home</em> edited', 'info'),
(24, '2014-11-05 14:01:29', 1, 'Pages item <em>home</em> edited', 'info'),
(25, '2014-11-05 14:03:37', 1, 'Pages item <em>home</em> edited', 'info'),
(26, '2014-11-05 14:06:39', 1, 'Pages item <em>home</em> edited', 'info'),
(27, '2014-11-05 14:06:51', 1, 'Pages item <em>home</em> edited', 'info'),
(28, '2014-11-05 14:11:30', 1, 'Pages item <em>home</em> edited', 'info'),
(29, '2014-11-05 14:11:41', 1, 'Pages item <em>home</em> edited', 'info'),
(30, '2014-11-05 16:05:21', 1, 'Assets item <em>banner-news.jpg</em> edited', 'info'),
(31, '2014-11-05 16:05:26', 1, 'Pages item <em>stiri</em> edited', 'info'),
(32, '2014-11-05 16:09:56', 1, 'Navigation item <em>Homepage</em> edited', 'info'),
(33, '2014-11-05 16:10:23', 1, 'Navigation item <em>Stiri</em> edited', 'info'),
(34, '2014-11-05 16:10:42', 1, 'Navigation item <em>Homepage</em> edited', 'info'),
(35, '2014-11-05 16:11:04', 1, 'Navigation item <em>News</em> edited', 'info'),
(36, '2014-11-05 16:28:35', 1, 'Navigation item <em>HOMEPAGE</em> edited', 'info'),
(37, '2014-11-05 16:29:30', 1, 'Navigation item <em>HOMEPAGE</em> edited', 'info'),
(38, '2014-11-05 16:29:45', 1, 'Navigation item <em>STIRI</em> edited', 'info'),
(39, '2014-11-05 16:29:55', 1, 'Navigation item <em>NEWS</em> edited', 'info'),
(40, '2014-11-05 16:54:09', 1, 'The cache has been cleared.', 'info'),
(41, '2014-11-05 17:49:46', 1, 'The cache has been cleared.', 'info'),
(42, '2014-11-05 20:45:36', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(43, '2014-11-05 20:45:42', 1, 'The cache has been cleared.', 'info'),
(44, '2014-11-05 20:46:01', 1, 'Pages item <em>home</em> edited', 'info'),
(45, '2014-11-05 23:19:48', 1, 'Site Variables item <em>caseta_online_url</em> edited', 'info'),
(46, '2014-11-05 23:25:54', 1, 'Site Variables item <em>caseta_online_url</em> edited', 'info'),
(47, '2014-11-05 23:36:05', 1, 'Site Variables item <em>caseta_online_url</em> edited', 'info'),
(48, '2014-11-05 23:36:42', 1, 'Site Variables item <em>caseta_online_url</em> edited', 'info'),
(49, '2014-11-05 23:37:28', 1, 'Site Variables item <em>caseta_acasa_url</em> edited', 'info'),
(50, '2014-11-05 23:37:33', 1, 'Site Variables item <em>caseta_cash_url</em> edited', 'info'),
(51, '2014-11-05 23:37:50', 1, 'Site Variables item <em>caseta_acasa_url</em> edited', 'info'),
(52, '2014-11-05 23:38:00', 1, 'Site Variables item <em>caseta_retea_url</em> edited', 'info'),
(53, '2014-11-05 23:43:15', 1, 'Site Variables item <em>img_moneygram</em> edited', 'info'),
(54, '2014-11-05 23:44:38', 1, 'Site Variables item <em>img_moneygram</em> edited', 'info'),
(55, '2014-11-06 00:22:10', 1, 'Pages item <em>stiri</em> edited', 'info'),
(56, '2014-11-06 00:22:47', 1, 'Pages item <em>stiri</em> edited', 'info'),
(57, '2014-11-06 00:22:58', 1, 'Pages item <em>stiri</em> edited', 'info'),
(58, '2014-11-06 10:21:52', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(59, '2014-11-06 11:00:02', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(60, '2014-11-06 11:21:33', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(61, '2014-11-06 11:30:58', 1, 'Stiri item <em>Stire 01</em> edited', 'info'),
(62, '2014-11-06 11:33:20', 1, 'Stiri item <em>Stire 01</em> edited', 'info'),
(63, '2014-11-06 11:34:43', 1, 'Stiri item <em>Stire 01</em> edited', 'info'),
(64, '2014-11-06 11:39:09', 1, 'Stiri item <em>Stire 01</em> edited', 'info'),
(65, '2014-11-06 11:40:42', 1, 'Stiri item <em>Stire 01</em> edited', 'info'),
(66, '2014-11-06 11:41:02', 1, 'Stiri item <em>Stire 01</em> edited', 'info'),
(67, '2014-11-06 11:42:10', 1, 'Stiri item <em>news 01</em> edited', 'info'),
(68, '2014-11-06 11:46:28', 1, 'Stiri item <em>news 01</em> edited', 'info'),
(69, '2014-11-06 11:46:39', 1, 'Stiri item <em>Stire 01</em> edited', 'info'),
(70, '2014-11-06 12:00:13', 1, 'Multiple <em>stiri</em> deleted', 'info'),
(71, '2014-11-06 12:01:59', 1, 'Stiri item <em>Majoritatea birourilor Smith&amp;Smith; au program 7 zile din 7</em> edited', 'info'),
(72, '2014-11-06 12:02:27', 1, 'Stiri item <em>Un nou agent Smith&amp;Smith; la Filiasi</em> edited', 'info'),
(73, '2014-11-06 12:02:53', 1, 'Stiri item <em>Un nou agent Smith&amp;Smith la Filiasi</em> edited', 'info'),
(74, '2014-11-06 12:03:12', 1, 'Stiri item <em>Majoritatea birourilor Smith&amp;Smith au program 7 zile din 7</em> edited', 'info'),
(75, '2014-11-06 12:06:21', 1, 'Multiple <em>stiri</em> deleted', 'info'),
(76, '2014-11-06 12:20:23', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(77, '2014-11-06 12:24:56', 1, 'News item <em>Majoritatea birourilor Smith&amp;Smith; au program 7 zile din 7</em> edited', 'info'),
(78, '2014-11-06 12:25:15', 1, 'News item <em>Majoritatea birourilor Smith&amp;Smith; au program 7 zile din 7</em> edited', 'info'),
(79, '2014-11-06 12:25:20', 1, 'News item <em>Majoritatea birourilor Smith&amp;Smith au program 7 zile din 7</em> edited', 'info'),
(80, '2014-11-06 12:25:46', 1, 'News item <em>Un nou agent SS la Filiasi</em> edited', 'info'),
(81, '2014-11-06 12:36:45', 1, 'News item <em>Un nou agent SS la Filiasi</em> edited', 'info'),
(82, '2014-11-06 12:37:24', 1, 'News item <em>Majoritatea birourilor SS au program 7 zile din 7</em> edited', 'info'),
(83, '2014-11-06 13:19:08', 1, 'News item <em>News 01</em> edited', 'info'),
(84, '2014-11-06 13:19:24', 1, 'News item <em>News 02</em> edited', 'info'),
(85, '2014-11-06 13:38:09', 1, 'Navigation Groups item <em>footer</em> edited', 'info'),
(86, '2014-11-06 13:38:15', 1, 'Navigation item <em>google</em> edited', 'info'),
(87, '2014-11-06 13:43:08', 1, '1 item for <em>navigation_group</em> deleted', 'info'),
(88, '2014-11-06 13:43:22', 1, 'Navigation Groups item <em>footer_menu</em> edited', 'info'),
(89, '2014-11-06 13:44:10', 1, 'Navigation item <em>ANPC</em> edited', 'info'),
(90, '2014-11-06 13:45:01', 1, 'Navigation item <em>Protectia Datelor</em> edited', 'info'),
(91, '2014-11-06 13:46:00', 1, 'Navigation item <em>CGA</em> edited', 'info'),
(92, '2014-11-06 13:47:14', 1, 'Navigation item <em>Data Protection</em> edited', 'info'),
(93, '2014-11-06 13:50:31', 1, 'Navigation item <em>Data Protection</em> edited', 'info'),
(94, '2014-11-06 13:52:25', 1, 'Multiple <em>navigation</em> deleted', 'info'),
(95, '2014-11-06 13:52:40', 1, '1 item for <em>navigation_group</em> deleted', 'info'),
(96, '2014-11-06 17:02:35', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(97, '2014-11-06 17:03:27', 1, 'Site Variables item <em>exchange_rate</em> edited', 'info'),
(98, '2014-11-06 17:11:45', 1, 'Cities item <em>Bucuresti</em> edited', 'info'),
(99, '2014-11-06 17:11:57', 1, 'Cities item <em>Brasov</em> edited', 'info'),
(100, '2014-11-06 17:12:07', 1, 'Cities item <em>Cluj</em> edited', 'info'),
(101, '2014-11-06 17:12:18', 1, '1 item for <em>ss_cities</em> deleted', 'info'),
(102, '2014-11-07 09:34:03', 1, 'News item <em>Program agentii SS</em> edited', 'info'),
(103, '2014-11-07 09:59:05', 1, 'News item <em>E gata caseta de stiri</em> edited', 'info'),
(104, '2014-11-07 10:00:07', 1, 'News item <em>Stirea numarul 4</em> edited', 'info'),
(105, '2014-11-07 10:01:18', 1, 'News item <em>E gata caseta de stiri</em> edited', 'info'),
(106, '2014-11-07 10:16:22', 1, 'The cache has been cleared.', 'info'),
(107, '2014-11-07 10:16:30', 1, 'The cache has been cleared.', 'info'),
(108, '2014-11-07 11:15:40', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(109, '2014-11-07 11:15:45', 1, 'The cache has been cleared.', 'info'),
(110, '2014-11-07 11:19:39', 1, 'The cache has been cleared.', 'info'),
(111, '2014-11-07 12:14:37', 1, 'The cache has been cleared.', 'info'),
(112, '2014-11-10 13:56:21', 0, 'Failed login by ''admin'' from ::1, login attempts:   1', 'debug'),
(113, '2014-11-10 13:56:27', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(114, '2014-11-10 13:56:35', 1, 'The cache has been cleared.', 'info'),
(115, '2014-11-11 14:01:56', 0, 'Failed login by ''admin'' from ::1, login attempts:   1', 'debug'),
(116, '2014-11-11 14:02:01', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(117, '2014-11-11 14:04:39', 1, 'Suppliers item <em>Furnizor 1</em> edited', 'info'),
(118, '2014-11-11 14:15:31', 1, 'Suppliers item <em>Furnizor 1</em> edited', 'info'),
(119, '2014-11-11 14:27:29', 1, 'Suppliers item <em>Furnizor 1</em> edited', 'info'),
(120, '2014-11-11 14:29:53', 1, 'Suppliers item <em>  </em> edited', 'info'),
(121, '2014-11-11 14:30:06', 1, '1 item for <em>ss_suppliers</em> deleted', 'info'),
(122, '2014-11-11 14:31:51', 1, 'Suppliers item <em>Furnizor 1</em> edited', 'info'),
(123, '2014-11-11 14:39:24', 1, 'Suppliers item <em>Orange SA</em> edited', 'info'),
(124, '2014-11-11 14:39:54', 1, 'Suppliers item <em>VODAFONE SA</em> edited', 'info'),
(125, '2014-11-11 14:50:17', 1, 'Suppliers categories item <em>Telecom</em> edited', 'info'),
(126, '2014-11-11 14:50:30', 1, 'Suppliers categories item <em>Utilitati</em> edited', 'info'),
(127, '2014-11-11 15:13:13', 1, 'Suppliers item <em>Furnizor 1</em> edited', 'info'),
(128, '2014-11-11 15:13:23', 1, 'Suppliers item <em>ENEL</em> edited', 'info'),
(129, '2014-11-11 18:07:50', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(130, '2014-11-12 14:05:19', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(131, '2014-11-12 14:06:27', 1, 'Invoices item <em>12321</em> edited', 'info'),
(132, '2014-11-12 14:08:00', 1, 'Invoices item <em>12321</em> edited', 'info'),
(133, '2014-11-12 15:52:27', 1, 'Suppliers categories item <em>Bancar</em> edited', 'info'),
(134, '2014-11-12 18:23:09', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(135, '2014-11-12 22:18:19', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(136, '2014-11-13 00:02:38', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(137, '2014-11-13 00:02:54', 1, 'Suppliers item <em>ENEL</em> edited', 'info'),
(138, '2014-11-13 00:03:28', 1, 'Suppliers item <em>Orange SA</em> edited', 'info'),
(139, '2014-11-13 00:03:42', 1, 'Suppliers item <em>VODAFONE SA</em> edited', 'info'),
(140, '2014-11-13 00:07:05', 1, 'Suppliers item <em>Libra</em> edited', 'info'),
(141, '2014-11-13 00:41:06', 1, 'The cache has been cleared.', 'info'),
(142, '2014-11-13 11:13:29', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(143, '2014-11-13 11:14:18', 1, 'Suppliers item <em>Orange SA</em> edited', 'info'),
(144, '2014-11-13 13:36:41', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(145, '2014-11-13 13:37:07', 1, 'Suppliers item <em>Orange SA</em> edited', 'info'),
(146, '2014-11-13 14:07:33', 1, 'Suppliers item <em>Orange SA</em> edited', 'info'),
(147, '2014-11-13 14:07:53', 1, 'Suppliers item <em>Orange SA</em> edited', 'info'),
(148, '2014-11-13 15:21:14', 1, 'Suppliers item <em>VODAFONE SA</em> edited', 'info'),
(149, '2014-11-18 23:38:46', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(150, '2014-11-18 23:40:33', 1, 'Site Variables item <em>email_from</em> edited', 'info'),
(151, '2014-11-19 10:02:56', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(152, '2014-11-19 10:03:01', 1, '1 item for <em>sitevariables</em> deleted', 'info'),
(153, '2014-11-19 22:19:04', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(154, '2014-11-19 22:20:49', 1, 'Site Variables item <em>from_email</em> edited', 'info'),
(155, '2014-11-19 23:42:31', 1, 'Payment methods item <em>Numerar la Smith & Smith</em> edited', 'info'),
(156, '2014-11-19 23:42:48', 1, 'Payment methods item <em>Numerar la Banca Comerciala Romana</em> edited', 'info'),
(157, '2014-11-19 23:43:14', 1, 'Payment methods item <em>Numerar la Romanian International Bank</em> edited', 'info'),
(158, '2014-11-19 23:43:32', 1, 'Payment methods item <em>Numerar la Victoria Bank</em> edited', 'info'),
(159, '2014-11-19 23:43:46', 1, 'Payment methods item <em>Numerar la Livrarea Acasa</em> edited', 'info'),
(160, '2014-11-19 23:44:06', 1, 'Payment methods item <em>In Cont LEI Romania</em> edited', 'info'),
(161, '2014-11-19 23:44:17', 1, 'Payment methods item <em>In Cont EUR Romania</em> edited', 'info'),
(162, '2014-11-19 23:44:33', 1, 'Payment methods item <em>In Cont EUR UE</em> edited', 'info'),
(163, '2014-11-19 23:50:31', 1, 'Payment methods item <em>In Cont EUR Romania</em> edited', 'info'),
(164, '2014-11-19 23:50:42', 1, 'Payment methods item <em>In Cont EUR UE</em> edited', 'info'),
(165, '2014-11-19 23:50:51', 1, 'Payment methods item <em>In Cont LEI Romania</em> edited', 'info'),
(166, '2014-11-19 23:51:00', 1, 'Payment methods item <em>Numerar la Banca Comerciala Romana</em> edited', 'info'),
(167, '2014-11-20 14:47:01', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(168, '2014-11-20 14:47:48', 1, 'Suppliers item <em>VODAFONE SA</em> edited', 'info'),
(169, '2014-11-20 15:22:07', 1, 'Suppliers item <em>Orange SA</em> edited', 'info'),
(170, '2014-11-20 22:42:05', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(171, '2014-11-21 00:46:40', 1, 'The cache has been cleared.', 'info'),
(172, '2014-11-21 11:36:51', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(173, '2014-11-21 11:37:54', 1, 'Payment methods item <em>ro:Numerar la Livrarea Acasa | en: Cash on home delivery</em> edited', 'info'),
(174, '2014-11-21 11:38:55', 1, 'Payment methods item <em>ro:In Cont EUR Romania</em> edited', 'info'),
(175, '2014-11-21 19:24:31', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(176, '2014-11-24 12:56:57', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(177, '2014-11-25 13:42:52', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(178, '2014-11-25 14:05:48', 1, 'Profiles item <em>Prenume client</em> edited', 'info'),
(179, '2014-11-25 14:06:00', 1, 'Profiles item <em>Data nasterii</em> edited', 'info'),
(180, '2014-11-25 14:06:26', 1, 'Profiles item <em>Numar tranzactii</em> edited', 'info'),
(181, '2014-11-25 14:06:39', 1, 'Profiles item <em>Resedinta</em> edited', 'info'),
(182, '2014-11-25 14:06:51', 1, 'Profiles item <em>Prenume</em> edited', 'info'),
(183, '2014-11-25 14:07:19', 1, 'Profiles item <em>Data nasterii</em> edited', 'info'),
(184, '2014-11-25 14:07:34', 1, 'Profiles item <em>Numar tranzactii</em> edited', 'info'),
(185, '2014-11-25 14:07:44', 1, 'Profiles item <em>Resedinta</em> edited', 'info'),
(186, '2014-11-25 14:09:19', 1, '1 item for <em>ss_profiles</em> deleted', 'info'),
(187, '2014-11-25 14:09:29', 1, 'Profiles item <em>Prenume</em> edited', 'info'),
(188, '2014-11-25 14:36:08', 1, 'Profile types item <em>Data nasterii client</em> edited', 'info'),
(189, '2014-11-25 14:36:24', 1, 'Profile types item <em>Numar tranzactii client</em> edited', 'info'),
(190, '2014-11-25 14:36:32', 1, 'Profile types item <em>Resedinta client</em> edited', 'info'),
(191, '2014-11-25 14:36:44', 1, 'Profile types item <em>prenume beneficiar</em> edited', 'info'),
(192, '2014-11-25 14:36:49', 1, 'Profile types item <em>Prenume beneficiar</em> edited', 'info'),
(193, '2014-11-25 14:37:18', 1, 'Profile types item <em>Data nasterii beneficiar</em> edited', 'info'),
(194, '2014-11-25 14:37:34', 1, 'Profile types item <em>Numar tranzactii beneficiar</em> edited', 'info'),
(195, '2014-11-25 14:37:47', 1, 'Profile types item <em>Resedinta beneficiar</em> edited', 'info'),
(196, '2014-11-25 14:38:18', 1, 'Profile types item <em>Numar tranzactii client</em> edited', 'info'),
(197, '2014-11-25 14:42:30', 1, 'Profiles item <em>Prenume Gheorghe</em> edited', 'info'),
(198, '2014-11-25 15:13:05', 1, 'Types item <em>Flat</em> edited', 'info'),
(199, '2014-11-25 15:13:15', 1, 'Types item <em>Procent</em> edited', 'info'),
(200, '2014-11-25 15:13:46', 1, 'Types item <em>Interval</em> edited', 'info'),
(201, '2014-11-25 15:13:57', 1, 'Types item <em>Perioada</em> edited', 'info'),
(202, '2014-11-25 15:14:11', 1, 'Types item <em>Client</em> edited', 'info'),
(203, '2014-11-25 15:14:21', 1, 'Types item <em>Beneficiar</em> edited', 'info'),
(204, '2014-11-25 15:14:29', 1, 'Types item <em>Moneda</em> edited', 'info'),
(205, '2014-11-25 15:14:52', 1, 'Types item <em>Tranzactii</em> edited', 'info'),
(206, '2014-11-25 18:08:17', 1, 'Fees item <em> 0</em> edited', 'info'),
(207, '2014-11-26 00:04:47', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(208, '2014-11-26 00:05:03', 1, 'Fees item <em> 0</em> edited', 'info'),
(209, '2014-11-26 00:05:13', 1, 'Fees item <em>10</em> edited', 'info'),
(210, '2014-11-26 00:06:01', 1, 'Fees item <em>10</em> edited', 'info'),
(211, '2014-11-26 12:35:16', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(212, '2014-11-26 14:05:50', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(213, '2014-11-26 14:40:38', 1, 'Assets item <em>b_contact..1134x184..o.jpg</em> edited', 'info'),
(214, '2014-11-26 15:11:11', 1, 'Pages item <em>stiri</em> edited', 'info'),
(215, '2014-11-26 15:11:23', 1, 'Pages item <em>stiri</em> edited', 'info'),
(216, '2014-11-26 15:13:26', 1, 'Pages item <em>stiri</em> edited', 'info'),
(217, '2014-11-26 15:13:31', 1, 'Pages item <em>stiri</em> edited', 'info'),
(218, '2014-11-26 15:13:53', 1, 'Pages item <em>stiri</em> edited', 'info'),
(219, '2014-11-26 15:20:58', 1, 'Pages item <em>stiri</em> edited', 'info'),
(220, '2014-11-26 15:40:47', 1, 'FAQ item <em>Cate transferuri pot efectua intr-o singura zi?</em> edited', 'info'),
(221, '2014-11-26 15:41:12', 1, 'FAQ item <em>How many transfer can I make in one day?</em> edited', 'info'),
(222, '2014-11-26 15:41:42', 1, 'FAQ item <em>Can I pay invoices?</em> edited', 'info'),
(223, '2014-11-26 15:41:54', 1, 'FAQ item <em>Pot plati facturi?</em> edited', 'info'),
(224, '2014-11-26 16:01:35', 1, 'Navigation item <em>Intrebari frecvente</em> edited', 'info'),
(225, '2014-11-26 16:01:51', 1, 'Navigation item <em>Frequently asked questions</em> edited', 'info'),
(226, '2014-11-26 16:03:32', 1, 'Navigation item <em>FAQ</em> edited', 'info'),
(227, '2014-11-26 16:03:47', 1, 'Navigation item <em>FAQ</em> edited', 'info'),
(228, '2014-11-26 16:03:58', 1, 'Navigation item <em>INTREBARI FRECVENTE</em> edited', 'info'),
(229, '2014-11-26 16:04:41', 1, 'Navigation item <em>INTREBARI FRECVENTE</em> edited', 'info'),
(230, '2014-11-26 16:04:53', 1, 'Navigation item <em>FAQ</em> edited', 'info'),
(231, '2014-11-26 17:04:46', 1, '1 item for <em>pages</em> deleted', 'info'),
(232, '2014-11-26 18:16:49', 1, 'Pages item <em>contact/detalii</em> edited', 'info'),
(233, '2014-11-26 18:17:45', 1, 'Navigation Groups item <em>contact</em> edited', 'info'),
(234, '2014-11-26 18:18:26', 1, 'Navigation item <em>Detalii contact</em> edited', 'info'),
(235, '2014-11-26 18:30:49', 1, 'Navigation item <em>call center</em> edited', 'info'),
(236, '2014-11-26 18:32:15', 1, 'Navigation item <em>Call center</em> edited', 'info'),
(237, '2014-11-26 18:32:33', 1, 'Navigation item <em>Call center</em> edited', 'info'),
(238, '2014-11-26 18:33:20', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(239, '2014-11-26 18:33:52', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(240, '2014-11-26 18:34:34', 1, 'Pages item <em>contact/callcenter</em> edited', 'info'),
(241, '2014-11-26 18:35:39', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(242, '2014-11-26 18:35:54', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(243, '2014-11-26 18:36:51', 1, 'Navigation item <em>Call center</em> edited', 'info'),
(244, '2014-11-26 18:37:29', 1, 'Navigation item <em>Contact details</em> edited', 'info'),
(245, '2014-11-26 18:38:01', 1, 'Navigation item <em>Call center</em> edited', 'info'),
(246, '2014-11-26 18:39:57', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(247, '2014-11-26 18:40:23', 1, '1 item for <em>pages</em> deleted', 'info'),
(248, '2014-11-26 18:45:38', 1, 'Navigation item <em>Trimite mesaj</em> edited', 'info'),
(249, '2014-11-26 18:45:53', 1, 'Navigation item <em>Send message</em> edited', 'info'),
(250, '2014-11-27 01:32:13', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(251, '2014-11-27 01:32:25', 1, 'The cache has been cleared.', 'info'),
(252, '2014-11-27 11:09:08', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(253, '2014-11-27 11:09:24', 1, 'Navigation item <em>Prima pagina</em> edited', 'info'),
(254, '2014-11-27 11:40:39', 1, '1 item for <em>pages</em> deleted', 'info'),
(255, '2014-11-27 12:21:14', 1, 'Navigation item <em>Servicii</em> edited', 'info'),
(256, '2014-11-27 12:21:27', 1, 'Pages item <em>servicii</em> edited', 'info'),
(257, '2014-11-27 12:22:00', 1, 'Navigation item <em>Pagina principala</em> edited', 'info'),
(258, '2014-11-27 13:16:04', 1, 'Pages item <em>servicii</em> edited', 'info'),
(259, '2014-11-27 13:16:46', 1, 'Assets item <em>b_servicii..1134x184..o.jpg</em> edited', 'info'),
(260, '2014-11-27 13:16:54', 1, 'Pages item <em>servicii</em> edited', 'info'),
(261, '2014-11-27 13:18:16', 1, 'Navigation Groups item <em>servicii</em> edited', 'info'),
(262, '2014-11-27 13:18:40', 1, 'Navigation item <em>Transfer de bani</em> edited', 'info'),
(263, '2014-11-27 13:19:21', 1, 'Navigation item <em>Conturi de plati</em> edited', 'info'),
(264, '2014-11-27 13:19:54', 1, 'Navigation item <em>Conturi de plati</em> edited', 'info'),
(265, '2014-11-27 13:21:56', 1, 'Navigation item <em>Conturi de plati</em> edited', 'info'),
(266, '2014-11-27 13:22:24', 1, 'Navigation item <em>Transfer de bani</em> edited', 'info'),
(267, '2014-11-27 14:00:34', 1, 'Display fees item <em> 1</em> edited', 'info'),
(268, '2014-11-27 14:00:58', 1, 'Display fees item <em>51</em> edited', 'info'),
(269, '2014-11-27 14:01:10', 1, 'Display fees item <em>101</em> edited', 'info'),
(270, '2014-11-27 14:01:24', 1, 'Display fees item <em>201</em> edited', 'info'),
(271, '2014-11-27 14:01:38', 1, 'Display fees item <em>301</em> edited', 'info'),
(272, '2014-11-27 14:01:49', 1, 'Display fees item <em>401</em> edited', 'info'),
(273, '2014-11-27 14:02:05', 1, 'Display fees item <em>501</em> edited', 'info'),
(274, '2014-11-27 14:02:17', 1, 'Display fees item <em>601</em> edited', 'info'),
(275, '2014-11-27 14:02:28', 1, 'Display fees item <em>701</em> edited', 'info'),
(276, '2014-11-27 14:02:42', 1, 'Display fees item <em>801</em> edited', 'info'),
(277, '2014-11-27 14:02:53', 1, 'Display fees item <em>901</em> edited', 'info'),
(278, '2014-11-27 14:05:28', 1, 'Display fees item <em>1001</em> edited', 'info'),
(279, '2014-11-27 15:36:51', 1, 'Navigation item <em>Transfer de bani</em> edited', 'info'),
(280, '2014-11-27 15:37:14', 1, 'Navigation item <em>Conturi de plati</em> edited', 'info'),
(281, '2014-11-27 15:37:40', 1, 'Navigation item <em>Conturi de plati</em> edited', 'info'),
(282, '2014-11-27 15:42:30', 1, 'Pages item <em>servicii/transfer-bani</em> edited', 'info'),
(283, '2014-11-27 15:44:01', 1, 'Pages item <em>servicii/transfer-bani</em> edited', 'info'),
(284, '2014-11-27 15:45:20', 1, 'Pages item <em>servicii/conturi-plati</em> edited', 'info'),
(285, '2014-11-27 15:50:08', 1, 'Navigation item <em>Romania - Romania</em> edited', 'info'),
(286, '2014-11-27 16:51:50', 1, 'Navigation item <em>Romania - strainatate</em> edited', 'info'),
(287, '2014-11-27 17:23:05', 1, 'The cache has been cleared.', 'info'),
(288, '2014-11-28 00:39:26', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(289, '2014-11-28 01:19:31', 1, 'The cache has been cleared.', 'info'),
(290, '2014-11-28 21:55:29', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(291, '2014-11-28 21:56:02', 1, 'Navigation Groups item <em>footer_bottom</em> edited', 'info'),
(292, '2014-11-28 21:56:56', 1, 'Navigation item <em>ANPC</em> edited', 'info'),
(293, '2014-11-28 21:57:27', 1, 'Navigation item <em>Conditii generale ale afacerii</em> edited', 'info'),
(294, '2014-11-28 21:59:19', 1, 'Navigation item <em>Conditii generale ale afacerii</em> edited', 'info'),
(295, '2014-11-28 22:00:34', 1, 'Navigation item <em>Protectia datelor cu caracter personal</em> edited', 'info'),
(296, '2014-11-28 22:02:44', 1, 'Multiple <em>navigation</em> deleted', 'info'),
(297, '2014-11-28 22:02:59', 1, '1 item for <em>navigation_group</em> deleted', 'info'),
(298, '2014-11-28 22:07:26', 1, 'Pages item <em>conditii-generale</em> edited', 'info'),
(299, '2014-11-28 23:30:04', 1, 'The cache has been cleared.', 'info'),
(300, '2014-12-02 12:20:03', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(301, '2014-12-02 12:20:37', 1, 'Password reset from CMS for ''test'' from ::1', 'debug'),
(302, '2014-12-02 12:20:37', 1, 'Users item <em>fulgerica2003@gmail.com</em> edited', 'info'),
(303, '2014-12-02 12:21:07', 1, '1 item for <em>users</em> deleted', 'info'),
(304, '2014-12-02 12:22:56', 1, 'Password reset from CMS for ''test'' from ::1', 'debug'),
(305, '2014-12-02 12:22:57', 1, 'Users item <em>fulgerica2003@gmail.com</em> edited', 'info'),
(306, '2014-12-02 12:23:10', 1, '1 item for <em>users</em> deleted', 'info'),
(307, '2014-12-02 13:22:11', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(308, '2014-12-02 13:46:46', 1, '1 item for <em>pages</em> deleted', 'info'),
(309, '2014-12-02 13:47:50', 1, 'Navigation item <em>Services</em> edited', 'info'),
(310, '2014-12-02 13:53:17', 1, 'Pages item <em>conditii-generale</em> edited', 'info'),
(311, '2014-12-02 14:06:54', 1, 'Pages item <em>contact/detalii</em> edited', 'info'),
(312, '2014-12-02 14:07:22', 1, 'Pages item <em>contact/callcenter</em> edited', 'info'),
(313, '2014-12-02 14:10:38', 1, 'Navigation item <em>Payment accounts</em> edited', 'info'),
(314, '2014-12-02 14:11:11', 1, 'Navigation item <em>Money transfer</em> edited', 'info'),
(315, '2014-12-02 14:11:55', 1, 'Navigation item <em>Romania - Romania</em> edited', 'info'),
(316, '2014-12-02 14:12:33', 1, 'Navigation item <em>Romania - abroad</em> edited', 'info'),
(317, '2014-12-02 14:13:12', 1, 'Navigation item <em>Romania - strainatate</em> edited', 'info'),
(318, '2014-12-02 14:16:15', 1, 'Pages item <em>servicii/transfer-bani</em> edited', 'info'),
(319, '2014-12-02 14:16:39', 1, 'Pages item <em>servicii/transfer-bani/ro-ro</em> edited', 'info'),
(320, '2014-12-02 14:17:05', 1, 'Pages item <em>servicii/transfer-bani/ro-str</em> edited', 'info'),
(321, '2014-12-02 14:18:02', 1, 'Pages item <em>servicii/conturi-plati</em> edited', 'info'),
(322, '2014-12-02 14:20:36', 1, '1 item for <em>navigation</em> deleted', 'info'),
(323, '2014-12-02 14:21:17', 1, 'Navigation item <em>Services</em> edited', 'info'),
(324, '2014-12-02 14:29:57', 1, 'Navigation item <em>Romania - Romania</em> edited', 'info'),
(325, '2014-12-02 14:30:33', 1, 'Navigation item <em>Romania - abroad</em> edited', 'info'),
(326, '2014-12-02 17:09:57', 1, 'Navigation Groups item <em>foo_menu3</em> edited', 'info'),
(327, '2014-12-02 17:10:43', 1, 'Navigation item <em>Despre noi</em> edited', 'info'),
(328, '2014-12-02 17:10:53', 1, 'Navigation item <em>Despre noi</em> edited', 'info'),
(329, '2014-12-02 17:11:25', 1, 'Navigation item <em>Stiri</em> edited', 'info'),
(330, '2014-12-02 17:11:58', 1, 'Navigation item <em>Partenerii nostri</em> edited', 'info'),
(331, '2014-12-02 17:12:25', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(332, '2014-12-02 17:13:03', 1, 'Navigation item <em>Alatura-te echipei</em> edited', 'info'),
(333, '2014-12-02 17:13:15', 1, 'Navigation item <em>Reteaua noastra</em> edited', 'info'),
(334, '2014-12-02 17:15:18', 1, 'Navigation item <em>Alatura-te echipei</em> edited', 'info'),
(335, '2014-12-02 17:16:02', 1, 'Navigation item <em>Partenerii nostri</em> edited', 'info'),
(336, '2014-12-02 17:16:53', 1, 'Navigation item <em>about us</em> edited', 'info'),
(337, '2014-12-02 17:17:18', 1, 'Navigation item <em>our partners</em> edited', 'info'),
(338, '2014-12-02 17:17:43', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(339, '2014-12-02 17:17:59', 1, 'Navigation item <em>Become an agen</em> edited', 'info'),
(340, '2014-12-02 17:18:07', 1, 'Navigation item <em>Become an agent</em> edited', 'info'),
(341, '2014-12-02 17:18:31', 1, 'Navigation item <em>Our network</em> edited', 'info'),
(342, '2014-12-02 17:18:50', 1, 'Navigation item <em>News</em> edited', 'info'),
(343, '2014-12-02 17:20:00', 1, 'Navigation item <em>Our network</em> edited', 'info'),
(344, '2014-12-02 17:20:39', 1, 'Navigation item <em>Become an agent</em> edited', 'info'),
(345, '2014-12-02 17:21:15', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(346, '2014-12-02 17:22:31', 1, 'Navigation item <em>Despre noi</em> edited', 'info'),
(347, '2014-12-02 17:22:53', 1, 'Navigation item <em>News</em> edited', 'info'),
(348, '2014-12-02 17:23:07', 1, 'Navigation item <em>Stiri</em> edited', 'info'),
(349, '2014-12-02 17:23:22', 1, 'Navigation item <em>Partenerii nostri</em> edited', 'info'),
(350, '2014-12-02 17:23:34', 1, 'Navigation item <em>our partners</em> edited', 'info'),
(351, '2014-12-02 17:23:46', 1, 'Navigation item <em>Alatura-te echipei</em> edited', 'info'),
(352, '2014-12-02 17:24:04', 1, 'Navigation item <em>Become an agent</em> edited', 'info'),
(353, '2014-12-02 17:24:20', 1, 'Navigation item <em>Reteaua noastra</em> edited', 'info'),
(354, '2014-12-02 17:24:35', 1, 'Navigation item <em>Our network</em> edited', 'info'),
(355, '2014-12-02 17:24:48', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(356, '2014-12-02 17:24:59', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(357, '2014-12-02 17:35:10', 1, 'Navigation item <em>Send message</em> edited', 'info'),
(358, '2014-12-02 19:40:39', 1, '1 item for <em>navigation</em> deleted', 'info'),
(359, '2014-12-02 19:40:50', 1, '1 item for <em>navigation</em> deleted', 'info'),
(360, '2014-12-02 19:41:06', 1, '1 item for <em>navigation</em> deleted', 'info'),
(361, '2014-12-02 19:41:21', 1, '1 item for <em>navigation</em> deleted', 'info'),
(362, '2014-12-02 19:41:31', 1, '1 item for <em>navigation</em> deleted', 'info'),
(363, '2014-12-02 19:41:41', 1, '1 item for <em>navigation</em> deleted', 'info'),
(364, '2014-12-02 19:41:50', 1, '1 item for <em>navigation</em> deleted', 'info'),
(365, '2014-12-02 19:42:12', 1, '1 item for <em>navigation</em> deleted', 'info'),
(366, '2014-12-02 19:42:23', 1, '1 item for <em>navigation</em> deleted', 'info'),
(367, '2014-12-02 19:42:32', 1, '1 item for <em>navigation</em> deleted', 'info'),
(368, '2014-12-02 19:42:41', 1, '1 item for <em>navigation</em> deleted', 'info'),
(369, '2014-12-02 19:42:51', 1, '1 item for <em>navigation</em> deleted', 'info'),
(370, '2014-12-02 19:43:04', 1, '1 item for <em>navigation_group</em> deleted', 'info'),
(371, '2014-12-02 19:49:58', 1, 'Navigation item <em>Despre noi</em> edited', 'info'),
(372, '2014-12-02 19:53:04', 1, 'Navigation item <em>About us</em> edited', 'info'),
(373, '2014-12-02 19:56:09', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(374, '2014-12-02 20:03:17', 1, 'Pages item <em>aboutus/agent</em> edited', 'info'),
(375, '2014-12-02 20:03:58', 1, 'Pages item <em>aboutus/agent</em> edited', 'info'),
(376, '2014-12-02 20:04:55', 1, 'Pages item <em>aboutus/agent</em> edited', 'info'),
(377, '2014-12-02 20:33:28', 1, 'Pages item <em>aboutus/agent</em> edited', 'info'),
(378, '2014-12-02 20:34:21', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(379, '2014-12-02 20:41:33', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(380, '2014-12-02 20:42:01', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(381, '2014-12-02 20:42:45', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(382, '2014-12-02 20:49:12', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(383, '2014-12-02 20:50:10', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(384, '2014-12-02 21:18:29', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(385, '2014-12-02 21:18:38', 1, 'The cache has been cleared.', 'info'),
(386, '2014-12-02 21:25:27', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(387, '2014-12-02 21:26:06', 1, 'Navigation Groups item <em>foo_menu3</em> edited', 'info'),
(388, '2014-12-02 21:27:18', 1, 'Navigation item <em>About us</em> edited', 'info'),
(389, '2014-12-02 21:27:39', 1, 'Navigation item <em>News</em> edited', 'info'),
(390, '2014-12-02 21:28:11', 1, 'Navigation item <em>our partners</em> edited', 'info'),
(391, '2014-12-02 21:28:38', 1, 'Navigation item <em>Become an agent</em> edited', 'info'),
(392, '2014-12-02 21:28:57', 1, 'Navigation item <em>Our network</em> edited', 'info'),
(393, '2014-12-02 21:29:15', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(394, '2014-12-02 21:29:49', 1, 'Navigation item <em>news</em> edited', 'info'),
(395, '2014-12-02 21:31:03', 1, 'Navigation item <em>news</em> edited', 'info'),
(396, '2014-12-02 21:32:28', 1, 'Navigation item <em>Despre noi</em> edited', 'info'),
(397, '2014-12-02 21:33:03', 1, 'Navigation item <em>Despre noi</em> edited', 'info'),
(398, '2014-12-02 21:33:28', 1, 'Navigation item <em>Stiri</em> edited', 'info'),
(399, '2014-12-02 21:33:50', 1, 'Navigation item <em>our partners</em> edited', 'info'),
(400, '2014-12-02 21:34:10', 1, 'Navigation item <em>Alatura-te echipei</em> edited', 'info'),
(401, '2014-12-02 21:34:29', 1, 'Navigation item <em>Reteaua noastra</em> edited', 'info'),
(402, '2014-12-02 21:34:49', 1, 'Navigation item <em>Contact</em> edited', 'info'),
(403, '2014-12-02 21:35:58', 1, 'Navigation item <em>Alatura-te echipei</em> edited', 'info'),
(404, '2014-12-02 21:37:37', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(405, '2014-12-02 21:38:34', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(406, '2014-12-02 21:59:59', 1, 'Navigation Groups item <em>retea</em> edited', 'info'),
(407, '2014-12-02 22:01:06', 1, 'Navigation item <em>Birouri si agentii proprii</em> edited', 'info'),
(408, '2014-12-02 22:01:30', 1, 'Navigation item <em>Birouri BCR</em> edited', 'info'),
(409, '2014-12-02 22:01:53', 1, 'Navigation item <em>Birouri RIB</em> edited', 'info'),
(410, '2014-12-02 22:02:17', 1, 'Navigation item <em>Victoria Bank</em> edited', 'info'),
(411, '2014-12-02 22:03:40', 1, 'Navigation item <em>Smith Offices</em> edited', 'info'),
(412, '2014-12-02 22:04:11', 1, 'Navigation item <em>BCR Offices</em> edited', 'info'),
(413, '2014-12-02 22:04:30', 1, 'Navigation item <em>RIB Offices</em> edited', 'info'),
(414, '2014-12-02 22:04:49', 1, 'Navigation item <em>Victoria Bank</em> edited', 'info'),
(415, '2014-12-02 22:41:44', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(416, '2014-12-02 22:43:03', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(417, '2014-12-03 00:16:45', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(418, '2014-12-03 00:17:39', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(419, '2014-12-03 00:22:11', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(420, '2014-12-03 00:22:14', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(421, '2014-12-03 00:31:56', 1, 'offices item <em>2014-12-03 00:31:56</em> edited', 'info'),
(422, '2014-12-03 00:33:45', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(423, '2014-12-03 11:06:36', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(424, '2014-12-03 11:14:41', 1, 'Navigation item <em>RETEA</em> edited', 'info'),
(425, '2014-12-03 11:15:13', 1, 'Navigation item <em>RETEA</em> edited', 'info'),
(426, '2014-12-03 11:19:05', 1, 'Navigation item <em>RETEA</em> edited', 'info'),
(427, '2014-12-03 20:01:44', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(428, '2014-12-03 20:02:03', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(429, '2014-12-03 20:03:14', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(430, '2014-12-03 20:03:44', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(431, '2014-12-03 20:04:06', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(432, '2014-12-03 20:04:30', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(433, '2014-12-03 20:05:28', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(434, '2014-12-03 20:07:41', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(435, '2014-12-03 20:08:29', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(436, '2014-12-03 20:08:47', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(437, '2014-12-03 20:09:15', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(438, '2014-12-03 20:09:39', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(439, '2014-12-03 20:10:07', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(440, '2014-12-03 20:10:26', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(441, '2014-12-03 20:10:43', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(442, '2014-12-03 20:11:06', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(443, '2014-12-03 20:11:58', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(444, '2014-12-03 20:14:26', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(445, '2014-12-03 20:18:42', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(446, '2014-12-03 20:20:54', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(447, '2014-12-03 20:21:30', 1, 'offices item <em>2014-12-03 00:31:56</em> edited', 'info'),
(448, '2014-12-03 21:36:19', 1, 'The cache has been cleared.', 'info'),
(449, '2014-12-03 22:09:22', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(450, '2014-12-03 22:09:39', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(451, '2014-12-03 22:10:31', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(452, '2014-12-03 22:11:02', 1, 'The cache has been cleared.', 'info'),
(453, '2014-12-03 22:22:16', 1, 'The cache has been cleared.', 'info'),
(454, '2014-12-03 22:31:11', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(455, '2014-12-03 22:32:53', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(456, '2014-12-03 22:33:34', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(457, '2014-12-03 22:34:10', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(458, '2014-12-03 22:34:30', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(459, '2014-12-03 22:45:07', 1, 'Pages item <em>retea/birouribcr</em> edited', 'info'),
(460, '2014-12-03 22:46:19', 1, 'Pages item <em>retea/bcr</em> edited', 'info'),
(461, '2014-12-03 22:54:04', 1, 'Pages item <em>retea/bcr</em> edited', 'info'),
(462, '2014-12-03 22:59:34', 1, 'Pages item <em>retea/bcr</em> edited', 'info'),
(463, '2014-12-03 23:00:05', 1, 'Pages item <em>retea/bcr</em> edited', 'info'),
(464, '2014-12-03 23:07:44', 1, 'Pages item <em>retea/vb</em> edited', 'info'),
(465, '2014-12-03 23:22:02', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(466, '2014-12-03 23:27:42', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(467, '2014-12-03 23:39:22', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(468, '2014-12-04 00:13:38', 1, 'Navigation item <em>About us</em> edited', 'info'),
(469, '2014-12-04 00:15:41', 1, 'Navigation item <em>network</em> edited', 'info'),
(470, '2014-12-04 00:16:48', 1, 'Navigation item <em>Become agent</em> edited', 'info'),
(471, '2014-12-04 00:17:11', 1, 'Navigation item <em>partners</em> edited', 'info'),
(472, '2014-12-04 00:17:29', 1, 'Navigation item <em>profile</em> edited', 'info'),
(473, '2014-12-04 01:27:55', 1, 'Pages item <em>contact/mesaj</em> edited', 'info'),
(474, '2014-12-04 11:05:26', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(475, '2014-12-04 11:18:35', 1, 'Navigation item <em>parteneri</em> edited', 'info'),
(476, '2014-12-04 11:19:00', 1, 'Navigation item <em>profil</em> edited', 'info'),
(477, '2014-12-04 11:20:04', 1, 'Pages item <em>aboutus/parteners</em> edited', 'info'),
(478, '2014-12-04 11:20:46', 1, 'Pages item <em>aboutus/parteners</em> edited', 'info'),
(479, '2014-12-04 11:21:35', 1, 'Pages item <em>aboutus/profile</em> edited', 'info'),
(480, '2014-12-04 11:21:58', 1, 'Pages item <em>aboutus/profile</em> edited', 'info'),
(481, '2014-12-04 11:22:11', 1, 'Pages item <em>aboutus/profile</em> edited', 'info'),
(482, '2014-12-04 11:24:18', 1, 'Pages item <em>aboutus/profile</em> edited', 'info'),
(483, '2014-12-04 11:25:06', 1, 'Pages item <em>aboutus/profile</em> edited', 'info'),
(484, '2014-12-04 11:26:53', 1, 'Pages item <em>aboutus/profile</em> edited', 'info'),
(485, '2014-12-04 11:28:07', 1, 'Pages item <em>aboutus/profile</em> edited', 'info'),
(486, '2014-12-04 11:55:41', 1, 'Successful login by ''admin'' from 84.117.64.218', 'debug'),
(487, '2014-12-04 11:55:48', 1, 'Successful login by ''admin'' from 188.241.123.192', 'debug'),
(488, '2014-12-04 11:55:53', 1, 'The cache has been cleared.', 'info'),
(489, '2014-12-04 12:05:56', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(490, '2014-12-04 12:06:14', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(491, '2014-12-04 12:10:58', 1, 'The cache has been cleared.', 'info'),
(492, '2014-12-04 12:29:47', 1, 'The cache has been cleared.', 'info'),
(493, '2014-12-04 12:53:59', 1, 'Successful login by ''admin'' from 84.117.64.218', 'debug'),
(494, '2014-12-04 12:54:55', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(495, '2014-12-04 12:55:19', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(496, '2014-12-04 13:33:30', 1, 'Pages item <em>stiri</em> edited', 'info'),
(497, '2014-12-04 13:34:01', 1, 'News item <em>news 03</em> edited', 'info'),
(498, '2014-12-04 13:55:54', 1, 'Pages item <em>stiri</em> edited', 'info'),
(499, '2014-12-04 13:56:18', 1, 'Pages item <em>stiri</em> edited', 'info'),
(500, '2014-12-04 14:02:23', 1, 'Pages item <em>stiri</em> edited', 'info'),
(501, '2014-12-04 14:14:03', 1, 'Pages item <em>stiri</em> edited', 'info'),
(502, '2014-12-04 15:06:17', 1, 'News item <em>stire importanta</em> edited', 'info'),
(503, '2014-12-04 15:39:14', 1, 'News item <em>news 05</em> edited', 'info'),
(504, '2014-12-04 15:39:26', 1, 'News item <em>news 05</em> edited', 'info'),
(505, '2014-12-04 15:39:34', 1, 'News item <em>news 05</em> edited', 'info'),
(506, '2014-12-04 15:39:49', 1, 'News item <em>news 06</em> edited', 'info'),
(507, '2014-12-04 15:47:43', 1, 'Successful login by ''admin'' from 188.241.123.192', 'debug'),
(508, '2014-12-04 15:49:07', 1, 'The cache has been cleared.', 'info'),
(509, '2014-12-04 15:49:09', 1, 'The cache has been cleared.', 'info'),
(510, '2014-12-04 15:49:10', 1, 'The cache has been cleared.', 'info'),
(511, '2014-12-04 15:49:11', 1, 'The cache has been cleared.', 'info'),
(512, '2014-12-04 15:49:11', 1, 'The cache has been cleared.', 'info'),
(513, '2014-12-04 15:49:32', 1, 'Successful login by ''admin'' from 84.117.64.218', 'debug'),
(514, '2014-12-04 15:49:38', 1, 'The cache has been cleared.', 'info'),
(515, '2014-12-04 16:45:13', 1, 'Site Variables item <em>exchange_rate_usd</em> edited', 'info'),
(516, '2014-12-04 16:52:35', 1, 'Site Variables item <em>caseta_retea_url</em> edited', 'info'),
(517, '2014-12-04 16:53:27', 1, 'Site Variables item <em>caseta_retea_url</em> edited', 'info'),
(518, '2014-12-04 17:03:11', 1, 'Site Variables item <em>caseta_reclama1_url</em> edited', 'info'),
(519, '2014-12-04 17:03:26', 1, 'Site Variables item <em>caseta_reclama2_url</em> edited', 'info'),
(520, '2014-12-04 17:31:30', 1, 'Navigation Groups item <em>foo_menu5</em> edited', 'info'),
(521, '2014-12-04 17:32:00', 1, 'Navigation item <em>Facebook</em> edited', 'info'),
(522, '2014-12-04 17:32:32', 1, 'Navigation item <em>Twitter</em> edited', 'info'),
(523, '2014-12-04 17:37:03', 1, 'Navigation Groups item <em>foo_menu4</em> edited', 'info'),
(524, '2014-12-04 17:37:55', 1, 'Navigation item <em>profil</em> edited', 'info'),
(525, '2014-12-04 17:38:09', 1, 'Navigation item <em>profile</em> edited', 'info'),
(526, '2014-12-04 17:38:49', 1, 'Navigation item <em>retea</em> edited', 'info'),
(527, '2014-12-04 17:39:04', 1, 'Navigation item <em>network</em> edited', 'info'),
(528, '2014-12-04 17:39:37', 1, 'Navigation item <em>faq</em> edited', 'info'),
(529, '2014-12-04 17:39:55', 1, 'Navigation item <em>intrebari frecvente</em> edited', 'info'),
(530, '2014-12-04 17:58:13', 1, 'Pages item <em>conditii-generale</em> edited', 'info'),
(531, '2014-12-04 17:58:35', 1, 'Pages item <em>conditii-generale</em> edited', 'info'),
(532, '2014-12-04 20:38:09', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(533, '2014-12-04 21:36:04', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(534, '2014-12-04 21:50:25', 1, 'Successful login by ''admin'' from 78.96.219.245', 'debug'),
(535, '2014-12-04 21:50:30', 1, 'The cache has been cleared.', 'info'),
(536, '2014-12-04 21:51:07', 1, 'Successful login by ''admin'' from 188.241.123.192', 'debug'),
(537, '2014-12-04 22:05:00', 1, 'The cache has been cleared.', 'info'),
(538, '2014-12-04 22:14:04', 1, 'Pages item <em>stiri</em> edited', 'info'),
(539, '2014-12-04 22:16:42', 1, 'Pages item <em>stiritemp</em> edited', 'info'),
(540, '2014-12-04 22:28:31', 1, 'Pages item <em>stiri</em> edited', 'info'),
(541, '2014-12-04 22:29:03', 1, 'Pages item <em>stiri</em> edited', 'info'),
(542, '2014-12-05 01:49:20', 1, 'The cache has been cleared.', 'info'),
(543, '2014-12-05 10:51:17', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(544, '2014-12-05 11:04:45', 1, 'Pages item <em>servicii/transfer-bani/ro-str</em> edited', 'info'),
(545, '2014-12-05 11:05:17', 1, 'Pages item <em>servicii/transfer-bani/ro-str</em> edited', 'info'),
(546, '2014-12-05 11:05:31', 1, 'Pages item <em>servicii/transfer-bani/ro-str</em> edited', 'info'),
(547, '2014-12-05 11:12:44', 1, 'Pages item <em>servicii/transfer-bani/ro-ro/numerar</em> edited', 'info'),
(548, '2014-12-05 11:13:13', 1, 'Pages item <em>servicii/transfer-bani/ro-ro/numerar</em> edited', 'info'),
(549, '2014-12-05 11:16:34', 1, 'Navigation item <em>Numerar</em> edited', 'info'),
(550, '2014-12-05 11:16:53', 1, 'Navigation item <em>Cash</em> edited', 'info'),
(551, '2014-12-05 11:17:57', 1, 'Pages item <em>servicii/transfer-bani/ro-ro</em> edited', 'info'),
(552, '2014-12-05 11:19:27', 1, 'Navigation item <em>Cash</em> edited', 'info'),
(553, '2014-12-05 11:21:35', 1, 'Pages item <em>servicii/transfer-bani/ro-str</em> edited', 'info'),
(554, '2014-12-05 11:22:06', 1, 'Pages item <em>servicii/transfer-bani/ro-str</em> edited', 'info'),
(555, '2014-12-05 11:22:34', 1, 'Pages item <em>servicii/transfer-bani/ro-str</em> edited', 'info'),
(556, '2014-12-05 11:24:36', 1, 'Pages item <em>servicii/transfer-bani/ro-str/moneygram</em> edited', 'info'),
(557, '2014-12-05 11:26:03', 1, 'Navigation item <em>Moneygram</em> edited', 'info'),
(558, '2014-12-05 11:26:20', 1, 'Navigation item <em>Moneygram</em> edited', 'info'),
(559, '2014-12-05 11:28:28', 1, 'Navigation item <em>Moneygram</em> edited', 'info'),
(560, '2014-12-05 11:29:33', 1, '1 item for <em>navigation</em> deleted', 'info'),
(561, '2014-12-05 11:30:49', 1, 'Navigation item <em>Moneygram</em> edited', 'info'),
(562, '2014-12-05 11:33:12', 1, '1 item for <em>navigation</em> deleted', 'info'),
(563, '2014-12-05 11:35:52', 1, 'Navigation item <em>Moneygram</em> edited', 'info'),
(564, '2014-12-05 11:38:00', 1, 'Navigation item <em>Moneygram</em> edited', 'info'),
(565, '2014-12-05 11:39:03', 1, 'Navigation item <em>Moneygram</em> edited', 'info'),
(566, '2014-12-05 11:40:28', 1, 'The cache has been cleared.', 'info'),
(567, '2014-12-05 11:53:00', 1, 'Successful login by ''admin'' from 78.96.219.245', 'debug'),
(568, '2014-12-05 11:55:26', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(569, '2014-12-05 11:57:29', 1, 'Navigation item <em>CUM SA DEVII AGENT</em> edited', 'info'),
(570, '2014-12-05 11:58:12', 1, 'Site Variables item <em>from_email</em> edited', 'info'),
(571, '2014-12-05 11:58:28', 1, 'Navigation item <em>Become agent</em> edited', 'info'),
(572, '2014-12-05 12:01:19', 1, 'Navigation item <em>cum sa devii agent</em> edited', 'info'),
(573, '2014-12-05 12:02:22', 1, 'Navigation item <em>Despre noi</em> edited', 'info'),
(574, '2014-12-05 12:04:11', 1, '1 item for <em>pages</em> deleted', 'info'),
(575, '2014-12-05 12:05:25', 1, 'Navigation item <em>profil</em> edited', 'info'),
(576, '2014-12-05 12:06:31', 1, 'Navigation item <em>partners</em> edited', 'info'),
(577, '2014-12-05 12:07:11', 1, 'Navigation item <em>parteneri</em> edited', 'info'),
(578, '2014-12-05 12:07:43', 1, 'Navigation item <em>profile</em> edited', 'info'),
(579, '2014-12-07 21:29:32', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(580, '2014-12-07 21:47:20', 1, 'Successful login by ''admin'' from 78.96.220.141', 'debug'),
(581, '2014-12-07 21:47:26', 1, 'The cache has been cleared.', 'info'),
(582, '2014-12-07 22:04:37', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(583, '2014-12-07 22:04:43', 1, 'The cache has been cleared.', 'info'),
(584, '2014-12-07 22:14:15', 1, 'Successful login by ''admin'' from 78.96.220.141', 'debug'),
(585, '2014-12-07 22:18:17', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(586, '2014-12-07 22:22:09', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info');
INSERT INTO `fuel_logs` (`id`, `entry_date`, `user_id`, `message`, `type`) VALUES
(587, '2014-12-07 22:22:25', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(588, '2014-12-07 22:23:39', 1, 'The cache has been cleared.', 'info'),
(589, '2014-12-07 22:29:44', 1, 'Successful login by ''admin'' from 78.96.220.141', 'debug'),
(590, '2014-12-07 22:29:51', 1, 'The cache has been cleared.', 'info'),
(591, '2014-12-07 22:34:29', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(592, '2014-12-07 22:35:51', 1, 'Successful login by ''admin'' from 78.96.220.141', 'debug'),
(593, '2014-12-07 22:38:22', 1, 'The cache has been cleared.', 'info'),
(594, '2014-12-07 22:38:34', 1, 'Successful login by ''admin'' from 78.96.220.141', 'debug'),
(595, '2014-12-07 22:38:39', 1, 'The cache has been cleared.', 'info'),
(596, '2014-12-08 12:48:28', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(597, '2014-12-08 13:24:19', 1, 'Successful login by ''admin'' from 84.117.64.218', 'debug'),
(598, '2014-12-09 23:45:59', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(599, '2014-12-09 23:46:08', 1, 'The cache has been cleared.', 'info'),
(600, '2014-12-10 10:17:26', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(601, '2014-12-10 10:22:27', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(602, '2014-12-10 10:28:25', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(603, '2014-12-10 10:32:01', 1, 'Pages item <em>paymnts</em> edited', 'info'),
(604, '2014-12-10 10:35:03', 1, 'Pages item <em>paymnts</em> edited', 'info'),
(605, '2014-12-10 10:37:12', 1, 'Pages item <em>paymnts</em> edited', 'info'),
(606, '2014-12-10 10:38:04', 1, 'Pages item <em>paymnts</em> edited', 'info'),
(607, '2014-12-10 10:40:48', 1, 'Pages item <em>paymnts</em> edited', 'info'),
(608, '2014-12-10 10:41:44', 1, 'Pages item <em>paymnts</em> edited', 'info'),
(609, '2014-12-10 11:01:23', 1, 'Navigation Groups item <em>mainauth</em> edited', 'info'),
(610, '2014-12-10 11:01:28', 1, 'Navigation Groups item <em>mainauth</em> edited', 'info'),
(611, '2014-12-10 11:02:24', 1, 'Navigation item <em>Transfer bani</em> edited', 'info'),
(612, '2014-12-10 11:03:25', 1, 'Navigation item <em>CONTUL TAU</em> edited', 'info'),
(613, '2014-12-10 11:04:15', 1, 'Navigation item <em>ISTORIC TRANZACTII</em> edited', 'info'),
(614, '2014-12-10 11:05:01', 1, 'Navigation item <em>MESAJE</em> edited', 'info'),
(615, '2014-12-10 11:05:51', 1, 'Navigation item <em>TRANSFER DE BANI</em> edited', 'info'),
(616, '2014-12-10 11:11:02', 1, 'exchange rate item <em>EUR</em> edited', 'info'),
(617, '2014-12-10 11:12:42', 1, '1 item for <em>ss_exchange_rate</em> deleted', 'info'),
(618, '2014-12-10 11:12:49', 1, '1 item for <em>ss_exchange_rate</em> deleted', 'info'),
(619, '2014-12-10 11:13:20', 1, 'exchange rate item <em>EUR</em> edited', 'info'),
(620, '2014-12-10 11:14:46', 1, '1 item for <em>ss_exchange_rate</em> deleted', 'info'),
(621, '2014-12-10 11:14:57', 1, 'exchange rate item <em>EUR</em> edited', 'info'),
(622, '2014-12-10 11:15:24', 1, '1 item for <em>ss_exchange_rate</em> deleted', 'info'),
(623, '2014-12-10 11:17:17', 1, 'exchange rate item <em>EUR</em> edited', 'info'),
(624, '2014-12-10 11:18:18', 1, 'exchange rate item <em>EUR</em> edited', 'info'),
(625, '2014-12-10 11:24:03', 1, 'exchange rate item <em>EUR</em> edited', 'info'),
(626, '2014-12-10 11:24:43', 1, 'exchange rate item <em>USD</em> edited', 'info'),
(627, '2014-12-10 11:28:03', 1, '1 item for <em>ss_exchange_rate</em> deleted', 'info'),
(628, '2014-12-10 11:28:10', 1, '1 item for <em>ss_exchange_rate</em> deleted', 'info'),
(629, '2014-12-10 11:28:24', 1, 'exchange rate item <em>EUR</em> edited', 'info'),
(630, '2014-12-10 11:30:07', 1, '1 item for <em>ss_exchange_rate</em> deleted', 'info'),
(631, '2014-12-10 11:30:23', 1, 'exchange rate item <em>EUR</em> edited', 'info'),
(632, '2014-12-10 11:32:48', 1, 'exchange rate item <em>EUR</em> edited', 'info'),
(633, '2014-12-10 11:33:20', 1, 'exchange rate item <em>USD</em> edited', 'info'),
(634, '2014-12-10 12:59:52', 1, 'Pages item <em>paymnts</em> edited', 'info'),
(635, '2014-12-10 17:27:17', 1, 'Pages item <em>payments</em> edited', 'info'),
(636, '2014-12-10 17:27:40', 1, 'Pages item <em>sspayments</em> edited', 'info'),
(637, '2014-12-10 17:29:32', 1, 'Navigation item <em>TRANSFER DE BANI</em> edited', 'info'),
(638, '2014-12-10 17:31:02', 1, 'Navigation item <em>TRANSFER DE BANI</em> edited', 'info'),
(639, '2014-12-10 21:00:55', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(640, '2014-12-10 21:11:40', 1, 'Pages item <em>sspayments</em> edited', 'info'),
(641, '2014-12-10 23:18:51', 1, 'The cache has been cleared.', 'info'),
(642, '2014-12-11 08:23:18', 0, 'Failed login by ''admin'' from ::1, login attempts:   1', 'debug'),
(643, '2014-12-11 08:23:25', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(644, '2014-12-11 10:32:15', 1, 'The cache has been cleared.', 'info'),
(645, '2014-12-11 14:44:08', 1, 'The cache has been cleared.', 'info'),
(646, '2014-12-11 14:46:36', 1, 'The cache has been cleared.', 'info'),
(647, '2014-12-11 14:52:41', 1, 'The cache has been cleared.', 'info'),
(648, '2014-12-11 14:55:11', 1, 'The cache has been cleared.', 'info'),
(649, '2014-12-11 15:02:52', 1, 'The cache has been cleared.', 'info'),
(650, '2014-12-11 15:07:27', 1, 'The cache has been cleared.', 'info'),
(651, '2014-12-11 15:08:10', 1, 'The cache has been cleared.', 'info'),
(652, '2014-12-11 17:25:21', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(653, '2014-12-11 17:25:31', 1, 'The cache has been cleared.', 'info'),
(654, '2014-12-12 09:31:35', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(655, '2014-12-12 09:31:42', 1, 'The cache has been cleared.', 'info'),
(656, '2014-12-12 09:38:45', 1, 'The cache has been cleared.', 'info'),
(657, '2014-12-12 09:44:02', 1, 'The cache has been cleared.', 'info'),
(658, '2014-12-12 09:54:11', 1, 'The cache has been cleared.', 'info'),
(659, '2014-12-12 11:02:32', 1, 'The cache has been cleared.', 'info'),
(660, '2014-12-12 11:41:49', 1, 'The cache has been cleared.', 'info'),
(661, '2014-12-12 16:09:32', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(662, '2014-12-12 16:09:39', 1, 'The cache has been cleared.', 'info'),
(663, '2014-12-12 16:16:01', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(664, '2014-12-15 11:04:12', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(665, '2014-12-15 11:05:03', 1, 'Profiles item <em>Prenume beneficiar Vasile</em> edited', 'info'),
(666, '2014-12-15 11:06:33', 1, 'Fees item <em>34</em> edited', 'info'),
(667, '2014-12-15 13:23:36', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(668, '2014-12-15 13:35:59', 1, 'Fees item <em>10</em> edited', 'info'),
(669, '2014-12-15 13:37:43', 1, 'Fees item <em>10</em> edited', 'info'),
(670, '2014-12-15 16:59:24', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(671, '2014-12-15 16:59:36', 1, 'Fees item <em> 0</em> edited', 'info'),
(672, '2014-12-15 17:00:18', 1, 'Fees item <em> 0</em> edited', 'info'),
(673, '2014-12-15 17:29:37', 1, 'Fees item <em>10</em> edited', 'info'),
(674, '2014-12-15 17:40:10', 1, 'Fees item <em> 0</em> edited', 'info'),
(675, '2014-12-15 17:42:53', 1, 'Fees item <em>10</em> edited', 'info'),
(676, '2014-12-15 17:43:04', 1, 'Fees item <em>10</em> edited', 'info'),
(677, '2014-12-15 17:43:14', 1, 'Fees item <em>10</em> edited', 'info'),
(678, '2014-12-15 17:43:27', 1, 'Fees item <em>10</em> edited', 'info'),
(679, '2014-12-15 17:43:59', 1, 'Fees item <em>10</em> edited', 'info'),
(680, '2014-12-15 17:44:06', 1, 'Fees item <em>10</em> edited', 'info'),
(681, '2014-12-15 17:44:16', 1, 'Fees item <em>10</em> edited', 'info'),
(682, '2014-12-15 17:44:25', 1, 'Fees item <em>10</em> edited', 'info'),
(683, '2014-12-15 17:48:31', 1, 'Fees item <em>10</em> edited', 'info'),
(684, '2014-12-15 17:53:43', 1, 'Fees item <em>10</em> edited', 'info'),
(685, '2014-12-15 18:01:52', 1, 'Fees item <em>10</em> edited', 'info'),
(686, '2014-12-15 18:02:00', 1, 'Fees item <em>10</em> edited', 'info'),
(687, '2014-12-15 18:07:17', 1, 'Fees item <em>10</em> edited', 'info'),
(688, '2014-12-15 18:08:25', 1, '1 item for <em>ss_fees</em> deleted', 'info'),
(689, '2014-12-15 18:08:33', 1, '1 item for <em>ss_fees</em> deleted', 'info'),
(690, '2014-12-15 18:08:43', 1, '1 item for <em>ss_fees</em> deleted', 'info'),
(691, '2014-12-15 18:08:50', 1, '1 item for <em>ss_fees</em> deleted', 'info'),
(692, '2014-12-15 18:09:26', 1, 'Fees item <em>10</em> edited', 'info'),
(693, '2014-12-15 20:19:12', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(694, '2014-12-15 20:19:18', 1, 'The cache has been cleared.', 'info'),
(695, '2014-12-15 20:21:44', 1, 'The cache has been cleared.', 'info'),
(696, '2014-12-15 20:21:48', 1, 'The cache has been cleared.', 'info'),
(697, '2014-12-16 11:42:09', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(698, '2014-12-16 11:42:48', 1, 'Fees item <em>15</em> edited', 'info'),
(699, '2014-12-16 11:45:52', 1, 'Fees item <em>10</em> edited', 'info'),
(700, '2014-12-16 11:46:15', 1, 'Fees item <em>15</em> edited', 'info'),
(701, '2014-12-16 11:46:27', 1, 'Fees item <em>15</em> edited', 'info'),
(702, '2014-12-16 11:46:50', 1, 'Fees item <em>15</em> edited', 'info'),
(703, '2014-12-16 11:47:03', 1, 'Fees item <em>15</em> edited', 'info'),
(704, '2014-12-16 11:48:04', 1, 'Fees item <em>15</em> edited', 'info'),
(705, '2014-12-16 11:48:17', 1, 'Fees item <em>15</em> edited', 'info'),
(706, '2014-12-16 11:50:58', 1, 'Fees item <em>15</em> edited', 'info'),
(707, '2014-12-16 11:51:59', 1, 'Fees item <em>15</em> edited', 'info'),
(708, '2014-12-16 11:55:54', 1, 'Fees item <em>100</em> edited', 'info'),
(709, '2014-12-16 11:56:50', 1, 'Fees item <em>100</em> edited', 'info'),
(710, '2014-12-16 12:08:04', 1, 'The cache has been cleared.', 'info'),
(711, '2014-12-16 12:42:58', 1, 'The cache has been cleared.', 'info'),
(712, '2014-12-16 13:01:53', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(713, '2014-12-16 21:05:26', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(714, '2014-12-17 11:06:26', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(715, '2014-12-18 15:46:18', 1, 'Successful login by ''admin'' from 84.117.64.218', 'debug'),
(716, '2014-12-18 15:46:34', 1, 'The cache has been cleared.', 'info'),
(717, '2014-12-18 17:38:58', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(718, '2014-12-18 17:39:07', 1, 'The cache has been cleared.', 'info'),
(719, '2014-12-18 22:53:45', 1, 'Successful login by ''admin'' from 78.96.220.141', 'debug'),
(720, '2014-12-18 22:53:49', 1, 'The cache has been cleared.', 'info'),
(721, '2014-12-18 22:54:39', 1, 'The cache has been cleared.', 'info'),
(722, '2014-12-18 23:00:28', 1, 'Successful login by ''admin'' from 78.96.220.141', 'debug'),
(723, '2014-12-18 23:00:33', 1, 'The cache has been cleared.', 'info'),
(724, '2014-12-19 11:49:28', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(725, '2014-12-19 11:50:13', 1, 'Navigation item <em>CONTUL TAU</em> edited', 'info'),
(726, '2014-12-19 11:55:18', 1, 'Navigation item <em>Prima pagina</em> edited', 'info'),
(727, '2014-12-19 12:09:22', 1, 'The cache has been cleared.', 'info'),
(728, '2014-12-19 13:56:33', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(729, '2014-12-19 16:36:34', 1, 'Successful login by ''admin'' from 188.27.121.135', 'debug'),
(730, '2014-12-19 16:59:14', 1, 'Successful login by ''admin'' from 84.117.64.218', 'debug'),
(731, '2014-12-19 16:59:19', 1, 'The cache has been cleared.', 'info'),
(732, '2014-12-21 22:14:41', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(733, '2014-12-22 10:30:09', 1, 'Successful login by ''admin'' from 192.168.54.163', 'debug'),
(734, '2014-12-22 11:05:09', 1, 'Pages item <em>servicii/transfer-bani</em> edited', 'info'),
(735, '2014-12-22 11:05:24', 1, 'Pages item <em>servicii/transfer-bani</em> edited', 'info'),
(736, '2014-12-22 11:05:50', 1, 'Pages item <em>servicii/transfer-bani</em> edited', 'info'),
(737, '2014-12-22 11:06:04', 1, 'Pages item <em>servicii/transfer-bani</em> edited', 'info'),
(738, '2014-12-22 11:09:36', 1, 'Pages item <em>aboutus/profile</em> edited', 'info'),
(739, '2014-12-22 11:10:34', 1, 'Pages item <em>aboutus/profile</em> edited', 'info'),
(740, '2014-12-22 11:12:20', 1, 'Pages item <em>aboutus/parteners</em> edited', 'info'),
(741, '2014-12-22 11:12:34', 1, 'Pages item <em>aboutus/parteners</em> edited', 'info'),
(742, '2014-12-22 11:13:01', 1, 'Pages item <em>aboutus/parteners</em> edited', 'info'),
(743, '2014-12-22 11:14:08', 1, 'Pages item <em>aboutus/becomeagent</em> edited', 'info'),
(744, '2014-12-22 11:18:12', 1, 'Pages item <em>servicii/transfer-bani/ro-ro</em> edited', 'info'),
(745, '2014-12-22 11:18:29', 1, 'Pages item <em>servicii/transfer-bani/ro-ro</em> edited', 'info'),
(746, '2014-12-22 11:19:13', 1, 'Pages item <em>servicii/transfer-bani/ro-ro</em> edited', 'info'),
(747, '2014-12-22 11:22:17', 1, 'Pages item <em>servicii/transfer-bani/ro-str</em> edited', 'info'),
(748, '2014-12-22 11:24:02', 1, 'Pages item <em>servicii/transfer-bani/strainatate-romania</em> edited', 'info'),
(749, '2014-12-22 11:25:39', 1, 'Navigation item <em>Străinătate - Rom&acirc;nia</em> edited', 'info'),
(750, '2014-12-22 11:27:27', 1, 'Pages item <em>servicii/transfer-bani/strainatate-romania</em> edited', 'info'),
(751, '2014-12-22 11:28:58', 1, 'Navigation item <em>Plata la domiciliu</em> edited', 'info'),
(752, '2014-12-22 11:29:05', 1, 'Navigation item <em>Străinătate - Rom&acirc;nia</em> edited', 'info'),
(753, '2014-12-22 11:29:11', 1, 'Navigation item <em>Plata la domiciliu</em> edited', 'info'),
(754, '2014-12-22 11:30:56', 1, 'Pages item <em>servicii/transfer-bani/plata-la-domiciliu</em> edited', 'info'),
(755, '2014-12-22 12:50:36', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(756, '2014-12-22 13:07:43', 1, 'Cities item <em>ADJUD</em> edited', 'info'),
(757, '2014-12-22 13:07:46', 1, 'Cities item <em>ADJUD</em> edited', 'info'),
(758, '2014-12-22 13:15:25', 1, 'offices item <em>2014-12-22 13:15:25</em> edited', 'info'),
(759, '2014-12-22 13:16:39', 1, 'Cities item <em>Alexandria</em> edited', 'info'),
(760, '2014-12-22 13:19:04', 1, 'offices item <em>2014-12-22 13:15:25</em> edited', 'info'),
(761, '2014-12-22 13:19:33', 1, 'offices item <em>2014-12-22 13:15:25</em> edited', 'info'),
(762, '2014-12-22 13:26:02', 1, 'Cities item <em>Arad</em> edited', 'info'),
(763, '2014-12-22 13:26:04', 1, 'Cities item <em>Arad</em> edited', 'info'),
(764, '2014-12-22 13:28:00', 1, 'offices item <em>2014-12-22 13:15:25</em> edited', 'info'),
(765, '2014-12-22 13:30:10', 1, 'offices item <em>2014-12-03 00:16:44</em> edited', 'info'),
(766, '2014-12-22 13:31:00', 1, 'Cities item <em>Bacau</em> edited', 'info'),
(767, '2014-12-22 13:31:02', 1, 'Cities item <em>Bacau</em> edited', 'info'),
(768, '2014-12-22 13:33:30', 1, 'offices item <em>2014-12-22 13:33:30</em> edited', 'info'),
(769, '2014-12-22 14:09:11', 1, 'offices item <em>2014-12-22 13:33:30</em> edited', 'info'),
(770, '2014-12-22 14:11:36', 1, 'offices item <em>2014-12-22 13:33:30</em> edited', 'info'),
(771, '2014-12-22 14:12:01', 1, 'Cities item <em>BAIA-MARE</em> edited', 'info'),
(772, '2014-12-22 14:12:04', 1, 'Cities item <em>BAIA-MARE</em> edited', 'info'),
(773, '2014-12-22 14:14:39', 1, 'offices item <em>2014-12-22 14:14:39</em> edited', 'info'),
(774, '2014-12-22 14:15:20', 1, 'Cities item <em>BALS</em> edited', 'info'),
(775, '2014-12-22 14:16:57', 1, 'offices item <em>2014-12-22 14:14:39</em> edited', 'info'),
(776, '2014-12-22 14:17:24', 1, 'Cities item <em>BARLAD</em> edited', 'info'),
(777, '2014-12-22 14:21:38', 1, 'offices item <em>2014-12-22 14:14:39</em> edited', 'info'),
(778, '2014-12-22 14:22:29', 1, 'offices item <em>2014-12-22 14:14:39</em> edited', 'info'),
(779, '2014-12-22 14:23:50', 1, 'Cities item <em>BISTRITA</em> edited', 'info'),
(780, '2014-12-22 14:26:07', 1, 'offices item <em>2014-12-22 14:26:07</em> edited', 'info'),
(781, '2014-12-22 14:26:40', 1, 'offices item <em>2014-12-22 14:26:07</em> edited', 'info'),
(782, '2014-12-22 14:27:06', 1, 'Cities item <em>BOTOSANI</em> edited', 'info'),
(783, '2014-12-22 14:29:14', 1, 'offices item <em>2014-12-22 14:29:14</em> edited', 'info'),
(784, '2014-12-22 14:29:38', 1, 'offices item <em>2014-12-22 14:29:14</em> edited', 'info'),
(785, '2014-12-22 14:31:18', 1, 'Cities item <em>BRAILA</em> edited', 'info'),
(786, '2014-12-22 14:33:04', 1, 'offices item <em>2014-12-22 14:33:04</em> edited', 'info'),
(787, '2014-12-22 14:34:07', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(788, '2014-12-22 14:34:39', 1, 'Cities item <em>Bucuresti Obor</em> edited', 'info'),
(789, '2014-12-22 14:37:07', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(790, '2014-12-22 14:37:32', 1, 'offices item <em>2014-12-03 00:33:45</em> edited', 'info'),
(791, '2014-12-22 14:38:16', 1, 'Cities item <em>BUZAU</em> edited', 'info'),
(792, '2014-12-22 14:41:04', 1, 'offices item <em>2014-12-22 14:41:04</em> edited', 'info'),
(793, '2014-12-22 14:41:37', 1, 'offices item <em>2014-12-22 14:41:04</em> edited', 'info'),
(794, '2014-12-22 14:42:06', 1, 'Cities item <em>DROBETA TR. SEVERIN</em> edited', 'info'),
(795, '2014-12-22 14:44:48', 1, 'offices item <em>2014-12-22 14:44:48</em> edited', 'info'),
(796, '2014-12-22 14:47:00', 1, 'Cities item <em>Vaslui</em> edited', 'info'),
(797, '2014-12-22 14:47:05', 1, 'offices item <em>2014-12-22 14:44:48</em> edited', 'info'),
(798, '2014-12-22 14:47:56', 1, 'Cities item <em>CONSTANTA</em> edited', 'info'),
(799, '2014-12-22 14:48:59', 1, 'offices item <em>2014-12-22 14:44:48</em> edited', 'info'),
(800, '2014-12-22 14:49:46', 1, 'offices item <em>2014-12-22 14:44:48</em> edited', 'info'),
(801, '2014-12-22 14:50:35', 1, 'Cities item <em>CRAIOVA</em> edited', 'info'),
(802, '2014-12-22 14:52:07', 1, 'offices item <em>2014-12-22 14:52:07</em> edited', 'info'),
(803, '2014-12-22 14:54:22', 1, 'offices item <em>2014-12-22 14:54:22</em> edited', 'info'),
(804, '2014-12-22 14:54:50', 1, 'Cities item <em>CURTEA DE ARGES</em> edited', 'info'),
(805, '2014-12-22 14:59:36', 1, 'Cities item <em>FILIASI</em> edited', 'info'),
(806, '2014-12-22 15:01:26', 1, 'offices item <em>2014-12-22 15:01:26</em> edited', 'info'),
(807, '2014-12-22 15:02:21', 1, 'Cities item <em>FOCSANI</em> edited', 'info'),
(808, '2014-12-22 15:04:16', 1, 'offices item <em>2014-12-22 15:04:16</em> edited', 'info'),
(809, '2014-12-22 15:04:54', 1, 'Cities item <em>GALATI</em> edited', 'info'),
(810, '2014-12-22 15:06:26', 1, 'offices item <em>2014-12-22 15:06:26</em> edited', 'info'),
(811, '2014-12-22 15:08:23', 1, 'offices item <em>2014-12-22 15:06:26</em> edited', 'info'),
(812, '2014-12-22 15:08:55', 1, 'Cities item <em>IASI</em> edited', 'info'),
(813, '2014-12-22 15:10:27', 1, 'offices item <em>2014-12-22 15:06:26</em> edited', 'info'),
(814, '2014-12-22 15:12:40', 1, 'offices item <em>2014-12-22 15:06:26</em> edited', 'info'),
(815, '2014-12-22 15:13:07', 1, 'Cities item <em>PANCIU</em> edited', 'info'),
(816, '2014-12-22 15:14:49', 1, 'offices item <em>2014-12-22 15:14:49</em> edited', 'info'),
(817, '2014-12-22 15:15:25', 1, 'offices item <em>2014-12-22 15:14:49</em> edited', 'info'),
(818, '2014-12-22 15:16:56', 1, 'Cities item <em>PIATRA NEAMT</em> edited', 'info'),
(819, '2014-12-22 15:18:06', 1, 'offices item <em>2014-12-22 15:18:06</em> edited', 'info'),
(820, '2014-12-22 15:20:27', 1, 'offices item <em>2014-12-22 15:20:27</em> edited', 'info'),
(821, '2014-12-22 15:21:04', 1, 'Cities item <em>PITESTI TRIVALE</em> edited', 'info'),
(822, '2014-12-22 15:22:28', 1, 'offices item <em>2014-12-22 15:22:28</em> edited', 'info'),
(823, '2014-12-22 15:22:53', 1, 'offices item <em>2014-12-22 15:22:28</em> edited', 'info'),
(824, '2014-12-22 15:23:35', 1, 'Cities item <em>PLOIESTI</em> edited', 'info'),
(825, '2014-12-22 15:25:06', 1, 'offices item <em>2014-12-22 15:25:06</em> edited', 'info'),
(826, '2014-12-22 15:25:26', 1, 'Cities item <em>RADAUTI</em> edited', 'info'),
(827, '2014-12-22 15:27:04', 1, 'offices item <em>2014-12-22 15:27:04</em> edited', 'info'),
(828, '2014-12-22 15:28:19', 1, 'offices item <em>2014-12-22 15:20:27</em> edited', 'info'),
(829, '2014-12-22 15:30:09', 1, 'offices item <em>2014-12-22 15:18:06</em> edited', 'info'),
(830, '2014-12-22 15:34:20', 1, 'Cities item <em>RAMNICU- VALCEA</em> edited', 'info'),
(831, '2014-12-22 15:36:01', 1, 'offices item <em>2014-12-22 15:36:01</em> edited', 'info'),
(832, '2014-12-22 15:36:55', 1, 'Cities item <em>ROMAN</em> edited', 'info'),
(833, '2014-12-22 15:38:22', 1, 'offices item <em>2014-12-22 15:27:04</em> edited', 'info'),
(834, '2014-12-22 15:38:42', 1, 'offices item <em>2014-12-22 15:27:04</em> edited', 'info'),
(835, '2014-12-22 15:39:05', 1, 'Cities item <em>ROSIORI DE VEDE</em> edited', 'info'),
(836, '2014-12-22 15:39:22', 1, 'offices item <em>2014-12-22 15:18:06</em> edited', 'info'),
(837, '2014-12-22 15:40:14', 1, 'offices item <em>2014-12-22 15:27:04</em> edited', 'info'),
(838, '2014-12-22 15:43:44', 1, 'Cities item <em>SIBIU</em> edited', 'info'),
(839, '2014-12-22 15:45:39', 1, 'offices item <em>2014-12-22 15:45:39</em> edited', 'info'),
(840, '2014-12-22 15:52:22', 1, 'Cities item <em>SLATINA</em> edited', 'info'),
(841, '2014-12-22 15:53:23', 1, 'offices item <em>2014-12-22 15:53:23</em> edited', 'info'),
(842, '2014-12-22 15:54:10', 1, 'offices item <em>2014-12-22 15:53:23</em> edited', 'info'),
(843, '2014-12-22 15:54:52', 1, 'Cities item <em>SUCEAVA</em> edited', 'info'),
(844, '2014-12-22 15:56:42', 1, 'offices item <em>2014-12-22 15:56:42</em> edited', 'info'),
(845, '2014-12-22 16:00:35', 1, 'Cities item <em>TARGOVISTE</em> edited', 'info'),
(846, '2014-12-22 16:01:51', 1, 'offices item <em>2014-12-22 15:56:42</em> edited', 'info'),
(847, '2014-12-22 16:02:43', 1, 'Cities item <em>TARGU JIU</em> edited', 'info'),
(848, '2014-12-22 16:03:49', 1, 'offices item <em>2014-12-22 15:56:42</em> edited', 'info'),
(849, '2014-12-22 16:04:17', 1, 'Cities item <em>TECUCI</em> edited', 'info'),
(850, '2014-12-22 16:05:18', 1, 'offices item <em>2014-12-22 15:56:42</em> edited', 'info'),
(851, '2014-12-22 16:05:43', 1, 'Cities item <em>TIMISOARA</em> edited', 'info'),
(852, '2014-12-22 16:07:21', 1, 'offices item <em>2014-12-22 16:07:21</em> edited', 'info'),
(853, '2014-12-22 16:08:53', 1, 'offices item <em>2014-12-22 16:07:21</em> edited', 'info'),
(854, '2014-12-22 16:09:17', 1, 'Cities item <em>TULCEA</em> edited', 'info'),
(855, '2014-12-22 16:10:55', 1, 'offices item <em>2014-12-22 16:10:55</em> edited', 'info'),
(856, '2014-12-22 21:22:59', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(857, '2014-12-22 21:23:06', 1, 'The cache has been cleared.', 'info'),
(858, '2014-12-23 11:36:31', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(859, '2014-12-23 11:36:54', 1, 'The cache has been cleared.', 'info'),
(860, '2014-12-25 09:14:22', 1, 'Successful login by ''admin'' from 82.137.11.87', 'debug'),
(861, '2014-12-25 09:14:30', 1, 'The cache has been cleared.', 'info'),
(862, '2014-12-28 11:32:06', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(863, '2014-12-30 09:14:18', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(864, '2014-12-30 09:54:11', 1, '1 item for <em>ss_newsletter_list</em> deleted', 'info'),
(865, '2014-12-30 09:56:06', 1, '1 item for <em>ss_newsletter_list</em> deleted', 'info'),
(866, '2014-12-30 10:10:58', 1, 'Successful login by ''admin'' from 188.27.121.135', 'debug'),
(867, '2014-12-30 10:17:24', 1, 'Pages item <em>retea/bcr</em> edited', 'info'),
(868, '2014-12-30 10:17:59', 1, 'Pages item <em>retea/rib</em> edited', 'info'),
(869, '2014-12-30 10:18:42', 1, 'Pages item <em>retea/vb</em> edited', 'info'),
(870, '2015-01-03 16:26:46', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(871, '2015-01-03 16:26:56', 1, 'The cache has been cleared.', 'info');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation`
--

CREATE TABLE IF NOT EXISTS `fuel_navigation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The part of the path after the domain name that you want the link to go to (e.g. comany/about_us)',
  `group_id` int(5) unsigned NOT NULL DEFAULT '1',
  `nav_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The nav key is a friendly ID that you can use for setting the selected state. If left blank, a default value will be set for you.',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name you want to appear in the menu',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Used for creating menu hierarchies. No value means it is a root level menu item',
  `precedence` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The higher the number, the greater the precedence and farther up the list the navigational element will appear',
  `attributes` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Extra attributes that can be used for navigation implementation',
  `selected` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The pattern to match for the active state. Most likely you leave this field blank',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'A hidden value can be used in rendering the menu. In some areas, the menu item may not want to be displayed',
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Determines whether the item is displayed or not',
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id_nav_key_language` (`group_id`,`nav_key`,`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=81 ;

--
-- Dumping data for table `fuel_navigation`
--

INSERT INTO `fuel_navigation` (`id`, `location`, `group_id`, `nav_key`, `label`, `parent_id`, `precedence`, `attributes`, `selected`, `hidden`, `language`, `published`) VALUES
(3, 'home', 1, 'home', 'Pagina principala', 0, 1, '', '', 'no', 'ro', 'yes'),
(4, 'stiri', 1, 'stiri', 'STIRI', 0, 4, '', '', 'no', 'ro', 'yes'),
(5, 'home', 1, 'home', 'HOMEPAGE', 0, 1, '', '', 'no', 'en', 'yes'),
(6, 'stiri', 1, 'stiri', 'NEWS', 0, 4, '', '', 'no', 'en', 'yes'),
(7, 'faq', 1, 'faq', 'INTREBARI FRECVENTE', 0, 5, '', '', 'no', 'ro', 'yes'),
(8, 'faq', 1, 'faq', 'FAQ', 0, 5, '', '', 'no', 'en', 'yes'),
(9, 'contact/detalii', 2, 'contact/detalii', 'Detalii contact', 0, 0, '', '', 'no', 'ro', 'yes'),
(10, 'contact/callcenter', 2, 'contact/callcenter', 'Call center', 0, 50, '', '', 'no', 'ro', 'yes'),
(11, 'contact/detalii', 1, 'contact/detalii', 'Contact', 0, 6, '', '', 'no', 'ro', 'yes'),
(12, 'contact/detalii', 1, 'contact/detalii', 'Contact', 0, 6, '', '', 'no', 'en', 'yes'),
(13, 'contact/callcenter', 2, 'contact/callcenter', 'Call center', 0, 50, '', '', 'no', 'en', 'yes'),
(14, 'contact/detalii', 2, 'contact/detalii', 'Contact details', 0, 0, '', '', 'no', 'en', 'yes'),
(15, 'contact/mesaj', 2, 'contact/mesaj', 'Trimite mesaj', 0, 25, '', '', 'no', 'ro', 'yes'),
(16, 'en/contact/mesaj', 2, 'contact/mesaj', 'Send message', 0, 25, '', '', 'no', 'en', 'yes'),
(17, 'servicii', 1, 'servicii', 'Servicii', 0, 2, '', '', 'no', 'ro', 'yes'),
(18, 'servicii/transfer-bani', 3, 'servicii/transfer-bani', 'Transfer de bani', 0, 0, '', '', 'no', 'ro', 'yes'),
(19, 'servicii/conturi-plati', 3, 'servicii/conturi-plati', 'Conturi de plati', 0, 10, '', '', 'no', 'ro', 'yes'),
(20, 'servicii/transfer-bani/ro-ro', 3, 'servicii/transfer-bani/ro-ro', 'Romania - Romania', 18, 0, '', '', 'no', 'ro', 'yes'),
(21, 'servicii/transfer-bani/ro-str', 3, 'servicii/transfer-bani/ro-str', 'Romania - abroad', 24, 0, '', '', 'no', 'en', 'yes'),
(23, 'servicii/conturi-plati', 3, 'servicii/conturi-plati', 'Payment accounts', 0, 10, '', '', 'no', 'en', 'yes'),
(24, 'servicii/transfer-bani', 3, 'servicii/transfer-bani', 'Money transfer', 0, 0, '', '', 'no', 'en', 'yes'),
(25, 'servicii/transfer-bani/ro-ro', 3, 'servicii/transfer-bani/ro-ro', 'Romania - Romania', 24, 0, '', '', 'no', 'en', 'yes'),
(26, 'servicii/transfer-bani/ro-str', 3, 'servicii/transfer-bani/ro-str', 'Romania - strainatate', 18, 0, '', '', 'no', 'ro', 'yes'),
(27, 'servicii', 1, 'servicii', 'Services', 0, 2, '', '', 'no', 'en', 'yes'),
(28, 'aboutus/profile', 4, 'aboutus/profile', 'profile', 0, 10, '', 'aboutus', 'no', 'en', 'yes'),
(29, 'aboutus/parteners', 4, 'aboutus/parteners', 'partners', 0, 20, '', 'parteners', 'no', 'en', 'yes'),
(30, 'aboutus/becomeagent', 4, 'aboutus/becomeagent', 'cum sa devii agent', 0, 30, '', '', 'no', 'ro', 'yes'),
(31, 'retea/smith', 4, 'retea/smith', 'RETEA', 0, 40, '', '', 'no', 'ro', 'yes'),
(32, 'aboutus/profile', 1, 'aboutus/profile', 'Despre noi', 0, 3, '', '', 'no', 'ro', 'yes'),
(33, 'aboutus', 1, 'aboutus', 'About us', 0, 3, '', '', 'no', 'en', 'yes'),
(34, 'aboutus', 5, 'aboutus', 'About us', 0, 1, '', '', 'no', 'en', 'yes'),
(35, 'aboutus/partners', 5, 'aboutus/partners', 'our partners', 0, 3, '', '', 'no', 'en', 'yes'),
(36, 'aboutus/agent', 5, 'aboutus/agent', 'Become an agent', 0, 4, '', '', 'no', 'en', 'yes'),
(37, 'aboutus/network', 5, 'aboutus/network', 'Our network', 0, 5, '', '', 'no', 'en', 'yes'),
(38, 'contact', 5, 'contact', 'Contact', 0, 6, '', '', 'no', 'en', 'yes'),
(39, 'stiri', 5, 'stiri', 'news', 0, 2, '', '', 'no', 'en', 'yes'),
(40, 'aboutus', 5, 'aboutus', 'Despre noi', 0, 1, '', '', 'no', 'ro', 'yes'),
(41, 'stiri', 5, 'stiri', 'Stiri', 0, 2, '', '', 'no', 'ro', 'yes'),
(42, 'aboutus/partners', 5, 'aboutus/partners', 'our partners', 0, 3, '', '', 'no', 'ro', 'yes'),
(43, 'aboutus/network', 5, 'aboutus/network', 'Reteaua noastra', 0, 5, '', '', 'no', 'ro', 'yes'),
(44, 'contact', 5, 'contact', 'Contact', 0, 6, '', '', 'no', 'ro', 'yes'),
(45, 'aboutus/agent', 5, 'aboutus/agent', 'Alatura-te echipei', 0, 4, '', '', 'no', 'ro', 'yes'),
(46, 'retea/smith', 6, 'retea/smith', 'Birouri si agentii proprii', 0, 1, '', '', 'no', 'ro', 'yes'),
(47, 'retea/bcr', 6, 'retea/bcr', 'Birouri BCR', 0, 2, '', '', 'no', 'ro', 'yes'),
(48, 'retea/rib', 6, 'retea/rib', 'Birouri RIB', 0, 3, '', '', 'no', 'ro', 'yes'),
(49, 'retea/vb', 6, 'retea/vb', 'Victoria Bank', 0, 4, '', '', 'no', 'ro', 'yes'),
(50, 'retea/smith', 6, 'retea/smith', 'Smith Offices', 0, 1, '', '', 'no', 'en', 'yes'),
(51, 'retea/bcr', 6, 'retea/bcr', 'BCR Offices', 0, 2, '', '', 'no', 'en', 'yes'),
(52, 'retea/rib', 6, 'retea/rib', 'RIB Offices', 0, 3, '', '', 'no', 'en', 'yes'),
(53, 'retea/vb', 6, 'retea/vb', 'Victoria Bank', 0, 4, '', '', 'no', 'en', 'yes'),
(54, 'retea/smith', 4, 'retea/smith', 'network', 0, 40, '', '', 'no', 'en', 'yes'),
(55, 'aboutus/becomeagent', 4, 'aboutus/becomeagent', 'Become agent', 0, 30, '', '', 'no', 'en', 'yes'),
(56, 'aboutus/parteners', 4, 'aboutus/parteners', 'parteneri', 0, 20, '', 'parteners', 'no', 'ro', 'yes'),
(57, 'aboutus/profile', 4, 'aboutus/profile', 'profil', 0, 10, '', 'aboutus', 'no', 'ro', 'yes'),
(58, 'http://facebook.com', 7, 'http://facebook.com', 'Facebook', 0, 0, '', '', 'no', 'ro', 'yes'),
(59, 'http://twitter.com', 7, 'http://twitter.com', 'Twitter', 0, 0, '', '', 'no', 'ro', 'yes'),
(60, 'aboutus/profile', 8, 'aboutus/profile', 'profil', 0, 1, '', '', 'no', 'ro', 'yes'),
(61, 'aboutus/profile', 8, 'aboutus/profile', 'profile', 0, 1, '', '', 'no', 'en', 'yes'),
(62, 'retea/smith', 8, 'retea/smith', 'retea', 0, 2, '', '', 'no', 'ro', 'yes'),
(63, 'retea/smith', 8, 'retea/smith', 'network', 0, 2, '', '', 'no', 'en', 'yes'),
(64, 'faq', 8, 'faq', 'faq', 0, 3, '', '', 'no', 'en', 'yes'),
(65, 'faq', 8, 'faq', 'intrebari frecvente', 0, 3, '', '', 'no', 'ro', 'yes'),
(66, 'servicii/transfer-bani/ro-ro/numerar', 3, 'servicii/transfer-bani/ro-ro/numerar', 'Numerar', 20, 0, '', '', 'no', 'ro', 'yes'),
(67, 'servicii/transfer-bani/ro-ro/numerar', 3, 'servicii/transfer-bani/ro-ro/numerar', 'Cash', 25, 0, '', '', 'no', 'en', 'yes'),
(70, 'servicii/transfer-bani/ro-str/moneygram', 3, 'servicii/transfer-bani/ro-str/moneygram', 'Moneygram', 26, 0, '', '', 'no', 'ro', 'yes'),
(71, 'servicii/transfer-bani/ro-str/moneygram', 3, 'servicii/transfer-bani/ro-str/moneygram', 'Moneygram', 21, 0, '', '', 'no', 'en', 'yes'),
(72, 'sspayments', 9, 'sspayments', 'TRANSFER DE BANI', 0, 1, '', '', 'no', 'ro', 'yes'),
(73, 'profile', 9, 'profile', 'CONTUL TAU', 0, 2, '', '', 'no', 'ro', 'yes'),
(74, 'tHistory', 9, 'tHistory', 'ISTORIC TRANZACTII', 0, 3, '', '', 'no', 'ro', 'yes'),
(75, 'messages', 9, 'messages', 'MESAJE', 0, 4, '', '', 'no', 'ro', 'yes'),
(76, '/', 9, '/', 'Prima pagina', 0, 0, '', '', 'no', 'ro', 'yes'),
(77, 'servicii/transfer-bani/strainatate-romania', 3, 'servicii/transfer-bani/strainatate-romania', 'Străinătate - Rom&acirc;nia', 18, 3, '', '', 'no', 'ro', 'yes'),
(78, 'servicii/transfer-bani/plata-la-domiciliu', 3, 'servicii/transfer-bani/plata-la-domiciliu', 'Plata la domiciliu', 18, 4, '', '', 'no', 'ro', 'yes'),
(79, 'servicii/transfer-bani/strainatate-romania', 3, 'servicii/transfer-bani/strainatate-romania', 'Străinătate - Rom&acirc;nia', 18, 3, '', '', 'no', 'en', 'yes'),
(80, 'servicii/transfer-bani/plata-la-domiciliu', 3, 'servicii/transfer-bani/plata-la-domiciliu', 'Plata la domiciliu', 18, 4, '', '', 'no', 'en', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation_groups`
--

CREATE TABLE IF NOT EXISTS `fuel_navigation_groups` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `fuel_navigation_groups`
--

INSERT INTO `fuel_navigation_groups` (`id`, `name`, `published`) VALUES
(1, 'main', 'yes'),
(2, 'contact', 'yes'),
(3, 'servicii', 'yes'),
(4, 'aboutus', 'yes'),
(5, 'foo_menu3', 'yes'),
(6, 'retea', 'yes'),
(7, 'foo_menu5', 'yes'),
(8, 'foo_menu4', 'yes'),
(9, 'mainauth', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_pages`
--

CREATE TABLE IF NOT EXISTS `fuel_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Add the part of the url after the root of your site (usually after the domain name). For the homepage, just put the word ''home''',
  `layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name of the template to associate with this page',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'A ''yes'' value will display the page and an ''no'' value will give a 404 error message',
  `cache` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Cache controls whether the page will pull from the database or from a saved file which is more effeicent. If a page has content that is dynamic, it''s best to set cache to ''no''',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`),
  KEY `layout` (`layout`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `fuel_pages`
--

INSERT INTO `fuel_pages` (`id`, `location`, `layout`, `published`, `cache`, `date_added`, `last_modified`, `last_modified_by`) VALUES
(1, 'home', 'sshomepage', 'yes', 'no', '2014-11-04 05:24:11', '2014-12-10 13:47:20', 1),
(2, 'stiri', 'ssnews', 'yes', 'no', '2014-11-05 15:57:52', '2014-12-04 20:29:03', 1),
(4, 'faq', 'ssfaq', 'yes', 'yes', '2014-11-26 15:49:30', '2014-11-26 13:49:30', 1),
(5, 'contact/detalii', 'sscontact', 'yes', 'yes', '2014-11-26 18:16:25', '2014-12-02 12:06:54', 1),
(6, 'contact/callcenter', 'sscontact', 'yes', 'yes', '2014-11-26 18:31:51', '2014-12-02 12:07:21', 1),
(9, 'servicii', 'ssservice_main', 'yes', 'yes', '2014-11-27 11:40:50', '2014-11-27 11:16:54', 1),
(10, 'servicii/transfer-bani', 'ssservice', 'yes', 'yes', '2014-11-27 15:35:25', '2014-12-22 09:06:04', 1),
(11, 'servicii/conturi-plati', 'ssservice', 'yes', 'yes', '2014-11-27 15:35:52', '2014-12-02 12:18:01', 1),
(12, 'servicii/transfer-bani/ro-ro', 'ssservice_simple', 'yes', 'yes', '2014-11-27 15:49:26', '2014-12-22 09:19:13', 1),
(13, 'servicii/transfer-bani/ro-str', 'ssservice_simple', 'yes', 'yes', '2014-11-27 16:51:15', '2014-12-22 09:22:17', 1),
(14, 'conditii-generale', 'sssimple_page', 'yes', 'yes', '2014-11-28 21:58:44', '2014-12-04 15:58:35', 1),
(17, 'aboutus/profile', 'ssabout', 'yes', 'yes', '2014-11-30 13:45:12', '2014-12-22 09:10:34', 1),
(18, 'aboutus/parteners', 'ssabout', 'yes', 'yes', '2014-11-30 14:56:10', '2014-12-22 09:13:01', 1),
(19, 'aboutus/becomeagent', 'ssabout_agent', 'yes', 'yes', '2014-12-02 20:00:41', '2014-12-22 09:14:08', 1),
(20, 'retea/smith', 'ssnetwork', 'yes', 'yes', '2014-12-03 11:08:11', '2014-12-03 09:08:11', 1),
(21, 'contact/mesaj', 'sscontactform', 'yes', 'yes', '2014-12-03 22:08:38', '2014-12-03 23:27:54', 1),
(22, 'retea/bcr', 'ssnetworks', 'yes', 'yes', '2014-12-03 22:43:19', '2014-12-30 08:17:24', 1),
(23, 'retea/rib', 'ssnetworks', 'yes', 'yes', '2014-12-03 23:03:30', '2014-12-30 08:17:59', 1),
(24, 'retea/vb', 'ssnetworks', 'yes', 'yes', '2014-12-03 23:06:57', '2014-12-30 08:18:42', 1),
(25, 'servicii/transfer-bani/ro-ro/numerar', 'ssservice_simple', 'yes', 'yes', '2014-12-05 11:12:27', '2014-12-05 09:13:13', 1),
(26, 'servicii/transfer-bani/ro-str/moneygram', 'ssservice_simple', 'yes', 'yes', '2014-12-05 11:12:27', '2014-12-05 09:24:36', 1),
(27, 'sspayments', 'sspayments', 'yes', 'yes', '2014-12-10 10:31:33', '2014-12-10 19:11:39', 1),
(28, 'servicii/transfer-bani/strainatate-romania', 'ssservice_simple', 'yes', 'yes', '2014-12-22 11:23:45', '2014-12-22 09:27:27', 1),
(29, 'servicii/transfer-bani/plata-la-domiciliu', 'ssservice_simple', 'yes', 'yes', '2014-12-22 11:29:29', '2014-12-22 09:30:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_page_variables`
--

CREATE TABLE IF NOT EXISTS `fuel_page_variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('string','int','boolean','array') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'string',
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`name`,`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1128 ;

--
-- Dumping data for table `fuel_page_variables`
--

INSERT INTO `fuel_page_variables` (`id`, `page_id`, `name`, `scope`, `value`, `type`, `language`, `active`) VALUES
(169, 1, 'sections', '', '[{"slide_title":"Transfer de bani. ","banner_img":"slides\\/slide1.jpg","button_title":"Test","button_url":"home"},{"slide_title":"Slide 2","banner_img":"slides\\/slide2.jpg","button_title":"Titlu buton 2","button_url":"home"}]', 'array', 'ro', 'yes'),
(226, 4, 'page_title', '', 'FAQ', 'string', 'ro', 'yes'),
(227, 4, 'meta_description', '', '', 'string', 'ro', 'yes'),
(228, 4, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(229, 4, 'banner_img', '', 'banners/b_contact._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(237, 5, 'page_title', '', 'Detalii contact', 'string', 'ro', 'yes'),
(238, 5, 'meta_description', '', '', 'string', 'ro', 'yes'),
(239, 5, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(240, 5, 'banner_img', '', 'banners/b_contact._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(241, 5, 'heading', '', 'Detalii contact', 'string', 'ro', 'yes'),
(242, 5, 'body', '', 'Detalii contact', 'string', 'ro', 'yes'),
(243, 5, 'body_class', '', '', 'string', 'ro', 'yes'),
(251, 6, 'page_title', '', '', 'string', 'ro', 'yes'),
(252, 6, 'meta_description', '', '', 'string', 'ro', 'yes'),
(253, 6, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(254, 6, 'banner_img', '', 'banners/b_contact._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(255, 6, 'heading', '', 'Call center', 'string', 'ro', 'yes'),
(256, 6, 'body', '', 'Informatii callcenter', 'string', 'ro', 'yes'),
(257, 6, 'body_class', '', '', 'string', 'ro', 'yes'),
(285, 9, 'page_title', '', '', 'string', 'ro', 'yes'),
(286, 9, 'meta_description', '', '', 'string', 'ro', 'yes'),
(287, 9, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(288, 9, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(311, 11, 'page_title', '', '', 'string', 'ro', 'yes'),
(312, 11, 'meta_description', '', '', 'string', 'ro', 'yes'),
(313, 11, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(314, 11, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(315, 11, 'heading', '', '', 'string', 'ro', 'yes'),
(316, 11, 'body', '', 'Conturi de plati', 'string', 'ro', 'yes'),
(317, 11, 'body_class', '', '', 'string', 'ro', 'yes'),
(360, 5, 'page_title', '', 'Detalii contact', 'string', 'en', 'yes'),
(361, 5, 'meta_description', '', '', 'string', 'en', 'yes'),
(362, 5, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(363, 5, 'banner_img', '', 'banners/b_contact._.1134x184_._.o_.jpg', 'string', 'en', 'yes'),
(364, 5, 'heading', '', 'Detalii contact', 'string', 'en', 'yes'),
(365, 5, 'body', '', 'Contact details', 'string', 'en', 'yes'),
(366, 5, 'body_class', '', '', 'string', 'en', 'yes'),
(367, 6, 'page_title', '', '', 'string', 'en', 'yes'),
(368, 6, 'meta_description', '', '', 'string', 'en', 'yes'),
(369, 6, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(370, 6, 'banner_img', '', 'banners/b_contact._.1134x184_._.o_.jpg', 'string', 'en', 'yes'),
(371, 6, 'heading', '', 'Call center', 'string', 'en', 'yes'),
(372, 6, 'body', '', 'Callcenter information', 'string', 'en', 'yes'),
(373, 6, 'body_class', '', '', 'string', 'en', 'yes'),
(374, 10, 'page_title', '', '', 'string', 'en', 'yes'),
(375, 10, 'meta_description', '', '', 'string', 'en', 'yes'),
(376, 10, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(377, 10, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'en', 'yes'),
(378, 10, 'heading', '', '', 'string', 'en', 'yes'),
(379, 10, 'body', '', 'Money transfer', 'string', 'en', 'yes'),
(380, 10, 'body_class', '', '', 'string', 'en', 'yes'),
(381, 12, 'page_title', '', '', 'string', 'en', 'yes'),
(382, 12, 'meta_description', '', '', 'string', 'en', 'yes'),
(383, 12, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(384, 12, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'en', 'yes'),
(385, 12, 'heading', '', '', 'string', 'en', 'yes'),
(386, 12, 'body', '', 'Money transfer RO RO', 'string', 'en', 'yes'),
(387, 12, 'body_class', '', '', 'string', 'en', 'yes'),
(395, 11, 'page_title', '', '', 'string', 'en', 'yes'),
(396, 11, 'meta_description', '', '', 'string', 'en', 'yes'),
(397, 11, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(398, 11, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'en', 'yes'),
(399, 11, 'heading', '', '', 'string', 'en', 'yes'),
(400, 11, 'body', '', 'Payment accounts', 'string', 'en', 'yes'),
(401, 11, 'body_class', '', '', 'string', 'en', 'yes'),
(607, 20, 'page_title', '', '', 'string', 'ro', 'yes'),
(608, 20, 'meta_description', '', '', 'string', 'ro', 'yes'),
(609, 20, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(610, 20, 'banner_img', '', 'banners/b_contact._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(653, 21, 'page_title', '', 'Message', 'string', 'en', 'yes'),
(654, 21, 'meta_description', '', '', 'string', 'en', 'yes'),
(655, 21, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(656, 21, 'banner_img', '', 'banners/b_contact._.1134x184_._.o_.jpg', 'string', 'en', 'yes'),
(657, 21, 'heading', '', '', 'string', 'en', 'yes'),
(658, 21, 'body', '', 'You can contact us using the form below.<p>\r\nWe will try to answer your inquiry as soon as possible.', 'string', 'en', 'yes'),
(659, 21, 'body_class', '', '', 'string', 'en', 'yes'),
(730, 21, 'page_title', '', 'Mesaj', 'string', 'ro', 'yes'),
(731, 21, 'meta_description', '', '', 'string', 'ro', 'yes'),
(732, 21, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(733, 21, 'banner_img', '', 'banners/b_contact._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(734, 21, 'heading', '', '', 'string', 'ro', 'yes'),
(735, 21, 'body', '', 'Ne puteti contacta folosind formularul de mai jos.<p>\r\nVom raspunde in cel mai scurt timp cu putinta.', 'string', 'ro', 'yes'),
(736, 21, 'body_class', '', '', 'string', 'ro', 'yes'),
(743, 18, 'page_title', '', 'Partners', 'string', 'en', 'yes'),
(744, 18, 'meta_description', '', '', 'string', 'en', 'yes'),
(745, 18, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(746, 18, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'en', 'yes'),
(747, 18, 'body', '', 'Partners in english', 'string', 'en', 'yes'),
(748, 18, 'body_class', '', '', 'string', 'en', 'yes'),
(755, 17, 'page_title', '', 'Profile', 'string', 'en', 'yes'),
(756, 17, 'meta_description', '', '', 'string', 'en', 'yes'),
(757, 17, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(758, 17, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'en', 'yes'),
(759, 17, 'body', '', 'Profile in english', 'string', 'en', 'yes'),
(760, 17, 'body_class', '', '', 'string', 'en', 'yes'),
(816, 14, 'page_title', '', 'Conditii generale ale afacerii', 'string', 'ro', 'yes'),
(817, 14, 'meta_description', '', '', 'string', 'ro', 'yes'),
(818, 14, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(819, 14, 'heading', '', '', 'string', 'ro', 'yes'),
(820, 14, 'body', '', 'Conditii generale ale afacerii', 'string', 'ro', 'yes'),
(821, 14, 'body_class', '', '', 'string', 'ro', 'yes'),
(822, 14, 'page_title', '', 'Business terms and conditions', 'string', 'en', 'yes'),
(823, 14, 'meta_description', '', '', 'string', 'en', 'yes'),
(824, 14, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(825, 14, 'heading', '', '', 'string', 'en', 'yes'),
(826, 14, 'body', '', 'Business Terms and Conditions', 'string', 'en', 'yes'),
(827, 14, 'body_class', '', '', 'string', 'en', 'yes'),
(838, 2, 'page_title', '', 'Stiri', 'string', 'ro', 'yes'),
(839, 2, 'meta_description', '', '', 'string', 'ro', 'yes'),
(840, 2, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(841, 2, 'banner_img', '', 'banners/banner-news.jpg', 'string', 'ro', 'yes'),
(842, 2, 'news_per_page', '', '3', 'string', 'ro', 'yes'),
(871, 25, 'page_title', '', 'Servicii transfer RO-RO numerar', 'string', 'ro', 'yes'),
(872, 25, 'meta_description', '', '', 'string', 'ro', 'yes'),
(873, 25, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(874, 25, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'ro', 'yes'),
(875, 25, 'heading', '', '', 'string', 'ro', 'yes'),
(876, 25, 'body', '', 'servicii transfer ro-ro numerar', 'string', 'ro', 'yes'),
(877, 25, 'body_class', '', '', 'string', 'ro', 'yes'),
(878, 25, 'page_title', '', 'Cash transfer RO-RO', 'string', 'en', 'yes'),
(879, 25, 'meta_description', '', '', 'string', 'en', 'yes'),
(880, 25, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(881, 25, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'en', 'yes'),
(882, 25, 'heading', '', '', 'string', 'en', 'yes'),
(883, 25, 'body', '', 'Cash transfer RO-RO', 'string', 'en', 'yes'),
(884, 25, 'body_class', '', '', 'string', 'en', 'yes'),
(913, 26, 'page_title', '', 'Servicii transfer RO-strainatate moneygram', 'string', 'ro', 'yes'),
(914, 26, 'meta_description', '', '', 'string', 'ro', 'yes'),
(915, 26, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(916, 26, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'ro', 'yes'),
(917, 26, 'heading', '', '', 'string', 'ro', 'yes'),
(918, 26, 'body', '', 'Servicii transfer RO-strainatate moneygram', 'string', 'ro', 'yes'),
(919, 26, 'body_class', '', '', 'string', 'ro', 'yes'),
(920, 26, 'page_title', '', 'Moneygram RO-abroad', 'string', 'en', 'yes'),
(921, 26, 'meta_description', '', '', 'string', 'en', 'yes'),
(922, 26, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(923, 26, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'en', 'yes'),
(924, 26, 'heading', '', '', 'string', 'en', 'yes'),
(925, 26, 'body', '', 'Moneygram RO-abroad', 'string', 'en', 'yes'),
(926, 26, 'body_class', '', '', 'string', 'en', 'yes'),
(933, 19, 'page_title', '', 'Agent affiliation', 'string', 'en', 'yes'),
(934, 19, 'meta_description', '', '', 'string', 'en', 'yes'),
(935, 19, 'meta_keywords', '', '', 'string', 'en', 'yes'),
(936, 19, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'en', 'yes'),
(937, 19, 'body', '', 'Sunteti o persoana cu spirit intreprinzator ?\r\nSunteti familiarizat cu internetul si retelele de socializare?\r\nStiti sa comunicati cu oamenii ?\r\nVreti sa va construiti propria afacere ? \r\nNimic mai simplu ! Si dumneavoastra puteti sa deveniti agent Smith&Smith!\r\nCompletati formalarul de mai jos si Smith&Smith va va contacta in cel mai scurt timp posibil!', 'string', 'en', 'yes'),
(938, 19, 'body_class', '', '', 'string', 'en', 'yes'),
(979, 27, 'page_title', '', 'Payments', 'string', 'ro', 'yes'),
(980, 27, 'meta_description', '', '', 'string', 'ro', 'yes'),
(981, 27, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(982, 27, 'form_title', '', 'Facturi online', 'string', 'ro', 'yes'),
(1004, 10, 'page_title', '', '', 'string', 'ro', 'yes'),
(1005, 10, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1006, 10, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1007, 10, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(1008, 10, 'heading', '', '', 'string', 'ro', 'yes'),
(1009, 10, 'body', '', 'Prin Smith&Smith transferati bani atat in varianta traditionala in numerar (cash), cat si prin mijloace moderne de plata online (plata cu cardul sau plata din cont). \n<br /><br />\n\nPuteti de asemenea face plata utilitatilor la facturile din Romania direct din Strainatate la orice ora din zi si din noapte si din orice loc sau tara. Platile on-line se pot initia de pe card sau din cont.\n<br /><br />\n\nIn cazul mijloacelor traditionale de plata in numerar (cash) puteti opta pentru trimiterea banilor din Strainatate in Romania, din Romania in Romania prin birourile Smith&Smith sau din Romania in Strainatate.', 'string', 'ro', 'yes'),
(1010, 10, 'body_class', '', '', 'string', 'ro', 'yes'),
(1017, 17, 'page_title', '', 'Profil', 'string', 'ro', 'yes'),
(1018, 17, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1019, 17, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1020, 17, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'ro', 'yes'),
(1021, 17, 'body', '', 'Smith&Smith este prima companie rom&acirc;neasca specializata &icirc;n transfer international de bani, infiintata &icirc;nca din 1999 si autorizata ca institutie de plata de catre Banca Nationala a Rom&acirc;niei &icirc;n conformitate cu prevederile Legii nr.197/2010, fiind &icirc;nregistrata &icirc;n Registrul Institutiilor de plata sub numarul IP-RO-0006..\n<br /><br />\n\nSmith&Smith are 43 de birouri in intreaga tara, majoritatea avand un program de functionare 7 zile din 7. Pentru a consulta lista birourilor noastre, accesati reteaua Smith&Smith. Smith&Smith efectueaza plati in peste 500 de locatii prin reteua BCR si RIB in Romania iar in Republica Moldova prin Victoriabank.\n<br /><br />\n\nUn transfer de bani prin Smith&Smith este:\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.</li>\n<li>Accesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.</li>\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.</li>\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.</li></ul>\n\n<br /><br />\nSmith&Smith lucreaza cu peste 40 de sisteme internationale de remitere de bani din toata lumea.\n\n<br /><br />\nSmith&Smith este si super agent Money Gram in Romania. Acest serviciu reprezintă o modalitate rapidă, sigură, usoara, de incredere şi la indem&acirc;nă pentru a trimite şi a primi bani &icirc;n c&acirc;teva minute din lumea intreagă. Serviciul MoneyGram este disponibil &icirc;n peste 190 de ţări şi &icirc;n mai mult de 176.000 de agenţi locali din intreaga lume. La acest <a href="https://www.moneygram.com/wps/portal/moneygramonline/home/estimator?LC=en-US">link</a>, puteţi afla c&acirc;t costă un transfer de bani c&acirc;t şi ţările de unde puteţi beneficia de aceste servicii.', 'string', 'ro', 'yes'),
(1022, 17, 'body_class', '', '', 'string', 'ro', 'yes'),
(1035, 18, 'page_title', '', 'Parteneri', 'string', 'ro', 'yes'),
(1036, 18, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1037, 18, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1038, 18, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'ro', 'yes'),
(1039, 18, 'body', '', 'Smith&Smith, cea mai veche institutie de plata din Romania, lucreza cu peste 40 de sisteme de plati din toata lumea astfel incat prin intermediul Smith&Smith sa va bucurati de cele mai avantajoase tarife de transfer in conditii de siguranta si rapiditate. Din lista noastra de parteneri putem enumera: XXXX\n<br/><br/>\nSmith&Smith este super agent MoneyGram din anul 2008. Acest serviciu reprezintă o modalitate rapidă, sigură, usoara, de incredere şi la indem&acirc;nă pentru a trimite şi a primi bani &icirc;n c&acirc;teva minute din lumea intreagă. Serviciul MoneyGram este disponibil &icirc;n peste 190 de ţări şi &icirc;n mai mult de 176.000 de agenţi locali din intreaga lume. <br/><br/>\nBanii sunt transferati imediat, ajung&acirc;nd la destinaţie &icirc;n circa 10 minute. Pentru a transfera banii, persoana &icirc;n cauză are nevoie doar de actul de identitate FARA a completa niciun formular. La acest <a href="https://www.moneygram.com/wps/portal/moneygramonline/home/estimator?LC=en-US">link</a>, puteţi afla c&acirc;t costă un transfer de bani c&acirc;t şi ţările de unde puteţi beneficia de aceste servicii.\n<br/><br/>\nSmith&Smith va ofera posibilitatea de afectua plati in peste 500 de locatii prin retelele Bancii Comerciale Romane si Romanian International Bank in Romania si prin Victoriabank in Republica Moldova.', 'string', 'ro', 'yes'),
(1040, 18, 'body_class', '', '', 'string', 'ro', 'yes'),
(1041, 19, 'page_title', '', 'Afiliere agent', 'string', 'ro', 'yes'),
(1042, 19, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1043, 19, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1044, 19, 'banner_img', '', 'banners/aboutus.jpg', 'string', 'ro', 'yes'),
(1045, 19, 'body', '', 'Sunteti o persoana cu spirit intreprinzator?<br />\nSunteti familiarizat cu internetul si retelele de socializare?<br />\nStiti sa comunicati cu oamenii?<br />\nVreti sa va construiti propria afacere?<br /> \nNimic mai simplu ! Si dumneavoastra puteti sa deveniti agent Smith&Smith!\n<br />Completati formalarul de mai jos si Smith&Smith va va contacta in cel mai scurt timp posibil!', 'string', 'ro', 'yes'),
(1046, 19, 'body_class', '', '', 'string', 'ro', 'yes'),
(1061, 12, 'page_title', '', '', 'string', 'ro', 'yes'),
(1062, 12, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1063, 12, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1064, 12, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(1065, 12, 'heading', '', '', 'string', 'ro', 'yes'),
(1066, 12, 'body', '', 'Trimiteti bani pe teritoriul Romaniei de la cel mai apropiat birou Smith&Smith la un alt birou Smith&Smith. Lista completa a birourilor Smith&Smith o gasiti aici. Banii pot fi trimisi pe teritoriul Romaniei in Euro, USD sau RON.\n<br /><br />\nPrin Smith&Smith banii dumneavoastra ajung la destinatie in 10 minute la orice birou Smith&Smith in timpul programului de lucru. \n<br /><br />\nAveti nevoie doar de buletinul de identitate pentru efectuarea tranzactiei. Veti primi un cod unic de identificare al tranzactiei (CUI) ce trebuie comunicat beneficiarului.\n<br /><br />\nUn transfer de bani prin Smith&Smith este:\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.</li>\n<li>Accesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.</li>\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.</li>\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.</li></ul>', 'string', 'ro', 'yes'),
(1067, 12, 'body_class', '', '', 'string', 'ro', 'yes'),
(1068, 13, 'page_title', '', 'Transfer ro strainatate', 'string', 'ro', 'yes'),
(1069, 13, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1070, 13, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1071, 13, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(1072, 13, 'heading', '', '', 'string', 'ro', 'yes'),
(1073, 13, 'body', '', 'Trimiteti bani in numerar din Romania in strainatate sau trimiteti bani in contul Beneficiarului deschis la oricare banca comerciala din strainatate !\n<br /><br />\nAlegeti aici cel mai apropiat birou Smith&Smith. Aveti nevoie doar de buletinul de identitate pentru efectuarea tranzactiei. Veti primi un cod unic de identificare al tranzactiei (CUI) ce trebuie comunicat beneficiarului.\n<br /><br />\nUn transfer de bani prin Smith&Smith este:\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.</li>\n<li>Accesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.</li>\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.</li>\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.</li></ul>', 'string', 'ro', 'yes'),
(1074, 13, 'body_class', '', '', 'string', 'ro', 'yes'),
(1089, 28, 'page_title', '', 'Străinătate - Rom&acirc;nia', 'string', 'ro', 'yes'),
(1090, 28, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1091, 28, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1092, 28, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(1093, 28, 'heading', '', '', 'string', 'ro', 'yes'),
(1094, 28, 'body', '', 'Indiferent unde va aflati in strainatate trimiteti bani in numerar in Romania la birourile Smith&Smith sau in retelele Bancii Comerciale Romane si Romanian International Bank, iar in Republica Moldova la Victoriabank!\n<br /><br />\nSmith&Smith lucreaza cu peste 40 de sisteme internationale de remitere de bani din toata lumea.\n<br /><br />\nTrimiteti, totodata, bani in contul unui Beneficiar, deschis la orice banca comerciala din Romania! <br /><br />\nPentru platile in Euro, beneficiarul trebuie sa aibe un cont deschis la una din urmatoarele banci: (>>>)<br />\nPentru transferurile in RON, Beneficiarul trebuie sa aibe un cont deschis in Ron la ORICARE banca din Romania.\n<br /><br />\nUn transfer de bani prin Smith&Smith este:\n<ul><li>Ieftin. Smith&Smith practica unele din cele mai mici comisioane de pe piata.</li>\n<li>Accesibil: Program de lucru in majoritatea birourilor de 7 zile din 7, cu pana la 12 ore pe zi de functionare in centrele comerciale.</li>\n<li>Rapid. Banii dumneavoastra ajung la destinatie in circa 15 minute in functie de sistemele de transfer de bani ale partenerilor nostri din strainatate.</li>\n<li>Simplu. Tot ce va trebuie pentru a trimite bani este un act de identiatate.</li></ul>', 'string', 'ro', 'yes'),
(1095, 28, 'body_class', '', '', 'string', 'ro', 'yes'),
(1103, 29, 'page_title', '', 'Plata la domiciliu', 'string', 'ro', 'yes'),
(1104, 29, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1105, 29, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1106, 29, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(1107, 29, 'heading', '', 'Plata la domiciliu', 'string', 'ro', 'yes'),
(1108, 29, 'body', '', 'NOU!  Trimiteti bani in Romania direct la domiciliul beneficiarului prin noul serviciu &ldquo;acasa&rdquo; - plata la domiciliu.\n<br />\nAstfel beneficiarul va beneficia de:\n<ul><li>COMODITATE: Nu mai trebuie sa se deplaseze sa isi ridice banii.</li>\n<li>ECONOMIE DE COSTURI: Fara cheltuieli suplimentare de transport.</li>\n<li>RAPIDITATE: Fara timp pierdut pe drum sau la cozi.</li>\n<li>ACOPERIRE NATIONALA: In peste 3100 locatii din Romania. Detalii la telefon 0040 21 331 8000.</li>\n<li>BANII POTI FI TRIMISI in LEI sau EURO.</li>\n<li>PLATA SE EFECTUEAZA PRIN CURIER RAPID: in a 2-a zi lucratoare (in conditii meteo normale).</li></ul>', 'string', 'ro', 'yes'),
(1109, 29, 'body_class', '', '', 'string', 'ro', 'yes'),
(1110, 22, 'page_title', '', 'Birouri BCR', 'string', 'ro', 'yes'),
(1111, 22, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1112, 22, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1113, 22, 'banner_img', '', 'banners/b_retea..1134x184..o.jpg', 'string', 'ro', 'yes'),
(1114, 22, 'body', '', 'Banca Comerciala Romana este agent Smith&Smith din anul 2000.<br /><br />\nCu o retea de peste 500 de locatii raspandite in toata tara, Banca Comerciala Romana  este o alternativa la indemana dumneavoastra de a primi banii din strainatate prin sistemul de transfer de bani Smith&Smith.<br /><br />\nPentru a gasi cea mai apropiata sucursala a Bancii Comerciale Romane  in vederea ridicarii banilor trimisi prin sistemul Smith&Smith prin sistemul Smith&Smith, faceti click <a href="https://www.bcr.ro/ro/retea-unitati/" target="_blank">aici. </a>', 'string', 'ro', 'yes'),
(1115, 22, 'body_class', '', '', 'string', 'ro', 'yes'),
(1116, 23, 'page_title', '', '', 'string', 'ro', 'yes'),
(1117, 23, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1118, 23, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1119, 23, 'banner_img', '', 'banners/b_retea..1134x184..o.jpg', 'string', 'ro', 'yes'),
(1120, 23, 'body', '', 'Romanian International Bank este agent Smith&Smith din anul 2010. <br /><br />\nCu o retea extinsa in principalele orase din Romania, Romanian International Bank  este o alternativa la indemana dumneavoastra de a primi bani din strainatate prin sistemul de transfer de bani Smith&Smith.<br /><br />\nPentru a gasi cea mai apropiata sucursala a Romanian International Bank in vederea ridicarii banilor trimisi prin sistemul Smith&Smith, faceti click <a href="https://www.bcr.ro/ro/retea-unitati/" target="_blank">aici. </a>', 'string', 'ro', 'yes'),
(1121, 23, 'body_class', '', '', 'string', 'ro', 'yes'),
(1122, 24, 'page_title', '', '', 'string', 'ro', 'yes'),
(1123, 24, 'meta_description', '', '', 'string', 'ro', 'yes'),
(1124, 24, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(1125, 24, 'banner_img', '', 'banners/b_retea..1134x184..o.jpg', 'string', 'ro', 'yes'),
(1126, 24, 'body', '', 'Victoria Bank este agent Smith&Smith din 11 martie 2003. <br /><br />\nCea mai mare banca privata din Republica Moldova, Victoriabank este o alternativa la indemana dumneavoastra de a primi bani din strainatate in Repubica Moldova prin sistemul de transfer de bani Smith&Smith.<br /><br />\nPentru a gasi cea mai apropiata sucursala Victoriabank in Republica Moldova  in vederea ridicarii banilor trimisi prin sistemul Smith&Smith prin sistemul Smith&Smith, faceti click <a href="https://www.bcr.ro/ro/retea-unitati/" target="_blank">aici. </a>.', 'string', 'ro', 'yes'),
(1127, 24, 'body_class', '', '', 'string', 'ro', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_permissions`
--

CREATE TABLE IF NOT EXISTS `fuel_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `fuel_permissions`
--

INSERT INTO `fuel_permissions` (`id`, `description`, `name`, `active`) VALUES
(1, 'Pages', 'pages', 'yes'),
(2, 'Pages: Create', 'pages/create', 'yes'),
(3, 'Pages: Edit', 'pages/edit', 'yes'),
(4, 'Pages: Publish', 'pages/publish', 'yes'),
(5, 'Pages: Delete', 'pages/delete', 'yes'),
(6, 'Blocks', 'blocks', 'yes'),
(7, 'Blocks: Create', 'blocks/create', 'yes'),
(8, 'Blocks: Edit', 'blocks/edit', 'yes'),
(9, 'Blocks: Publish', 'blocks/publish', 'yes'),
(10, 'Blocks: Delete', 'blocks/delete', 'yes'),
(11, 'Navigation', 'navigation', 'yes'),
(12, 'Navigation: Create', 'navigation/create', 'yes'),
(13, 'Navigation: Edit', 'navigation/edit', 'yes'),
(14, 'Navigation: Publish', 'navigation/publish', 'yes'),
(15, 'Navigation: Delete', 'navigation/delete', 'yes'),
(16, 'Categories', 'categories', 'yes'),
(17, 'Categories: Create', 'categories/create', 'yes'),
(18, 'Categories: Edit', 'categories/edit', 'yes'),
(19, 'Categories: Publish', 'categories/publish', 'yes'),
(20, 'Categories: Delete', 'categories/delete', 'yes'),
(21, 'Tags', 'tags', 'yes'),
(22, 'Tags: Create', 'tags/create', 'yes'),
(23, 'Tags: Edit', 'tags/edit', 'yes'),
(24, 'Tags: Publish', 'tags/publish', 'yes'),
(25, 'Tags: Delete', 'tags/delete', 'yes'),
(26, 'Site Variables', 'sitevariables', 'yes'),
(27, 'Assets', 'assets', 'yes'),
(28, 'Site Documentation', 'site_docs', 'yes'),
(29, 'Users', 'users', 'yes'),
(30, 'Permissions', 'permissions', 'yes'),
(31, 'Manage', 'manage', 'yes'),
(32, 'Cache', 'manage/cache', 'yes'),
(33, 'Logs', 'logs', 'yes'),
(34, 'Settings', 'settings', 'yes'),
(35, 'Generate Code', 'generate', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_relationships`
--

CREATE TABLE IF NOT EXISTS `fuel_relationships` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `candidate_key` int(11) NOT NULL,
  `foreign_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_table` (`candidate_table`,`candidate_key`),
  KEY `foreign_table` (`foreign_table`,`foreign_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_settings`
--

CREATE TABLE IF NOT EXISTS `fuel_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module` (`module`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_site_variables`
--

CREATE TABLE IF NOT EXISTS `fuel_site_variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'leave blank if you want the variable to be available to all pages',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `fuel_site_variables`
--

INSERT INTO `fuel_site_variables` (`id`, `name`, `value`, `scope`, `active`) VALUES
(1, 'caseta_online_url', '{site_url(''home'')}', '', 'yes'),
(2, 'caseta_cash_url', '{site_url(''home'')}', '', 'yes'),
(3, 'caseta_acasa_url', '{site_url(''home'')}', '', 'yes'),
(4, 'caseta_retea_url', '{site_url(''retea/smith'')}', '', 'yes'),
(5, 'img_moneygram', '<img src="{img_path(''banners/moneygram.png'')}" alt="" />', '', 'yes'),
(6, 'exchange_rate', '4.5', '', 'yes'),
(8, 'from_email', 'a.mocioi@gmail.com', '', 'yes'),
(9, 'exchange_rate_usd', '3.7', '', 'yes'),
(10, 'caseta_reclama1_url', '{site_url(''home'')}', '', 'yes'),
(11, 'caseta_reclama2_url', '{site_url(''home'')}', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_tags`
--

CREATE TABLE IF NOT EXISTS `fuel_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `precedence` int(11) NOT NULL,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_users`
--

CREATE TABLE IF NOT EXISTS `fuel_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `reset_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `super_admin` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fuel_users`
--

INSERT INTO `fuel_users` (`id`, `user_name`, `password`, `email`, `first_name`, `last_name`, `language`, `reset_key`, `salt`, `super_admin`, `active`) VALUES
(1, 'admin', 'b4040a114ed3c1e5f67d74a4cb3321eb83b49899', 'a.mocioi@gmail.com', 'horia', 'mocioi', 'english', '', '7cd6d241e1be8ffa1f0c7974d6b53d5a', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'if left blank, one will automatically be generated for you',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `publish_date` date DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `language` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `content`, `publish_date`, `date_added`, `published`, `language`) VALUES
(1, 'Un nou agent SS la Filiasi', 'un-nou-agent-ss-la-filiasi', 'Un nou agent SS la Filiasi\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.', '2014-11-06', '2014-11-06 10:36:44', 'yes', 'ro'),
(2, 'Program agentii SS', 'majoritatea-birourilor-ss-au-program-7-zile-din-7', 'Majoritatea birourilor SS au program 7 zile din 7\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.', '2014-11-06', '2014-11-06 10:37:24', 'yes', 'ro'),
(3, 'News 01', 'news-01', 'Some content 01', '2014-11-06', '2014-11-06 11:19:08', 'yes', 'en'),
(4, 'News 02', 'news-02', 'Some content 02', '2014-11-06', '2014-11-06 11:19:24', 'yes', 'en'),
(5, 'E gata caseta de stiri', 'e-gata-caseta-de-stiri', 'Am terminat si caseta de stiri, acum o sa fac un backup intrucat ma apuc de login cu ion_auth.', '2014-11-06', '2014-11-07 07:59:04', 'yes', 'ro'),
(6, 'Stirea numarul 4', 'stirea-numarul-4', 'Aceasta e stirea numarul 4 in limba romana. \r\n\r\nE interesant de vazut daca listarea stirilor tine cont de limita de 3 stiri.', '2014-11-07', '2014-11-07 08:00:07', 'yes', 'ro'),
(7, 'news 03', 'news-03', 'news 03', '2014-12-04', '2014-12-04 11:34:01', 'yes', 'en'),
(8, 'stire importanta', 'stire-importanta', 'aceasta e o stire importanta', '2014-12-04', '2014-12-04 13:06:17', 'yes', 'ro'),
(9, 'news 05', 'news-05', 'news 05', '2014-12-04', '2014-12-04 13:39:14', 'yes', 'en'),
(10, 'news 06', 'news-06', 'news 06', '2014-12-04', '2014-12-04 13:39:14', 'yes', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `ss_cities`
--

CREATE TABLE IF NOT EXISTS `ss_cities` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `ss_cities`
--

INSERT INTO `ss_cities` (`id`, `name`) VALUES
(5, 'Bucuresti'),
(7, 'Brasov'),
(8, 'Cluj'),
(9, 'ADJUD'),
(10, 'Alexandria'),
(11, 'Arad'),
(12, 'Bacau'),
(13, 'BAIA-MARE'),
(14, 'BALS'),
(15, 'BARLAD'),
(16, 'BISTRITA'),
(17, 'BOTOSANI'),
(18, 'BRAILA'),
(19, 'Bucuresti Obor'),
(20, 'BUZAU'),
(21, 'DROBETA TR. SEVERIN'),
(22, 'Vaslui'),
(23, 'CONSTANTA'),
(24, 'CRAIOVA'),
(25, 'CURTEA DE ARGES'),
(26, 'FILIASI'),
(27, 'FOCSANI'),
(28, 'GALATI'),
(29, 'IASI'),
(30, 'PANCIU'),
(31, 'PIATRA NEAMT'),
(32, 'PITESTI TRIVALE'),
(33, 'PLOIESTI'),
(34, 'RADAUTI'),
(35, 'RAMNICU- VALCEA'),
(36, 'ROMAN'),
(37, 'ROSIORI DE VEDE'),
(38, 'SIBIU'),
(39, 'SLATINA'),
(40, 'SUCEAVA'),
(41, 'TARGOVISTE'),
(42, 'TARGU JIU'),
(43, 'TECUCI'),
(44, 'TIMISOARA'),
(45, 'TULCEA');

-- --------------------------------------------------------

--
-- Table structure for table `ss_display_fees`
--

CREATE TABLE IF NOT EXISTS `ss_display_fees` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `amount_min` mediumint(9) NOT NULL,
  `amount_max` mediumint(9) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `type` enum('flat','prc') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ss_display_fees`
--

INSERT INTO `ss_display_fees` (`id`, `amount_min`, `amount_max`, `fee`, `type`) VALUES
(1, 1, 50, '3.50', 'flat'),
(2, 51, 100, '4.00', 'flat'),
(3, 101, 200, '6.00', 'flat'),
(4, 201, 300, '9.00', 'flat'),
(5, 301, 400, '12.00', 'flat'),
(6, 401, 500, '14.00', 'flat'),
(7, 501, 600, '16.00', 'flat'),
(8, 601, 700, '20.00', 'flat'),
(9, 701, 800, '22.00', 'flat'),
(10, 801, 900, '24.00', 'flat'),
(11, 901, 1000, '28.00', 'flat'),
(12, 1001, 9999, '3.00', 'prc');

-- --------------------------------------------------------

--
-- Table structure for table `ss_exchange_rate`
--

CREATE TABLE IF NOT EXISTS `ss_exchange_rate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('EUR','USD') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EUR',
  `value` decimal(6,4) NOT NULL,
  `apply_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_day` (`type`,`apply_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `ss_exchange_rate`
--

INSERT INTO `ss_exchange_rate` (`id`, `type`, `value`, `apply_date`) VALUES
(9, 'EUR', '4.4509', '2014-12-01'),
(10, 'EUR', '4.6789', '2014-12-28'),
(11, 'USD', '3.6506', '2014-12-28'),
(12, 'USD', '3.6506', '0000-00-00'),
(17, 'USD', '3.6506', '2014-12-12'),
(21, 'USD', '3.6590', '2014-12-29'),
(22, 'EUR', '4.1234', '2014-12-29'),
(23, 'EUR', '4.1234', '2014-12-15'),
(24, 'EUR', '4.1235', '2014-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `ss_faq`
--

CREATE TABLE IF NOT EXISTS `ss_faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `language` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ss_faq`
--

INSERT INTO `ss_faq` (`id`, `question`, `answer`, `date_added`, `published`, `language`) VALUES
(1, 'Cate transferuri pot efectua intr-o singura zi?', 'Nelimitat', '2014-11-26 13:40:47', 'yes', 'ro'),
(2, 'How many transfer can I make in one day?', 'Unlimited', '2014-11-26 13:41:12', 'yes', 'en'),
(3, 'Can I pay invoices?', 'Yes, you can.', '2014-11-26 13:41:41', 'yes', 'en'),
(4, 'Pot plati facturi?', 'Da', '2014-11-26 13:41:53', 'yes', 'ro');

-- --------------------------------------------------------

--
-- Table structure for table `ss_fees`
--

CREATE TABLE IF NOT EXISTS `ss_fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `com_val` decimal(10,0) unsigned DEFAULT '0',
  `com_type` enum('flat','prc') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'flat' COMMENT 'tipul comisionului',
  `com_int_apply` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'aplicare comision pe interval',
  `com_int_min` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'marginea inferioara a sumei',
  `com_int_max` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'marginea superioara a sumei',
  `com_promo` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'comision promotional',
  `com_spot` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'comision promotional necumulabil',
  `com_trn_apply` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'aplicare comision pe numar de tranzactii',
  `com_trn_min` int(11) NOT NULL DEFAULT '0' COMMENT 'numar minim de tranzactii',
  `com_trn_max` int(11) NOT NULL DEFAULT '0' COMMENT 'numar maxim de tranzactii',
  `com_time_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'data start',
  `com_time_apply` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'verificare expirare comision',
  `com_time_stop` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'data stop',
  `fk_currency` int(11) NOT NULL DEFAULT '0' COMMENT 'fk moneda',
  `fk_network` int(11) NOT NULL DEFAULT '0' COMMENT 'fk retea',
  `fk_partner` int(11) NOT NULL DEFAULT '0' COMMENT 'fk partener',
  `fk_cl_type` int(11) NOT NULL DEFAULT '0' COMMENT 'fk profil client',
  `fk_ben_type` int(11) NOT NULL DEFAULT '0' COMMENT 'fk profil beneficiar',
  `com_promo_apply` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'verificare promo code',
  `fk_promo_code` int(11) NOT NULL DEFAULT '0' COMMENT 'verificare cheie promo code',
  `fk_promo_type` int(11) NOT NULL DEFAULT '0' COMMENT 'tip promo',
  `apply_to_amount` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT 'se aplica la suma sau la comision',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT 'aplicabil sau nu',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ss_fees`
--

INSERT INTO `ss_fees` (`id`, `com_val`, `com_type`, `com_int_apply`, `com_int_min`, `com_int_max`, `com_promo`, `com_spot`, `com_trn_apply`, `com_trn_min`, `com_trn_max`, `com_time_start`, `com_time_apply`, `com_time_stop`, `fk_currency`, `fk_network`, `fk_partner`, `fk_cl_type`, `fk_ben_type`, `com_promo_apply`, `fk_promo_code`, `fk_promo_type`, `apply_to_amount`, `active`) VALUES
(6, '10', 'prc', '0', '0', '0', '0', '0', '0', 0, 0, '2014-12-15 15:28:00', '0', '2014-12-31 16:28:00', 1, 1, 1, 0, 0, '0', 0, 9, '1', '1'),
(8, '10', 'prc', '0', '0', '0', '0', '0', '0', 0, 0, '2014-12-15 16:09:00', '0', '2014-12-16 17:09:00', 1, 1, 1, 0, 0, '0', 0, 9, '0', '1'),
(9, '15', 'flat', '1', '100', '2000', '1', '0', '1', 4, 7, '2014-12-16 09:42:00', '0', '2014-12-31 10:42:00', 1, 1, 1, 0, 0, '0', 0, 9, '1', '1'),
(10, '100', 'flat', '1', '1000', '2000', '0', '1', '1', 10, 200, '2014-12-16 09:55:00', '0', '2014-12-16 10:55:00', 1, 1, 1, 0, 0, '0', 0, 9, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ss_invoices`
--

CREATE TABLE IF NOT EXISTS `ss_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificator unic tabela',
  `unid` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'identificator unic tranzactie; se genereaza in controller',
  `id_user` int(11) NOT NULL COMMENT 'id utilizator caruia ii apartine tranzactia',
  `id_payment_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'modalitatea de plata: cont sau card',
  `amount_in` decimal(7,2) NOT NULL COMMENT 'suma',
  `currency_in` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'moneda',
  `amount_out` decimal(7,2) NOT NULL COMMENT 'suma platita beneficiarului; pt facturi are aceeasi valoare cu amount_in',
  `currency_out` varchar(3) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL COMMENT 'moneda sumei platita beneficiarului; pt facturi are aceeasi valoare cu currency_in',
  `rate` decimal(6,4) DEFAULT NULL COMMENT 'rata de schimb',
  `id_supplier_cat` tinyint(3) NOT NULL COMMENT 'categoria furnizorului',
  `id_supplier` int(10) NOT NULL COMMENT 'furnizorul catre care se efectueaza plata',
  `fee` decimal(7,2) NOT NULL COMMENT 'comision',
  `total` decimal(7,2) NOT NULL COMMENT 'suma totala',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(3) unsigned NOT NULL COMMENT 'stare: 1 in curs de procesare, 50 in curs de plata, 100 platita',
  `s1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'camp custom in functie de furnizor',
  `s2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'camp custom in functie de furnizor',
  `s3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'camp custom in functie de furnizor',
  `s4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'camp custom in functie de furnizor',
  `s5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'camp custom in functie de furnizor',
  `s6` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'camp custom in functie de furnizor',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `ss_invoices`
--

INSERT INTO `ss_invoices` (`id`, `unid`, `id_user`, `id_payment_type`, `amount_in`, `currency_in`, `amount_out`, `currency_out`, `rate`, `id_supplier_cat`, `id_supplier`, `fee`, `total`, `date_added`, `status`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`) VALUES
(88, '#F546df0152a0fa', 8, 'card', '123.00', 'RON', '0.00', '', NULL, 1, 12, '1.23', '124.23', '2014-11-20 13:43:49', 0, 'asdf', NULL, NULL, NULL, NULL, NULL),
(89, '#F546df0551aa8a', 8, 'card', '3234.00', 'RON', '0.00', '', NULL, 1, 11, '32.34', '3266.34', '2014-11-20 13:44:53', 1, 'cc 12345', '10-11-2015', NULL, 'ceva text', 'asdf', '10-11-2016'),
(90, '#F546df186d0c72', 8, 'card', '3234.00', 'RON', '0.00', '', NULL, 1, 11, '32.34', '3266.34', '2014-11-20 13:49:58', 1, 'cc 12345', NULL, NULL, 'ceva text', 'asdf', NULL),
(91, '#F546df194f1e3b', 8, 'card', '3234.00', 'RON', '0.00', '', NULL, 1, 11, '32.34', '3266.34', '2014-11-20 13:50:12', 1, 'cc 12345', NULL, NULL, NULL, 'asdf', NULL),
(92, '#F5489a6bf0605b', 8, 'card', '123.00', 'RON', '123.00', 'RON', NULL, 1, 12, '1.23', '124.23', '2014-12-11 14:14:23', 0, '1234', NULL, NULL, NULL, NULL, NULL),
(93, '#F5489a74890a93', 8, 'card', '432.00', 'RON', '432.00', 'RON', NULL, 1, 12, '4.32', '436.32', '2014-12-11 14:16:40', 0, '121', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ss_messages`
--

CREATE TABLE IF NOT EXISTS `ss_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tx` int(10) unsigned DEFAULT NULL,
  `unid` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `tx_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `ss_messages`
--

INSERT INTO `ss_messages` (`id`, `id_tx`, `unid`, `id_user`, `tx_type`, `message`, `date_added`) VALUES
(1, 92, '#S546e6ef3bf544', 8, 'pay', 'payment #S546e6ef3bf544 successfully refunded', '2014-11-21 13:20:07'),
(2, 92, '#S546e6ef3bf544', 8, 'pay', 'payment #S546e6ef3bf544 successfully refunded', '2014-11-21 13:24:07'),
(3, 93, '#S546f5ce1b47ae', 8, 'pay', 'payment #S546f5ce1b47ae successfully added', '2014-11-21 15:40:17'),
(4, 92, '#S546e6ef3bf544', 8, 'pay', 'payment #S546e6ef3bf544 successfully refunded', '2014-11-21 16:29:15'),
(5, 92, '#S546e6ef3bf544', 8, 'pay', 'payment #S546e6ef3bf544 successfully refunded', '2014-11-21 16:38:45'),
(6, 0, '#S546fb20da5cdc', 8, 'pay', 'payment #S546fb20da5cdc successfully added', '2014-11-21 21:43:41'),
(7, 94, '#S546fb25e8632b', 8, 'pay', 'payment #S546fb25e8632b successfully added', '2014-11-21 21:45:02'),
(8, 95, '#S547318e357d0e', 8, 'pay', 'payment #S547318e357d0e successfully added', '2014-11-24 11:39:15'),
(9, 91, '#F546df194f1e3b', 1, 'inv', 'invoice #F546df194f1e3b err', '2014-11-24 13:35:50'),
(10, 91, '#F546df194f1e3b', 8, 'inv', 'invoice #F546df194f1e3b err', '2014-11-24 13:36:19'),
(11, 91, '#F546df194f1e3b', 8, 'inv', 'invoice #F546df194f1e3b err', '2014-11-24 14:01:22'),
(12, 91, '#F546df194f1e3b', 8, 'inv', 'invoice #F546df194f1e3b err', '2014-11-24 14:05:23'),
(13, 91, '#F546df194f1e3b', 8, 'inv', 'invoice #F546df194f1e3b err', '2014-11-24 14:06:09'),
(14, 96, '#S54899b2766ddd', 8, 'pay', 'payment #S54899b2766ddd successfully added', '2014-12-11 13:24:55'),
(15, 97, '#S54899bf91a9c7', 8, 'pay', 'payment #S54899bf91a9c7 successfully added', '2014-12-11 13:28:25'),
(16, 98, '#S54899e5404144', 8, 'pay', 'payment #S54899e5404144 successfully added', '2014-12-11 13:38:28'),
(17, 99, '#S5489a09f1b327', 8, 'pay', 'payment #S5489a09f1b327 successfully added', '2014-12-11 13:48:15'),
(18, 100, '#S5489a229a457f', 8, 'pay', 'payment #S5489a229a457f successfully added', '2014-12-11 13:54:49'),
(19, 101, '#S5489a41cd6331', 8, 'pay', 'payment #S5489a41cd6331 successfully added', '2014-12-11 14:03:08'),
(20, 92, '#F5489a6bf0605b', 8, 'invo', 'invoice #F5489a6bf0605b successfully added', '2014-12-11 14:14:23'),
(21, 93, '#F5489a74890a93', 8, 'invo', 'invoice #F5489a74890a93 successfully added', '2014-12-11 14:16:40'),
(22, 102, '#S5489a85381bdc', 8, 'pay', 'payment #S5489a85381bdc successfully added', '2014-12-11 14:21:07'),
(23, 103, '#S5489a8819b655', 8, 'pay', 'payment #S5489a8819b655 successfully added', '2014-12-11 14:21:53'),
(24, 104, '#S5489a8d7e99be', 8, 'pay', 'payment #S5489a8d7e99be successfully added', '2014-12-11 14:23:20'),
(25, 105, '#S5489a9fadeda1', 8, 'pay', 'payment #S5489a9fadeda1 successfully added', '2014-12-11 14:28:10'),
(26, 92, '#S546e6ef3bf544', 8, 'pay', '', '2014-12-21 01:10:18'),
(27, 92, '#S546e6ef3bf544', 8, 'pay', '0', '2014-12-21 01:15:12'),
(28, 92, '#S546e6ef3bf544', 8, 'pay', 'Operatiunea de plata a fost finalizata cu succes. Referinta tranzactiei\r\n- dumneavoastra este %s. In cazul in care ati ales plata numerar, va vom\r\ncomunica in cel mai scurt timp posibil codul tranzactiei pentru a fi comunicat de\r\ndumneavoastra beneficiarului.', '2014-12-21 01:20:47'),
(29, 92, '#S546e6ef3bf544', 8, 'pay', 'Operatiunea de plata a fost finalizata cu succes. Referinta tranzactiei\r\n- dumneavoastra este #S546e6ef3bf544. In cazul in care ati ales plata numerar, va vom\r\ncomunica in cel mai scurt timp posibil codul tranzactiei pentru a fi comunicat de\r\ndumneavoastra beneficiarului.', '2014-12-21 01:22:15'),
(30, 92, '#S546e6ef3bf544', 8, 'pay', 'Operatiunea de plata a fost finalizata cu succes. Referinta tranzactiei\r\n- dumneavoastra este #S546e6ef3bf544. In cazul in care ati ales plata numerar, va vom\r\ncomunica in cel mai scurt timp posibil codul tranzactiei pentru a fi comunicat de\r\ndumneavoastra beneficiarului.', '2014-12-21 01:25:37'),
(31, 92, '#S546e6ef3bf544', 8, 'pay', 'Operatiunea de plata a fost finalizata cu succes. Referinta tranzactiei\r\n- dumneavoastra este #S546e6ef3bf544. In cazul in care ati ales plata numerar, va vom\r\ncomunica in cel mai scurt timp posibil codul tranzactiei pentru a fi comunicat de\r\ndumneavoastra beneficiarului.', '2014-12-21 01:28:22'),
(32, 92, '#S546e6ef3bf544', 8, 'pay', 'A intervenit o eroare. Va rugam sa contactati banca la care detineti cardul\r\npentru verificari si/sau sa contactati serviciul Sesizari, Reclamatii Smith & Smith la telefon\r\n+4.021.331.8000 pentru clarificarea situatiei. Va multumin pentru intelegere!', '2014-12-21 01:39:47'),
(33, 92, '#S546e6ef3bf544', 8, 'pay', 'Operatiunea de plata a fost finalizata cu succes. Referinta tranzactiei\r\n- dumneavoastra este #S546e6ef3bf544. In cazul in care ati ales plata numerar, va vom\r\ncomunica in cel mai scurt timp posibil codul tranzactiei pentru a fi comunicat de\r\ndumneavoastra beneficiarului.', '2014-12-21 01:53:29'),
(34, 92, '#S546e6ef3bf544', 8, 'pay', 'A intervenit o eroare. Va rugam sa contactati banca la care detineti cardul\r\npentru verificari si/sau sa contactati serviciul Sesizari, Reclamatii Smith & Smith la telefon\r\n+4.021.331.8000 pentru clarificarea situatiei. Va multumin pentru intelegere!', '2014-12-21 01:53:59'),
(35, NULL, '#S549d279f1b06b', 8, 'pay', 'payment #S549d279f1b06b successfully added', '2014-12-26 09:17:19'),
(36, NULL, '#S549d28599db1e', 8, 'pay', 'payment #S549d28599db1e successfully added', '2014-12-26 09:20:25'),
(37, 107, '#S549d2abd28c59', 8, 'pay', 'payment #S549d2abd28c59 successfully added', '2014-12-26 09:30:37'),
(38, 108, '#S549d2b45402cc', 8, 'pay', 'payment #S549d2b45402cc successfully added', '2014-12-26 09:32:53'),
(39, 109, '#S549d2e7ddec15', 8, 'pay', 'payment #S549d2e7ddec15 successfully added', '2014-12-26 09:46:38'),
(40, 110, '#S549d2fb1e504a', 8, 'pay', 'payment #S549d2fb1e504a successfully added', '2014-12-26 09:51:46'),
(41, 111, '#S549d2fe86f900', 8, 'pay', 'payment #S549d2fe86f900 successfully added', '2014-12-26 09:52:40'),
(42, 112, '#S549d30908224c', 8, 'pay', 'payment #S549d30908224c successfully added', '2014-12-26 09:55:28'),
(43, 113, '#S549d31e1ddcae', 8, 'pay', 'payment #S549d31e1ddcae successfully added', '2014-12-26 10:01:06'),
(44, 114, '#S549d327067fbb', 8, 'pay', 'payment #S549d327067fbb successfully added', '2014-12-26 10:03:28'),
(45, 115, '#S54a00a4f4aca3', 8, 'pay', 'payment #S54a00a4f4aca3 successfully added', '2014-12-28 13:49:03'),
(46, 116, '#S54a00a8641f9c', 8, 'pay', 'payment #S54a00a8641f9c successfully added', '2014-12-28 13:49:58'),
(47, 117, '#S54a00ab398a77', 8, 'pay', 'payment #S54a00ab398a77 successfully added', '2014-12-28 13:50:43'),
(48, 118, '#S54a00b4749e00', 8, 'pay', 'payment #S54a00b4749e00 successfully added', '2014-12-28 13:53:11'),
(49, 119, '#S54a00d4f3818b', 8, 'pay', 'payment #S54a00d4f3818b successfully added', '2014-12-28 14:01:51'),
(50, 120, '#S54a00ddde44b4', 8, 'pay', 'payment #S54a00ddde44b4 successfully added', '2014-12-28 14:04:13'),
(51, 121, '#S54a00e0e35b8d', 8, 'pay', 'payment #S54a00e0e35b8d successfully added', '2014-12-28 14:05:02'),
(52, 122, '#S54a00f1eee8bf', 8, 'pay', 'payment #S54a00f1eee8bf successfully added', '2014-12-28 14:09:35'),
(53, 123, '#S54a017ff441b9', 8, 'pay', 'payment #S54a017ff441b9 successfully added', '2014-12-28 14:47:27'),
(54, 124, '#S54a018769aafe', 8, 'pay', 'payment #S54a018769aafe successfully added', '2014-12-28 14:49:26'),
(55, 125, '#S54a0189a506f5', 8, 'pay', 'payment #S54a0189a506f5 successfully added', '2014-12-28 14:50:02'),
(56, 126, '#S54a018d8c134b', 8, 'pay', 'payment #S54a018d8c134b successfully added', '2014-12-28 14:51:04'),
(57, 127, '', 0, 'pay', 'payment  successfully added', '2015-01-03 13:14:09'),
(58, 128, '', 0, 'pay', 'payment  successfully added', '2015-01-03 13:14:21'),
(59, 129, '#S54a7eb46be507', 8, 'pay', 'payment #S54a7eb46be507 successfully added', '2015-01-03 13:14:54'),
(60, 130, '#S54a7ec8c9568d', 8, 'pay', 'payment #S54a7ec8c9568d successfully added', '2015-01-03 13:20:25'),
(61, 131, '#S54a7f5193bfdf', 8, 'pay', 'payment #S54a7f5193bfdf successfully added', '2015-01-03 13:56:50'),
(62, 132, '#S54a7f7cc9fd42', 8, 'pay', 'payment #S54a7f7cc9fd42 successfully added', '2015-01-03 14:08:35'),
(63, 133, '#S54a7fbe398c4e', 8, 'pay', 'payment #S54a7fbe398c4e successfully added', '2015-01-03 14:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `ss_network`
--

CREATE TABLE IF NOT EXISTS `ss_network` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `id_city` tinyint(4) NOT NULL,
  `county` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL COMMENT '1- smith, 2- bcr, 3- rib, 4- vb',
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bh_week_start` time DEFAULT NULL,
  `bh_week_end` time DEFAULT NULL,
  `bh_sat_start` time DEFAULT NULL,
  `bh_sat_end` time DEFAULT NULL,
  `bh_sun_start` time DEFAULT NULL,
  `bh_sun_end` time DEFAULT NULL,
  `bh_break_start` time DEFAULT NULL,
  `bh_break_end` time DEFAULT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `coord_lat` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `coord_long` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `ss_network`
--

INSERT INTO `ss_network` (`id`, `date_added`, `published`, `id_city`, `county`, `type`, `phone`, `email`, `address`, `bh_week_start`, `bh_week_end`, `bh_sat_start`, `bh_sat_end`, `bh_sun_start`, `bh_sun_end`, `bh_break_start`, `bh_break_end`, `details`, `coord_lat`, `coord_long`) VALUES
(1, '2014-12-02 22:16:44', 'yes', 7, 'Brasov', '1', '+40 213 318 041', 'smith.brasov@smith-smith.ro', 'Str. 15 Noiembrie nr. 17', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '13:00:00', '14:00:00', '1,2,4,5,6,22,17,31,36,37,50,51\nColt cu strada Agriselor, intre Teatrul Dramatic (la aproximativ 200 m fata de acesta, pe aceeasi parte) si cinematograful Patria.', '45.652587', '25.594613'),
(2, '2014-12-02 22:31:56', 'yes', 8, 'Cluj', '1', '0040213318043', 'smith.cluj@smith-smith.ro', 'Str.Al.Vaida-Voievod,nr. 53-55', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '00:00:00', '00:00:00', '', '46.766667', '23.58333300000004'),
(3, '2014-12-02 22:33:45', 'yes', 5, 'Bucuresti', '1', '+40 213 318 030', 'smith.bucuresti@smith-smith.ro', 'Str. Justitiei Nr. 54', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Mijloace de transport: tramvaiul 32. \nIn apropiere de zona Piata Unirii, (11 Iunie intersectie cu B-dul Regina Maria). Strada Justitiei este paralela cu Strada 11 Iunie. Sediul Smith & Smith se afla langa Manastirea Antim, la parterul cladirii Ascensorul.', '44.425252', '26.093440999999984'),
(4, '2014-12-22 11:15:25', 'yes', 9, 'Alba', '1', '+40 0213318049', 'smith.adjud@smith-smith.ro', 'Str. Republicii nr.18, bl.60, Jud. Vrancea', '08:30:00', '17:30:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '13:00:00', '13:30:00', '', '44.943087', '26.026931'),
(5, '2014-12-22 11:15:25', 'yes', 10, 'Teleorman', '1', '+40 213318051', 'smith.alexandria@smith-smith.ro', 'Strada Bucuresti, bl. 220, ap. 4', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '13:00:00', '13:30:00', 'vis-a-vis de CEC Bank si BRD', '43.966956', '25.336586'),
(6, '2014-12-22 11:15:25', 'yes', 11, 'Arad', '1', '+40 021 331 8032', 'smith.arad@smith-smith.ro', 'Calea Aurel Vlaicu nr. 10-12 Atrium Center et. 1', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '13:00:00', '13:30:00', 'In incinta Centrului Comercial Atrium pe calea Aurel Vlaicu, langa Gara Mare la etajul 1.', '46.190142', '21.321121'),
(7, '2014-12-22 11:33:30', 'yes', 12, 'Bacau', '1', '+40 213 318 034', 'smith.bacau@smith-smith.rooper', 'Str. Oituz Nr. 1 Sc. A', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '13:00:00', '13:30:00', '', '46.567810', '26.908066'),
(8, '2014-12-22 11:33:30', 'yes', 12, 'Bacau', '1', '+40 75 903 4841', 'smith.romanarena@smith-smith.ro', 'Str. Stefan cel Mare nr. 28, Arena Mall, etaj 2', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '13:00:00', '13:30:00', 'La etajul 2 langa sala de jocuri', '46.580322', '26.915124'),
(9, '2014-12-22 12:14:39', 'yes', 13, 'Baia Mare', '1', '+40 213 318 036', 'smith.baiamare@smith-smith.ro', 'Bld. Traian nr. 7 (Eurolines)', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'In incinta sediului EUROLINES in zona centrala a orasului, langa braseria URSUS, la jumatatea distantei dintre GARA si Hotel MARA. Se poate ajunge cu mijloace de transport in comun METRO, nr 8 (statie autobuz URSUS ) la 10 minute de mers pana la GARA.', '47.649961', '23.563840'),
(10, '2014-12-22 12:14:39', 'yes', 14, 'Dolj', '1', '+40 213 318 037', 'smith.bals@smith-smith.ro', 'Str.N Balcescu,Bl 38.Sc 1 Ap 3', '08:30:00', '17:00:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Sediul e situat la 200 metri de la BCR catre centru, vis-a vis de Spital sau farmacia MEDICA.', '44.350241', '24.101047'),
(11, '2014-12-22 12:14:39', 'yes', 15, 'Vaslui', '1', '+40 213 318 041', 'smith.barlad@smith-smith.ro', 'Str. Republicii nr.256, la etaj', '09:30:00', '17:30:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '13:00:00', '13:30:00', '', '44.943072', '26.026952'),
(12, '2014-12-22 12:26:07', 'yes', 16, 'Bistrita-Nasaud', '1', '+40 213 318 038', 'smith.bistrita@smith-smith.ro', 'B-dul  Decebal Nr. 15, Sc. A,  Ap. 4', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'In incinta Agentiei de turism Eurolines', '47.841461', '25.922794'),
(13, '2014-12-22 12:29:14', 'yes', 17, 'Botosani', '1', '+40 213 318 039', 'smith.botosani@smith-smith.ro', 'Str. Ion Pilat nr. 2, sc. C, ap. 4, parter', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', '', '47.741328', '26.668238'),
(14, '2014-12-22 12:33:04', 'yes', 18, 'Braila', '1', '+40 213 318 040', 'smith.braila@smith-smith.ro', 'Calea Calarasilor Nr.65, Bl.C', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', '45.259720', '27.963925'),
(15, '2014-12-02 22:33:45', 'yes', 19, 'Bucuresti', '1', '+40 732 555 422', 'smith.obor@smith-smith.ro', 'Sos Colentina nr 2 parter intrarea 30, Bucur Obor', '09:00:00', '21:00:00', '09:00:00', '20:00:00', '09:00:00', '17:00:00', '00:00:00', '00:00:00', 'Centru Comercial Obor, intrarea nr.30, pe latura cu sediul Primariei Sector 2', '44.450837', '26.126658'),
(16, '2014-12-22 12:41:04', 'yes', 20, 'Buzau', '1', '+40 213 318 042', 'smith.buzau@smith-smith.ro', 'Str. Ostrovului, nr.19 etaj', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', '', '45.151622', '26.819840'),
(17, '2014-12-22 12:44:48', 'yes', 21, 'Mehedinti', '1', '+40 213 318 048', 'smith.drobeta@smith-smith.ro', 'Str. Tudor Vladimirescu nr. 111', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', '', '44.632633', '22.656777'),
(18, '2014-12-22 12:44:48', 'yes', 22, 'Vaslui', '1', '+40 213 318 069', 'smith.vaslui@smith-smith.ro', 'Str. Dobrogeanu Gherea, nr. 38', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', '', '46.634906', '27.729856'),
(19, '2014-12-22 12:44:48', 'yes', 23, 'Constanta', '1', '+40 0213318044', 'smith.constanta@smith-smith.ro', 'B-dul 1 Decembrie 1918 Nr. 5, Bl F16', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', 'Autobuz: 100, troleibuz: 48 B si maxi-taxi 310.\nIn apropierea Garii Constanta, principale puncte de reper sunt Spitalul Municipal si Hipermarketul Kaufland, la o distanta de 50 m fata de acestea.', '44.171998', '28.636313'),
(20, '2014-12-22 12:52:07', 'yes', 24, 'Dolj', '1', '+40 0213318045', 'smith.craiova@smith-smith.ro', 'Calea Bucuresti, BL 13B, Parter', '09:30:00', '18:00:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '13:00:00', '13:30:00', '', '44.320372', '23.799020'),
(21, '2014-12-22 12:54:22', 'yes', 24, 'Dolj', '1', '+40 0213318046', 'smith.craiovamall@smith-smith.ro', 'Calea Bucuresti, Nr.80, in incinta Centrului Comercial Electrop', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '00:00:00', '00:00:00', '', '44.312907', '23.837049'),
(22, '2014-12-22 13:01:26', 'yes', 26, 'Dolj', '1', '+40 251 444 501', 'smith.filiasi@smith-smith.ro', 'Filiasi,Str. Stadion, Bl.I1, parter', '08:00:00', '16:00:00', '08:30:00', '13:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', '44.317287', '23.813517'),
(23, '2014-12-22 13:04:16', 'yes', 27, 'Vrancea', '1', '+40 0213318049', 'smith.focsani@smith-smith.ro', 'Str. Mihail Kogalniceanu nr. 25, Bl. 10, parter', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', 'vis-a-vis de Parcul Central si Piata Unirii.', '45.697487', '27.186699'),
(24, '2014-12-22 13:06:26', 'yes', 28, 'Galati', '1', '+40 0213318050', 'smith.galati@smith-smith.ro', 'Str. Domneasca nr. 24 (in incinta Coplexului Modern)', '10:00:00', '21:00:00', '10:00:00', '21:00:00', '10:00:00', '21:00:00', '00:00:00', '00:00:00', '', '45.168094', '28.792344'),
(25, '2014-12-22 13:06:26', 'yes', 28, 'Galati', '1', '+40 0213318050', 'smith.galati@smith-smith.ro', 'Str. Brailei nr 220 (in incinta Centrului Comercial Dunarea)', '10:00:00', '21:00:00', '10:00:00', '21:00:00', '10:00:00', '21:00:00', '00:00:00', '00:00:00', '', '45.553949', '28.049405'),
(26, '2014-12-22 13:06:26', 'yes', 29, 'Iasi', '1', '+40 021 331 8052', 'smith.iasimall@smith-smith.ro', 'Blvd. Tudor Vladimirescu nr.1 Iulius Mall, Parter', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '00:00:00', '00:00:00', 'In incinta Iulius Mall, la parter (zona Carrefour Market), in fata Farmaciei Aris si a ghiseelor Evenimentul si Quick Mobile.', '47.155211', '27.605655'),
(27, '2014-12-22 13:06:26', 'yes', 29, 'Iasi', '1', '+40 213318051', 'smith.iasi@smith-smith.ro', 'Str.Costache Negri, nr.37, bl. P1, ap.3', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', 'Autobuz 43,46,41,14; maxi-taxi 20; tramvai 1,2,3,6,7,13\nla 5 minute de mers de jos pana la Hala', '47.161194', '27.589273'),
(28, '2014-12-22 13:14:49', 'yes', 30, 'Vrancea', '1', '+40 0722323486', 'sauronmoneymg2013@yahoo.com', 'Agent SC Sauronmoneymg SRL, Str. Nicolae Titulescu, Nr. 100', '09:30:00', '15:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', '45.906628', '27.089038'),
(29, '2014-12-22 13:18:06', 'yes', 25, 'Arges', '1', '+40 0213318047', 'smith.curteadearges@smith-smith.ro', 'B-dul Basarabilor Bl. A1, Complex Unic', '08:30:00', '17:00:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', '45.149666', '24.675642'),
(30, '2014-12-22 13:20:27', 'yes', 31, 'Neamt', '1', '+40 021 331 805', 'smith.piatraneamt@smith-smith.ro', 'Str. Mihai Eminescu Nr. 5 Bl. D6 Ap. 2', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', '', '46.929268', '26.370207'),
(31, '2014-12-22 13:22:28', 'yes', 32, 'Arges', '1', '+40213318054', 'smith.pitesti@smith-smith.ro', 'Str. Victoriei nr 12, parter Trivale', '09:00:00', '21:00:00', '09:00:00', '21:00:00', '09:00:00', '21:00:00', '00:00:00', '00:00:00', 'Mall Trivale', '44.857006', '24.873185'),
(32, '2014-12-22 13:25:06', 'yes', 33, 'Prahova', '1', '+40213318055', 'smith.ploiesti@smith-smith.ro', 'Str. Stefan Greceanu Nr.3-5, Bl.L1-L2 parter', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', '', '44.942708', '26.027112'),
(33, '2014-12-22 13:27:04', 'yes', 34, 'Suceava', '1', '+40 021 331 8056', 'smith.radauti@smith-smith.ro', 'Str. Piata Garoafelor Nr 1, Radauti', '08:30:00', '17:00:00', '10:00:00', '15:00:00', '00:00:00', '00:00:00', '13:00:00', '13:30:00', '', '44.423510', '26.092032'),
(34, '2014-12-22 13:36:01', 'yes', 35, 'Valcea', '1', '+40213318058', 'smith.ramnivalcea@smith-smith.ro', 'Calea lui Traian nr 121, parter', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '00:00:00', '00:00:00', '', '45.102841', '24.363384'),
(35, '2014-12-22 13:27:04', 'yes', 36, 'Neamt', '1', '+40 021 331 805', 'smith.roman@smith-smith.ro', 'Pietonal Stefan cel Mare, bl.7, parter 1', '08:30:00', '17:00:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', 'In zona pietonala Stefan cel Mare, intrarea dinspre Romtelecom (la al doilea pasaj de trecere) sau intrarea dinspre Casa Pionerilor la etajul superior al pietonalului.', '46.922683', '26.925253'),
(36, '2014-12-22 13:27:04', 'yes', 37, 'Teleorman', '1', '+40 0213318057', 'smith.rosiori@smith-smith.ro', 'Str. Rahovei Bloc 109, parter', '08:30:00', '17:00:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', 'In zona centrala a orasului pe strada pietonala Rahova vis-a-vis de Posta Mica, la 30 m de BCR inspre ceas.', '44.111795', '24.992156'),
(37, '2014-12-22 13:45:39', 'yes', 38, 'Sibiu', '1', '+40 0213318060', 'smith.sibiu@smith-smith.ro', 'Selimbar, Str. Sibiului nr. 5, DN 1-km 306, Sibiu Shopping City', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '00:00:00', '00:00:00', 'Autobuz: 15 (Tursib)In incinta complexului comercial Sibiu Shopping City situat la iesirea dinspre Sibiu spre Selimbar pe partea dreapta. Suntem situati intre magazinul Flanco si intrarea in Magazinul Carrefour.', '45.777411', '24.171073'),
(38, '2014-12-22 13:53:23', 'yes', 39, 'Olt', '1', '+4021338061', 'smith.slatina@smith-smith.ro', 'Bd.Alex.Ioan Cuza nr20, parter', '09:00:00', '20:00:00', '09:00:00', '16:00:00', '09:00:00', '14:00:00', '00:00:00', '00:00:00', 'Este situata pe B-dul Alex.Ioan Cuza nr. 20 Complexul Comercial OLTUL', '44.427984', '24.367144'),
(39, '2014-12-22 13:56:42', 'yes', 40, 'Suceava', '1', '+40 0213318062', 'smith.suceava@smith-smith.ro', 'Str. Marasesti, Nr. 44B, parter', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', 'Autobuze: 2, 4 si 5.\nIn spatele Catedralei, langa Consulatul Ucrainei.', '47.647373', '26.250015'),
(40, '2014-12-22 13:56:42', 'yes', 41, 'Dambovita', '1', '+40213318063', 'smith.targoviste@smith-smith.ro', 'Str. Colonel Baltaretu Nr.36', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', 'Mijloace de transport in comun: autobuzele 1, 2, 3, 4, 9, 12, 16, statia Colonel Baltaretu\nIn centrul orasului, intre Casa Sindicatelor si PAVCOM. Agentia este situata in acelasi sediu cu scoala de soferi Gigalo.', '44.921200', '25.455161'),
(41, '2014-12-22 13:56:42', 'yes', 42, 'Gorj', '1', '+40 0213318064', 'smith.timisoara@smith-smith.ro', 'Bdul. Republicii, Bl.24, parter', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', '', '45.043089', '23.283379'),
(42, '2014-12-22 13:56:42', 'yes', 43, 'Galati', '1', '+40 0213318065', 'smith.tecuci@smith-smith.ro', 'Str. 1 Decembrie 1918, nr. 56', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', '', '45.844356', '27.430357'),
(43, '2014-12-22 14:07:21', 'yes', 44, 'Timis', '1', '+40213318066', 'smith.timisoara@smith-smith.ro', 'Str. C. Brediceanu, nr. 8, Piata 700', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '00:00:00', '00:00:00', 'Mijloace de transport:autobuze care au statie in Piata 700 sau cu tramvaiul\nLa parterul cladirii Saiftim, in apropiere de centrul orasului, langa Piata 700, la 50 de m de statia de tramvai', '45.756675', '21.224848'),
(44, '2014-12-22 14:07:21', 'yes', 44, 'Timis', '1', '+40 0213318067', 'smith.timisoara@smith-smith.ro', 'Str. Demetriade Nr. 1; Iulius Mall', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '10:00:00', '22:00:00', '00:00:00', '00:00:00', 'Trolebuz: 18, 14, 17, 40; expres 2, 1.\nIn incinta Iulius Mall, langa Doriodo Just Play, aleea principala spre Foodcourt intrarea dinspre Calea Aradului.', '45.766314', '21.228113'),
(45, '2014-12-22 14:10:55', 'yes', 45, 'Tulcea', '1', '+40 0213318068', 'smith.tulcea@smith-smith.ro', 'Str. Isaccei nr. 57, ( Bloc Pelican - mezanin )', '08:30:00', '18:30:00', '10:00:00', '15:00:00', '10:00:00', '13:00:00', '00:00:00', '00:00:00', 'In cadrul complexului Pelican, la o distanta de cca 100 m de gara si autogara.', '45.179996', '28.778129');

-- --------------------------------------------------------

--
-- Table structure for table `ss_newsletter_list`
--

CREATE TABLE IF NOT EXISTS `ss_newsletter_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ss_newsletter_list`
--

INSERT INTO `ss_newsletter_list` (`id`, `email`, `date_added`) VALUES
(2, 'mihai@asdf.ro', '2014-12-30 07:47:02'),
(4, 'a.mocioi@gmail.com', '2014-12-30 07:55:03'),
(5, 'a.mocioi1@gmail.com', '2014-12-30 08:47:11'),
(6, 'a.mocioi2@gmail.com', '2014-12-30 09:25:16'),
(7, 'a.mocio12i@gmail.com', '2014-12-30 10:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `ss_payments`
--

CREATE TABLE IF NOT EXISTS `ss_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificator unic tabela',
  `unid` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'identificator unic tranzactie; se genereaza in controller',
  `id_user` int(11) NOT NULL COMMENT 'id utilizator caruia ii apartine tranzactia',
  `id_payment_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'modalitatea de plata: cont sau card',
  `amount_in` decimal(7,2) NOT NULL COMMENT 'suma',
  `currency_in` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'moneda',
  `amount_out` decimal(7,2) NOT NULL COMMENT 'suma platita beneficiarului',
  `currency_out` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'moneda sumei platita beneficiarului',
  `rate` decimal(6,4) DEFAULT NULL COMMENT 'rata de schimb currency_in in currency_out',
  `fee` decimal(7,2) NOT NULL COMMENT 'comision',
  `total` decimal(7,2) NOT NULL COMMENT 'suma totala',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(3) unsigned NOT NULL COMMENT 'stare: 1 in curs de procesare, 50 in curs de plata, 100 platita',
  `id_ben_payment_method` tinyint(3) unsigned NOT NULL COMMENT 'id modalitate de plata beneficiar',
  `id_ben_city` tinyint(3) unsigned NOT NULL COMMENT 'id oras beneficiar',
  `ben_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'adresa beneficiar',
  `ben_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nume beneficiar',
  `ben_surname` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'prenume beneficiar',
  `ben_phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'telefon beneficiar',
  `ben_email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'adresa de mail beneficiar',
  `ben_iban` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'iban beneficiar',
  `pin` varchar(25) DEFAULT NULL COMMENT 'pin-ul tranzactiei primit din server SS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- Dumping data for table `ss_payments`
--

INSERT INTO `ss_payments` (`id`, `unid`, `id_user`, `id_payment_type`, `amount_in`, `currency_in`, `amount_out`, `currency_out`, `rate`, `fee`, `total`, `date_added`, `status`, `id_ben_payment_method`, `id_ben_city`, `ben_address`, `ben_name`, `ben_surname`, `ben_phone`, `ben_email`, `ben_iban`, `pin`) VALUES
(92, '#S546e6ef3bf544', 8, 'card', '50.00', 'ron', '0.00', '', NULL, '1.23', '124.24', '2014-11-20 22:45:07', 80, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', 'RO121', NULL),
(93, '#S546f5ce1b47ae', 8, 'card', '100.00', 'ron', '0.00', '', NULL, '1.00', '101.00', '2014-11-21 15:40:17', 1, 1, 7, '', '', '', '', '', '', NULL),
(94, '#S546fb25e8632b', 8, 'card', '123.00', 'ron', '0.00', '', NULL, '1.23', '124.23', '2014-11-21 21:45:02', 1, 1, 7, 'asdf', 'gigel', 'andrei', '43204320', 'a@b.ro', 'asdf', NULL),
(95, '#S547318e357d0e', 8, 'card', '100.00', 'ron', '0.00', '', NULL, '1.00', '101.00', '2014-11-24 11:39:15', 1, 1, 7, '', '', '', '', '', '', NULL),
(96, '#S54899b2766ddd', 8, 'card', '1234.00', 'ron', '0.00', '', NULL, '12.34', '1246.34', '2014-12-11 13:24:55', 1, 1, 7, 'asdf', 'asdf', 'horia', '0723276206', 'a.mocioi@gmail.com', '1234', NULL),
(97, '#S54899bf91a9c7', 8, 'card', '4321.00', 'ron', '0.00', '', NULL, '43.21', '4364.21', '2014-12-11 13:28:25', 1, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', 'RO121', NULL),
(98, '#S54899e5404144', 8, 'card', '1234.00', 'ron', '1234.00', 'ron', NULL, '12.34', '1246.34', '2014-12-11 13:38:28', 1, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', '', NULL),
(99, '#S5489a09f1b327', 8, 'card', '1234.00', 'ron', '1234.00', 'ron', NULL, '12.34', '1246.34', '2014-12-11 13:48:15', 1, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', '1234', NULL),
(100, '#S5489a229a457f', 8, 'card', '1243.00', 'ron', '1243.00', 'ron', '0.0000', '12.43', '1255.43', '2014-12-11 13:54:49', 1, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', '1234', NULL),
(101, '#S5489a41cd6331', 8, 'card', '4321.00', 'ron', '4321.00', 'ron', '4.4509', '43.21', '4364.21', '2014-12-11 14:03:08', 1, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', '1234', NULL),
(102, '#S5489a85381bdc', 8, 'card', '543.00', 'ron', '543.00', 'ron', NULL, '5.43', '548.43', '2014-12-11 14:21:07', 1, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', '1234', NULL),
(103, '#S5489a8819b655', 8, 'card', '654.00', 'eur', '654.00', 'eur', NULL, '6.54', '660.54', '2014-12-11 14:21:53', 1, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', '1234', NULL),
(104, '#S5489a8d7e99be', 8, 'card', '987.00', 'eur', '987.00', 'ron', '4.4509', '9.87', '996.87', '2014-12-11 14:23:19', 1, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', '1234', NULL),
(105, '#S5489a9fadeda1', 8, 'card', '543.00', 'ron', '999.00', '999', '9.9999', '999.00', '548.43', '2014-12-11 14:28:10', 1, 5, 7, 'XXXF', 'XXXA', 'XXXB', 'XXXC', 'XXXD', 'XXXE', '231'),
(106, '#S549d2a75c9df5', 8, 'Card', '1234.00', 'eur', '5492.41', 'ron', '4.4509', '123.40', '1357.40', '2014-12-26 09:29:25', 1, 1, 0, '', 'mihai', 'mihaescu', '', '', NULL, NULL),
(107, '#S549d2abd28c59', 8, 'Cont', '4321.00', 'eur', '4321.00', 'eur', NULL, '432.10', '4753.10', '2014-12-26 09:30:37', 1, 2, 0, '', 'mihai', 'mihaescu', '', '', NULL, NULL),
(108, '#S549d2b45402cc', 8, 'Cont', '432.00', 'ron', '432.00', 'ron', NULL, '43.20', '475.20', '2014-12-26 09:32:53', 1, 3, 0, '', 'mihai', 'mihaescu', '', '', NULL, NULL),
(109, '#S549d2e7ddec15', 8, 'card', '20000.00', 'eur', '20000.00', 'eur', NULL, '2000.00', '22000.00', '2014-12-26 09:46:37', 1, 6, 0, 'BucurestiSubcetate62-70', 'mihai', 'mihaescu', '43204320', 'a.mocioi@gmail.com', 'RO45WBAN0000999900149377', NULL),
(110, '#S549d2fb1e504a', 8, 'card', '1235.00', 'eur', '5496.86', 'ron', '4.4509', '123.50', '1358.50', '2014-12-26 09:51:45', 1, 6, 0, 'BucurestiSubcetate62-70', 'mihai', 'mihaescu', '0723276206', 'dsfdsf@gmail.com', 'RO45WBAN0000999900149377', NULL),
(111, '#S549d2fe86f900', 8, 'card', '1200.00', 'eur', '1200.00', 'eur', NULL, '120.00', '1320.00', '2014-12-26 09:52:40', 1, 1, 0, '', 'mihai', 'mihaescu', '', '', NULL, NULL),
(112, '#S549d30908224c', 8, 'cont', '432.00', 'eur', '432.00', 'eur', NULL, '43.20', '475.20', '2014-12-26 09:55:28', 1, 4, 0, '', 'asdf', 'fdsa', '', '', NULL, NULL),
(113, '#S549d31e1ddcae', 8, 'cont', '456.00', 'eur', '2029.61', 'ron', '4.4509', '45.60', '501.60', '2014-12-26 10:01:05', 1, 3, 0, '', 'mihai', 'mihaescu', '', '', NULL, NULL),
(114, '#S549d327067fbb', 8, 'cont', '777.00', 'eur', '3458.35', 'ron', '4.4509', '77.70', '854.70', '2014-12-26 10:03:28', 1, 5, 21, 'Bucuresti Aviatiei', 'mihai', 'mihaescu', '0723276206', 'a.mocioi@gmail.com', NULL, NULL),
(115, '#S54a00a4f4aca3', 8, 'card', '1200.00', 'ron', '1200.00', 'ron', NULL, '120.00', '1320.00', '2014-12-28 13:49:03', 1, 1, 0, '', 'asdf', 'fdsa', '', '', NULL, NULL),
(116, '#S54a00a8641f9c', 8, 'card', '1234.00', 'ron', '1234.00', 'ron', NULL, '123.40', '1357.40', '2014-12-28 13:49:58', 1, 1, 0, '', 'andrei', 'andreescu', '', '', NULL, NULL),
(117, '#S54a00ab398a77', 8, 'card', '1234.00', 'ron', '1234.00', 'ron', NULL, '123.40', '1357.40', '2014-12-28 13:50:43', 1, 1, 0, '', 'mihai', 'fdsa', '', '', NULL, NULL),
(118, '#S54a00b4749e00', 8, 'card', '1200.00', 'ron', '1200.00', 'ron', NULL, '120.00', '1320.00', '2014-12-28 13:53:11', 1, 5, 25, 'Bucuresti Subcetate 62-70', 'mihaescu', 'mihai', '0723276206', 'a.mocioi@gmail.com', NULL, NULL),
(119, '#S54a00d4f3818b', 8, 'card', '1500.00', 'ron', '1500.00', 'ron', NULL, '150.00', '1650.00', '2014-12-28 14:01:51', 1, 3, 0, '', 'mihaescu', 'mihai', '', '', NULL, NULL),
(120, '#S54a00ddde44b4', 8, 'card', '1200.00', 'ron', '1200.00', 'ron', NULL, '120.00', '1320.00', '2014-12-28 14:04:13', 1, 6, 0, 'Bucuresti Subcetate 62-70', 'mihaescu', 'mihai', '0723276206', 'dsfdsf@gmail.com', 'RO45WBAN0000999900149377', NULL),
(121, '#S54a00e0e35b8d', 8, 'card', '1500.00', 'ron', '1500.00', 'ron', NULL, '150.00', '1650.00', '2014-12-28 14:05:02', 1, 5, 10, 'Bucuresti Subcetate 62-70', 'mihaescu', 'mihai', '0723276206', 'dsfdsf@gmail.com', NULL, NULL),
(122, '#S54a00f1eee8bf', 8, 'cont', '1200.00', 'eur', '5341.08', 'ron', '4.4509', '120.00', '1320.00', '2014-12-28 14:09:35', 1, 6, 0, 'Bucuresti Aviatiei', 'mihai', 'mihai', '0723276206', 'dsfdsf@gmail.com', 'RO45WBAN0000999900149377', NULL),
(123, '#S54a017ff441b9', 8, 'card', '12.00', 'ron', '12.00', 'ron', NULL, '1.20', '13.20', '2014-12-28 14:47:27', 1, 5, 9, 'Bucuresti Subcetate 62-70', 'mihaescu', 'mihai', '0723276206', 'a.mocioi@gmail.com', NULL, NULL),
(124, '#S54a018769aafe', 8, 'card', '1209.00', 'ron', '1209.00', 'ron', NULL, '120.90', '1329.90', '2014-12-28 14:49:26', 1, 1, 0, '', 'mihaescu', 'mihai', '', '', NULL, NULL),
(125, '#S54a0189a506f5', 8, 'card', '12.00', 'ron', '12.00', 'ron', NULL, '1.20', '13.20', '2014-12-28 14:50:02', 1, 1, 0, '', 'mihaescu', 'mihai', '', '', NULL, NULL),
(126, '#S54a018d8c134b', 8, 'card', '122.00', 'ron', '122.00', 'ron', NULL, '12.20', '134.20', '2014-12-28 14:51:04', 1, 1, 0, '', 'mihaescu', 'mihai', '', '', NULL, NULL),
(127, '', 0, '', '0.00', '', '0.00', '', NULL, '0.00', '0.00', '2015-01-03 13:14:09', 0, 0, 0, NULL, '', '', NULL, NULL, NULL, NULL),
(128, '', 0, '', '0.00', '', '0.00', '', NULL, '0.00', '0.00', '2015-01-03 13:14:21', 0, 0, 0, NULL, '', '', NULL, NULL, NULL, NULL),
(129, '#S54a7eb46be507', 8, 'card', '1200.00', 'eur', '5341.08', 'ron', '4.4509', '120.00', '1320.00', '2015-01-03 13:14:54', 1, 1, 0, '', 'mihaescu', 'mihai', '', '', NULL, NULL),
(130, '#S54a7ec8c9568d', 8, 'card', '1234.00', 'eur', '5492.41', 'ron', '4.4509', '123.40', '1357.40', '2015-01-03 13:20:25', 1, 1, 0, '', 'mihaescu', 'mihai', '', '', NULL, NULL),
(131, '#S54a7f5193bfdf', 8, 'card', '1200.00', 'eur', '5341.08', 'ron', '4.4509', '120.00', '1320.00', '2015-01-03 13:56:50', 1, 1, 0, '', 'mihaescu', 'mihai', '', '', NULL, NULL),
(132, '#S54a7f7cc9fd42', 8, 'card', '1200.00', 'eur', '5341.08', 'ron', '4.4509', '120.00', '1320.00', '2015-01-03 14:08:35', 1, 1, 0, '', 'mihaescu', 'mihai', '', '', NULL, NULL),
(133, '#S54a7fbe398c4e', 8, 'card', '1200.00', 'eur', '5341.08', 'ron', '4.4509', '120.00', '1320.00', '2015-01-03 14:25:44', 1, 1, 0, '', 'mihaescu', 'mihai', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ss_payment_methods`
--

CREATE TABLE IF NOT EXISTS `ss_payment_methods` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ss_payment_methods`
--

INSERT INTO `ss_payment_methods` (`id`, `name`) VALUES
(1, 'ro:Numerar la Smith & Smith'),
(2, 'ro:Numerar la Banca Comerciala Romana'),
(3, 'ro:Numerar la Romanian International Bank'),
(4, 'ro:Numerar la Victoria Bank'),
(5, 'ro:Numerar la Livrarea Acasa | en: Cash on home delivery'),
(6, 'ro:In Cont LEI Romania'),
(7, 'ro:In Cont EUR Romania'),
(8, 'ro:In Cont EUR UE');

-- --------------------------------------------------------

--
-- Table structure for table `ss_pay_orders`
--

CREATE TABLE IF NOT EXISTS `ss_pay_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unid` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'unid-ul tranzactiei din ss_payments sau ss_invoices',
  `unid_type` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'S - ss_payments, F - ss_invoices',
  `pay_type` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'card, cont',
  `status` int(1) unsigned NOT NULL COMMENT 'initiata, finalizata cu succes sau nefinalizata',
  `amount` decimal(7,2) NOT NULL COMMENT 'suma',
  `currency` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'moneda',
  `p_sign` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'cod de securitate calculat per plata',
  `resp_action` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0 - tranzactie aprobata 1 - tranzactie duplicata 2 - tranzatie respinsa 3 - eroare de procesare',
  `resp_rc` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Valoare generata de banca emitenta conform standardului ISO8583',
  `resp_message` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descrierea codului de eroare din campul RC',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ts adaugarii',
  `resp_ts` timestamp NULL DEFAULT NULL COMMENT 'ts primirii raspunsului',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabela in care stochez informatiile despre efectuarea platilor' AUTO_INCREMENT=100052 ;

--
-- Dumping data for table `ss_pay_orders`
--

INSERT INTO `ss_pay_orders` (`id`, `unid`, `unid_type`, `pay_type`, `status`, `amount`, `currency`, `p_sign`, `resp_action`, `resp_rc`, `resp_message`, `date_added`, `resp_ts`) VALUES
(100001, '#S546e6ef3bf544', '', '', 0, '100.00', 'RON', NULL, NULL, NULL, NULL, '2014-12-19 12:09:24', NULL),
(100002, '#S546e6ef3bf544', '', '', 0, '100.00', 'RON', NULL, NULL, NULL, NULL, '2014-12-19 12:09:29', NULL),
(100003, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', NULL, NULL, NULL, NULL, '2014-12-19 12:17:12', NULL),
(100004, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', NULL, NULL, NULL, NULL, '2014-12-19 12:36:57', NULL),
(100005, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', 'B9C083EEC3943D85167D1EF1B8CE2C3F29874B23', NULL, NULL, NULL, '2014-12-19 12:37:12', NULL),
(100006, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', 'D8A693FEC15584B43101AD4DE29AB848C67E7F64', NULL, NULL, NULL, '2014-12-19 14:44:06', NULL),
(100007, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', 'EBF7277EF49CFFCF36F6316D9A00A2BCF443E719', NULL, NULL, NULL, '2014-12-19 15:00:18', NULL),
(100008, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', '5D192352F608463001294797E178568427DC3DFB', NULL, NULL, NULL, '2014-12-19 15:01:20', NULL),
(100009, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', 'B96FBD00FDCB1E66AC0F1AD716BE84246A8478A7', NULL, NULL, NULL, '2014-12-19 15:05:18', NULL),
(100010, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', '6CA3725951ADD39994CBF061E9DA70AA6A7C4ADA', NULL, NULL, NULL, '2014-12-19 15:07:47', NULL),
(100011, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', 'D80234D8F5BD3E0F508733C42CCF082F12567A8B', NULL, NULL, NULL, '2014-12-19 15:09:25', NULL),
(100012, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', '9F4704FCEE9A4DB702E4DE8FA4F8D8E4E56DBEDB', NULL, NULL, NULL, '2014-12-19 15:09:50', NULL),
(100013, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', 'CE4A4596E971247D2A0044191DB83DBC31B02D5F', NULL, NULL, NULL, '2014-12-20 21:12:16', NULL),
(100014, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', '3B913FE611A7DB78EA64A5B358848D4563B0EBDA', NULL, NULL, NULL, '2014-12-20 21:14:10', NULL),
(100015, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', 'CB97FAC441BE70595C0491EEAEE5BA83F080FAEC', NULL, NULL, NULL, '2014-12-20 21:14:28', NULL),
(100016, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', '095B0FA4A0E0FEA026365CC3FF5C78E65704E322', NULL, NULL, NULL, '2014-12-20 21:14:57', NULL),
(100017, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', '83996F4EA8E673CCED770CD77ABCCAA48ED6768E', NULL, NULL, NULL, '2014-12-20 21:16:09', NULL),
(100018, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', '354C665702FDB75D76E041E0E5AD2B366CA0DE22', '0', '00', 'Approved', '2014-12-20 21:18:48', '2014-12-20 19:19:08'),
(100019, '#S546e6ef3bf544', 'S', 'card', 3, '100.00', 'RON', '45395D2C418CDD96469673BD71501996D11B322F', '1', '54', 'Expired card', '2014-12-20 21:20:16', '2014-12-20 19:20:31'),
(100020, '#S546e6ef3bf544', 'S', 'card', 3, '100.00', 'RON', '8E01B262FDA9132D3DE5BB70DDCF196E0788323C', '2', '-1', 'Authentication failed', '2014-12-20 21:20:57', '2014-12-20 19:21:09'),
(100021, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', '4A8BE07ACE8770A43340E207D58AE1C107B905D3', NULL, NULL, NULL, '2014-12-20 22:46:13', NULL),
(100022, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', '8AC4B43ACB2DE9C081DE3D1828D1520890A82092', NULL, NULL, NULL, '2014-12-20 22:47:57', NULL),
(100023, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', 'CD71A9456D1A3A524E0BC523874FA772A716968D', '0', '00', 'Approved', '2014-12-20 22:48:49', '2014-12-20 20:48:58'),
(100024, '#S546e6ef3bf544', 'S', 'card', 3, '100.00', 'RON', '8E265CFD6BA4EB91B0A57697DF938208532BE6D7', '1', '54', 'Expired card', '2014-12-20 23:05:53', '2014-12-20 21:06:09'),
(100025, '#S546e6ef3bf544', 'S', 'card', 3, '100.00', 'RON', '6F5F565C996A1E193D0B11C66FAE2752A5988245', '1', '54', 'Expired card', '2014-12-20 23:14:21', '2014-12-20 21:14:38'),
(100026, '#S12', 'S', 'card', 3, '100.00', 'RON', 'F8729ED26ACFFA8D76CFEA2BF16177DB531F3F6C', '1', '54', 'Expired card', '2014-12-20 23:17:02', '2014-12-20 21:17:16'),
(100027, '#S12', 'S', 'card', 3, '100.00', 'RON', '6DA80C900E4B5E2314BBA82EC56C3EC4B1357693', '1', '54', 'Expired card', '2014-12-20 23:19:17', '2014-12-20 21:19:26'),
(100028, '#S12', 'S', 'card', 3, '100.00', 'RON', '27F6ADAB4A3E021D064B93626CB9F6AF98516FF5', '1', '54', 'Expired card', '2014-12-20 23:19:28', '2014-12-20 21:19:42'),
(100029, '#S12', 'S', 'card', 1, '100.00', 'RON', '8C219F2E03839601C1A0E9E31B2ABB283482549C', NULL, NULL, NULL, '2014-12-20 23:19:45', NULL),
(100030, '#S12', 'S', 'card', 2, '100.00', 'RON', '6BFCBED613F2917CCE429CD6284A636BE9B234BE', '0', '00', 'Approved', '2014-12-20 23:54:41', '2014-12-20 21:54:57'),
(100031, '#S12', 'S', 'card', 4, '100.00', 'RON', 'C7C2212C7B49FE1A50C7E5A238AFB688F4198038', '0', '00', 'Approved', '2014-12-21 00:30:32', '2014-12-20 22:30:48'),
(100032, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', 'FEBA0AA3F315A89EF003B5DA0E7409632DC3C28D', '0', '00', 'Approved', '2014-12-21 01:06:51', '2014-12-20 23:07:06'),
(100033, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', '82EB95AA3438573BA830C0E52A514EB0092CB347', '0', '00', 'Approved', '2014-12-21 01:10:04', '2014-12-20 23:10:16'),
(100034, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', '84FD93A910D512B4FF8AB7222FE6D04193CE3A05', '0', '00', 'Approved', '2014-12-21 01:15:00', '2014-12-20 23:15:09'),
(100035, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', 'E44E39F517E058D08E40DC1ED8FD45E89DE387D0', '0', '00', 'Approved', '2014-12-21 01:20:24', '2014-12-20 23:20:44'),
(100036, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', 'FF2B541D9A481E66541CEF3671DD10F935544854', '0', '00', 'Approved', '2014-12-21 01:22:05', '2014-12-20 23:22:13'),
(100037, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', '2F5A733013D3BC45F840DCD0CE024714A8CC64B2', '0', '00', 'Approved', '2014-12-21 01:25:21', '2014-12-20 23:25:35'),
(100038, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', '4ADB1D6C11606632D69B56B6863B26DB859E0E5E', '0', '00', 'Approved', '2014-12-21 01:28:11', '2014-12-20 23:28:19'),
(100039, '#S546e6ef3bf544', 'S', 'card', 3, '100.00', 'RON', '2AA7A416270D10E2C66095A2F33A61CDB8BD5099', '1', '54', 'Expired card', '2014-12-21 01:39:29', '2014-12-20 23:39:45'),
(100040, '#S546e6ef3bf544', 'S', 'card', 2, '100.00', 'RON', 'FEFBD5AD737F23BEF85039CF9F747C008D507457', '0', '00', 'Approved', '2014-12-21 01:52:19', '2014-12-20 23:52:33'),
(100041, '#S546e6ef3bf544', 'S', 'card', 3, '100.00', 'RON', 'F4115AC8F41137B81FA77BA94EAC10B930AC04F5', '1', '54', 'Expired card', '2014-12-21 01:53:45', '2014-12-20 23:53:56'),
(100042, '#S54a00b4749e00', 'S', 'card', 1, '1200.00', 'ron', 'A7A4F9C031287FA6F2768260A270CB24B5D363A4', NULL, NULL, NULL, '2014-12-28 13:53:13', NULL),
(100043, '#S54a00e0e35b8d', 'S', 'card', 1, '1500.00', 'ron', '9B7AB5CDD81ADA18490CD6E0B377A8842F4613CB', NULL, NULL, NULL, '2014-12-28 14:05:03', NULL),
(100044, '#S546e6ef3bf544', 'S', 'card', 1, '100.00', 'RON', '11D24BC5DAFC4941E45B2CFB152CD1972409E814', NULL, NULL, NULL, '2014-12-28 14:06:29', NULL),
(100045, '#S54a0189a506f5', 'S', 'card', 1, '12.00', 'ron', 'F1611C713093CDE924E2F07B52340D1FA09A1D22', NULL, NULL, NULL, '2014-12-28 14:50:04', NULL),
(100046, '#S54a018d8c134b', 'S', 'card', 1, '122.00', 'ron', '6AEDEBF423B8B1822ED3215D64D205DA7DE06119', NULL, NULL, NULL, '2014-12-28 14:51:06', NULL),
(100047, '#S54a7eb46be507', 'S', 'card', 1, '1200.00', 'eur', '4A2D9B0D60EA658BFA81777D73EAE4C4917CE20A', NULL, NULL, NULL, '2015-01-03 13:14:55', NULL),
(100048, '#S54a7ec8c9568d', 'S', 'card', 1, '1234.00', 'eur', '17D6010DDA55D8AF6F0A77FDAE2543A014B2CD4B', NULL, NULL, NULL, '2015-01-03 13:20:26', NULL),
(100049, '#S54a7f5193bfdf', 'S', 'card', 1, '1200.00', 'eur', 'BF2A5B9E4C8F28D257536E2F54CFE9386D008FE2', NULL, NULL, NULL, '2015-01-03 13:56:51', NULL),
(100050, '#S54a7f7cc9fd42', 'S', 'card', 1, '1200.00', 'eur', 'B7A1C1F4F64F089067DD6793F72F7F4220CEAD27', NULL, NULL, NULL, '2015-01-03 14:08:37', NULL),
(100051, '#S54a7fbe398c4e', 'S', 'card', 1, '1200.00', 'eur', '6D4B1D7BEF168D973037751CCAA9A9D8B65B98F2', NULL, NULL, NULL, '2015-01-03 14:25:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ss_profiles`
--

CREATE TABLE IF NOT EXISTS `ss_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_profile_type` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ss_profiles`
--

INSERT INTO `ss_profiles` (`id`, `name`, `value`, `id_profile_type`) VALUES
(1, 'Prenume Gheorghe', 'George, Gheorghe', 1),
(2, 'Prenume beneficiar Vasile', 'Vasile', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ss_suppliers`
--

CREATE TABLE IF NOT EXISTS `ss_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IBAN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_cat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `s1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t1` enum('','date','number','text','textarea','') COLLATE utf8_unicode_ci DEFAULT NULL,
  `s2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t2` enum('','date','number','text','textarea','') COLLATE utf8_unicode_ci DEFAULT NULL,
  `s3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3` enum('','date','number','text','textarea','') COLLATE utf8_unicode_ci DEFAULT NULL,
  `s4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t4` enum('','date','number','text','textarea','') COLLATE utf8_unicode_ci DEFAULT NULL,
  `s5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t5` enum('','date','number','text','textarea','') COLLATE utf8_unicode_ci DEFAULT NULL,
  `s6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t6` enum('','date','number','text','textarea','') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ss_suppliers`
--

INSERT INTO `ss_suppliers` (`id`, `name`, `IBAN`, `bank`, `id_cat`, `s1`, `t1`, `s2`, `t2`, `s3`, `t3`, `s4`, `t4`, `s5`, `t5`, `s6`, `t6`) VALUES
(9, 'ENEL', 'RO32INGB0000999912341234', 'ING Bank Romania', 2, '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'Orange SA', 'IBAN Orange', 'BRD GSG', 1, 'ro: Cod client | en: Client code', 'text', 'ro: Data factura| en: Invoice date', 'date', 'ro: Camp 3 numeric ro | en: Camp 3 numeric en', '', 'ro: Camp 4 textarea ro | en: Camp 4 textarea en', 'textarea', 'ro: Camp 5 text ro | en: Camp 5 text en', 'text', 'ro: Camp 6 date ro | en: Camp 6 date en', 'date'),
(12, 'VODAFONE SA', 'IBAN Vodafone', 'ING Bank Romania', 1, 'ro: Cod client | en: Client code', 'text', '', '', '', '', '', '', '', '', '', ''),
(13, 'Banca Libra', '1232324', '0', 0, '0', '', '0', '', '0', '', '0', '', '0', '', '0', ''),
(14, '0', '0', '0', 0, '0', '', '0', '', '0', '', '0', '', '0', '', '0', ''),
(15, 'UPC Tel', '12345678', 'ING Bank', 1, 'ro: Cod client | en: Client code', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ss_suppliers_cat`
--

CREATE TABLE IF NOT EXISTS `ss_suppliers_cat` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ss_suppliers_cat`
--

INSERT INTO `ss_suppliers_cat` (`id`, `name`) VALUES
(1, 'Telecom'),
(2, 'Utilitati'),
(3, 'Bancar');

-- --------------------------------------------------------

--
-- Table structure for table `ss_types`
--

CREATE TABLE IF NOT EXISTS `ss_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('client','beneficiar','fee') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `ss_types`
--

INSERT INTO `ss_types` (`id`, `name`, `type`) VALUES
(1, 'Prenume client', 'client'),
(2, 'Data nasterii client', 'client'),
(3, 'Resedinta client', 'client'),
(4, 'Prenume beneficiar', 'beneficiar'),
(5, 'Data nasterii beneficiar', 'beneficiar'),
(6, 'Numar tranzactii beneficiar', 'beneficiar'),
(7, 'Resedinta beneficiar', 'beneficiar'),
(8, 'Numar tranzactii client', 'client'),
(9, 'Flat', 'fee'),
(10, 'Procent', 'fee'),
(11, 'Interval', 'fee'),
(12, 'Perioada', 'fee'),
(13, 'Client', 'fee'),
(14, 'Beneficiar', 'fee'),
(15, 'Moneda', 'fee'),
(16, 'Tranzactii', 'fee');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birth_date` varchar(100) NOT NULL,
  `account` varchar(32) NOT NULL COMMENT 'client bank account',
  `swift` varchar(32) NOT NULL COMMENT 'client bank swift',
  `bank` varchar(32) NOT NULL COMMENT 'client bank',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `country`, `phone`, `birth_date`, `account`, `swift`, `bank`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1418901054, 1, 'Admin', 'istrator', 'ADMIN', '0', '', '', '', ''),
(8, '::1', 'horia mocioi', '$2y$08$f2TUInf0FyrXGwFe3kVgiu5wYqtt8kClpBXkZxV/xc1ceZho1XYY2', NULL, 'a.mocioi@gmail.com', NULL, NULL, NULL, '11bMMEBYZ0ujgRUspmeRfe', 1415447144, 1419240463, 1, 'Horia Alexandru', 'Mocioi', 'RO', '0040723276206', '06.12.1962', 'ACCT08', 'SWIFT08', 'Bank Post'),
(9, '::1', 'andrei andreescu', '$2y$08$XuDaJ1RZcV91ROMxpYA6X.1Xr.Dv5XXiu89uDS4c3MIxDxa2WiSPi', NULL, 'admin@c.ro', NULL, NULL, NULL, NULL, 1415483462, 1415620435, 1, 'andrei', 'andreescu', 'RO', '+40723276206', '15.09.1981', '', '', ''),
(10, '::1', 'vasile vasilescu', '$2y$08$9DwbP3NJ2qikfQexo.dLvOV7hEmuE0hckUlksR3k8R1T0drt/rxyi', NULL, 'admin@b.ro', '60a2befad3ed0dededcfd6c7aa46db8a2af4e729', NULL, NULL, NULL, 1415483662, NULL, 0, 'vasile', 'vasilescu', 'RO', '+40723276206', '15.09.1981', '', '', ''),
(11, '::1', 'mihai munteanu', '$2y$08$UdPx9XYAWWdo7fyx7ewY9erFVb0tlLuIdCet1S.ewle9z/pqAXNwi', NULL, 'mihai@asdf.ro', NULL, NULL, NULL, NULL, 1415621890, 1415622139, 1, 'mihai', 'munteanu', 'FR', '+40723276206', '15.09.1981', '', '', ''),
(13, '::1', 'alexandru mocioi', '$2y$08$YAm/jkVXNRfdmNizUbrZkuxqM6Kg5F4HQxpQSofEgCTelzs5Kix6G', NULL, 'hello@bookreader.ro', '0c1177103f6b2df85db1907a303f4041f5937847', NULL, NULL, NULL, 1418138356, NULL, 0, 'Alexandru', 'Mocioi', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(14, '::1', 'alexanru1 mocioi1', '$2y$08$Og2qSAMWmxelRk7ycYzNo.He7EUdGMqfNV.XO0vsbXfKSY7WGPgoK', NULL, 'hello1@bookreader.ro', '3ce350535478cfd0e93cbc48bfe31695e969da86', NULL, NULL, NULL, 1418138520, NULL, 0, 'ALexanru1', 'Mocioi1', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(15, '::1', 'alexanru2 mocioi2', '$2y$08$OUQ5FICiMxHZbA/KjvD.LOBYYy5EictbPEJecw5TEidlZGyPE/nDm', NULL, 'hello2@bokreader.ro', '9688880b4876d02db84a0e5475b7f7739468fa36', NULL, NULL, NULL, 1418138994, NULL, 0, 'ALexanru2', 'Mocioi2', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(16, '::1', 'alexanru3 mocioi3', '$2y$08$yf/xPLb2EWQFiacSt6t20u1w3XFRVH5Noigv7tqg0UIda8tNkgZDm', NULL, 'hello3@bokreader.ro', 'c8c7d8b42dc1ae4c39a46553c906ea52719f2a47', NULL, NULL, NULL, 1418139050, NULL, 0, 'ALexanru3', 'Mocioi3', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(17, '::1', 'alexanru4 mocioi4', '$2y$08$ZYq6itiREszlQDyyV4vzve8MzSCc8yk0B2JJmrUrRempRMXUi5RFO', NULL, 'hello4@bokreader.ro', '1b7b239705ffbeff4b1984532182f67fccea05a3', NULL, NULL, NULL, 1418139095, NULL, 0, 'ALexanru4', 'Mocioi4', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(18, '::1', 'alexanru5 mocioi5', '$2y$08$uEZTQ5YyRYA3wA3ayb/pceAPFyvATto79OWW4gTPVIpevfGs7bJai', NULL, 'hello5@bokreader.ro', '0d4567018b8b26678934989dc1217e6c56571643', NULL, NULL, NULL, 1418139239, NULL, 0, 'ALexanru5', 'Mocioi5', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(19, '::1', 'alexanru6 mocioi6', '$2y$08$I5gnlEVQGwD.RmwDRP/UteqpALQFwezym5Pjwnz1F8qfFGGC/P0N.', NULL, 'hello6@bokreader.ro', '5fb650d1a03711796c03a27081db87e1b791f93b', NULL, NULL, NULL, 1418139269, NULL, 0, 'ALexanru6', 'Mocioi6', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(20, '::1', 'alexanru7 mocioi7', '$2y$08$TnaSATVG/YUhv.MsLg1zIevxQqICF49C3wZVlL1gH6hkGz2RINnqK', NULL, 'hello7@bookreader.ro', 'c1aeca0203eaa7e83dd6a4c2ca0a3e24f57bc339', NULL, NULL, NULL, 1418139353, NULL, 0, 'ALexanru7', 'Mocioi7', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(21, '::1', 'alexandru8 mocioi8', '$2y$08$xApeCotoUVsdbjhernndQOwplCrEdywQE.yHiWMEwGdDSe1knmTHa', NULL, 'hello8@bookreader.ro', '37da1974cf95485ad97236408d4efe434940cd36', NULL, NULL, NULL, 1418139623, NULL, 0, 'Alexandru8', 'Mocioi8', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(22, '::1', 'alexandru9 mocioi9', '$2y$08$FfZni4oQ9vCRIhOnzGEyv.a475eoRZKIWQkahRAJOwT28l0e9qfoq', NULL, 'hello9@bookreader.ro', NULL, NULL, NULL, NULL, 1418158676, 1418299895, 1, 'Alexandru9', 'Mocioi9', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(23, '::1', 'alexandru10 mocioi10', '$2y$08$Zf37lrMpt3M2W1XEeljOz.Rlm3X8q4IKGLw3krWlQM.hYJzWLkqhC', NULL, 'hello10@bookreader.ro', 'efd038439cbcaed7694af869cf2f4f1aad9514da', NULL, NULL, NULL, 1418160110, NULL, 0, 'Alexandru10', 'Mocioi10', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(24, '::1', 'alexandru11 mocioi11', '$2y$08$umaMHOzX4hZEyopGuzXceOoRel.5UOggvOo7iasRAp6hrHIsLDDuu', NULL, 'hello11@bookreader.ro', 'c5216762fa3c47a0216084b96e21403991aaaead', NULL, NULL, NULL, 1418160369, NULL, 0, 'Alexandru11', 'Mocioi11', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(25, '::1', 'alexandru12 mocioi12', '$2y$08$XE13HZIFPSbqEPwXx42Pj.T1BlIclL6W1arQkjQXMQsP7lLwINXje', NULL, 'hello12@bookreader.ro', '63e1807cf47c939784832eeadcdc59ceb4140345', NULL, NULL, NULL, 1418160876, NULL, 0, 'Alexandru12', 'Mocioi12', 'Romania', '0723276206', '15.09.1981', '', '', ''),
(26, '::1', 'prenume01 nume01', '$2y$08$XBHFj/F7ufDUG78huoG2eOMdAXd5ChlG6t94nmLdyOqNqgYVaBIBq', NULL, 'email01@email.ro', 'eada6ce655cc12810f750393f876955c106927a9', NULL, NULL, NULL, 1418387464, NULL, 0, 'Prenume01', 'Nume01', 'RO', '1234567890', '15.09.1981', 'ACCT01', 'SWIFT01', 'BANK01');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(9, 8, 2),
(10, 9, 2),
(11, 10, 2),
(12, 11, 2),
(14, 13, 2),
(15, 14, 2),
(16, 15, 2),
(17, 16, 2),
(18, 17, 2),
(19, 18, 2),
(20, 19, 2),
(21, 20, 2),
(22, 21, 2),
(23, 22, 2),
(24, 23, 2),
(25, 24, 2),
(26, 25, 2),
(27, 26, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
