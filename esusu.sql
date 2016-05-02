-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 02, 2016 at 10:34 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `esusu`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) unsigned NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `card_log`
--

CREATE TABLE `card_log` (
  `id` int(11) NOT NULL,
  `card_id` varchar(55) NOT NULL,
  `auth_code` varchar(255) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `last4` varchar(11) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_trans_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_log`
--

INSERT INTO `card_log` (`id`, `card_id`, `auth_code`, `card_type`, `last4`, `bank`, `user_id`, `first_name`, `last_name`, `email`, `first_trans_date`, `status`, `reference`, `domain`) VALUES
(1, 'visa-yytw88hy9F', 'AUTH_xee29pba', 'visa', '1381', 'TEST BANK', 5, '', '', 'admin@example.com', '2016-02-25T01:01:13.000Z', 'success', 'yytw88hy9F', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `cause_log`
--

CREATE TABLE `cause_log` (
  `cause_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cause_title` varchar(255) NOT NULL,
  `cause_desc` varchar(255) DEFAULT NULL,
  `cause_cat` varchar(255) NOT NULL,
  `cause_target_date` date NOT NULL,
  `cause_target_amount` varchar(200) NOT NULL,
  `cause_loc` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cause_log`
--

INSERT INTO `cause_log` (`cause_id`, `user_id`, `cause_title`, `cause_desc`, `cause_cat`, `cause_target_date`, `cause_target_amount`, `cause_loc`, `time_stamp`) VALUES
(1, 5, '3ssdfs', 'sdfsdf', 'Health', '2016-03-23', '23123', '', '2016-03-23 12:50:26'),
(6, 5, 'Burundi Outbreak', 'asfdfgfjhgh yfjgj ', 'Health', '2016-03-01', '$25,000', '', '2016-03-23 14:32:47'),
(11, 5, 'waryti', 'Donate to assist the victim of the brussel attacks', 'Health', '2016-04-11', '123', '', '2016-04-05 11:33:14'),
(12, 5, 'USAID Cancer Rescue', 'sweeet are bthe heats', 'Health', '2016-04-10', '12300', '', '2016-04-05 11:34:28'),
(13, 5, 'Breast Cancer', 'Help us eradicate this menace', 'Health', '2016-04-07', '12', '', '2016-04-05 11:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('07e90f8021c884089e06345e21334ee9e1c53872', '::1', 1461604184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313630333930373b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b),
('32eb2100b642e4003eefc953b9621e8638ec3308', '::1', 1461605077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313630353037313b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b),
('37ae7060c35612d191c86b2e51886ee87d34bc76', '::1', 1459864108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435393836343039363b),
('4a970f807b742a523cfb5db79168c17004b4ac67', '::1', 1461602038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313630323033343b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b),
('5544e62910b490bd5fc6685ea95d65cd39443bfa', '::1', 1461600834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313630303535313b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b),
('73d535881c6400a3d31b6c7c58db393dff427615', '::1', 1461601138, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313630303932353b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b),
('7c68fed729d787b7e3a6cf6ccde92eecc13e429c', '::1', 1461596311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313539363235303b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b),
('87fe439d1d8615d5162fd41ad69946702497ec3f', '::1', 1461596807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313539363636393b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b),
('a2c3e30fa61fe3c8d186f8de67050b11718e07bf', '::1', 1461600077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313630303030373b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b),
('be5d22a34081d12a258275b5dad1d5abe2b7c3de', '::1', 1461601317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313630313331343b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b),
('c22fef24d334d89706011ae3e3d952551182c1c2', '::1', 1461432698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313433323639373b),
('d135698cd0767407e20739b4e17fe260d32ef2ae', '::1', 1459869521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435393836393530373b),
('da33f80e46b82945e40f476a3100870171e42fe3', '::1', 1461603583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313630333532313b6c6f676765645f696e7c623a313b757365725f69647c733a313a2235223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b6c6f67696e5f617474656d7074737c693a303b);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 5, 'fjhdwiiwei3232dsnsddsd', 1, 0, 0, NULL, 0),
(2, 0, '', 0, 0, 0, NULL, 12122121),
(3, 5, 'sidkdsd09323232jdssndjsd', 0, 0, 0, NULL, 12233430),
(4, 5, 'sidkdsd09323232jdssndjsd', 1, 0, 0, NULL, 12233430);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'payment/payment', 'get', 'a:7:{s:4:"Host";s:14:"localhost:8888";s:6:"Accept";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:6:"Cookie";s:51:"ci_session=814ae05fe369ae2a52370504a0b37cf77ba29e7d";s:10:"User-Agent";s:114:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56";s:15:"Accept-Language";s:5:"en-us";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";}', '', '::1', 1462017588, 0.300119, '1', 200),
(2, 'payment/payment', 'get', 'a:7:{s:4:"Host";s:14:"localhost:8888";s:6:"Accept";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:6:"Cookie";s:51:"ci_session=814ae05fe369ae2a52370504a0b37cf77ba29e7d";s:10:"User-Agent";s:114:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56";s:15:"Accept-Language";s:5:"en-us";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";}', '', '::1', 1462017636, 0.297651, '1', 200),
(3, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Cookie":"ci_session=628c14571533782c7d5aca8e52eebee5648db55d","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate","Connection":"keep-alive"}', '', '::1', 1462017677, 0.0439889, '1', 200),
(4, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Cookie":"ci_session=628c14571533782c7d5aca8e52eebee5648db55d","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate","Connection":"keep-alive"}', '', '::1', 1462017717, 0.044487, '1', 200),
(5, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Cookie":"ci_session=628c14571533782c7d5aca8e52eebee5648db55d","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate","Connection":"keep-alive"}', '', '::1', 1462017787, 0.04724, '1', 200),
(6, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Cookie":"ci_session=628c14571533782c7d5aca8e52eebee5648db55d","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate","Connection":"keep-alive"}', '', '::1', 1462017828, 0.110717, '1', 200),
(7, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Cookie":"ci_session=628c14571533782c7d5aca8e52eebee5648db55d","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate","Connection":"keep-alive"}', '', '::1', 1462017851, 0.0426068, '1', 200),
(8, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=c19699bf0de58b82497690dfdbae1558deb1db00","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Authorization":"Basic YWRtaW46MTIzNA==","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462018349, 0.24654, '1', 200),
(9, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=c19699bf0de58b82497690dfdbae1558deb1db00","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Authorization":"Basic YWRtaW46MTIzNA==","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462018353, 0.015554, '1', 200),
(10, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=c19699bf0de58b82497690dfdbae1558deb1db00","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5724a1713dadb\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment\\/\\", response=\\"487b857f0551631de93e181918d1bf48\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"d83d4332be2e75b3570e340a5ee1d71c\\", nc=00000001, qop=\\"auth\\"","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462018425, 0.182458, '1', 200),
(11, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=c19699bf0de58b82497690dfdbae1558deb1db00","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5724a17ce5f29\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment\\/\\", response=\\"f399925dd101a288e227bdf22aaeb91f\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"4b70b673f9c886e782f4184e6377f8cc\\", nc=00000001, qop=\\"auth\\"","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462018435, 0.210498, '1', 200),
(12, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=8223fc3e748ee4aa94ba2de732c500e975ab81e3","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5724aec3b1447\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment\\/\\", response=\\"692582038e6daf57887966618a242c26\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"1baec433359f1bf436497a87a18f9190\\", nc=00000001, qop=\\"auth\\"","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462021832, 0.220011, '0', 403),
(13, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=2978e3064f546547be9297c5c90471bd522339d1","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5724afffed75e\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment\\/\\", response=\\"2511f677ed7776b7aa5d273a0abbfcb4\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"6c6991f1a61ff495e43e71e2f5a5d645\\", nc=00000001, qop=\\"auth\\"","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462022187, 0.267078, '0', 403),
(14, 'payment/payment', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=ecb81ce06188b80e99bb48398f44fd2abf4653aa","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726247e218b0\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment\\/\\", response=\\"33dfa7b94705933ade75bcda1200a9e6\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"e54a26215643ed45af1cfd718fb50b88\\", nc=00000001, qop=\\"auth\\"","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462117508, 0.233499, '0', 403),
(15, 'payment/payment/key/sidkdsd09323232jdssndjsd', 'get', '{"key":"sidkdsd09323232jdssndjsd","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=ecb81ce06188b80e99bb48398f44fd2abf4653aa","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572624b21795f\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment\\/key\\/sidkdsd09323232jdssndjsd\\", response=\\"7974d23118185d1a455bd7a0e09ceeca\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"e12920893bdd3ddb319c6a898aa01185\\", nc=00000001, qop=\\"auth\\"","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462117558, 0.171879, '0', 403),
(16, 'api/key', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=9ef18ae5da521720299e51d5a2d5a4e8bd62ebc3","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572626d3339bc\\", uri=\\"\\/api_payrallel\\/index.php\\/api\\/key\\", response=\\"ebc3351c2cbe22789c37ed002b3f76b0\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"7f1a142df15a63773c5c053f9fb66893\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462118099, 0.047111, '0', 403),
(17, 'api/key', 'get', '{"X-API-KEY":"sidkdsd09323232jdssndjsd\\/","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=9ef18ae5da521720299e51d5a2d5a4e8bd62ebc3","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57262733ee8c0\\", uri=\\"\\/api_payrallel\\/index.php\\/api\\/key?X-API-KEY=sidkdsd09323232jdssndjsd\\/\\", response=\\"6554ef5880f1bfce0700435084332b78\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"74feec2c36f5fa0bd883737c64515899\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462118196, 0.132542, '0', 403),
(18, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=66e326755a059d64485c1a812d60ea447ea253fc","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572628b6672cf\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"4815fe2fa44dbff5ce3272d771041049\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"0afbf904613d4e5263f38fcfaf73810a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462118582, 0.0972199, '0', 403),
(19, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/de', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","de":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=c99b14a642915760527679864ef2d7b2a9ef142e","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57262ee341603\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/de\\", response=\\"eff49255fd8b28dd49fa6a9d2f2ba6a5\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"90f8d23d736cc38cae10dab8ea71033b\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462120163, 0.123048, '0', 403),
(20, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=3bc74ee6cb39ad0dd5585803b30e4f624bc81956","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726370006072\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"192e119591f2005d74a339b73626f805\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"911707133f0543ab6f9c3223d77b3eb0\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462122240, 0.0997958, '0', 403),
(21, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Cookie":"ci_session=3bc74ee6cb39ad0dd5585803b30e4f624bc81956","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Accept-Encoding":"gzip, deflate","Connection":"keep-alive"}', '', '::1', 1462122267, 0.145026, '0', 403),
(22, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=3bc74ee6cb39ad0dd5585803b30e4f624bc81956","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726375263dcf\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"2e89d48f481bfd2e8fa3b01b7b834c22\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"f8e92a3c7d6f50621ddb5a9d2426a045\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462122322, 0.213739, '1', 200),
(23, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=3bc74ee6cb39ad0dd5585803b30e4f624bc81956","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572637b23eb70\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"92d7e5d44fc9a019be76dbf798dddc06\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"f5bff8b2f702a4420216138c8d4ff1c0\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462122418, 0.448251, '1', 200),
(24, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=4041320d2c60807a1736ba6b6af8756930712eb4","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57263cb045046\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"6935c5250b8be5fff8f76ed258ad6db6\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"474bb6fab3697f1bf101981bc329a0c0\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462123696, 0.229678, '1', 200),
(25, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=8f8f8a1d73c3176cddcf0e76c355772a84965b0e","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57263fc3cde18\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"f6b8135b3afc27b88463b2c4d4a122d0\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"3fbf583f4e73f6815d3a87cee412c42a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462124484, 0.228928, '1', 200),
(26, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=4d705d5cf81a5c8c064949d0ee92a6694f257336","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726447de6371\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"214c7ee0b6848645f1b7696c7cf4ec80\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"a3a2dab5a17a76d808ee2dfa011e6b2f\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462125694, 0.202447, '1', 200),
(27, 'wxapi/device', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=a986763e97090c6eba3984e474ae41f864f80125","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264a9230e66\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\", response=\\"40d991d92473b8dbba16369473b92671\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"47293125f5b1fa35a5b436e7948b9309\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462127250, 0.113366, '1', 200),
(28, 'wxapi/device/andriod', 'get', '{"andriod":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=d9c3547d16742ac6fb882ad64223b5124401827c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264eb641a45\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/andriod\\", response=\\"0fdd10d1e5b9ae692c90a6215583cb2b\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"1baec433359f1bf436497a87a18f9190\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462128310, 0.145456, '1', 200),
(29, 'wxapi/device/andriod/20', 'get', '{"andriod":"20","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=d9c3547d16742ac6fb882ad64223b5124401827c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264ebc1a4cd\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/andriod\\/20\\", response=\\"a2b119e4c4d2d7820aa9cc5fab6b6cf9\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"1277b77b2f2760abda4193caa51f8c6e\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462128316, 0.0409451, '1', 200),
(30, 'wxapi/device/andriod/20', 'get', '{"andriod":"20","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=d9c3547d16742ac6fb882ad64223b5124401827c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264ed0a617a\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/andriod\\/20\\", response=\\"67189ed807a983d244ffba9760dd5b73\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"8128531cd2f985a8133eb28b460b648a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462128336, 0.093442, '1', 200),
(31, 'wxapi/device/andriod/20', 'get', '{"andriod":"20","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=d9c3547d16742ac6fb882ad64223b5124401827c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264ef5a8f09\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/andriod\\/20\\", response=\\"e8171baee8115bd30a906e8da8bd9fe1\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"94a5325ea45856d3d23cadcba0cbe681\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462128373, 0.138344, '1', 200),
(32, 'wxapi/device/andriod/20', 'get', '{"andriod":"20","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=d9c3547d16742ac6fb882ad64223b5124401827c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264f0890a2f\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/andriod\\/20\\", response=\\"e7e7edd6f5cd5a29ee6f70d9e9e55ad0\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"9148a575a6aa9fe646b8d0a3f58c1b36\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462128392, 0.0794621, '1', 200),
(33, 'wxapi/device/andriod/20', 'get', '{"andriod":"20","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=d9c3547d16742ac6fb882ad64223b5124401827c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264f2281a56\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/andriod\\/20\\", response=\\"993409e031db4f1667aba39e5f25b387\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"8f16d3907bc037fefcff78e32b58bdbb\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462128419, 0.171245, '1', 200),
(34, 'wxapi/device/andriod/20', 'get', '{"andriod":"20","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=d9c3547d16742ac6fb882ad64223b5124401827c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264f309e5b6\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/andriod\\/20\\", response=\\"f2cf73427aac946e569dfad154fe0221\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"4b5108412ec437813a77d8c1a260c15d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462128432, 0.408, '1', 0),
(35, 'api_v1/login_id', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=d9c3547d16742ac6fb882ad64223b5124401827c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264fd33800b\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\", response=\\"16a7b68686ac3a9206f8872e4f39e32a\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"28577129381de12ab86dde51242d63bf\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462128595, 0.151763, '1', 200),
(36, 'api_v1/login_id', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=fbe4a7bcbe22b8f0440ca594ded8f599eedd9186","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57264fe3973a9\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\", response=\\"af03aaa10916af9ac748e818ac1901a3\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"71cd4a321bbdec4a3c7d897c713dd3af\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462128611, 0.121989, '1', 200),
(37, 'api_v1/login_id/11/11', 'get', '{"0":"11","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=fbe4a7bcbe22b8f0440ca594ded8f599eedd9186","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265013129af\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/\\/11\\/11\\", response=\\"a4a402301a135414efa6bc58fadf7234\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"4b5108412ec437813a77d8c1a260c15d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":"11"}', '', '::1', 1462128659, 0.086992, '1', 200),
(38, 'api_v1/login_id/11/11', 'get', '{"0":"11","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=fbe4a7bcbe22b8f0440ca594ded8f599eedd9186","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726504d3be2c\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/\\/11\\/11\\", response=\\"6cd99b648e22a57f5910bddf393a18b4\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"28577129381de12ab86dde51242d63bf\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":"11"}', '', '::1', 1462128717, 0.067889, '1', 200),
(39, 'api_v1/login_id/11', 'get', '{"0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=fbe4a7bcbe22b8f0440ca594ded8f599eedd9186","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265053da9ee\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/11\\", response=\\"ddaef753c1d8ecd9884fec3c3bafc976\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"71cd4a321bbdec4a3c7d897c713dd3af\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462128723, 0.088275, '1', 200),
(40, 'api_v1/login_id/11/app_id/11', 'get', '{"0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=fbe4a7bcbe22b8f0440ca594ded8f599eedd9186","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726505e8971c\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/11\\/app_id\\/11\\", response=\\"9a83d58adeba0dc48b94b324e3e024f9\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"94a5325ea45856d3d23cadcba0cbe681\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462128734, 0.0101252, '1', 200),
(41, 'api_v1/login_id/11/app_id/11', 'get', '{"0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=fbe4a7bcbe22b8f0440ca594ded8f599eedd9186","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572650a66d687\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/11\\/app_id\\/11\\", response=\\"789987c91fd9e9a04a50be9c15f5f96c\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"902714f6b107fbb6a30db60ecbbfe1f4\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462128806, 0.181836, '1', 200),
(42, 'api_v1/login_id/11/app_id/11', 'get', '{"0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=0d5f51ee39ab1a4c26e5ca41605fc92b453ef172","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265113697f0\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/11\\/app_id\\/11\\", response=\\"1151a31b4e2724f0a2bd740ef72d345c\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"8128531cd2f985a8133eb28b460b648a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462128915, 0.181891, '1', 400),
(43, 'api_v1/login_id/11/app_id/11', 'get', '{"0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=0d5f51ee39ab1a4c26e5ca41605fc92b453ef172","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726515746736\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/11\\/app_id\\/11\\", response=\\"2f666c03a7604729311a3ba78dbbe4e0\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"4b5108412ec437813a77d8c1a260c15d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462128983, 0.229374, '1', 400),
(44, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=0d5f51ee39ab1a4c26e5ca41605fc92b453ef172","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572651786550c\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"d4f7175924395ea398237b1163c409f6\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"902714f6b107fbb6a30db60ecbbfe1f4\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462129016, 0.184423, '1', 200),
(45, 'api_v1/login_id/app_id/11/login_id/11', 'get', '{"app_id":"11","login_id":"11","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=0d5f51ee39ab1a4c26e5ca41605fc92b453ef172","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572651a22d2b5\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/app_id\\/11\\/login_id\\/11\\", response=\\"dbf000f966bbb3bb58f5d459e002a490\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"4b5108412ec437813a77d8c1a260c15d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462129058, 0.210837, '1', 0),
(46, 'api_v1/login_id/app_id/11/login_id/11', 'get', '{"app_id":"11","login_id":"11","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=0d5f51ee39ab1a4c26e5ca41605fc92b453ef172","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572651e91dafa\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/app_id\\/11\\/login_id\\/11\\", response=\\"e4b154eb8e071a7d6bf30b3e7ad8d49d\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"902714f6b107fbb6a30db60ecbbfe1f4\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462129129, 0.198381, '1', 0),
(47, 'api_v1/login_id/app_id/11/login_id/11', 'get', '{"app_id":"11","login_id":"11","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=26f44fe37f495f6846f568f99d9841127e710fa2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726525b602f7\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/app_id\\/11\\/login_id\\/11\\", response=\\"1c5266a3552ebae71571131f6c56321e\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"94a5325ea45856d3d23cadcba0cbe681\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462129243, 0.224087, '1', 0),
(48, 'api_v1/user/app_id/11/login_id/11', 'get', '{"app_id":"11","login_id":"11","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=26f44fe37f495f6846f568f99d9841127e710fa2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572652d346d35\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/app_id\\/11\\/login_id\\/11\\", response=\\"1931098ce6fe5689e5712f98cc53ab45\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"8128531cd2f985a8133eb28b460b648a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462129363, 0.255335, '1', 0),
(49, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=26f44fe37f495f6846f568f99d9841127e710fa2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572652ed7041b\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"13da4534e5fc335d20239b22880d7dfb\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"28577129381de12ab86dde51242d63bf\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462129389, 0.144628, '1', 0),
(50, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=26f44fe37f495f6846f568f99d9841127e710fa2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265302e77c5\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"28bef21068a74846800e41e309ec455f\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"4b5108412ec437813a77d8c1a260c15d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462129411, 0.157915, '1', 0),
(51, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=26f44fe37f495f6846f568f99d9841127e710fa2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726530d5da0e\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"924c1c33e9f19ece7e8631ec00f4b916\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"71cd4a321bbdec4a3c7d897c713dd3af\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462129421, NULL, '1', 0),
(52, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=c473fa04b7e0a0a96374951b22576f1163aacba5","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572654dab1ed2\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"9423a5e74e6bcc0a0a152d0a0e3d5b67\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"f5d6095a87188779132b5d1cfcdd90e4\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462129882, 0.234105, '1', 0),
(53, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=b97502565734d12518898b5cd7ec327f16a85248","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572656928f4f8\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"2acb6dd09a473531eae64458c422baeb\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"1baec433359f1bf436497a87a18f9190\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462130322, NULL, '1', 200),
(54, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=b97502565734d12518898b5cd7ec327f16a85248","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572657098d33e\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"6265f6bb696013857574f9ab8dfcbcbb\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"d8280271a35159e5594582cc0da8ccf1\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462130441, NULL, '1', 200),
(55, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=b97502565734d12518898b5cd7ec327f16a85248","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265725c0252\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"dabe2b89781458ab67070c9b7e90e677\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"3ed212ac1af84ed925afb21800944e2f\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462130469, NULL, '1', 200),
(56, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=b97502565734d12518898b5cd7ec327f16a85248","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265771a9421\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"71ada904c35d50187889b2a262cafa48\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"124e16e5769f553a2796c543c08ec695\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462130545, NULL, '1', 200),
(57, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=b97502565734d12518898b5cd7ec327f16a85248","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572657803c2fe\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"a8b70eec9aa1d2f63538f42cb9bb3a29\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"cf19b2e8b3d1574c9831e4746e7f930d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462130560, NULL, '1', 200),
(58, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=b97502565734d12518898b5cd7ec327f16a85248","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572657b0594ea\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"d2b8f11b6435d29a446549e925c389dd\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"3b1cfc0859ca756f23464513142c5420\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462130608, NULL, '1', 200),
(59, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=493768230d9b53c2acd8d9626f2d0d9a777615f5","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572657c1f2938\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"c397f33aa5d6aef75b4e467459110ccf\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"911707133f0543ab6f9c3223d77b3eb0\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462130626, NULL, '1', 200);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(60, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=493768230d9b53c2acd8d9626f2d0d9a777615f5","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572657ec1a26c\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"dc4bb62963a121d1d37f348cfaf589e0\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"cf19b2e8b3d1574c9831e4746e7f930d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462130668, NULL, '1', 200),
(61, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=b72314c392077ed22e4c7824faf460fc0dae04be","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265aacb0616\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"62069290b2f705e09fb06d09bfe61c25\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"124e16e5769f553a2796c543c08ec695\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462131372, 0.272629, '1', 0),
(62, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=3c3a64c30026da3da63eec1ecfee189ba7a6f29e","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265c5eb6a7a\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"97a91e6dfe59c41bf149f179f9b0f77a\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"7fb5478858a24f7d9fe0b1b8bc716d9a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462131807, 0.688327, '1', 0),
(63, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=95d514bd239c2a5822c481d69353804c71b62de4","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265da159318\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"dbc6e1db858894613c4eda99df8cf963\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"4965878cea89f25dfb6020b12f6e6913\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462132129, 0.472092, '1', 0),
(64, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=19a7edafbdfc8bad05b0c5c80cf2809503fa031c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265eed11854\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"79889b611a037d27ddb323747dd8111e\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"1fa40be7d47be3f62159f2761fdcc2da\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462132461, 0.462393, '1', 0),
(65, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=19a7edafbdfc8bad05b0c5c80cf2809503fa031c","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57265f9fc4770\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"3e8d1f4db7f15fa26e14a47b0b522b6b\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"88d799d0be81c59a0de503129a8df0cd\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462132640, 0.362003, '1', 0),
(66, 'wxapi/device', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=5e85c760dec056d712102dd85c16f735cc002948","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726604288e09\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\", response=\\"43726d755cc62e4c34d9c273cd1a34a6\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"dd279f202ada1a9c5a4dd84386a2ba39\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462132802, 0.0715699, '1', 200),
(67, 'api_v1/user/post/app_id/11/login_id/11', 'get', '{"post":"app_id","0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=5e85c760dec056d712102dd85c16f735cc002948","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57266049ca60d\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\/post\\/app_id\\/11\\/login_id\\/11\\", response=\\"4b273bc0525b85f1ff31ff28e0b5c89f\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"8128531cd2f985a8133eb28b460b648a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462132810, 0.299582, '1', 0),
(68, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=5e85c760dec056d712102dd85c16f735cc002948","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726605001445\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"ca200982aad2b6dd5a3c43423a3f8c12\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"5c48ee1b5ce18efc20a325e1daed2f97\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462132816, 0.1031, '1', 200),
(69, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=5e85c760dec056d712102dd85c16f735cc002948","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726607fbc45e\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"21c22249f4eeebb51208684415bf8904\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"0bc35e9e59b5ff2bd6cc643e3165291d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462132863, 0.1539, '1', 200),
(70, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=5e85c760dec056d712102dd85c16f735cc002948","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572660ab37fec\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"72a1ad4808d8093f6e6c6f7b02122f66\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"dd279f202ada1a9c5a4dd84386a2ba39\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462132907, 0.151955, '1', 200),
(71, 'payment/payment_page/user_id/5/amount/290/cause_id/67893d/description', 'get', '{"user_id":"5","amount":"290","cause_id":"67893d","description":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=5e85c760dec056d712102dd85c16f735cc002948","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726610e16c47\\", uri=\\"\\/api_payrallel\\/index.php\\/payment\\/payment_page\\/user_id\\/5\\/amount\\/290\\/cause_id\\/67893d\\/description\\/\\", response=\\"fc13e8fa78c94ffbbd90c0f1d8f5f3b5\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"31412fbcb145d4e80e235589b97e850a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133006, 0.175401, '1', 200),
(72, 'wxapi/device', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=5e85c760dec056d712102dd85c16f735cc002948","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726614475fcc\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\", response=\\"6fe03ef7749c105ed145a122fdaec206\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"8128531cd2f985a8133eb28b460b648a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133060, 0.0731041, '1', 200),
(73, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=41f8562f9895ac3b7e9bf260795346932f053692","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57266186c6b4e\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"4fc45d511bf41db4f9e79d58cf49725a\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"0bc35e9e59b5ff2bd6cc643e3165291d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133127, 0.206823, '1', 0),
(74, 'api_v1/login_id/app_id/11/login_id/11', 'get', '{"app_id":"11","login_id":"11","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=41f8562f9895ac3b7e9bf260795346932f053692","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726619875425\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/app_id\\/11\\/login_id\\/11\\", response=\\"4f9c0d109d9f5ea765d44a7344c50aaf\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"8128531cd2f985a8133eb28b460b648a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133144, 0.130748, '1', 0),
(75, 'api_v1/login_id/app_id/11/login_i', 'get', '{"app_id":"11","login_i":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=41f8562f9895ac3b7e9bf260795346932f053692","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726619fa697a\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/app_id\\/11\\/login_i\\", response=\\"eb6659b7ca3a62c5d914ff32bac86988\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"810c47194135c279e514b1a4d1da86ca\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133151, 0.019201, '1', 400),
(76, 'api_v1/login_id/app_id/11/login_i', 'get', '{"app_id":"11","login_i":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=41f8562f9895ac3b7e9bf260795346932f053692","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57266207937f2\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/app_id\\/11\\/login_i\\", response=\\"0f0a05511bec54a4394c260c725bb9ae\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"6dd5b4b6c1621899d34c092aa72647c1\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133255, 0.326714, '1', 400),
(77, 'api_v1/login_id/app_id/11/login_id/11', 'get', '{"app_id":"11","login_id":"11","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=41f8562f9895ac3b7e9bf260795346932f053692","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726620e6e893\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/app_id\\/11\\/login_id\\/11\\", response=\\"133aeaabe5953ec8329833fd7cf4d9f2\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"911707133f0543ab6f9c3223d77b3eb0\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133262, 0.0865018, '1', 0),
(78, 'api_v1/login_id/11/login_id/11', 'get', '{"0":null,"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=41f8562f9895ac3b7e9bf260795346932f053692","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57266213ed14a\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/11\\/login_id\\/11\\", response=\\"620c0dba77f32dbfa89ccb81e8eef30c\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"0bc35e9e59b5ff2bd6cc643e3165291d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":null}', '', '::1', 1462133268, 0.0182621, '1', 400),
(79, 'api_v1/login_id/login_id/11', 'get', '{"login_id":"11","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=41f8562f9895ac3b7e9bf260795346932f053692","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726621c5a1cb\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/login_id\\/11\\", response=\\"a8ffb4ec160a6234a153caaf139bc399\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"1fa40be7d47be3f62159f2761fdcc2da\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133276, 0.018774, '1', 400),
(80, 'api_v1/login_id/login_id/11/app_id/2', 'get', '{"login_id":"11","app_id":"2","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=41f8562f9895ac3b7e9bf260795346932f053692","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726624eafe90\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/login_id\\/11\\/app_id\\/2\\", response=\\"d8c5762cfdf9f61fd5f5e139f41974f3\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"cd9e3cf665bf20b957424c07d022430a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133327, 0.50896, '1', 0),
(81, 'api_v1/login_id/login_id/11/app_id/2', 'get', '{"login_id":"11","app_id":"2","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=240dfc2e2f4bdcddb09d18599fb46c0ff1896dfa","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572662f1b7ae6\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/login_id\\/11\\/app_id\\/2\\", response=\\"44594cf36af90d4117640957d9c97fc0\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"1fa40be7d47be3f62159f2761fdcc2da\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133490, 0.272813, '1', 0),
(82, 'api_v1/login_id/login_id/11/app_id/2', 'get', '{"login_id":"11","app_id":"2","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=240dfc2e2f4bdcddb09d18599fb46c0ff1896dfa","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726633d43064\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/login_id\\/11\\/app_id\\/2\\", response=\\"d875eaba05f23fc911e658c65b5b6755\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"d55243e08a04d2a04364c540b65bbd87\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133565, 0.428609, '1', 0),
(83, 'api_v1/login_id/login_id/11/app_id/2', 'get', '{"login_id":"11","app_id":"2","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=240dfc2e2f4bdcddb09d18599fb46c0ff1896dfa","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726637377ca4\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/login_id\\/11\\/app_id\\/2\\", response=\\"f4b9c749dbc16a4de8b0b52fa3cbd1dd\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"fd1f07781b499b42d28c5c0ca2ad303a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133619, 0.21033, '1', 0),
(84, 'api_v1/login_id/login_id/11/app_id/2', 'get', '{"login_id":"11","app_id":"2","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=240dfc2e2f4bdcddb09d18599fb46c0ff1896dfa","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572663b1b49fe\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/login_id\\/11\\/app_id\\/2\\", response=\\"286f6042a3fb198343333a4580dfec52\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"3d186dcb179c778628a24c1e47c339b9\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133682, 0.341748, '1', 0),
(85, 'api_v1/login_id/login_id/11/app_id/2', 'get', '{"login_id":"11","app_id":"2","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=240dfc2e2f4bdcddb09d18599fb46c0ff1896dfa","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572663ec1522f\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/login_id\\/login_id\\/11\\/app_id\\/2\\", response=\\"fccc9e97969a8187507b924a4f8492c1\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"97fabcb04875a7e284c33e7b1c77dea9\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133740, 0.273972, '1', 400),
(86, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572664358ef8f\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"079ddb81dc60216aa91c4e734a433de3\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"7fb5478858a24f7d9fe0b1b8bc716d9a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133813, 0.21632, '1', 200),
(87, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572664cd74b61\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"460826aa14246144ac8d99b4f6e9cb93\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"b89c43af14b999105de76e5824a7259b\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462133965, 0.274215, '1', 200),
(88, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572664f2adbc0\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"9eee61de5b9c9b5799de216a793559ab\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"3ed212ac1af84ed925afb21800944e2f\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462134003, 0.279193, '1', 200),
(89, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572665310be54\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"24cb8f66d243e6df8781e3d334189956\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"671a363b1b7dc8b520da7c2dd2e7ebb6\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462134065, 0.362205, '1', 400),
(90, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726654fc518b\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"cd19dae7773f743e7db3ac994e5aef41\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"89256f020aa9ba6e402f70a5f4f81b23\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462134096, 0.170919, '1', 400),
(91, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726722969bb1\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"9cc61e7f3e7c1abcf02a67a3a03ff404\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"118b16c8911623129e2948dcdfd13969\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462137385, 0.254405, '1', 400),
(92, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726723fa84f7\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"8fb528f4ce0d0b2385c2a0083427120b\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"0fa63a58104808b62a22d455bc961ae4\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462137408, 0.588931, '1', 400),
(93, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726724532ca8\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"88ae61a6feb4923a5410b313f4488560\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"96dc5050129366b99471dbbbe5094cf4\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462137413, 0.11127, '1', 400),
(94, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726727065d1b\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"6ba4fa9fe08c91ed6be4bd9a2432e552\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"96dc5050129366b99471dbbbe5094cf4\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462137457, 0.352498, '1', 400),
(95, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=91b0145d731905bdb37e89c40dfa3235f5f361e2","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572672974517f\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"546911572484584866715e9d42f15c67\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"7b70eaef26d30f65841d3501ec5bbb07\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462137495, 0.226774, '1', 400),
(96, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=2f952f8d1f19e19525407180b7d2e2466bfb8811","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726734500dec\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"5f65e97a9556279179875d52544e65e6\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"e31a9c8e225e70c1fca85ed74c2a6cd5\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462137669, 0.241588, '1', 400),
(97, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=2f952f8d1f19e19525407180b7d2e2466bfb8811","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57267399b7eb9\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"69de9c8db1397d0e8689ba286f92b1b5\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"05df44380daf403278924e83185adb91\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462137753, 0.201067, '1', 400),
(98, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=446f0832575e47ebc9b606f67b15c73e7db663d0","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726755c6532d\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"8b6929e101f3917ceecbf996ec0fb24f\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"ca4c483493696bd837e60733932181d3\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138205, NULL, '1', 0),
(99, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=446f0832575e47ebc9b606f67b15c73e7db663d0","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572675d455725\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"334c86930cf835cf2b5acd78cc7adb9d\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"ca4c483493696bd837e60733932181d3\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138324, NULL, '1', 0),
(100, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=446f0832575e47ebc9b606f67b15c73e7db663d0","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57267606156d3\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"210100d45365202d8ea709fa1461da3a\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"6b271298d33715e20784d55b62107afe\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138374, 0.275188, '1', 500),
(101, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=446f0832575e47ebc9b606f67b15c73e7db663d0","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726766a72c6e\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"95a2e70253a6e071a33a8100653275e8\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"cf19b2e8b3d1574c9831e4746e7f930d\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138474, 0.323356, '1', 500),
(102, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=446f0832575e47ebc9b606f67b15c73e7db663d0","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572676781404e\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"3f7bfc47dfb6dc3d7a643a19793b6e1c\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"911707133f0543ab6f9c3223d77b3eb0\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138488, 0.0857069, '1', 500),
(103, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=446f0832575e47ebc9b606f67b15c73e7db663d0","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57267686e6b7d\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"f7e10c9ead511891efda23c49bf242ca\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"6a297b171147e0276fb0346d08e5038e\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138503, 0.069236, '1', 400),
(104, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=ada0262cb290733e453855a8d5383afec6f686fb","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572676d325d9f\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"3e3fa5a36f242f1e28db75319738b7e6\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"624937747157eecf3b9f1ec1bd7986e8\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138579, 5.02149, '1', 500),
(105, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=ada0262cb290733e453855a8d5383afec6f686fb","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726770f9822b\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"34fcb07347bd75087a47e38e8c7113ec\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"6c6991f1a61ff495e43e71e2f5a5d645\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138639, 0.259705, '1', 400),
(106, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=ada0262cb290733e453855a8d5383afec6f686fb","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726777cc1673\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"67c021203368a19b4ddeaeaf21d176b2\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"e777482775c05b91a5104cd43048acea\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138748, 0.0568779, '1', 400),
(107, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=ada0262cb290733e453855a8d5383afec6f686fb","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726779b817ee\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"60c818896648fe418e8f2acecf288ab4\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"2320ed59c92fb5cada6587ff8e926f63\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138779, 0.10137, '1', 400),
(108, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=ada0262cb290733e453855a8d5383afec6f686fb","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572677a59229c\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"5c8add78ed8eca3f9768c4549f336700\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"7aabd9ca4bb6b68a5c48bd4a11d2ab0a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138789, 0.060051, '1', 400),
(109, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=ada0262cb290733e453855a8d5383afec6f686fb","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572677b56dc97\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"cb8c06c6c5675fe35fed336334c575bc\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"054646723ef0d89e260dd65816504435\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138805, 0.029681, '1', 400),
(110, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=ada0262cb290733e453855a8d5383afec6f686fb","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572677e10e5cb\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"451234adb70cfae4c300b2a3c485141f\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"c84955db5c591146b5df1340c729fe28\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462138849, 0.0214951, '1', 400),
(111, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=7927b645bd8406d7905e44e8d76138f5b95d7356","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57267879aa30b\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"37f0aad805766793702c7dcaeb7ddf1b\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"b3170c6b8a2e1eabe3b5982687e364df\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462139001, 0.202217, '1', 400),
(112, 'api_v1/user', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=7927b645bd8406d7905e44e8d76138f5b95d7356","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572678a8349bb\\", uri=\\"\\/api_payrallel\\/index.php\\/api_v1\\/user\\", response=\\"e8748db4d0d385d9318052eefe60064d\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"5b298c1f3085c50cebfc530318eaa78b\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462139048, 0.0591669, '1', 400),
(113, 'wxapi/device', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=7927b645bd8406d7905e44e8d76138f5b95d7356","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726793cba5c2\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\", response=\\"b60f2c72b6b80f1c6d1bfd32184a5ace\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"911707133f0543ab6f9c3223d77b3eb0\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462139196, 0.070883, '1', 200),
(114, 'wxapi/device', 'get', '{"Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=7927b645bd8406d7905e44e8d76138f5b95d7356","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726796e4bd8b\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\", response=\\"783ffdb480205ce7c8c761d80b6aeee0\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"7fb5478858a24f7d9fe0b1b8bc716d9a\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462139246, 0.0490091, '1', 400),
(115, 'wxapi/device/5678/ghjk', 'get', '{"0":"ghjk","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=7927b645bd8406d7905e44e8d76138f5b95d7356","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"5726797d7dba1\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/5678\\/ghjk\\", response=\\"75b0178010eb040e7b88fc8e2ff11385\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"5b298c1f3085c50cebfc530318eaa78b\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":"ghjk"}', '', '::1', 1462139261, 0.236279, '1', 0),
(116, 'wxapi/device/5678/ghjk', 'get', '{"0":"ghjk","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=8c994a5faa64a781794f22a6007cda1b9440d590","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572679c45aa88\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/5678\\/ghjk\\", response=\\"40a9cd48ffb32c477538320e18dd8b6e\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"5b298c1f3085c50cebfc530318eaa78b\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":"ghjk"}', '', '::1', 1462139332, 0.16999, '1', 0),
(117, 'wxapi/device/5678/ghjk', 'get', '{"0":"ghjk","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=8c994a5faa64a781794f22a6007cda1b9440d590","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57267abe4ae96\\", uri=\\"\\/api_payrallel\\/index.php\\/wxapi\\/device\\/5678\\/ghjk\\", response=\\"b4e834c808c3cb7068152e9fe3deeba5\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"88a277df86ab76d7bdc5ab529b596d36\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate","1":"ghjk"}', '', '::1', 1462139582, 0.503759, '1', 0);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(118, 'cards/cards/user_id/5', 'get', '{"user_id":"5","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=47da6cb536055b09aabc3c54459277f2edf51bc6","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572707810320c\\", uri=\\"\\/api_payrallel\\/index.php\\/cards\\/cards\\/user_id\\/5\\", response=\\"c68db28eb46fdc699c1d65ee545f356b\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"72ba04d45a4a824b2a1260b3b1127b2b\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462175617, 0.195566, '1', 200),
(119, 'cards/cards/user_id/5/card_id/visa-yytw88hy9F', 'get', '{"user_id":"5","card_id":"visa-yytw88hy9F","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=47da6cb536055b09aabc3c54459277f2edf51bc6","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"57270795183dc\\", uri=\\"\\/api_payrallel\\/index.php\\/cards\\/cards\\/user_id\\/5\\/card_id\\/visa-yytw88hy9F\\", response=\\"c1952df1ea4c2aa30a7c83d7850cf9c5\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"124e16e5769f553a2796c543c08ec695\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462175637, 0.0617509, '1', 200),
(120, 'cards/cards/user_id/5/card_id/visa-yytw88', 'get', '{"user_id":"5","card_id":"visa-yytw88","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=47da6cb536055b09aabc3c54459277f2edf51bc6","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572707b1e1f35\\", uri=\\"\\/api_payrallel\\/index.php\\/cards\\/cards\\/user_id\\/5\\/card_id\\/visa-yytw88\\", response=\\"94f36b3447f0da31af9570f8d74cebf8\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"eb0604e0d84d28c7f4b04de8c46908fc\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462175666, 0.0546629, '1', 404),
(121, 'cards/cards/user_id/5', 'get', '{"user_id":"5","Host":"localhost:8888","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8","Connection":"keep-alive","Cookie":"ci_session=47da6cb536055b09aabc3c54459277f2edf51bc6","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit\\/601.1.56 (KHTML, like Gecko) Version\\/9.0 Safari\\/601.1.56","Accept-Language":"en-us","Authorization":"Digest username=\\"admin\\", realm=\\"Payralel REST API\\", nonce=\\"572707bc672b0\\", uri=\\"\\/api_payrallel\\/index.php\\/cards\\/cards\\/user_id\\/5\\", response=\\"ef0ba02c8031cc73a2bb034aa4889fbe\\", opaque=\\"0c7fc6a0edaec82508dda92cd48f0f9e\\", cnonce=\\"d22b158f1ff8de9ce83dc37ca743af79\\", nc=00000001, qop=\\"auth\\"","Accept-Encoding":"gzip, deflate"}', '', '::1', 1462175676, 0.062144, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `msg_messages`
--

CREATE TABLE `msg_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `target_date` date NOT NULL,
  `target_amount` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `msg_messages`
--

INSERT INTO `msg_messages` (`id`, `thread_id`, `body`, `category`, `target_date`, `target_amount`, `location`, `sender_id`, `cdate`) VALUES
(1, 2, 'Help us eradicate this menace', 'Health', '2016-04-07', '12', '', 5, '2016-04-05 10:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `msg_participants`
--

CREATE TABLE `msg_participants` (
  `user_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `msg_participants`
--

INSERT INTO `msg_participants` (`user_id`, `thread_id`, `cdate`) VALUES
(0, 2, '2016-04-05 10:38:30'),
(5, 2, '2016-04-05 10:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `msg_status`
--

CREATE TABLE `msg_status` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `msg_status`
--

INSERT INTO `msg_status` (`message_id`, `user_id`, `status`) VALUES
(1, 0, 0),
(1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `msg_threads`
--

CREATE TABLE `msg_threads` (
  `id` int(11) NOT NULL,
  `subject` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `msg_threads`
--

INSERT INTO `msg_threads` (`id`, `subject`) VALUES
(2, 'Breast Cancer');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_providers`
--

CREATE TABLE `oauth_providers` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `client_id` text NOT NULL,
  `client_secret` text NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_log`
--

CREATE TABLE `payment_log` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `type_of_payment` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `amount` decimal(11,0) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `trans_id` varchar(255) NOT NULL,
  `goal_type` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_log`
--

INSERT INTO `payment_log` (`id`, `date_time`, `type_of_payment`, `status`, `amount`, `user_id`, `ref`, `trans_id`, `goal_type`, `message`, `domain`) VALUES
(1, '2016-02-25 01:01:13', 'Free Goal', 'success', '1230000', 5, 'yytw88hy9F', 'yytw88hy9F', 'Un_Typed', 'Verification successful', 'test'),
(2, '2016-02-25 01:28:30', 'Free Goal', 'success', '568000', 5, 'sbp2rl3mfe', 'sbp2rl3mfe', 'Un_Typed', 'Charge successful', 'test'),
(3, '2016-02-25 01:29:42', 'Free Goal', 'success', '2000000', 5, 'htlojc9pfl', 'htlojc9pfl', 'Un_Typed', 'Charge successful', 'test'),
(4, '2016-02-25 01:41:32', 'Free Goal', 'success', '125000', 5, '7g5po5v057', '7g5po5v057', 'Un_Typed', 'Charge successful', 'test'),
(5, '2016-02-25 01:43:19', 'Free Goal', 'success', '125000', 5, 'x3klkmczsy', 'x3klkmczsy', 'Un_Typed', 'Charge successful', 'test'),
(6, '2016-02-25 01:44:25', 'Free Goal', 'success', '12300', 5, 'iye5fodaiu', 'iye5fodaiu', 'Un_Typed', 'Charge successful', 'test'),
(7, '2016-02-25 01:46:39', 'Free Goal', 'success', '230000', 5, 'wlxmfnfrfa', 'wlxmfnfrfa', 'Un_Typed', 'Charge successful', 'test'),
(8, '2016-03-02 11:35:58', 'Free Goal', 'success', '0', 5, '8pkl95hj5w', '8pkl95hj5w', 'Un_Typed', 'Charge successful', 'test'),
(9, '2016-03-02 11:44:24', 'Free Goal', 'success', '0', 5, 'zm9etmlsu1', 'zm9etmlsu1', 'Un_Typed', 'Charge successful', 'test'),
(10, '2016-03-02 11:47:03', 'Free Goal', 'success', '0', 5, 'ajt0c4byoz', 'ajt0c4byoz', 'Un_Typed', 'Charge successful', 'test'),
(11, '2016-03-10 05:17:40', 'Free Goal', 'success', '200', 5, 'a2172za0cv', 'a2172za0cv', 'Un_Typed', 'Charge successful', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) unsigned NOT NULL,
  `permission_description` varchar(255) NOT NULL,
  `permission_system` tinyint(1) NOT NULL DEFAULT '0',
  `permission_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `permission_description`, `permission_system`, `permission_order`) VALUES
(1, 'View members', 1, 0),
(3, 'View settings', 1, 21),
(4, 'Add member', 1, 1),
(5, 'Edit member', 1, 3),
(6, 'Delete members', 1, 4),
(7, 'OAuth2 providers', 1, 10),
(8, 'Dashboard', 1, 20),
(9, 'Ban/unban members', 1, 6),
(10, 'Activate/deactivate members', 1, 5),
(11, 'Save settings', 1, 22),
(12, 'Clear sessions', 1, 25),
(13, 'Manage roles', 1, 7),
(14, 'Backup and export', 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `recover_password`
--

CREATE TABLE `recover_password` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `token` char(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `used` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `ref`, `used`) VALUES
(1, '3IRWr1981P', 0),
(2, '95hPPBNcUq', 0),
(3, '7dvS6NSURD', 0),
(4, 'rLFNsVpOY6', 0),
(5, 'XmGOqxA8JD', 0),
(6, 'LtPOTTXMAq', 0),
(7, '74C8WXu6bI', 0),
(8, '9KQCQ9vdI4', 0),
(9, '4ZHIa7me3Z', 0),
(10, 'p56W70MsA5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) unsigned NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_description` varchar(255) NOT NULL,
  `role_selectable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_description`, `role_selectable`) VALUES
(1, 'Administrator', 'CAN NOT BE EDITED OR DELETED - All system permissions are active by default.', 1),
(2, 'Super Moderator', 'They can do everything except for settings and backups.', 1),
(3, 'Moderator', 'They have access to members but can''t delete them.', 1),
(4, 'Member', 'CAN NOT BE DELETED - is useful in case you want to give permissions to default members.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `role_id` int(11) unsigned NOT NULL,
  `permission_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 13),
(3, 1),
(3, 4),
(3, 5),
(3, 9),
(3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` tinyint(4) unsigned NOT NULL,
  `login_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `register_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `install_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `members_per_page` smallint(6) NOT NULL DEFAULT '12',
  `admin_email` varchar(255) NOT NULL,
  `home_page` varchar(50) NOT NULL,
  `active_theme` varchar(40) NOT NULL DEFAULT 'bootstrap3',
  `adminpanel_theme` varchar(40) NOT NULL DEFAULT 'adminpanel',
  `login_attempts` smallint(6) NOT NULL DEFAULT '3',
  `max_login_attempts` smallint(6) NOT NULL DEFAULT '30',
  `email_protocol` tinyint(4) NOT NULL DEFAULT '1',
  `sendmail_path` varchar(100) NOT NULL DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(255) NOT NULL DEFAULT 'ssl://smtp.googlemail.com',
  `smtp_port` smallint(6) NOT NULL DEFAULT '465',
  `smtp_user` mediumblob NOT NULL,
  `smtp_pass` mediumblob NOT NULL,
  `site_title` varchar(60) NOT NULL DEFAULT 'CI_Membership',
  `cookie_expires` int(11) NOT NULL DEFAULT '259200',
  `password_link_expires` int(11) NOT NULL DEFAULT '1800',
  `activation_link_expires` int(11) NOT NULL DEFAULT '43200',
  `disable_all` tinyint(1) NOT NULL DEFAULT '0',
  `site_disabled_text` text NOT NULL,
  `remember_me_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `recaptchav2_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `recaptchav2_site_key` char(40) NOT NULL,
  `recaptchav2_secret` char(40) NOT NULL,
  `oauth2_enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `login_enabled`, `register_enabled`, `install_enabled`, `members_per_page`, `admin_email`, `home_page`, `active_theme`, `adminpanel_theme`, `login_attempts`, `max_login_attempts`, `email_protocol`, `sendmail_path`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `site_title`, `cookie_expires`, `password_link_expires`, `activation_link_expires`, `disable_all`, `site_disabled_text`, `remember_me_enabled`, `recaptchav2_enabled`, `recaptchav2_site_key`, `recaptchav2_secret`, `oauth2_enabled`) VALUES
(1, 1, 1, 1, 12, 'admin@example.com', 'Default_page', 'bootstrap3', 'adminpanel', 5, 30, 1, '/usr/sbin/sendmail', 'ssl://smtp.googlemail.com', 465, '', '', 'CI_Membership', 259200, 1800, 43200, 0, 'This website is momentarily offline.', 1, 0, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `track_cause`
--

CREATE TABLE `track_cause` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cause_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` char(128) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `date_registered` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `nonce` char(32) DEFAULT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `cookie_part` varchar(32) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `profile_img` varchar(255) NOT NULL,
  `app_id` int(11) NOT NULL,
  `login_id` varchar(64) NOT NULL,
  `user_phone` varchar(64) NOT NULL,
  `notice_pm` int(11) NOT NULL,
  `notice_pm_value` int(11) NOT NULL,
  `notice_filter` varchar(64) NOT NULL,
  `user_prefer` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `date_registered`, `last_login`, `nonce`, `first_name`, `last_name`, `active`, `banned`, `login_attempts`, `cookie_part`, `gender`, `profile_img`, `app_id`, `login_id`, `user_phone`, `notice_pm`, `notice_pm_value`, `notice_filter`, `user_prefer`) VALUES
(5, 'administrator', '09267d81738b20d929ac3a4e618ab91967d5c563cf8407f5a8ef6390b4eacc0e88500c3b833b309da14bcf78ed7848233b6438d796ac52c1027e0b21902dfa29', 'admin@example.com', '2016-02-01 16:31:12', '2016-04-25 13:55:06', 'ad7d8ac6f37038d93698a0a72fd58f25', '', '', 1, 0, 0, 'e2bad8e311f53188de5ec7ebb8ee83f5', NULL, '', 0, '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_log`
--
ALTER TABLE `card_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cause_log`
--
ALTER TABLE `cause_log`
  ADD PRIMARY KEY (`cause_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg_messages`
--
ALTER TABLE `msg_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg_participants`
--
ALTER TABLE `msg_participants`
  ADD PRIMARY KEY (`user_id`,`thread_id`);

--
-- Indexes for table `msg_status`
--
ALTER TABLE `msg_status`
  ADD PRIMARY KEY (`message_id`,`user_id`);

--
-- Indexes for table `msg_threads`
--
ALTER TABLE `msg_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_providers`
--
ALTER TABLE `oauth_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `payment_log`
--
ALTER TABLE `payment_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `recover_password`
--
ALTER TABLE `recover_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_cause`
--
ALTER TABLE `track_cause`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `card_log`
--
ALTER TABLE `card_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cause_log`
--
ALTER TABLE `cause_log`
  MODIFY `cause_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `msg_messages`
--
ALTER TABLE `msg_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `msg_threads`
--
ALTER TABLE `msg_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_providers`
--
ALTER TABLE `oauth_providers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_log`
--
ALTER TABLE `payment_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `recover_password`
--
ALTER TABLE `recover_password`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=337;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `track_cause`
--
ALTER TABLE `track_cause`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;