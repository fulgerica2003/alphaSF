-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2014 at 10:46 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=109 ;

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
(19, 2, 'fuel_pages', '{"id":2,"location":"stiri","layout":"ssmain","published":"yes","cache":"yes","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-05 15:57:52","last_modified_by":"","variables":[]}', 1, '2014-11-05 13:57:52', 1),
(20, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssmain","published":"yes","cache":"yes","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-05 16:05:26","last_modified_by":"1","variables":[{"id":"165","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssmain","location":"stiri","page_published":"yes"},{"id":"163","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssmain","location":"stiri","page_published":"yes"},{"id":"164","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssmain","location":"stiri","page_published":"yes"},{"id":"162","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssmain","location":"stiri","page_published":"yes"}]}', 2, '2014-11-05 14:05:26', 1),
(21, 3, 'fuel_navigation', '{"id":3,"location":"home","group_id":"1","nav_key":"home","label":"Homepage","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-05 14:09:56', 1),
(22, 4, 'fuel_navigation', '{"id":4,"location":"stiri","group_id":"1","nav_key":"stiri","label":"Stiri","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-05 14:10:23', 1),
(23, 5, 'fuel_navigation', '{"id":5,"location":"home","group_id":"1","nav_key":"home","label":"Homepage","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-11-05 14:10:42', 1),
(24, 6, 'fuel_navigation', '{"id":6,"location":"stiri","group_id":"1","nav_key":"stiri","label":"News","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 1, '2014-11-05 14:11:04', 1),
(25, 3, 'fuel_navigation', '{"id":"3","location":"home","group_id":"1","nav_key":"home","label":"HOMEPAGE","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-05 14:28:35', 1),
(26, 5, 'fuel_navigation', '{"id":"5","location":"home","group_id":"1","nav_key":"home","label":"HOMEPAGE","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-11-05 14:29:30', 1),
(27, 4, 'fuel_navigation', '{"id":"4","location":"stiri","group_id":"1","nav_key":"stiri","label":"STIRI","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-05 14:29:44', 1),
(28, 6, 'fuel_navigation', '{"id":"6","location":"stiri","group_id":"1","nav_key":"stiri","label":"NEWS","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"en","published":"yes"}', 2, '2014-11-05 14:29:55', 1),
(29, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"sshomepage","published":"yes","cache":"no","date_added":"2014-11-04 05:24:11","last_modified":"2014-11-05 20:46:00","last_modified_by":"1","variables":[{"id":"166","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"167","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"168","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"169","page_id":"1","name":"sections","scope":"","value":[{"slide_title":"Transfer de bani. ","banner_img":"slides\\/slide1.jpg","button_title":"Test","button_url":"home"},{"slide_title":"Slide 2","banner_img":"slides\\/slide2.jpg","button_title":"Titlu buton 2","button_url":"home"}],"type":"array","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"170","page_id":"1","name":"caseta_online_titlu","scope":"","value":"Money Transfer Online","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"171","page_id":"1","name":"caseta_online_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"172","page_id":"1","name":"caseta_online_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"173","page_id":"1","name":"caseta_acasa_titlu","scope":"","value":"Acasa (HD)","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"174","page_id":"1","name":"caseta_acasa_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"175","page_id":"1","name":"caseta_acasa_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"176","page_id":"1","name":"caseta_cash_titlu","scope":"","value":"Money Transfer Cash","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"177","page_id":"1","name":"caseta_cash_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"178","page_id":"1","name":"caseta_cash_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"179","page_id":"1","name":"caseta_comisioane_titlu","scope":"","value":"Commissions Cash Romania - Abroad","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"180","page_id":"1","name":"caseta_comisioane_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"181","page_id":"1","name":"caseta_comisioane_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"182","page_id":"1","name":"caseta_retea_titlu","scope":"","value":"Our Network","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"183","page_id":"1","name":"caseta_retea_content","scope":"","value":"Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"184","page_id":"1","name":"caseta_retea_url","scope":"","value":"#","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"},{"id":"185","page_id":"1","name":"moneygram_img","scope":"","value":"banners\\/moneygram.png","type":"string","language":"ro","active":"yes","layout":"sshomepage","location":"home","page_published":"yes"}]}', 17, '2014-11-05 18:46:01', 1),
(30, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"yes","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-06 00:22:09","last_modified_by":"1","variables":[{"id":"186","page_id":"2","name":"page_title","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"187","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"188","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"189","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 3, '2014-11-05 22:22:10', 1),
(31, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"yes","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-06 00:22:47","last_modified_by":"1","variables":[{"id":"190","page_id":"2","name":"page_title","scope":"","value":"Atiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"191","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"192","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"193","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 4, '2014-11-05 22:22:47', 1),
(32, 2, 'fuel_pages', '{"id":"2","location":"stiri","layout":"ssnews","published":"yes","cache":"yes","date_added":"2014-11-05 15:57:52","last_modified":"2014-11-06 00:22:57","last_modified_by":"1","variables":[{"id":"194","page_id":"2","name":"page_title","scope":"","value":"Stiri","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"195","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"196","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"},{"id":"197","page_id":"2","name":"banner_img","scope":"","value":"banners\\/banner-news.jpg","type":"string","language":"ro","active":"yes","layout":"ssnews","location":"stiri","page_published":"yes"}]}', 5, '2014-11-05 22:22:57', 1),
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
(55, 7, 'fuel_navigation', '{"id":7,"location":"http:\\/\\/google.ro","group_id":"2","nav_key":"http:\\/\\/google.ro","label":"google","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-06 11:38:15', 1),
(56, 3, 'fuel_navigation_groups', '{"id":3,"name":"footer_menu","published":"yes"}', 1, '2014-11-06 11:43:22', 1),
(57, 7, 'fuel_navigation', '{"id":"7","location":"www.anpc.gov.ro\\/","group_id":"3","nav_key":"www.anpc.gov.ro\\/","label":"ANPC","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 2, '2014-11-06 11:44:10', 1),
(58, 8, 'fuel_navigation', '{"id":8,"location":"www.dataprotection.ro\\/","group_id":"3","nav_key":"www.dataprotection.ro\\/","label":"Protectia Datelor","parent_id":"0","precedence":"0","attributes":"","selected":"","hidden":"no","language":"ro","published":"yes"}', 1, '2014-11-06 11:45:01', 1),
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
(88, 11, 'ss_suppliers', '{"id":"11","name":"Orange SA","IBAN":"IBAN Orange","bank":"BRD GSG","id_cat":"1","s1":"Cod client","t1":"text","s2":"Data factura","t2":"date","s3":"Camp 3","t3":"","s4":"Camp 4","t4":"","s5":"Camp 5","t5":"","s6":"Camp 6","t6":""}', 4, '2014-11-13 11:37:07', 1);
INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
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
(108, 7, 'ss_payment_methods', '{"id":"7","name":"ro:In Cont EUR Romania"}', 3, '2014-11-21 09:38:55', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=176 ;

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
(175, '2014-11-21 19:24:31', 1, 'Successful login by ''admin'' from ::1', 'debug');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `fuel_navigation`
--

INSERT INTO `fuel_navigation` (`id`, `location`, `group_id`, `nav_key`, `label`, `parent_id`, `precedence`, `attributes`, `selected`, `hidden`, `language`, `published`) VALUES
(3, 'home', 1, 'home', 'HOMEPAGE', 0, 0, '', '', 'no', 'ro', 'yes'),
(4, 'stiri', 1, 'stiri', 'STIRI', 0, 0, '', '', 'no', 'ro', 'yes'),
(5, 'home', 1, 'home', 'HOMEPAGE', 0, 0, '', '', 'no', 'en', 'yes'),
(6, 'stiri', 1, 'stiri', 'NEWS', 0, 0, '', '', 'no', 'en', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation_groups`
--

CREATE TABLE IF NOT EXISTS `fuel_navigation_groups` (
`id` int(3) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fuel_navigation_groups`
--

INSERT INTO `fuel_navigation_groups` (`id`, `name`, `published`) VALUES
(1, 'main', 'yes');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fuel_pages`
--

INSERT INTO `fuel_pages` (`id`, `location`, `layout`, `published`, `cache`, `date_added`, `last_modified`, `last_modified_by`) VALUES
(1, 'home', 'sshomepage', 'yes', 'no', '2014-11-04 05:24:11', '2014-11-05 18:46:00', 1),
(2, 'stiri', 'ssnews', 'yes', 'yes', '2014-11-05 15:57:52', '2014-11-05 22:22:57', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=198 ;

--
-- Dumping data for table `fuel_page_variables`
--

INSERT INTO `fuel_page_variables` (`id`, `page_id`, `name`, `scope`, `value`, `type`, `language`, `active`) VALUES
(169, 1, 'sections', '', '[{"slide_title":"Transfer de bani. ","banner_img":"slides\\/slide1.jpg","button_title":"Test","button_url":"home"},{"slide_title":"Slide 2","banner_img":"slides\\/slide2.jpg","button_title":"Titlu buton 2","button_url":"home"}]', 'array', 'ro', 'yes'),
(194, 2, 'page_title', '', 'Stiri', 'string', 'ro', 'yes'),
(195, 2, 'meta_description', '', '', 'string', 'ro', 'yes'),
(196, 2, 'meta_keywords', '', '', 'string', 'ro', 'yes'),
(197, 2, 'banner_img', '', 'banners/banner-news.jpg', 'string', 'ro', 'yes');

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
(1, 'admin', '1c5c638cf5724ed1ec0f1859ae3494e990012f26', 'a.mocioi@gmail.com', 'horia', 'mocioi', 'english', '', '2965a412c0e78fdc6ec91d99f46a3d3c', 'yes', 'yes');

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
(91, '#F546df194f1e3b', 8, 'card', '3234.00', 'RON', 1, 11, '32.34', '3266.34', '2014-11-20 13:50:12', 1, 'cc 12345', NULL, NULL, NULL, 'asdf', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ss_messages`
--

INSERT INTO `ss_messages` (`id`, `id_tx`, `unid`, `id_user`, `tx_type`, `message`, `date_added`) VALUES
(1, 92, '#S546e6ef3bf544', 8, 'pay', 'payment #S546e6ef3bf544 successfully refunded', '2014-11-21 13:20:07'),
(2, 92, '#S546e6ef3bf544', 8, 'pay', 'payment #S546e6ef3bf544 successfully refunded', '2014-11-21 13:24:07'),
(3, 93, '#S546f5ce1b47ae', 8, 'pay', 'payment #S546f5ce1b47ae successfully added', '2014-11-21 15:40:17'),
(4, 92, '#S546e6ef3bf544', 8, 'pay', 'payment #S546e6ef3bf544 successfully refunded', '2014-11-21 16:29:15'),
(5, 92, '#S546e6ef3bf544', 8, 'pay', 'payment #S546e6ef3bf544 successfully refunded', '2014-11-21 16:38:45');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `ss_payments`
--

INSERT INTO `ss_payments` (`id`, `unid`, `id_user`, `id_payment_type`, `amount`, `currency`, `fee`, `total`, `date_added`, `status`, `id_ben_payment_method`, `id_ben_city`, `ben_address`, `ben_name`, `ben_surname`, `ben_phone`, `ben_email`, `ben_iban`) VALUES
(92, '#S546e6ef3bf544', 8, 'card', '123.01', 'ron', '1.23', '124.24', '2014-11-20 22:45:07', 80, 1, 7, 'Bucuresti Subcetate 62-70', 'mocioi', 'horia', '0723276206', 'a.mocioi@gmail.com', 'RO121'),
(93, '#S546f5ce1b47ae', 8, 'card', '100.00', 'ron', '1.00', '101.00', '2014-11-21 15:40:17', 1, 1, 7, '', '', '', '', '', '');

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `fuel_navigation`
--
ALTER TABLE `fuel_navigation`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fuel_navigation_groups`
--
ALTER TABLE `fuel_navigation_groups`
MODIFY `id` int(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fuel_pages`
--
ALTER TABLE `fuel_pages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fuel_page_variables`
--
ALTER TABLE `fuel_page_variables`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=198;
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
-- AUTO_INCREMENT for table `ss_invoices`
--
ALTER TABLE `ss_invoices`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificator unic tabela',AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `ss_messages`
--
ALTER TABLE `ss_messages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ss_payments`
--
ALTER TABLE `ss_payments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificator unic tabela',AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `ss_payment_methods`
--
ALTER TABLE `ss_payment_methods`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
