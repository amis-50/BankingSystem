
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `omsaibank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Saneet', 'Ankit', 200, '2022-04-17 18:58:27'),
(2, 'Sanket', 'Ankit', 200, '2022-04-17 19:00:31'),
(3, 'Ankit', 'Niky', 5000, '2022-04-17 19:01:32'),
(4, 'Sanket', 'Niky', 5000, '2022-04-17 19:06:15'),
(5, 'Arjun', 'Ankit', 500, '2022-04-17 19:28:24'),
(6, 'Arjun', 'Ankit', 500, '2022-04-17 19:30:31'),
(7, 'Arjun', 'Ankit', 200, '2022-04-17 19:31:22'),
(8, 'Siddhu', 'Aman', 520, '2022-04-18 07:39:58'),
(9, 'Arka', 'Sanket', 500, '2022-04-18 09:37:08'),
(10, 'Sanket', 'Aman', 100, '2022-04-18 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'Ankit', 'oosp@gmail.com', 46600),
(2654, 'Aman', 'ok@gmail.com', 30620),
(3624, 'Gaurav', 'mallu@gmail.com', 40000),
(4542, 'Arjun', 'nepali@gmail.com', 48800),
(5345, 'Sanket', 'lad@gmail.com', 35000),
(5465, 'Aarya', 'gothale@gmail.com', 49500),
(6554, 'Niky', 'kale@gmail.com', 40000),
(7875, 'Siddhu', 'pajji@gmail.com', 49480),
(8877, 'Suvam', 'pk@gmail.com', 40000),
(9245, 'Sachin', 'gole@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;