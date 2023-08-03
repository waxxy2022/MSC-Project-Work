--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Lasagne Tex-Mex Pasta Recipe food recipe', '3DcAM01', 'product-images/lasagne.png', 1500.00),
(2, 'Pancake With Sliced Strawberry', 'USB02', 'product-images/pancake.jpg', 800.00),
(3, 'strawberry-mousse-sponge-cake-recipe', 'wristWear03', 'product-images/strawberry.png', 300.00),
(4, 'Cooked Seafoods', 'LPN45', 'product-images/Seafoods.jpg', 800.00);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;