-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2019 at 07:35 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shaadimubarak`
--

-- --------------------------------------------------------

--
-- Table structure for table `buys`
--

CREATE TABLE `buys` (
  `CUS_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buys`
--

INSERT INTO `buys` (`CUS_ID`, `PRODUCT_ID`) VALUES
(1, 1),
(2, 8),
(3, 10),
(4, 2),
(5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CART_ID` int(11) NOT NULL,
  `TOTAL_COST` double NOT NULL,
  `CUS_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CART_ID`, `TOTAL_COST`, `CUS_ID`) VALUES
(1, 138440, 1),
(2, 1000, 2),
(3, 0, 3),
(4, 0, 4),
(5, 0, 5),
(6, 0, 13),
(7, 0, 14),
(8, 0, 15),
(9, 0, 16),
(10, 0, 17),
(11, 100, 18),
(12, 500000, 19),
(13, 1601120, 20),
(14, 1810, 21),
(15, 50120, 22),
(16, 300000, 23),
(17, 640160, 24),
(18, 1120, 25),
(19, 14560, 26),
(20, 19299280, 27),
(21, 83200, 28);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUS_ID` int(11) NOT NULL,
  `PHONE_NO` varchar(15) NOT NULL,
  `FIRST_NAME` varchar(25) NOT NULL,
  `CUS_EMAIL` varchar(320) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUS_ID`, `PHONE_NO`, `FIRST_NAME`, `CUS_EMAIL`, `password`) VALUES
(1, '9740878414', 'zubair', 'mzk@xyz.com', '12345'),
(2, '9740878435', 'hitesh', 'n10n@xyz.com', '12345'),
(3, '8899078435', 'karthik', 'gkrHero@xyz.com', '12345'),
(4, '8899088435', 'steve', 'capusa@xyz.com', '12345'),
(5, '7878688435', 'tony', 'ironman@xyz.com', '12345'),
(6, '1234567890', 'm', 'm@k.com', 'qwerty'),
(7, '345345', 'uit', 'm@k.com', 'qwerty'),
(8, '76476476467', 'jbj', 'h@m.com', '12345'),
(9, '9633288', 'jrhil', 'jcv@xyz.com', '12345'),
(10, '09876556', 'mukund', 'murari@bjp.com', '12345'),
(11, '656848454', 'nuthan', 'nu@xyz.com', '12345'),
(12, '1234567896', 'jh', 'jhv@m.com', '12345'),
(13, '4536456546', 'mzkkkkk', 'k@k.com', '12345'),
(14, '0987654398', 'asdf', 'asdf@gmail.com', '1234'),
(15, '34345346', 'mzk', 'hh@n.com', '123'),
(16, '326546', 'mzk', 'cs@uvce.com', '12345'),
(17, '46845113581', 'sa', 'srk@mzk.com', 'srk'),
(18, '9778583475', 'nas', 'nas@mzk.com', '12345'),
(19, '990122668', 'greeshma', 'gree2@gmail.com', 'hitesh'),
(20, '6547647678', 'krthik', 'k@cse.com', '12345'),
(21, '333', 'mh', 'md@gmail.com', '123'),
(22, '876787888', 'hgrthat', 'mm@mm.com', '123'),
(23, '9886094103', 'Devraj', 'devrajdjm@gmail.com', '12345'),
(24, '9740898418', 'afsar khan', 'af@xyz.com', '12345'),
(25, '9740545270', 'Sarah Sakina', 'ss@ben10.com', '12345'),
(26, '09740545270', 'Mohammed Zubair Khan', 'mzk1@w.com', '12345'),
(27, '9740545270', 'srk', '1@2.com', '12345'),
(28, '09740545270', 'iplab', '16@19.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `OCCU_NO` int(11) NOT NULL,
  `OCCU_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`OCCU_NO`, `OCCU_NAME`) VALUES
(1, 'Caterers'),
(2, 'Photography'),
(3, 'Function Hall'),
(4, 'Choreography'),
(5, 'Wedding Planners'),
(6, 'Designers'),
(7, 'Invitation Car Makers'),
(8, 'Decorator'),
(9, 'POLICE');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `ORDER_ID` int(11) NOT NULL,
  `TOTAL_PRICE` double NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `CART_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`ORDER_ID`, `TOTAL_PRICE`, `QUANTITY`, `PRODUCT_ID`, `CART_ID`) VALUES
