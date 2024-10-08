-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 05:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitchenware`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `CustomerData` ()   BEGIN
SELECT * FROM `customer` LEFT JOIN state ON customer.state_id=state.state_id LEFT JOIN city ON city.city_id=customer.city_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ProductData` ()   BEGIN
SELECT * FROM `product` LEFT JOIN seller on seller.seller_id=product.seller_id LEFT JOIN category ON category.category_id=product.category_id LEFT JOIN produce ON produce.produce_id=product.produce_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PurchaseRequestRecord` ()   BEGIN
SELECT * FROM `purchase_request` LEFT JOIN customer ON purchase_request.customer_id=customer.customer_id LEFT JOIN product ON product.product_id=purchase_request.product_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Purchase_Record` ()   BEGIN
SELECT * FROM `purchase_order` LEFT JOIN product ON product.product_id=purchase_order.product_id LEFT JOIN customer ON customer.customer_id=purchase_order.customer_id LEFT JOIN seller ON seller.seller_id=purchase_order.seller_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SellerData` ()   SELECT * FROM seller LEFT JOIN  state ON seller.state_id=state.state_id LEFT JOIN city ON city.city_id=seller.city_id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(25) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `login_id`, `password`, `status`) VALUES
(6, 'admin', 'admin', 'admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(10) NOT NULL,
  `article_type` varchar(25) NOT NULL,
  `publish_date` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `article_description` text NOT NULL,
  `article_img1` varchar(100) NOT NULL,
  `article_img2` varchar(100) NOT NULL,
  `article_img3` varchar(100) NOT NULL,
  `article_img4` varchar(100) NOT NULL,
  `article_img5` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_type`, `publish_date`, `title`, `article_description`, `article_img1`, `article_img2`, `article_img3`, `article_img4`, `article_img5`, `status`) VALUES
(36, 'Blog', '2023-03-08', 'FLAT 20% off On Prestige Pressure Cookers, Flasks & more.....', 'Limited offers Products......\r\nCookware offer (cooker):- The Prestige Popular Svachh Stainless Steel Pressure Cooker brings the best cooking experience to your kitchen. Its unique design helps you cook faster, and the innovative Deep-lid keeps your kitchen clean, at the same time. This pressure cooker comes with an induction base and a host of other top-of-the-line features. Perfected over a period of time with the trademark Prestige engineering, expect the very best with up-to-date innovations and features. Add to that, the elegant design and splendid finish, the cooker is a sheer pleasure to cook with.\r\n\r\nCasserole offers :-\r\n\r\n- Hard Anodised Forged Body\r\n- 6-Layer Durable Stone Finish Non-Stick Coating\r\n- PFOA Free\r\n- Stainless Steel Handles\r\n- Metal Spoon Friendly\r\n- Gas And Induction Compatible\r\n\r\n- Hard Anodised Forged Body\r\n- 6-Layer Durable Stone Finish Non-Stick Coating\r\n- PFOA Free\r\n- Stainless Steel Handles\r\n- Metal Spoon Friendly\r\n- Gas And Induction Compatible\r\n\r\n- Hard Anodised Forged Body\r\n- 6-Layer Durable Stone Finish Non-Stick Coating\r\n- PFOA Free\r\n- Stainless Steel Handles\r\n- Metal Spoon Friendly\r\n- Gas And Induction Compatible\r\n\r\nGas Stove :- - High-Speed Jumbo Burner\r\n- Spill-Proof Design\r\n- Superior Toughened Black Glass-Top\r\n- Tri-Pin Burner\r\n- Ergonomic Knob Design\r\n- 2 Years Warranty\r\n\r\n\r\n\r\n', '14855429712064921456CSFGMWebBanners-2f4e3.jpg', '1013820800108513790820192-P-IMG1.webp', '304743692118955984340385-IMG3.webp', '98630680913473601661.15_360x.jpg', '130307720447427219510XsywnM2etHaUFOiH6uiFAwNQjqqrvKx_360x.jpg', ''),
(37, 'Blog', '2023-03-01', 'Exclusive kitchenware collections', 'The vibrant cooking pot crafted in ceramic is sturdy and durable. This versatile cooking pot can be used for cooking any dish. Whether it\'s any stew, soup, or broth- this ceramic pot is a spectacular option. One can even cook rice, chicken curry, or ramen in this microwave-safe bowl. The ceramic pots are dishwasher safe as well. The black rim on the inner surface adds to the minimal aesthetics.\r\n\r\nNestip: Use this cooking pot to serve in style at a housewarming party.\r\n\r\nSize: 29cm L (with handle) x 22cm D x 16cm H (with lid)\r\n\r\nCapacity: 3 litre\r\n\r\nColor: Red and pink\r\n\r\nMaterial: Ceramic\r\n\r\nProducts Included: 1 4L cooking pot with lid\r\n\r\nStyle:\r\nRed-B17MA21B203\r\nPink-B17MA21B205\r\n\r\nCulinary enthusiasts don’t wait for a special day to try out new recipes. Every other day is a new opportunity for going on a cooking venture. Equipped with two bakelite handles, the deep stewpot can help keep the at-home-cooked food experiments going safely throughout the week.\r\n\r\nThe casserole pot has a cover-lid, which doesn’t allow any amount of heat to escape to the atmosphere. Moreover, one can easily use the lid\'s knob-like handle to open up and check the progress of the stew cooking inside the pot. Then accordingly, one can adjust the stove’s flame as required.\r\n\r\nNestip: One can use the cooking stew pot to prepare and serve sambar, biryani, kadhi, dal makhani, keema, etc.\r\n\r\nSize:\r\nWith handle - 28cm L\r\nDiameter of the base - 20cm D\r\nWith lid - 19cm H\r\n\r\nCapacity: 2.5 litre\r\n\r\nColor: Dark grey, black, and yellow\r\n\r\nMaterial: Ceramic', '4974690572136504992Mobile-B1-Kitchen-400x400-Block1-27Feb2023.jpg', '816445069IMG_3429_705ecc15-bbd1-4b76-ac83-f891fe19687e_360x.jpg', '326923554nsa64dec21117_360x.png', '1003037727', '1423036228IMG_3463_b11e3cc8-6a30-4444-a226-700fc8ac1817_360x.jpg', 'Active'),
(38, 'Blog', '2023-02-08', 'Milton flask & more starting at just Rs.199', 'information about products:\r\nFlask \r\nColor: Silver, Material: Stainless Steel, Package Contents: 1 - Piece Flip Lid Thermosteel Water Bottle (1 Litre), For any queries kindly reach customer care number as mentioned on the product packaging along with the proof of purchase.\r\nDouble walled Vacuum insulated technology keeps beverages hot or cold for 24 hours, Inner copper coating for better temperature retention.\r\nA unique flip lid that makes pouring completely hassle-free and spill-free, the lid of this bottle doubles up as a cup for drinking, simple threaded lid for easy use.\r\nIt comes with bag and belt for easy carrying anywhere you go office, home, picnics, outdoor, campaning. Ideal for self use and gifting. This reusable water bottle is made from 304 Grade stainless steel, leak proof, durable, unbreakable, rust proof\r\nPre-condition bottle with hot water if using for HOT beverage and cold water if using for COLD.', '1051013341656716474GMMiltonCSFWebbanners-9f517.jpg', '884688928844817702tiara_900_steel_640x640.jpg', '1195831319Sopl-Oliveware-Black-Lunch-Box-SDL917074787-1-0820b--snISFD.jpg', '1271624708Milton-Red-Lunch-Box-SDL216015391-1-2b680.webp', '314305628Milton-Alive-750-cyan-Cyan-SDL851236038-1-7b5b5.webp', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category` varchar(25) NOT NULL,
  `category_type` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`, `category_type`, `description`, `img`, `status`) VALUES
