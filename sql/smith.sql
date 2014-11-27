-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2014 at 05:24 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smith`
--

-- --------------------------------------------------------

--
-- Table structure for table `fuel_archives`
--

CREATE TABLE IF NOT EXISTS `fuel_archives` (
`id` int(10) unsigned NOT NULL,
  `ref_id` int(10) unsigned NOT NULL,
  `table_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `version` smallint(5) unsigned NOT NULL,
  `version_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `archived_user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=218 ;

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
(137, 1, 'ss_fees', '{"id":1,"com_val":"0","com_type":"flat","com_int_apply":"0","com_int_min":"0","com_int_max":"0","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"1970-01-01 02:00:00","com_time_apply":"0","com_time_stop":"1970-01-01 02:00:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"1","fk_ben_type":"4","fk_promo_type":"9","apply_to_amount":"1"}', 1, '2014-11-25 16:08:17', 1),
(138, 1, 'ss_fees', '{"id":"1","com_val":"0","com_type":"flat","com_int_apply":"1","com_int_min":"400","com_int_max":"600","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"1970-01-01 02:00:00","com_time_apply":"0","com_time_stop":"1970-01-01 02:00:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"1","fk_ben_type":"4","fk_promo_type":"9","apply_to_amount":"1"}', 2, '2014-11-25 22:05:03', 1),
(139, 1, 'ss_fees', '{"id":"1","com_val":"10","com_type":"flat","com_int_apply":"1","com_int_min":"400","com_int_max":"600","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"1970-01-01 02:00:00","com_time_apply":"0","com_time_stop":"1970-01-01 02:00:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"1","fk_ben_type":"4","fk_promo_type":"9","apply_to_amount":"1"}', 3, '2014-11-25 22:05:13', 1),
(140, 1, 'ss_fees', '{"id":"1","com_val":"10","com_type":"prc","com_int_apply":"1","com_int_min":"400","com_int_max":"600","com_promo":"0","com_spot":"0","com_trn_apply":"0","com_trn_min":"0","com_trn_max":"0","com_time_start":"1970-01-01 02:00:00","com_time_apply":"0","com_time_stop":"1970-01-01 02:00:00","fk_currency":"1","fk_network":"1","fk_partner":"1","fk_cl_type":"1","fk_ben_type":"4","fk_promo_type":"9","apply_to_amount":"1"}', 4, '2014-11-25 22:06:01', 1),
(141, 3, 'fuel_pages', '{"id":3,"location":"contact\\/mesaj","layout":"sscontact","published":"yes","cache":"yes","date_added":"2014-11-26 14:41:16","last_modified":"2014-11-26 14:41:16","last_modified_by":"","variables":[{"id":"201","page_id":"3","name":"banner_img","scope":"","value":"banners\\/b_contact._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"199","page_id":"3","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"200","page_id":"3","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"},{"id":"198","page_id":"3","name":"page_title","scope":"","value":"trimite_mesaj","type":"string","language":"ro","active":"yes","layout":"sscontact","location":"contact\\/mesaj","page_published":"yes"}]}', 1, '2014-11-26 12:41:16', 1),
(143, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"yes","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-26 15:11:22","last_modified_by":"1","variables":[{"id":"209","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"207","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"208","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"206","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 7, '2014-11-26 13:11:23', 1),
(144, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"yes","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-26 15:13:26","last_modified_by":"1","variables":[{"id":"213","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"211","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"212","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"210","page_id":"2","name":"page_title","scope":"","value":"Stire","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 8, '2014-11-26 13:13:26', 1),
(145, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"no","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-26 15:13:31","last_modified_by":"1","variables":[{"id":"217","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"215","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"216","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"214","page_id":"2","name":"page_title","scope":"","value":"Stire","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 9, '2014-11-26 13:13:31', 1),
(146, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"no","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-26 15:13:52","last_modified_by":"1","variables":[{"id":"221","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"219","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"220","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"218","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 10, '2014-11-26 13:13:53', 1),
(147, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"no","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-26 15:20:58","last_modified_by":"1","variables":[{"id":"225","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"223","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"224","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"222","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 11, '2014-11-26 13:20:58', 1),
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
(206, 10, 'fuel_pages', '{"id":10,"location":"servicii\\/transfer-bani","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:25","last_modified":"2014-11-27 15:35:25","last_modified_by":"","variables":[{"id":"292","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"290","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"291","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"289","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"}]}', 1, '2014-11-27 13:35:25', 1),
(207, 11, 'fuel_pages', '{"id":11,"location":"servicii\\/conturi-plati","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:52","last_modified":"2014-11-27 15:35:52","last_modified_by":"","variables":[{"id":"296","page_id":"11","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"294","page_id":"11","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"295","page_id":"11","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"293","page_id":"11","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"}]}', 1, '2014-11-27 13:35:53', 1),
(208, 18, 'fuel_navigation', '{"id":"18","location":"servicii\\/transfer-bani","group_id":"3","nav_key":"servicii\\/transfer-bani","label":"Transfer de bani","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 3, '2014-11-27 13:36:51', 1),
(209, 19, 'fuel_navigation', '{"id":"19","location":"servicii\\/conturi-plati","group_id":"3","nav_key":"servicii\\/conturi-plati","label":"Conturi de plati","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 4, '2014-11-27 13:37:14', 1),
(210, 19, 'fuel_navigation', '{"id":"19","location":"servicii\\/conturi-plati","group_id":"3","nav_key":"servicii\\/conturi-plati","label":"Conturi de plati","parent_id":"0","precedence":"10","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 5, '2014-11-27 13:37:40', 1),
(211, 10, 'fuel_pages', '{"id":"10","location":"servicii\\/transfer-bani","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:25","last_modified":"2014-11-27 15:42:30","last_modified_by":"1","variables":[{"id":"300","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"302","page_id":"10","name":"body","scope":"","value":"<p class=\\"text-negru\\">Smith Worldtrans is the service through which one can send money in cash from Romania to abroad in almost all the countries.<\\/p>\\r\\n\\t\\t\\t\\t<p>Using our services one can be in touch with your relatives from abroad, sending them money no matter of their need: day to day living, studies fees, buying a car, and so on.\\r\\n\\t\\t\\t\\t\\t<br \\/><br \\/>\\r\\n\\t\\t\\t\\t\\tAll you can do is to come to our offices that are opened even during the weekends.\\r\\n\\t\\t\\t\\t\\t<br \\/><br \\/>\\r\\n\\t\\t\\t\\t\\tOur commissions are very competitive as you can see in the above table being available for Italy, Spain, Switzerland, UK, Portugal, Germany and Ireland. If you want to send money in another country than we mentioned above, please come in contact with our personnel from our offices in order to get our best commissions no matter of your money destination.\\r\\n\\t\\t\\t\\t<\\/p>","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"303","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"301","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"298","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"299","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"297","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"}]}', 2, '2014-11-27 13:42:30', 1),
(212, 10, 'fuel_pages', '{"id":"10","location":"servicii\\/transfer-bani","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:25","last_modified":"2014-11-27 15:44:01","last_modified_by":"1","variables":[{"id":"307","page_id":"10","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"309","page_id":"10","name":"body","scope":"","value":"Transfer de bani","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"310","page_id":"10","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"308","page_id":"10","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"305","page_id":"10","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"306","page_id":"10","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"},{"id":"304","page_id":"10","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani","page_published":"yes"}]}', 3, '2014-11-27 13:44:01', 1),
(213, 11, 'fuel_pages', '{"id":"11","location":"servicii\\/conturi-plati","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:35:52","last_modified":"2014-11-27 15:45:19","last_modified_by":"1","variables":[{"id":"314","page_id":"11","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"316","page_id":"11","name":"body","scope":"","value":"Conturi de plati","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"317","page_id":"11","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"315","page_id":"11","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"312","page_id":"11","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"313","page_id":"11","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"},{"id":"311","page_id":"11","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/conturi-plati","page_published":"yes"}]}', 2, '2014-11-27 13:45:19', 1),
(214, 12, 'fuel_pages', '{"id":12,"location":"servicii\\/transfer-bani\\/ro-ro","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 15:49:26","last_modified":"2014-11-27 15:49:26","last_modified_by":"","variables":[{"id":"321","page_id":"12","name":"banner_img","scope":"","value":"banners\\/b_servicii._.1134x184_._.o_.jpg","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"323","page_id":"12","name":"body","scope":"","value":"Transfer de bani RO RO","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"324","page_id":"12","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"322","page_id":"12","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"319","page_id":"12","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"320","page_id":"12","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"},{"id":"318","page_id":"12","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-ro","page_published":"yes"}]}', 1, '2014-11-27 13:49:27', 1),
(215, 20, 'fuel_navigation', '{"id":20,"location":"servicii\\/transfer-bani\\/ro-ro","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-ro","label":"Romania - Romania","parent_id":"18","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-27 13:50:07', 1),
(216, 13, 'fuel_pages', '{"id":13,"location":"servicii\\/transfer-bani\\/ro-str","layout":"ssservice","published":"yes","cache":"yes","date_added":"2014-11-27 16:51:15","last_modified":"2014-11-27 16:51:15","last_modified_by":"","variables":[{"id":"328","page_id":"13","name":"banner_img","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"330","page_id":"13","name":"body","scope":"","value":"Transfer de bani Ro - strainatate","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"331","page_id":"13","name":"body_class","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"329","page_id":"13","name":"heading","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"326","page_id":"13","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"327","page_id":"13","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"},{"id":"325","page_id":"13","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssservice","location":"servicii\\/transfer-bani\\/ro-str","page_published":"yes"}]}', 1, '2014-11-27 14:51:16', 1),
(217, 21, 'fuel_navigation', '{"id":21,"location":"servicii\\/transfer-bani\\/ro-str","group_id":"3","nav_key":"servicii\\/transfer-bani\\/ro-str","label":"Romania - strainatate","parent_id":"18","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-27 14:51:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_blocks`
--

CREATE TABLE IF NOT EXISTS `fuel_blocks` (
`id` smallint(5) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_categories`
--

CREATE TABLE IF NOT EXISTS `fuel_categories` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(100) NOT NULL DEFAULT '',
  `context` varchar(100) NOT NULL DEFAULT '',
  `precedence` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_logs`
--

CREATE TABLE IF NOT EXISTS `fuel_logs` (
`id` int(10) unsigned NOT NULL,
  `entry_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=288 ;

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
(287, '2014-11-27 17:23:05', 1, 'The cache has been cleared.', 'info');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation`
--

CREATE TABLE IF NOT EXISTS `fuel_navigation` (
`id` int(10) unsigned NOT NULL,
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
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Determines whether the item is displayed or not'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `fuel_navigation`
--

INSERT INTO `fuel_navigation` (`id`, `location`, `group_id`, `nav_key`, `label`, `parent_id`, `precedence`, `attributes`, `selected`, `hidden`, `language`, `published`) VALUES
(3, 'home', 1, 'home', 'Pagina principala', 0, 0, '', '', 'no', 'ro', 'yes'),
(4, 'stiri', 1, 'stiri', 'STIRI', 0, 0, '', '', 'no', 'ro', 'yes'),
(5, 'home', 1, 'home', 'HOMEPAGE', 0, 0, '', '', 'no', 'en', 'yes'),
(6, 'stiri', 1, 'stiri', 'NEWS', 0, 0, '', '', 'no', 'en', 'yes'),
(7, 'faq', 1, 'faq', 'INTREBARI FRECVENTE', 0, 50, '', '', 'no', 'ro', 'yes'),
(8, 'faq', 1, 'faq', 'FAQ', 0, 50, '', '', 'no', 'en', 'yes'),
(9, 'contact/detalii', 2, 'contact/detalii', 'Detalii contact', 0, 0, '', '', 'no', 'ro', 'yes'),
(10, 'contact/callcenter', 2, 'contact/callcenter', 'Call center', 0, 50, '', '', 'no', 'ro', 'yes'),
(11, 'contact/detalii', 1, 'contact/detalii', 'Contact', 0, 60, '', '', 'no', 'ro', 'yes'),
(12, 'contact/detalii', 1, 'contact/detalii', 'Contact', 0, 60, '', '', 'no', 'en', 'yes'),
(13, 'contact/callcenter', 2, 'contact/callcenter', 'Call center', 0, 50, '', '', 'no', 'en', 'yes'),
(14, 'contact/detalii', 2, 'contact/detalii', 'Contact details', 0, 0, '', '', 'no', 'en', 'yes'),
(15, 'contact/mesaj', 2, 'contact/mesaj', 'Trimite mesaj', 0, 25, '', '', 'no', 'ro', 'yes'),
(16, 'contact/mesaj', 2, 'contact/mesaj', 'Send message', 0, 25, '', '', 'no', 'en', 'yes'),
(17, 'servicii', 1, 'servicii', 'Servicii', 0, 0, '', '', 'no', 'ro', 'yes'),
(18, 'servicii/transfer-bani', 3, 'servicii/transfer-bani', 'Transfer de bani', 0, 0, '', '', 'no', 'ro', 'yes'),
(19, 'servicii/conturi-plati', 3, 'servicii/conturi-plati', 'Conturi de plati', 0, 10, '', '', 'no', 'ro', 'yes'),
(20, 'servicii/transfer-bani/ro-ro', 3, 'servicii/transfer-bani/ro-ro', 'Romania - Romania', 18, 0, '', '', 'no', 'ro', 'yes'),
(21, 'servicii/transfer-bani/ro-str', 3, 'servicii/transfer-bani/ro-str', 'Romania - strainatate', 18, 0, '', '', 'no', 'ro', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation_groups`
--

CREATE TABLE IF NOT EXISTS `fuel_navigation_groups` (
`id` int(3) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fuel_navigation_groups`
--

INSERT INTO `fuel_navigation_groups` (`id`, `name`, `published`) VALUES
(1, 'main', 'yes'),
(2, 'contact', 'yes'),
(3, 'servicii', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_pages`
--

CREATE TABLE IF NOT EXISTS `fuel_pages` (
`id` int(10) unsigned NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Add the part of the url after the root of your site (usually after the domain name). For the homepage, just put the word ''home''',
  `layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name of the template to associate with this page',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'A ''yes'' value will display the page and an ''no'' value will give a 404 error message',
  `cache` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Cache controls whether the page will pull from the database or from a saved file which is more effeicent. If a page has content that is dynamic, it''s best to set cache to ''no''',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `fuel_pages`
--

INSERT INTO `fuel_pages` (`id`, `location`, `layout`, `published`, `cache`, `date_added`, `last_modified`, `last_modified_by`) VALUES
(1, 'home', 'sshomepage', 'yes', 'no', '2014-11-04 05:24:11', '2014-11-05 18:46:00', 1),
(2, 'stiri', 'ssnews', 'yes', 'no', '2014-11-05 15:57:52', '2014-11-26 13:20:58', 1),
(4, 'faq', 'ssfaq', 'yes', 'yes', '2014-11-26 15:49:30', '2014-11-26 13:49:30', 1),
(5, 'contact/detalii', 'sscontact', 'yes', 'yes', '2014-11-26 18:16:25', '2014-11-26 16:16:48', 1),
(6, 'contact/callcenter', 'sscontact', 'yes', 'yes', '2014-11-26 18:31:51', '2014-11-26 16:34:33', 1),
(9, 'servicii', 'ssservice_main', 'yes', 'yes', '2014-11-27 11:40:50', '2014-11-27 11:16:54', 1),
(10, 'servicii/transfer-bani', 'ssservice', 'yes', 'yes', '2014-11-27 15:35:25', '2014-11-27 13:44:01', 1),
(11, 'servicii/conturi-plati', 'ssservice', 'yes', 'yes', '2014-11-27 15:35:52', '2014-11-27 13:45:19', 1),
(12, 'servicii/transfer-bani/ro-ro', 'ssservice', 'yes', 'yes', '2014-11-27 15:49:26', '2014-11-27 13:49:26', 1),
(13, 'servicii/transfer-bani/ro-str', 'ssservice', 'yes', 'yes', '2014-11-27 16:51:15', '2014-11-27 14:51:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_page_variables`
--

CREATE TABLE IF NOT EXISTS `fuel_page_variables` (
`id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('string','int','boolean','array') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'string',
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=332 ;

--
-- Dumping data for table `fuel_page_variables`
--

INSERT INTO `fuel_page_variables` (`id`, `page_id`, `name`, `scope`, `value`, `type`, `language`, `active`) VALUES
(169, 1, 'sections', '', '[{"slide_title":"Transfer de bani. ","banner_img":"slides\\/slide1.jpg","button_title":"Test","button_url":"home"},{"slide_title":"Slide 2","banner_img":"slides\\/slide2.jpg","button_title":"Titlu buton 2","button_url":"home"}]', 'array', 'ro', 'yes'),
(222, 2, 'page_title', '', 'Stiri', 'string', 'ro', 'yes'),
(223, 2, 'meta_description', '', '', 'string', 'ro', 'yes'),
(224, 2, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(225, 2, 'banner_img', '', 'banners/banner-news.jpg', 'string', 'ro', 'yes'),
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
(304, 10, 'page_title', '', '', 'string', 'ro', 'yes'),
(305, 10, 'meta_description', '', '', 'string', 'ro', 'yes'),
(306, 10, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(307, 10, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(308, 10, 'heading', '', '', 'string', 'ro', 'yes'),
(309, 10, 'body', '', 'Transfer de bani', 'string', 'ro', 'yes'),
(310, 10, 'body_class', '', '', 'string', 'ro', 'yes'),
(311, 11, 'page_title', '', '', 'string', 'ro', 'yes'),
(312, 11, 'meta_description', '', '', 'string', 'ro', 'yes'),
(313, 11, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(314, 11, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(315, 11, 'heading', '', '', 'string', 'ro', 'yes'),
(316, 11, 'body', '', 'Conturi de plati', 'string', 'ro', 'yes'),
(317, 11, 'body_class', '', '', 'string', 'ro', 'yes'),
(318, 12, 'page_title', '', '', 'string', 'ro', 'yes'),
(319, 12, 'meta_description', '', '', 'string', 'ro', 'yes'),
(320, 12, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(321, 12, 'banner_img', '', 'banners/b_servicii._.1134x184_._.o_.jpg', 'string', 'ro', 'yes'),
(322, 12, 'heading', '', '', 'string', 'ro', 'yes'),
(323, 12, 'body', '', 'Transfer de bani RO RO', 'string', 'ro', 'yes'),
(324, 12, 'body_class', '', '', 'string', 'ro', 'yes'),
(325, 13, 'page_title', '', '', 'string', 'ro', 'yes'),
(326, 13, 'meta_description', '', '', 'string', 'ro', 'yes'),
(327, 13, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(328, 13, 'banner_img', '', '', 'string', 'ro', 'yes'),
(329, 13, 'heading', '', '', 'string', 'ro', 'yes'),
(330, 13, 'body', '', 'Transfer de bani Ro - strainatate', 'string', 'ro', 'yes'),
(331, 13, 'body_class', '', '', 'string', 'ro', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_permissions`
--

CREATE TABLE IF NOT EXISTS `fuel_permissions` (
`id` int(10) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
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
`id` bigint(20) unsigned NOT NULL,
  `candidate_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `candidate_key` int(11) NOT NULL,
  `foreign_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_settings`
--

CREATE TABLE IF NOT EXISTS `fuel_settings` (
`id` bigint(20) unsigned NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_site_variables`
--

CREATE TABLE IF NOT EXISTS `fuel_site_variables` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'leave blank if you want the variable to be available to all pages',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `fuel_site_variables`
--

INSERT INTO `fuel_site_variables` (`id`, `name`, `value`, `scope`, `active`) VALUES
(1, 'caseta_online_url', '{site_url(''home'')}', '', 'yes'),
(2, 'caseta_cash_url', '{site_url(''home'')}', '', 'yes'),
(3, 'caseta_acasa_url', '{site_url(''home'')}', '', 'yes'),
(4, 'caseta_retea_url', '{site_url(''home'')}', '', 'yes'),
(5, 'img_moneygram', '<img src="{img_path(''banners/moneygram.png'')}" alt="" />', '', 'yes'),
(6, 'exchange_rate', '4.5', '', 'yes'),
(8, 'from_email', 'admin@smith-smith.ro', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_tags`
--

CREATE TABLE IF NOT EXISTS `fuel_tags` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `precedence` int(11) NOT NULL,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_users`
--

CREATE TABLE IF NOT EXISTS `fuel_users` (
`id` int(10) unsigned NOT NULL,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `reset_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `super_admin` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fuel_users`
--

INSERT INTO `fuel_users` (`id`, `user_name`, `password`, `email`, `first_name`, `last_name`, `language`, `reset_key`, `salt`, `super_admin`, `active`) VALUES
(1, 'admin', '1e7b315cef5ed03a5e51f7718d617a1bb76006f0', 'a.mocioi@gmail.com', 'horia', 'mocioi', 'english', '', '1469c6c219dadf06c961b6982452d536', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
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
`id` int(11) unsigned NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', 'admin', 1416261493);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'if left blank, one will automatically be generated for you',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `publish_date` date DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `language` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `content`, `publish_date`, `date_added`, `published`, `language`) VALUES
(1, 'Un nou agent SS la Filiasi', 'un-nou-agent-ss-la-filiasi', 'Un nou agent SS la Filiasi\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.', '2014-11-06', '2014-11-06 10:36:44', 'yes', 'ro'),
(2, 'Program agentii SS', 'majoritatea-birourilor-ss-au-program-7-zile-din-7', 'Majoritatea birourilor SS au program 7 zile din 7\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae nibh magna. Sed blandit sit amet orci et vehicula. In volutpat posuere fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In quis molestie erat. Maecenas in felis vitae orci ultricies mollis. Curabitur venenatis mollis lorem et molestie. Suspendisse potenti. Duis in diam id tellus volutpat ornare sit amet quis elit. Nulla nibh metus, suscipit non finibus nec, facilisis feugiat tellus. In tincidunt ante a eros efficitur, in imperdiet urna consectetur.', '2014-11-06', '2014-11-06 10:37:24', 'yes', 'ro'),
(3, 'News 01', 'news-01', 'Some content 01', '2014-11-06', '2014-11-06 11:19:08', 'yes', 'en'),
(4, 'News 02', 'news-02', 'Some content 02', '2014-11-06', '2014-11-06 11:19:24', 'yes', 'en'),
(5, 'E gata caseta de stiri', 'e-gata-caseta-de-stiri', 'Am terminat si caseta de stiri, acum o sa fac un backup intrucat ma apuc de login cu ion_auth.', '2014-11-06', '2014-11-07 07:59:04', 'yes', 'ro'),
(6, 'Stirea numarul 4', 'stirea-numarul-4', 'Aceasta e stirea numarul 4 in limba romana. \r\n\r\nE interesant de vazut daca listarea stirilor tine cont de limita de 3 stiri.', '2014-11-07', '2014-11-07 08:00:07', 'yes', 'ro');

-- --------------------------------------------------------

--
-- Table structure for table `ss_cities`
--

CREATE TABLE IF NOT EXISTS `ss_cities` (
`id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ss_cities`
--

INSERT INTO `ss_cities` (`id`, `name`) VALUES
(5, 'Bucuresti'),
(7, 'Brasov'),
(8, 'Cluj');

-- --------------------------------------------------------

--
-- Table structure for table `ss_display_fees`
--

CREATE TABLE IF NOT EXISTS `ss_display_fees` (
`id` tinyint(3) unsigned NOT NULL,
  `amount_min` mediumint(9) NOT NULL,
  `amount_max` mediumint(9) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `type` enum('flat','prc') COLLATE utf8_unicode_ci NOT NULL
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
-- Table structure for table `ss_faq`
--

CREATE TABLE IF NOT EXISTS `ss_faq` (
`id` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `language` varchar(11) COLLATE utf8_unicode_ci NOT NULL
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
`id` int(10) unsigned NOT NULL,
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
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT 'aplicabil sau nu'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ss_fees`
--

INSERT INTO `ss_fees` (`id`, `com_val`, `com_type`, `com_int_apply`, `com_int_min`, `com_int_max`, `com_promo`, `com_spot`, `com_trn_apply`, `com_trn_min`, `com_trn_max`, `com_time_start`, `com_time_apply`, `com_time_stop`, `fk_currency`, `fk_network`, `fk_partner`, `fk_cl_type`, `fk_ben_type`, `com_promo_apply`, `fk_promo_code`, `fk_promo_type`, `apply_to_amount`, `active`) VALUES
(1, '10', 'prc', '1', '400', '600', '0', '0', '0', 0, 0, '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 1, 1, 1, 1, 4, '0', 0, 9, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ss_invoices`
--

CREATE TABLE IF NOT EXISTS `ss_invoices` (
`id` int(10) unsigned NOT NULL COMMENT 'identificator unic tabela',
  `unid` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'identificator unic tranzactie; se genereaza in controller',
  `id_user` int(11) NOT NULL COMMENT 'id utilizator caruia ii apartine tranzactia',
  `id_payment_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'modalitatea de plata: cont sau card',
  `amount` decimal(7,2) NOT NULL COMMENT 'suma',
  `currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'moneda',
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
  `s6` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'camp custom in functie de furnizor'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `ss_invoices`
--

INSERT INTO `ss_invoices` (`id`, `unid`, `id_user`, `id_payment_type`, `amount`, `currency`, `id_supplier_cat`, `id_supplier`, `fee`, `total`, `date_added`, `status`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`) VALUES
(88, '#F546df0152a0fa', 8, 'card', '123.00', 'RON', 1, 12, '1.23', '124.23', '2014-11-20 13:43:49', 1, 'asdf', NULL, NULL, NULL, NULL, NULL),
(89, '#F546df0551aa8a', 8, 'card', '3234.00', 'RON', 1, 11, '32.34', '3266.34', '2014-11-20 13:44:53', 1, 'cc 12345', '10-11-2015', NULL, 'ceva text', 'asdf', '10-11-2016'),
(90, '#F546df186d0c72', 8, 'card', '3234.00', 'RON', 1, 11, '32.34', '3266.34', '2014-11-20 13:49:58', 1, 'cc 12345', NULL, NULL, 'ceva text', 'asdf', NULL),
(91, '#F546df194f1e3b', 8, 'card', '3234.00', 'RON', 1, 11, '32.34', '3266.34', '2014-11-20 13:50:12', 100, 'cc 12345', NULL, NULL, NULL, 'asdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ss_messages`
--

CREATE TABLE IF NOT EXISTS `ss_messages` (
`id` int(10) unsigned NOT NULL,
  `id_tx` int(10) unsigned NOT NULL,
  `unid` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `tx_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

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
(13, 91, '#F546df194f1e3b', 8, 'inv', 'invoice #F546df194f1e3b err', '2014-11-24 14:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `ss_payments`
--

CREATE TABLE IF NOT EXISTS `ss_payments` (
`id` int(10) unsigned NOT NULL COMMENT 'identificator unic tabela',
  `unid` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'identificator unic tranzactie; se genereaza in controller',
  `id_user` int(11) NOT NULL COMMENT 'id utilizator caruia ii apartine tranzactia',
  `id_payment_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'modalitatea de plata: cont sau card',
  `amount` decimal(7,2) NOT NULL COMMENT 'suma',
  `currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'moneda',
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
  `ben_iban` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'iban beneficiar'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `ss_payments`
--

INSERT INTO `ss_payments` (`id`, `unid`, `id_user`, `id_payment_type`, `amount`, `currency`, `fee`, `total`, `date_added`, `status`, `id_ben_payment_method`, `id_ben_city`, `ben_address`, `ben_name`, `ben_surname`, `ben_phone`, `ben_email`, `ben_iban`) VALUES
(92, '#S546e6ef3bf544', 8, 'card', '50.00', 'ron', '1.23', '124.24', '2014-11-20 22:45:07', 80, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', 'RO121'),
(93, '#S546f5ce1b47ae', 8, 'card', '100.00', 'ron', '1.00', '101.00', '2014-11-21 15:40:17', 1, 1, 7, '', '', '', '', '', ''),
(94, '#S546fb25e8632b', 8, 'card', '123.00', 'ron', '1.23', '124.23', '2014-11-21 21:45:02', 1, 1, 7, 'asdf', 'gigel', 'andrei', '43204320', 'a@b.ro', 'asdf'),
(95, '#S547318e357d0e', 8, 'card', '100.00', 'ron', '1.00', '101.00', '2014-11-24 11:39:15', 1, 1, 7, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ss_payment_methods`
--

CREATE TABLE IF NOT EXISTS `ss_payment_methods` (
`id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
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
-- Table structure for table `ss_profiles`
--

CREATE TABLE IF NOT EXISTS `ss_profiles` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_profile_type` tinyint(3) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ss_profiles`
--

INSERT INTO `ss_profiles` (`id`, `name`, `value`, `id_profile_type`) VALUES
(1, 'Prenume Gheorghe', 'George, Gheorghe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_suppliers`
--

CREATE TABLE IF NOT EXISTS `ss_suppliers` (
`id` int(10) unsigned NOT NULL,
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
  `t6` enum('','date','number','text','textarea','') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `ss_suppliers`
--

INSERT INTO `ss_suppliers` (`id`, `name`, `IBAN`, `bank`, `id_cat`, `s1`, `t1`, `s2`, `t2`, `s3`, `t3`, `s4`, `t4`, `s5`, `t5`, `s6`, `t6`) VALUES
(9, 'ENEL', 'RO32INGB0000999912341234', 'ING Bank Romania', 2, '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'Orange SA', 'IBAN Orange', 'BRD GSG', 1, 'ro: Cod client | en: Client code', 'text', 'ro: Data factura| en: Invoice date', 'date', 'ro: Camp 3 numeric ro | en: Camp 3 numeric en', '', 'ro: Camp 4 textarea ro | en: Camp 4 textarea en', 'textarea', 'ro: Camp 5 text ro | en: Camp 5 text en', 'text', 'ro: Camp 6 date ro | en: Camp 6 date en', 'date'),
(12, 'VODAFONE SA', 'IBAN Vodafone', 'ING Bank Romania', 1, 'ro: Cod client | en: Client code', 'text', '', '', '', '', '', '', '', '', '', ''),
(13, 'Libra', '3213213', 'Libra', 3, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ss_suppliers_cat`
--

CREATE TABLE IF NOT EXISTS `ss_suppliers_cat` (
`id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
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
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('client','beneficiar','fee') COLLATE utf8_unicode_ci NOT NULL
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
`id` int(11) unsigned NOT NULL,
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
  `birth_date` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `country`, `phone`, `birth_date`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1416261507, 1, 'Admin', 'istrator', 'ADMIN', '0', ''),
(8, '::1', 'horia mocioi', '$2y$08$JvhMboEq4U/4sNymFy5LP.6X7cPCdQXgv9tCIoC3K0gTInRhQbKyS', NULL, 'a.mocioi@gmail.com', NULL, NULL, NULL, NULL, 1415447144, 1415621775, 1, 'Horia', 'Mocioi', 'RO', '+40723276206', '15.09.1981'),
(9, '::1', 'andrei andreescu', '$2y$08$XuDaJ1RZcV91ROMxpYA6X.1Xr.Dv5XXiu89uDS4c3MIxDxa2WiSPi', NULL, 'admin@c.ro', NULL, NULL, NULL, NULL, 1415483462, 1415620435, 1, 'andrei', 'andreescu', 'RO', '+40723276206', '15.09.1981'),
(10, '::1', 'vasile vasilescu', '$2y$08$9DwbP3NJ2qikfQexo.dLvOV7hEmuE0hckUlksR3k8R1T0drt/rxyi', NULL, 'admin@b.ro', '60a2befad3ed0dededcfd6c7aa46db8a2af4e729', NULL, NULL, NULL, 1415483662, NULL, 0, 'vasile', 'vasilescu', 'RO', '+40723276206', '15.09.1981'),
(11, '::1', 'mihai munteanu', '$2y$08$UdPx9XYAWWdo7fyx7ewY9erFVb0tlLuIdCet1S.ewle9z/pqAXNwi', NULL, 'mihai@asdf.ro', NULL, NULL, NULL, NULL, 1415621890, 1415622139, 1, 'mihai', 'munteanu', 'FR', '+40723276206', '15.09.1981');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(9, 8, 2),
(10, 9, 2),
(11, 10, 2),
(12, 11, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fuel_archives`
--
ALTER TABLE `fuel_archives`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuel_blocks`
--
ALTER TABLE `fuel_blocks`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`,`language`);

--
-- Indexes for table `fuel_categories`
--
ALTER TABLE `fuel_categories`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `fuel_logs`
--
ALTER TABLE `fuel_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuel_navigation`
--
ALTER TABLE `fuel_navigation`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id_nav_key_language` (`group_id`,`nav_key`,`language`);

--
-- Indexes for table `fuel_navigation_groups`
--
ALTER TABLE `fuel_navigation_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fuel_pages`
--
ALTER TABLE `fuel_pages`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `location` (`location`), ADD KEY `layout` (`layout`);

--
-- Indexes for table `fuel_page_variables`
--
ALTER TABLE `fuel_page_variables`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `page_id` (`page_id`,`name`,`language`);

--
-- Indexes for table `fuel_permissions`
--
ALTER TABLE `fuel_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fuel_relationships`
--
ALTER TABLE `fuel_relationships`
 ADD PRIMARY KEY (`id`), ADD KEY `candidate_table` (`candidate_table`,`candidate_key`), ADD KEY `foreign_table` (`foreign_table`,`foreign_key`);

--
-- Indexes for table `fuel_settings`
--
ALTER TABLE `fuel_settings`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `module` (`module`,`key`);

--
-- Indexes for table `fuel_site_variables`
--
ALTER TABLE `fuel_site_variables`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fuel_tags`
--
ALTER TABLE `fuel_tags`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `fuel_users`
--
ALTER TABLE `fuel_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cities`
--
ALTER TABLE `ss_cities`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_display_fees`
--
ALTER TABLE `ss_display_fees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_faq`
--
ALTER TABLE `ss_faq`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_fees`
--
ALTER TABLE `ss_fees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_invoices`
--
ALTER TABLE `ss_invoices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_messages`
--
ALTER TABLE `ss_messages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_payments`
--
ALTER TABLE `ss_payments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_payment_methods`
--
ALTER TABLE `ss_payment_methods`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_profiles`
--
ALTER TABLE `ss_profiles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_suppliers`
--
ALTER TABLE `ss_suppliers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_suppliers_cat`
--
ALTER TABLE `ss_suppliers_cat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_types`
--
ALTER TABLE `ss_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`), ADD KEY `fk_users_groups_users1_idx` (`user_id`), ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fuel_archives`
--
ALTER TABLE `fuel_archives`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT for table `fuel_blocks`
--
ALTER TABLE `fuel_blocks`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fuel_categories`
--
ALTER TABLE `fuel_categories`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fuel_logs`
--
ALTER TABLE `fuel_logs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT for table `fuel_navigation`
--
ALTER TABLE `fuel_navigation`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `fuel_navigation_groups`
--
ALTER TABLE `fuel_navigation_groups`
MODIFY `id` int(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fuel_pages`
--
ALTER TABLE `fuel_pages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `fuel_page_variables`
--
ALTER TABLE `fuel_page_variables`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT for table `fuel_permissions`
--
ALTER TABLE `fuel_permissions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `fuel_relationships`
--
ALTER TABLE `fuel_relationships`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fuel_settings`
--
ALTER TABLE `fuel_settings`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fuel_site_variables`
--
ALTER TABLE `fuel_site_variables`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `fuel_tags`
--
ALTER TABLE `fuel_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fuel_users`
--
ALTER TABLE `fuel_users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ss_cities`
--
ALTER TABLE `ss_cities`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ss_display_fees`
--
ALTER TABLE `ss_display_fees`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ss_faq`
--
ALTER TABLE `ss_faq`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ss_fees`
--
ALTER TABLE `ss_fees`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ss_invoices`
--
ALTER TABLE `ss_invoices`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificator unic tabela',AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `ss_messages`
--
ALTER TABLE `ss_messages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ss_payments`
--
ALTER TABLE `ss_payments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificator unic tabela',AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `ss_payment_methods`
--
ALTER TABLE `ss_payment_methods`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ss_profiles`
--
ALTER TABLE `ss_profiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ss_suppliers`
--
ALTER TABLE `ss_suppliers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ss_suppliers_cat`
--
ALTER TABLE `ss_suppliers_cat`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ss_types`
--
ALTER TABLE `ss_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
