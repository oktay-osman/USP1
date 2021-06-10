-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 юни 2021 в 11:33
-- Версия на сървъра: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bsave`
--

-- --------------------------------------------------------

--
-- Структура на таблица `categories_expenses`
--

CREATE TABLE `categories_expenses` (
  `category_name` varchar(60) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `categories_expenses`
--

INSERT INTO `categories_expenses` (`category_name`, `id_category`) VALUES
('Gift', 1),
('Crypto', 2),
('Rent', 3),
('Food', 4),
('Restaurants', 5),
('Clothes', 6),
('Sport', 7),
('Cosmetics', 8),
('Car', 9),
('Bills', 10);

-- --------------------------------------------------------

--
-- Структура на таблица `categories_incomes`
--

CREATE TABLE `categories_incomes` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `categories_incomes`
--

INSERT INTO `categories_incomes` (`id_category`, `category_name`) VALUES
(1, 'Salary'),
(2, 'Bonus'),
(3, 'Pension'),
(4, 'Gift'),
(5, 'Crypto'),
(6, 'Rent'),
(7, 'Welfare'),
(8, 'Scholarship');

-- --------------------------------------------------------

--
-- Структура на таблица `expenses`
--

CREATE TABLE `expenses` (
  `id_expense` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` double NOT NULL,
  `categoty_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `ddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `expenses`
--

INSERT INTO `expenses` (`id_expense`, `user_id`, `value`, `categoty_id`, `description`, `ddate`) VALUES
(18, 21, 120.1, 6, 'Shopping', '2021-06-02'),
(20, 21, 21.01, 8, 'Shopping', '2021-06-01'),
(21, 21, 203.15, 10, 'Paying bills', '2021-05-20'),
(22, 21, 120.8, 7, 'Fitness', '2021-05-07'),
(23, 19, 1240.3, 9, 'Car Service', '2021-05-26'),
(24, 19, 120.6, 4, 'from Supermarket', '2021-06-01'),
(25, 19, 54.7, 4, 'From Metro', '2021-06-23'),
(26, 19, 105.3, 10, 'Аpartment bills', '2021-05-29'),
(27, 22, 240.5, 7, 'Fitness', '2021-06-01'),
(28, 22, 120.3, 4, 'Kaufland', '2021-06-05'),
(29, 22, 80.6, 9, 'Car Service', '2021-06-06'),
(30, 22, 50, 10, 'Gas', '2021-05-27');

-- --------------------------------------------------------

--
-- Структура на таблица `incomes`
--

CREATE TABLE `incomes` (
  `id_income` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` double NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `ddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `incomes`
--

INSERT INTO `incomes` (`id_income`, `user_id`, `value`, `category_id`, `description`, `ddate`) VALUES
(36, 21, 1040.5, 1, 'for May', '2021-06-02'),
(41, 21, 504, 3, 'for May', '2021-06-07'),
(42, 21, 1024, 3, 'For April', '2021-05-07'),
(43, 21, 154.23, 5, 'SHIBA INU', '2021-05-28'),
(44, 21, 37.2, 5, 'DOGE', '2021-05-31'),
(45, 19, 1660.1, 1, 'For May', '2021-06-01'),
(46, 19, 760, 2, 'For May', '2021-06-01'),
(47, 19, 145.2, 8, 'From TU-Varna', '2021-06-04'),
(48, 19, 250.3, 5, 'Bitcoin', '2021-05-13'),
(49, 19, 125, 4, 'Gifts', '2021-06-06'),
(50, 22, 300.5, 8, 'From Tu-Varna', '2021-06-06'),
(51, 22, 958.3, 1, 'For May', '2021-06-01'),
(52, 22, 15.7, 5, 'SHIBA INU', '2021-05-19'),
(53, 22, 150, 4, 'Birthday', '2021-05-01'),
(54, 22, 50.2, 6, 'For May', '2021-05-31');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id_user`, `name`, `username`, `password`) VALUES
(19, 'Kaloyan', 'kaloyan', 'kaloyan'),
(21, 'Elena', 'elena', 'elena'),
(22, 'Oktay', 'oktay', 'oktay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories_expenses`
--
ALTER TABLE `categories_expenses`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `categories_incomes`
--
ALTER TABLE `categories_incomes`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id_expense`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `categoty_id` (`categoty_id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id_income`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories_expenses`
--
ALTER TABLE `categories_expenses`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories_incomes`
--
ALTER TABLE `categories_incomes`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id_expense` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id_income` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`categoty_id`) REFERENCES `categories_expenses` (`id_category`);

--
-- Ограничения за таблица `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `incomes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `incomes_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories_incomes` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
