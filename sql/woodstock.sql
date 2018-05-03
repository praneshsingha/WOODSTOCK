-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2018 at 08:13 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woodstock`
--

-- --------------------------------------------------------

--
-- Table structure for table `5ad84eaee27a4`
--

CREATE TABLE `5ad84eaee27a4` (
  `serialid` varchar(100) NOT NULL,
  `orderid` varchar(100) DEFAULT NULL,
  `iid` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `QTY` int(20) DEFAULT '1',
  `IPRICE` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'prepare for dispatch',
  `delivery_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5ad84eaee27a4`
--

INSERT INTO `5ad84eaee27a4` (`serialid`, `orderid`, `iid`, `iname`, `QTY`, `IPRICE`, `username`, `status`, `delivery_date`) VALUES
('5adcd18776885', '5adcd0fe73eee', '5ad7e835e7e70', 'Forzza Damien Queen Size Bed (Matt Finish, Wenge)', 1, 10999, 'ram@gmail.com', 'devivered', '2018-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `5ad84eaee279f`
--

CREATE TABLE `5ad84eaee279f` (
  `itemid` varchar(100) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `QTY` int(11) DEFAULT '1',
  `IPRICE` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5ad84eaee279f`
--

INSERT INTO `5ad84eaee279f` (`itemid`, `price`, `iname`, `QTY`, `IPRICE`) VALUES
('5ad7e835e7e70', NULL, 'Forzza Damien Queen Size Bed (Matt Finish, Wenge)', 1, 10999),
('5ad7e7d9c3916', NULL, 'Spacewood Joy Queen Size Bed (Woodpore Finish, Natural Wenge)', 1, 10499);

-- --------------------------------------------------------

--
-- Table structure for table `5ad99b3d7f7a3`
--

