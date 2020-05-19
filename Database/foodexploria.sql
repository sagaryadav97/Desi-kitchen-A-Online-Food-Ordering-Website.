-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2019 at 04:29 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`) VALUES
(65, 'Full Meals', 40, 'A meal is an eating occasion that takes place at a certain time and includes prepared food', 4, 'images/index.jpg'),
(66, 'Parotta', 50, 'Crispy on the outside, soft on the inside, roti prata hits the spot every time. A South-Indian flat bread made by frying stretched dough flavoured with ghee (Indian clarified butter), it is usually se', 4, 'images/index2.jpg'),
(67, 'Mutton kari', 100, 'Karnataka Style Mutton Chops', 4, 'images/index3.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `food_del_add`
--

INSERT INTO `food_del_add` (`id`, `email`, `address`, `pincode`, `number`) VALUES
(11, 'sellyfellows@gmail.com', 'sadsdasdasdasd', '561203', '2147483647'),
(12, 'pratheek@gmail.com', 'banaglore rural', '561203', '9845121858'),
(19, '', 'sdadasd', '561203', '8848233627'),
(18, '', 'sdadasd', '561203', '8848233627'),
(17, '', 'adasdasd', '46554', '4654654'),
(20, '', 'sdadasd', '561203', '8848233627'),
(21, '', 'sdadasd', '561203', '8848233627'),
(22, '', 'sdadasd', '561203', '8848233627'),
(23, '', 'sdadasd', '561203', '8848233627'),
(24, 'ravu@gmail.com', 'sagarasdasd', '561203', '457885112'),
(25, 'test4@gmail.com', 'banaglore rural,karnataka', '561203', '8884823362'),
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
('admin', 'admin', 'sellyfellows@gmail.com', '9874563210', 'banaglore', 'admin');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=133 ;

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
(119, 67, 'Mutton kari', 100, 1, '2019-05-04', 'ravinan', 4, '335519362243', 'sagarasdasd  ,561203  ,457885112', 'ravu@gmail.com'),
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
(132, 66, 'Parotta', 50, 1, '2019-05-04', 'aditi068', 4, '871350534976', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 'dsigi@gmail.com');

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
(4, 'DIGI FOOD', 'digi@gmail.com', '9874563210', 'banaglore', 'admin');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `transaction_ids`
--

INSERT INTO `transaction_ids` (`id`, `t_id`, `mail`, `addr`, `amount`, `date`, `status`) VALUES
(33, '871350534976', 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 50, '2019-05-04', 'AP'),
(32, '780026325988', 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 50, '2019-05-04', 'AP'),
(31, '418878856161', 'dsigi@gmail.com', '1st cross,bangalore rural,doddaballapur  ,561203  ,888483', 50, '2019-05-04', 'AP'),
(30, '172454714767', 'test4@gmail.com', 'banaglore rural,karnataka  ,561203  ,8884823362', 50, '2019-05-04', 'DL'),
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
 ADD PRIMARY KEY (`id`);

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
MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `food_del_add`
--
ALTER TABLE `food_del_add`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaction_ids`
--
ALTER TABLE `transaction_ids`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
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
ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
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