(3, 1000, 50, 6, 2),
(14, 10000, 1, 7, 1),
(15, 2800, 5, 1, 1),
(17, 500, 2, 4, 3),
(18, 5040, 9, 1, 3),
(19, 1680, 3, 1, 3),
(21, 1120, 2, 1, 10),
(27, 60, 3, 6, 11),
(29, 1600000, 8, 28, 13),
(31, 200000, 1, 28, 17),
(32, 560, 1, 1, 19),
(33, 56000, 100, 1, 21),
(34, 13600, 34, 2, 21);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PAYMENT_ID` int(11) NOT NULL,
  `PAYMENT_TYPE` varchar(30) NOT NULL,
  `AMOUNT` double NOT NULL,
  `CART_ID` int(11) NOT NULL,
  `CUS_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PAYMENT_ID`, `PAYMENT_TYPE`, `AMOUNT`, `CART_ID`, `CUS_ID`) VALUES
(1, 'CREDIT CARD', 1000, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `VALUE` double NOT NULL,
  `DESCRIPTION` text,
  `OCCU_NO` int(11) NOT NULL,
  `SUPP_ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `MESUREMENTS` varchar(15) DEFAULT NULL,
  `img` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `VALUE`, `DESCRIPTION`, `OCCU_NO`, `SUPP_ID`, `NAME`, `MESUREMENTS`, `img`) VALUES
