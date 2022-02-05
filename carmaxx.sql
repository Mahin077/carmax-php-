-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 04:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carmaxx`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `img`, `Title`, `discription`) VALUES
(1, 'images/one.jpg', 'FIND YOUR CAR', 'Step into confidence.'),
(2, 'images/three.jpg', 'FIND YOUR CAR', 'Step into confidence.'),
(3, 'images/two.jpg', 'FIND YOUR CAR', 'Step into confidence.'),
(5, 'images/31.jpg', 'FIND YOUR CAR', 'Step into confidence.');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `message`) VALUES
(1, 'akib', 'akib@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `footericon`
--

CREATE TABLE `footericon` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footericon`
--

INSERT INTO `footericon` (`id`, `name`, `class`, `link`) VALUES
(1, 'Facebook', 'fab fa-facebook-f', 'https://www.facebook.com/'),
(2, 'Twitter', 'fab fa-twitter', 'https://twitter.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJsYW5nIjoiZW4ifQ%3D%3D%22%7D'),
(3, 'Instagram', 'fab fa-instagram', 'https://www.instagram.com/accounts/login/'),
(4, 'Linkedin', 'fab fa-linkedin-in', 'https://www.linkedin.com/login');

-- --------------------------------------------------------

--
-- Table structure for table `footermenus`
--

