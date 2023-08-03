--
-- Database: `live-search`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` text NOT NULL
  

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `slug`, `image`) VALUES
(1, 'Plant', 'Luxury Ultra thin Wrist Watch-1', 'image/watch.jpg'),
(2, 'Luxury XP 1155 Intel Core Laptop', 'XP 1155 Intel Core Laptop-2', 'image/laptop.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `food` varchar(255) NOT NULL,
 
  
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `type`, `name`, `group`, `description`, `image`, `food`, `create_at`) VALUES
(1, 'Nut and Seed', 'PlantOrigin', 'Oil seed', 'Allergy-Nut Allergy', 'image/camera.jpg', 'Almond', '2023-08-06 05:24:27'),

(2, 'Nut and Seed', 'PlantOrigin', 'Oil seed', 'Allergy-Nut Allergy', 'image/camera.jpg', 'Almond', '2023-08-06 05:24:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