(1, 560, 'Superb taste an healthy for every occation.', 1, 2, 'South Indian Thali', 'Plate', 'images/paneer.jpg'),
(2, 400, 'Always takes you to heaven till the last bite.', 1, 2, 'Nouth Indian Thali', 'Plate', 'images/bisibelli.JPG'),
(3, 300, 'Cools your Stomach down.', 1, 2, 'Non-Veg Thali', 'Plate', 'images/curdrice.jpg'),
(4, 250, 'Really nice and your on it.', 1, 2, 'Sea Food Thali', 'Plate', 'images/friedrice.jpg'),
(5, 400, 'Get your sweet tooth working cause it will make you go bizare.', 1, 2, 'Veg Thali', 'Plate', 'images/halwa.jpg'),
(6, 20, 'Make yout wedding invitation once in a lifetime experiece.', 7, 1, 'Royal Card', 'Card', 'images/card.jpg'),
(7, 10000, 'Captures all details from one end to another with perfection.', 2, 3, 'Pre-Wedding Shoot', 'Day', 'images/prewedding.jpg'),
(8, 15000, 'Anybody can dance. We can prove that.', 4, 4, 'Sangeet Pack', 'Day', 'images/sangeet.jpg'),
(9, 100000, 'Spot to make every occation memorable.', 3, 5, 'Daytime', 'Day', 'images/functionhall.jpg'),
(10, 25000, 'Leave it to us.', 5, 6, 'Wedding Complete', 'Wedding', 'images/planner.jpg'),
(11, 30000, 'Can make anything beautiful.', 8, 7, 'Wedding decor', 'Wedding', 'images/decor.jpg'),
(12, 50000, 'Designing and grooming people since 1988.', 6, 8, 'Complete Designing', 'Wedding', 'images/designer.jpg'),
(13, 10, 'Invite everyone with this luxurious cards, so that they cant resist.', 7, 2, 'Luxury Card', 'Card', 'l'),
(14, 15, 'Card with love and happiness exppressions.', 7, 2, 'Happiness card', 'Card', 'l'),
(15, 12.5, 'Make your wedding event that everyone remembers with this card.', 7, 2, 'Grand card', 'Card', 'l'),
(16, 45, 'Spred love with this card.', 7, 2, 'Love card', 'Card', 'l'),
(17, 75, 'One of kind card for your occution', 7, 2, 'Special card', 'Card', 'l'),
(18, 15, 'This designer wedding card is a horizontal sort card. This card has a bloom subject all over it. ', 7, 2, 'Designer card', 'Card', 'l'),
(19, 100, 'Card that will turn all eyes towards your event.', 7, 2, 'Super card', 'Card', 'l'),
(20, 40, 'Card that stands out.', 7, 2, 'R.L card', 'Card', 'l'),
(21, 63, 'Card that shines', 7, 2, 'Golden card', 'Card', 'l'),
(22, 20000, 'We can record all.', 2, 3, 'Complete Wedding Shoot', 'Day', 'l'),
(23, 45000, 'Photography is what we best at.', 2, 3, 'Pre-wedding pack', 'Day', 'l'),
(24, 100000, 'We have even done this for celebrities', 2, 3, 'Celebrity pack', 'Day', 'l'),
(25, 10000, 'We are amateurs, but still we provide quality at affordable prices', 2, 3, 'Wedding pack', 'Day', 'l'),
(26, 79000, 'We shoot even after you guests leave, till the ends.', 2, 3, 'After Wedding pack', 'Day', 'l'),
(27, 89000, 'We shoot candid pics, that no one can.', 2, 3, 'Candid pack', 'Day', 'l'),
(28, 200000, 'We are experts in photography.', 2, 3, 'Professional pack', 'Day', 'l'),
(29, 300000, 'We have even been to palaces to capture moments.', 2, 3, 'Royal pack', 'Day', 'l'),
(30, 70000, 'Simple is always best.', 2, 3, 'Simple pack', 'Day', 'l'),
(31, 150000, 'Will capture all events.', 2, 3, 'Offer pack', 'Day', 'l'),
(32, 20000, 'Dance on your reception to make it momerable.', 4, 4, 'Reception dance', 'Day', 'l'),
(33, 30000, 'Dance with your better half, as we guie u.', 4, 4, 'Couple dance', 'Performance', 'l'),
(34, 100000, 'All the dance events leave it to us.', 4, 4, 'Full Wedding Pack', 'Wedding', 'l'),
(35, 80000, 'Sangeet will be as it is in movies.', 4, 4, 'Sangeet Special', 'Day', 'l'),
(36, 200000, 'Your Wedding performance will be as it is in movies.', 4, 4, 'Celebrity dance', 'Day', 'l'),
(37, 10000, 'Simple is best.', 4, 4, 'Simple pack', 'Day', 'l'),
(38, 50000, 'Simple is best.', 4, 4, 'All Simple pack', 'Wedding', 'l'),
(39, 35000, 'Couple dance that will astonish all.', 4, 4, 'Couple dance', 'Performance', 'l'),
(40, 430, 'Fills up your mouth.', 1, 2, 'Grand Thali', 'plate', 'l'),
(41, 200, 'Simple is always best.', 1, 2, 'Simple Thali', 'plate', 'l'),
(42, 500, 'Larger than ever, complete.', 1, 2, 'Large Thali', 'plate', 'l'),
(43, 470, 'Taste all in one plate.', 1, 2, 'Mixed Thali', 'plate', 'l'),
(44, 300, 'Confusing at max..', 1, 2, 'Confused Thali', 'plate', 'l'),
(45, 250000, 'Peacefull place.', 3, 5, 'Elegant Palace', 'Day', 'l'),
(46, 200000, 'Elegant place for wedding', 3, 5, 'Peacefull Palace', 'Day', 'l'),
(47, 100000, 'New venue just opened recently, best for wedding.', 3, 5, 'Spark Hall', 'Day', 'l'),
(48, 90000, 'Simple is best, isn\'t it..', 3, 5, 'Simple hall', 'Day', 'l'),
(49, 300000, 'Make ur wedding a fairytale.', 3, 5, 'Grand hall', 'Day', 'l'),
(50, 400000, 'Destiny still arrives', 3, 5, 'Avengers Hall', 'Day', 'l'),
(51, 200000, 'To infinity and beyond', 3, 5, 'Infinity palace', 'Day', 'l'),
(52, 150000, 'Good place to tie knot', 3, 5, 'CMA Function Hall', 'Day', 'l'),
(53, 100000, 'we will handle all.', 5, 6, 'Complete planning', 'Wedding', 'l'),
(54, 20000, 'Sangeet is upto us..', 5, 6, 'Sangeet planning', 'Wedding', 'l'),
(55, 80000, 'Reception is upto us..', 5, 6, 'Reception planning', 'Wedding', 'l'),
(56, 120000, 'Making your wedding great is upto us..', 5, 6, 'Grand planning', 'Wedding', 'l'),
(57, 520000, 'Converting your wedding to that of a celebrity is upto us', 5, 6, 'Celebrity planning', 'Wedding', 'l'),
(58, 220000, 'Converting your wedding into your favourite movie is upon us.', 5, 6, 'Movies theme planning', 'Wedding', 'l'),
(59, 60000, 'Function hall will light up.', 8, 7, 'Function hall decoration', 'Wedding', 'l'),
(60, 90000, 'Function hall will turn into heaven.', 8, 7, 'Function hall grand decoration', 'Wedding', 'l'),
(61, 190000, 'Function hall, house, car, etc will be decorated.', 8, 7, 'Complete decoration', 'Wedding', 'l'),
(62, 240000, 'Your favourite movie decoration.', 8, 7, 'ovie decoration', 'Wedding', 'l'),
(63, 40000, 'We will make you the best bride ever.', 6, 8, 'Bride Pack', 'Person', 'l'),
(64, 50000, 'We will make you the best groom ever.', 6, 8, 'Groom Pack', 'Person', 'l'),
(65, 100000, 'We will make you the best groom & bride ever.', 6, 8, 'Bride & Groom Pack', 'Person', 'l'),
(66, 440000, 'We will make you the best family ever.', 6, 8, 'Family Pack', 'Person', 'l'),
(67, 140000, 'We will make you look like a celebrity.', 6, 8, 'Celebrity Pack', 'Person', 'l'),
(68, 190000, 'We will make you look like a Movie Character.', 6, 8, 'Movie Character Pack', 'Person', 'l'),
(69, 220000, 'We will give you western look.', 6, 8, 'Western Pack', 'Person', 'l'),
(70, 320000, 'Designer will guide you through.', 6, 8, 'Designer Pack', 'Person', 'l');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `CUS_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `TEXTD` text NOT NULL,
  `STARS` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`CUS_ID`, `PRODUCT_ID`, `TEXTD`, `STARS`) VALUES
(1, 1, 'I am happy with service', '3'),
(1, 3, 'like it ', '2'),
(1, 4, 'I wish i was a fish', '5'),
(1, 28, 'awesome, love you guys...', '3'),
(2, 2, 'I am not happy with service', '0'),
(3, 3, 'Good', '3'),
(4, 4, 'Very bad disgusting, shut down the website', '0'),
(5, 5, 'Excellent, just speechless.', '5'),
(18, 6, 'very nice royal.', '5'),
(19, 28, 'the best memroies made more memorable ', '5'),
(20, 28, 'nice', '3'),
(21, 3, 'good ', '2'),
(21, 18, 'good', '3'),
(24, 28, 'very good', '5'),
(26, 1, 'nice work', '3'),
(27, 1, 'awesome', '2'),
(28, 1, 'tasty', '4');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `SUPP_ID` int(11) NOT NULL,
  `OCCU_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`SUPP_ID`, `OCCU_NO`) VALUES
