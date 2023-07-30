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
(1, 'Luxury Ultra thin Wrist Watch', 'Luxury Ultra thin Wrist Watch-1', 'image/watch.jpg'),
(2, 'Luxury XP 1155 Intel Core Laptop', 'XP 1155 Intel Core Laptop-2', 'image/laptop.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `product_code`, `name`, `slug`, `description`, `image`, `category_id`, `featured`, `create_at`) VALUES
(1, '3DcAM01', 'FinePix Pro2 3D Camera', 'FinePix Pro2 3D Camera-1', 'Unlimited 4K print quality photography', 'image/camera.jpg', 1, '1', '2021-05-06 05:24:27'),
(2, 'USB02', 'EXP Portable Hard Drive', 'EXP Portable Hard Drive-2', 'A hard drive is a storage device required to hold on to your files and data for the long term', 'image/external-hard-drive.jpg', 2, '1', '2021-05-06 05:27:29');

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
