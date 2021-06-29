-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 06:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aviarymanagmentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerId` int(11) NOT NULL,
  `Pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerId`, `Pid`) VALUES
(1, 6),
(2, 7),
(3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `finches`
--

CREATE TABLE `finches` (
  `FinchId` int(11) NOT NULL,
  `FName` varchar(15) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `Age` float DEFAULT NULL,
  `Sex` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finches`
--

INSERT INTO `finches` (`FinchId`, `FName`, `cost`, `Age`, `Sex`) VALUES
(1, 'Zebra Finch', 700, 4.5, 'F'),
(2, 'Zebra Finch', 600, 3, 'F'),
(3, 'Awl Finch', 1000, 2, 'M'),
(4, 'Common Finch', 550, 1, 'M'),
(5, 'SedalBack Finch', 1500, 2, 'M'),
(6, 'PlaneWhite', 2000, 2.5, 'M'),
(7, 'Fown Banglies', 600, 2.5, 'F'),
(8, 'Glodian', 4000, 2, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `DetailId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `CustomerDiscription` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`DetailId`, `OrderId`, `StartDate`, `EndDate`, `CustomerDiscription`) VALUES
(1, 3, '2021-06-13', '2021-06-23', 'Please diliver this order on tim and be careful about currior services because this is summer'),
(2, 1, '2021-06-15', '2021-06-25', 'Please diliver this order on tim and be careful about currior services because this is summer'),
(3, 2, '2021-05-01', '2021-05-10', 'Please diliver this order on tim and be careful about currior services because this is summer'),
(4, 5, '2021-05-28', '2021-06-08', 'Please diliver this order on tim and be careful about currior services because this is summer'),
(5, 4, '2021-05-21', '2021-06-01', 'Please diliver this order on tim and be careful about currior services because this is summer');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderId` int(11) NOT NULL,
  `StockId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderId`, `StockId`, `CustomerId`) VALUES
(1, 5, 1),
(2, 2, 1),
(3, 3, 2),
(4, 1, 3),
(5, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Mathod` varchar(15) DEFAULT NULL,
  `P_Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentId`, `OrderId`, `Amount`, `Mathod`, `P_Status`) VALUES
(1, 4, 4000, 'Cradit Card', 'Paid'),
(2, 1, 10000, 'Cradit Card', 'Paid'),
(3, 5, 3000, 'JazzCash', 'Not Paid'),
(4, 3, 5000, 'JazzCash', 'Paid'),
(5, 2, 5000, 'ByHand', 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `personaldetail`
--

CREATE TABLE `personaldetail` (
  `Pid` int(11) NOT NULL,
  `Pname` varchar(15) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Cnic` varchar(15) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personaldetail`
--

INSERT INTO `personaldetail` (`Pid`, `Pname`, `Phone`, `Cnic`, `Address`, `City`, `Sex`) VALUES
(1, 'Ameer Mavia', '03008096398', '3520256237649', '69/A Gulshan Park, Opp Mansoorah, Multan Road', 'Lahore', 'M'),
(2, 'Hamza Asad', '03005467884', '3520234561239', '72/D Gulberg Road', 'Lahore', 'M'),
(3, 'Kamran Ali', '03206523444', '3250543679861', '3/A Gulzar e Ahbab, Rahab Road', 'Multan', 'M'),
(4, 'Sadaf Choudhary', '03364519880', '3250570450139', '95/B Ravi Block,Iqbal Town', 'Lahore', 'F'),
(5, 'Amanullah', '03006578234', '32505232768239', '55/C Sabzazar,Multan Road', 'Lahore', 'M'),
(6, 'Huzaifa Ahmad', '03009045699', '3250510985349', '59/C Maragzar Colony,karachi Road', 'Karachi', 'M'),
(7, 'Saad shoukat', '03204070331', '3250532920329', '100/A Canal View,Multan Road', 'Multan', 'M'),
(8, 'Amna khuram', '03364819880', '3250524385031', '237/A Bahria Town', 'Lahore', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `SellerId` int(11) NOT NULL,
  `Pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`SellerId`, `Pid`) VALUES
(5, 1),
(4, 2),
(3, 3),
(2, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `ShipmentId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `Mathod` varchar(15) DEFAULT NULL,
  `ShipmentStatus` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`ShipmentId`, `OrderId`, `Mathod`, `ShipmentStatus`) VALUES
(1, 3, 'ByHand', 'Not Shipped'),
(2, 2, 'ByTrainCargo', 'Shipped'),
(3, 5, 'ByBusCargo', 'Not Shipped'),
(4, 4, 'ByHand', 'Shipped'),
(5, 1, 'ByBusCargo', 'Shipped');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `StockId` int(11) NOT NULL,
  `SellerId` int(11) DEFAULT NULL,
  `FinchId` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`StockId`, `SellerId`, `FinchId`, `quantity`) VALUES
(1, 5, 2, 4),
(2, 4, 5, 1),
(3, 3, 1, 3),
(4, 2, 4, 10),
(5, 2, 3, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerId`),
  ADD KEY `Pid` (`Pid`);

--
-- Indexes for table `finches`
--
ALTER TABLE `finches`
  ADD PRIMARY KEY (`FinchId`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`DetailId`),
  ADD KEY `OrderId` (`OrderId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`),
  ADD KEY `CustomerId` (`CustomerId`),
  ADD KEY `StockId` (`StockId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentId`),
  ADD KEY `OrderId` (`OrderId`);

--
-- Indexes for table `personaldetail`
--
ALTER TABLE `personaldetail`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`SellerId`),
  ADD KEY `Pid` (`Pid`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`ShipmentId`),
  ADD KEY `OrderId` (`OrderId`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`StockId`),
  ADD KEY `SellerId` (`SellerId`),
  ADD KEY `FinchId` (`FinchId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Pid`) REFERENCES `personaldetail` (`Pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`StockId`) REFERENCES `stock` (`StockId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`Pid`) REFERENCES `personaldetail` (`Pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`SellerId`) REFERENCES `seller` (`SellerId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`FinchId`) REFERENCES `finches` (`FinchId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