(1, 7),
(2, 1),
(3, 2),
(4, 4),
(5, 3),
(6, 5),
(7, 8),
(8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPP_ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PHONE_NO` varchar(15) NOT NULL,
  `ZIP_CODE` varchar(20) NOT NULL,
  `OWNER_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPP_ID`, `NAME`, `PHONE_NO`, `ZIP_CODE`, `OWNER_NAME`) VALUES
(1, 'Raj Enterprises', '6767898900', '560056', 'Raj Kapoor'),
(2, 'M.R.K Caterer', '9967898900', '560089', 'Ram Mohan'),
(3, 'A.M.D Photography', '7789798900', '560088', 'Aslam Pasha'),
(4, 'Stunning Dancers', '7760910015', '560045', 'Hitesh Sonik'),
(5, 'S.R Function Hall', '8860910019', '560067', 'Sonia Oberoi'),
(6, 'Wedding Wizards', '9960910019', '560067', 'Smriti Tandan'),
(7, 'Charm Decorators', '9989798019', '560056', 'Raffeq Ahmed'),
(8, 'Trend Setters', '7889798019', '560089', 'Pooja K.L');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buys`
--
ALTER TABLE `buys`
  ADD PRIMARY KEY (`CUS_ID`,`PRODUCT_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CART_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUS_ID`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`OCCU_NO`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`ORDER_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`),
  ADD KEY `CART_ID` (`CART_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PAYMENT_ID`),
  ADD KEY `CART_ID` (`CART_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `OCCU_NO` (`OCCU_NO`),
  ADD KEY `SUPP_ID` (`SUPP_ID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`CUS_ID`,`PRODUCT_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`SUPP_ID`,`OCCU_NO`),
  ADD KEY `OCCU_NO` (`OCCU_NO`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPP_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buys`
--
ALTER TABLE `buys`
  ADD CONSTRAINT `buys_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `buys_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`CART_ID`) REFERENCES `cart` (`CART_ID`) ON DELETE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`CART_ID`) REFERENCES `cart` (`CART_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`OCCU_NO`) REFERENCES `occupation` (`OCCU_NO`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SUPP_ID`) REFERENCES `supplier` (`SUPP_ID`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`) ON DELETE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`SUPP_ID`) REFERENCES `supplier` (`SUPP_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_ibfk_2` FOREIGN KEY (`OCCU_NO`) REFERENCES `occupation` (`OCCU_NO`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