CREATE TABLE `5ad99b3d7f7a3` (
  `itemid` varchar(100) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `QTY` int(11) DEFAULT '1',
  `IPRICE` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5ad99b3d7f7a3`
--

INSERT INTO `5ad99b3d7f7a3` (`itemid`, `price`, `iname`, `QTY`, `IPRICE`) VALUES
('5ad7e835e7e70', NULL, 'Forzza Damien Queen Size Bed (Matt Finish, Wenge)', 1, 10999),
('5ad87a5d0d49e', NULL, 'Spacewood Carnival Queen Size Bed without Storage (Natural Wenge)', 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `5ad99b3d7f7ad`
--

CREATE TABLE `5ad99b3d7f7ad` (
  `serialid` varchar(100) NOT NULL,
  `orderid` varchar(100) DEFAULT NULL,
  `iid` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `QTY` int(20) DEFAULT '1',
  `IPRICE` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'prepare for dispatch',
  `delivery_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `5ad876271f91a`
--

CREATE TABLE `5ad876271f91a` (
  `serialid` varchar(100) NOT NULL,
  `orderid` varchar(100) DEFAULT NULL,
  `iid` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `QTY` int(20) DEFAULT '1',
  `IPRICE` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'prepare for dispatch',
  `delivery_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `5ad876271f904`
--

CREATE TABLE `5ad876271f904` (
  `itemid` varchar(100) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `QTY` int(11) DEFAULT '1',
  `IPRICE` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `5add89d125ef6`
--

CREATE TABLE `5add89d125ef6` (
  `itemid` varchar(100) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `QTY` int(11) DEFAULT '1',
  `IPRICE` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5add89d125ef6`
--

INSERT INTO `5add89d125ef6` (`itemid`, `price`, `iname`, `QTY`, `IPRICE`) VALUES
('5ad7e835e7e70', NULL, 'Forzza Damien Queen Size Bed (Matt Finish, Wenge)', 1, 10999),
('5add84adc77c7', NULL, 'Computer table for student and office use', 2, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `5add89d125efb`
--

CREATE TABLE `5add89d125efb` (
  `serialid` varchar(100) NOT NULL,
  `orderid` varchar(100) DEFAULT NULL,
  `iid` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `QTY` int(20) DEFAULT '1',
  `IPRICE` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'prepare for dispatch',
  `delivery_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5add89d125efb`
--

INSERT INTO `5add89d125efb` (`serialid`, `orderid`, `iid`, `iname`, `QTY`, `IPRICE`, `username`, `status`, `delivery_date`) VALUES
('5add92cbb2c67', '5add92486127c', '5ad7e835e7e70', 'Forzza Damien Queen Size Bed (Matt Finish, Wenge)', 1, 10999, 'goku@gmail.com', 'prepare for dispatch', NULL),
('5add92cbb3305', '5add92486127c', '5add84adc77c7', 'Computer table for student and office use', 2, 6000, 'goku@gmail.com', 'prepare for dispatch', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `password`) VALUES
('5ad107300ddb2', 'admin', 'pk02.O523dIIA');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `userid` varchar(100) NOT NULL,
  `card_num` bigint(50) NOT NULL,
  `c_holder_nm` varchar(100) NOT NULL,
  `cvv` text NOT NULL,
  `pin` text NOT NULL,
  `exp_date` date DEFAULT NULL,
  `amount` bigint(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`userid`, `card_num`, `c_holder_nm`, `cvv`, `pin`, `exp_date`, `amount`) VALUES
('5adcabc9d6fa0', 1234567891011121, 'Ram Kumar', '123', '123456', '2019-03-22', 100000),
('5add7d0b38d6f', 1020304050607080, 'Riya Kumari', '880', '567890', '2019-01-01', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `c_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `cost` int(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  `total` int(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`c_id`, `name`, `description`, `cost`, `color`, `total`, `category`, `image`) VALUES
('5ad7e71e193c6', 'The Original Bedstead Company Mortlake Iron/Metal Queen', 'Manufactured to British Standards (BS1725). Designed to last a lifetime.', 1234, 'black', 0, 'dining_table', 'store_images/5adc41963875f.jpg'),
('5ad7e60ce2621', 'Urban Ladder Yorktown Trundle Sheesham Wood Single Size Bed (Mahogany)', 'Product Dimensions: Length (98 cm), Width (90 cm), Height (202 cm) Primary Material: Rosewood Color: Mahogany, Style: Contemporary Bed Size: Single Assembly Required: The product requires carpenter assembly and will be provided by the seller', 26999, 'white', 10, 'bed', 'store_images/5ad7e60ce14fa.jpg'),
('5ad7e77c6c527', 'Urban Ladder Merritt Sheesham Wood Single Size Trundle Bed (Mahogany Finish)', 'Product Dimensions: Length (73.3 inches), Width (37.4 inches), Height (6.4 inches) Primary Material: Sheesham Wood', 11999, 'white', 10, 'bed', 'store_images/5ad7e77c6c231.jpg'),
('5ad7e7d9c3916', 'Spacewood Joy Queen Size Bed (Woodpore Finish, Natural Wenge)', 'Product Dimensions: Length (204 cm), Width (157 cm), Height (72 cm) Primary Material: Engineered Wood', 10499, 'natural', 11, 'bed', 'store_images/5ad7e7d9c356d.jpg'),
('5ad7e835e7e70', 'Forzza Damien Queen Size Bed (Matt Finish, Wenge)', 'Product Dimensions: Length (159.5 cm), Width (206.5 cm), Height (88.5 cm) Primary Material: Engineered Wood Color: Wenge, Finish: Matt Finish, Style: Contemporary Bed Size: Queen', 10999, 'black', 12, 'bed', 'store_images/5ad7e835e7af7.jpeg'),
('5ad879a99b2c4', 'Furny Brogan Three Seater Sofa (Grey)', 'Primary Material: Solid wood, Upholstery Material: Premium Fabric Color: Grey, Style: Modern, Seating Capacity: Three seater. Assembly Required: The product requires carpenter assembly and will be provided by the brand/seller. Warranty Details: The 12 months ', 20000, 'gray', 0, 'bed', 'store_images/5ad879a99b2b6.jpg'),
('5ad87a5d0d49e', 'Spacewood Carnival Queen Size Bed without Storage (Natural Wenge)', 'Product Dimensions: Length (81 inches), Width (64 inches), Height (31 inches) Primary Material: Engineered Wood (Particle Board) Color: Natural Wenge, Style: Modern', 10000, 'white', 12, 'bed', 'store_images/5ad87a5d0d1b0.jpg'),
('5ad87ace7dbe6', 'Forzza Leo Four Seater Dining Table Set (Dark Walnut)', 'Length (119 cm), Width (69 cm), Height (73.8 cm) Primary Material: Engineered wood Color: Dark Walnut, Style: Contemporary', 6000, 'dark ', 0, 'bed', 'store_images/5ad87ace7d8da.jpg'),
('5add84adc77c7', 'Computer table for student and office use', 'computer table, 2 ft length, 3 ft width', 3000, 'wooden', 20, 'computer_table', 'store_images/5add84adc7561.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `medi_register`
--

CREATE TABLE `medi_register` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(200) NOT NULL,
  `cart_nm` varchar(100) DEFAULT NULL,
  `order_tbl_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medi_register`
--

INSERT INTO `medi_register` (`name`, `email`, `gender`, `contact`, `dob`, `password`, `cart_nm`, `order_tbl_id`) VALUES
('ram', 'ram@gmail.com', 'male', 8092347023, '2005-01-01', 'pkEd11V0upP6k', '5ad84eaee279f', '5ad84eaee27a4'),
('yunus', 'yunus@gmail.com', 'male', 8903458903, '1998-01-01', 'pkiGDfRUQQd62', '5ad876271f904', '5ad876271f91a'),
('riya', 'riya@gmail.com', 'female', 7839457982, '2009-01-01', 'pkGsMHguT.loo', '5ad99b3d7f7a3', '5ad99b3d7f7ad'),
('goku', 'goku@gmail.com', 'male', 7023702370, '2000-01-01', 'pkfQCwYvZKqrI', '5add89d125ef6', '5add89d125efb');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_id`, `username`, `name`, `address`, `city`, `state`, `pincode`, `email`, `phone`, `status`) VALUES
('5adeb044ac6de', 'ram@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5adeaffe82d52', 'ram@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5adeafc201a1c', 'ram@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5adeaf46114a6', 'ram@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5adeaf437ae90', 'ram@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5adeaf15a5b47', 'ram@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5adeaf04c49d3', 'ram@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5adeaf013a579', 'ram@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add923b0ff0a', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add91f114ee5', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add91e36b664', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add91d37c373', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add91d0e6d77', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add91b45e948', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add91b22648b', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add9175eb94b', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add916c7ecee', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add9153327cc', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add914707416', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add9138cb6a5', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying'),
('5add90dcbb94e', 'goku@gmail.com', 'Pranesh Kumar Singha', 'Domohona Ps Karandighi Uttar Dinajpur, State West Bengal', 'Raiganj', 'west Bengal', '733215', 'praneshsingha@gmail.com', 9732916078, 'verifying');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `order_id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nameOnCard` varchar(100) NOT NULL,
  `cardNumber` bigint(16) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `cvv` int(3) DEFAULT NULL,
  `transection_id` varchar(100) DEFAULT NULL,
  `pin` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`order_id`, `username`, `nameOnCard`, `cardNumber`, `exp_date`, `cvv`, `transection_id`, `pin`) VALUES
('5adeb0478137d', 'ram@gmail.com', 'Riya Kumari', 1020304050607080, '2019-01-01', NULL, '5adeb61f45b82', 567890),
('', 'ram@gmail.com', 'Ram Kumar', 1234567891011121, '2019-03-22', NULL, '5adeb013d4b09', 123456),
('5add92486127c', 'goku@gmail.com', 'Ram Kumar', 1234567891011121, '2019-03-22', NULL, '5add92cbb016a', 123456),
('5adcd0fe73eee', 'ram@gmail.com', 'Ram Kumar', 1234567891011121, '2019-03-22', NULL, '5adcd18775ae4', 123456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `5ad84eaee27a4`
--
ALTER TABLE `5ad84eaee27a4`
  ADD PRIMARY KEY (`serialid`);

--
-- Indexes for table `5ad84eaee279f`
--
ALTER TABLE `5ad84eaee279f`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `5ad99b3d7f7a3`
--
ALTER TABLE `5ad99b3d7f7a3`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `5ad99b3d7f7ad`
--
ALTER TABLE `5ad99b3d7f7ad`
  ADD PRIMARY KEY (`serialid`);

--
-- Indexes for table `5ad876271f91a`
--
ALTER TABLE `5ad876271f91a`
  ADD PRIMARY KEY (`serialid`);

--
-- Indexes for table `5ad876271f904`
--
ALTER TABLE `5ad876271f904`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `5add89d125ef6`
--
ALTER TABLE `5add89d125ef6`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `5add89d125efb`
--
ALTER TABLE `5add89d125efb`
  ADD PRIMARY KEY (`serialid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`order_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