CREATE TABLE `footermenus` (
  `id` int(11) NOT NULL,
  `QuickLinks` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `year` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footermenus`
--

INSERT INTO `footermenus` (`id`, `QuickLinks`, `ref`, `year`) VALUES
(1, 'Special Offers', 'Privatepage.php', 2021),
(2, 'About Us', 'aboutUsPage.php', NULL),
(3, 'Team', 'TeamPage.php', NULL),
(4, 'Contact Us', 'contactUs.php', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hometopicon`
--

CREATE TABLE `hometopicon` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hometopicon`
--

INSERT INTO `hometopicon` (`id`, `icon`, `title`, `discription`) VALUES
(1, 'fas fa-home', '6+ branches', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quia, architecto! Vitae, harum illum eligendi beatae odio architecto, asperiores ullam repudiandae explicabo optio modi voluptates!'),
(2, 'fas fa-users', '320+ happy clients', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quia, architecto! Vitae, harum illum eligendi beatae odio architecto, asperiores ullam repudiandae explicabo optio modi voluptates!'),
(3, 'fas fa-car', '1500+ news cars', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quia, architecto! Vitae, harum illum eligendi beatae odio architecto, asperiores ullam repudiandae explicabo optio modi voluptates!');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `phone`, `password`) VALUES
(6, 'ar56', 'a@gmail.com', '014444555', '4124bc0a9335c27f086f24ba207a4912'),
(7, 'a', 'mmahinm10@gmail.com', 'a', '4124bc0a9335c27f086f24ba207a4912'),
(8, 'a', 'a1@gmail.com', '41515', '4124bc0a9335c27f086f24ba207a4912');

-- --------------------------------------------------------

--
-- Table structure for table `nav`
--

CREATE TABLE `nav` (
  `id` int(11) NOT NULL,
  `link` varchar(300) NOT NULL,
  `title` varchar(200) NOT NULL,
  `db` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nav`
--

INSERT INTO `nav` (`id`, `link`, `title`, `db`) VALUES
(1, 'index.php', 'Home', 'CarMax'),
(2, 'Cart.php', 'Cars', NULL),
(3, 'Privatepage.php', 'Special Offers', NULL),
(4, 'contactUs.php', 'Contact', NULL),
(5, 'TeamPage.php', 'Team', NULL),
(6, 'aboutUsPage.php', 'About Us', NULL),
(7, 'profile.php', 'Profile', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_cars`
--

CREATE TABLE `order_cars` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `car_id` int(11) NOT NULL,
  `car_name` varchar(100) NOT NULL,
  `car_price` float NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_cars`
--

INSERT INTO `order_cars` (`id`, `user_id`, `email`, `phone`, `car_id`, `car_name`, `car_price`, `time`) VALUES
(62, 6, 'a@gmail.com', ' 014444555', 6, 'Mitshubishi Xpander', 3072000, '16/10/21 05:00:24pm'),
(63, 6, 'a@gmail.com', ' 014444555', 8, 'HONDA CIVIC TURBO', 4300000, '16/10/21 05:00:45pm');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `Max Power` varchar(100) NOT NULL,
  `Seating Capacity` varchar(100) NOT NULL,
  `Body Type` varchar(100) NOT NULL,
  `Fuel Type` varchar(100) NOT NULL,
  `No. of Cylinder` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Engine Type` varchar(100) NOT NULL,
  `Engine Displacement` varchar(100) NOT NULL,
  `tbl` varchar(100) NOT NULL DEFAULT 'normal',
  `img` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `Max Power`, `Seating Capacity`, `Body Type`, `Fuel Type`, `No. of Cylinder`, `Color`, `Engine Type`, `Engine Displacement`, `tbl`, `img`, `brand`, `model`, `year`) VALUES
(1, 'Audi A3', 5000000, '228 hp @ 5800 rpm', '5 Persons', 'Sedan', 'Petrol', '4', 'Blue, Black, White', '1 Diesel Engine and 1 Petrol Engine', '1968 cc', 'normal', 'images/cAudiA3.jpg', 'Audi', 'A3', '2017'),
(2, 'Audi A5', 9500000, '140 hp @ 3,800–4,200 rpm', '5 Persons', 'Sedan', 'Diesel', '4', 'Black, White', 'Turbocharged 2.0-liter four-cylinder', '1968 cc', 'normal', 'images/cAudiA5.jpg', 'Audi', 'A5', '2011'),
(3, 'Audi Q7', 15000000, '241.4 bhp @ 3800-4400 rpm', '7 Persons', 'SUV', 'Diesel', '6', 'Black, White', 'Turbocharged V6 engine', '2967 cc', 'normal', 'images/cAudiQ7.jpg', 'Audi', 'Q7', '2017'),
(4, 'BMW X1', 9000000, '220 ps @ 5,000-5,500 rpm', '5 Persons', 'SUV', 'Petrol-Electric', '4', 'Black, White, Blue', 'B38 turbo', '1998 cc', 'normal', 'images/cBmwX1.jpg', 'BMW', 'X1', '2020'),
(5, 'BMW X5', 19000000, '220 ps @ 5,000-5,500 rpm', '5 Persons', 'SUV', 'Petrol/Diesel', '6', 'Black, White, Blue', 'Diesel Engine', '2993 cc', 'normal', 'images/cBmwX5.jpg', 'BMW', 'X5', '2020'),
(6, 'BMW 7Series', 25000000, '290{394}(Combined power kW (HP))', '5 Persons', 'Sedan', 'Petrol-Electric', '6', 'Black, White, Blue', 'Diesel Engine', '2993 cc', 'normal', 'images/ccAudiA3.jpeg', 'BMW', '7', '2016'),
(7, 'HONDA HRV', 3700000, '120 ps @ 6600 rpm', '5 Persons', 'SUV	', 'Petrol/Diesel', '4', 'black, blue, silver', 'SOHC i-VTEC I4 engine', '1497 cc	', 'normal', 'images/cHHRV.jpg', 'HONDA	', 'HRV	', '2018	'),
(8, 'HONDA CIVIC TURBO', 4300000, '173 ps @ 5500 rpm', '5 Persons', 'Sedan	', 'Petrol/Diesel', '4 	', 'Red,white,blue	', 'VTEC TURBO', '1498 cc	', 'normal', 'images/cHCivic.jpg', 'HONDA	', 'CIVIC	', '2020'),
(9, 'SUZUKI SWIFT	', 1375000, '61 @ 6000 rpm	', '5 Persons', 'Hatchback', 'Petrol', '4	', 'Red, Blue	', 'K Series VVT Engine', '1197 cc', 'normal', 'images/cSSwift.jpg', 'SUZUKI	', 'Swift	', '2020'),
(10, 'SUZUKI CIAZ', 2195000, '77 @ 6000 rpm	', '5 Persons', 'Sedan	', 'Petrol-Electric', '4	', 'Black,Blue,White', 'k14B VVT Engine	', '1500 cc	', 'normal', 'images/cSCiaz.jpg', 'SUZUKI	', 'Ciaz	', '2020'),
(11, 'NISSAN XTRAIL', 5800000, '106 kw @ 6000 rpm', '7 Persons', 'SUV', 'Diesel/Hybrid', '4', 'Red, White, Black', 'MR20DD Engine', '1995 cc', 'normal', 'images/Nissan.jpg', 'NISSAN', 'Xtrail', '2020'),
(12, 'MERCEDES-BENZ C CLASS', 9000000, '156 bhp @ 5300 rpm', '5 Persons', 'Sedan', 'Premium petrol', '4', 'Black, White', 'Diesel Engine', '1595 cc', 'normal', 'images/cMerC.jpg', 'MERCEDES-BENZ', 'C CLASS', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `products2`
--

CREATE TABLE `products2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `Max Power` varchar(100) NOT NULL,
  `Seating Capacity` varchar(100) NOT NULL,
  `Body Type` varchar(100) NOT NULL,
  `Fuel Type` varchar(100) NOT NULL,
  `No. of Cylinder` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Engine Type` varchar(100) NOT NULL,
  `Engine Displacement` varchar(100) NOT NULL,
  `tbl` varchar(100) NOT NULL DEFAULT 'private',
  `img` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products2`
--

INSERT INTO `products2` (`id`, `name`, `price`, `Max Power`, `Seating Capacity`, `Body Type`, `Fuel Type`, `No. of Cylinder`, `Color`, `Engine Type`, `Engine Displacement`, `tbl`, `img`, `brand`, `model`, `year`, `discount`) VALUES
(1, 'Toyota Corolla', 4200000, '72(97) hp @ 5200 rpm', '5 Persons', 'Sedan', 'Petrol-Electric', '4', 'white, black, silver', 'Diesel Engine', '1798 cc', 'private', 'images/cToyotaCorolla.jpg', 'Toyota', 'Corolla Altis', '2020', 3),
(2, 'Toyota Rush', 3800000, '103 [77] hp @ 6000 rpm', '7', 'SUV', 'Petrol/Diesel', '4', 'white, black, silver', '16-valve DOHC', '1496 cc', 'private', 'images/ctoyotaRush.jpg', 'Toyota', 'Rush', '2020', 3),
(3, 'BMW X7', 25000000, '250(340) ps @ 5,500-6,500 rpm', '7', 'SUV', 'Petrol/Diesel', '6', 'white, black, silver', 'twin-turbo 4.4L', '2993 cc', 'private', 'images/cBmwX7.jpeg', 'BMW', 'X7', '2019', 10),
(4, 'Mitshubishi Pajero', 11000000, '184 ps @ 5250 rpm', '7', 'SUV', 'Diesel', '4', 'white, black, silver', 'DI-Diesel Engine', '2972 cc', 'private', 'images/cMitshuPajero.jpg', 'Mitshubishi', 'Pajero', '2018', 15),
(5, 'Mitshubishi Attrage', 1800000, '157 ps @ 6000 rpm', '5', 'Sedan', 'Petrol', '3', 'white, black, silver', 'Petrol Engine', '1193 cc', 'private', 'images/cMitshuAttrage.jpg', 'Mitshubishi', 'Attrage', '2018', 3),
(6, 'Mitshubishi Xpander', 3200000, '103 hp @ 6000 rpm', '7', 'SUV', 'Diesel', '4', 'white, black, silver', 'Diesel Engine', '1499 cc', 'private', 'images/cMitshuXpander.jpg', 'Mitshubishi', 'Xpander', '2019', 4);

-- --------------------------------------------------------

--
-- Table structure for table `servicesection`
--

CREATE TABLE `servicesection` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicesection`
--

INSERT INTO `servicesection` (`id`, `icon`, `title`, `discription`) VALUES
(1, 'fas fa-car', 'car selling', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quia, architecto! Vitae, harum illum eligendi beatae odio architecto, asperiores ullam repudiandae explicabo optio modi voluptates!'),
(2, 'fas fa-car-crash', 'car insurance', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quia, architecto! Vitae, harum illum eligendi beatae odio architecto, asperiores ullam repudiandae explicabo optio modi voluptates!'),
(3, 'fas fa-headset', '24/7 support', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quia, architecto! Vitae, harum illum eligendi beatae odio architecto, asperiores ullam repudiandae explicabo optio modi voluptates!');

-- --------------------------------------------------------

--
-- Table structure for table `teammembers`
--

CREATE TABLE `teammembers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `images` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `link1` varchar(100) NOT NULL,
  `link2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teammembers`
--

INSERT INTO `teammembers` (`id`, `name`, `images`, `title`, `email`, `link1`, `link2`) VALUES
(1, 'Md. Mahin Mahfiz', 'images/unnamed.png', 'CEO', 'mmahinm10@gmail.com', 'https://www.facebook.com/MD.MahiN.007', 'https://www.linkedin.com/mwlite/in/mahin-mahfiz-4797921ab'),
(2, 'Zobayer Ibna Kabir', 'images/unnamed.png', 'Managing Director', 'ibnakabir081@gmail.com', 'https://www.facebook.com/ochena.akib/', 'https://www.linkedin.com/mwlite/in/mahin-mahfiz-4797921ab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footericon`
--
ALTER TABLE `footericon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footermenus`
--
ALTER TABLE `footermenus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hometopicon`
--
ALTER TABLE `hometopicon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_cars`
--
ALTER TABLE `order_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products2`
--
ALTER TABLE `products2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicesection`
--
ALTER TABLE `servicesection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teammembers`
--
ALTER TABLE `teammembers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footermenus`
--
ALTER TABLE `footermenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hometopicon`
--
ALTER TABLE `hometopicon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nav`
--
ALTER TABLE `nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_cars`
--
ALTER TABLE `order_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products2`
--
ALTER TABLE `products2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `servicesection`
--
ALTER TABLE `servicesection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teammembers`
--
ALTER TABLE `teammembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
