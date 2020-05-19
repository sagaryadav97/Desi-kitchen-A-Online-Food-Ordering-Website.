-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 07, 2019 at 01:50 AM
-- Server version: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodexploria`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'ravi', 'dsigi@gmail.com', '7896541230', 'asdasdasda', 'aditi068'),
('huyujjlkhj', 'sagar ', 'sagar123234567@gmail.com', '8884823362', 'bangalore ', '987456'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith'),
('ravinan', 'ravi', 'ravu@gmail.com', '9874553210', 'bangalore 561205', '895623147'),
('sagar', 'sagar', 'sellyfellows@gmail.com', '9874563210', 'sellyfellows@gmail.com', '123456789'),
('test1', 'test', 'test1@gmail.com', '7896541230', 'bangalore', '123'),
('test4', 'test4', 'test4@gmail.com', '8884823362', 'bangalore rural', 'test4');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
`F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`) VALUES
(65, 'Full', 45, 'A', 4, 'images/index.jpg'),
(66, 'Parotta', 50, 'Crispy on the outside, soft on the inside, roti prata hits the spot every time. A South-Indian flat bread made by frying stretched dough flavoured with ghee (Indian clarified butter), it is usually se', 4, 'images/index2.jpg'),
(69, 'test', 0, 'asdasda', 4, 'images/cache.nulled.to.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `food_del_add`
--

CREATE TABLE IF NOT EXISTS `food_del_add` (
`id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `number` varchar(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `food_del_add`
--

INSERT INTO `food_del_add` (`id`, `email`, `address`, `pincode`, `number`) VALUES
(11, 'sellyfellows@gmail.com', 'sadsdasdasdasd', '561203', '2147483647'),
(12, 'pratheek@gmail.com', 'banaglore rural', '561203', '9845121858'),
(29, 'sagar123234567@gmail.com', '1st cross,doddaballapur,bangalore rural', '561203', '8884823362'),
(24, 'ravu@gmail.com', 'sagarasdasd', '561203', '457885112'),
(27, 'test4@gmail.com', 'Bangalore rural,karnataka', '561203', '8884823362'),
(26, 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur', '561203', '888483');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'dfaasd', 'digsi@gmail.com', '9874563210', 'asdasdasdas', 'asdasdsa'),
('aditi068wq', 'test3', 'casdas@gmail.com', '7896541230', 'asdasd', 'asdasdad'),
('admin', 'admin', 'desikitchenhari@gmail.com', '9874563210', 'banaglore', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `Trans_number` varchar(50) NOT NULL,
  `Del_add` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=181 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`, `Trans_number`, `Del_add`, `email`) VALUES
(94, 66, 'Parotta', 50, 1, '2019-05-04', 'sagar', 4, '716744628332', 'sadsdasdasdasd  pincode=561203  mob number=2147483647', ''),
(95, 67, 'Mutton kari', 100, 1, '2019-05-04', 'sagar', 4, '371060214312', 'sadsdasdasdasd  pincode=561203  mob number=2147483647', ''),
(96, 66, 'Parotta', 50, 1, '2019-05-04', 'sagar', 4, '875772215411', 'sadsdasdasdasd  pincode=561203  mob number=2147483647', ''),
(97, 66, 'Parotta', 50, 4, '2019-05-04', 'sagar', 4, '692987640280', 'sadsdasdasdasd  pincode=561203  mob number=2147483647', ''),
(98, 66, 'Parotta', 50, 1, '2019-05-04', 'sagar', 4, '953280254467', 'sadsdasdasdasd  pincode=561203  mob number=2147483647', ''),
(99, 65, 'Full Meals', 40, 1, '2019-05-04', 'sagar', 4, '953280254467', 'sadsdasdasdasd  pincode=561203  mob number=2147483647', ''),
(100, 66, 'Parotta', 50, 1, '2019-05-04', 'pratheek083', 4, '843664892251', 'banaglore rural  pincode=561203  mob number=9845121858', ''),
(102, 66, 'Parotta', 50, 1, '2019-05-04', 'pratheek083', 4, '842730143588', 'banaglore rural  pincode=561203  mob number=9845121858', 'pratheek@gmail.com'),
(103, 66, 'Parotta', 50, 1, '2019-05-04', 'pratheek083', 4, '496029926611', 'banaglore rural  pincode=561203  mob number=9845121858', 'pratheek@gmail.com'),
(104, 67, 'Mutton kari', 100, 1, '2019-05-04', 'pratheek083', 4, '314700877337', 'banaglore rural  pincode=561203  mob number=9845121858', 'pratheek@gmail.com'),
(112, 66, 'Parotta', 50, 1, '2019-05-04', 'rakshithk00', 4, '508828493585', 'bangalore rural,karnataka  pincode=561203  mob number=8884823362', 'rakshith@gmail.com'),
(113, 66, 'Parotta', 50, 1, '2019-05-04', 'rakshithk00', 4, '146994737976', 'bangalore rural,karnataka  ,pincode  ,8884823362', 'rakshith@gmail.com'),
(114, 67, 'Mutton kari', 100, 1, '2019-05-04', 'rakshithk00', 4, '449227887719', 'bangalore rural,karnataka  ,pincode  ,8884823362', 'rakshith@gmail.com'),
(115, 66, 'Parotta', 50, 1, '2019-05-04', 'ravinan', 4, '593148487597', '', 'ravu@gmail.com'),
(116, 66, 'Parotta', 50, 1, '2019-05-04', 'ravinan', 4, '837210905902', 'sagarasdasd  ,561203  ,457885112', 'ravu@gmail.com'),
(117, 66, 'Parotta', 50, 1, '2019-05-04', 'test4', 4, '697601580734', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(118, 65, 'Full Meals', 40, 1, '2019-05-04', 'test4', 4, '697601580734', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(120, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '504873287481', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(121, 65, 'Full Meals', 40, 1, '2019-05-04', 'aditi068', 4, '504873287481', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(122, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '719189205715', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(123, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '540661602432', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(124, 66, 'Parotta', 50, 1, '2019-05-04', 'test4', 4, '172454714767', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(125, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '325054866928', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(126, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '854541559036', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(127, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '698040403634', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(128, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '509954602267', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(129, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '862780388418', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(130, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '418878856161', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(131, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '780026325988', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(132, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '871350534976', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(133, 65, 'Full Meals', 40, 1, '2019-05-16', 'aditi068', 4, '786370806613', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(134, 65, 'Full Meals', 40, 1, '2019-05-16', 'aditi068', 4, '411462469717', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(135, 65, 'Full Meals', 40, 1, '2019-05-16', 'aditi068', 4, '955450617538', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(136, 66, 'Parotta', 50, 1, '2019-05-16', 'aditi068', 4, '468316732455', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(137, 66, 'Parotta', 50, 1, '2019-05-17', 'aditi068', 4, '897497797549', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com'),
(138, 66, 'Parotta', 50, 1, '2019-05-17', 'test4', 4, '353894269766', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(139, 66, 'Parotta', 50, 1, '2019-05-18', 'test4', 4, '655935159490', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(140, 65, 'Full', 45, 3, '2019-05-18', 'test4', 4, '294073752450', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(141, 66, 'Parotta', 50, 1, '2019-05-18', 'test4', 4, '188989576394', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(142, 66, 'Parotta', 50, 1, '2019-05-18', 'test4', 4, '714520962399', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(143, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '411956495480', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(144, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '440411278280', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(145, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '401629157321', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(146, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '493887214971', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(147, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '230380883325', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(148, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '479467513552', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(149, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '839764889010', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(150, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '505285458950', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(151, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '301489238894', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(152, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '827020624899', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(153, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '659011719793', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(154, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '637203283361', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(155, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '794253667388', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(156, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '606332574609', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(157, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '871487592132', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(158, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '784640266442', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(159, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '412588578399', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(160, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '469003118237', 'banaglore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(161, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '650222661785', '', 'test4@gmail.com'),
(162, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '614352492541', 'Banaglore rural  ,561203  ,8884823362', 'test4@gmail.com'),
(163, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '486663988546', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(164, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '892224222744', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(165, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '585430335409', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(166, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '742150402261', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(167, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '240240847152', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(168, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '176135806558', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(169, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '724023957620', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(170, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '794390724545', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(171, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '667855980664', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(172, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '131448927874', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(173, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '208599998324', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(174, 65, 'Full', 45, 1, '2019-05-19', 'test4', 4, '980609828585', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(175, 69, 'test', 0, 1, '2019-05-19', 'test4', 4, '101757630667', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(176, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '480538419372', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(177, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '289431260565', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(178, 66, 'Parotta', 50, 1, '2019-05-19', 'test4', 4, '306295439367', 'Bangalore rural,karnataka  ,561203  ,8884823362', 'test4@gmail.com'),
(179, 66, 'Parotta', 50, 1, '2019-05-19', 'huyujjlkhj', 4, '556481526846', '1st cross,doddaballapur,bangalore rural  ,561203  ,8884823362', 'sagar123234567@gmail.com'),
(180, 66, 'Parotta', 50, 1, '2019-05-19', 'huyujjlkhj', 4, '432501766073', '1st cross,doddaballapur,bangalore rural  ,561203  ,8884823362', 'sagar123234567@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE IF NOT EXISTS `restaurants` (
`R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(4, 'DESI KITCHEN', 'desikitchenhari@gmail.com', '9874563210', 'Belgum', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_ids`
--

CREATE TABLE IF NOT EXISTS `transaction_ids` (
`id` int(11) NOT NULL,
  `t_id` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `addr` varchar(500) NOT NULL,
  `amount` int(5) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `transaction_ids`
--

INSERT INTO `transaction_ids` (`id`, `t_id`, `mail`, `addr`, `amount`, `date`, `status`) VALUES
(45, '742150402261', 'test4@gmail.com', 'Bangalore rural,karnataka  ,561203  ,8884823362', 50, '2019-05-19', 'DL'),
(35, '897497797549', 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 50, '2019-05-17', 'A'),
(34, '955450617538', 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 40, '2019-05-16', 'AP'),
(33, '871350534976', 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 50, '2019-05-04', 'AP'),
(46, '240240847152', 'test4@gmail.com', 'Bangalore rural,karnataka  ,561203  ,8884823362', 50, '2019-05-19', 'DL'),
(32, '780026325988', 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 50, '2019-05-04', 'AP'),
(47, '176135806558', 'test4@gmail.com', 'Bangalore rural,karnataka  ,561203  ,8884823362', 50, '2019-05-19', 'DL'),
(29, '540661602432', 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 50, '2019-05-04', 'DL'),
(28, '719189205715', 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 50, '2019-05-04', 'DL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`username`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
 ADD PRIMARY KEY (`F_ID`,`R_ID`), ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `food_del_add`
--
ALTER TABLE `food_del_add`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`order_ID`), ADD KEY `F_ID` (`F_ID`), ADD KEY `username` (`username`), ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
 ADD PRIMARY KEY (`R_ID`), ADD UNIQUE KEY `M_ID_2` (`M_ID`), ADD KEY `M_ID` (`M_ID`);

--
-- Indexes for table `transaction_ids`
--
ALTER TABLE `transaction_ids`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `t_id` (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `food_del_add`
--
ALTER TABLE `food_del_add`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaction_ids`
--
ALTER TABLE `transaction_ids`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