(28, 'Glassware', 'Produce', 'Glass Products with premium quality.', '1462460337glassware.png', 'Active'),
(29, 'Plates', 'Produce', 'Find here a tool to eat delicious food.', '521070611plate.png', 'Active'),
(30, 'Containers and Jars', 'Produce', 'With an ultra-modish design lightening up the glow of your personal space, this glass jar with a transparent body makes it easy to store and view the content inside.', '291323428jar.jpg', 'Active'),
(31, 'Bottles', 'Produce', 'This bottle\'s sheer body helps to easily identify the contents and also adds beauty to the liquid that you put in. High-impact resistance plastic that gives the same look as glass bottles, yet withstands heavy usage and falls.', '4834951501000010256373-1000010256372_01-2100.jpg', 'Active'),
(32, 'Cookware Sets', 'Produce', 'Made using German technology and it lasts three times longer than ordinary non-stick cookware.\r\nSpecial spatter-coated surface looks new for longer and is also metal-spoon friendly\r\nCan be used on both gas and induction cook-tops.\r\nDurable Granite-finish Coating Dishwasher Safe Superior Non-stick Surface Cook & Serve\r\n', '160443597Kitchen_Desktop_cat_6-27Feb2023.jpg', 'Active'),
(33, 'Utensil Holders', 'Produce', ' hold spoons, ladles, knives, forks, cutters, corkscrews and other items that are in everyday use.', '765088412MB-D4-1-Kitchen-816x400-Block2-27Feb2023.jpg', 'Active'),
(34, 'Kitchen Trolleys', 'Produce', 'To expand counter space or as a kitchen island.', '1427656226Kitchen_Mobile_cat_7-27Feb2023.jpg', 'Active'),
(35, 'Add Ons', 'Produce', 'Tools like Kitchen & Dining, Kitchen Tools, Baking Tools & Accessories, Cheese Graters, Chopping Boards, Cooking Spoons, Cooking Tongs, Cooking Turners.', '1417390253Desktop-D1-1-Kitchen-816x400-Block2-27Feb2023.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `state_id`, `city`, `description`, `status`) VALUES
(3, 4, 'Joensuu', 'Joensuu is a city and municipality in North Karelia in the province of Eastern Finland. It was founded in 1848. The population of Joensuu is 74,941,', 'Active'),
(4, 5, '	Kuopio', 'Kuopio is a city and a municipality located in the region of Northern Savonia, Finland. A population of 110,999 makes it the eighth biggest city in the country', 'Active'),
(5, 6, 'Mikkeli', 'Mikkeli is a town and municipality in Finland. It is located in what used to be the province of Eastern Finland and is part of the Southern Savonia region.', 'Active'),
(7, 9, '	Itanagar', 'anagar is the capital of the Indian state of Arunachal Pradesh. Itanagar is situated at the foothills of Himalayas. It comes administratively under Papum Pare district. Itanagar is well connected by road. ', 'Active'),
(8, 10, '	Dispur', 'Dispur /dÉªsËˆpÊŠÉ™r/ is the capital of the state of Assam. Dispur, a locality of Guwahati, became the capital of Assam in 1973.', 'Active'),
(9, 35, '	Patna', 'is the capital and largest city of the state of Bihar in India. Patna is the second largest city in eastern India after Kolkata.', 'Active'),
(10, 11, 'Raipur', 'Raipur is a city in the Raipur district of the Indian state of Chhattisgarh. It is the capital city of the state of Chhattisgarh and is the administrative headquarters of Raipur district.', 'Active'),
(11, 12, '	Panaji', ' is the capital of the Indian state of Goa and the headquarters of North Goa district. It lies on the banks of the Mandovi River estuary in Tiswadi taluka. ', 'Active'),
(12, 36, '	Gandhinagar', ' is the capital of the state of Gujarat in Western India. Gandhinagar is located approximately 23 km north of Ahmedabad, on the west central point of the Industrial corridor between ', 'Active'),
(13, 13, '	Chandigarh', 'Chandigarh is a city and a union territory in the northern part of India that serves as the capital of the states of Punjab and Haryana. ', 'Active'),
(14, 14, '	Shimla', 'Shimla is the capital of the northern Indian state of Himachal Pradesh, in the Himalayan foothills. Once the summer capital of British India, it remains the terminus of the narrow-gauge Kalka-Shimla Railway, ', 'Active'),
(15, 15, '	Srinagar', ' is the largest city and the summer capital of the Indian state of Jammu and Kashmir. It lies on the banks of the Jhelum River, a tributary of the Indus, and Dal and Anchar lakes. ', 'Active'),
(16, 16, '	Ranchi', 'Ranchi is the capital of the Indian state of Jharkhand, and its third most populous city of the state.', 'Active'),
(17, 18, 'Thiruvananthapuram', 'Thiruvananthapuram  is the capital of the southern Indian state of Kerala.', 'Active'),
(18, 19, '	Bhopal', 'Bhopal is the capital of the Indian state of Madhya Pradesh and the administrative headquarters of Bhopal district and Bhopal division. The city was the capital of the former Bhopal State.', 'Active'),
(19, 20, '	Mumbai', 'Mumbai, formerly called Bombay, is a sprawling, densely populated city on Indiaâ€™s west coast. On the Mumbai Harbour waterfront stands the iconic Gateway of India stone arch, built by the British Raj in 1924. Offshore, nearby Elephanta Island holds ancient cave temples dedicated to Shiva', 'Active'),
(20, 21, '	Imphal', 'The city of Imphal is the capital of the Indian state of Manipur. The ruins of the Palace of Kangla, the royal seat of the erstwhile Kingdom of Manipur, are in the city centre, surrounded by a moat.', 'Active'),
(21, 22, '	Shillong', 'Shillong is the capital and hill station of Meghalaya, also known as \"The Abode of Clouds\", one of the smallest states in India', 'Active'),
(22, 23, '	Aizawl', 'Aizawl is the capital of the state of Mizoram in India. With a resident population of 293,416, it is the largest city in the state.', 'Active'),
(23, 25, '	Bhubaneswar', 'Bhubaneswar, also spelt as Bhubaneshwar /ËŒbÊŠbÉ™ËˆneÉªÊƒwÉ™r/, is the capital of the Indian state of Odisha. The city has a history of over 3,000 years starting with the Mahamegha-bahana Chedi dynasty which had its capital at Sisupalgarh, nearby.', 'Active'),
(24, 26, '	Chandigarh', 'Chandigarh is a city and a union territory in the northern part of India that serves as the capital of the states of Punjab and Haryana. As a union territory, the city is ruled directly by the Union Government and is not part of either state.', 'Active'),
(25, 27, '	Jaipur', 'Jaipur, the capital of Indiaâ€™s Rajasthan state, evokes the royal family that once ruled the region and that, in 1727, founded what is now called the Old City, or â€œPink Cityâ€ for its trademark building color. ', 'Active'),
(26, 28, '	Gangtok', 'Gangtok is the capital of the northern Indian state of Sikkim. Established as a Buddhist pilgrimage site in the 1840s, the city became capital of an independent monarchy after British rule ended, but joined India in 1975. ', 'Active'),
(27, 29, 'Chennai', 'Chennai, on the Bay of Bengal in eastern India, is the capital of the Tamil Nadu state. Its home to Fort St. George, built in 1644 and now a museum showcasing the citys roots as a British military garrison', 'Active'),
(28, 30, 'Hyderabad', 'Hyderabad is the capital of southern Indias Telangana state. A major center for the technology industry, its home to many upscale restaurants and shops. ', 'Active'),
(30, 32, '	Lucknow', 'Lucknow is the capital city of the state of Uttar Pradesh, India A major metropolitan city of India,', 'Active'),
(31, 33, '	Dehradun', ' is the capital city of the state of Uttarakhand in the northern part of India.', 'Active'),
(32, 34, 'Kolkata', ' is the capital of Indias West Bengal state. Founded as an East India Company trading post', 'Active'),
(33, 37, 'Montgomery', ' is the capital of the U.S. state of Alabama and is the county seat of Montgomery County.', 'Active'),
(34, 38, 'Juneau', ' Its a popular cruise-ship stop,', 'Active'),
(35, 39, 'Phoenix', ' is the capital, and largest city, of the U.S. state of Arizona. With 1,445,632 people ', 'Active'),
(36, 40, 'Little Rock', 'Little Rock is the capital and the most populous city of the U.S. state of Arkansas. It is also the county seat of Pulaski County. ', 'Active'),
(37, 41, 'Sacramento', 'Sacramento is the capital city of the U.S. state of California and the seat of government of Sacramento County.', 'Active'),
(38, 42, 'Denver', 'Denver, the capital of Colorado, is an American metropolis dating to the Old West era', 'Active'),
(39, 43, 'Hartford', 'Hartford is the capital of Connecticut and the historic seat of Hartford County until Connecticut disbanded county government in 1960.', 'Active'),
(40, 44, 'Vostochnoe Degunino', 'Vostochnoe Degunino is located in Russia and time zone Europe/Moscow. Places in the near are Altufâ€™yevskiy, Vagonoremont and Zapadnoye Degunino.', 'Active'),
(41, 45, '	Murmansk', 'Murmansk is a port city and the administrative center of Murmansk Oblast, Russia, located in the extreme northwest part of Russia, on the Kola Bay, an inlet of the Barents Sea on the northern shore', 'Active'),
(42, 47, '	Nizhniy Novgorod', 'Nizhny Novgorod, colloquially shortened to Nizhny, is, with a population of 1,250,619, the fifth-largest city in Russia and the administrative center of Nizhny Novgorod Oblas', 'Active'),
(43, 48, 'Hefei', 'Hefei, formerly known as Hofei, Luzhou, or Luchow, is the capital and largest city of Anhui Province in Eastern China', 'Active'),
(44, 49, 'Fujian', 'Fujian is a southeastern Chinese province known for its mountains and coastal cities', 'Active'),
(45, 50, 'Lanzhou', 'Lanzhou is the capital and largest city of Gansu Province in Northwest China.', 'Active'),
(46, 51, 'Guangzhou', 'Guangzhou is a sprawling port city northwest of Hong Kong on the Pearl River.', 'Active'),
(47, 52, '	Guiyang', 'GuÃ¬yÃ¡ng is the capital of Guizhou province of Southwest China.', 'Active'),
(48, 53, 'Haikou', 'Haikou, the capital of Chinas island province Hainan', 'Active'),
(49, 54, 'Stuttgart', 'Stuttgart is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(50, 55, '	Munich', ' Munich is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(51, 57, 'Potsdam', 'Potsdam is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(52, 60, 'Wiesbaden', 'Wiesbaden is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(53, 17, 'Bangalore', 'Bangalore is the capital of Indias southern Karnataka state. The center of Indias hightech industry, the city is also known for its green spaces and nightlife', 'Active'),
(54, 8, 'Anantapur', '', 'Active'),
(55, 8, 'East Godavari', '', 'Active'),
(56, 8, 'Guntur	', '', 'Active'),
(57, 8, 'Kadapa	', '', 'Active'),
(58, 8, 'Krishna	', '', 'Active'),
(59, 8, 'Kurnool', '', 'Active'),
(60, 24, 'Nellore', '', 'Active'),
(61, 8, 'Prakasam', '', 'Active'),
(62, 8, 'Srikakulam	', '', 'Active'),
(63, 8, 'Vizianagaram', '', 'Active'),
(64, 8, 'West Godavari', '', 'Active'),
(65, 9, '	Anjaw', '', 'Active'),
(66, 9, '	Changlang', '', 'Active'),
(67, 9, '	East Kameng', '', 'Active'),
(68, 9, 'East Siang', '', 'Active'),
(69, 9, '	Lohit', '', 'Active'),
(70, 9, '	Longding', '', 'Active'),
(71, 9, 'Lower Subansiri', '', 'Active'),
(72, 9, '	Papum Pare', '', 'Active'),
(73, 9, 'Tawang', '', 'Active'),
(74, 9, 'Tirap', '', 'Active'),
(75, 9, '	Lower Dibang Valley', '', 'Active'),
(76, 9, '	Upper Siang', '', 'Active'),
(77, 9, '	West Kameng', '', 'Active'),
(78, 9, '	West Siang', '', 'Active'),
(79, 9, '	Upper Dibang Valley', '', 'Active'),
(80, 9, '	Kurung Kumey', '', 'Active'),
(81, 9, '	Namsai', '', 'Active'),
(82, 9, '	Kra Daadi', '', 'Active'),
(83, 10, '	Baksa', '', 'Active'),
(84, 10, '	Barpeta', '', 'Active'),
(85, 10, '	Bongaigaon', '', 'Active'),
(86, 10, 'Cachar	', '', 'Active'),
(87, 10, '	Chirang', '', 'Active'),
(88, 10, 'Darrang', '', 'Active'),
(89, 10, '	Dhemaji', '', 'Active'),
(90, 10, '	Dhubri', '', 'Active'),
(91, 10, '	Dibrugarh', '', 'Active'),
(92, 10, '	Dima Hasao', '', 'Active'),
(93, 35, '	Araria', '', 'Active'),
(94, 35, '	Arwal', '', 'Active'),
(95, 35, '	Aurangabad', '', 'Active'),
(96, 35, '	Banka', '', 'Active'),
(97, 35, '	Begusarai', '', 'Active'),
(98, 35, '	Bhagalpur', '', 'Active'),
(99, 35, '	Bhojpur', '', 'Active'),
(100, 35, '	Buxar', '	', 'Active'),
(101, 35, '	Darbhanga', '', 'Active'),
(102, 35, 'East Champaran', '', 'Active'),
(103, 35, '	Gaya', '', 'Active'),
(104, 11, 'Balod', '', 'Active'),
(105, 11, 'Baloda Bazar', '', 'Active'),
(106, 11, 'Balrampuir', '', 'Active'),
(107, 11, 'Bastar', '', 'Active'),
(108, 11, 'Bemetara', '', 'Active'),
(109, 11, 'Bijapur', '', 'Active'),
(110, 11, 'Bilaspur', '', 'Active'),
(111, 11, 'Danteswada', '', 'Active'),
(112, 11, 'Dhamtari', '', 'Active'),
(113, 11, 'Durg', '', 'Active'),
(114, 11, 'Jashpur', '', 'Active'),
(115, 11, 'Kanker', '', 'Active'),
(116, 11, 'Kandagoan', '', 'Active'),
(117, 11, 'Korba', '', 'Active'),
(118, 11, 'Koriya', '', 'Active'),
(119, 61, 'Central Delhi', '', 'Active'),
(120, 61, 'East Delhi', '', 'Active'),
(121, 61, 'New Delhi', '', 'Active'),
(122, 61, 'North Delhi', '', 'Active'),
(123, 61, 'North East Delhi', '', 'Active'),
(124, 61, 'South Delhi', '', 'Active'),
(125, 61, 'South West Delhi', '', 'Active'),
(126, 61, 'West Delhi', '', 'Active'),
(127, 12, 'North Goa', '', 'Active'),
(128, 12, 'South Goa', '', 'Active'),
(129, 36, 'Ahmedabad', '', 'Active'),
(130, 36, 'Amrelli District', '', 'Active'),
(131, 36, 'Dang', '', 'Active'),
(132, 36, 'Gandhinagar', '', 'Active'),
(133, 36, 'Jamnagar', '', 'Active'),
(134, 36, 'Junagadh', '', 'Active'),
(135, 36, 'Kheda', '', 'Active'),
(136, 36, 'Kutch', '', 'Active'),
(137, 36, 'Anand', '', 'Active'),
(138, 36, 'Aravalli', '', 'Active'),
(139, 36, 'Banaskantha', '', 'Active'),
(140, 36, 'Bharuch', '', 'Active'),
(141, 36, 'Bhavnagar', '', 'Active'),
(142, 36, 'Dahod', '', 'Active'),
(143, 36, 'Mahisagar', '', 'Active'),
(144, 13, 'Ambala', '', 'Active'),
(145, 13, 'Bhiwani', '', 'Active'),
(146, 13, 'Faridabad', '', 'Active'),
(147, 13, 'Gurgaon', '', 'Active'),
(148, 36, 'Hissar', '', 'Active'),
(149, 14, 'Bilaspur', '', 'Active'),
(150, 14, 'Chamba', '', 'Active'),
(151, 14, 'Hamirpur', '', 'Active'),
(152, 14, 'Kangra', '', 'Active'),
(153, 14, 'Kinnaur', '', 'Active'),
(154, 14, 'Kullu', '', 'Active'),
(155, 14, 'Lahaul and Spiti', '', 'Active'),
(156, 14, 'Mandi', '', 'Active'),
(157, 14, 'Shimla', '', 'Active'),
(158, 14, 'Sirmaur', '', 'Active'),
(159, 14, 'Una', '', 'Active'),
(160, 15, 'Anantnag', '', 'Active'),
(161, 15, 'Bandipora', '', 'Active'),
(162, 15, 'Baramulla', '', 'Active'),
(163, 15, 'Badgam', '', 'Active'),
(164, 15, 'Doda', '', 'Active'),
(165, 15, 'Jammu', '', 'Active'),
(166, 15, 'Kargil', '', 'Active'),
(167, 15, 'Poonch', '', 'Active'),
(168, 16, 'Bokaro', '', 'Active'),
(169, 16, 'Chalra', '', 'Active'),
(170, 16, 'Dhanbad', '', 'Active'),
(171, 16, 'Dumka', '', 'Active'),
(172, 16, 'Gumla', '', 'Active'),
(173, 16, 'Godda', '', 'Active'),
(174, 17, 'Bagalokot', '', 'Active'),
(175, 17, 'Bellary', '', 'Active'),
(176, 17, 'Belgaum', '', 'Active'),
(177, 17, 'Bidar', '', 'Active'),
(178, 17, 'Chikkaballapur', '', 'Active'),
(179, 17, 'Chitradurga', '', 'Active'),
(180, 17, 'Kodagu', '', 'Active'),
(181, 17, 'Hassan', '', 'Active'),
(182, 18, 'Kolar', '', 'Active'),
(183, 17, 'Gulbarga', '', 'Active'),
(184, 17, 'Chamrajnagar', '', 'Active'),
(185, 17, 'Mysore', '', 'Active'),
(187, 17, 'Mandya', '', 'Active'),
(188, 17, 'Raichur', '', 'Active'),
(189, 17, 'Shimoga', '', 'Active'),
(190, 17, 'Tumkur', '', 'Active'),
(191, 17, 'Udupi', '', 'Active'),
(192, 17, 'Uttara', '', 'Active'),
(193, 17, 'yadgir', '', 'Active'),
(194, 17, 'Haveri', '', 'Active'),
(195, 18, 'Alappuzha', '', 'Active'),
(196, 18, 'Ernakulam', '', 'Active'),
(197, 18, 'Idukki', '', 'Active'),
(198, 18, 'Kannur', '', 'Active'),
(199, 18, 'Kasargod', '', 'Active'),
(200, 18, 'Kollam', '', 'Active'),
(201, 18, 'Kottayam', '', 'Active'),
(202, 18, 'Kozhikode', '', 'Active'),
(203, 18, 'Malappuram', '', 'Active'),
(204, 18, 'Palakkad', '', 'Active'),
(205, 18, 'Thrissur', '', 'Active'),
(206, 24, 'Dimapur', '', 'Active'),
(207, 24, 'Kiphire', '', 'Active'),
(208, 24, 'Kohima', '', 'Active'),
(209, 19, 'Longleng', '', 'Active'),
(210, 24, 'Peren', '', 'Active'),
(211, 24, 'Phek', '', 'Active'),
(212, 24, 'Tuensang', '', 'Active'),
(213, 24, 'Wokha', '', 'Active'),
(214, 25, 'Angul', '', 'Active'),
(215, 25, 'Beudh', '', 'Active'),
(216, 25, 'Bhadrak', '', 'Active'),
(217, 25, 'Bargarh', '', 'Active'),
(218, 25, 'Cuttack', '', 'Active'),
(219, 25, 'Ganjam', '', 'Active'),
(220, 25, 'Gajapati', '', 'Active'),
(221, 25, 'Puri', '', 'Active'),
(222, 26, 'Amritsar', '', 'Active'),
(223, 26, 'Barnala', '', 'Active'),
(224, 26, 'Bathinda', '', 'Active'),
(225, 26, 'Faridkot', '', 'Active'),
(226, 26, 'Fazika', '', 'Active'),
(227, 26, 'Gurdaspur', '', 'Active'),
(228, 26, 'Hoshiarpur', '', 'Active'),
(229, 26, ' Moga', '', 'Active'),
(230, 62, 'Karaikal', '', 'Active'),
(231, 62, 'Mahe', '', 'Active'),
(232, 62, 'Yanam', '', 'Active'),
(233, 27, 'Ajmer', '', 'Active'),
(234, 27, 'Alwar', '', 'Active'),
(235, 27, 'Bikaner', '', 'Active'),
(236, 27, 'Baran', '', 'Active'),
(237, 27, 'Jaipur', '', 'Active'),
(238, 27, 'Sirohi', '', 'Active'),
(239, 27, 'Sikar', '', 'Active'),
(240, 29, 'Ariyalur', '', 'Active'),
(241, 29, 'Coimbatore', '', 'Active'),
(242, 29, 'Cuddalore', '', 'Active'),
(243, 29, 'Dharmapuri', '', 'Active'),
(244, 29, 'Dindigul', '', 'Active'),
(245, 29, 'Erode', '', 'Active'),
(246, 29, 'Kanchipuram', '', 'Active'),
(247, 29, 'Kanyakumari', '', 'Active'),
(248, 29, 'Karur', '', 'Active'),
(249, 29, 'Krishnagiri', '', 'Active'),
(250, 29, 'Madurai', '', 'Active'),
(251, 31, 'Dhalai', '', 'Active'),
(252, 31, 'Gomati', '', 'Active'),
(253, 31, 'Khowai', '', 'Active'),
(254, 31, 'North Tripura', '', 'Active'),
(255, 31, 'Unokoti', '', 'Active'),
(256, 31, 'West Tripura', '', 'Active'),
(257, 30, 'Adilabad', '', 'Active'),
(258, 30, 'Karimnagar', '', 'Active'),
(259, 30, 'Khammam', '', 'Active'),
(260, 30, 'Mahbubnagar', '', 'Active'),
(261, 30, 'Medak', '', 'Active'),
(262, 30, 'Nalgonda', '', 'Active'),
(263, 30, 'Nizamabad', '', 'Active'),
(264, 30, 'Warangal', '', 'Active'),
(265, 32, 'Agra', '', 'Active'),
(266, 32, 'Aligarh', '', 'Active'),
(267, 32, 'Allahabad', '', 'Active'),
(268, 32, 'Ambedkar Nagar', '', 'Active'),
(269, 32, 'Bagpat', '', 'Active'),
(270, 32, 'Bahraich', '', 'Active'),
(271, 32, 'Ballia', '', 'Active'),
(272, 32, 'Fatehpur', '', 'Active'),
(273, 32, 'Gonda', '', 'Active'),
(274, 32, 'Hardoi', '', 'Active'),
(275, 32, 'Jhansi', '', 'Active'),
(276, 33, 'Almora', '', 'Active'),
(277, 33, 'Bageshwar', '', 'Active'),
(278, 33, 'Chamoli', '', 'Active'),
(279, 33, 'Champawat', '', 'Active'),
(280, 33, 'Haridwar', '', 'Active'),
(281, 33, 'Rudraprayag', '', 'Active'),
(282, 34, 'Nadia', '', 'Active'),
(283, 34, 'Bankura', '', 'Active'),
(284, 34, 'Bardhaman', '', 'Active'),
(285, 34, 'Birbhum', '', 'Active'),
(286, 34, 'Cooch Behar', '', 'Active'),
(287, 34, 'Dakshin Dinajpur', '', 'Active'),
(288, 34, 'Hooghly', '', 'Active'),
(289, 34, 'Maldah', '', 'Active'),
(290, 34, 'Purullia', '', 'Active'),
(291, 17, 'Puttur', 'Puttur city', 'Active'),
(292, 66, 'Liverpool', 'Liverpool city', 'Active'),
(293, 20, 'Thane', 'A city is situated in the north-eastern portion of the Salsette Island. Thane city is entirely within Thane taluka, one of the seven talukas of Thane district', 'Active'),
(294, 20, 'Ulhasnagar', 'This city is a part of Mumbai Metropolitan Region managed by MMRDA.', 'Active'),
(295, 20, 'Badlapur', 'Known as city of waterfalls, it hosts two major dams and few waterfalls appear during monsoon.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `customer_type` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `state_id`, `city_id`, `pincode`, `contact_no`, `mobile_no`, `email_id`, `password`, `customer_type`, `status`) VALUES
(13, 'don', 'a', 20, 295, '421503', '879867998', '5467549090', 'don@gmail.com', 'asdfghjkl', 'Consumer', 'Active'),
(14, 'asdf', 'sector 4 ulhasnagar', 20, 294, '9898989898', '7676767676', '8776878787', 'asdf@gmail.com', '1234567890', 'Consumer', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `produce`
--

CREATE TABLE `produce` (
  `produce_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `produce` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produce`
--

INSERT INTO `produce` (`produce_id`, `category_id`, `produce`, `description`, `img`, `status`) VALUES
(218, 28, 'Stainless Steel Glassware', 'Various sized tumblers/ glasses are used for drinking water, milk, juices, beverages etc. The tall tumbler (also known as \'bada gilas\') is used mostly for drinking Matha (butter milk), Lassi, fruit juices etc.', '115234519961LgFYdt8wL._SX679_.jpg', 'Active'),
(219, 35, 'Machines', 'Use to cook food very fast...', '63455222061sUVN71ZDL._AC_UL320_.jpg', 'Active'),
(220, 35, 'Knife', 'tool or weapon with a cutting edge or blade, usually attached to a handle or hilt.', '83245269841we-Jk1NsL._AC_UL32 knife.jpg', 'Active'),
(221, 33, 'wooden', 'Product of wooden which stores the space and time to arrange small tools of kitchen.', '76005337M21NSA58380_360x.jpg', 'Active'),
(222, 33, 'Stainless Steel', 'Grabs or stores the kitchen tools.', '1207463581Spoonrest_4_360x.jpg', 'Active'),
(223, 35, 'Popcorn maker', 'A popcorn maker (also called a popcorn popper) is a machine used to pop popcorn.', '29011625051bzaHfiD1L._AC_UL320_.jpg', 'Active'),
(224, 30, 'Glass Product', 'As compared to plastic bottles, glass bottles are a better option to drink water. Glass bottles aren\'t prepared using any chemicals and this ensures that it doesn\'t come with harmful chemicals.', '20770030311_06f53467-092d-43af-8183-4d177b2d0a44_360x.jpg', 'Active'),
(225, 33, 'Wooden', 'Handcrafted, Eco-firendly\r\nBrand Name: Wood Art Store\r\nTrendy Way To Store Your Spoons And Table Accessory\r\nLight Weight and Sturdy\r\n', '146723501818270456311000003761242-1000003761241_01-2100.jpg', 'Active'),
(226, 31, 'Milton', 'Milton products', '2003119392Milton-Gulp-1100-Pink-Pink-SDL853035215-1-69834.webp', 'Active'),
(227, 29, 'Printed Dinner Plates', 'printed, stone material dishes.', '20010430241000011140457-1000011140456_01-2100.jpg', 'Active'),
(228, 35, 'Add ons', 'Tools like spoon, knife, scissors, etc.', '16032266641858764514IMG_4700_360x.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `produce_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `img_2` varchar(100) NOT NULL,
  `img_3` varchar(100) NOT NULL,
  `img_4` varchar(100) NOT NULL,
  `img_5` varchar(100) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `quantity_type` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `uploaded_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `seller_id`, `category_id`, `produce_id`, `title`, `img_1`, `img_2`, `img_3`, `img_4`, `img_5`, `quantity`, `quantity_type`, `description`, `uploaded_date`, `status`) VALUES
(20, 11, 28, 218, 'a', '377429600115234519961LgFYdt8wL._SX679_.jpg', '197549582261LgFYdt8wL._SX679_.jpg', '', '', '', 1.00, '', 's', '2023-03-17', 'Active'),
(21, 12, 30, 224, 'Essentials Glass Storage Jar - 500ml', '3653339151000009232072-1000009232071_01-2100.jpg', '16513192301000009232072-1000009232071_03-2100.jpg', '', '', '', 38.00, '', 'With an ultra-modish design lightening up the glow of your personal space, this glass jars with a transparent body and plastic lid make it easy to store and view the content inside.\r\n\r\nProduct : 1 Glass Storage Jar with Lid\r\nType : Jars\r\nMaterial : Glass\r\n', '2023-03-23', 'Active'),
(22, 12, 31, 222, ' Stainless Steel Amrapali Glasses, 350ml per Unit, Pack of 6 ', '152577982541NA7EZasSL._AC_UL160_SR160,160_.jpg', '162971580931svVOvZyYL._AC_SS450_.jpg', '', '', '', 60.00, '', 'HOMETALES	Material:Steel	\r\nCapacity in ml:350	\r\nColor:Silver	\r\nDimension in cm:6x6x9	\r\nType:Glasses Set	Key \r\nFeature:Dishwasher Safe	\r\nPack:Pack of 6	\r\nBIS/ISI License number:NA	BIS/ISI \r\nrequired:NA	SUPC: SDL823083933', '2023-03-23', 'Active'),
(23, 12, 29, 224, 'Corsica Set of 4 Stoneware Printed Dinner Plates - 17.5cm', '20102856081000011140457-1000011140456_01-2100.jpg', '3320873581000011140457-1000011140456_03-2100.jpg', '', '', '', 20.00, '', 'Great food deserves to be served in equally good-looking crockery. \r\nThis dinner plate set is one of the nicest pieces you will ever come across. It comes with an elegant design to ensure the food is served equally with attention and with style.\r\n\r\nProduct : 4 Side Plate\r\nMaterial : Stoneware\r\nShape : Round\r\nCare Instructions : Rinse with soapy water.\r\nNet Quantity : 4 N\r\nCountry of Origin : India\r\nType : Side Plate\r\nSet Size : Set Of 4Pcs\r\nAdditional Feature : Material Description : stoneware is made by firing clay at an extremely high temperature.', '2023-03-23', 'Active'),
(24, 12, 31, 226, 'Milton Water Bottles 200 ml', '992069226Milton-Copper-Charge-1000-Copper-SDL067240780-1-90c13.webp', '1037866517Tiwaritraders-Copper-Water-Bottle-1000ml-SDL242558722-1-f3162.webp', '', '', '', 40.00, '', 'This bottle\'s sheer body helps to easily identify the contents and also adds beauty to the liquid that you put in. High-impact resistance plastic that gives the same look as glass bottles, yet withstands heavy usage and falls.\r\nMaterial: FLASK', '2023-03-23', 'Active'),
(25, 13, 35, 221, 'Set of Mixer tools ', '1477664633IMG_4700_360x.jpg', '2113418095IMG_4701_360x.jpg', '', '', '', 50.00, '', 'Used to steer a coffee, butter milk, etc.,\r\nuseful product for kitchenware tools.  ', '0000-00-00', ''),
(26, 12, 33, 221, 'Mendo 5Pcs Bamboo Utensil Holder Set', '17660933301000005388373-1000005388372_01-2100.jpg', '5547519301000005388373-1000005388372_05-2100.jpg', '', '', '', 50.00, '', 'Crafted from durable bamboo, this utensil set is easy and takes care of your daily needs and helps you to get rid of those monotonous cleaning sessions. Material: bamboo. Crafted from food grade natural bamboo. 100% food grade, eco-friendly, renewable, durable yet light weight bamboo utensil set comes with anti-bacterial property which prevents any growth of bacteria. It is easy to clean and maintain. Multiutility tool combo set with spatula, turner, and slotted turner in a holder to keep your daily tools organised and easily accessible. Tools with perfect edges to prevent the cookware from scratch. Strong and sturdy holder-multi utility tool set ideal for everyday cooking. Attractive natural wood finish matches any furniture d?cor. Elegant long-lasting choice for everyday use. Colour and texture might vary due to natural bamboo usage.\r\n\r\nProduct : 1 Utensil Holder,2 Wooden Spatula, 1 Wooden Turner, 1 Wooden Fork Spatula\r\nType : Utensil Holder\r\nSet Size : Set Of 5 Pcs\r\nLid Included : None\r\nCollection : Beautiful Home\r\nCountry of Origin : China\r\nDimensions : Utensil Holder 9.8 cm L x 9.8 cm W x 16 cm HTurner : 30 cm L x 6 cm WSpatula : 30 cm L x 6 cm WFork Spatula : 29.5 cm L x 6 cm W\r\nMaterial : Bamboo\r\n', '2023-03-24', 'Active'),
(27, 15, 35, 225, 'Wooden Vegi cutter ', '9416065541000010657853-1000010657852_01-2100.jpg', '14318391221000010657853-1000010657852_03-2100.jpg', '', '', '', 54.00, '', 'A must-have for your kitchen space, this knife block is an ideal pick to store all your knives in one place avoiding any clutter.\r\n\r\nProduct : 1 Knife Block\r\nType : Knives & Choppers\r\nSet Size : Single Pc\r\nCollection : Chef special Folly\r\nImported and Marketed by : Lifestyle Int Pvt Ltd.77 Degree Town Centre.Building No.3. West Wing.Off HAL Airport Road. Yamlur.Bangalore-560037\r\nDimensions : Knife Block- 15x 24 x 11cm\r\nMaterial : Bamboo\r\nCare Instructions : Wipe with Dry Cloth\r\nNet Quantity : 1 N\r\n', '2023-03-24', 'Active'),
(28, 13, 28, 224, 'Borosil Green Leaves Silk Series Opalware Dinner Set, 35 Pieces, White', '88805290161tQmEcxlZS._SX679_.jpg', '189818254461EtXqfgFPS._SX679_.jpg', '', '', '', 30.00, '', 'Made in India with automated advance technology as per highest standards\r\n100 percent vegetarian - bone ash free material. Clean with a soft sponge. Don\'t: Use on the flame. Don\'t Use a scourer to clean\r\nThermal resistant - no cracks on heating food in microwave directly from refrigerator\r\nBreak, chip and scratch resistant - ideal for everyday use. Care Instruction: Handle it with care\r\nExtra strong - fully tempered toughened glass .\r\nDishwasher safe and microwave safe\r\nFood grade, 100 percent hygienic. Color: White, Material: Opalware', '2023-04-25', 'Active'),
(29, 13, 35, 222, 'Stainless Steel Spoon, Kitchen Tools,Silver,Pack of 5', '31809884191pCXw7GZeL._SX679_.jpg', '209336515651V9zh76M5L._SX679_.jpg', '', '', '', 450.00, '', 'Item Content :- 1 Pc Ladle, 1 Pc Skimmer, 1 Pc Masher, 1 Pc Basting Spoon, 1 Pc Turner Perforated Server\r\nColor: Silver, Material: Stainless Steel\r\nElegant design and a long term valuable product\r\nThis product is Dishwasher Friendly.\r\n', '2023-04-25', 'Active'),
(30, 13, 34, 222, 'Morbrix Multipurpose Trolley,Fruit and Vegetable Rack', '12933921781zTM27FhLL._SY879_.jpg', '149499365571CbxuTglwL._SY879_.jpg', '', '', '', 450.00, '', 'Put an End to the Mess! : Is chaos taking over your room? You only need this storage trolley with shelves that helps you to sort all your bathroom products, kitchen utensils, or office documents\r\nAlways Ready: You will no longer have to open and close the doors a thousand times while cooking. Thanks to the 4 universal wheels slide smoothly, you can move the trolley anywhere you need it\r\nWhat You Get: A narrow gap storage rack with quality wheels for smooth rolling, hollow-out design for good ventilation, and an elegant look that makes it a nice add-on in your living room, kitchen, or bathroom\r\nEase of use: This space saving organizer for home comes with 4 super-smooth wheels which ensure easy movement of this book rack to any place where you need it. his kitchen shelf rack can be easily assembled or disassembled in less than 2 minutes without using any tools.\r\n', '2023-04-25', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `purchase_order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_request_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `purchase_order_date` date NOT NULL,
  `purchase_order_time` time NOT NULL,
  `purchase_amt` float(10,2) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`purchase_order_id`, `product_id`, `purchase_request_id`, `customer_id`, `seller_id`, `purchase_order_date`, `purchase_order_time`, `purchase_amt`, `quantity`, `status`) VALUES
(26, 20, 44, 13, 11, '2023-03-17', '12:24:18', 250.00, 2.00, 'Paid'),
(27, 21, 45, 13, 12, '2023-03-23', '07:07:31', 250.00, 2.00, 'Paid'),
(28, 27, 46, 14, 15, '2023-03-24', '06:54:55', 1050.00, 2.00, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_bill`
--

CREATE TABLE `purchase_order_bill` (
  `purchase_order_bill_id` int(10) NOT NULL,
  `purchase_order_id` int(10) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_description` text NOT NULL,
  `paid_date` date NOT NULL,
  `paid_amt` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchase_order_bill`
--

INSERT INTO `purchase_order_bill` (`purchase_order_bill_id`, `purchase_order_id`, `payment_type`, `payment_description`, `paid_date`, `paid_amt`, `status`) VALUES
(23, 26, 'Master Card', 'Card Holder name: a Card Number: 1234567890123456 Expiry date: 2027-05 CVV No.345', '2023-03-17', 250.00, 'Active'),
(24, 27, 'Tjsb', 'Card Holder name: abcdf Card Number: 1234567890123456 Expiry date: 2025-06 CVV No.123', '2023-03-23', 250.00, 'Active'),
(25, 28, 'Rupay', 'Card Holder name: asdf Card Number: 1234567890123456 Expiry date: 2028-06 CVV No.456', '2023-03-24', 1050.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `purchase_request_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `request_date` date NOT NULL,
  `request_date_expire` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchase_request`
--

INSERT INTO `purchase_request` (`purchase_request_id`, `customer_id`, `product_id`, `purchase_order_id`, `quantity`, `request_date`, `request_date_expire`, `note`, `status`) VALUES
(44, 13, 20, 0, 2.00, '2023-03-17', '2023-03-24', 'be quick', 'Active'),
(45, 13, 21, 0, 2.00, '2023-03-23', '2023-03-30', 'be quick\r\n', 'Active'),
(46, 14, 27, 0, 2.00, '2023-03-24', '2023-03-31', 'be quick!!', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(10) NOT NULL,
  `seller_name` varchar(25) NOT NULL,
  `seller_address` text NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_branch` varchar(50) NOT NULL,
  `bank_IFSC` varchar(25) NOT NULL,
  `bank_acno` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `seller_name`, `seller_address`, `state_id`, `city_id`, `pincode`, `contact_number`, `mobile_no`, `email_id`, `password`, `bank_name`, `bank_branch`, `bank_IFSC`, `bank_acno`, `status`) VALUES
(9, 'Aditya', 'Badlapur plot 21', 20, 295, '421503', '9518354222', '9518354222', 'bhoyeaditya143@gmail.com', '1234567890', 'visa', 'badlapur', '12345678901', '12345', 'Active'),
(11, 'Aditya', 'badlapur', 20, 295, '421503', '9887766554', '9189876756', 'abc@gmail.com', '12345678', 'TJSB', 'badlapur', '12345678901', '2643', 'Active'),
(12, 'sample', 'plot 25 Badlapur west', 20, 295, '421503', '9090909098', '9876658776', 'sample@gmail.com', '1234567890', 'visa', 'badlapur', '12345678901', '7890', 'Active'),
(13, 'ufo', 'abc park near garden Mumbai', 20, 19, '400001', '9898989898', '9999999990', 'ufo@gmail.com', '1234567890', 'visa', 'mumbai', '12345678901', '5675', 'Active'),
(15, 'allen', 'Badlapur sanewadi ', 20, 295, '421503', '9898989898', '9887768787', 'allen@gmail.com', '1234567890', 'HDFC', 'badlapur', '12345678901', '345', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(10) NOT NULL,
  `state` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state`, `description`, `status`) VALUES
(3, 'Kainuu', 'Kainuu is one of the 19 Regions of Finland . There are 18 regions in mainland Finland, and the autonomous Ã…land Islands. Kainuu borders the regions of Northern Ostrobothnia, North Karelia and Northern Savonia. In the east it also borders Russia.', 'Active'),
(4, 'North Karelia', 'North Karelia is a region in eastern Finland. It borders the regions of Kainuu, Northern Savonia, Southern Savonia and South Karelia, as well as Russia. ', 'Active'),
(5, 'Northern Savonia', 'Northern Savonia is a region in eastern Finland. Kuopio is the largest city in the region. ', 'Active'),
(6, 'Southern Savonia', 'Southern Savonia is a region in the south-east of Finland. It borders on the regions Northern Savonia, North Karelia, South Karelia, Kymenlaakso, PÃ¤ijÃ¤nne Tavastia, and Central Finland. ', 'Active'),
(7, '	Southern Ostrobothnia', 'Southern Ostrobothnia is one of the 19 regions of Finland. SeinÃ¤joki is the regional centre and by far the largest city in the area.', 'Active'),
(8, 'Andhra Pradesh', 'Andhra Pradesh is a state bordering Indias southeastern coast. Tropical forests, rivers, hills and caves make it a popular ecotourism destination. Beaches line the Bay of Bengal, offering spots for swimming and surfing. Major cultural landmarks include ', 'Active'),
(9, 'Arunachal Pradesh', ' it holds the most north-eastern position among the states in the north-east region of India.', 'Active'),
(10, 'Assam', 'Assam is a state in Northeast India. Located south of the eastern Himalayas, Assam comprises the Brahmaputra Valley and the Barak Valley along with the Karbi Anglong and Dima Hasao districts with an area of 30,285 square miles. ', 'Active'),
(11, 'Chhattisgarh', 'Chhattisgarh is a state in central India. It is the 10th largest state in India, with an area of 135,194 kmÂ². With a population of 25.5 million, Chhattisgarh is the 16th most-populated state of the nation.', 'Active'),
(12, 'Goa', 'Goa is a state in western India with coastlines stretching along the Arabian Sea. Its long history as a Portuguese colony prior to 1961 is evident in its preserved', 'Active'),
(13, 'Haryana', 'Haryana is a North Indian state surrounding New Delhi on 3 sides. The Yamuna River runs along its eastern border with Uttar Pradesh. Shared with Punjab, the state capital', 'Active'),
(14, 'Himachal Pradesh', 'Himachal Pradesh, a northern Indian state in the Himalayas, is known for its trekking, climbing and skiing, and scenic mountain towns and resorts such as Dalhousie. Host to the Dalai Lama, Himachal Pradesh also has a strong Tibetan presence, reflected in its Buddhist temples and monasteries, cuisine heavy on noodles and dumplings, and vibrant Tibetan New Year celebrations.', 'Active'),
(15, 'Jammu and Kashmir', 'Jammu and Kashmir is a state in northern India. It is located mostly in the Himalayan mountains, and shares a border with the states of Himachal Pradesh and Punjab to the south', 'Active'),
(16, 'Jharkhand', 'Jharkhand is a state in eastern India carved out of the southern part of Bihar on 15 November 2000. The state shares its border with the states of Bihar to the north,', 'Active'),
(17, 'Karnataka', 'Karnataka is a state in southwest India with Arabian Sea coastlines. The capital, Bengaluru (formerly Bangalore), is a high-tech hub known for its shopping and nightlife. To the southwest, Mysore is home to lavish temples including Mysore Palace, former seat of the regionâ€™s maharajas. Hampi, once the medieval Vijayanagara empireâ€™s capital, contains ruins ', 'Active'),
(18, 'Kerala', 'Kerala, a state on Indias tropical Malabar Coast, has nearly 600km of Arabian Sea shoreline. Its known for its palm-lined beaches and its backwaters, a network of canals popular for cruises. Its many upscale seaside resorts include specialists in Ayurvedic treatments.', 'Active'),
(19, 'Madhya Pradesh', 'Madhya Pradesh, a large state in central India, retains landmarks from eras throughout Indian history. Begun in the 10th century, its Hindu and Jain temples at Khajuraho are renowned for their carvings of erotic scenes, most prominently Kandariya Mahadeva, a temple with more than 800 sculptures', 'Active'),
(20, 'Maharashtra', 'Maharashtra, a state spanning west-central India, is best known for its fast-paced capital, Mumbai (formerly Bombay). This sprawling metropolis is the seat of the Bollywood film industry. Itâ€™s also famed for sites like the British Raj-era Gateway of India monument and the cave temples at nearby Elephanta Island. To the south is the rustic, beach-lined Konkan coast, and its temple town of Ganpatipule.', 'Active'),
(21, 'Manipur', 'Manipur is a state in northeastern India, with the city of Imphal as its capital. Manipur is sometimes called alternative names such as Kangleipak or Sanaleibak', 'Active'),
(22, 'Meghalaya', 'Meghalaya is a state in north-east India. The name means \"the abode of clouds\" in Sanskrit.', 'Active'),
(23, 'Mizoram', 'Mizoram is one of the states of Northeast India, with Aizawl as its capital.', 'Active'),
(24, 'Nagaland', 'Nagaland /ËˆnÉ‘ËÉ¡É™lÃ¦nd/ is a state in Northeast India. It borders the state of Assam to the west, Arunachal Pradesh and part of Assam to the north, Burma to the east and Manipur to the south. ', 'Active'),
(25, 'Orissa', 'Odisha (formerly Orissa), an eastern Indian state on the Bay of Bengal, is known for its tribal cultures and its many ancient Hindu temples.', 'Active'),
(26, 'Punjab', 'Punjab, a state bordering Pakistan, is the heart of Indiaâ€™s Sikh community. Its city of Amritsar, founded in 1577 by Sikh guru Ram Das, is the site of Harmandir Sahib, the holiest gurdwara (Sikh temple). Pilgrims visit its gilded Hari Mandir sanctuary and bathe in the surrounding Pool of Nectar. Also in Amritsar is Durgiana Temple, a Hindu shrine with engraved silver doors.', 'Active'),
(27, '	Rajasthan', 'Rajasthan is a northern Indian state bordering Pakistan. Its palaces and forts are reminders of the many kingdoms that historically vied for the region. In its capital, Jaipur, are the 18th-century City Palace and Hawa Mahal, a former cloister for royal women, fronted by a 5-story sandstone screen. Amer Fort, atop a nearby hill, was built by a Rajput prince in the 1600s.', 'Active'),
(28, 'Sikkim', 'Sikkim is a small state in northwest India, bordered by Bhutan, Tibet and Nepal. Part of the Himalayas, the area has a dramatic landscape including Indiaâ€™s highest mountain, 8,586m Kanchenjunga. Sikkim is also home to glaciers, alpine meadows and thousands of varieties of wildflowers. Steep paths lead to hilltop Buddhist monasteries such as Pemayangtse, which dates to the early 1700s.', 'Active'),
(29, 'Tamil Nadu', 'Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. ', 'Active'),
(30, 'Telangana', 'Telangana is a state in South India and one of the 29 states in India. It was formed on 2 June 2014 with the city of Hyderabad as its capital.', 'Active'),
(31, '	Tripura', ' is a state in Northeast India. The third-smallest state in the country, it covers 10,491 kmÂ² and is bordered by Bangladesh to the north, south, and west, and the Indian states of Assam and Mizoram to the east', 'Active'),
(32, 'Uttar Pradesh', 'Uttar Pradesh is a state in northern India. Its city of Agra is home to the iconic Taj Mahal monument, a colossal, domed, white-marble mausoleum honoring the wife of Mughal ruler Shah Jahan. Named Mumtaz Mahal, she died in childbirth in 1631. Nearby are the 20m-high, red-brick walls of Agra Fort, a Mughal fortress and palace dating to the 16th and 17th centuries.', 'Active'),
(33, 'Uttarakhand', 'Uttarakhand, a state in northern India crossed by the Himalayas, is known for its Hindu pilgrimage sites', 'Active'),
(34, 'West Bengal', 'West Bengal is a state in eastern India, between the Himalayas and the Bay of Bengal. Its capital, Kolkata retains architectural and cultural remnants of its past as an East India Company trading post and the capital of the British Raj.', 'Active'),
(35, 'Bihar', 'Bihar is a state in East India, bordering Nepal. It is divided by the River Ganges, which floods its fertile plains', 'Active'),
(36, 'Gujarath', 'Gujarat, Indias westernmost state, has varied terrain and numerous sacred sites.', 'Active'),
(37, 'Alabama', 'Alabama is a southeastern U.S. state thats home to significant landmarks from the American Civil Rights Movement.', 'Active'),
(38, 'Alaska', 'Alaska, northwest of Canada, is the largest and most sparsely populated U.S. state.', 'Active'),
(39, 'Arizona', 'Arizona, a southwestern U.S. state, is best known for its reliably sunny weather and as home to the Grand Canyon, the mile-deep chasm carved by the Colorado River', 'Active'),
(40, 'Arkansas', 'Arkansas is a southeastern U.S. state bordering the Mississippi River. ', 'Active'),
(41, 'California', 'California, a western U.S. state, stretches from the Mexican border along the Pacific for nearly 900 miles.', 'Active'),
(42, 'Colorado', 'Colorado, a western U.S. state, is known for its geographic diversity, with snow-covered mountains, arid desert lands and river canyons. ', 'Active'),
(43, 'Connecticut', 'Connecticut is a southern New England state thats a mix of coastal cities and rural areas dotted with small towns', 'Active'),
(44, 'Moscow Oblast', 'Moscow Oblast, or Podmoskovye, is a federal subject of Russia. Its area, at 45,900 square kilometers, is relatively small compared to other federal subjects, but it is one of the most densely populated', 'Active'),
(45, 'Murmansk Oblast', 'Murmansk Oblast is a federal subject of Russia, located in the northwestern part of Russia', 'Active'),
(46, 'Nenets Autonomous Okrug', 'Nenets Autonomous Okrug is a federal subject of Russia. Its administrative center is the town of NaryanMar.', 'Active'),
(47, 'Nizhny Novgorod Oblast', ' colloquially shortened to Nizhny, is, with a population of 1,250,619', 'Active'),
(48, 'Anhui', 'Located across the basins of the Yangtze River and the Huai River, it borders Jiangsu to the east, Zhejiang to the southeast, Jiangxi to the south, Hubei to the southwest,', 'Active'),
(49, 'Fujian', 'Fujian is a southeastern Chinese province known for its mountains and coastal cities.', 'Active'),
(50, 'Gansu', 'Gansu is a province of the Peoples Republic of China, located in the northwest of the country', 'Active'),
(51, 'Guangdong', ' a coastal province of southeast China, borders Hong Kong and Macau. Its capital, Guangzhou', 'Active'),
(52, 'Guizhou', 'Guizhou is a mountainous province in southwest China.', 'Active'),
(53, 'Hainan', 'Hainan, an island province of China', 'Active'),
(54, 'BadenWurttemberg', 'Baden-WÃ¼rttemberg is a state in southwest Germany bordering France and Switzerland.', 'Active'),
(55, 'Bavaria', '', 'Active'),
(56, 'Berlin', '', 'Active'),
(57, 'Brandenburg', '', 'Active'),
(58, 'Bremen', '', 'Active'),
(59, 'Hamburg', '', 'Active'),
(60, 'Hesse', '', 'Active'),
(61, 'Delhi', '', 'Active'),
(62, 'Pondicherry', '', 'Active'),
(63, 'Meghalaya', 'Meghalaya', 'Active'),
(64, '', '', 'Active'),
(65, 'Manipur', 'Manipur', 'Active'),
(66, 'Liverpool', 'with 864,122 population', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `produce`
--
ALTER TABLE `produce`
  ADD PRIMARY KEY (`produce_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`purchase_order_id`);

--
-- Indexes for table `purchase_order_bill`
--
ALTER TABLE `purchase_order_bill`
  ADD PRIMARY KEY (`purchase_order_bill_id`);

--
-- Indexes for table `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`purchase_request_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `produce`
--
ALTER TABLE `produce`
  MODIFY `produce_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `purchase_order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `purchase_order_bill`
--
ALTER TABLE `purchase_order_bill`
  MODIFY `purchase_order_bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `purchase_request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
