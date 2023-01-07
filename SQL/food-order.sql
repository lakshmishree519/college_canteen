-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 06:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(31, 'Ramanna', 'ramanna23', '2f9f5e177f9307366576284bdfdfc3da'),
(33, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(1, 'Breakfast', 'Food_Category_162.jpg', 'Yes', 'Yes'),
(2, 'Meals', 'Food_Category_492.jpg', 'Yes', 'Yes'),
(3, 'Snacks and Drinks', 'Food_Category_620.jpg', 'Yes', 'Yes'),
(5, 'Noodles and More..', 'Food_Category_440.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(2, 'Idli', '', '30.00', 'Food-Name-2264.jpg', 1, 'Yes', 'Yes'),
(3, 'Mini Meals', '', '50.00', 'Food-Name-1125.jpg', 2, 'Yes', 'Yes'),
(4, 'Veg Fried Rice', '', '60.00', 'Food-Name-3246.jpg', 5, 'Yes', 'Yes'),
(5, 'Gobi Manchurian', '', '70.00', 'Food-Name-7431.jpg', 5, 'Yes', 'Yes'),
(6, 'Masala Dose', '', '50.00', 'Food-Name-9126.jpg', 1, 'Yes', 'Yes'),
(7, 'Veg Palav', '', '40.00', 'Food-Name-9287.jpg', 2, 'Yes', 'Yes'),
(8, 'Chapatti', '', '30.00', 'Food-Name-4245.jpg', 2, 'Yes', 'Yes'),
(9, 'Egg Fried Rice', '', '80.00', 'Food-Name-4231.jpg', 5, 'Yes', 'Yes'),
(10, 'Poori', '', '35.00', 'Food-Name-3166.jpg', 1, 'Yes', 'Yes'),
(11, 'Curd Rice', '', '30.00', 'Food-Name-1222.jpg', 2, 'Yes', 'Yes'),
(12, 'Paneer Manchurian', '', '80.00', 'Food-Name-1346.jpg', 5, 'Yes', 'Yes'),
(13, 'Samosa', '', '15.00', 'Food-Name-9798.jpg', 3, 'Yes', 'Yes'),
(14, 'Cheese Sandwich', '', '50.00', 'Food-Name-9318.jpg', 3, 'Yes', 'Yes'),
(15, 'Chicken Cup Noodles', '', '50.00', 'Food-Name-5532.jpg', 3, 'Yes', 'Yes'),
(16, 'Vada', '', '30.00', 'Food-Name-3900.jpg', 1, 'Yes', 'Yes'),
(17, 'Set Dose', '', '40.00', 'Food-Name-6328.jpg', 1, 'Yes', 'Yes'),
(18, 'Masala Cup Noodles', '', '40.00', 'Food-Name-679.jpg', 3, 'Yes', 'Yes'),
(19, 'Coffee', '', '15.00', 'Food-Name-6974.jpg', 3, 'Yes', 'Yes'),
(20, 'Tea', '', '15.00', 'Food-Name-9299.jpg', 3, 'Yes', 'Yes'),
(21, 'Badam Milk', '', '20.00', 'Food-Name-9273.jpg', 3, 'Yes', 'Yes'),
(22, 'Noodles', '', '60.00', 'Food-Name-9775.jpg', 5, 'Yes', 'Yes'),
(23, 'Chow Chow Bath', '', '35.00', 'Food-Name-3981.jpg', 1, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_usn` varchar(15) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_usn`, `customer_contact`, `customer_email`) VALUES
(2, 'Mini Meals', '50.00', 1, '50.00', '2023-01-07 05:06:30', 'Ordered', 'Ajay', '1DS20IS037', '9853667824', 'ajay@gmail.com'),
(3, 'Veg Fried Rice', '60.00', 1, '60.00', '2023-01-07 05:08:25', 'Ordered', 'Ankitha', '1DS20IS038', '9853667829', 'ankitha@gmail.com'),
(4, 'Idli', '30.00', 789, '23670.00', '2023-01-07 05:26:36', 'Delivered', 'Basil Maddox', 'Atque do repell', '+1 (151) 773-8378', 'galy@mailinator.com'),
(5, 'Idli', '30.00', 728, '21840.00', '2023-01-07 05:31:24', 'Ordered', 'Leah Blankenship', 'Id id fugit qua', '+1 (516) 776-2902', 'badakid@mailinator.com'),
(6, 'Gobi Manchurian', '70.00', 419, '29330.00', '2023-01-07 05:32:15', 'Ordered', 'Mechelle Stanton', 'Ullamco quos qu', '+1 (578) 714-4784', 'mysoqup@mailinator.com'),
(7, 'Mini Meals', '50.00', 1, '50.00', '2023-01-07 05:45:16', 'Ordered', 'Leo Hull', 'Impedit facere ', '+1 (234) 177-4583', 'byco@mailinator.com'),
(8, 'Veg Fried Rice', '60.00', 3, '180.00', '2023-01-07 05:45:27', 'Delivered', 'Lucas Cooke', 'In et facere hi', '+1 (375) 873-5681', 'pitefejuc@mailinator.com'),
(9, 'Paneer Manchurian', '80.00', 497, '39760.00', '2023-01-07 05:50:15', 'Ordered', 'Cairo Huber', 'Inventore molli', '+1 (671) 604-4384', 'xovyrodo@mailinator.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
