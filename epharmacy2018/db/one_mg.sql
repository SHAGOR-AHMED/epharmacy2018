-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2017 at 12:09 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `one_mg`
--
CREATE DATABASE IF NOT EXISTS `one_mg` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `one_mg`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_comment`
--

CREATE TABLE IF NOT EXISTS `admin_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin_comment`
--

INSERT INTO `admin_comment` (`id`, `user_id`, `comment`, `date`) VALUES
(1, 30, 'hi', '2017-05-22 04:59:04'),
(2, 30, 'hgfdf', '2017-05-22 05:21:17'),
(3, 50, 'ok i see', '2017-05-24 07:24:21'),
(4, 50, 'yes', '2017-05-24 07:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `ads_manage`
--

CREATE TABLE IF NOT EXISTS `ads_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ads_manage`
--

INSERT INTO `ads_manage` (`id`, `image`, `position`) VALUES
(1, 'banner.jpg', 1),
(2, 'banner8.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `a_panel`
--

CREATE TABLE IF NOT EXISTS `a_panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `type` int(10) NOT NULL,
  `parent` varchar(50) CHARACTER SET latin1 NOT NULL,
  `userstatus` enum('Active','Disable') CHARACTER SET latin1 NOT NULL,
  `registrationtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `a_panel`
--

INSERT INTO `a_panel` (`id`, `username`, `password`, `type`, `parent`, `userstatus`, `registrationtime`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 5, '', 'Active', '2013-05-13 05:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `body_part`
--

CREATE TABLE IF NOT EXISTS `body_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_part_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `body_part`
--

INSERT INTO `body_part` (`id`, `body_part_name`, `status`) VALUES
(1, 'Abdomen', 1),
(2, 'Achilles Tendon', 1),
(3, 'Ankle', 1),
(4, 'Arm', 1),
(5, 'Back', 1),
(6, 'Chest', 1),
(7, 'Elbow', 1),
(8, 'Eye', 1),
(9, 'Face', 1),
(11, 'Head', 1),
(12, 'Hip', 1),
(13, 'Knee', 1),
(14, 'Leg', 1),
(15, 'Neck', 1),
(16, 'Ribs', 1),
(17, 'Shoulder', 1),
(18, 'Thigh', 1),
(19, 'roni', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE IF NOT EXISTS `brand_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `brand_name`, `status`) VALUES
(1, '3M', 1),
(2, 'Active Ortho', 1),
(3, '3M', 1),
(4, 'Active Ortho', 1),
(5, 'ADC', 1),
(6, 'Aircast', 1),
(7, 'Alba Healthcare', 1),
(8, 'Alere', 1),
(9, 'Alpha Protech', 1),
(10, 'Ambu', 1),
(11, 'Anasept', 1),
(12, 'Andover Healthcare', 1),
(13, 'Ansell', 1),
(14, 'ASO, LLC', 1),
(15, 'Aspen Medical', 1),
(16, 'Aveeno', 1),
(17, 'Axelgaard', 1),
(18, 'B. Braun', 1),
(19, 'Bailey', 1),
(20, 'Bard Medical', 1),
(21, 'Baxa', 1),
(22, 'BD', 1),
(23, 'Beckman Coulter', 1),
(24, 'Beutlich', 1),
(25, 'Bio-Protech', 1),
(26, 'Biodermis', 1),
(27, 'Biofreeze', 1),
(28, 'Biotone', 1),
(29, 'Birchwood', 1),
(30, 'BodySport', 1),
(31, 'Bruder', 1),
(32, 'BSN Medical', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`) VALUES
(1, ' Apparel / Safety '),
(2, 'Bandages'),
(3, 'Blood Collection'),
(4, 'Cardiology'),
(5, 'Casting'),
(6, 'Compression Garments '),
(7, 'Dental Products'),
(8, 'Diabetic Supplies'),
(9, 'Diagnostic Equipment'),
(10, 'Diagnostic Tests'),
(11, 'Durable Medical Equipment (DME)'),
(12, 'Education'),
(13, 'Electrotherapy / Ultrasound'),
(14, 'Emergency & First Aid'),
(15, 'Exam Gloves'),
(16, 'Exam Room'),
(17, 'Gauze'),
(18, 'Hot / Cold Therapy'),
(20, 'Incontinence'),
(21, 'Infection Control'),
(22, 'Instruments'),
(23, 'IV Therapy'),
(24, 'Janitorial'),
(25, 'Laboratory'),
(26, 'Luxury Beauty'),
(27, 'Massage'),
(28, 'Orthopedics'),
(29, 'Ostomy'),
(30, 'OTC Pharmacy'),
(31, 'Patient Care'),
(32, 'Personal Care'),
(33, 'Pet Supplies'),
(34, 'Pharmaceuticals'),
(35, 'Physical Therapy & Rehab'),
(36, 'Respiratory'),
(37, 'Skin Care'),
(38, 'Sterilization'),
(39, 'Supplements'),
(40, 'Supports and Braces'),
(41, 'Surgery / Minor Procedure'),
(42, 'Sutures'),
(43, 'Syringes / Needles'),
(44, 'Tapes'),
(45, 'Urologicals'),
(46, 'Wheel Chairs / Walkers / Rollators'),
(47, 'Wound Care'),
(49, 'X-ray'),
(50, 'Fitness & Supplements'),
(51, 'Exculsive'),
(52, 'Medical Devices'),
(53, 'Personal Care'),
(54, 'Health Conditions');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `customer_address` text CHARACTER SET latin1 NOT NULL,
  `customer_phone` varchar(50) CHARACTER SET latin1 NOT NULL,
  `customer_user` varchar(70) CHARACTER SET latin1 NOT NULL,
  `customer_password` varchar(70) CHARACTER SET latin1 NOT NULL,
  `active` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_address`, `customer_phone`, `customer_user`, `customer_password`, `active`) VALUES
(1, 'Roni Sharma', 'Mohammad pur ,Dhaka', '1814319835', 'roni@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(2, 'Duronto', 'dhaka', '01814319835', 'duronto@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(3, 'Gateway Group', 'dhaka,dhanmondi', '01766666685', 'cloudnumber0707@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_prodid` int(11) NOT NULL,
  `image_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `image_desc` varchar(250) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_prodid`, `image_name`, `image_desc`) VALUES
(1, 1, 'product1.jpg', ''),
(3, 3, 'product3.jpg', ''),
(4, 4, 'product4.jpg', ''),
(5, 5, 'product5.jpg', ''),
(6, 6, 'product6.jpg', ''),
(7, 7, 'product7.jpg', ''),
(8, 8, 'product8.jpg', ''),
(9, 9, 'product9.jpg', ''),
(10, 10, 'recommend1.jpg', ''),
(11, 11, 'recommend2.jpg', ''),
(12, 12, 'recommend3.jpg', ''),
(15, 15, 'recommend6.jpg', ''),
(16, 16, 'recommend7.jpg', ''),
(17, 17, 'recommend8.jpg', ''),
(18, 18, 'recommend9.jpg', ''),
(19, 19, '19aa.png', ''),
(20, 19, 'ee.jpg', ''),
(21, 19, 'fb.jpg', ''),
(22, 21, 'dbbd15d78b58cf1a35efd0052a8cb0fc.jpg', ''),
(23, 21, 'ce528faeec391a16d48ae7801a721b93.jpg', ''),
(24, 21, '8568b033f80349b9126163d6047c4bd8.jpg', ''),
(25, 21, 'ee6a7635c6ec5a4b11a73b69e8d62c92.jpg', ''),
(26, 22, '255f13963e776bf83cfefe458c296681.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `marchant`
--

CREATE TABLE IF NOT EXISTS `marchant` (
  `marchant_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`marchant_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `marchant`
--

INSERT INTO `marchant` (`marchant_id`, `name`, `address`, `nid`, `city`, `zip`, `company`, `phone`, `email`, `password`, `website`, `keyword`, `active`, `status`) VALUES
(12, 'Roni Sharma', 'Mohammad pur ,Dhaka', '123456', 'dhaka', '1207', 'gateway group', '1814319835', 'ronicse91@gmail.com', '202cb962ac59075b964b07152d234b70', 'no', '2838023a778dfaecdc212708f721b788', 1, 1),
(13, 'Gateway Group', 'dhaka', '03241564', 'dhaka', '1414', 'Gateway Group Ltd', '01766666685', 'cloudnumber0707@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'null', '1d7f7abc18fcb43975065399b0d1e48e', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_product`
--

CREATE TABLE IF NOT EXISTS `merchant_product` (
  `merchant_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subcat_name` int(11) NOT NULL,
  `body_part` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productprice` varchar(100) NOT NULL,
  `productcode` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `merchant_user_id` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`merchant_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `merchant_product`
--

INSERT INTO `merchant_product` (`merchant_id`, `category`, `subcat_name`, `body_part`, `productname`, `productprice`, `productcode`, `description`, `image`, `merchant_user_id`, `status`) VALUES
(4, 4, 20, 3, 'This is Cardiology', '501', 'epm12', 'this is cardioloy description', './assets/img/merchant_product/1bb152dfb3481c7670d7703354f11d46.jpg', 12, 0),
(5, 1, 2, 1, 'Napa tablet', '700', 'epm13', 'Napa is best pain killer.', './assets/img/merchant_product/1447126730921.jpg', 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_custid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `shipping_addr` varchar(200) NOT NULL,
  `place_code` varchar(20) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'pending=''1''  shift_epharmacy=''2''  delivery=''3''  cencel=''4''',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `order_date`, `order_custid`, `customer_name`, `customer_email`, `product_id`, `quantity`, `product_code`, `amount`, `mobile`, `shipping_addr`, `place_code`, `payment`, `product_image`, `status`) VALUES
(12, '2017-06-17 09:48:10', 1, 'Roni Sharma', 'roni@gmail.com', 69, 1, '', 556, '1814319835', 'gateway it', '1209', 'cash', '90206e0f0ddaed575670abbeb278fa89.jpg', 1),
(13, '2017-06-17 09:48:10', 1, 'Roni Sharma', 'roni@gmail.com', 38, 1, '', 3200, '1814319835', 'gateway it', '1209', 'cash', '41073ced18c40bee2e4ed6bb5c51cea8.jpg', 1),
(14, '2017-06-17 09:55:06', 1, 'Roni Sharma', 'roni@gmail.com', 140, 1, '', 2400, '1814319835', 'Mohammad pur ,Dhaka', '1207', 'bkash', '5c9d18c3a8a8907260a10c10850548e6.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_catid` int(11) NOT NULL,
  `prod_subcatid` int(11) NOT NULL,
  `body_cat_id` int(11) NOT NULL,
  `brand_cat_id` int(11) NOT NULL,
  `prod_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `prod_price` int(50) NOT NULL,
  `prod_code` varchar(10) NOT NULL,
  `prod_desc` text CHARACTER SET latin1 NOT NULL,
  `image` varchar(100) NOT NULL,
  `marchantId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=810 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_catid`, `prod_subcatid`, `body_cat_id`, `brand_cat_id`, `prod_name`, `prod_price`, `prod_code`, `prod_desc`, `image`, `marchantId`, `date`) VALUES
(26, 35, 76, 1, 0, 'Saunders Cervical Replacement Pump', 65, '', 'test medicine', '5a2f4e96437c6a759a35b4418b9f4fc5.jpg', 0, '0000-00-00 00:00:00'),
(28, 35, 78, 3, 0, 'Chattanooga Pron Pillo Prone (Face Down) Pillow', 80, '', 'Chattanooga Pron Pillo Prone (Face Down) Pillow', 'a663f8539b27dbd8ad4b1b8e402ae5cb.jpg', 0, '0000-00-00 00:00:00'),
(29, 35, 80, 4, 0, 'theraband kinesiology tape bulk rolls', 100, '', 'theraband kinesiology tape bulk rolls', 'b3878d00813c375b86314bb4c751e18c.jpg', 0, '0000-00-00 00:00:00'),
(30, 40, 91, 5, 0, 'Vista 627 Lumbar Brace Back One Size Adjustable', 200, '', 'Vista 627 Lumbar Brace Back One Size Adjustable', 'aa252e2e1ba55dffa323d8cf1c04c4ec.jpg', 0, '0000-00-00 00:00:00'),
(31, 40, 92, 6, 0, 'Cool-Lightweight 7" Lumbar Sacral Support', 100, '', 'Cool-Lightweight 7" Lumbar Sacral Support', 'a1a31427eb817bb073473f7160ef41db.jpg', 0, '0000-00-00 00:00:00'),
(32, 40, 93, 7, 0, 'Actisplint Multi-Purpose Universal Splint', 80, '', 'Actisplint Multi-Purpose Universal Splint', 'ec0ad2165a1ecc89fa595a68209724d5.jpg', 0, '0000-00-00 00:00:00'),
(33, 40, 95, 8, 0, 'Reaction Knee Brace', 99, '', 'Reaction Knee Brace', 'a65412e28eec5b93fa1d338e6adabcfb.jpg', 0, '0000-00-00 00:00:00'),
(34, 47, 114, 9, 0, 'Covrsite Plus Waterproof Composite Dressings', 11, '', 'Covrsite Plus Waterproof Composite Dressings', 'c7e2e2aaa870b4869015a4c5f40a9f37.jpg', 0, '0000-00-00 00:00:00'),
(35, 47, 116, 10, 0, 'AF Dermal Wound Cleanser, 12 oz Bottle', 17, '', 'AF Dermal Wound Cleanser, 12 oz Bottle', '3a3be0afcaf2a2a0364ca2147ffc6928.png', 0, '0000-00-00 00:00:00'),
(36, 47, 120, 11, 0, 'Restore Hydrogel (Impregnated Gauze)', 104, '', 'Restore Hydrogel (Impregnated Gauze)', '4cc2d2926e84bc8fe951124dacdbcdf1.jpg', 0, '0000-00-00 00:00:00'),
(37, 47, 125, 12, 0, 'Restore Amorphous Hydrogel Dressing 3 oz Tube', 90, '', 'Restore Amorphous Hydrogel Dressing 3 oz Tube', '303711dc03d17cd72f27ddde69fb0659.jpg', 0, '0000-00-00 00:00:00'),
(38, 1, 1, 13, 0, 'Slippers Hard Sole Non Skid', 3200, '', 'Put Your Best Foot Forward\r\nA great way to keep your feet warm and dry inside. Very comfortable to wear and made with a non-skid sole. You are sure to stand firmly on your feet. Anti-Slip surfaces provide enough traction to keep you from sliding. Ideal for patients in hospitals, post surgery, nursing and retirement homes.\r\n\r\n    Non-skid rubber sole provides firm grip to prevent accidental falls\r\n    Soft, stretchable construction available in low-top design\r\n    Lightweight, soft cotton knit provides optimal warmth and comfort\r\n    Elastic band helps ensure a snug fit\r\n    Latex Free\r\n', '41073ced18c40bee2e4ed6bb5c51cea8.jpg', 0, '0000-00-00 00:00:00'),
(39, 1, 1, 14, 0, 'Universal Exam Gown', 1920, '', '\r\n    Universal size\r\n    Ideal for routine exams and office procedures\r\n    Included tie provides added convenience and guarantees patient modesty\r\n', '4537ef5bd9da135f4013fdafce237704.jpg', 0, '0000-00-00 00:00:00'),
(40, 1, 1, 15, 0, 'Exam Cape', 2080, '', '\r\n\r\n    Durable and soft\r\n    Can be worn with the opening in front or back to facilitate virtually every medical examination without sacrificing patient modesty\r\n    Covers patients upper body\r\n\r\n', 'e1fdd7f595fe73c86b2cca8e26531eb2.jpg', 0, '0000-00-00 00:00:00'),
(41, 2, 6, 16, 0, 'Cover-Roll Stretch Elastic Bandage', 640, '', 'The Cover-Roll Stretch adhesive bandage from BSN Medical provides significant comfort and mobility while the cross-elastic non-woven structure of the bandage provides light, gentle compression. The cross-elastic weave helps the Cover-Roll Stretch adhesive bandage conform and adhere to difficult body contours. Cover-Roll Stretch adheres well even in the presence of moisture and can be applied directly to the skin or on top of a primary wound dressing for protection not only to the dressing, but the entire wound site as well. This reliable and gentle adhesive is especially suitable for sensitive skin from pediatrics to geriatrics. The soft, polyester material fits comfortably over wounds, while the polyacrylate adhesive secures the dressing to the skin without causing skin irritation and ensures pain-free removal. The Cover-Roll Stretch adhesive gauze bandage may also be used in conjunction with, or to replace surgical medical tape for primary retention', '82d35833983c884adc594b27493257c4.jpg', 0, '0000-00-00 00:00:00'),
(42, 2, 9, 17, 0, 'Wound Dressing, Hydrophilic-B, 3 oz Tube', 1200, '', ' Zinc-nutrient dressing formulation for wound healing\r\n    Contains Vitamin A, Vitamin B6, calcium and magnesium\r\n    For skin ulcers, thermal burns, cuts, surgical incisions, etc\r\n    Provides a primary cover and/or fill\r\n    Impregnated gauze dressings as sterile', '52331fc3253fe59d2f079f207a7b1211.jpg', 0, '0000-00-00 00:00:00'),
(43, 2, 10, 18, 0, 'Elastic Bandages', 400, '', '\r\n\r\n    A 100% latex free elastic bandage, providing outstanding compression and stretch\r\n    Individually poly-wrapped with 2 clips\r\n    4.5 yards, stretched\r\n\r\n', 'b00116617bad05ddd9d005746f11e200.jpg', 0, '0000-00-00 00:00:00'),
(44, 2, 10, 1, 0, 'Graham Grafco Elastic Bandages', 960, '', 'TENSOR Elastic Bandages are nonsterile, individually wrapped with Attached Clips in the roll core.\r\n\r\nThis listing is for a quantity of "Bag of 12", but we also offer it in quantity of "Box of 144". The listing for the other quantity can be found in the "Related Items" below.\r\n\r\nAll images are supplied to us by the manufacturers, and may not represent the specific product you are ordering. This product may differ in color, features, or may be an accessory. Please refer to the model number or contact us if you have any questions', '2b30f32aa47b5a56e2ba7ffc2bb29ba3.jpg', 0, '0000-00-00 00:00:00'),
(45, 2, 10, 2, 0, 'Curity Elastic Bandages with Removable Clips', 13760, '', 'Curity™ Elastic Bandages are nonsterile, individually wrapped with removable clips,', '502eaef7b6ad0ae7917e81b811a5c3a4.jpg', 0, '0000-00-00 00:00:00'),
(46, 2, 11, 3, 0, 'Surgilast Tubular Elastic Dressing Retainer 50 Yard', 1072, '', '\r\n    A tubular elastic stretch net designed to serve as a secondary dressing, applying gentle pressure to keep bandages or other medical devices securely in place without adhesive tape.\r\n    Ideal for securing burn or post-op dressings, hot or cold packs, IV tubes, incontinence pads and decubitus ulcer dressings. Easy to customize.\r\n    Allows maximum air-flow.\r\n    Available in a wide range of sizes.\r\n', '6a95d808238cfb9d82cb86df7d45af9f.jpg', 0, '0000-00-00 00:00:00'),
(47, 2, 13, 4, 0, 'Specialist Plaster Bandages', 14240, '', 'Specially treated plaster spreads uniformly, providing exceptional strength.\r\nIt sets within minutes.\r\nWhen wet, the plaster has a thick, creamy texture that provides a smooth finish.', '547925ac77c5539c4d5a7a3222ac924a.jpg', 0, '0000-00-00 00:00:00'),
(48, 2, 15, 5, 0, 'Gelocast Unna Boot Bandages', 556, '', '\r\n\r\n    Suited for a wide variety of applications, the Unna Boot promotes healing for a wide variety of dermatitis and dermal ulcers.\r\n    A mild compression wrap coated with zinc oxide and calamine, it offers firm, even pressure for sustained periods of time.\r\n    Non-sterile and non-raveling.\r\n    One roll per package.\r\n\r\n', 'f4604e4808dbce10e472e562aa55cae0.jpg', 0, '0000-00-00 00:00:00'),
(49, 4, 19, 6, 0, 'Electrode ECG Nikomed 100/PK', 1680, '', 'Designed with high-performance Silver/Silver Chloride (Ag/AgCl) substrate, the Nikotab?s revolutionary fishtail tab prevents twisting and turning to deliver first-time tracings. Four different sizes are available to fit any patient and budget. What?s more, the adhesive allows for easy patient cleanup?gel remains on the electrode EKG, not the skin.', 'e9315f88f9a75708f2f5f59cb34bb0c1.jpg', 0, '0000-00-00 00:00:00'),
(50, 4, 22, 7, 0, 'Kendall 100 Series Foam Electrodes, Conductive Adhesive Hydrogel', 5997, '', 'The Kendall™ 100 series has a smaller, teardrop shape footprint for convenient lead placement on small or pediatric patients.The low profile foam substrate is fluid and tear resistant. The patented conductive adhesive hydrogel maximizes adhesion and electrical contact and is designed to stay fresh up to 45 days out of the package. Many packaging configurations are offered to satisfy all customer needs.\r\n\r\nFeatures:\r\n\r\n    Conductive Adhesive Hydrogel\r\n    High Quality Foam\r\n    Smaller Size\r\n    Tear Drop Shape & Lift Tab\r\n    Non-irritating Gel Formula\r\n\r\n\r\nBenefits:\r\n\r\n    Provides additional adhesion, consistent tracings, no messy residue, non-irritating and stays fresh up to 45 days out of the package\r\n    Resists fluids and conforms easily to skin to ensure excellent trace quality\r\n    Allows for easy lead placement on smaller patients\r\n    Facilitates easy removal from release liner and patient\r\n    Patient comfort and reduced clinician time\r\n', '761f4aa98a86743bd07f71d14668aaeb.jpg', 0, '0000-00-00 00:00:00'),
(51, 4, 22, 8, 0, 'ECG Electrode, Monitoring', 2080, '', 'Covidien/Kendall 300 Series ECG Electrodes\r\nECG Electrode, Monitoring', '7ccaaa547ce00e12bc9fb330345f89da.jpg', 0, '0000-00-00 00:00:00'),
(52, 4, 22, 9, 0, 'Re-Ply Stimulating Electrodes', 796, '', 'Self-adhering and reusable stimulating electrode for TENS/NMES/FES.', '2910a3da033f07084829d108fb6466c1.jpg', 0, '0000-00-00 00:00:00'),
(53, 4, 22, 10, 0, 'Choice Cloth Stimulating Electrodes', 636, '', 'Self-adhering and reusable stimulating electrodes for TENS/NMS/FES', 'd012b7e414f97bcadeb75f7af5ad9d7c.jpg', 0, '0000-00-00 00:00:00'),
(55, 7, 0, 12, 0, 'Dental Bibs', 2280, '', '\r\n\r\nDynarex Dental Bibs provide hygienic protection with a comforting texture. Offers a preliminary barrier to many forms of contamination.\r\n\r\n    Made of 2-ply paper.\r\n    Polyethylene backing provides protection against soak-through.\r\n    Choose from 5 contemporary colors that match drinking cups.\r\n\r\n', 'df3361830c6d371110e2ee2a58d413c0.jpg', 0, '0000-00-00 00:00:00'),
(56, 9, 36, 13, 0, 'Welch Allyn Blood Pressure Cuffs', 2236, '', '\r\n\r\nThe Welch Allyn Two Piece Reusable Blood Pressure Cuff is a traditional style two-piece blood pressure cuff with removable cuff and bladder. It is designed for use with large aneroid, wall aneroid, hand aneroid, and mercury sphygmomanometers.\r\n\r\n \r\n\r\nFeatures\r\n\r\n    Heavyweight nylon material\r\n    Latex-free\r\n\r\n', '8d6fb11eec7290deb386b7cea47994a7.jpg', 0, '0000-00-00 00:00:00'),
(57, 9, 36, 14, 0, 'Welch Allyn Flexiport Re-useable Blood Pressure Cuffs', 1492, '', '\r\n\r\nAffordable and easy to use, Welch Allyn FlexiPort Reusable Blood Pressure Cuffs offer all the advantages of FlexiPort technology—including simplified connectivity—in a dependable, durable design.\r\n\r\nFeatures\r\n\r\n    FlexiPort technology enables every cuff to be used as a one- or two-tube cuff\r\n    Tested to withstand demanding clinical environments\r\n    Latex-free material minimizes risk of allergic reactions\r\n    Rotatable port, improves patient comfort and cuff durability\r\n    Folded edge reduces risk of cuts and scrapes, maximizing patient comfort\r\n    Meets all latest clinical guidelines for proper fit from AAMI and AHA\r\n    Primary sizes are color-coded to make it easy to find the proper cuff size\r\n    Three-year warranty\r\n\r\n', '8a69b3824b1b64adef1b703bcace855a.jpg', 0, '0000-00-00 00:00:00'),
(58, 15, 143, 15, 0, 'Biogel Latex Powder Free Surgeons Sterile Gloves', 9196, '', '\r\n\r\nSterile, powder-free, natural rubber latex surgical glove for excellent barrier protection in general surgical procedures.\r\n\r\nRecommended for all general surgical procedures and other specialties that do not require unique characteristics.\r\n\r\n \r\n\r\nBenefits\r\n\r\n    Unique Biogel coating on the inner surface\r\n    Makes gloves easy to don even with damp hands\r\n    Soothes the skin to help prevent moisture loss\r\n    Beaded cuff for added security\r\n    Every glove is air inflation tested and visually inspected for quality and user confidence\r\n    Industry leading AQL freedom from holes of 0.65\r\n    Powder-free to eliminate starch powder-related complications\r\n    Powder-free to minimize the risk of allergic reactions to aerosolized natural rubber latex proteins\r\n    Typically contains 50?g or less of water-extractable proteins\r\n    Low dermatitis potential – this product demonstrated reduced potential for sensitizing users to chemical additives\r\n    Improved efficiency as less gloves are wasted\r\n\r\n', '75bc74de4c9d4a27769c38758b093cae.jpg', 0, '0000-00-00 00:00:00'),
(59, 15, 143, 16, 0, 'High Risk Latex Gloves 10mil White or 15mil Blue', 1036, '', '\r\n\r\n    Maximum protection, puncture resistance, durability, comfort, and fit\r\n    11? to 12? long for greater coverage than\r\n    standard 9? latex examination gloves\r\n    Polymer coated and ambidextrous\r\n    Textured for secure grip in wet or dry\r\n    Powder free to minimize skin irritation\r\n    (? 2mg of residual powder per glove)\r\n    Thickness & Color:\r\n    10mil – 9.8mil finger, 7.9mil palm (white)\r\n    15mil – 14.2mil finger, 9.0mil palm (blue)\r\n\r\n\r\nTechnical Specifications: Dynarex High-Risk Latex Examination Gloves are medical grade gloves that meet or exceed ASTM D3578 specifications and are NFPA 1999-2008 Certified. They are highly elastic; 700% elongation ? 9N before aging and 500% elongation ? 6N after aging. Protein content is 50µg/dm2 or less. 2310-2314: length ? 280mm (~11.0?), 2315-2319: length ? 290mm (~11.4?)\r\n\r\nCAUTION: This product contains natural rubber latex which may cause allergic reactions. Do not expose this product to any person known or suspected to be latex sensitive. Do not use in latex-free areas or on patients with spina bifida.\r\n', 'c5e73f9130be3c7a4af4bd8296165e63.jpg', 0, '0000-00-00 00:00:00'),
(60, 15, 144, 17, 0, 'Purple Nitrile Powder Free Exam Gloves', 796, '', '\r\n\r\nFor individuals allergic to natural rubber latex, Kimberly-Clark Purple Nitrile Powder-Free Exam Gloves are the perfect fit. Unique purple color identifies gloves instant from latex or other gloves and allows for quick foreign substance recognition. When users see the distinctive color purple color, they know they can concentrate on the task at hand, protected from known and unknown risks. Comfortable to wear with excellent tactile sensitivity, ambidextrous gloves feature textured fingertips to increase grip sensitivity and a beaded cuff. Latex-free, Powder-Free, Ambidextrous.\r\n\r\nProduct Features :\r\n\r\n    Ambidextrous\r\n    Powder-Free Non-S\r\n    Terile Textured Fingertips\r\n    Beaded Cuffs\r\n    Single Use Only\r\n    Length: 9.5In. (242Mm)\r\n    6 Mil Thickness\r\n\r\n', '9cb0eb8f55f940a27aa8e8433ff9248d.jpg', 0, '0000-00-00 00:00:00'),
(61, 15, 144, 18, 0, 'Exam Glove Lavender Nitrile', 1492, '', '\r\n\r\nHalyard Health HH100 Lavender Nitrile Exam Gloves from HealthyKin.com are thinner, lighter, and more economical than standard nitrile, yet retain the protective properties required for excellent performance across a wide range of healthcare tasks. Lavender Nitrile Gloves are designed for any task for which you currently use vinyl gloves.\r\n \r\n\r\nFeatures:\r\n\r\n    Tactile sensitivity\r\n    Less hand fatigue\r\n    Allows easier finger and hand movement\r\n    Keep hands significantly cooler\r\n    Soft and comfortable\r\n\r\n', '263ee276c0397995e16efdd43a0d6924.jpg', 0, '0000-00-00 00:00:00'),
(63, 1, 2, 2, 0, 'N95 Particulate Filter Respirator & Surgical Mask', 1036, '', 'Kimberly-Clark 46727 Flat Fold Healthcare Respirator, N95, Pk35. More Details: Flat Fold Disposable Healthcare Particulate Respirator, Filter Class N95, Exhalation Valve No, Face Seal No, Nose Clip Yes, Nuisance Removal No, Size Universal, Color White, Headstrap Type Dual Elastic, Standards Niosh Approved, Package Quantity 35', 'f48daf7dfae7547104acfb8143b0e38c.jpg', 0, '0000-00-00 00:00:00'),
(64, 1, 2, 3, 0, 'Classic Womens Scrub Pants - Antimicrobial - Fluid Resistant - Ceil Blue - X-Small', 1516, '', 'LifeThreads favorite V-neck unisex scrub tops consists of special antimicrobial materials that inhibits the growth of any harmful bacteria , combined with fluid barrier to protect from any kind of fluids like blood, fluid, urine, vomit or other chemicals. These unisex scrub tops have roomy patch pockets in the front. Our versatile unisex scrub tops offer classic fit and it can be worn by both men and women. The durable and easy to maintain unisex scrub tops can be washed any number of times without losing its antimicrobial features, up to the lifetime of the products.\r\n\r\n    V-Neck\r\n    Soft and durable fabric\r\n    Antimicrobial, antifungal, fluid rresistant and controls odor\r\n    One left chest pocket\r\n    Polyester = 65% and Cotton = 35%\r\n    Sizes: XS, S, M, L, XL, 22XL, 3XL\r\n    Colors: Caribbean Blue, Ceil Blue, Navy Blue\r\n', '539b002bec07606791614a4419b5f59f.jpg', 0, '0000-00-00 00:00:00'),
(65, 1, 2, 4, 0, 'Contego Womens Stretch Scrub Top - Antimicrobial - Fluid Resistant - Royal Blue - X-Small', 1596, '', 'Our amazing Contego collection of premium scrubs for women has game-changing antimicrobial and fluid resistant properties built in. These scrubs not only make you look smart but guards against unwanted bacteria on your uniform. The soft, ultra-lightweight women scrub top offers superior flexibility due to spandex incorporated into the fabric.\r\n\r\n    Crossover V-neck scrubs\r\n    Cotton = 55% , Polyester = 41% and Spandex = 4%\r\n    Antimicrobial, antifungal, fluid resistant and controls odor\r\n    Crossover modern yoke in the front\r\n    2 pockets- front patch pockets at the bottom offers convenience for quick access to instruments\r\n    Extra sectional pocket on the right side\r\n    Sizes: XS, S, M, L, XL, 2XL, 3XL\r\n    Colors: Black, Pewter, Wine, Royal Blue, Navy Blue\r\n', '90a96542c8fce22896aa95530227235d.jpg', 0, '0000-00-00 00:00:00'),
(66, 2, 14, 5, 0, 'Tricofix Tubular Bandage', 1756, '', '\r\n\r\nTricofix protects the skin surface under compression garments, zinc gel or adhesive bandages. Useful as skin protection under plaster of Paris or synthetic cast and as a lining for lymphedema wrapping to reduce irritation.\r\n\r\nTricofix can be used underneath Comprilan to help provide a smooth layer. Each of these bandages is made from a soft, breathable stockinette; white only.\r\n\r\nProduct Features:\r\n\r\n    100% cotton for non-irritative comfort\r\n    Easy application, may be cut anywhere, does not run or fray\r\n\r\n', 'a6476a562dac2e53fc4d7c380968612f.jpg', 0, '0000-00-00 00:00:00'),
(67, 2, 14, 6, 0, 'Tubigrip Multi Purpose Tubular Bandage 1 Meter', 479, '', '\r\n\r\nTubigrip provides tissue support in the treatment of strains and sprains, soft tissue injuries, joint effusions, general edema, post- burn scarring and ribcage injuries and is also used for pressure dressings and arm fixation.\r\n\r\nTubigrip is made from cotton with covered elastic threads laid into the fabric to form free-moving spirals. The fabric is available in two colors – natural and beige.\r\n\r\nTubigrip provides lasting, effective tissue support with complete freedom of movement for the patient. Once the bandage has been applied, covered elastic threads within the fabric move to adjust to the contours of the body and distribute support evenly over the surface. Fitting is quick and easy and Tubigrip stays securely in place without pins or tapes, unlike other conventional bandages. Tubigrip can easily be reapplied after washing, without loss of effect. Reuse helps reduce waste, as only the exact amount required is cut from the roll.\r\n\r\nAlways use a double layer and apply Tubigrip with a 2–3cm overlap. Tubular Bandage Applicators may be used to make application easier over bulky dressings or painful joints.\r\n\r\nIf an applicator is used, Tubigrip is loaded onto the applicator, which is then positioned over the affected area. The end of the bandage is held in position while the applicator is gently removed, leaving the Tubigrip in place. Then form a double layer by doubling back the bandage. Ensure that the upper edge of the second layer is taken 2–3cm higher up the limb than the first.\r\n\r\nTubigrip Tension Guides are available to help you select the appropriate size and pressure for the condition being treated.\r\n\r\n\r\nBenefits of Use:\r\n\r\n    Provides comfortable, effective tissue support\r\n    Easy to apply and reapply\r\n    Full range of sizes to suit any application\r\n    No pins or tapes needed\r\n    Washable (without loss of effectiveness)\r\n    Choice of two colors for patient acceptability\r\n\r\n', 'c33dfa83dfa746c10af3998b9c81bb9d.jpg', 0, '0000-00-00 00:00:00'),
(68, 2, 14, 7, 0, 'Tubifast Elasticated Tubular Bandage 2 Way Stretch', 956, '', '\r\n\r\nTubifast 2-Way-Stretch can be used as a dressing retention and skin covering for any part of the body. It can also be used for patch wrapping and as an undercast stockinette.\r\n\r\nTubifast 2-Way Stretch is the world’s first and only lightweight elasticated tubular bandage with radial and longitudinal stretch. It is manufactured from rayon with very fine elastane threads knitted into the fabric to provide light elasticity.\r\n\r\nTubifast 2-Way Stretch holds dressings securely, without constriction or compression. Its light elasticity allows patients complete freedom of movement. The light, open weave fabric allows air to circulate over the skin, helping to avoid maceration. Tubifast 2-Way Stretch is available in a range of five widths, designed to fit snugly over all limbs, no matter what the size or shape. Each size is identified by a colour coded line knitted into the bandage. It’s quick and easy to use: cut to size and stretch over the dressing for an even, non-constrictive fit.\r\n\r\nBecause of its tubular construction, Tubifast 2-Way Stretch is particularly suitable for holding dressings in place on difficult areas such as stumps of amputee patients. No pins or tapes are necessary to retain Tubifast 2-Way Stretch.\r\nApplications:\r\n\r\n    RED LINE 1m, 10m – Small Limbs\r\n    GREEN LINE 1m, 3m, 5m, 10m – Small/Medium Limbs\r\n    BLUE LINE 1m, 3m, 5m, 10m – Large Limbs\r\n    YELLOW LINE 1m, 3m, 5m, 10m – X-Large Limbs, Heads, Children’s Trunks\r\n\r\n', 'f0e8f0aa7f6062ebac414ff540e31cea.jpg', 0, '0000-00-00 00:00:00'),
(69, 6, 26, 8, 0, 'TED Anti Embolism Knee Stockings', 556, '', '\r\n\r\nT.E.D.™ anti-embolism knee length stockings are available in six sizes and two lengths, fitting a calf circumference of up to 26".\r\n\r\n    Defined heel pocket to ensure correct placement\r\n    Inlay circumferential knit, helping to provide one way horizontal stretch\r\n    Toe opening allows easy inspection of the skin and pedal pulse\r\n\r\n', '90206e0f0ddaed575670abbeb278fa89.jpg', 0, '0000-00-00 00:00:00'),
(70, 35, 76, 9, 0, 'Progressive Incline Boards', 23120, '', ' 16 1/4" wide x 60" long.\r\n- 4 units, each 16 1/4 wide x 15" long with non-slip treads.\r\n- 1 each 15° - 20° - 25° - 30° incline.\r\n- Natural finish', '4de2e2b540bb9a53c15de2c0a1d21834.jpg', 0, '0000-00-00 00:00:00'),
(72, 40, 95, 11, 0, 'Vista 627 Lumbar Brace Back One Size Adjustable', 12800, '', 'The Vista 627 Lumbar is the foundation of for each Vista Lower Spine product. Utilizing the widely praised SlickTrack Rotating Wheel Tightening system, the Vista 627 Lumbar provides needed circumferential compression proven to increase trunk stability and relieve targeted pain. The Vista 627 Lumbar is one size adjustable.', '8c7e1c6e928b54d8416fc75ea6b4c453.jpg', 0, '0000-00-00 00:00:00'),
(73, 21, 173, 12, 0, 'SharpSafety Containers with Hinged Lid', 2316, '', 'For disposal of chemotherapy waste, SharpSafety™ containers accomodate different sizes of waste materials and sharps, including syringes, ampules and prep materials.', 'e9c953b1a7928182622036b95d41d575.jpg', 0, '0000-00-00 00:00:00'),
(74, 21, 173, 13, 0, 'Sharps Container, Rotor & Hinged Transparent Lid, 3 Gallon, Red', 13280, '', 'The SharpSafety™ dialysis sharps disposal containers with rotor & hinged opening lid have adjustable rotor lid to easily accomodate small and large sharps, including fistula needles.', '4400c4d6bd8a71e0c3f041f862d5064d.jpg', 0, '0000-00-00 00:00:00'),
(75, 21, 173, 14, 0, 'SharpSafety Brackets, Holders, and Accessories', 4876, '', 'SharpSafety Brackets, Holders, and Accessories,safety', 'e99e211c5a7d2cb1230f53743475fbb0.jpg', 0, '0000-00-00 00:00:00'),
(76, 27, 198, 15, 0, 'Gel Warmer 1 Bottle', 6320, '', '\r\n\r\nOperating temperature is set at 115°F.\r\n\r\nFeatures:\r\n\r\n    Polished stainless case\r\n    Low wattage heating sleeve\r\n    UL Listed 44FU, includes Canada\r\n    Fixed operating temperature: 115°F\r\n    Empty dispenser bottle included\r\n    Lighted power switch on front panel\r\n    Mount to wall or set on table\r\n    One year warranty\r\n    Includes Automatic Thermal Cutoff\r\n\r\n', 'be04b55f6d30560fe2b8f0452b79c952.jpg', 0, '0000-00-00 00:00:00'),
(77, 27, 197, 16, 0, 'Ultra Myossage Lotion', 1600, '', 'Formulated with aloe vera, this top quality lotion is ideal for massage or as an ultrasound coupling agent. No menthol, hexachlorophene or polysorbates. Hypoallergenic, water-soluble and greaseless.', 'b458a86620d52f3f0e1e9670c33e5da4.jpg', 0, '0000-00-00 00:00:00'),
(78, 40, 91, 1, 0, 'Premium 3 Panel 9" Elastic Abdominal Binder', 900, '', 'Constructed with panel elastic and soft cotton type lining for patient comfort. Universal style, flannel lined panel elastic support with contact closure. Multi-panel design helps prevent panel rolling. Ideal for providing compression and support for post-natal or post-abdominal surgery, abdominal strains and weakness. Available in each or in a pack of six (6). 9" height.', '78a64ed89c5ba85f285571b7b2adf2a8.jpg', 0, '0000-00-00 00:00:00'),
(79, 6, 27, 0, 1, 'Jobst Bella Lite 20-30 mmHg Compression Arm Sleeve with Silicone Band Beige Small Regular', 4000, '', '\r\n\r\nA soft, comfortable arm sleeve ideal for managing mild to moderate upper extremity lymphedema.\r\n\r\n    Soft and air permeable\r\n    Lightweight, knit construction\r\n    Fits a wide range of arm and hand shapes\r\n    Reduced compression at the wrist provides an effective and comfortable fit when the and Gauntlet are worn together\r\n    Easy to put on, comfortable to wear\r\n    Durable\r\n    All sizes are available in 2 lengths: regular and long\r\n    Machine wash in a mesh laundry bag or hand wash with warm water using a mild soap or detergent designed for compression garments. Machine dry on low heat\r\n    Latex free\r\n    80% nylon, 17% spandex, 3% silicone\r\n    Available in Beige\r\n    Available in 2 Lengths: Regular and Long\r\n\r\n', 'bb8350a115f94443e23219372c752f34.jpg', 0, '0000-00-00 00:00:00'),
(80, 18, 167, 7, 6, 'Aircast Pediatric Knee Cryo Cuff', 4690, '', '\r\n\r\nDesigned for children ages 1 to 7. The versatile cuff design can be applied to either the knee or elbow.\r\n\r\nIndication: Trauma; Post-op; Hemophilia hemorrhage; Rehabilitation\r\n\r\n\r\nFeatures & Benefits\r\n\r\n    Designed for children ages 1 to 7\r\n    Versatile cuff design can be applied to either the knee or elbow\r\n    Also available in adult sizes (see Knee Cryo/Cuff and Elbow Cryo/Cuff)\r\n    Minimizes swelling and pain\r\n\r\n', '4f6ec0bad959bea028502090382a73a2.jpg', 0, '0000-00-00 00:00:00'),
(81, 18, 167, 7, 6, 'Aircast Elbow Cryo Cuff', 6490, '', '\r\n\r\nAnatomically designed to fit the elbow. Minimizes hemarthrosis, swelling, and pain. One size for adults. Also available in a pediatric size.\r\n\r\nIndication: Ideal use for epicondylitis (tennis elbow), post-op, and throwing injuries.\r\n\r\n\r\nFeatures & Benefits\r\n\r\n    Anatomic cuff design for complete coverage of affected area\r\n    Measured compression for patient comfort\r\n    Controlled cold eliminates the risk of tissue damage\r\n    Detachable cooler allows for uninterrupted treatment\r\n    Sizes for both adult and pediatric patients\r\n\r\n', '5b10a00d64573ffea64b0048d94dcef9.jpg', 0, '0000-00-00 00:00:00'),
(82, 32, 225, 10, 1, 'Foot Cream, 4 oz Tube', 700, '', 'A moisturizing cream ideal for individuals with diabetes or other dry skin conditions. The pH balanced, lipid-rich formula lasts 24 hours to soften and relieve rough, cracked, or scaly skin.\r\n\r\nBenefits:\r\n\r\n    Lipid-rich formula - softens and replenishes rough, cracked or scaly skin\r\n    Silky, non-greasy cream rubs in easily and vanishes into skin\r\n    pH balanced\r\n    Lasts all day - provides 24-hour moisturization\r\n    Ideal for diabetic foot care\r\n    Hypoallergenic\r\n    Latex Free\r\n', 'cd84652c76d616bb35c73bd8e3038349.jpg', 0, '0000-00-00 00:00:00'),
(83, 40, 109, 17, 2, 'Active SI Belt', 2500, '', 'Developed by a Physical Therapist and Orthopedic Clinical Specialist the ACTIVE SI BELT® is secure, comfortable and appropriate for all stages of sacroiliac pain. The pelvis is stabilized by an innovative "double-belt" which incorporates sturdy nylon for stabilization with an inner belt of flexible, non-slip neoprene. This product stays in place at work, home or when playing sports; reduces strain on SI ligaments, decreases pain and improves function. Latex-Free and fully adjustable.\r\n\r\n    Decrease Sacroillac Joint Pain and Get Back to Life.\r\n    Recommended by Medical Professionals\r\n    Double-Belt sacroilliac support stays in place!\r\n    Appropriate for all stages of sacroiliac pain.\r\n    Latex-Free and fully adjustable.', 'c0daa5023f003fbb610f34814a858cf2.jpg', 0, '0000-00-00 00:00:00'),
(84, 40, 99, 10, 7, 'Slipper Regular', 420, '', 'Alba Care-Step Slippers 80103- Soft terry construction offers warmth and comfort. Nonskid treads on the bottom help reduce slipping accidents.Medium Adult Light Blue,48/cs Sld/Case', '1bfc51b80588dad06b6dec940d18a331.jpg', 0, '0000-00-00 00:00:00'),
(85, 16, 148, 16, 10, 'Blue Sensor, Adult Foam Electrode 48mm W/ Snap - 25/PK', 1400, '', '\r\n\r\nThe large Ambu Blue Sensor R features highly conductive wet gel, superior adhesion, and a large measuring area to ensure an optimal signal during stress tests and medium to long-term applications. Thanks to the comfortable foam backing, the electrode is gentle to the skin.\r\n\r\nFeatures\r\n\r\n    Highly conductive wet gel\r\n    Superior adhesion\r\n    Large measuring area\r\n    Unique offset concept\r\n    High-quality Ag/AgCl sensor\r\n\r\n', 'ef9458f8b25f51f5dbc58ee258cf2330.jpg', 0, '0000-00-00 00:00:00'),
(86, 37, 263, 16, 16, 'Aveeno Baby Soothing Relief Moisture Cream Fragrance Free 8 oz', 700, '', 'Aveeno Baby Soothing Relief Moisture Cream Fragrance Free', 'd72f6e9eec130c92a2e6a38e23711d76.jpg', 0, '0000-00-00 00:00:00'),
(87, 37, 263, 16, 16, 'Aveeno Baby Soothing Relief Moisture Cream Fragrance Free 8 oz', 700, '', 'Aveeno Baby Soothing Relief Moisture Cream Fragrance Free', '1171f3555b1212027545506f563ea09d.jpg', 0, '0000-00-00 00:00:00'),
(88, 37, 263, 13, 16, 'Aveeno Creamy Moisturizing Oil Pump 12 OZ', 800, '', '\r\n\r\nThe Aveeno Creamy Moisturizing Oil Pump Body Moisture provides rejuvenation to dry, damaged skin. It is recommended by dermatologists. The Aveeno moisturizing oil comes in a 12 oz bottle.\r\n\r\n    Dermatologist recommended\r\n    Softens and smooths even dry skin\r\n    Moisturizes all day long\r\n    Non-Greasy\r\n    Creamy oil that moisturizes and rejuvenates skin\r\n\r\n', 'a442ace9c22bf00f2d1f71dc06c06282.jpg', 0, '0000-00-00 00:00:00'),
(89, 35, 80, 16, 19, 'Shoulder Finger Ladder', 9000, '', '\r\n\r\n    A single vertical unit with 36 steps at\r\n    1 1/4" intervals. Offers progressive mobility of arm at shoulder, elbow and wrist joints.\r\n    Smooth finished hardwood construction.\r\n    2" wide x 54" long x 1 3/8" thick\r\n    36 steps\r\n    Natural finish\r\n    Mounting hardware not supplied\r\n\r\n', '1808c3bf5b62883dae919438d9b4b91a.jpg', 0, '0000-00-00 00:00:00'),
(90, 35, 80, 15, 19, 'Progressive Incline Boards', 20000, '', 'Progressive Incline Boards', 'ccd7b2ce36e11d714106b1cea36cc994.jpg', 0, '0000-00-00 00:00:00'),
(91, 25, 192, 2, 22, 'BD Vacutainer Serum Glass Tube 16 x 100mm, 10.0mL, Red, Paper Label, No Additive, Silicone Coated', 140, '', 'BD Vacutainer® Plus Plastic Serum Tubes have spray-coated silica and are used for serum determinations in chemistry. Samples processed in these tubes may also be used for routine blood donor screening, immunohematology and diagnostic testing of serum for infectious disease.', 'c192fe8ddb93ec991e332c6362d2fdde.jpg', 0, '0000-00-00 00:00:00'),
(92, 43, 299, 13, 0, 'BD Syringes No Needle', 400, '', '\r\n\r\n    BD™ syringes feature a clear barrel with bold scale markings, tapered plunger rod for ease of aspiration, positive plunger rod stop, and an added BD Luer-Lok™ thread for increased secure connection.\r\n    Packaging is clearly labeled latex free.\r\n\r\n', '8b47f9372cd8316acc9db7f43cc295b4.jpg', 0, '0000-00-00 00:00:00'),
(93, 43, 299, 4, 22, 'BD Syringes No Needle', 2500, '', 'BD™ syringes feature a clear barrel with bold scale markings, tapered plunger rod for ease of aspiration, positive plunger rod stop, and an added BD Luer-Lok™ thread for increased secure connection.\r\n    Packaging is clearly labeled latex free.', 'f78dd669b246d55fa1c43e1489b4d8d2.jpg', 0, '0000-00-00 00:00:00'),
(94, 4, 22, 15, 25, 'Bio Protech ECG / EKG Tab Electrodes', 2000, '', '\r\n\r\n    PROTAB ECG Tab Electrodes are self-adhesive, non-sterile, single use disposable electrodes for diagnostic resting ECG.\r\n    ECG Tab electrodes are composed of a PET tape, Ag/AgCl ink and a conductive gel.\r\n    These are configured as 10 (ten) electrodes applied to a siliconized transparent PET card, ten cards per pouch.\r\n    500 Electrodes Per box', '38daf8fe8d57686f958b65fa72f471e2.jpg', 0, '0000-00-00 00:00:00'),
(95, 4, 22, 14, 25, 'CG Electrode Adult Monitoring Foam, 43mm x 45mm', 500, '', '\r\n\r\n    ECG/EKG Monitoring Foam Electrode\r\n    Oval Shaped\r\n    Size: 43mm x 45mm\r\n    Adult\r\n\r\n', 'c3072be9e776ad74650821f1b97884d1.jpg', 0, '0000-00-00 00:00:00'),
(96, 27, 196, 18, 28, 'Biotone Advanced Therapy Gel 8Oz', 2500, '', 'Hypoallergenic.', '34b176ab466a79d2a0a656641d7b8512.jpg', 0, '0000-00-00 00:00:00'),
(97, 27, 196, 14, 28, 'Biotone Dual Purpose Massage Creme', 15000, '', 'Nationally known as the favorite massage creme of professionals', '90fd4a92543eb0eac6ed3ef2dc4f21fd.jpg', 0, '0000-00-00 00:00:00'),
(98, 1, 1, 0, 0, 'Exam Shorts Universal Dark Blue', 29, '', ' FREE Shipping on orders over $100', 'eb82cb8f6ed1c2edfc8bbcc230f2446a.jpg', 0, '0000-00-00 00:00:00'),
(99, 1, 1, 0, 0, 'Exam Cape Standard', 29, '', '', '51ab41f220ea7974d73c55a050cf4ea8.jpg', 0, '0000-00-00 00:00:00'),
(100, 1, 1, 0, 0, 'Slippers Hard Sole Non Skid', 70, '', 'Put Your Best Foot Forward\r\nA great way to keep your feet warm and dry inside. Very comfortable to wear and made with a non-skid sole. You are sure to stand firmly on your feet. Anti-Slip surfaces provide enough traction to keep you from sliding. Ideal for patients in hospitals, post surgery, nursing and retirement homes.\r\n', 'a32535479eecf7ffb7097bcbc28dd457.jpg', 0, '0000-00-00 00:00:00'),
(101, 1, 2, 0, 0, 'N95 Particulate Filter Respirator & Surgical Mask', 13, '', 'Kimberly-Clark 46727 Flat Fold Healthcare Respirator, N95, Pk35. More Details: Flat Fold Disposable Healthcare Particulate Respirator, Filter Class N95, Exhalation Valve No, Face Seal No, Nose Clip Yes, Nuisance Removal No, Size Universal, Color White, Headstrap Type Dual Elastic, Standards Niosh Approved, Package Quantity 35', '0415af130c60c07e394230309dad6211.jpg', 0, '0000-00-00 00:00:00'),
(102, 1, 2, 0, 0, 'Face Mask with Ear loop Blue', 8, '', 'Kimberly Clark 47080, Tecnol Procedure Mask, Pleated, Earloops, Latex Free, Blue.\r\n\r\nThis pleat-style with earloops procedure mask is designed to be used in general patient care situations. 3-Layer construction. Natural latex-free.', '671083e125636bc507ad06d37bdd93c3.jpg', 0, '0000-00-00 00:00:00'),
(103, 1, 2, 0, 0, 'Disposable Face Shields - Full Foam Top Elastic Shield', 29, '', 'Full Length Face Shields.\r\nDisposable\r\nAnti-fog\r\nOptically clear polyester Elastic headband with foam Disposable lenses are available for use with NONFRAMES', '3e466aba80a23aab70f39f2847f73173.jpg', 0, '0000-00-00 00:00:00'),
(104, 1, 2, 0, 0, 'Lab Coat Ladies Full Length', 15, '', 'White button-front lab coat with two lower pockets, one chest pocket. Tailored fit with princess style seams on back. Two button adjustable back belt. 40" length. Poplin fabric. It is made of 80-Percent polyester and 20-Percent Cotton.', '1a25a2454d6c87cf870549f610e11503.jpg', 0, '0000-00-00 00:00:00'),
(105, 1, 2, 0, 0, 'Category: Apparel / Safety » For Staff » Face Mask Face Mask Fog-Free With Earloop Orange', 200, '', 'Offers the protection of patented LONCET® breathable film, and Fluidshield® which resists fluid penetration and helps protect healthcare workers against exposure to blood and bodily fluids. Fog-free feature prevents fogging. Pleat-style with earloops and foam band provide a comfortable fit. Excellent filtration and good breathability provides a quality product', '554837aab470fd1623d642b9cb46337e.jpg', 0, '0000-00-00 00:00:00'),
(106, 1, 2, 0, 0, 'Alpha Protech Critical Cover® Pfl® N-95 Particulate Respirator', 250, '', 'The Alpha Pro Tech PFL® N-95 Particulate Respirator, designed specifically for use in a healthcare setting, is NIOSH-approved as a Type N-95 respirator, meets CDC guidelines for TB exposure control and is FDA approved as a surgical mask. The N-95 delivers the appropriate amount of filtration efficiency and when combined with the patented and unique design features, also delivers the user a comfortable, custom fitting face mask.', '6ace7b8630d16e514ed8fc78760f5fa4.jpg', 0, '0000-00-00 00:00:00'),
(107, 1, 2, 0, 0, 'N95 Mask - Cone Style', 300, '', 'Conforms to NIOSH 42CFR Part 84\r\nStandard as N95 Class\r\n95% filtration efficiency against particulate solids (0.3µ) and aerosols free of oils', '31362ede53d38a2518183e2cb599e868.jpg', 0, '0000-00-00 00:00:00'),
(108, 1, 2, 0, 0, '3M N95 Particulate Respirator and Surgical Mask', 250, '', 'This health care particulate respirator and surgical mask helps provide respiratory protection against certain airborne biological particles. It is disposable and fluid resistant to splash and spatter of blood and other infectious material.', 'e671e0b13c44173201888ff8d912278b.jpg', 0, '0000-00-00 00:00:00'),
(109, 1, 2, 0, 0, 'Classic Universal Scrub Pants - Antimicrobial - Fluid Resistant - Ceil Blue - X-Small', 500, '', 'LifeThreads unisex scrub bottoms are tailor made with soft and highly durable fabric offering maximum comfort and mobility. The scrub bottoms consists of antimicrobial properties to stop any type of bacterial growth.The fluid barrier protection repels splashes from blood, urine, vomit and other dangerous fluids right away.It has one back pocket and two side pockets for easy storage.The contemporary cut fits closer to the body and has antimicrobial easy-pull drawstring waist', '7f219c802b6862c98dee2ce426c01b5f.jpg', 0, '0000-00-00 00:00:00'),
(110, 1, 2, 0, 0, 'Classic Womens Scrub Pants - Antimicrobial - Fluid Resistant - Ceil Blue - X-Small', 700, '', 'LifeThreads favorite V-neck unisex scrub tops consists of special antimicrobial materials that inhibits the growth of any harmful bacteria , combined with fluid barrier to protect from any kind of fluids like blood, fluid, urine, vomit or other chemicals. These unisex scrub tops have roomy patch pockets in the front. Our versatile unisex scrub tops offer classic fit and it can be worn by both men and women', '407f7cdaf2fcd590d9e5b66effd2ce28.jpg', 0, '0000-00-00 00:00:00'),
(111, 1, 2, 0, 0, 'Classic Womens Scrub Top - Antimicrobial - Fluid Resistant - Ceil Blue - X-Small', 1200, '', 'LifeThreads women nursing scrub tops are tailor made for medical requirements. These specially designed nurse uniforms contain antimicrobial protecting agents which restrain any kind of bacterial growth and repel fluids like blood, vomit, urine or any other chemicals. The mock wrapping style of these nursing scrub uniforms makes you look smart and gives a good fit.These nursing uniforms are accessorized with roomy patch pockets in front to carry your instruments and adjustable button closures at the back. These scrub tops are highly durable, soft and easily washable.', 'b376b9b14c67517ae31af1cc77e6d70c.jpg', 0, '0000-00-00 00:00:00'),
(112, 1, 2, 0, 0, 'Contego Womens Stretch Scrub Top - Antimicrobial - Fluid Resistant - Royal Blue - X-Small', 1300, '', 'Our amazing Contego collection of premium scrubs for women has game-changing antimicrobial and fluid resistant properties built in. These scrubs not only make you look smart but guards against unwanted bacteria on your uniform. The soft, ultra-lightweight women scrub top offers superior flexibility due to spandex incorporated into the fabric.', '3f631cadba42130efec7c7272517cba4.jpg', 0, '0000-00-00 00:00:00'),
(113, 1, 2, 0, 0, 'Contego Womens Stretch Scrub Cargo Pants - Antimicrobial - Fluid Resistant - Royal Blue - X-Small', 1000, '', 'LifeThreads women scrub bottom cargo fit are so comfortable that you can almost hike in them. They are stylish and offer in-built antimicrobial and fluid resistant properties keeping in mind on-the-job functionality. Enhanced durability and easily washable quality extends garment life and they always retain the antimicrobial qualities up to the lifetime of the products. ', '4f7be488b880937fe2352d16504409ec.jpg', 0, '0000-00-00 00:00:00'),
(114, 2, 3, 0, 0, 'Curity Plastic Bandages', 500, '', 'Perforated vinyl film and porous adhesive allow skin to breathe', 'd484732f67f79e9741aea69c07311090.jpg', 0, '0000-00-00 00:00:00'),
(115, 2, 3, 0, 0, 'Coverlet Eye Occlusor Bandages', 800, '', 'Coverlet Eye Occlusors are clinically proven to reduce light transmittance 40 times more effectively than other patches. The gentle adhesive provides a secure fit over broken skin, yet allows for easy removal at doctor recommended intervals. Non-sterile patches contain dry natural rubber', '0173957cf4885a10d52e06b79890837c.jpg', 0, '0000-00-00 00:00:00'),
(116, 2, 3, 0, 0, 'Coverlet Fabric Adhesive Bandages', 500, '', 'Coverlet Fabric Adhesive Bandages are made to absorb liquid fast - faster than any of the competitors tested. Featuring an extra-large wound pad capable of absorbing 10 times its own weight in water.\r\nThe 360° adhesive surrounding the island pad helps seal the afflicted area, keeping the wounds clean and providing an environment conducive to healing.', '59745e80759547bf17defdf13776c6b3.jpg', 0, '0000-00-00 00:00:00'),
(117, 2, 3, 0, 0, 'Nutramax Flexible Fingertip 2" Bandages', 200, '', 'Flexible Fingertip, 2" Adhesive Bandage, 100/bx,Adhesive bandages with non-adherent pad are sterile and lightweight.', '89394833259fb103a69047212bf5810e.jpg', 0, '0000-00-00 00:00:00'),
(118, 2, 4, 0, 0, 'Adhesive Bandages Assorted Neon Colors 3/4" x 3"', 400, '', 'Cool Colors Neon adhesive bandages for fun, colorful bandaid protection.\r\nPlastic bandaid strips and stars with a speical adhesive to help them stay put longer.', 'e9ace8d1bb99038b886279583df6d30f.jpg', 0, '0000-00-00 00:00:00'),
(119, 2, 4, 0, 0, 'My Little Pony Adhesive Bandage 3/4" x 3" Stat', 600, '', 'Adhesive bandages imprinted with either cheerful cartoons or bright neon colors.\r\nVented to help prevent skin maceration. Highly absorbent non-stick pad provides a moist environment for proper wound healing.', '85e96ade8cf297380df8c3e67216df46.jpg', 0, '0000-00-00 00:00:00'),
(120, 2, 4, 0, 0, 'Tonka Adhesive Bandage 3/4" x 3" Stat', 500, '', 'Adhesive bandages imprinted with either cheerful cartoons or bright neon colors.\r\nVented to help prevent skin maceration. Highly absorbent non-stick pad provides a moist environment for proper wound healing.', '278aaa99de4def447d9e08bf8c4335ba.jpg', 0, '0000-00-00 00:00:00'),
(121, 2, 4, 0, 0, 'Adhesive Bandages Bugs Bunny and Taz 3/4" x 3"', 1200, '', 'Looney Tunes adhesive bandages feature Bugs Bunny and the Tasmanian Devil for fun protection and child acceptance.\r\nPlastic bandaid strips have a long-lasting adhesive to help them stay on longer.', '9404d8e21b789f8377f1ef8d70be14d7.jpg', 0, '0000-00-00 00:00:00'),
(122, 2, 4, 0, 0, 'Adhesive Bandages Scooby Doo 3/4" x 3"', 1200, '', 'These bandages have a gentle adhesive, with non-adherent wound pad safe for children’s skin.', 'be5c2f77350d39dff54e2576d8bab470.jpg', 0, '0000-00-00 00:00:00'),
(123, 2, 4, 0, 0, 'Adhesive Bandages Bugs Bunny and Daffy Duck 3/4" x 3"', 900, '', 'Latex free, easy open stat strip\r\nAbsorbent, non-stick pad for easy removal\r\nUnique, long-lasting adhesive helps bandage stay on, to keep cuts clean', 'e839f887c96765aed132b70723d780bf.jpg', 0, '0000-00-00 00:00:00'),
(124, 2, 4, 0, 0, 'Adhesive Bandages Batman Green Lantern 3/4" x 3"', 800, '', 'Justice League™ Adhesive Bandages feature Superman, Wonder Woman, Flash, Aquaman, Green Lantern & Batman on Stat Strip® bandages. \r\nThe bandages have a gentle adhesive and features a highly absorbent, non-adherent wound pad that is safe for children’s skin.', 'c1d28475e7d53b2847d68b497c73f26d.jpg', 0, '0000-00-00 00:00:00'),
(125, 2, 5, 0, 0, 'Powerflex Athletic Tape', 1000, '', 'Sweat and water-resistant\r\nTape is elastic and sticks only to itself - not to skin', 'a990e01357283402c5fe1c1e7a038aec.jpg', 0, '0000-00-00 00:00:00'),
(126, 2, 7, 0, 0, 'Profore Four Layer Bandage System', 500, '', '', 'b3aa6232c44598126a7038f65eafbfda.jpg', 0, '0000-00-00 00:00:00'),
(127, 2, 7, 0, 0, 'Profore Latex Free Multi Layer Bandage System', 700, '', 'PROFORE LF is a latex-free formulation, multi-layer compression bandage system. It has been developed in response to a growing concern from customers about the potential danger of latex allergy / hypersensitivity. PROFORE LF provides the same effective compression and sustained results as the standard PROFORE Multi-layer Compression Bandage System, but its latex-free formulation allows the healthcare provider to use it with confidence on allergy-sensitive patients.', '31461bcfa45d9a7a0a4792c6f2bed1dd.jpg', 0, '0000-00-00 00:00:00'),
(128, 2, 7, 0, 0, 'Setopress High Compression Bandage 4" x 138"', 400, '', '', 'b91d4dc200215152ffd919416610cb90.jpg', 0, '0000-00-00 00:00:00'),
(129, 2, 7, 0, 0, 'Fourflex Four Layer Compression Bandage System', 900, '', 'Fourflex Compression Bandage System is ideal for the treatment of Chronic Venous Insufficiency and when effective appropriate compression is needed. It is comparable to Profore Compression Bandages. Fourflex can be left in place for up to 7 days depending on the amount of wound drainage.', 'b7ab8538acb5fbcd51900d1a9327c577.jpg', 0, '0000-00-00 00:00:00'),
(130, 2, 7, 0, 0, 'Profore Lite Latex Free Multi Layer Bandage System', 1200, '', 'Set contains sterile wound contact layer, absorbent padding layer, light comfortable layer and a cohesive compression layer', '266188d3de212c8a2fbdece00e9e77ba.jpg', 0, '0000-00-00 00:00:00'),
(131, 2, 7, 0, 0, 'Sensi-Wrap Self-Adherent Bandage Rolls - Latex Content', 1300, '', 'A lightweight compression bandage which sticks to itself, not to other materials or skin\r\nEasily torn without scissors', '1d07a89f1be9c91c386bbdf16d7984bf.jpg', 0, '0000-00-00 00:00:00'),
(132, 2, 10, 0, 0, 'Elastic Bandages', 500, '', 'A 100% latex free elastic bandage, providing outstanding compression and stretch', '18e7c3e7f888e614c71028f6069639f1.jpg', 0, '0000-00-00 00:00:00'),
(133, 2, 12, 0, 0, 'Sureprep Skin Protectant Wipe', 800, '', 'Sureprep creates a barrier film on peri-wound skin. This vapor-permeable film helps protect the skin from maceration and stripping caused by adhesives.', '5a51167b9b99bd4ce4d5b29ee9a91b4c.jpg', 0, '0000-00-00 00:00:00'),
(134, 2, 13, 0, 0, 'Specialist Plaster Bandages', 1100, '', 'Specially treated plaster spreads uniformly, providing exceptional strength.\r\nIt sets within minutes.\r\nWhen wet, the plaster has a thick, creamy texture that provides a smooth finish.', 'eb123c6c567cb5ffb3b9d13ee9e0c088.jpg', 0, '0000-00-00 00:00:00'),
(135, 2, 15, 0, 0, 'UnnaFlex Unna Boot 4" x 10 Yards', 2000, '', '', 'c3b22d6ea6dbf44431049f7e4705ffb6.jpg', 0, '0000-00-00 00:00:00'),
(136, 2, 15, 0, 0, 'Unna Boot Bandages', 1500, '', '', '0183228514b1da052243de5da8e253b2.jpg', 0, '0000-00-00 00:00:00'),
(137, 4, 20, 0, 0, 'Ecg Paper At-1,Sp-1,Thermo Sensitive, Z-Fold Pack', 1000, '', '', '1ebccabc88f9a1ea359a450fff8574e1.jpg', 0, '0000-00-00 00:00:00'),
(138, 4, 20, 0, 0, 'Schiller ECG Paper AT-1 SP-1 Thermo Sensitive Z-Fold', 1500, '', '', 'ffd6c61923055cfde5f64b53cb377671.jpg', 0, '0000-00-00 00:00:00'),
(139, 4, 20, 0, 0, 'Welch Allyn ECG Chart Paper for CP100 / CP200 / CP150', 2000, '', 'Welch Allyn Chart Paper for CP 100, CP 150, and CP 200 Electrocardiographs (200 Sheets per Pad / 5 Pads per case)', '731493c743ec74fa218d77eabd3f3c17.jpg', 0, '0000-00-00 00:00:00'),
(140, 5, 23, 0, 0, 'ScotchCast Plus Casting Tape 3', 2400, '', '', '5c9d18c3a8a8907260a10c10850548e6.jpg', 0, '0000-00-00 00:00:00'),
(141, 5, 23, 0, 0, 'ScotchCast Plus Casting Tape 4" x 4 Yards White', 2000, '', '', 'b6885f58d632af9844f211a2d359976f.jpg', 0, '0000-00-00 00:00:00'),
(142, 5, 23, 0, 0, 'ScotchCast Plus Casting Tape 2" x 4 Yards White', 1500, '', '', '5cdf1af9b1324852e62832480cd36fb6.jpg', 0, '0000-00-00 00:00:00'),
(143, 5, 24, 0, 0, 'Ortho Glass Fiberglass Padded Splinting System', 2500, '', '', '9f936a6640357a9358b0f0f52b0e2265.jpg', 0, '0000-00-00 00:00:00'),
(144, 5, 25, 0, 0, 'Cotton Stockinette', 2500, '', '', '73200fcd9796e88c6d6570da0c0df07a.jpg', 0, '0000-00-00 00:00:00');
INSERT INTO `product` (`prod_id`, `prod_catid`, `prod_subcatid`, `body_cat_id`, `brand_cat_id`, `prod_name`, `prod_price`, `prod_code`, `prod_desc`, `image`, `marchantId`, `date`) VALUES
(145, 6, 27, 0, 0, 'Jobst Bella Lite 20-30 mmHg Compression Arm Sleeve with Silicone Band Beige Small Regular', 5000, '', '', '5180b3175a98d2bca305107b7db47edb.jpg', 0, '0000-00-00 00:00:00'),
(146, 6, 29, 0, 0, 'Jobst Bella Lite 20-30 mmHg Compression Arm Sleeve with Silicone Band Beige Small Regular', 3000, '', '', 'd192c6a92d49ee9ee1b2e2fb0530d7f3.jpg', 0, '0000-00-00 00:00:00'),
(147, 9, 33, 0, 0, 'Welch Allyn AudioScope 3 Screening Audiometer with Charging Stand', 5000, '', '', '7c894a283e136d673224428fa190a4f4.jpg', 0, '0000-00-00 00:00:00'),
(148, 9, 35, 0, 0, 'Welch Allyn Durashock DS66 Blood Pressure Monitor with Adult Cuff and Zipper Case', 4000, '', '', '248ff6a402846ff798144c3a130ffa18.jpg', 0, '0000-00-00 00:00:00'),
(149, 9, 35, 0, 0, 'Welch Allyn Durashock DS45 Blood Pressure Monitor with Adult Cuff', 3000, '', '', '15a0bcb20091c0da1dbf1f727a350b21.jpg', 0, '0000-00-00 00:00:00'),
(150, 9, 35, 0, 0, 'Welch Allyn Tycos DS48 Blood Pressure with Adult Cuff and Zipper Case', 2000, '', '', 'a2c8db87396d1d5f320c8a325936d68c.jpg', 0, '0000-00-00 00:00:00'),
(151, 9, 36, 0, 0, 'Welch Allyn Flexiport Re-useable Blood Pressure Cuffs', 2500, '', '', '2f88fe26230fb6afefbb6ea823a48e57.jpg', 0, '0000-00-00 00:00:00'),
(152, 9, 37, 0, 0, 'Lumiscope Blood Pressure Monitor with Stethoscope', 3500, '', '', '3f1e2325c1f2ba5bfa3e0361054977ab.jpg', 0, '0000-00-00 00:00:00'),
(153, 9, 37, 0, 0, 'Blood Pressure Kits', 4000, '', '', 'f03660baa824a6c8cf32094c3a293146.jpg', 0, '0000-00-00 00:00:00'),
(154, 9, 37, 0, 0, 'Pulse Oximeter', 4500, '', '', 'c9298fb404826bcf1f0e59cc37b32347.jpg', 0, '0000-00-00 00:00:00'),
(155, 9, 38, 0, 0, 'PanOptic Opthalmoscope Halogen Lamp', 5000, '', '', '9cbe63b4140f5570d6a2fe128ef5a977.jpg', 0, '0000-00-00 00:00:00'),
(156, 9, 39, 0, 0, 'Welch Alleyn Reusable Ear Specula Set (2.5mm, 3.0mm, 4.0mm)', 2000, '', '', '18c9719bb4bc87626ee72e0a4c88c492.jpg', 0, '0000-00-00 00:00:00'),
(157, 9, 39, 0, 0, 'Welch Allyn 3.5 v Rechargeable Handle for Desk Charger', 7000, '', '', 'c0841ea2f93d7593f5722961724b5a04.jpg', 0, '0000-00-00 00:00:00'),
(158, 9, 39, 0, 0, 'Welch Allyn 3.5 V Lithium Ion Rechargeable Handle', 6500, '', '', '730856371ccf1655299484be5f80d913.jpg', 0, '0000-00-00 00:00:00'),
(159, 9, 39, 0, 0, 'Suretemp Plus 692 Electronic Thermometer with Wall Mount 4Ft Oral Probe', 6000, '', '', '197700c180e1195a0302ae5b72cf3d25.jpg', 0, '0000-00-00 00:00:00'),
(160, 9, 40, 0, 0, 'Welch Allyn 3.5 V Diagnostic Set with 11710 Opthalmoscope 23810 Macroview Otoscope 71000 Handle and ', 4000, '', '', 'e4f96c6e7049f1a2c270a0c324661db8.jpg', 0, '0000-00-00 00:00:00'),
(161, 9, 40, 0, 0, 'Welch Allyn 3.5 V Diagnostic Set with 11710 Opthalmoscope 23810 Macroview Otoscope 71000 Handle and ', 3000, '', '', '1f0fd7add29caed26397914cf1b2f73e.jpg', 0, '0000-00-00 00:00:00'),
(162, 9, 40, 0, 0, 'Green Series 777 Wall Transformer (Heads not Included)', 5000, '', '', '54cd00dbc11777c043209b03b601c0c3.jpg', 0, '0000-00-00 00:00:00'),
(163, 9, 40, 0, 0, 'Welch Allyn Junior Otoscope Set with Handle and Soft Case', 4500, '', '', '140e86cc1dc9e4b26f6e00b5667689d7.jpg', 0, '0000-00-00 00:00:00'),
(164, 9, 40, 0, 0, 'Welch allyn Integrated Wall Diagnostic System Complete with BP, Temp, 2 Heads ,Specula', 10000, '', '', '0a0a398be90fdafa1b5fcdb9d9fe14b0.jpg', 0, '0000-00-00 00:00:00'),
(165, 9, 41, 0, 0, 'Edan U50 Portable Ultrasound System', 70000, '', '', 'f04b9083420c61ec0965408c9eef1a70.jpg', 0, '0000-00-00 00:00:00'),
(166, 9, 42, 0, 0, 'Red Dot Clear Plastic Monitoring Electrodes', 20000, '', '', 'c40b1ccd5813edfec8f5ba31bfb9aed9.jpg', 0, '0000-00-00 00:00:00'),
(167, 9, 42, 0, 0, 'Red Dot Resting Monitoring Electrodes', 15000, '', 'Resting electrodes for 12-lead EKG applications are available in tab style and snap style.\r\n\r\n2330/2360/9650 Red Dot Resting Electrodes are small tab style conductive adhesive electrodes. The 2330/2360/9650 is packaged 10 per strip and 10 strips per bag and utilizes a conductive adhesive. 9650 is packaged for the Alternate Care Market.', 'bfd5f2bec6cdaa317506f62624ac41a8.jpg', 0, '0000-00-00 00:00:00'),
(168, 9, 42, 0, 0, 'Red Dot Monitoring Electrodes with Foam Tape and Sticky Gel', 10000, '', 'Multi-purpose monitoring electrodes with foam backing and sticky gel are ideally suited for the OR, ER and diagnostic stress testing applications', 'c65c1008043504ca23ebc0664253b110.jpg', 0, '0000-00-00 00:00:00'),
(169, 9, 42, 0, 0, 'ECG Snap Electrodes - Disposable', 9000, '', 'For ECG/EKG monitoring or diagnosis with the connected equipment as medical sensors\r\nAg/AgCl coating on electrode surface for effective signal transmission', '9a7dc3164a2100434878c1e84a15c742.jpg', 0, '0000-00-00 00:00:00'),
(170, 9, 43, 0, 0, 'Red Dot Trace Prep and Dispenser 0.75" x 196"', 1000, '', '', 'c1342b6e54dec461d8ec0ace7475a3bf.jpg', 0, '0000-00-00 00:00:00'),
(171, 9, 44, 0, 0, 'Ten20 Conductive Paste', 7000, '', '', '516c6e8d8fb7e4051f44ad499479b86c.jpg', 0, '0000-00-00 00:00:00'),
(172, 9, 44, 0, 0, 'NuPrep Skin Prep 4 oz Tube', 700, '', '', 'f551d4b1a9a12deada65318a744af079.jpg', 0, '0000-00-00 00:00:00'),
(173, 9, 45, 0, 0, 'Welch Allyn 3.5 V Diagnostic Otoscope', 9000, '', '', '9ed962e4ab1bb020d0e087c45f2131bb.jpg', 0, '0000-00-00 00:00:00'),
(174, 9, 45, 0, 0, 'PocketScope 2.5 V Halogen Otoscope with Throat Illuminator', 9000, '', '', '99fcd9a70a9c7d558dfe40ca736ca107.jpg', 0, '0000-00-00 00:00:00'),
(175, 9, 45, 0, 0, 'PocketScope 2.5 V Halogen Otoscope with Throat Illuminator and Soft Case', 2000, '', '', '50a5c9f0f953e60e55f10635b274bbe5.jpg', 0, '0000-00-00 00:00:00'),
(176, 9, 46, 0, 0, 'Welch Allyn Professional Halogen PenLite', 10000, '', '', '9aa84b0cc4414de43d5dd2e58590808c.jpg', 0, '0000-00-00 00:00:00'),
(177, 9, 47, 0, 0, 'Sony Standard Black and White Media Paper 110S/5', 2000, '', '', 'ba7137766342d0be7f6e8e8f099ebc25.jpg', 0, '0000-00-00 00:00:00'),
(178, 9, 47, 0, 0, 'Sony High-Gloss Black and White Media Paper', 2000, '', '', 'eece63ed3a6057a534fc696f9a0f0cc1.jpg', 0, '0000-00-00 00:00:00'),
(179, 9, 50, 0, 0, 'Schiller Disposable Mouthpieces for SP-150/250 SP-1', 2000, '', '', 'ac695f91a27e89658bf57a6f4672c467.jpg', 0, '0000-00-00 00:00:00'),
(180, 9, 50, 0, 0, 'Covidien MAXNI Neo-Natal - Adult SpO2 Sensor', 1500, '', '', '70b5cc1c18ab89b2d999ec22009c1054.jpg', 0, '0000-00-00 00:00:00'),
(181, 9, 51, 0, 0, 'Welch Allyn Harvey Elite Stethoscope 22" Black', 2000, '', '', '805a5c178c476a4c31931e4d44849d97.jpg', 0, '0000-00-00 00:00:00'),
(182, 9, 51, 0, 0, 'Littmann Stethoscope Spare Parts Kit for Cardiology III Black', 3000, '', '', '522a426f582067d65c50ffd79b29c218.jpg', 0, '0000-00-00 00:00:00'),
(183, 9, 52, 0, 0, 'Suretemp Thermometer Prove Covers', 3000, '', '', '08011363099bd7c44305b082f2890d91.jpg', 0, '0000-00-00 00:00:00'),
(184, 9, 52, 0, 0, 'SureTemp Oral Probe for Spot Signs Monitor 9 foot Oral', 5000, '', '', 'bd20998c218d0aefe77630a3b54cd050.jpg', 0, '0000-00-00 00:00:00'),
(185, 9, 52, 0, 0, 'SureTemp Oral Probe for 690/692 Thermometer 4 foot', 5000, '', '', '5718c27a4f8f2c1c81ada65458688f7d.jpg', 0, '0000-00-00 00:00:00'),
(186, 9, 52, 0, 0, 'SureTemp Rectal Probe for 690/692 Thermometer 4 foot', 4000, '', '', 'ea5ddf079086d93e7ac23571bc5e73b0.jpg', 0, '0000-00-00 00:00:00'),
(187, 9, 52, 0, 0, 'Braun Thermoscan 4000 Probe Covers', 1500, '', '', 'd7f88bab3955ccb5af25267ec3fc3290.jpg', 0, '0000-00-00 00:00:00'),
(188, 9, 52, 0, 0, 'Filac Thermometer Accessories', 4500, '', '', 'cffbab1171f84d2e7e3363f39d1e8448.jpg', 0, '0000-00-00 00:00:00'),
(189, 9, 53, 0, 0, 'Forehead Thermomemeter Disposable', 3000, '', '', '22b6ede87e14521ea9d88562e90c5df1.jpg', 0, '0000-00-00 00:00:00'),
(190, 9, 53, 0, 0, 'Link Temp Non Contact Professional Thermometer', 1300, '', '', 'ceb94d8535108143a42b49d943ac5577.jpg', 0, '0000-00-00 00:00:00'),
(191, 9, 53, 0, 0, 'Suretemp Plus 690 Electronic Thermometer with 4ft Oral Probe', 5000, '', '', 'dde43c733ac0223c09ec57f54fd014c1.jpg', 0, '0000-00-00 00:00:00'),
(192, 9, 53, 0, 0, 'Suretemp Plus 690 Electronic Thermometer with Wall Mount, 9ft Oral Probe', 6000, '', '', '89ab9e2bcf26484b0530469564fa4dd1.jpg', 0, '0000-00-00 00:00:00'),
(193, 9, 53, 0, 0, 'Filac 3000 AD and Filac 3000 EZ Electronic Thermometers', 3000, '', '', '9840ac45e391c529c5613dfa3a1ace77.jpg', 0, '0000-00-00 00:00:00'),
(194, 9, 53, 0, 0, 'FILAC F-1500 Electronic Thermometer', 7000, '', '', '14d33fe5784c60a55165592e787376c7.jpg', 0, '0000-00-00 00:00:00'),
(195, 9, 54, 0, 0, 'Aquasonic 100 Ultrasound Gel, 1 Liter Dispenser Bottle', 7000, '', '', '25f7d781cfc4f4b83c07ad221f931b32.jpg', 0, '0000-00-00 00:00:00'),
(196, 9, 54, 0, 0, 'Ultrasound Gel Aquasonic Clear 1 Liter', 4000, '', '', 'd8b12676dfcbce425fb5f9559cc8f668.jpg', 0, '0000-00-00 00:00:00'),
(197, 9, 54, 0, 0, 'Ultrasound Gel Aquasonic 100 5 Liter', 1200, '', '', '7522ff44ca36a09bbbebc009c8ea4923.jpg', 0, '0000-00-00 00:00:00'),
(198, 9, 54, 0, 0, 'Ultrasound Gel Aquasonic 100 Clear 60G Doppler 2Oz', 1000, '', '', 'd02702e0e10c016ad028c775aaf44204.jpg', 0, '0000-00-00 00:00:00'),
(199, 9, 54, 0, 0, 'Ultrasound Gel Pad Aquaflex 2Cm X 9Cm', 1200, '', '', '130c0d6c139b119db54d4b5bb576726e.jpg', 0, '0000-00-00 00:00:00'),
(200, 9, 54, 0, 0, 'Ultrasound Gel Scan 8.5 Oz', 900, '', '', '669283b1454d5d429aa7070c9a02815e.jpg', 0, '0000-00-00 00:00:00'),
(201, 9, 54, 0, 0, 'Spectra 360 Electrode Gel 60G Tube', 1500, '', '', '168e94a754f96f151357c39de8868672.jpg', 0, '0000-00-00 00:00:00'),
(202, 9, 55, 0, 0, 'Welch Allyn KleenSpec Corded Illumination System 4.6 V Complete', 1200, '', '', '6d930f2f9a0455d341863f15ea34eac3.jpg', 0, '0000-00-00 00:00:00'),
(203, 9, 56, 0, 0, 'Welch Allyn Spot Vital Signs with Nellcor SPO2, Suretemp Thermometer and Blood Pressure', 20000, '', '', '09da3ae331d59ec58a56757b110e7fe6.jpg', 0, '0000-00-00 00:00:00'),
(204, 9, 56, 0, 0, 'Welch Allyn Spot LXi Vital Signs with BP, Thermometer, Nellcor SPO2', 30000, '', '', 'c55cc06695dec8809342446493be80c1.jpg', 0, '0000-00-00 00:00:00'),
(205, 11, 61, 0, 0, 'Bath Tub Grab Bar Deluxe', 1200, '', 'Tub Grab Bar has a step-through clamp design that provides unobstructed entry/exit path for better hand positioning.', '7a92cdfd739c92a1758d803e9cc0d3aa.jpg', 0, '0000-00-00 00:00:00'),
(206, 11, 63, 0, 0, 'Knee Walker Generation 2 Weil', 7000, '', '', '0c817be81c424fa4b8ff0140789587c0.jpg', 0, '0000-00-00 00:00:00'),
(207, 11, 65, 0, 0, 'Wheelchair Cushion Gel Foam', 2000, '', 'Medline 2", 3" Gel Foam Cushion: A High Resilient Foam Cushion Is Embedded With A Pressure Reduction Gel Bladder To Equalize Weight And Pressure Distribution. The Core Is Made With A Proprietary Designed Gel Bladder Encased In High Resilient Polyurethane Foam. The Casing Is A High Density Durable Foam Providing Support And Comfort. A Zippered, Navy, Fluid Resistant, Nylon Cover With Urethane Backing And A Nylon Reinforced Grey, Vinyl Bottom; Durable, Wipeable And Easy To Care.', '2263859698e13f465e72b90236d6c282.jpg', 0, '0000-00-00 00:00:00'),
(208, 12, 66, 0, 0, 'Saunders Education Manuals', 3000, '', 'Manuals to help educate about back pain and daily activites for preventative measures. Addresses both communication and sexual techniques, which are categorized by flexion or extension principles and pelvic girdle dysfunction. The illustrations are frank but not at all offensive. 31 pages.', 'd9b0488911a4b3ca3b8f8fb6c331c526.jpg', 0, '0000-00-00 00:00:00'),
(209, 12, 66, 0, 0, 'Book 3, Clinical Taping Method 3Rd Edition', 1500, '', '', '7d9a96ab1e7c5457659e41d6da55e226.jpg', 0, '0000-00-00 00:00:00'),
(210, 14, 142, 0, 0, 'Adsafe CPR Pocket Resuscitator', 500, '', '', 'c50f8b92dd5a56060aa98e43ed211d75.jpg', 0, '0000-00-00 00:00:00'),
(211, 14, 142, 0, 0, 'CPR Face Shield', 1200, '', 'A lightweight face shield to prevent mouth to mouth contact during CPR\r\nOne way valve eliminates blow back to caregiver\r\nIndividually poly bagged\r\nContains detailed instructions', '1cd8b6943983182e9d9a44c2a7ecea8c.jpg', 0, '0000-00-00 00:00:00'),
(212, 14, 142, 0, 0, 'CPR Rescue Mask Kit', 9000, '', '', '9f6d0151f261ea5f25ec1edb36446cd6.jpg', 0, '0000-00-00 00:00:00'),
(213, 14, 142, 0, 0, 'EZ CPR Rescue Pack', 2400, '', '', '3942cd11ea3e14a654c70ab131fa1ade.jpg', 0, '0000-00-00 00:00:00'),
(214, 15, 143, 0, 0, 'Ansell Encore Microptic Powder Free Latex Sterile Surgical Gloves', 700, '', 'ENCORE® MicrOptic® latex, powder-free surgical gloves offer exceptional dexterity, tactile sensitivity, and at the same time, outstanding strength and barrier protection. The ENCORE® MicrOptic® is ideal for delicate procedures in ophthalmic, micro, and cardiothoracic surgery. Its micro-thickness allows for comfortable double-gloving, and its brown color reduces glare from surgical lights.', '1a927cb0de3296e29b4cdd47cb8dd314.jpg', 0, '0000-00-00 00:00:00'),
(215, 15, 143, 0, 0, 'Biogel Latex Powder Free Surgeons Sterile Gloves', 900, '', 'Sterile, powder-free, natural rubber latex surgical glove for excellent barrier protection in general surgical procedures.\r\n\r\nRecommended for all general surgical procedures and other specialties that do not require unique characteristics.', '01593c2a14e97bb8f8e3c6a27a478220.jpg', 0, '0000-00-00 00:00:00'),
(216, 15, 143, 0, 0, 'High Risk Latex Gloves 10mil White or 15mil Blue', 800, '', 'Maximum protection, puncture resistance, durability, comfort, and fit\r\n11? to 12? long for greater coverage than\r\nstandard 9? latex examination gloves', '2999e07dac0212871f8e8c1304d6e1a5.jpg', 0, '0000-00-00 00:00:00'),
(217, 15, 143, 0, 0, 'Black Arrow Latex Exam Gloves', 1500, '', 'Dynarex Black Latex Examination Gloves are ideal for law enforcement, correctional facilities, tattoo shops, and high-end beauty salons. They are also a good choice for light-duty maintenance when protection is required', 'c0abcd726a0a6f00df8d061841a4a080.jpg', 0, '0000-00-00 00:00:00'),
(218, 15, 143, 0, 0, 'Latex Surgical Gloves - Powder Free, Sterile', 1300, '', 'One pair (one right, one left) per paper wallet, each wallet packed in a peel-open pouch\r\nMaximum strength with no loss of tactile sensitivity.', '4b9cf50194298eea1e989fd45e836a16.jpg', 0, '0000-00-00 00:00:00'),
(219, 15, 143, 0, 0, 'Exam Glove Latex Powder Free Aurelia Vibrant', 2000, '', 'Latex exam glove, Textured, Non-Sterile. Box of 100 Gloves. UPS ground rates will apply for large orders. Please call Customer Service for details.', 'b3d9a7034d039073b8b92a5c89bd412c.jpg', 0, '0000-00-00 00:00:00'),
(220, 15, 143, 0, 0, 'Safe-Touch Latex Exam Gloves - Powdered, Non-Sterile', 1700, '', 'Tough Strength, Comfortable Fit\r\nWhen it comes to choosing the right glove, you need to be very selective. Finding the right fit with the right sensitivity is key to your decision. Thats what Dynarex Safe-Touch Latex Exam gloves achieve. Safe-Touch gloves are the first choice in latex gloves all across America. Our unique construction allows for acute sensitivity with enhanced protection. Safe-Touch Latex Exam gloves deliver acute sensitivity and less fatigue.', 'b4474682b0f0dc3355b14713c3c5bf8b.jpg', 0, '0000-00-00 00:00:00'),
(221, 15, 144, 0, 0, 'Purple Nitrile Powder Free Exam Gloves', 2300, '', 'For individuals allergic to natural rubber latex, Kimberly-Clark Purple Nitrile Powder-Free Exam Gloves are the perfect fit. Unique purple color identifies gloves instant from latex or other gloves and allows for quick foreign substance recognition. When users see the distinctive color purple color, they know they can concentrate on the task at hand, protected from known and unknown risks. Comfortable to wear with excellent tactile sensitivity, ambidextrous gloves feature textured fingertips to increase grip sensitivity and a beaded cuff. Latex-free, Powder-Free, Ambidextrous.', '8756580660a0f3ad23e13db1641136a1.jpg', 0, '0000-00-00 00:00:00'),
(222, 15, 144, 0, 0, 'Exam Glove Lavender Nitrile', 2100, '', 'Halyard Health HH100 Lavender Nitrile Exam Gloves from HealthyKin.com are thinner, lighter, and more economical than standard nitrile, yet retain the protective properties required for excellent performance across a wide range of healthcare tasks. Lavender Nitrile Gloves are designed for any task for which you currently use vinyl gloves.', '36eca9502e7386f4c82420d2ff3840cf.jpg', 0, '0000-00-00 00:00:00'),
(223, 15, 144, 0, 0, 'Purple Nitrile XTRA PF Extended Cuff - Small', 1100, '', '', '4b30fd60d0edfbc133db0177c1b3e1ee.jpg', 0, '0000-00-00 00:00:00'),
(224, 15, 146, 0, 0, 'Halyard Stretch Vinyl Powder Free Exam Gloves', 1400, '', '', 'b1897130785852116f0506f96a25ca90.jpg', 0, '0000-00-00 00:00:00'),
(225, 15, 146, 0, 0, 'SensiCare Stretch Vinyle Sterile Exam Gloves', 1400, '', 'SensiCare® Sterile Stretch Powder-Free Latex-Free Vinyl Exam Gloves feature an advanced formulation polyvinyl chloride material for better tactile sensitivity and fit.', '48a93e64369e9fcac6712492babc0369.jpg', 0, '0000-00-00 00:00:00'),
(226, 15, 146, 0, 0, 'Generation Pink 3G Synthetic Exam Gloves', 1000, '', '', '594bf6cea59f7b944e8e8ec7946a4394.jpg', 0, '0000-00-00 00:00:00'),
(227, 16, 147, 0, 0, 'Stainless Steel Mobile Cart - 2 Shelves', 7000, '', '', '2c3759df5fea41b2c9b007851c6cd0a9.jpg', 0, '0000-00-00 00:00:00'),
(228, 16, 147, 0, 0, 'Stainless Steel Mobile Cart - 3 Shelves', 6000, '', '', 'fd5f0b625eee11dc13d0be5d06fa4826.jpg', 0, '0000-00-00 00:00:00'),
(229, 16, 147, 0, 0, 'Stainless Steel Mobile Cart - 2 Shelves with Drawer', 8000, '', '', '83960e5d25c9a30ecc0999bd70c5dd07.jpg', 0, '0000-00-00 00:00:00'),
(230, 16, 148, 0, 0, 'Thermometer Refrigerator / Freezer NIST Digital Traceable w Alarm 1/EA', 1800, '', '', '84cb5db64a4f63fde35e0b684e3e2e02.jpg', 0, '0000-00-00 00:00:00'),
(231, 16, 149, 0, 0, 'Medline Table, Overbed, Walnut', 7000, '', '', 'ff90a790cacb4b6da577d7919733d480.jpg', 0, '0000-00-00 00:00:00'),
(232, 16, 149, 0, 0, 'Premium Fitted & Heavy Duty Cot Sheets', 4000, '', '', 'fc1273f5a081ce8bdf2ae315fdd03c79.jpg', 0, '0000-00-00 00:00:00'),
(233, 16, 151, 0, 0, 'Gauze Pads 4" X 4" N/St, 4 Ply Lf Avant,Nw,Deluxe', 1900, '', '', 'd598c7f965ad0ff55b0d02ce521a0a47.jpg', 0, '0000-00-00 00:00:00'),
(234, 16, 151, 0, 0, 'Alcohol Prep Pads Large', 1800, '', '', '522df46463b0e1a3a114ad3864871bd3.jpg', 0, '0000-00-00 00:00:00'),
(235, 16, 151, 0, 0, 'Scopettes Jr, Single Ended Swab, 8", Paper Handle', 2100, '', '', '3be81351bfcba5e172f35699f3564783.jpg', 0, '0000-00-00 00:00:00'),
(236, 16, 151, 0, 0, 'ABD Pad, Sterile, 5" x 9"', 2300, '', '', 'dcd14b955fdf246c430ffd3a5065ecda.jpg', 0, '0000-00-00 00:00:00'),
(237, 16, 151, 0, 0, 'Airex Balance Pad', 1300, '', '', 'a64078bae636d8b93f427e4e840a4930.jpg', 0, '0000-00-00 00:00:00'),
(238, 16, 151, 0, 0, 'Medi-Pak Performance Plus Non-Woven Sponges, 4"X4"', 1800, '', '', 'd9d791b09ad7556d7b57943fd28767bd.jpg', 0, '0000-00-00 00:00:00'),
(239, 16, 151, 0, 0, 'Medi-Pak Performance Plus Drain-Split Sponges, 4"X4"', 1400, '', '', '1a2b79e331418b5251387ecd20910f42.jpg', 0, '0000-00-00 00:00:00'),
(240, 16, 152, 0, 0, 'Sharps Container 5.4 QT Next Generation Counter balanced Door Red', 1300, '', '', '832d798f0a1619c6ab64ab93f8dfcf4f.jpg', 0, '0000-00-00 00:00:00'),
(241, 16, 152, 0, 0, 'Phlebotomy Sharps Container 1 QT Red', 1600, '', '', 'f272d899a11aecc43629a42f39536deb.jpg', 0, '0000-00-00 00:00:00'),
(242, 16, 153, 0, 0, 'TXS-1 Flexion Stool - 13" - 20" - Imperial Blue', 1100, '', '', '39fe7ab3d4cb0c21fd22ac37e545df81.jpg', 0, '0000-00-00 00:00:00'),
(243, 16, 153, 0, 0, 'Pnematic Stools', 1300, '', '', '1f0d18396e9abbab0d2fe117803a83a5.jpg', 0, '0000-00-00 00:00:00'),
(244, 17, 154, 0, 0, 'Curity Cover Sponges', 1200, '', 'Curity™ Cover Sponges. Non-woven cellulose wadding filled sponges. All purpose use with good absorbency. Available in a variety of sizes in both sterile and non-sterile', '7334e184f0559470c70bfa3fd614d17c.jpg', 0, '0000-00-00 00:00:00'),
(245, 17, 155, 0, 0, 'Gauze Bandage Roll Sterile Cotton 4.5" x 4.1 Yards', 700, '', '', '69e664c4ce1ff1de963325c3af0083e7.jpg', 0, '0000-00-00 00:00:00'),
(246, 17, 155, 0, 0, 'Gauze Bandage 4.5"X4.1Yd Sterile', 600, '', '', 'f54936cf491fa183cd8c673a479e38d0.jpg', 0, '0000-00-00 00:00:00'),
(247, 17, 155, 0, 0, 'Kerlix Gauze Bandage Rolls', 400, '', '', '73d5c25bf1121cb74a051d788ec2a352.jpg', 0, '0000-00-00 00:00:00'),
(248, 17, 155, 0, 0, 'Kerlix AMD Antimicrobial Gauze Bandage Rolls', 500, '', 'Kerlix™ AMD rolls are impregnated with PHMB (Polyhexamethylene Biguanide), a powerful yet safe antiseptic that has a broad range effectiveness against gram positive and gram negative microorganisms including some multi-drug resistant strains such as MRSA. This exciting new product provides healthcare facilities with a low cost, prophylactic method of treatment without changing nursing protocol. In addition to its antimicrobial capabilities, Kerlix™ AMD rolls provide fast-wicking action, superior aeration, and excellent absorbency.', 'bc3e9348a6342bf075fac1ebdc88945b.jpg', 0, '0000-00-00 00:00:00'),
(249, 17, 156, 0, 0, 'Gauze Pads 4" X 4" N/St, 4 Ply Lf Avant,Nw,Deluxe', 1600, '', '', 'ba8fa4532096bd05b45e61a74b74eb98.jpg', 0, '0000-00-00 00:00:00'),
(250, 17, 156, 0, 0, 'Dermacea Gauze Pads 2" x 2" 8 Ply Non-Sterile 200/PK', 1500, '', '', '2fb4687574ebae48957e59833a9ec4f5.jpg', 0, '0000-00-00 00:00:00'),
(251, 17, 156, 0, 0, 'Gauze Pads 4" x 4" 12 PLY Sterile', 600, '', '', '0b6c70192f93155332dbb12f3877d66b.jpg', 0, '0000-00-00 00:00:00'),
(252, 17, 156, 0, 0, 'Curity Gauze Pad', 500, '', '', '6bedf2cac68294379c575c6265247c17.jpg', 0, '0000-00-00 00:00:00'),
(253, 17, 157, 0, 0, 'Curad Sterile Xeroform Gauze', 1000, '', '', 'a63b293667f5d23720e9575f32fff32a.jpg', 0, '0000-00-00 00:00:00'),
(254, 17, 157, 0, 0, 'Iodoflex Cadexomer Iodine Pads', 1900, '', '', 'f8e6055880a4c9c6aa0908193ec4fbe4.jpg', 0, '0000-00-00 00:00:00'),
(255, 17, 158, 0, 0, 'Stretch Gauze Bandages - Individually Wrapped, Non-Sterile', 2200, '', '', 'db64c57814cfa64f1efc11db79a010b1.jpg', 0, '0000-00-00 00:00:00'),
(256, 17, 158, 0, 0, 'Non-Woven Gauze Sponges Non-Sterile', 1500, '', '', '40b54af465473d5f24e90d6c60ee36ee.jpg', 0, '0000-00-00 00:00:00'),
(257, 17, 158, 0, 0, 'Advantage Surgical Sponges - All Gauze - Non-Sterile', 1600, '', '', '96e298b2101239558e9779c7b53ca883.jpg', 0, '0000-00-00 00:00:00'),
(258, 17, 159, 0, 0, 'Excilon AMD Antimicrobial Drain Sponges', 1700, '', '', '8899972bfaa6cd78701f97b273881c81.jpg', 0, '0000-00-00 00:00:00'),
(259, 17, 160, 0, 0, 'X-Ray Detectable Sterile Gauze Surgical Sponges 4" x 4" 16-ply', 1000, '', '', '264589e606f0043efcc67550ec571862.jpg', 0, '0000-00-00 00:00:00'),
(260, 17, 160, 0, 0, 'Surgitube Tubular Gauze 50 Yard Rolls (For use without Applicator)', 1200, '', '', 'be3aade99bf5b6ce2c1ac4f271b53e0e.jpg', 0, '0000-00-00 00:00:00'),
(261, 17, 160, 0, 0, 'Surgitube Tubular Gauze 15 Yard Rolls', 1200, '', '', '3a88569cac76d34681b12cddbc3612c1.jpg', 0, '0000-00-00 00:00:00'),
(262, 18, 161, 0, 0, 'Nylatex Wrap', 650, '', '', '361e1660935f57089427cf11f2c9a99a.jpg', 0, '0000-00-00 00:00:00'),
(263, 18, 162, 0, 0, 'Colpac - Blue Vinyl Cold Packs', 1000, '', '', 'c7897f840c0f4695daf1c0860397b884.jpg', 0, '0000-00-00 00:00:00'),
(264, 18, 162, 0, 0, 'Colpac - Blue Vinyl Cold Packs', 1300, '', 'Filled with a non-toxic silica gel that remains pliable throughout treatment\r\nDelivers up to 30 minutes of soothing relief from acute pain, swelling and fever', 'f6c9eec7d8e951012d1d534642e124f7.jpg', 0, '0000-00-00 00:00:00'),
(265, 18, 162, 0, 0, 'Instant Cold Packs', 1600, '', 'Single squeeze allows for easy activation of packs, offering immediate relief to injured area\r\nNo refrigeration needed', '00e54c9cf9620e638d2759ae76f5c1bf.jpg', 0, '0000-00-00 00:00:00'),
(266, 18, 162, 0, 0, 'ColPac - Black Polyurethane Cold Packs', 1500, '', '', '167da466cf8ca7d7df53516981c5df86.jpg', 0, '0000-00-00 00:00:00'),
(267, 18, 162, 0, 0, 'Chattanooga Sport-Pac Cold Pack - Soccer Ball Blue', 3000, '', '', '00681094eaf699025526ba43019e4cec.jpg', 0, '0000-00-00 00:00:00'),
(268, 18, 162, 0, 0, 'Sombra, Sombra Cool Gal', 2200, '', '', '764ef1c7cfa4b1de61bdb8c4a7960cae.jpg', 0, '0000-00-00 00:00:00'),
(269, 18, 163, 0, 0, 'Replacement Flannel Cover - Small', 700, '', '', 'f3dde72fc62c0c302574ceee4502367a.jpg', 0, '0000-00-00 00:00:00'),
(270, 18, 163, 0, 0, 'Theratherm Digital Moist Heating Pad', 2000, '', 'Theratherm Digital Moist Heat Pack provides intense, moist heat therapy for temporary relief from pain associated with arthritis, back pain caused by muscle spasm and inflammation caused by strain and tension. Its flannel cover draws moisture from the air and as the pack’s temperature rises, the moisture is released onto the skin, speeding relief to your patients. Its unique, easy-to-use digital control is convenient and safe.', '661368cebfc99c0e2a829c1ec0143f35.jpg', 0, '0000-00-00 00:00:00'),
(271, 18, 164, 0, 0, 'Hydrocollator Model E-1', 5000, '', '', '74807029c9fd8c05257f8f94938ed474.jpg', 0, '0000-00-00 00:00:00'),
(272, 18, 164, 0, 0, 'Hydrocollator Mobile M-2 Includes 12 Standard Hot Pacs', 6000, '', '', 'c3b1e2cc2988768defdd872c14e20e70.jpg', 0, '0000-00-00 00:00:00'),
(273, 18, 165, 0, 0, 'Chattanooga Hydrocollator Moist Heat Hot Pac', 600, '', 'The first choice for physical therapists, physicians, athletic trainers, and chiropractors for over 60 years.', 'a3cfd0549e556dd6a1ec21086c410f95.jpg', 0, '0000-00-00 00:00:00'),
(274, 18, 167, 0, 0, 'Instant Hot Pack, 5" x 9"', 900, '', '', 'aee3433a8b61859437586c453a23fa2f.jpg', 0, '0000-00-00 00:00:00'),
(275, 18, 166, 0, 0, 'Foam Filled Terry Covers for Hydrocollator Hot Pacs', 1400, '', 'For home or clinic use Polyurethane foam layer Constructed in traditional terry knit weave Hook and loop closures to prevent unwrapping or slipping Available with or without pockets Washable', '3946955326143dbeb457a722ee6810e2.jpg', 0, '0000-00-00 00:00:00'),
(276, 18, 166, 0, 0, 'All-Terry Terry Covers for Hydrocollator Hot Packs', 360, '', 'Constructed in traditional terry knit weave\r\nHook and loop closures to prevent unwrapping or slipping Washable and reusable\r\nOne year warranty', '6658871286497e43268ede99a4740f95.jpg', 0, '0000-00-00 00:00:00'),
(277, 20, 171, 0, 0, 'Wings Adult Briefs', 1200, '', 'Wings™ Adult Brief has a full fit design to provide complete coverage and maximum absorbency. The design includes an extra wide crotch for added protection, 4 tape tabs and a blue dryness strip for optimum skin protection.', 'ebc78afb7eccee7dd734c1c13bec2cfd.jpg', 0, '0000-00-00 00:00:00'),
(278, 20, 170, 0, 0, 'Wings Incontinence Knit Pants', 750, '', 'Wings incontinence care knit pants feature a high-comfort waistband and provide enhanced security with elasticized cuffs, an even distribution of elastic throughout the garment, and a higher material “burst” strength, which is more resistant to tearing than traditional mesh pants.\r\n', 'a371561959d1cfbc7c366c8069c3e3a9.jpg', 0, '0000-00-00 00:00:00'),
(279, 20, 169, 0, 0, 'Protection Plus Disposable Underpads 17" x 24"', 1300, '', '', 'b7aece9cc5896231a27016a6d48f42a2.jpg', 0, '0000-00-00 00:00:00'),
(280, 20, 169, 0, 0, 'Sofnit 300 Reusable Underpads', 1200, '', 'Vinyl knit barrier withstands the heavy demands of multiple washing and drying cycles while staying soft and leakproof.', '6e586df21c176c3f096090f01a1a5ee7.jpg', 0, '0000-00-00 00:00:00'),
(281, 20, 169, 0, 0, 'Sofnit 300 Tartan Reusable Underpads', 1300, '', 'Vinyl knit barrier withstands the heavy demands of multiple washing and drying cycles while staying soft and leakproof.', '04598a5427f2ec5f086ae6df7c596a77.jpg', 0, '0000-00-00 00:00:00'),
(282, 20, 168, 0, 0, 'Protection Plus Classic Protective Underwear', 900, '', 'Protection Plus Classic Protective Underwear with pull-up design has the comfort and feel of underwear.', '5c34963d4672bbe47eebb46b3076c978.jpg', 0, '0000-00-00 00:00:00'),
(283, 21, 176, 0, 0, 'Protection Plus Classic Protective Underwear with pull-up design has the comfort and feel of underwe', 500, '', '', 'd76e7572371687bc32769e9e5cd544a3.jpg', 0, '0000-00-00 00:00:00'),
(284, 21, 176, 0, 0, 'Perineal Wash No-Rinse Cleanser 1 Gallon', 800, '', '', 'ade47a28a924fbf01026122fdaf4c3f6.jpg', 0, '0000-00-00 00:00:00'),
(285, 21, 176, 0, 0, 'Envirocide Surface Disinfectant Cleaner 1 Gallon', 1000, '', '', '7435770378551a7ed9d5a7b223843669.jpg', 0, '0000-00-00 00:00:00'),
(286, 21, 175, 0, 0, 'Purell Advanced Hand Sanitizer with Aloe', 600, '', 'PURELL Advanced With Aloe is enhanced with four different skin-conditioning agents that help maintain skin health — skin moisture and improves overall skin feel. This PURELL hand sanitizer is specially formulated with moisturizers that leave hands feeling soft and refreshed without stickiness or residue. America’s #1 instant hand sanitizer kills more than 99.99% of most common germs. PURELL Advanced With Aloe works in as little as 15 seconds, with no water or towels needed. It provides unprecedented germ kill while soothing hands and maintaining skin health.', 'cd8effa08d6fb274716b858c8e1b8426.jpg', 0, '0000-00-00 00:00:00'),
(287, 21, 175, 0, 0, 'Avagard D Instant Hand Antiseptic', 650, '', '3M™ Avagard™ D Instant Hand Antiseptic is uniquely formulated to be non-drying and non-irritating to skin, even with multiple daily use. Emollient-rich formulation to help improve hand hygiene compliance Fits easily into health care environment', '050b46afcdf9358aeaf7fd40a1b36eff.jpg', 0, '0000-00-00 00:00:00'),
(288, 21, 175, 0, 0, 'Purell Advanced TFX Instant Hand Sanitizer 1200 ML Refill', 700, '', '', 'ae3b692daf460ad42fff6160a7a6ed92.jpg', 0, '0000-00-00 00:00:00'),
(289, 21, 174, 0, 0, 'Cut & Scrape Cleaner 2 oz spray bottle', 1000, '', '', '5509d026eae82a4b3cd91ff48f79d7c8.jpg', 0, '0000-00-00 00:00:00'),
(290, 21, 174, 0, 0, 'Burn Gel', 500, '', '', 'a5a1600ac00e41b94af257c82726fee3.jpg', 0, '0000-00-00 00:00:00'),
(291, 21, 174, 0, 0, 'Burn Spray', 250, '', 'Recommended for the temporary relief of minor burns. Choose from 2 and 4 oz. “no touch” spray dispensers. Burn Spray cools and soothes damaged skin without trapping heat and dries without leaving skin feeling sticky.', '2f83ae87b001e6a54647d276fd8ed567.jpg', 0, '0000-00-00 00:00:00'),
(292, 21, 174, 0, 0, 'Hydrogen Peroxide Spray', 1300, '', 'Comes in a convenient 2 oz. “no touch” pump spray dispenser. Just spray the affected area and allow the peroxide to bubble out dirt and bacteria.  Allow to dry before bandaging. The painless formula makes it the most requested antiseptic treatment for minor cuts, scrapes and abrasions.', '4fd32576682614b1c45cc7ac2754e8a8.jpg', 0, '0000-00-00 00:00:00'),
(293, 21, 173, 0, 0, 'Container, 2 Gal, Red, Rotor Opening Lid', 750, '', '', '82e463c9372e5bb930312f3616175571.jpg', 0, '0000-00-00 00:00:00'),
(294, 21, 173, 0, 0, 'SharpSafety Containers with Hinged Lid', 450, '', 'For disposal of chemotherapy waste, SharpSafety™ containers accomodate different sizes of waste materials and sharps, including syringes, ampules and prep materials.', 'e1525308150915fdca2319f43ea6e3ad.jpg', 0, '0000-00-00 00:00:00'),
(295, 21, 173, 0, 0, 'Sharps Container, Rotor & Hinged Transparent Lid, 3 Gallon, Red', 700, '', '', '2fced08c267365d7a5677919d0ae6342.jpg', 0, '0000-00-00 00:00:00'),
(296, 21, 172, 0, 0, 'Gentle Rain Extra Mild, 21 fl.oz/621 mL', 250, '', '', 'd26452fee11f5b2ce3697022c709ca84.jpg', 0, '0000-00-00 00:00:00'),
(297, 21, 172, 0, 0, 'Sween Cream 12 oz./339 g jar', 1500, '', '', 'be356fc819709616c2f752a0ef2e8040.jpg', 0, '0000-00-00 00:00:00'),
(298, 21, 172, 0, 0, 'Baza Cleanse & Protect 8 fl.oz./237 mL', 650, '', '', 'bffe802fcaccb968b49195c34791e553.jpg', 0, '0000-00-00 00:00:00'),
(299, 21, 172, 0, 0, 'Advanced Therapy Massage Lotion 8 Oz', 650, '', '', '3ca28ffba97f8c565b100918d138e298.jpg', 0, '0000-00-00 00:00:00'),
(300, 22, 180, 0, 0, '3M Surgical Clipper for Pivoting Head and Blade Assemblies', 1500, '', 'A compact and lightweight rechargeable surgical clipper for removing head and body hair from patients in preparation for surgery or other procedures requiring hair removal. Uses the pivoting head (9660) or Premium 40 (9690) disposable, single-use blades.\r\n\r\nUse of a surgical clipper is recommended by AORN, APIC, CDC, and ACS as a preferred method of hair removal to help reduce the risk of surgical site infection. The rechargeable surgical clipper is designed to replace razor use for pre-op hair removal. It was designed to meet the needs of healthcare professionals when hair removal is necessary and incorporates features identified as providing value.', '020d916b727bdb7b229cdcbbf3564797.jpg', 0, '0000-00-00 00:00:00'),
(301, 22, 180, 0, 0, 'Leg Bags with Comfort Strap and Twist Valve', 2000, '', 'Leg Bags with comfort strap and twist valve drainage port.\r\nThese sturdy bags are latex-free and have a sterile fluid pathway.\r\nAvailable in sizes Medium (19 oz./600 ml) and Large (32oz./1100ml).', '21c98bdb73b97f8abda7c2104d7dea65.jpg', 0, '0000-00-00 00:00:00'),
(302, 22, 180, 0, 0, 'Pro Advantage Urine Reagent Strips 10 Tests', 2100, '', '', 'b55ac4247d1ae703fdcda6d083ed37c2.jpg', 0, '0000-00-00 00:00:00'),
(303, 22, 179, 0, 0, 'Disposable Surgical Scalpels', 2100, '', 'Surgical Blades and Disposable Scalpels: More than 30 years of research and engineering have gone into the production of these high quality world standard surgical blades and disposable scalpels; the definite choice of leading surgeons and hospitals worldwide. Choose blades in sizes from 10-24 in either carbon steel or stainless steel. Disposable scalpels feature and ergonomically designed ABS plastic handle for better feel and precision. Both blades and scalpels offer excellent value and significant savings. Disposable Scalpels Sizes 10, 11, 12, 15, 20.', 'fb9b1ba5a9a4093dbcd7df17fd5a5bed.jpg', 0, '0000-00-00 00:00:00'),
(304, 22, 179, 0, 0, 'Miltex Disposable Scalepls', 1300, '', 'Preassembled scalpels have stainless steel surgical blades mounted on plastic handles with fluted finger-grips. Scalpel blade safely protected by pull-off protector shield. Individually sealed in peel-apart, see-through package.', '255a20f681633003f22e3a94ea9daa8e.jpg', 0, '0000-00-00 00:00:00'),
(305, 22, 177, 0, 0, 'Sterile Skin Staple Removers', 2200, '', 'Sterile Skin Staple Removers provide fast and easy removal of surgical skin staples.', '60592b68a9f03641baf297b70990d954.jpg', 0, '0000-00-00 00:00:00'),
(306, 22, 178, 0, 0, 'New Silent Knight Pill Crusher', 2300, '', 'Patient Safety - Eliminates cross contamination\r\nUser Safety - Maximum results with minimal effort. Contour cover encloses internal moving part', '93662c78da618e68cdeba1193fabf449.jpg', 0, '0000-00-00 00:00:00'),
(307, 22, 178, 0, 0, 'Silent Knight Pill Crusher Pouches', 1400, '', 'Pouch safely contains pills during crushing process, thus eliminating cross contamination and unnecessary clean up\r\nStorage compartment on the pill crusher conveniently holds the pouches', 'bc5e89b2a3721a845f10139a84b487a7.jpg', 0, '0000-00-00 00:00:00'),
(308, 23, 186, 0, 0, 'RapidFIll Connectors Luer Lock to Leur Lock', 2300, '', '', '689857eef0d68568745c9247b588abb4.jpg', 0, '0000-00-00 00:00:00'),
(309, 23, 186, 0, 0, 'Tourniquet Quick Release, Universal, Red', 1600, '', '', 'a9b3823f643869bedb1363ae6c9a3e8a.jpg', 0, '0000-00-00 00:00:00'),
(310, 23, 186, 0, 0, 'Filter Straw, 1.75" Flexible Straw For Fluid Aspiration From Glass Ampules', 1000, '', '', '5c6e587a8b7bff65adfce37c4b837d88.jpg', 0, '0000-00-00 00:00:00'),
(311, 23, 186, 0, 0, 'Filter Straw, 1.75" Flexible Straw For Fluid Aspiration From Glass Ampules', 2000, '', '', '491101e94421c0e816d60431fb359682.jpg', 0, '0000-00-00 00:00:00'),
(312, 23, 186, 0, 0, 'IV Pole Kit - Enteral Feeding Syringe (60cc) - Non-Sterile', 2200, '', '', 'ad60c8acdfa8ff8cfb079e18df24c62b.jpg', 0, '0000-00-00 00:00:00'),
(313, 23, 185, 0, 0, 'Monoject Blood Collection / Infusion Sets with Female Luer', 1600, '', 'Monoject™ blood collection / infusion sets with female luer attached are used for routine venipunctures and infusion applications.', 'e51fe5b912eb91f22b1215b15ae188b4.jpg', 0, '0000-00-00 00:00:00'),
(314, 23, 185, 0, 0, 'Luer Adapter, Sterile', 2500, '', '', 'bcd79efa78b84255b4ace109d72b8c9a.jpg', 0, '0000-00-00 00:00:00'),
(315, 23, 185, 0, 0, 'Enteral Delivery', 2500, '', '4276 - Pump Bag Set - with 1200cc enteral bag, drip chamber, silicone tubing connector, roller clamp, feeding set adapter with protective cap. Formula is poured into enclosed bag. Connection to pump and feeding tube as per standard procedure. Formula flow regulated by pump and tubing connector.', '957b25145fade4d71d56ccfce729720d.jpg', 0, '0000-00-00 00:00:00'),
(316, 23, 183, 0, 0, 'Vial Venting Chemo Pin', 1400, '', '', '1622f06f7644e197d3402d6475e4f27a.jpg', 0, '0000-00-00 00:00:00'),
(317, 23, 183, 0, 0, 'Argyle Sterile Irrigating Solutions', 1300, '', 'Covidien offers sterile water and saline in a variety of sizes and configurations. These include 100 mL bottles and 100 mL foil packets.', '67959afa6f7a7982f0622a6e7f0af5d7.jpg', 0, '0000-00-00 00:00:00'),
(318, 23, 182, 0, 0, 'IV Start Kit w/ Tegaderm without Gloves, Latex Free, Sterile', 1500, '', '', '7b697029ca427401645906f5749f1556.jpg', 0, '0000-00-00 00:00:00'),
(319, 23, 182, 0, 0, 'Latex Free, Sterile', 1500, '', '', '830cfd15a3b421f68c0c369c206ae09c.jpg', 0, '0000-00-00 00:00:00'),
(320, 23, 182, 0, 0, 'Latex Free, Sterile', 1300, '', '', '8957ce6d81064bcad7d65f8105dac050.jpg', 0, '0000-00-00 00:00:00'),
(321, 23, 182, 0, 0, 'Suture Removal Kit, Sterile', 1100, '', '', '50d304a23f4c2d43de0dbaad71c632d4.jpg', 0, '0000-00-00 00:00:00'),
(322, 24, 187, 0, 0, 'MetriMist Deodorizer 8 oz Spray', 2200, '', '', 'f961d1dfa8a7cb350b83546c484d48f6.jpg', 0, '0000-00-00 00:00:00'),
(323, 25, 192, 0, 0, 'BD Vacutainer Blood Transfer Device', 950, '', 'The use of a needle to transfer venous blood from a syringe to a blood collection tube or blood culture bottle is both a dangerous procedure and an OSHA-prohibited practice.\r\n\r\nThe BD Vacutainer® Blood Transfer Device was designed with healthcare workers’ safety in mind.\r\n\r\nThis single-use device reduces the risk of transfer-related injuries while maintaining the specimen integrity required for accurate disease diagnosis.\r\n\r\nThe BD Vacutainer® Blood Transfer Device continues to offer safety without exception, quality without compromise', '9a17849b3fb13943f57add71906398b6.jpg', 0, '0000-00-00 00:00:00'),
(324, 25, 191, 0, 0, 'Precision 24 Hour Specimen Collection Container, 3000mL Capacity, Screw Cap, Graduations', 1150, '', '', '9eb9c993ecd5ca0ee403ec33189fa675.jpg', 0, '0000-00-00 00:00:00'),
(325, 25, 191, 0, 0, 'Hospira Sterile Empty Vial 30 mL', 1550, '', '', '09b3f19a083c6e1dcbba1efb96541cd6.jpg', 0, '0000-00-00 00:00:00'),
(326, 25, 191, 0, 0, 'Hospira Sterile Empty Vial 10 mL', 750, '', '', 'd0597cecbc01677a2e9571c66504888c.jpg', 0, '0000-00-00 00:00:00'),
(327, 25, 190, 0, 0, 'Drape Sheets', 940, '', 'Soft and breathable\r\nProvides patient protection and privacy during any type of personal exam', 'f03de369e7d98e95ea408de030ebaa00.jpg', 0, '0000-00-00 00:00:00'),
(328, 25, 189, 0, 0, 'Argyle Trocar Catheters', 1350, '', 'The Argyle™ trocar catheter is a sterile, single use device that consists of a surgically sharp trocar and a clear PVC catheter. Trocar catheters are primarily used for closed chest tube thoracostomies. Catheter features numerical depth marks at 2cm increments for easy and precise positioning.', '3149cb906ce92e9e56bc2fc1f514ef9f.jpg', 0, '0000-00-00 00:00:00'),
(329, 25, 189, 0, 0, 'Argyle Bubble Tubing', 1550, '', 'Argyle™ Bubble Tubing that can be cut to exact length needed', '1e7bacb427c07eb2e1ea4159e4d7f255.jpg', 0, '0000-00-00 00:00:00'),
(330, 25, 188, 0, 0, '22000 Series Midstream Catch Sets', 1400, '', '100% Latex Free Midstream Catch Kit, 4.5 oz., graduated, trans-lucent wide-mouth container, leak proof screw-on-lid, patient label, w/ 3 BZK towelettes or Castile Soap, 24/ca.\r\n\r\nFeatures a 4.5 oz. Graduated, translucent wide-mouth container with detachable sterile funnel, leak proof screw-on lid, patient label and sterile fluid path.\r\nEase of use', 'ca06d8c6dc1756808d3593d4e7494fbc.jpg', 0, '0000-00-00 00:00:00'),
(331, 25, 188, 0, 0, 'Specimen Container, 20cc, 14 FR Whistle Tip Suction Catheter, Sterile', 1050, '', '', '7864adbefece2ba0c60fc1989baff0b1.jpg', 0, '0000-00-00 00:00:00'),
(332, 25, 188, 0, 0, 'ChemoPlus Chemo Drug Transport Bag', 1550, '', 'ChemoPlus™ drug transport bags are designed to safely transport chemotherapy drugs.', '91c5b55e09164d1e7b6f38455016ca81.jpg', 0, '0000-00-00 00:00:00'),
(333, 27, 198, 0, 0, 'Gel Warmer 1 Bottle', 5000, '', '', '3c9ed7791f6b9b45152985d38e413353.jpg', 0, '0000-00-00 00:00:00'),
(334, 27, 198, 0, 0, 'Gel Warmer 2 Bottle', 5000, '', '', '5d9b5f2d89a28748a0eb22b9a43adfa6.jpg', 0, '0000-00-00 00:00:00'),
(335, 27, 198, 0, 0, 'Gel Warmer 3 Bottle', 5550, '', '', 'eed23a0b5e02f7e96c2b5affadeb7fdf.jpg', 0, '0000-00-00 00:00:00'),
(336, 27, 198, 0, 0, 'Chattanooga TM-1 Electric Lotion Warmer', 6000, '', '', '450d8da333e9b74a18d4e41d57485723.jpg', 0, '0000-00-00 00:00:00'),
(337, 27, 197, 0, 0, 'Ultra Myossage Lotion', 2500, '', 'Formulated with aloe vera, this top quality lotion is ideal for massage or as an ultrasound coupling agent. No menthol, hexachlorophene or polysorbates. Hypoallergenic, water-soluble and greaseless.', '0ed94340e7d29b6b97754b9259aacc97.jpg', 0, '0000-00-00 00:00:00'),
(338, 27, 197, 0, 0, 'Myossage Lotion', 1200, '', 'Soothing, effective alcohol-free, non-greasy and non-staining lotion.\r\n\r\nChattanooga is the world’s largest manufacturer of rehabilitation equipment for treating musculoskeletal, neurological and soft tissue disorders.\r\n\r\nFor over six decades, Chattanooga has set a benchmark for leadership, reliability and excellence. Our products contribute to better treatment outcomes in hospitals, clinics and home settings worldwide.\r\n\r\nWe lead the rehabilitation industry by example, and through continuous innovation, provide real world solutions for clinicians and their patients.', '57bd13c76e612a8bc88675ba6ffda94f.jpg', 0, '0000-00-00 00:00:00'),
(339, 27, 196, 0, 0, 'Accessories, Nylon Shoulder Bag', 1100, '', '', '1753111ebfeff033b0a71904e3e4aab7.jpg', 0, '0000-00-00 00:00:00'),
(340, 27, 195, 0, 0, 'Maxi Rub 2 Speed Professional Massager', 4000, '', '- Deep muscle vibration penetration\r\n- Helps Relieves tension and stress\r\n- Stimulates local circulation\r\n- Soothes and relaxes aching muscles', 'dbaa5ecdedff5aec4c9724a60684ebe8.jpg', 0, '0000-00-00 00:00:00'),
(341, 27, 195, 0, 0, 'Jeanie Rub Foot Massager Accessory', 2300, '', '', 'c2358eab326415bcad1b0035581dafcc.jpg', 0, '0000-00-00 00:00:00'),
(342, 27, 195, 0, 0, 'Professional Massager, Two-Speed, Body Sport', 6500, '', '', '7a64a441ca5d5b43f9d9f83493ce51f5.jpg', 0, '0000-00-00 00:00:00'),
(343, 27, 195, 0, 0, 'Thera Cane Massager Self', 1400, '', '', 'dd5823fec6b79c9ce0de0f39fc97fc3c.jpg', 0, '0000-00-00 00:00:00'),
(344, 27, 195, 0, 0, 'BodySport Professional 2 Speed Massager', 6900, '', '', '3a3ccc1605bb6d88ff53f99e286c971f.jpg', 0, '0000-00-00 00:00:00'),
(345, 29, 208, 0, 0, 'BodySport Professional 2 Speed Massager', 4500, '', 'Easy to Close -- Simply roll it three times in the same direction, press from the middle out and feel the seal. Simple for all drainable pouch users including those with vision and dexterity problems.\r\nEasy to Empty -- Lightly pinch the sides of the leak-proof outlet for easy control of content flow. Firm reinforcing strips shut as soon as you stop pinching. Simple to control the content flow from the pouch.', 'b13e5eb0cacc910b6d3292fed9eeb639.jpg', 0, '0000-00-00 00:00:00'),
(346, 29, 208, 0, 0, 'Urinary Leg Bag Extension Tubing with Connector', 1000, '', 'The extension tubing connects easily to Hollister urinary leg bags. Oval-shaped tubing helps keep the fluid pathway open.\r\n\r\nFeatures\r\n\r\nKink-resistant extension tubing with connector\r\nOval, 11/32" effective inside diameter\r\nAvailable in sterile and non sterile\r\nNot made with natural rubber latex', '4acdd5edd3a52cc7a97713f0247b84ce.jpg', 0, '0000-00-00 00:00:00'),
(347, 29, 208, 0, 0, 'Adjustable Ostomy Belt', 1100, '', 'Attaches securely to an ostomy pouch to hold the pouch firmly in place. Belt attaches easily to the pouch belt adapter.\r\nHigh quality elastic material is washable; wide belt is soft and comfortable and prevents rolling.\r\nEach belt is continuously adjustable and fits all sizes.', 'a33bf84868bf1b88153c58b0ffe24c74.jpg', 0, '0000-00-00 00:00:00'),
(348, 29, 208, 0, 0, 'Skintac 407W Adhesive Liquid 4 oz Bottle', 1400, '', '', '3610f01fa75f6777339e844fec133d75.jpg', 0, '0000-00-00 00:00:00'),
(349, 29, 208, 0, 0, 'Torbot MS407W Skintac Adhesive Barrier Wipe', 1600, '', '', 'eadc71351ec1554255bf539322b80660.jpg', 0, '0000-00-00 00:00:00'),
(350, 29, 207, 0, 0, 'Banish II Liquid Deodorant', 1900, '', 'Banish is a concentrated liquid deodorant that neutralises and deodorises odours associated with ostomy pouches.\r\n\r\n \r\nContraindications / Precautions:\r\n\r\nKeep out of reach of children\r\nIf spilled on skin, wash immediately with soap and water\r\nIn case of ingestion: If victim is conscious, give them large quantities of water. Contact a physician or poison control centre immediately for instructions.', 'c8fbe66200e755a3672523a4f41b981a.jpg', 0, '0000-00-00 00:00:00'),
(351, 29, 207, 0, 0, 'Urostomy Drain Tube Adapter', 1500, '', '', '7311cf1882190c1eab5833f771272a89.jpg', 0, '0000-00-00 00:00:00'),
(352, 29, 207, 0, 0, 'm9 Odor Eliminators Drops', 1400, '', '', 'a2e373538f9018982d483afc25ceec0c.jpg', 0, '0000-00-00 00:00:00'),
(353, 29, 207, 0, 0, 'm9 Odor Eliminator Spray', 1300, '', '', '02175f1b7ee584a95e5c25e822122591.jpg', 0, '0000-00-00 00:00:00'),
(354, 29, 206, 0, 0, 'Allkare Adhesive Remover Wipe', 2100, '', '', '627485e41e0b9cdcc7891deaa091f0f9.jpg', 0, '0000-00-00 00:00:00'),
(355, 29, 204, 0, 0, 'Medi-Aire Biological Odor Eliminator', 950, '', '', '0214d472922d19d2ca682572c12cf690.jpg', 0, '0000-00-00 00:00:00'),
(356, 29, 204, 0, 0, 'Sani-zone Odor Eliminator / Air Spray', 650, '', '', 'db2a13bc4bd7787c89069565b500037d.jpg', 0, '0000-00-00 00:00:00'),
(357, 29, 203, 0, 0, 'Karaya 5 Closed Pouch with Paper Porous Tape', 500, '', 'Skin protected from stomal discharge by Karaya 5 seal ring; natural Karaya offers flexibility, shallow convexity and is bacteriostatic.\r\nSecurity and confidence achieved by highly effective deodorizing and venting filter made of activated carbon granules.\r\nSecurity and confidence assured with porous tape; keeps skin healthy by allowing it to breath.', '7528511ffda81ce6e278a8b0cfda1a9a.jpg', 0, '0000-00-00 00:00:00'),
(358, 29, 203, 0, 0, 'ActiveLife One-Piece 12" Drainable Cut-to-Fit Pouch', 650, '', '', 'dcd81661211dca0e1920fe4b661c1f2b.jpg', 0, '0000-00-00 00:00:00'),
(359, 29, 203, 0, 0, 'Activelife One-Piece Convex Drainable Pouch', 690, '', 'A lightweight, flexible, one-piece system, ActiveLife® combines the skin barrier and the pouch into one simple, easy-to-manage system. Convex barrier is good for people with a recessed or flat stoma. Pouch allows for draining.', '4c8e43d59b3b76e996c8d2426ea2fbee.jpg', 0, '0000-00-00 00:00:00'),
(360, 29, 203, 0, 0, 'Esteem One-Piece Convex Drainable Pouch', 640, '', 'The one-piece system that’s gentle on the skin, while remaining secure and easy to use! Flexible and discreet, the Esteem® + one-piece system is the all-in-one solution that combines the skin barrier and pouch in a single unit, allowing for a simple, secure, and comfortable experience. Available with Durahesive® technology that adheres to skin and protects it from break down.  Available with InvisiClose® clipless tail closure.\r\n\r\nThe Esteem® + pouching system offers the latest technologies from ConvaTec, including:\r\n\r\n\r\nA state-of-the art  filter with anti-clogging film layer\r\nSoft and quiet materials\r\nThe security of the InvisiClose™ tail closure with Lock-it Pocket™ ConvaTec’s latest pouches and advanced adhesives offer you the security, comfort, and discretion you deserve.', '7d83d3bab6e8a6849f27fbfe9a5d3db5.jpg', 0, '0000-00-00 00:00:00'),
(361, 29, 199, 0, 0, 'Stomahesive Paste 2 oz', 1000, '', '', '20eb8f9024084533a61acc29f2980302.jpg', 0, '0000-00-00 00:00:00'),
(362, 29, 199, 0, 0, 'Stomahesive Protective Powder 1 Oz', 800, '', '', 'db9cd6f8c5763d504e144beb87531a49.jpg', 0, '0000-00-00 00:00:00'),
(363, 29, 199, 0, 0, 'Adapt Convex Barrier Rings', 300, '', 'Can be cut, bent, and stacked together to improve the fit of the skin barrier\r\nUsed to adjust skin barrier thickness for deeper convexity\r\nUsed to create a custom fit, including oval-shaped convexity', '8da651318a8639f7f86d03f83f5f9095.jpg', 0, '0000-00-00 00:00:00'),
(364, 29, 199, 0, 0, 'Allkare Protective Barrier Wipes', 500, '', 'AllKare® Protective Barrier Wipes provide a barrier film layer on skin under tapes, skin barriers, adhesive and hydrocolloid dressings to help protect against irritation, excoriation and adhesive build-up.\r\n\r\nAllKare® Protective Barrier Wipes gently remove all adhesives including skin barriers, tapes and hydrocolloid dressings', 'bfd84b7b10c822a58dc92c66a8800fc0.jpg', 0, '0000-00-00 00:00:00'),
(365, 29, 201, 0, 0, 'Assura 1 Piece Non-Convex Stoma Cap Cut to Fit 20-55mm', 450, '', '', 'cdff4f35cf4ca5b34d4c707debe582df.jpg', 0, '0000-00-00 00:00:00'),
(366, 29, 202, 0, 0, 'New Image 2 Piece Drainable Ostomy Pouch with Lock N Roll Closure and Filter', 600, '', 'Easy to Close - Simply roll it three times in the same direction, press from the middle out and feel the seal. Simple for all drainable pouch users including those with vision and dexterity problems.\r\nEasy to Empty - Lightly pinch the sides of the leak-proof outlet for easy control of content flow. Firm reinforcing strips shut as soon as you stop pinching. Simple to control the content flow from the pouch.\r\nEasy to Clean - Simply clean the inside of the pouch tail by wiping it with a damp tissue.', '05e32b9cae1f0b614894f3ff06c78b6b.jpg', 0, '0000-00-00 00:00:00');
INSERT INTO `product` (`prod_id`, `prod_catid`, `prod_subcatid`, `body_cat_id`, `brand_cat_id`, `prod_name`, `prod_price`, `prod_code`, `prod_desc`, `image`, `marchantId`, `date`) VALUES
(367, 29, 202, 0, 0, 'Surefit Natura Two Piece 12" Drainable Pouch with 1 Sided Comfort Panel and Filter', 610, '', 'The SUR-FIT Natura® Two-Piece Ostomy System is ConvaTec’s most extensive two-piece product line. The SUR-FIT Natura® Flange System signals a secure, accurate closure with a series of audible “clicks”. A simple snap-off, snap on design allows users to change the pouch quickly to match activities without removing the skin barrier from the skin. \r\n\r\nThe drainable pouches have soft, fabric-like comfort panels. With streamlined body contour panels, low-profile design, and less headroom, they distribute pouch content more evenly and away from the stoma. In addition, drainable pouches are available with the InvisiClose® tail closure system and an advanced filter. ', 'f644ccbba889bbdfb3b87f056faf2f02.jpg', 0, '0000-00-00 00:00:00'),
(368, 29, 202, 0, 0, 'Surefit Natura Two Piece 8" Closed End Pouch with 2 Sided Comfort Panel - Opaque', 580, '', 'The SUR-FIT Natura® Flange System signals a secure, accurate closure with a series of audible “clicks”. A simple snap-off, snap on design allows users to change the pouch quickly to match activities without removing the skin barrier from the skin. The drainable pouches have soft, fabric-like comfort panels. With streamlined body contour panels, low-profile design, and less headroom, they distribute pouch content more evenly and away from the stoma. In addition, drainable pouches are available with the InvisiClose® tail closure system and an advanced filter.', 'e305fa63eb95ee3d114ad5e3308b51b5.jpg', 0, '0000-00-00 00:00:00'),
(369, 29, 202, 0, 0, 'Surefit Natura Two Piece 5" Mini Closed End Pouch with 1 Sided Comfort Panel - Opaque', 600, '', 'The SUR-FIT Natura® Flange System signals a secure, accurate closure with a series of audible “clicks”. A simple snap-off, snap on design allows users to change the pouch quickly to match activities without removing the skin barrier from the skin. The drainable pouches have soft, fabric-like comfort panels. With streamlined body contour panels, low-profile design, and less headroom, they distribute pouch content more evenly and away from the stoma. In addition, drainable pouches are available with the InvisiClose® tail closure system and an advanced filter.', 'a2e901ebf246fd81ed371a7fd764a9d4.jpg', 0, '0000-00-00 00:00:00'),
(370, 29, 200, 0, 0, 'New Image Cut To Fit Convex Flextend Skin Barriers with Tape', 1200, '', 'Built-in convexity means added security and skin protection for recessed, retracted and flush stomas...cut-to-fit openings.\r\nEliminates pressure on tender post operative abdomens with the exclusive Floating Flange.\r\nProtects the skin over extended wearing time from irritating discharge. Flextend skin barrier is the barrier of choice for urostomies and ileostomies.', '3dc4a7e582877d87129efa038218f8f5.jpg', 0, '0000-00-00 00:00:00'),
(371, 29, 200, 0, 0, 'New Image Pre Sized Convex Flextend Skin Barriers with Tape', 900, '', 'Built-in convexity means added security and skin protection for recessed, retracted and flush stomas...pre-cut openings.\r\nEliminates pressure on tender post operative abdomens with the exclusive Floating Flange.\r\nProtects the skin over extended wearing time from irritating discharge. Flextend skin barrier is the barrier of choice for urostomies and ileostomies.', '8901f0b2004b7a747e69803586335c77.jpg', 0, '0000-00-00 00:00:00'),
(372, 29, 200, 0, 0, 'New Image Flat Flexwear Cut to Fit Skin Barrier with Tape Border', 1100, '', 'Confidence assured with the Floating Flange; provides utmost security with the patented locking system that audibly into place.\r\nProtects skin from corrosive drainage with the standard wear, FlexWear skin barrier.\r\nEliminates pressure on tender post operative abdomens with the exclusive Floating Flange.', '941257a52ab42db982b0d8b343d8f6a1.jpg', 0, '0000-00-00 00:00:00'),
(373, 30, 209, 0, 0, 'Cetirizine Hydrochloride 10mg 300/BX (Compare to Zyrtec)', 990, '', '', '67111c1819708c97188ad6d10a3f548a.jpg', 0, '0000-00-00 00:00:00'),
(374, 30, 210, 0, 0, 'Hurricaine Spray 2 oz Wild Cherry', 1250, '', '', '243a5987db401c5472e476af8b02c4ed.jpg', 0, '0000-00-00 00:00:00'),
(375, 30, 210, 0, 0, 'LMX4 Topical Anesthetic Cream', 1100, '', 'L.M.X.4® is a non-prescription 4% lidocaine topical aesthetic cream that can be used for a variety of needs! Temporarily relieves the pain and itching due to:\r\n\r\n- minor cuts\r\n- minor burns\r\n- minor scrapes\r\n- minor skin irritations\r\n- sunburn\r\n- insect bite', '2832550ab9993fb51923e7af8dc8a9a2.jpg', 0, '0000-00-00 00:00:00'),
(376, 30, 210, 0, 0, 'Hurricaine Spray 2 oz Mint', 580, '', '', 'aa462677ffff68319f5d142b8c742a8a.jpg', 0, '0000-00-00 00:00:00'),
(377, 30, 211, 0, 0, 'Almacone Double Strength 12 oz ( Compares to Mylanta)', 1330, '', '', 'cbcbe7d5aa2524d2a12c9f305b2a2059.jpg', 0, '0000-00-00 00:00:00'),
(378, 30, 211, 0, 0, 'Aluminum Hydroxide Gel 16 oz (Compares to Amphogel)', 690, '', '', 'e2393991cbaa94a9e7fa14c60cdd741d.jpg', 0, '0000-00-00 00:00:00'),
(379, 30, 211, 0, 0, 'Aluminum Hydroxide Gel 16 oz (Compares to Amphogel)', 690, '', '', 'bb6319f6468bdd19c5d71480c2c05e8b.jpg', 0, '0000-00-00 00:00:00'),
(380, 30, 211, 0, 0, 'Aluminum Hydroxide Gel 16 oz (Compares to Amphogel)', 690, '', '', '17c8cc90393ec6bd5a6276417a696f88.jpg', 0, '0000-00-00 00:00:00'),
(381, 30, 213, 0, 0, 'Biofreeze Pain Relieving Gel', 700, '', 'Traditional thinking is that the pain-relieving mechanism of action of menthol - the active ingredient in Biofreeze Pain Reliever - results from a counter-irritant effect. Simply put, a counter-irritant has an effect of overriding noxious pain signals traveling to the brain through a process modulated between pain-transmitting and non-pain transmitting neurons. This process, known as "gate control" or "gating," was first described by Melzak and Wall.', 'f5c44a9f00944c60b8b10194851b8d15.jpg', 0, '0000-00-00 00:00:00'),
(382, 31, 214, 0, 0, 'Tri-Core Fiber Pillow, Standard, 24" x 16", White (SP)', 4555, '', '', '0386143b2577b031979c1d758e657584.jpg', 0, '0000-00-00 00:00:00'),
(383, 31, 214, 0, 0, 'Tri-Core Fiber Pillow, 19" x 12", White', 1200, '', '', '47a53a60951a5f75ab00a4726c67b29e.jpg', 0, '0000-00-00 00:00:00'),
(384, 31, 214, 0, 0, 'Tri-Core Fiber Pillow, Gentle, 24" x 16", White (SP)', 1500, '', '', '019108801827ca822b63be0f46218a34.jpg', 0, '0000-00-00 00:00:00'),
(385, 31, 214, 0, 0, 'Core Basic Foam Filled Cervical Pillow with Cotton/ Poly Cover, Firm, 22" x 14.5"', 1720, '', '', 'ad11f74c09ff3825cce6f86ae0613579.jpg', 0, '0000-00-00 00:00:00'),
(386, 31, 214, 0, 0, 'Max-Relax® Face Cushion, Vinyl Cover, Black', 1350, '', '', 'ed4e8759ddd2ee1907a25483771cd13e.jpg', 0, '0000-00-00 00:00:00'),
(387, 31, 215, 0, 0, 'Staple Removal Kit - Sterile', 2000, '', '', '202c1a9ec0ba1bd47d2da43496566bd8.jpg', 0, '0000-00-00 00:00:00'),
(388, 31, 215, 0, 0, 'Medicut Scalpels - Disposable - Sterile', 1400, '', 'For guaranteed sharpness and exacting performance\r\nSterile\r\nIndividually foil packaged\r\nSheffield stainless steel blade\r\nFinely honed cutting edge\r\nGamma Sterilized', '70232b29f9c077b6fa9b2fd71c8c27fe.jpg', 0, '0000-00-00 00:00:00'),
(389, 31, 215, 0, 0, 'Medicut Safety Scalpels - Sterile', 1540, '', 'Satisfies regulatory guidelines for safe handling of sharp edges\r\nBlade retracts with one simple motion and can be permanently locked inside the handle for safe disposal', 'd8ae782c3ebc43432784630b264d3e47.jpg', 0, '0000-00-00 00:00:00'),
(390, 31, 216, 0, 0, 'Mediplast Wart Remover Pads', 1240, '', '', '61a9b62987713c32554e5f6436e9219a.jpg', 0, '0000-00-00 00:00:00'),
(391, 32, 217, 0, 0, 'Mustela 2 in 1 Hair and Body Wash 6.76 oz (200ML)', 1320, '', 'This tear-free cleansing gel for both hair and body is soap-free and specially formulated for the delicate skin of babies and children and can be used from birth on.', '607a12d0593c9d724dc1277ba3a0a604.jpg', 0, '0000-00-00 00:00:00'),
(392, 32, 217, 0, 0, 'Mustela Fragrance Free Dermo Soothing Wipes 70ct', 1320, '', '', '80fb3572601220d6046d63c8ab0104f6.jpg', 0, '0000-00-00 00:00:00'),
(393, 32, 217, 0, 0, 'Mustela Fragrance Free Dermo Soothing Wipes 70ct', 980, '', 'This tear-free, ultra-gentle shampoo is specially formulated for newborns to cleanse hair and scalp and prevent and treat cradle cap', 'f08c22f71bf0f3e1ef4834cff4578846.jpg', 0, '0000-00-00 00:00:00'),
(394, 32, 217, 0, 0, 'Mustela Hydra Stick with Cold Cream .35 oz (10G)', 850, '', 'Travel-friendly moisturizing stick protects lips and cheeks with Cold Cream Nutri-protective complex.', 'ab499176719e040e3cee045cb9993f6d.jpg', 0, '0000-00-00 00:00:00'),
(395, 32, 217, 0, 0, 'Mustela Stelatopia Moisturizing Cream 6.76 oz (200ML)', 1020, '', '', '11967a67d4de7cd5a239a3dc7da28378.jpg', 0, '0000-00-00 00:00:00'),
(396, 32, 217, 0, 0, 'Mustela Cleansing Milk 25.35 oz (750 ML)', 1055, '', '', '583e67b3438b0c0e4c812bd1a1008fc5.jpg', 0, '0000-00-00 00:00:00'),
(397, 32, 217, 0, 0, 'Mustela Physiobebe No Rinse Cleanser 10 Oz (300 ML)', 990, '', '', '214e601e8bec787630299fadbb8c9d8d.jpg', 0, '0000-00-00 00:00:00'),
(398, 32, 218, 0, 0, 'Sitz Bath', 550, '', '', 'b3aa2bb3650fcf7969ea451957f77f3c.jpg', 0, '0000-00-00 00:00:00'),
(399, 32, 218, 0, 0, 'Aveeno Body Wash Positively Nourishing Antioxidant 16 oz', 350, '', '', '5ff3fb6f4fc343035fa4aca453e8c83a.jpg', 0, '0000-00-00 00:00:00'),
(400, 32, 218, 0, 0, 'Soothe & Cool No Rinse Shampoo and Body Wash', 400, '', '', '32cf13fb96452d56ea52db308c6d109a.jpg', 0, '0000-00-00 00:00:00'),
(401, 32, 219, 0, 0, 'Plastic Emesis Basin', 530, '', '', 'e78c63b2fcba771a611de883b37427a6.jpg', 0, '0000-00-00 00:00:00'),
(402, 32, 220, 0, 0, 'MedSpa Roll On Antiperspirant / Deodorant 1.5 Oz', 540, '', '', 'ca9b4170e85cef079d2a7113f17bda1d.jpg', 0, '0000-00-00 00:00:00'),
(403, 32, 221, 0, 0, 'Enema Bag Set', 545, '', '', '887b93668dc9f60a1c2d9bec206ab848.jpg', 0, '0000-00-00 00:00:00'),
(404, 32, 221, 0, 0, 'Enema Bucket Set', 630, '', '', '245b1af6e5fe289885dc58dfe62f5d50.jpg', 0, '0000-00-00 00:00:00'),
(405, 32, 222, 0, 0, 'E-Z Sterile Lubricating Jelly', 1000, '', 'Sterile, greaseless, water-soluble jelly\r\nIdeal for lubrication of gloves and instruments\r\nEasily spreads over rubber, synthetic or metal surfaces\r\nForms a translucent film that adheres well, yet washes away easily\r\nVarious sizes', '7c36d345cac9ba4d8547137e2cbb4215.jpg', 0, '0000-00-00 00:00:00'),
(406, 32, 223, 0, 0, 'Nail Polish Remover Pads', 990, '', 'Individual pads in foil packet\r\nNon-flammable\r\nOne pad is sufficient for ten nails\r\nDoes not contain acetone', '9e13cf6f70b71e748b3ece680904f229.jpg', 0, '0000-00-00 00:00:00'),
(407, 32, 224, 0, 0, 'Marvis Aquatic Mint Toothpaste 3.86 oz Tube', 1020, '', '', 'b1d781fd588b69b69f68f37021a66dec.jpg', 0, '0000-00-00 00:00:00'),
(408, 32, 224, 0, 0, 'Marvis Classic Strong Mint Toothpaste 3.86 oz Tube', 1055, '', '', '9c8868624bad5bbfa190117782057394.jpg', 0, '0000-00-00 00:00:00'),
(409, 32, 225, 0, 0, 'Foot Cream, 4 oz Tube', 440, '', '', '1cd8a9a58d7836fb7bcad4e126a637fe.jpg', 0, '0000-00-00 00:00:00'),
(410, 32, 225, 0, 0, 'Twin Blade Razors', 120, '', '', 'b04b64026a0d203596263466b3687976.jpg', 0, '0000-00-00 00:00:00'),
(411, 32, 225, 0, 0, 'Brushes & Combs', 220, '', 'Dynarex Hairbrushes and Combs are available by the box or by the case, and are ideal for places like hospitals, long term care facilities, rehab centers and nursing homes. Dynarex Hairbrushes offer a durable, white, plastic handle and nylon bristles for a high quality hairbrush. Dynarex Hairbrushes measure 9" in length and are individually wrapped.', 'f27d01561eada6347c7a168e44008b59.jpg', 0, '0000-00-00 00:00:00'),
(412, 32, 225, 0, 0, 'Nail Clippers', 150, '', 'Manufactured from high quality steel', '4021d9004598d069fdbd2ace19ca48e9.jpg', 0, '0000-00-00 00:00:00'),
(413, 32, 225, 0, 0, 'Emery Boards, 4.5" Long', 220, '', '', '512c8f86e56b44d37026e89192b33ca3.jpg', 0, '0000-00-00 00:00:00'),
(414, 32, 225, 0, 0, 'Personal Cleansing Washcloth (Dry)', 145, '', 'Made of highly-absorbent airlaid cellulose material, these personal cleansing washcloths are ideal for gentle patient care as well as general cleanups. They are packed in convenient, easy-to-handle poly bags', '37672d9a8bbae160ba0ba8e684e0090b.jpg', 0, '0000-00-00 00:00:00'),
(415, 32, 225, 0, 0, 'Perineum Wash', 490, '', 'No-rinse cleanser for incontinent care', '4dcecbe1050690696ef28100c90a2915.jpg', 0, '0000-00-00 00:00:00'),
(416, 32, 225, 0, 0, 'Toothbrushes, Adult 30 Tuft', 90, '', '', 'e2d6a40db01cade59059483ef054d9b5.jpg', 0, '0000-00-00 00:00:00'),
(417, 32, 225, 0, 0, 'Toothpaste', 185, '', 'Contains Fluoride\r\nIndividually boxed', 'ba6d903550c83bdb40379ee767969608.jpg', 0, '0000-00-00 00:00:00'),
(418, 32, 228, 0, 0, 'After Shave Lotion, 4 oz, Alcohol Free', 410, '', '', 'd914189eb70bd54aa8804fb9db32afec.jpg', 0, '0000-00-00 00:00:00'),
(419, 32, 230, 0, 0, 'Ultrasoft Disposable Dry Cleaning Cloth Wipes', 900, '', 'Get softness, strength and absorbency all in one with these Ultra-Soft Disposable Dry Cleansing Cloths.\r\nSofter than reusables on fragile or sensitive skin, these cleansing wipes feature a Soft-Spun™ fabric that provides softness and strength similar to natural cloth.', 'e311a43395a597eadc2b8f452f20c1ce.jpg', 0, '0000-00-00 00:00:00'),
(420, 34, 231, 0, 0, 'Major Eye Wash, 120Ml,4 Oz, Compare To Dacriose®', 1650, '', '', '0d9f2b491e541db21dc7bf461003af30.jpg', 0, '0000-00-00 00:00:00'),
(421, 34, 231, 0, 0, 'Eye Occluder 9-1/2', 240, '', '', 'cdd2e7cf6af8a8597911e19760aaa021.jpg', 0, '0000-00-00 00:00:00'),
(422, 34, 231, 0, 0, 'Cotton Tip Applicator Sterile', 320, '', '', '58dddecf18254ed53cc92fa69034ff56.jpg', 0, '0000-00-00 00:00:00'),
(423, 34, 231, 0, 0, '6 inch wood shaft Cotton Tipped Applicator', 550, '', '', '1fdf676241a2f69d084518d0870bb92d.jpg', 0, '0000-00-00 00:00:00'),
(424, 34, 231, 0, 0, 'Cotton Tip Applicators MINI 6', 650, '', '', '51b18112b88e3380eb4d659f468d6825.jpg', 0, '0000-00-00 00:00:00'),
(425, 34, 0, 0, 0, 'Sterile Cotton Tipped Applicators 6 inch', 690, '', '', 'ea64e1233c7e61c9b59386cd3c427735.jpg', 0, '0000-00-00 00:00:00'),
(426, 34, 231, 0, 0, 'Cotton Tip Applicator 6"', 810, '', '', '2902a412ceb305904a713569aaa4a3c6.jpg', 0, '0000-00-00 00:00:00'),
(427, 34, 233, 0, 0, 'Debrox Earwax Removal Aid Kits', 1400, '', 'Debrox® is a safe, gentle, non-irritating way to remove earwax build up in the privacy of your own home. It features active ingredient carbamide peroxide clinically proven to be effective for the removal of earwax. Excessive earwax buildup is a common problem that can lead to ear discomfort, itchy ears or partial loss of hearing. With Debrox® ears can stay clear of built-up earwax, dirt and debris.\r\n\r\nDebrox® is easy to use. It safely removes excessive earwax through the power of microfoam cleansing action. When drops are placed in the ear, oxygen is released, allowing Debrox® to foam on contact as it gently softens and loosens earwax.', '5ac20ddfec813678f283fb821142744f.jpg', 0, '0000-00-00 00:00:00'),
(428, 34, 233, 0, 0, 'Creomulsion Adult Cough Syrup 4 Oz', 1220, '', 'Creomulsion is a strong yet gentle solution for calming the most persistent coughs. Active ingredient in the Creomulsion Formula, dexotro- methorphan, is the strongest cough suppressant available without prescription, and halts any urge to hack. Our original formula is as pure as it was in the 1920s, with no added alcohol, sweeteners, or artificial coloring.', '83321a89a7276ea998dd5dd41c649c71.jpg', 0, '0000-00-00 00:00:00'),
(429, 34, 233, 0, 0, 'Boroleum For Nasal Soreness 17g', 1020, '', 'Boroleum is an analgesic ointment designed to moisturize and protect irritated skin often caused by cold or nasal allergy symptoms.', '11d6628ac9c32ca5f4738e16d882eeb5.png', 0, '0000-00-00 00:00:00'),
(430, 35, 76, 0, 0, 'Progressive Incline Boards', 2650, '', '', 'b91b7149e66458faabfff01abae80456.jpg', 0, '0000-00-00 00:00:00'),
(431, 35, 76, 0, 0, 'TheraBand Rocker and Wobble Boards', 2520, '', 'TheraBand® Rocker and Wobble Boards offer an unstable and sensory-stimulating surface designed to facilitate balance and proprioceptive training and automatic postural reactions. The square Rocker Board and round Wobble Board provide the higher end of the TheraBand System of Progressive Balance Training for rehab, post-rehab conditioning, and fitness applications.', '9b090ffd41a78b1b1299b5c360d5dcbe.jpg', 0, '0000-00-00 00:00:00'),
(432, 35, 76, 0, 0, 'Thera-Band Stability Trainers', 1750, '', 'Thera-Band® Stability Trainers are oval-shaped, color-coded pads supplied in three densities to provide a progressive system of balance training for rehab, post-rehab conditioning and fitness applications.\r\nThe Green (Firm, Beginner) and Blue (Soft, Intermediate) pads are molded in closed-cell foam with a ridged surface.', 'fa6f04e6ef1b11c62324a336a4fcad75.jpg', 0, '0000-00-00 00:00:00'),
(433, 35, 77, 0, 0, 'Theraband Band Loops', 1810, '', 'TheraBand™ Band Loops for the first time provide continuous loop elastic bands in the same colors and resistances as authentic TheraBand™ System of Progressive Resistance.\r\n\r\nThey feature 4 resistance levels, including Yellow, Red, Green, and Blue supplied in 3 lay flat lengths of 8", 12" and 18".', '1274069e7c6632b4e31f7c9190d81c2c.jpg', 0, '0000-00-00 00:00:00'),
(434, 35, 78, 0, 0, 'Pression Compression Therapy Units', 25000, '', 'The simple, effective way to relieve swelling caused by lymphedema. The Chattanooga PresSsion lymphedema pump has been redesigned to provide sequential pneumatic compression, helping to reduce limb swelling as part of an effective edema management plan. Sequential compression is a proven treatment to reduce edema, resulting in improved patient comfort, mobility and activity levels.\r\n\r\nIn the clinic and at home, PresSsion effectively treats edema in the arms and legs with gentle, gradient pressure that removes fluid trapped beneath the skin with massage-like therapy.', '8bdf8af0ebc273d4ae48c212b342e273.jpg', 0, '0000-00-00 00:00:00'),
(435, 35, 78, 0, 0, 'Pression Garments for Pression 4 and 8 Chamber', 26000, '', 'Our Pression Garments for Pression 4 and 8 Chamber are made of high quality 200 Denier Nylon Oxford coated with 3 mils of Polyurethane and is Latex Free. This garment can be made to accommodate any length starting at 12” and up.', '0a9ac061eee124ae15b08b1d6f68b4fb.jpg', 0, '0000-00-00 00:00:00'),
(436, 35, 79, 0, 0, 'Tens 7000 Digital Dual Channel Tens Unit', 15660, '', '', '245de2a506d4a9e0515bd3d7b71785d2.jpg', 0, '0000-00-00 00:00:00'),
(437, 35, 79, 0, 0, 'Tens 3000 Dual Channel Analog Tens Unit w/ 3 Modes, Timer and Amplitude Cap', 560, '', '', '11b351fe02f0dc3430a59c27a54008bc.jpg', 0, '0000-00-00 00:00:00'),
(438, 35, 79, 0, 0, 'EMS 7500 Digital EMS 3 mode unit with 100mA output', 1620, '', '', 'e69aed122aedeaf621fe4cbf3f69bd58.jpg', 0, '0000-00-00 00:00:00'),
(439, 35, 79, 0, 0, 'Intelect IFC Interferential', 1320, '', '', 'f562bdb5c8904ef590cf2c4669add8fd.jpg', 0, '0000-00-00 00:00:00'),
(440, 35, 79, 0, 0, 'Intensity CX4 Advanced 4 Channel Electrotherapy and Ultrasound Combo System', 960, '', '', '0f51b7cc84c34a3ef33b45683136505b.jpg', 0, '0000-00-00 00:00:00'),
(441, 35, 79, 0, 0, 'Intelect Legend XT Lead Wires', 1410, '', '', 'e496b516cd882f7cea8fb486c06d85f1.jpg', 0, '0000-00-00 00:00:00'),
(442, 35, 79, 0, 0, 'Chattanooga Intelect Tens Standard', 1010, '', '', 'c6b312bd5ba53ce4bde2e2ed254d5a95.jpg', 0, '0000-00-00 00:00:00'),
(443, 35, 79, 0, 0, 'Chattanooga Intelect Tens Basic', 1220, '', '', '1bb152dfb3481c7670d7703354f11d46.jpg', 0, '0000-00-00 00:00:00'),
(444, 35, 80, 0, 0, 'Digi-Extend Finger Extension Exercisers', 1520, '', 'The Digi-Extend is a unique therapy device that can isolate the extension of all five fingers and each of the individual finger joints. The Digi-Extend focuses on the extensor mechanism of one or all fingers as it targets the area of the hand that needs rehabilitation.\r\n\r\nThe Digi-Extend is a professional step-up from the simple devices for extensor strengthening and conditioning. Four color-coded band resistance levels allow each muscle or joint to work at a comfortable level and build as increased strength is achieved.', '6d0516ea79bdb4a1045f47b14e8e1319.jpg', 0, '0000-00-00 00:00:00'),
(445, 35, 80, 0, 0, 'Exer I - Shoulder Exerciser Vertical', 4650, '', '', '2e3c6d4bd46498365d719798210e6b34.jpg', 0, '0000-00-00 00:00:00'),
(446, 35, 80, 0, 0, 'Exer III - Table-Top Upper Extremeties Exerciser', 4550, '', '', '6f712ec3fa180577040621e520f02498.jpg', 0, '0000-00-00 00:00:00'),
(447, 35, 80, 0, 0, 'Magnetic Pedal Exrciser', 2590, '', '', 'ec797ba9fb9a3e261dacfee4086cd4d2.jpg', 0, '0000-00-00 00:00:00'),
(449, 35, 81, 0, 0, 'Theraband 6 Yard Exercise Band', 620, '', 'Theraband is a complete progressive resistance exercise program. Ideal for upper and lower body conditioning. To use, simply cut the appropriate length, tie the two ends, and exercise. The 6-inch width evenly distributes pressure. Theraband is lightweight and compact enough to take anywhere. The #1 choice for professional resistance bands worldwide!', 'c7435fe8232715abb53119631d70f9e5.jpg', 0, '0000-00-00 00:00:00'),
(450, 35, 81, 0, 0, 'Theraband 50 Yard Exercise Band', 0, '', '690', 'b85b1a39ff55d39a2d521bf65346fe2c.jpg', 0, '0000-00-00 00:00:00'),
(451, 35, 81, 0, 0, 'Thera-Band Exercise Handles 1 Pair', 870, '', 'Resistance levels are obtained by varying the thickness of the tubing\r\n- Color-coded in proprietary thera-band colors for increasing in difficulty\r\n- Lightweight and portable', '5dc7efcc6f774e4c0099df362a833126.jpg', 0, '0000-00-00 00:00:00'),
(452, 35, 82, 0, 0, 'Magister, Provale Cup 5Cc & 10Cc', 980, '', 'Transparent body.\r\nDelivers a fixed delivery amount of 5cc (1tsp) & 10cc (2 tsp).\r\nCan be assembled with one or two handles.\r\nNot for use with thickened liquids.', 'b360854a7681108530ae3763eab531df.jpg', 0, '0000-00-00 00:00:00'),
(453, 35, 82, 0, 0, 'Theraband Flexbars', 1520, '', 'Thera-Band® FlexBar® is a flexible, durable resistance device with a ridged surface for enhanced grip during use. It is used to improve grip strength and upper extremity stabilization by bending, twisting, or oscillation movement. It has been research-proven effective for Tennis Elbow, offering a cost-effective treatment that requires no injection or expensive equipment. \r\n', '6b52942e8746f8d3852f569d5a0cef54.jpg', 0, '0000-00-00 00:00:00'),
(454, 35, 82, 0, 0, 'Theraband Ankle and Wrist Weights', 1610, '', 'Ideal for home exercise programs, the TheraBand® Comfort Fit Ankle & Wrist Weight Sets are available in three color-coded weight sets ranging from red (two 1 lb. weights), to green (two 1.5 lb. weights), to blue (two 2.5 lb. weights).\r\n\r\nThe Comfort Fit Ankle & Wrist Weight Sets allow users to increase weight in strength training and rehabilitation programs without changing technique, which is fundamental to the principles of progressive exercise. In addition to traditional upper and lower body strengthening exercises, the Weight Sets can be used to enhance balance training or stabilization exercises.', '9741994f440e569af952fe90d0f26423.jpg', 0, '0000-00-00 00:00:00'),
(455, 35, 82, 0, 0, 'Theraband Soft Weights', 2110, '', 'TheraBand® Soft Weights are hand-held, ball-shaped isotonic weights - a soft alternative to traditional isotonic dumbbells providing users more versatility for strength training and rehabilitation exercises. They are unique because the size of the ball, with a diameter of 4.5"", does not increase as weight increases, allowing for a consistent and functional grip. This allows for either unilateral or bilateral exercise progressions, either independently, or with a partner.', '5943f3279361678904c1c1a6048ceb33.jpg', 0, '0000-00-00 00:00:00'),
(456, 35, 82, 0, 0, 'Theraband Foot Roller', 690, '', '', '45b23eaa90f22df52339e04ab2ac11b9.jpg', 0, '0000-00-00 00:00:00'),
(457, 35, 82, 0, 0, 'Chattanooga Stabilizer Pressure Biofeedback Unit', 1320, '', '', '2bcefe624d8a10a458626de3571c19cb.jpg', 0, '0000-00-00 00:00:00'),
(458, 35, 83, 0, 0, 'Thera-Band Latex Exercise Tubing Multi-Tube Patient Packs / Heavy Resistance (Blue and Black)', 1940, '', '', 'cb8a5e9b92f0f0542a543391c41f6a93.jpg', 0, '0000-00-00 00:00:00'),
(459, 35, 83, 0, 0, 'Theraband Exercise Tubing - 25 Foot', 1320, '', 'TheraBand™ Exercise Tubing includes natural rubber tubing available in 7 color-coded levels of resistance. Proper use of these systems for resistive exercise provides both positive and negative force on the muscles, improving strength, range of motion and cooperation of muscle groups. Color-coded progressive resistance gives at-a-glance documentation of progress from one level to the next.\r\n\r\nWith TheraBand™ resistive exercise systems, measuring progress and achieving goals for fitness or therapy is easier than ever before. Different resistance levels are determined by thickness of the tubing. We designed the TheraBand™ exercise tubing with color-coded levels increasing in difficulty from tan to silver. This comprehensive system provides positive reinforcement and feedback for gauging results.', '9969848256d658b8b8db75be64e0eab5.jpg', 0, '0000-00-00 00:00:00'),
(460, 35, 83, 0, 0, 'Theraband Exercise Tubing - 100 Foot', 1320, '', 'TheraBand™ Exercise Tubing includes natural rubber tubing available in 7 color-coded levels of resistance. Proper use of these systems for resistive exercise provides both positive and negative force on the muscles, improving strength, range of motion and cooperation of muscle groups. Color-coded progressive resistance gives at-a-glance documentation of progress from one level to the next.\r\n\r\nWith TheraBand™ resistive exercise systems, measuring progress and achieving goals for fitness or therapy is easier than ever before. Different resistance levels are determined by thickness of the tubing. We designed the TheraBand™ exercise tubing with color-coded levels increasing in difficulty from tan to silver. This comprehensive system provides positive reinforcement and feedback for gauging results.', '20b206fe0e1a20e8f687c25846eb0170.jpg', 0, '0000-00-00 00:00:00'),
(461, 35, 85, 0, 0, 'Leukotape K Kinesiology Tapes', 4500, '', 'Leukotape K supports sensory functions. Wave pattern adhesive allows air to circulate and full mobility is preserved. It is stretchable, works ideally with the skin‘s natural elasticity. It has a protective liner for better handling. Leukotape K has a Polyacrylate adhesive for reliable adhesion, while the backing material of cotton is hard wearing and skin friendly.\r\n', 'd20dbc02fdf492295de57bf97adbcdd4.jpg', 0, '0000-00-00 00:00:00'),
(462, 35, 85, 0, 0, 'Theraband Kinesiology Tape 2" x 16.4', 1540, '', 'Drawing on our expertise from TheraBand Elastic Resistance products, and Cramer Athletic Tape, Performance Health created TheraBand Kinesiology Tape featuring best-in-class adhesive and unique, breakthrough XactStretch Indicators that give users a visual application guide to ensure the right stretch is applied every time.\r\n\r\nXactStretch Indicators eliminate misapplication so beginners & experts can do it right every time by simply watching the printed icons as they apply the tape, which indicates the most common tape stretch specified: 25% or 50%.\r\n', '9407bca4b9aa2ac3e84ad3d04be5eccb.jpg', 0, '0000-00-00 00:00:00'),
(463, 35, 88, 0, 0, 'Saunders Lumbar Home Traction Device', 5400, '', '', 'de4f23adb75040a5200c08ae901708b4.jpg', 0, '0000-00-00 00:00:00'),
(464, 35, 88, 0, 0, 'Chattanooga TX Traction Unit', 45000, '', '', '602898cb6181ced863733bb9f03c8728.jpg', 0, '0000-00-00 00:00:00'),
(465, 35, 88, 0, 0, 'Chattanooga TXS-1 Flexion Stool', 8540, '', '', 'bb75ef9d4be7930cbd606c51b59de2f2.jpg', 0, '0000-00-00 00:00:00'),
(466, 35, 88, 0, 0, 'Chattanooga Deluxe Universal Belt System', 4120, '', '', '4d656d4d0964bd8e6f05c9564d555de4.jpg', 0, '0000-00-00 00:00:00'),
(467, 35, 88, 0, 0, 'Chattanooga Saunders Cervical Traction (For Traction Table)', 56100, '', '', 'ee019e63bcb16bde75113f6a6c21fc28.jpg', 0, '0000-00-00 00:00:00'),
(468, 35, 88, 0, 0, 'Saunders Cervical Home Traction Device', 49000, '', '', '7d706135d5ccc9d68c0a433360c3914b.jpg', 0, '0000-00-00 00:00:00'),
(469, 35, 88, 0, 0, 'Overdoor Cervical Traction Device', 890, '', '', '5fb7ca2c1011ed523adc60013ae92728.jpg', 0, '0000-00-00 00:00:00'),
(470, 36, 244, 0, 0, 'Addipak Sterile Saline Solution, 0.9% 3ML 100/BX', 540, '', '', 'ef348caab182915806b38fafb680b944.jpg', 0, '0000-00-00 00:00:00'),
(471, 36, 245, 0, 0, 'Modudose Normal Saline 0.9% 3ML Unit dose Vials', 820, '', '', '3f590d62fb471ed7cf99b79304d63efe.jpg', 0, '0000-00-00 00:00:00'),
(472, 36, 246, 0, 0, 'Manual Resuscitator BVM', 1210, '', '', 'a7d98ba12affb9e1e83f32f5598f2663.jpg', 0, '0000-00-00 00:00:00'),
(473, 36, 247, 0, 0, 'Adult Comfort Soft Plus Cannulas with Tubing', 1210, '', '', '58bce0bc9e6d7288ceb864d93a9694d4.jpg', 0, '0000-00-00 00:00:00'),
(474, 36, 247, 0, 0, 'Nasal Canula Adult High Flow 7Ft', 1120, '', '', 'd77bbc5e67df97d128fc5bb9f15ecc9c.jpg', 0, '0000-00-00 00:00:00'),
(475, 36, 247, 0, 0, 'Oxygen Regulators', 2410, '', '', '1ca14202c2b0cde508f66f8d3083d71c.jpg', 0, '0000-00-00 00:00:00'),
(476, 36, 247, 0, 0, 'Oxygen Cylinder Shoulder Bag', 4120, '', '', '0689b913050cdfadf86e9d50e09557d2.jpg', 0, '0000-00-00 00:00:00'),
(477, 36, 247, 0, 0, 'Suction Tubing', 2340, '', 'Non-conductive, latex-free, durable and flexible tubing with straw connector.\r\nUsed for connecting suction sources to suction catheters and "yankauers".', 'ea262e899b8c042d3ae475de374cd3ef.jpg', 0, '0000-00-00 00:00:00'),
(478, 36, 247, 0, 0, 'C Clamp Screw Compressor Standard, 5/8" X .75" For Tubing Up To .5"', 3210, '', '', 'cd776fc66e4fa01ccff8db9dae1ad642.jpg', 0, '0000-00-00 00:00:00'),
(479, 36, 247, 0, 0, 'Oxygen Tubing Crush Resistant', 2650, '', '', '257adb8bb24ed3aed88c9c583c11c404.jpg', 0, '0000-00-00 00:00:00'),
(480, 37, 248, 0, 0, 'Chamosyn Moisture Barrier w/ Honey Tube 4 oz', 450, '', '', '5aee02534cce520039ed8cc75a7973f9.jpg', 0, '0000-00-00 00:00:00'),
(481, 37, 248, 0, 0, 'Lantiseptic CaldaZinc Ointment', 470, '', 'Helps treat and protect irritated skin with 20% Zinc Oxide\r\nDries moisture from wounds with Calamine.\r\nContains topical analgesic .45% Menthol, to temporarily relieve pain and itching.', 'b9cb0880f062ae8ab3a18899d786ae92.jpg', 0, '0000-00-00 00:00:00'),
(482, 37, 248, 0, 0, 'Remedy Phytoplex Hydraguard', 510, '', 'Remedy Phytoplex Hydraguard Cream is a silicone-rich formulation that creates a breathable, water-resistant film over skin as it moisturizes and nourishes\r\nFormulated with botanical nutrition for sensitive skin\r\n24% silicone blend helps resist moisture loss', 'eef3c4be6e1d82c18d5fe85b6199b618.jpg', 0, '0000-00-00 00:00:00'),
(483, 37, 248, 0, 0, 'Cavilon No Sting Barrier Film', 780, '', '', 'f8c1edfeac794f1cfe8bebc20463f56b.jpg', 0, '0000-00-00 00:00:00'),
(484, 37, 248, 0, 0, 'Cavilon Durable Barrier Cream', 940, '', 'The cream vanishes into the skin and does not transfer off to briefs or diapers. It contains dimethicone for skin protection.\r\n\r\nA concentrated cream that provides durable, long-lasting protection from body fluids while moisturizing the skin. The cream vanishes into the skin, does not transfer off to briefs or diapers, and resists wash off.', '53be09dada5007e163000a8151abc79d.jpg', 0, '0000-00-00 00:00:00'),
(485, 37, 255, 0, 0, 'DynaShield Skin Protectant Barrier Cream', 1520, '', 'Zinc oxide based skin protectant enriched with Vitamins A, D, and E, plus Aloe Vera\r\nEffective in the treatment and prevention of diaper rash\r\nTreats dry skin and rashes\r\nActs as a moisture barrier to protect and promote healthy skin\r\nAlso available with Dimethicone\r\nVanishes upon application', '3a7482162cdce15127d12fd3d397f8fe.jpg', 0, '0000-00-00 00:00:00'),
(486, 37, 255, 0, 0, 'Dynarex Triple Antibiotic Ointment', 910, '', 'Helps prevent infection in minor cuts, scrapes, and burns', '4ec33cc41fc8405ccf139d61d552c3dc.jpg', 0, '0000-00-00 00:00:00'),
(487, 37, 255, 0, 0, 'Bacitracin Zinc Ointment', 1540, '', 'Helps prevent infection in minor cuts, scrapes, and burns', '86736ed08a5bb47048ef9234c3cee2f0.jpg', 0, '0000-00-00 00:00:00'),
(488, 37, 255, 0, 0, 'Kendall Soothing Ointment', 2540, '', 'Kendall™ Soothing Ointment is a zinc oxide and petrolatum based ointment that spreads easily and provides a durable, visible barrier for the skin. It acts as a barrier to moisture and irritants when the natural barrier ability of the skin has been compromised. The formula is hypoallergenic and pH balanced.', '5ea71e46c2fa2bfb811cb394a2458c5e.jpg', 0, '0000-00-00 00:00:00'),
(489, 37, 255, 0, 0, 'Vaseline Pure Ultra White Petroleum Jelly', 1250, '', 'Vaseline™* pure ultra white petroleum jelly is a soothing ointment base for many topical therapuetic agents.', '4bab6ece1327b53a05d82d7c77e8c421.jpg', 0, '0000-00-00 00:00:00'),
(490, 37, 255, 0, 0, 'Purdue Frederick, Betadine Pvp Iodine', 1520, '', 'Solution Betadine PVP Iodine 10% Skin 16oz in Bottle Ea, 12 BT/CS', '6c175a79b596fdd611606a0b79b5b3f9.jpg', 0, '0000-00-00 00:00:00'),
(491, 37, 256, 0, 0, 'IV PREP Antiseptic Wipes', 1420, '', 'Features\r\n\r\nClear formula\r\nSingle use packaging', 'fdfb082ea0744ce85a888a967b0ed6c5.jpg', 0, '0000-00-00 00:00:00'),
(492, 37, 256, 0, 0, 'Skin Prep Protective Wipes', 1120, '', '', 'c13e151ed70b6145884cfe0af8a42e73.jpg', 0, '0000-00-00 00:00:00'),
(493, 37, 256, 0, 0, 'Gallant Safety Disposable Prep Razor', 1540, '', '', '8329df72d24b70008b0b13cc3deffc2b.jpg', 0, '0000-00-00 00:00:00'),
(494, 37, 256, 0, 0, 'TIncture of Benzoin 4.75" Pump Spray Bottle', 210, '', '', '9169fde3a3089c3d3eaaa91642c1d17e.jpg', 0, '0000-00-00 00:00:00'),
(495, 37, 256, 0, 0, 'NO-STING SKIN-PREP Alcohol Free Protective Dressing', 1100, '', 'NO-STING SKIN-PREP is a versatile, alcohol-free, liquid film forming skin protectant which can be used on intact or damaged skin to help prevent irritation caused by:\r\n\r\n\r\nMoisture associated dermatitis from wound exudate or ostomy effluent\r\nIncontinence associated dermatitis\r\nCaustic drainage from tracheostomy tubes, nutrition feeding tubes, (g-tubes, j-tubes)', '5ab87b451eab7ff99f4dfe4462a62675.jpg', 0, '0000-00-00 00:00:00'),
(496, 37, 257, 0, 0, 'Lantiseptic Nourishing Skin Cream', 680, '', 'Long Lasting Moisturizer enriched with Vitamins and Aloe Vera\r\nHelps protect and prevent chafed, chapped and cracked skin with 1.5% Dimethicone.\r\nHelps provide a therapeutic relief for dry, cracking skin.\r\nFortified with Green Tea, Coconut Oil and Vitamins to promote healthier skin.', 'da13d553cec363a733af3567d0dcb02b.jpg', 0, '0000-00-00 00:00:00'),
(497, 37, 259, 0, 0, 'Hibiclens Antibacterial Skin Cleanser', 660, '', '', '17f4877c7e186153e12095f174c839c7.jpg', 0, '0000-00-00 00:00:00'),
(498, 37, 259, 0, 0, 'Lantiseptic No Rinse Cleansing Foam 8 oz', 180, '', '', '872c7a6da7fde918824784f722b4c0f8.jpg', 0, '0000-00-00 00:00:00'),
(499, 37, 259, 0, 0, 'Soothe & Cool No Rinse Perineal Spray', 620, '', 'Soothe & Cool No Rinse Perineal Spray makes patient clean-up easy\r\nSpray and wipe clean\r\nDoes not mask odor and is non-irritating to the skin\r\nPerfect for sensitive skin, unscented and no dyes', 'bd3eafe27baa88ca6a05a3435380ee0f.jpg', 0, '0000-00-00 00:00:00'),
(500, 37, 259, 0, 0, 'Secura Moisturizing Cleanser', 540, '', 'No-rinse, one-step cleansing for perineum and body saves time\r\nContains aloe and glycerin to condition and moisturize skin\r\npH balanced\r\nHelps control odor\r\nPediatrician tested', '5e7a9812c0fa8ed6a7f4147125b3d565.jpg', 0, '0000-00-00 00:00:00'),
(501, 37, 262, 0, 0, 'Lantiseptic Dry Skin Therapy Cream 4 oz Tube', 690, '', '', '880b13eccefc013ec6a2bfdabd809668.jpg', 0, '0000-00-00 00:00:00'),
(502, 37, 263, 0, 0, 'Remedy Skin Repair', 1250, '', '', 'da9f5061d70e224a86e78a4ae2d5f426.jpg', 0, '0000-00-00 00:00:00'),
(503, 37, 263, 0, 0, 'Sensi-Care Moisturizing Body Cream, 3 oz Tube', 1000, '', '', '0460413c48510243573cb832a9c0baa0.jpg', 0, '0000-00-00 00:00:00'),
(504, 37, 263, 0, 0, 'Neutrogena Healthy Defense SPF 30 Light Tint', 1250, '', '', '3fcf798b31dde8cdfb6e178191e3bbb1.jpg', 0, '0000-00-00 00:00:00'),
(505, 37, 263, 0, 0, 'Cavilon Moisturizing Hand Lotion', 1050, '', '', '4826245e411cc92d064f1e5838b09bf0.jpg', 0, '0000-00-00 00:00:00'),
(506, 37, 263, 0, 0, 'Aveeno Creamy Moisturizing Oil Pump 12 OZ', 1090, '', '', 'ce992a4925e86269ca7be2115f929479.jpg', 0, '0000-00-00 00:00:00'),
(507, 37, 263, 0, 0, 'Aveeno Baby Soothing Relief Moisture Cream Fragrance Free 8 oz', 1360, '', '', '4917fee8c976f0c4df645724ec87ad35.jpg', 0, '0000-00-00 00:00:00'),
(508, 37, 263, 0, 0, 'Sween Moisturizing Lotion', 1190, '', 'Natural vitamin E\r\nNon-occlusive formula\r\nCHG compatible\r\nSafe for neonatal use', '3637b3607b0d878fe764022cb368404a.jpg', 0, '0000-00-00 00:00:00'),
(509, 38, 264, 0, 0, '3M Attest Rapid Readout Biological Indicators', 1580, '', '3M Attest Rapid Readout Biological Indicator for Steam 250°F/ 121°C and 270°F/132°C gravity displacement sterilization cycles', '7f7a2ff261604f17c82e78b5f26397b8.jpg', 0, '0000-00-00 00:00:00'),
(510, 39, 275, 0, 0, 'Peridin-C Vitamin C tablets', 1850, '', '', '10a5473b5b86d582b0647aa14fd6ced7.jpeg', 0, '0000-00-00 00:00:00'),
(511, 39, 275, 0, 0, 'Alive! Max Potency', 1350, '', '', 'f2966bb761b6bff14a7729c07be838d1.jpg', 0, '0000-00-00 00:00:00'),
(512, 39, 275, 0, 0, 'Metagenics GI Sustain Rice Protein for Gut Function 29.63 oz (840g)', 1640, '', '', '8bd719195f245112017cd33ef784d361.jpg', 0, '0000-00-00 00:00:00'),
(513, 48, 308, 0, 0, 'X-Ray Filling Envelopes', 1240, '', 'X-Ray filing envelopes specially packaged to meet our customers requirements.\r\n\r\nOur x-ray filing envelopes are made of extra heavy-duty Kraft paper to withstand the rigors of repeated use. They resist x-ray curling. Pre-printed blank spaces for filing.', '14716eb4916fea504f3d051cd78fd418.jpg', 0, '0000-00-00 00:00:00'),
(514, 48, 308, 0, 0, 'X-Ray Mailing Envelopes 15', 1290, '', '', '3918ed8be820c80db14ca67de716a96f.jpg', 0, '0000-00-00 00:00:00'),
(515, 46, 307, 0, 0, 'Transport Chair with Wheels', 7500, '', 'Powder coated aluminum frame is lightweight and durable.\r\nBack folds down for easy storage and transport.\r\nSeat belt for safety.\r\nComfortable nylon upholstery; padded arms.\r\nPocket on back.\r\nArm style: full length permanent; Leg style: detachable footrest.\r\nSeat size: 19" x 16" (48 cm x 41 cm)\r\n300-lb. (136 kg) weight capacity.', 'cec0f629e64fd1a02b979ed0cfde90c1.jpg', 0, '0000-00-00 00:00:00'),
(516, 42, 292, 0, 0, 'S115H Suture 1 Gut Chromic 54" BRN Virtual Mono Tie', 10090, '', '', 'de303b4083cd94905351f9ae7b944ea2.jpg', 0, '0000-00-00 00:00:00'),
(517, 42, 292, 0, 0, '539G Suture 4-0 Stainless Steel 14" Mono V-26', 1320, '', '', 'f391fec253e5cd9051c564abf05acea8.jpg', 0, '0000-00-00 00:00:00'),
(518, 42, 292, 0, 0, 'Suture 5-0 Polysyn 27" Undyed Braided C6', 3520, '', '', '08bf070be4b54850afbcdd8d296a3d78.jpg', 0, '0000-00-00 00:00:00'),
(519, 42, 292, 0, 0, 'Suture 3-0 Polysyn 27" Undyed Braided C6 12/BX', 2650, '', '', '96e838a215609135b0346018754073b6.jpg', 0, '0000-00-00 00:00:00'),
(520, 42, 292, 0, 0, '525B Suture 3-0 Chromic Gut 18" C6', 1920, '', '', 'a5698dac4054c37f97b7eb2b2aa969f7.jpg', 0, '0000-00-00 00:00:00'),
(521, 42, 292, 0, 0, 'J258H Suture 3-0 Coated Vicryl 27" Undyed Braided CT-1', 1720, '', '', 'b4b7f49b7ad8538eac531f189cbeb877.jpg', 0, '0000-00-00 00:00:00'),
(522, 42, 292, 0, 0, '422B Suture 4-0 Coated Vicryl Undyed Braided C-6 FS-2', 1260, '', '', '77c6d2eba63530cbd66fcca8bb2c65c1.jpg', 0, '0000-00-00 00:00:00'),
(523, 42, 292, 0, 0, '1644G Suture 4-0 Gut Plain 18" YLW Tan Virtual Mono P-3', 1580, '', '', '92786f8b1ba8b157e0d555d25e41b711.jpg', 0, '0000-00-00 00:00:00'),
(524, 42, 292, 0, 0, 'S111H Suture 4-0 Chromic Gut 54" BRN Virtual Mono Tie', 1160, '', '', '7762a8039a96014c9e54ef750893ce04.jpg', 0, '0000-00-00 00:00:00'),
(525, 42, 292, 0, 0, '796G Suture 6-0 Chromic gut 18" BRN Virtual Mono G-1', 1090, '', '', 'a0d777b5d73c46379876eed47837216f.jpg', 0, '0000-00-00 00:00:00'),
(526, 42, 292, 0, 0, 'Z303H Suture 5-0 PDS II 27" Violet Mono RB-1, Expired', 999, '', '', '6f104f05890e2d1240cf77abffc89cf9.jpg', 0, '0000-00-00 00:00:00'),
(527, 42, 292, 0, 0, 'Z303H Suture 5-0 PDS II 27" Violet Mono RB-1, Expired', 999, '', '', '5af04f8b1fbd43e4709c929b39ee21d6.jpg', 0, '0000-00-00 00:00:00'),
(528, 41, 288, 0, 0, 'Sterile Disposable Drape 18" x 26"', 960, '', '', '0aa49a1bcdd6cb552dde53368db8a4b9.jpg', 0, '0000-00-00 00:00:00'),
(529, 41, 288, 0, 0, 'Sterile Fenestrated Disposable Drape 18" x 26"', 980, '', '', '4ddbbb07030a72ca889632f023941aa1.jpg', 0, '0000-00-00 00:00:00'),
(530, 41, 288, 0, 0, '3M Steri-Drape Opthalmic Surgical Drapes', 1230, '', '', '866a7d1942e46ad59e49bb441385103e.jpg', 0, '0000-00-00 00:00:00'),
(531, 41, 288, 0, 0, '3M Steri-Drape Sterile Towel Drapes', 1560, '', 'Drapes made from clear polyethylene plastic with a matte finish, and include an adhesive strip for secure adhesion.', '06b5a1aec7e4b69f6072df487e6622d8.jpg', 0, '0000-00-00 00:00:00'),
(532, 41, 289, 0, 0, 'Surgical Instrument Cleaner, 8Oz Bottle', 1950, '', '', '3fd33b9593eb4eb1995f94e1db06a8f4.jpg', 0, '0000-00-00 00:00:00'),
(533, 41, 289, 0, 0, 'Medicut Surgical Blades Sterile Stainless Steel', 1560, '', 'Maximum safety, efficiency, and economy\r\nSterile\r\nIndividual peel open pouch\r\nSheffield stainless steel blade\r\nPlastic blade guard can be replaced after use', '6764bb8a80c014a26c48131038982597.jpg', 0, '0000-00-00 00:00:00'),
(534, 41, 289, 0, 0, 'Pump, Battery, Pole Clamp & Power Cord, 1 Year Warranty', 1690, '', '', '93b5972fce0d811f0bb7abfe34f0690c.jpg', 0, '0000-00-00 00:00:00'),
(535, 41, 289, 0, 0, 'Kangaroo Joey Enteral Feeding Pump Sets', 1360, '', 'Kangaroo™ Joey Pump Sets are DEHP-Free and incorporate Anti-Free Flow safety feature.', 'd8ab75596f73395b3d2badc07334ed5d.jpg', 0, '0000-00-00 00:00:00'),
(536, 41, 289, 0, 0, 'Kangaroo 924 Enteral Feeding Pump Sets', 1980, '', 'Kangaroo™ 924 Pump Sets are DEHP-Free and compatible with the 924 Pump.', '4f0f9b41314d53c9c2c34815306b708d.jpg', 0, '0000-00-00 00:00:00'),
(537, 41, 289, 0, 0, 'KENGUARD Universal Catheterization Tray', 2140, '', 'KENGUARD™ Universal Catheterization Tray: All Trays Contain (unless otherwise indicated): Lidded Tray, Underpad, Nitrile Exam Gloves, Fenestrated Drape, Prefilled Syringe, Lubricating Jelly, Graduated Basin.', 'd562474b05aa9a190cc71953088b90ed.jpg', 0, '0000-00-00 00:00:00'),
(538, 41, 290, 0, 0, 'Antiseptic Skin Cleanser, 8 oz Bottle', 2320, '', '', 'e4a71211dedcbbf3c55299ed2f70fe2b.jpg', 0, '0000-00-00 00:00:00'),
(539, 41, 290, 0, 0, 'Versajet Hydrosurgery System', 3020, '', 'The VERSAJET II Hydrosurgery System uses a razor-thin saline jet to optimize surgical debridement. The system enables a surgeon to precisely select, excise and evacuate nonviable tissue, bacteria and contaminants from wounds, burns and soft tissue injuries using a tissue-preserving technique. This reduces time to closure and may reduce overall treatment costs.\r\n\r\nOptimize surgical debridement with the VERSAJET II Hydrosurgery System.', '290b6fdb41ba82dbc077a18e010fb052.jpg', 0, '0000-00-00 00:00:00'),
(540, 41, 290, 0, 0, 'A-V Impulse foot compression system tubing set', 1590, '', 'A-V Impulse foot compression system tubing set', '00ade08758ca5a6f16abd0e390242fdc.jpg', 0, '0000-00-00 00:00:00'),
(541, 41, 290, 0, 0, 'Argyle Mucus Trap with Vacuum Breaker', 1840, '', 'Covidien features the broadest line of Mucus traps on the market. Mucus traps are available for oral, mechanical and the choice of oral and/or mechanical suctioning.', '581856ae5f61541e1ad0615e4e84a90c.jpg', 0, '0000-00-00 00:00:00'),
(542, 41, 290, 0, 0, 'Argyle Suction Catheter with Mucus Trap', 2120, '', 'Covidien features the broadest line of Suction Catheters with Mucus Traps on the market. Mucus traps are available for oral, mechanical and the choice of oral and/or mechanical suctioning.', 'db2fb605cc025d3a02b922befbb6ce0a.jpg', 0, '0000-00-00 00:00:00'),
(543, 41, 290, 0, 0, 'A-V Impulse ImPad rigid sole foot cover- large', 1970, '', 'A-V Impulse™ ImPad™ rigid sole foot covers feature a unique rigid sole, helping to contain and direct the impulse to the bottom of the foot. This helps closely mimic the hemodynamic process that occurs when ambulating.', '38b3189201cc3ed836bf43d723f87c49.jpg', 0, '0000-00-00 00:00:00'),
(544, 41, 290, 0, 0, 'Argyle Umbilical Vessel Catheter Insertion Tray, No Catheter', 2250, '', 'Designed with both the patient and the clinician in mind, ARGYLE™ Umbilical Vessel Catheters (UVC) sets the standard of care for premature infants. The ARGYLE™ product portfolio includes single, dual and triple lumen UVCs and a full line of NEO-SERT™ insertion trays. All products are latex and DEHP free. UVCs benefit the patient by reducing the need for painful venipunctures and provides double or triple the access of a single lumen catheter. This allows simultaneous multiple therapies from one device. The NEO-SERT™ insertion trays provide everything needed for the procedure in one preassembled disposable tray. The UMB-E™ catheter anchor provides a convenient, safe and secure way to anchor umbilical catheters.', 'e832139c2399a60b388319d05eb9bb12.jpg', 0, '0000-00-00 00:00:00'),
(545, 41, 290, 0, 0, 'Safety Thoracentesis System, 8FR Catheter, 2.7mm O.D., 3½"L', 2610, '', '', 'd30f7fbf9b8e3adbc0a2d9e294765211.jpg', 0, '0000-00-00 00:00:00'),
(546, 41, 290, 0, 0, 'Argyle Polyurethane Umbilical Vessel Catheter', 2320, '', 'Designed with both the patient and the clinician in mind, ARGYLE™ Umbilical Vessel Catheters (UVC) sets the standard of care for premature infants. The ARGYLE™ product portfolio includes single, dual and triple lumen UVCs and a full line of NEO-SERT™ insertion trays. All products are latex and DEHP free. UVCs benefit the patient by reducing the need for painful venipunctures and provides double or triple the access of a single lumen catheter. This allows simultaneous multiple therapies from one device. The NEO-SERT™ insertion trays provide everything needed for the procedure in one preassembled disposable tray. The UMB-E™ catheter anchor provides a convenient, safe and secure way to anchor umbilical catheters.', '0f523c3b97d3176337f4eace802afabd.jpg', 0, '0000-00-00 00:00:00'),
(547, 41, 290, 0, 0, 'Argyle Flexible Yankauers and Sets', 1540, '', 'Argyle™ Flexible Surgical Suction Instruments are made of a malleable vinyl, are nonbreakable, and have a smooth inner lumen. An optional vent for improved suction control is available. These single-use instruments come in fine, regular, and high capacity versions, with or without a sump tip. Sets include your choice of conductive or non-conductive tubing in various sizes.', '5b5b5aa9727f0b5a07bc40f731b4b1ab.jpg', 0, '0000-00-00 00:00:00'),
(548, 41, 290, 0, 0, 'Argyle Penrose Tubing, Radiopaque, 16 mm x 30 cm', 1490, '', 'The ARGYLE™ Penrose Tubing is latex in construction, radiopaque and sterile.', '180ac228694a2defa4f9d07f04981145.jpg', 0, '0000-00-00 00:00:00'),
(549, 41, 290, 0, 0, 'Argyle Rigid Yankauers and Sets', 2410, '', 'Argyle™ Rigid Surgical Suction Instruments and sets are transparent with smooth tips and eyes. They are shatter-resistant, one piece construction and have an optional vent for better suction control.', 'eae483d8b5abf8f9f375e3e5a0110546.jpg', 0, '0000-00-00 00:00:00'),
(550, 41, 291, 0, 0, 'Devon Surgical Skin Marker 160-R, Regular Tip, Flexible Ruler', 160, '', '', '273ff9b608301560d5733073ec7a4326.jpg', 0, '0000-00-00 00:00:00'),
(551, 41, 291, 0, 0, 'Devon Surgical Skin Marker 160-R, Regular Tip, Flexible Rule', 460, '', '', '42deb07ffc557c6c9552f6aa92de8def.jpg', 0, '0000-00-00 00:00:00'),
(552, 41, 291, 0, 0, 'Devon Surgical Skin Marker', 390, '', '', 'c8fffc281e46f9f6513b91f55acf4a74.jpg', 0, '0000-00-00 00:00:00'),
(553, 40, 91, 0, 0, 'Premium 3 Panel 9" Elastic Abdominal Binder', 1080, '', 'Constructed with panel elastic and soft cotton type lining for patient comfort. Universal style, flannel lined panel elastic support with contact closure. Multi-panel design helps prevent panel rolling. Ideal for providing compression and support for post-natal or post-abdominal surgery, abdominal strains and weakness. Available in each or in a pack of six (6). 9" height.', '82b33c9fa5275b75acd915a49dde3e0e.jpg', 0, '0000-00-00 00:00:00'),
(554, 40, 91, 0, 0, 'Kendall Transducer Belts', 980, '', 'Covidien offers a complete line of Kendall™ belts that prove their value every day in labor and delivery rooms. Choose from a full range of high quality materials, sizes and convenient packaging options. Products are available with button hole or tab attachments. We offer both latex and latex-free versions.', 'c83c823838d5419f5c216591cbb1076c.jpg', 0, '0000-00-00 00:00:00'),
(555, 40, 91, 0, 0, 'Kendall Abdominal Transducer Binders', 690, '', '', '44c17a9b66051a56de6392aa0ceb2c79.jpg', 0, '0000-00-00 00:00:00'),
(556, 40, 92, 0, 0, 'Aircast Walker Sock', 320, '', '', 'ea8ef617cbb9d0b6aefe365346307662.jpg', 0, '0000-00-00 00:00:00'),
(557, 40, 93, 0, 0, 'Medi-Pak Performance Slipper Socks Royal Blue Adult Shoe 12 And Over Bariatric, Extra Wide', 210, '', '', '9b44397f97cc6ebcda74abf1132a61bc.jpg', 0, '0000-00-00 00:00:00'),
(558, 40, 93, 0, 0, 'Medi-Pak Performance Terries Slipper Socks, Adult, Gray, XXL', 160, '', '', 'df2c176de34c5c36410aa0250e3d5270.jpg', 0, '0000-00-00 00:00:00'),
(559, 40, 93, 0, 0, 'Stretch Strap Rangemaster', 190, '', '', '8ec8272a5cdc7b79d219a7f080db5ac0.jpg', 0, '0000-00-00 00:00:00'),
(560, 40, 93, 0, 0, 'Jobst Sensifoot Diabetic Sock 8-15 mmHg Crew Mild Compression Socks', 230, '', '', '392f2a1a3999ef8891b7d1a022eeaea0.jpg', 0, '0000-00-00 00:00:00'),
(561, 40, 93, 0, 0, 'Healwell Cub Plantar Fasciitis Night Splint Black Right Small', 4000, '', '', '16ad4666d3500a9550cbdfbdbdd2ad30.jpg', 0, '0000-00-00 00:00:00');
INSERT INTO `product` (`prod_id`, `prod_catid`, `prod_subcatid`, `body_cat_id`, `brand_cat_id`, `prod_name`, `prod_price`, `prod_code`, `prod_desc`, `image`, `marchantId`, `date`) VALUES
(562, 40, 94, 14, 31, 'DonJoy Stabalizing Ankle Pro Brace', 540, '', 'A recent study of over 2,000 high school football players proves that wearing the Stabilizing Ankle Brace reduces the incidence of acute ankle injury by 61%. Wearing the brace did not increase the incidence or severity of acute knee injuries or other lower extremity injuries. Bracing also offers a low-cost alternative to athletic tape. (Source: McGuine T.A., Brooks A. AM J Sports Med.2011 "The Effect of Lace-up Ankle Braces on Injury Rates in High School Football Players").', '06b2089a44a88f5f6f90eb9beb0ac7af.jpg', 0, '0000-00-00 00:00:00'),
(563, 40, 94, 14, 0, 'Aircast Air Stirrup Universal Ankle Brace', 690, '', '', 'c40ec6b37f12df766a78416ea7335709.jpg', 0, '0000-00-00 00:00:00'),
(564, 40, 94, 14, 0, 'Aircast Air Stirrup Ankle Brace', 1020, '', '', 'c5970e2703f6a97335ea2537f1959621.jpg', 0, '0000-00-00 00:00:00'),
(565, 40, 94, 14, 0, 'Airsport Ankle Support Brace', 990, '', 'Incorporates clinically-proven semi-rigid shell and aircells to provide comfort and support. Additional compression and stabilization is provided by anterior talofibular cross strap and integral forefoot and shin wraps. This unique "step-in" design (toes first inserted into the back of the brace) and automatic heel adjustment make the AirSport™ extremely fast and easy to put on.', '243c0779e929afaebd030e137ff008c1.jpg', 0, '0000-00-00 00:00:00'),
(566, 40, 94, 14, 0, 'Aircast A60 Ankle Support Brace Black Small Left', 1250, '', '', '50c7cfb9a82d6725b6f3ac96b0141f13.jpg', 0, '0000-00-00 00:00:00'),
(567, 40, 94, 14, 0, 'Stabilized Ankle Support', 2000, '', 'Low profile design constructed with non-stretch nylon for comfort, performance and durability. Lace-up design and figure 8 strapping locks the calcaneus into place & controls inversion/eversion. A full circumferential elastic strap secures all strapping to provide superior tibia/fibula compression and stability. Removable medial/lateral stays for enhanced proprioception and stability. Fits easily into athletic or street shoe. Universal to fit right and left', 'dabf0f09fc479878e05e77a9ac5ca4e6.jpg', 0, '0000-00-00 00:00:00'),
(568, 40, 95, 6, 0, 'Summit 637 Lumbar Back Brace Black One Size fits All Adjustable', 1620, '', '', '5a9680b50d823cbbeb7192c37391b363.jpg', 0, '0000-00-00 00:00:00'),
(569, 40, 95, 5, 0, 'Evergreen L0627 Back Brace XX-Small 15" - 21" Black', 2100, '', '', '8568790bc209da7dc22fbebb981de681.jpg', 0, '0000-00-00 00:00:00'),
(570, 40, 95, 5, 0, 'Evergreen L0631 Back Brace XX-Small (15" - 21") Black', 1540, '', '', '72ffbc6ea51c57ce743c914c802fa0a7.jpg', 0, '0000-00-00 00:00:00'),
(571, 40, 95, 5, 0, 'Horizon 631 LSO Back Brace One Size Fits All', 1650, '', '', 'cb93bf1a834502a7599a9393c09642d8.jpg', 0, '0000-00-00 00:00:00'),
(572, 40, 95, 5, 0, 'Horizon 456 TLSO', 1400, '', '', 'df55ab7d055b4301c3d571bea13673bb.jpg', 0, '0000-00-00 00:00:00'),
(573, 40, 95, 5, 0, 'Horizon 627 Lumbar Brace', 1000, '', '', '96b0006d080d9fdcaa2a9276f8e31646.jpg', 0, '0000-00-00 00:00:00'),
(574, 40, 96, 5, 0, 'Saunders SPort All Back Support with Shorts', 1200, '', '', '4c362fa15190a703ea2ea3a46af2343d.jpg', 0, '0000-00-00 00:00:00'),
(575, 40, 96, 0, 0, 'Posture Sport Support - Small', 1000, '', '', 'd7ecd24f7de974ead1f4451bf17bd4da.jpg', 0, '0000-00-00 00:00:00'),
(576, 40, 96, 5, 0, 'Port Back Support Black - Small', 1500, '', '', 'd76aa094ccb077b1618574e316c8ca68.jpg', 0, '0000-00-00 00:00:00'),
(577, 40, 96, 5, 0, 'Soft Form Posture Control Back Support Beige - Small', 1100, '', '', 'b110473df636c19a500c997342959b3f.jpg', 0, '0000-00-00 00:00:00'),
(578, 40, 97, 6, 0, 'Pro-Lite Deluxe Clavicle Support Blue - X-Small', 1230, '', '', '8bca39e92c8fdf59be84ea3a445d27cb.jpg', 0, '0000-00-00 00:00:00'),
(579, 40, 98, 7, 0, 'Aircast Pneumatic Armband for Tennis Elbow', 990, '', 'A single, pre-inflated aircell, concentrates compression on the extensor muscle, not around the arm -- providing more support, less constriction. Available in beige and black. Universall fit.', 'fc526e9b03b01a516d2d53bb29cfdeed.png', 0, '0000-00-00 00:00:00'),
(580, 40, 99, 10, 0, 'Airlift PTTD Brace Small Left', 600, '', 'An off-the-shelf brace, the AirLift PTTD Brace is designed for the treatment of posterior tibial tendon dysfunction (PTTD), or for early signs and symptoms of the adult acquired flat foot. Depending on the severity of the condition, it can be prescribed for use as part of a conservative treatment to stabilize the condition and help prevent its degeneration, or post-surgically and during rehabilitation. Foot support and ankle stabilization are provided by the AirLift integrated aircell and semi-rigid shells. ', 'afff6da78bf222d504cf3c09cfb681cf.jpg', 0, '0000-00-00 00:00:00'),
(581, 40, 99, 10, 0, 'Squared Toe Post-Op Shoe X-Small', 230, '', 'The Squared Toe Post-Op Shoe allows dressing to be kept clean and toes dry, providing more protection following post-operative procedures and forefoot trauma.\r\n\r\nThe square toe design acts as a bumper and provides additional room and comfort for the patient. The shoe also features high ankle strapping that maintains foot in proper location and a rigid rocker sole for ease of ambulation and pressure reduction.', 'ddc654c96578272ed4b2d089b8d005ee.jpg', 0, '0000-00-00 00:00:00'),
(582, 40, 99, 10, 0, 'Aircast Airheel Foot Support', 300, '', 'The AirHeel is specifically designed to treat plantar fasciitis, Achilles tendonitis, and heel pain. Using two interconnected aircells located under the foot arch and in back of the heel, the AirHeel applies pulsating compression with every step to help reduce swelling and discomfort, and enhance circulation', '084a3a74a8295bf6de340a20057a808a.jpg', 0, '0000-00-00 00:00:00'),
(583, 40, 99, 10, 0, 'Aircast Airheel DNS Care Kit', 590, '', '', '8c4d762b6ff56de3a0b61ea6fa3d9036.jpg', 0, '0000-00-00 00:00:00'),
(584, 40, 99, 10, 0, 'Powerstep Pinnacle Full Length Insoles', 950, '', 'Powerstep Pinnacle features a design that rivals that of custom-made prescription orthotics. Made of a polypropylene shell encased in a unique double-layer cushioning, it has a well-contoured stabilizing heel cradle and built in platforms under the heel and leading edge. The special anti-bacterial fabric cover prevents slippage, and reduces friction, heat, and perspiration.', 'cb17017ec1a6d750418c77b285df7b2b.jpg', 0, '0000-00-00 00:00:00'),
(585, 40, 99, 10, 0, 'Cambion Posted Heel Cushion', 1020, '', '', '962b4df763b8872f6739e37ce18efdc9.jpg', 0, '0000-00-00 00:00:00'),
(586, 40, 99, 10, 0, 'Powerstep Original Full Length Orthopedic Foot Insoles', 1030, '', '', 'e123a18c6646a73a42fc526e32e46e80.jpg', 0, '0000-00-00 00:00:00'),
(587, 40, 101, 12, 0, 'Sully Hip S''port - X-Small', 3500, '', 'Sully Hip S''port - X-Small', '976a19da7f1133116e0419aae3a95dae.jpg', 0, '0000-00-00 00:00:00'),
(588, 40, 102, 13, 0, 'Dura Soft Knee Wrap w/ 2 Ice Inserts', 2000, '', '', 'b0dda6fd533bd155debaabe50083c1b1.jpg', 0, '0000-00-00 00:00:00'),
(589, 40, 102, 13, 0, 'Reaction Knee Brace', 1400, '', 'The REACTION WEB is a responsive, webbed approach to knee pain that gives you a distinct alternative to the basic knee sleeve. Developed by world renown orthopedic surgeon, Dr. William Nordt, the REACTION WEB can help decrease knee pain and increase function to get you back to your active lifestyle. The elastomeric web is an innovative solution that absorbs shock, disperses energy and shifts pain away from your knee. This comfortable, easy to apply solution takes the shape of your knee, with an improved design engineered for better fit and comfort. What’s your Reaction?', '50935cafe0f1c7dcee370660e3e6d459.jpg', 0, '0000-00-00 00:00:00'),
(590, 40, 102, 13, 0, 'Infrapatellar Band', 500, '', '', '1d11a1b3a52996d4a128407e184eac6c.jpg', 0, '0000-00-00 00:00:00'),
(591, 40, 102, 13, 0, 'Tru Pull Lite Knee Brace', 690, '', 'Latest patented technology from the Tru-Pull family of products. For acute mild to moderate lateral patellar subluxation or dislocation and maltracking.', '00f709bc3f0d30715455eee722d5b128.jpg', 0, '0000-00-00 00:00:00'),
(592, 40, 102, 13, 0, 'OA Reaction Knee Brace', 930, '', 'The OA REACTION WEB™ brace is a unique and effective way to treat osteoarthritis knee pain utilizing patented silicone web technology. The easy to wear open framework is designed for a comfortable, non-slip fit.\r\n\r\nFeatures & Benefits\r\n\r\nSilicone web technology for soft, comfortable support.\r\nBreathable, open framework.\r\nSoft silicone condyle pad.', 'd8ae872f4cbf052696180ce1af5c4bf6.jpg', 0, '0000-00-00 00:00:00'),
(593, 40, 102, 13, 0, 'Knee Support, Closed Pop,', 2500, '', '', '1521ed315f3c86e9e3cbea645be3aeef.jpg', 0, '0000-00-00 00:00:00'),
(594, 40, 102, 13, 0, 'Therall Joint Warming Knee Support Beige - Small', 1400, '', '', '723b83bce87b0bdfb2239aafdf42842a.jpg', 0, '0000-00-00 00:00:00'),
(595, 40, 102, 13, 0, 'Safe-T-Sport Patella Support Black - Small', 1560, '', 'Provides therapeutic warmth and support around the joint to speed healing.\r\nInferior patella pad applies uniform compression on the tendon below the patella to increase stability, improve patella tracking, and alleviate pain and pressure. Adjustable hook and loop straps for easy application and enhanced compression control.\r\nSimple wraparound design for quick, easy application.', '0aa123b0d87810ed53076c74c38275b9.jpg', 0, '0000-00-00 00:00:00'),
(596, 40, 103, 12, 0, 'Cool-Lightweight 7 Lumbar Sacral Support White - Small', 4500, '', 'Designed with a unique ventilated elastic construction making it cool and breathable. Four-inch wide tapered and breathable elastic bands overlap for a contouring shape to most body types. Four flexible plastic stays in the back provide light support. Latex free, with a soft plush finish that can be worn against the skin without risk of sensitivities. Measure around the fullest part of abdomen.', 'afc6b12079ed6f0d13b988fd9112706b.jpg', 0, '0000-00-00 00:00:00'),
(597, 40, 105, 1, 0, 'port Maternity Support Small / Medium', 2690, '', '', '5dd8a308832be61f92cb8921cc79af1e.jpg', 0, '0000-00-00 00:00:00'),
(598, 40, 105, 1, 0, 'Curity Maternity Pads Poly Backing', 2360, '', '', '0b59dba6bb53bdb546d04be1a8080155.jpg', 0, '0000-00-00 00:00:00'),
(599, 40, 106, 15, 0, 'Vista Cervical Collar', 4500, '', 'The Vista® Collar uses innovative height adjustment technology to help treat cervical fractures and post-trauma cases.\r\n\r\n\r\n\r\nFeatures and benefits\r\n\r\nInnovative height adjustment technology\r\nAdjustable front depth using a unique dial adjustment mechanism\r\nThe Vista® collar is really six collars in one, always providing you with the right size\r\nReducing storage and inventory costs', '51e821212a0a566716e82f8e77fa967d.jpg', 0, '0000-00-00 00:00:00'),
(600, 40, 106, 15, 0, 'Vista TX Cervical Collar', 3000, '', 'The Vista TX from Aspen encompasses all of the features and benefits of the already popular Vista collar, now with a thoracic extension. The Vista TX improves patient care while saving time, money and storage space. With it’s innovative height adjustment technology, the Vista TX is really six collars in one. The correct size is always at hand, reducing storage and inventory costs while improving patient care.', 'd57de11dfcc52bd0be6da49d249eaa3a.jpg', 0, '0000-00-00 00:00:00'),
(601, 40, 106, 15, 0, 'Vista Multipost Collar', 3500, '', 'The Vista MultiPost Collar offers an extra level of support for greater motion restriction with the same dial height adjustment as the original Vista Collar, virtually eliminating waste associated with collar sizing errors.\r\n\r\nFEATURES & BENEFITS\r\n\r\nAdjustable back panel for optimal motion restriction and maximum comfort\r\nPivoting Occipital Panels for increased support and comfort\r\nPads rotate and pivot to cradle all head shapes—even the most hard to fit\r\nUnparalleled patient access with extra large tracheal aperture\r\nCotton lined pads designed to reduce contact points', '2c14ba33ed27afb05ba5be7b7c9f341c.jpg', 0, '0000-00-00 00:00:00'),
(602, 40, 106, 15, 0, 'Procare Traditional 172 Cervical Collar Adult Regular 3" H 13"-22" Neck', 2500, '', 'The ProCare® Transitional 172 Cervical Collars were designed to provide optimal support and comfort. The collar provides substantial motion restriction while minimizing painful pressure points that can lead to skin maceration and/or breakdown. Enhanced comfort using soft, breathable foam padding helps promote and encourage patient compliance.', '80e1a70eaa0d64208c1890c6bd373e9e.jpg', 0, '0000-00-00 00:00:00'),
(603, 40, 106, 15, 0, 'Universal Cervical Collar', 2200, '', '', '08c2b43e44e2e121199613e2c9f56cb4.jpg', 0, '0000-00-00 00:00:00'),
(604, 40, 108, 16, 0, 'Serola Gel Arc Elbow Brace', 1200, '', '', '12db6706b4039906694637bd3d2109e6.jpg', 0, '0000-00-00 00:00:00'),
(605, 40, 108, 16, 0, 'Florida Orthopedics Premium Woven Two-Panel Surgical Rib Belt', 900, '', 'Two-panel surgical rib belts help stabilize rib and sternum fractures by limiting expansion through compression.\r\nThey provide comfort and encourage more controlled breathing to help reduce pain.\r\nRib belts also provide support and compression to the muscles and soft tissues of the rib cage weakened by strain, trauma, overuse, inactivity or surgery.\r\nMaterial can be cut without unraveling to accommodate drainage tubes.\r\nHook-compatible exterior allows for a large range of adjustability and easy application.\r\nThe paneled hinge-stitch creates two separate panels for a conforming, tapered fit.', 'cef3d3d436f8e2a4198ea99bfe11b23a.jpg', 0, '0000-00-00 00:00:00'),
(606, 40, 109, 17, 0, 'Sully AC Pad Only', 1900, '', 'Chattanooga Sully AC Pad is the most convenient and innovative acromioclavicular joint protector designed for sully shoulder stabilizer and sully AC. It is a hard-shelled, donut-shaped foam pad.', 'be68dd00473a59c14ebeca4a53204456.jpg', 0, '0000-00-00 00:00:00'),
(607, 40, 109, 17, 0, 'Sully AC with Pad - Small Chest', 2600, '', 'The breathable, hook-sensitive neoprene vest grips the skin to allow precise placement of the donut-shaped foam pad. The hard-shelled foam pad helps protect the AC joint from further injury. Simply apply adhesive backed hook to the foam pad to prevent migration. No restrictive and uncomfortable straps are necessary!', 'fb74106dcd8b2889045479869e4646ba.jpg', 0, '0000-00-00 00:00:00'),
(608, 40, 109, 17, 0, 'Sully Shoulder Stabilizer - Extra Small', 2540, '', '', 'f82ac4ae197b499eac12aed35f7397a3.jpg', 0, '0000-00-00 00:00:00'),
(609, 43, 298, 10, 0, '10G Monofilament For Neuropen', 900, '', '', '0634571921d8b18d752f0c536d1f24d0.jpg', 0, '0000-00-00 00:00:00'),
(610, 43, 301, 0, 0, 'Syringe Tip Caps', 1300, '', 'Sterile, single-use, multiple packaged syringe tip cap; polyolefin plastic formulation; fits luer lock or regular luer syringe tips, covers entire luer skirt of syringe.\r\n\r\nFeatures and Benefits\r\n\r\nFlexible.\r\nIntegral luer plug fits luer tip and luer lock syringes.\r\nCaps positioned upright in tray wells.\r\nAutoclavable.\r\nSterile.', '46432f9f80cf09d8ce962bf59afd52d1.jpg', 0, '0000-00-00 00:00:00'),
(611, 43, 302, 0, 0, 'Monoject Oral Medication Syringes (Non-Sterile)', 1400, '', 'Clean, single-use polypropylene syringes with separate ribbed tip caps; polypropylene barrel and plunger rod, latex-free plunger tip; dual graduations in milliliters and teaspoons; oral feeding luer tip (WILL NOT ACCEPT HYPODERMIC NEEDLE); 1, 3, 6, and 10mL sizes; available clear or amber tint. ', 'c3d7847a9b64123762e773489db63fca.jpg', 0, '0000-00-00 00:00:00'),
(612, 43, 302, 0, 0, '140mL Piston Syringes', 1300, '', 'Bold dual graduations: 140mL in 5mL increments and 5 oz. In 1/4 oz. increments.\r\nAutoclavable.\r\nLatex Free.', 'c934cf3449513fafc6e0ffa673434d1e.jpg', 0, '0000-00-00 00:00:00'),
(613, 43, 302, 0, 0, 'Control Syringes', 600, '', 'Sterile, single-use, individually packaged syringe with control rings permanently bonded to syringe; polypropylene barrel and plunger rod, latex-free plunger tip; packaged in TYVEK™* blister material; luer lock tip, 12 and 20mL sizes.', '9f550142bb23fb29e8fd84ce3846e002.jpg', 0, '0000-00-00 00:00:00'),
(614, 43, 302, 0, 0, 'Monoject Syringe 3mL Luer Lock Tip', 1500, '', 'Sterile, single-use, individually packaged syringe without needle; polypropylene barrel and plunger rod, latex-free plunger tip; 2-piece polypropylene package; several available tip designs; graduated barrel markings.', '1993b77540777d7b20b056dbfd6b329a.jpg', 0, '0000-00-00 00:00:00'),
(615, 43, 302, 0, 0, 'Rigid Pack 3mL Syringes', 1600, '', 'Sterile, single-use, individually packaged syringe without needle; polypropylene barrel and plunger rod, latex-free plunger tip; 2-piece polypropylene package; several available tip designs; graduated barrel markings.', 'e464b3ca1d4f568b1885b63c14ff0451.jpg', 0, '0000-00-00 00:00:00'),
(616, 43, 302, 0, 0, 'Monoject 6 mL Syringes', 2300, '', 'Sterile, single-use, individually packaged syringes.', 'bd6ba4c5e7ae5d147c7c9049d7b0b946.jpg', 0, '0000-00-00 00:00:00'),
(617, 43, 302, 0, 0, 'Monoject 12 mL Syringes', 1700, '', '', '5120c45a8952efdc794b286fe114c259.jpg', 0, '0000-00-00 00:00:00'),
(618, 43, 302, 0, 0, 'Monoject 60 cc Syringes Soft Pack', 1420, '', '', '15aefde5adec48017eb3fc17ddd57f44.jpg', 0, '0000-00-00 00:00:00'),
(619, 43, 303, 0, 0, 'BD Syringes No Needle', 1000, '', 'BD™ syringes feature a clear barrel with bold scale markings, tapered plunger rod for ease of aspiration, positive plunger rod stop, and an added BD Luer-Lok™ thread for increased secure connection.', 'b79526dd8d8bd39954dafac23dc6e2f3.jpg', 0, '0000-00-00 00:00:00'),
(620, 43, 303, 0, 0, 'Monoject Insulin Safety Syringes', 600, '', 'The Monoject™ safety syringe is a proven engineering control and preferred by millions of users each day. Our exclusive design helps keep clinicians safe with maximum clinical flexibility. The Monoject™ safety syringe complies with OSHA Bloodborne Pathogens Standard for Engineering Controls.', '61f40572bcbe08d7cada120e3bc3d461.jpg', 0, '0000-00-00 00:00:00'),
(621, 43, 303, 0, 0, 'Non-Sterile Syringes', 1200, '', 'Bulk packaged without needle; polypropylene barrel and plunger rod, latex-free plunger tip. Available in several different sizes and available with several different tip styles.', 'b5bab4a7fed39e0265193908af561f05.jpg', 0, '0000-00-00 00:00:00'),
(622, 43, 303, 0, 0, 'Monoject Pharmacy Trays', 1100, '', 'Sterile, multi-packaged, single-use syringes enclosed in polystyrene tray with TYVEK™* lid, polypropylene barrel and plunger rod, latex-free plunger tip; graduated barrel markings, luer lock tip; 1, 3, 6, 12, 20, 35, 60mL sizes.', '808266db91b60f65e4aa98d431e33aea.jpg', 0, '0000-00-00 00:00:00'),
(623, 43, 303, 0, 0, 'Monoject 60 mL Syringes', 1250, '', 'Sterile, single-use, individually packaged syringe without needle. Available with several different tip styles for convenience.', 'fa7a88a322d9882bdf5da7eba3f3346b.jpg', 0, '0000-00-00 00:00:00'),
(624, 43, 303, 0, 0, 'Monoject Tuberculin Safety Syringes', 1650, '', 'The Monoject™ safety syringe is proven effective and preferred by millions of users each day. Our exclusive design helps keep clinicians safe with maximum clinical flexibility. Complies with OSHA Bloodborne Pathogens Standard for Engineering Controls.', 'fcc69ae04f888d4874069f402c18d789.jpg', 0, '0000-00-00 00:00:00'),
(625, 43, 303, 0, 0, 'Neurotips', 1620, '', 'This is an accessory for the Neuropen. The complete Neuropen is sold separately.\r\n\r\nFeature :\r\n\r\nBerktree, LLC does not have a valid license to distribute prescription items.\r\nThis item is not for sale. It is displayed for information purposes only.\r\nNeurotip. Packaging: Box of 100', 'ccdfa50a364d64f4c78594f5738b13b2.jpg', 0, '0000-00-00 00:00:00'),
(626, 43, 303, 0, 0, 'Kangaroo Oral Enteral Syringes', 1520, '', 'Clean, single-use polypropylene syringes with separate purple tip caps; polypropylene barrel and plunger rod, latex-free plunger tip; dual graduations in milliliters and teaspoons; oral feeding luer tip (WILL NOT ACCEPT HYPODERMIC NEEDLE); 1, 3, 6, 10 12, 35, and 60 mL sizes; purple tint.', 'c174e328cf4edcbb979a08ff44f4d9ff.jpg', 0, '0000-00-00 00:00:00'),
(627, 43, 303, 0, 0, 'Autoject 2 Injection Aid Needle Kit', 2025, '', 'It is an effective solution for patients that are apprehensive about injecting themselves using syringes. Autoject®2 auto-injector devices conceal the syringe and needle and enable effective drug delivery at a touch of a button. Concealment of the needle also guards against accidental injury.\r\n\r\nThe ergonomic, easy-to-use design allows many people, especially children and older patients, to self-inject and effectively manage their condition. Autoject®2 can be activated by one-handed operation, making it possible to use a wider range of injection sites than by manually injecting with only a syringe. It also features a protective cap and locking mechanism to control activation and a large viewing window for easy scrutiny of the syringe. Audible and visual indicators at the start and end of dose delivery ensure medication is administered correctly.', '8f627afb1c8e398b4f3d95db6797d803.jpg', 0, '0000-00-00 00:00:00'),
(628, 45, 304, 0, 0, 'Urinary Leg Bag Combination Pack', 360, '', 'Quality materials result in soft, comfortable, durable bags pleated sides increases the volume but not the length.\r\nrotects skin from pressure points by placing leg strap connectors and drain valve away from direct contact with leg.\r\nSafely and easily conducts urine through its drain valve; easy to open, closes securely even with limited dexterity.', '5d212d2520c65de0a7234056dee8b3dd.jpg', 0, '0000-00-00 00:00:00'),
(629, 45, 304, 0, 0, 'Leg Bags with Comfort Strap and Twist Valve', 350, '', 'Leg Bags with comfort strap and twist valve drainage port.\r\nThese sturdy bags are latex-free and have a sterile fluid pathway.\r\nAvailable in sizes Medium (19 oz./600 ml) and Large (32oz./1100ml).', '1f0f27d01cf6256c4a1e2aad2ca10a25.jpg', 0, '0000-00-00 00:00:00'),
(630, 45, 304, 0, 0, 'Urinary Leg Bag Medium 18 Oz (540 ML)', 500, '', 'Quality materials result in soft, comfortable, durable bags pleated sides increases the volume but not the length.\r\nrotects skin from pressure points by placing leg strap connectors and drain valve away from direct contact with leg.\r\nSafely and easily conducts urine through its drain valve; easy to open, closes securely even with limited dexterity.', 'd225a0ff24affbe5d4d022e67bcbe0b2.jpg', 0, '0000-00-00 00:00:00'),
(631, 45, 305, 0, 0, 'Flexi Trak Large Anchoring Device', 560, '', 'A skin-friendly, modern acrylic adhesive that securely holds tubes, drains and catheters in place on the skin.\r\n\r\nPlease note: This product does not contain latex.\r\n\r\nPlease see package insert for complete instructions for use.', '1d47dbd1da35317e96f7779cb3f15a34.jpg', 0, '0000-00-00 00:00:00'),
(632, 47, 114, 0, 0, 'Cuticerin Gauze, Low-Adherent Surgical Dressing', 550, '', 'CUTICERIN ™ is an excellent all-purpose, low-adherent surgical dressing made of smooth acetate gauze impregnated with CUTICERIN ™ ointment.\r\n\r\n\r\nFeatures & Benefits\r\n\r\nCUTICERIN ™ lifts off easily without trauma, so it is particularly suited to sites which require frequent dressing changes. \r\n\r\nIndications\r\n\r\nFor the management of superficial, exuding wounds such as;\r\nBurns\r\nAbrasions', '0e1eb81157ddc8d3523295f30b8e8a4a.jpg', 0, '0000-00-00 00:00:00'),
(633, 47, 115, 0, 0, 'Mesalt Impregnated Absorbent Dressings', 650, '', 'Mesalt effectively debrides moist necrosis (slough) and stimulates the cleansing of heavily draining and discharging infected wounds.\r\n\r\n- Absorbs exudate bacteria and necrotic material (slough)\r\n- Effectively stimulates the cleansing of wounds\r\n- Easy application', 'bf50147ef2d7e9eec89f4d0a9777ed6b.jpg', 0, '0000-00-00 00:00:00'),
(634, 47, 115, 0, 0, 'Maxorb II Alginate Dressings', 960, '', 'Maxorb II is an advanced alginate dressing that delivers high performance absorbency and wet strength.\r\nAvailable in a 12" rope for filling moderate to heavily draining wounds and in sheet form for shallow moderate to heavily draining wounds.', '3150b592bd9b45787c715988131b0c08.jpg', 0, '0000-00-00 00:00:00'),
(635, 47, 115, 0, 0, 'Algisite M Calcium Alginate Dressings', 990, '', 'ALGISITE ™ M is a calcium-alginate dressing which forms a soft, gel that absorbs when it comes into contact with wound exudate. ALGISITE ™ M helps utilize the proven benefits of moist wound management.\r\n\r\nFeatures\r\n\r\nEasy to remove\r\nConforms to wound contours\r\nFast gelling, high mannuronic acid fibers\r\nLow fiber shed\r\nHigh wet and dry strength\r\nSoft and conformable', '3b7e2f88088e4fbbc11d30f8ebbcbe7a.jpg', 0, '0000-00-00 00:00:00'),
(636, 47, 115, 0, 0, 'Restore Calcium Alginate Dressings', 1410, '', 'Restore Calcium Alginate is a highly absorbent alginate dressing that protects the peri-wound skin. It creats a conformable, protective gel when in contact with exudate to promote a moist wound environment for proper wound healing. Restore Calcium Alginate has superior wet strength (which means it can hold more exudate without breaking into pieces) as compared to other brand of alginates. This superior wet strength allows easy, one-piece removal of the dressing from the wound with less residue left behind. *Restore calcium alginate is not indicated for use on dry wounds please get more description from source site\r\n', '5bea8c70a83519e323a183b6a4406b02.jpg', 0, '0000-00-00 00:00:00'),
(637, 47, 115, 0, 0, 'Kaltostat Calcium Sodium Alginate Dressing', 1500, '', 'KALTOSTAT® Calcium Sodium Alginate dressing is indicated for moderately to highly exuding chronic and acute wounds, and for wounds with minor bleeding.\r\n\r\nPlease note: This product does not contain latex.\r\nPlease see package insert for complete instructions for use.', 'bbd29d447bcb9931a890d1d0a7f331cf.jpg', 0, '0000-00-00 00:00:00'),
(638, 47, 115, 0, 0, 'Xtrasorb Super Absorbent Dressings', 690, '', 'XTRASORB® is a line of novel super-absorbent wound dressings. The core super-absorbent polymer technologies dramatically improve the capabilities of the dressings versus conventional moist wound dressings. Whereas other absorbent dressings (including foams, ABD pads, and other cellulose-based dressings) rely on spaces within the dressings to fill with fluid, XTRASORB®’s super-absorbent polymers bind fluid and convert it to a gel.', '4f60519b92b0de54e5406ae9f30ab668.jpg', 0, '0000-00-00 00:00:00'),
(639, 47, 115, 0, 0, 'Kendall Calcium Alginate Dressings', 1090, '', 'Kendall™ calcium alginate dressings are designed to interact with sodium in wounds to create an ionic exchange and help jump-start the epitheliazation process. The dressing absorbs approximately 20 times its weight in exudate. It is easy and painless to remove with minimal tissue trauma.', '2cd4427eca19e288c417abca64e957b1.jpg', 0, '0000-00-00 00:00:00'),
(640, 47, 115, 0, 0, 'Maxorb Extra AG Alginate with Silver 2" x 2"', 890, '', 'For moderate to heavily draining wounds.\r\nHelps manage bacterial burden, Controlled-release ionic silver, Cost-effective4, Easy dressing changes, Highly absorbent, Superior fluid handling, Reduces odor, Fluid will not wick laterally, Up to 21-day antimicrobial protection\r\nIndications: Pressure ulcers, leg ulcers, first- and second-degree burns, moderate to heavily draining partial and full-thickness wounds, diabetic foot ulcers, surgical wounds, graft and donor sites, and trauma wounds.', 'c1c8c2d003e791c6c995f762e04839ba.jpg', 0, '0000-00-00 00:00:00'),
(641, 47, 115, 0, 0, 'Exu-Dry Anti-Sheer Absorbent Wound Dressing', 1070, '', 'Outer Layer - High density polyethylene\r\nInner Layers - Highly absorbent rayon/cellulose blend\r\nAnti Shear Layer - High density polyethylene\r\nWound Contact Layer - High density polyethylene', 'c334c9d866d16ed63c5f452873897000.jpg', 0, '0000-00-00 00:00:00'),
(642, 47, 117, 0, 0, 'Polymem Cloth Adhesive Dressings 1" x 3"', 980, '', 'PolyMem is the standard hydrophilic polyurethane membrane matrix with a semi-permeable polyurethane continuous thin film backing.\r\nA breathable, adhesive coated cloth backing that provides exceptional comfort for your patient.\r\nCan be effectively used on most common wound type.\r\nFeatures four, key, wound healing capabilities including cleanse, fill, absorb and moisten.', '6a0eb72170c29b4d786ea51a592be7b4.jpg', 0, '0000-00-00 00:00:00'),
(643, 47, 118, 0, 0, 'Puracol Plus Collagen Dressings', 1420, '', 'Indications: pressure, venous, diabetic ulcers, partial and full-thickness wounds, ulcers caused by mixed vascular etiologies, burns, donor sites and other surface wounds, abrasions, traumatic wounds healing by secondary intention and dehisced surgical wounds.\r\n\r\nContraindicated for active vasculitis or patients with known sensitivity to collagen or silver.\r\nMay be left in place for up to 7 days.\r\nDressing change frequency will depend on amount of drainage.', '61ee5eff7931cbea7fcc6980459dddd7.jpg', 0, '0000-00-00 00:00:00'),
(644, 47, 118, 0, 0, 'Puracol Plus AG Collagen Dressings with Silver', 1000, '', 'Indications: pressure, venous, diabetic ulcers, partial and full-thickness wounds, ulcers caused by mixed vascular etiologies, burns, donor sites and other surface wounds, abrasions, traumatic wounds healing by secondary intention and dehisced surgical wounds.\r\n\r\nContraindicated for active vasculitis or patients with known sensitivity to collagen or silver.\r\nMay be left in place for up to 7 days.', '35c49eda475300b0980e37083d11c04a.jpg', 0, '0000-00-00 00:00:00'),
(645, 47, 119, 0, 0, 'Mepore Absorbent Island Dressings', 200, '', '', 'a9c0b4696494f2ac8e3c943276ebc578.jpg', 0, '0000-00-00 00:00:00'),
(646, 47, 119, 0, 0, 'Primapore Absorbant Adhesive Dressings', 500, '', 'PRIMAPORE dressings combine an absorbent pad with a soft and conformable fixative layer for the simple and effective management of sutured wounds. ', '19e6b9e52ae287d47a81923f7fd453f5.jpg', 0, '0000-00-00 00:00:00'),
(647, 47, 119, 0, 0, 'Covrsite Plus Waterproof Composite Dressings', 960, '', 'COVRSITE Plus Composite Dressing is a waterproof version of COVRSITE Cover Dressing which is indicated as a primary or secondary dressing in the management of acute or chronic wounds.\r\n\r\nBenefits\r\n\r\nCan also be used as an alternative to tape and gauze over central line dressings.\r\nThe gentle adhesive is designed so that the dressing can be changed daily.\r\nCOVRSITE Plus replaces traditional tape and gauze with a single step dressing.', 'f6f2cff2ce7043482b9ac56bf2a42d4f.jpg', 0, '0000-00-00 00:00:00'),
(648, 47, 119, 0, 0, 'Covrsite Cover Composite Dressing', 1120, '', 'COVRSITE ™ Cover Dressing is designed as a secondary cover dressing for gels (i.e., SOLOSITE ™), gel sheets, alginates, wound fillers and non-adhesive foams.\r\n\r\n\r\nBenefits\r\n\r\nCan also be used as an alternative to tape and gauze over central line dressings.\r\nThe gentle adhesive is designed so that the dressing can be changed daily.\r\nCOVRSITE ™ replaces traditional tape and gauze with a single step dressing.\r\nIt is water-resistant, extensible, and conformable.', '0093a253064baff2ea766b2105503d6a.jpg', 0, '0000-00-00 00:00:00'),
(649, 47, 119, 0, 0, 'Opsite Post-Op Composite Dressings', 1240, '', 'High MVTR - The patented REACTIC ™ film has a unique molecular structure making it significantly more permeable to water vapor than ordinary films in the presence of moisture.\r\nWaterproof Film - Patient can shower with the dressing in place.\r\nBacterial Barrier - Helps protect the site against extrinsic contamination, reducing the risk of infection by bacteria.\r\nLatex-Free Formula - A unique grid pattern adhesive.\r\nHighly-Absorbent Pad - Rapidly absorbs exudate. Allows lateral spread across the pad to maximize absorbency and help reduce the risk of skin maceration.', '8b6f7071dffad44036a6cb605ce56f1b.jpg', 0, '0000-00-00 00:00:00'),
(650, 47, 119, 0, 0, 'Medipore Plus Pad Soft Cloth Wound Dressing', 1200, '', 'Medipore +Pad soft cloth adhesive wound dressing may be used as a primary or secondary dressing over light to moderately draining wounds, for securing devices, or for protecting I.V. catheter sites. This all-in-one sterile dressing is a highly conformable absorbent dressing that provides superior patient comfort as dressing flexes with body movement and contours. Medipore +Pad dressing has a hypoallergenic, non-latex adhesive that provides excellent adhesion, yet is gentle to the skin. The dressing features a unique non-adherent pad that is designed to promote normal wound healing processes to occur with less pain and trauma.', '6637827ac1dbea464ae75c18753a51a1.jpg', 0, '0000-00-00 00:00:00'),
(651, 47, 119, 0, 0, 'Island Dressing - Sterile', 1320, '', 'Ready When You Need It\r\nDynarex Sterile Island Dressings are highly absorbent, individually packaged wound care pads ideal for use as a cover dressing after packing large, deep wounds.\r\n\r\n\r\nIndividually packed in peel open pouches\r\nProvides excellent absorption and cushioning protection\r\nSoft, non-stick dressing with adhesive border\r\nLatex free', '276c9121e99e9756efb89cc1c1baf60d.jpg', 0, '0000-00-00 00:00:00'),
(652, 47, 119, 0, 0, 'Covidien/Kendall Telfa Island Dressings', 800, '', 'Telfa™ Island Dressings. Convenient all-in-one dressing. Soft, non-woven backing conforms around wound and seals on all four sides. Available in a variety of sizes. \r\n\r\nFeatures and Benefits:\r\n\r\nBonded on both sides with perforated non-adherent film\r\nEasy to use\r\nPolyester wound contact film polymer\r\nTelfa™ Island Dressing film has 382 holes per square inch with a diameter of 0.020 to 0.030 inch\r\nTelfa™ Island dressing absorbent core is made out of 100% USP grade absorbent cotton\r\nIdeal moisture vapor transmission rate\r\nCan be cut to fit any shape without separating', '1fab9eedbd99d174a1b6f356637b2eb5.jpg', 0, '0000-00-00 00:00:00'),
(653, 47, 121, 0, 0, 'Mepilex Border Lite', 600, '', 'Mepilex Border Lite Foam Drsg Molnlycke.\r\nSelf Adhering Dressing Minimizes pain and trauma oft dressing changes.\r\nShower proof.\r\nSafetac technology.\r\nIdeal for a wide range of exuding wounds such as leg and foot ulcers, pressure ulcers and traumatic wounds.', 'ce6409780443d6f8e54b4b0aa551d746.jpg', 0, '0000-00-00 00:00:00'),
(654, 47, 121, 0, 0, 'Mepilex Border Flex Foam Dressings', 650, '', 'Mepilex Border Flex is a new all-in-one foam dressing designed for challenging areas of the body. Mepilex Border Flex has a specially designed 5-layer absorbent foam structure that absorbs and retains exudate. It is ideal for moderate to highly exuding wounds such as ulcers, diabetic foot ulcers, leg and foot ulcers, traumatic wounds, and other secondary healing wounds. Mepilex Flex is oval shaped with flex technology which helps it fit body contours. This foam wound dressing can be left in place a few days depending on draining levels. It features Safetac Technology which is ideal for fragile skin and helps minimize the risk of maceration and pain during dressing changes. It has a highly breathable film backing that provides a waterproof barrier to virus and bacteria.', '11ffb8ed2e3822ab833e540bfc7b1f75.jpg', 0, '0000-00-00 00:00:00'),
(655, 47, 121, 0, 0, 'Mepilex Transfer', 520, '', 'Mepilex Transfer moves exudate away from the wound, minimizes the risk of maceration and enables management of difficult-to-dress wounds..\r\n\r\nBenefits of Mepilex Transfer\r\n\r\nTransfers exudate away from the wound\r\nAtraumatic to the wound and surrounding skin on removal\r\nConforms well to body contours\r\nMay be cut to shape\r\nMinimizes the risk of maceration\r\nPromotes patient comfort during wear and minimizes pain upon removal', 'c3d0dbcd276f8a4424a955c9553185ed.jpg', 0, '0000-00-00 00:00:00'),
(656, 47, 121, 0, 0, 'Mepilex Absorbent Foam Dressings', 560, '', 'Mepilex is a soft and highly conformable foam dressing that absorbs exudate and maintains a moist wound environment. The Safetac technology prevents Mepilex from sticking to the wound bed yet adheres gently to the surrounding skin allowing easy application of secondary fixation. In addition, the Safetac layer ensures that the dressing can be changed without damaging the wound or surrounding skin or subjecting the patient to additional pain. Mepilex absorbs exudate effectively and ensures a low risk of maceration.', '7582802fc04b043f85152209af197b88.jpg', 0, '0000-00-00 00:00:00'),
(657, 47, 121, 0, 0, 'Mepilex Border Silicone Foam Dressings', 620, '', 'Mepilex Border is an all-in-one foam dressing that effectively absorbs and retains exudate and maintains a moist wound environment. The Safetac layer seals the wound edges, preventing the exudate from leaking onto the surrounding skin, thus minimizing the risk for maceration. The Safetac layer ensures that the dressing can be changed without damaging the wound or surrounding skin or exposing the patient to additional pain.', 'dfa7c8a06cfe5bf299bbf5561d89c4ba.jpg', 0, '0000-00-00 00:00:00'),
(658, 47, 121, 0, 0, 'Mepilex Border Post OP Dressings', 720, '', 'Mepilex Border Post-Op is an all-in-one post-op dressing that effectively absorbs and retains blood and surgical exudates . It is intended for acute wounds, such as surgical wounds, cuts and abrasions. It is optimised for post-op use and blood absorption.\r\n\r\nMinimizes incidence of blisters1\r\nExcellent exudate management optimised for post-op wounds2\r\nMinimizes pain and trauma at dressing changes3\r\nHighly flexible pad that promotes patient mobilisation4', '89109e4374516b1ca731ffe6dc07a5a0.jpg', 0, '0000-00-00 00:00:00'),
(659, 47, 121, 0, 0, 'Lyofoam Max 4" x 4"', 980, '', 'Soft, conformable and comfortable — Lyofoam Max is designed for the management of moderately to highly exuding wounds. Its high absorbency and fluid handling capacity combined with the reduced risk of maceration and leakage provide a longer wear time.', '5c1ca9f9892cccf54aaf8f4663670c2e.jpg', 0, '0000-00-00 00:00:00'),
(660, 47, 121, 0, 0, 'Mepilex Lite Thin Foam Dressings', 650, '', 'Mepilex Lite is a thin and highly conformable foam dressing that absorbs exudates and maintains a moist wound environment. The Safetac layer seals around the wound edges preventing exudates from leaking onto the surrounding skin, thus minimizing the risk for maceration. The Safetac® layer ensures atraumatic dressing changes. Mepilex Lite can be cut to suit various wound shapes and locations.', 'a295e74cbf0fe6a5154470bfb3b28811.jpg', 0, '0000-00-00 00:00:00'),
(661, 47, 121, 0, 0, 'Mepilex Heel 5" x 8"', 230, '', 'Absorbent soft silicone dressing, shaped for heel wounds\r\n\r\nMepilex Heel minimizes trauma to the wound and pain to the patient at dressing changes. The Safetac technology prevents Mepilex Heel from sticking to the wound bed yet adheres gently to the surrounding skin allowing easy application of secondary fixation. Mepilex Heel absorbs exudate effectively and ensures a low risk of maceration.\r\n\r\nMepilex Heel conforms well to the heel preventing exudate from pooling and causing maceration. Mepilex Heel is ideal for most shapes or sizes of feet and may be used on other areas of the body as well.', 'faa01720e5d09597689c9898c41afac1.jpg', 0, '0000-00-00 00:00:00'),
(662, 47, 121, 0, 0, 'Tegaderm Foam Adhesive Dressings', 540, '', '3M™ Tegaderm™ High Performance Foam Adhesive Dressings provide total fluid management by a combination of fast wicking, high absorbency and breathability. The innovative spoke delivery system allows fast, easy application for wounds over body contours. Available in a wide variety of sizes and shapes to meet your clinical needs. Oval and square dressings are constructed of a conformable absorbent, polyurethane foam pad, an additional absorbent nonwoven layer and a border of transparent film with moist skin adhesive technology.{1} The mini wrap dressing is constructed of a conformable, absorbent, polyurethane foam pad with a highly breathable film backing, reinforced with soft cloth tape.', 'fb5690a67e6adf55fd1e0a3f3da694a5.jpg', 0, '0000-00-00 00:00:00'),
(663, 47, 122, 0, 0, 'Medihoney Calcium Alginate Dressings', 490, '', 'Medihoney Calcium Alginate Dressings\r\n\r\nDressings are strong antimicrobials which assist in debridement, and help manage moisture balance, MEDIHONEY dressings can be thought of as "all-in-one" dressings for effective wound bed preparation. Additionally, since Active Leptospermum Honey is noted for its ability to be used in all phases of wound healing, placing these dressings as the cornerstones of a wound care formulary can take a great deal of the guess-work out of wound management.', '9bb7a914f218d4334d3e163b68370002.jpg', 0, '0000-00-00 00:00:00'),
(664, 47, 122, 0, 0, 'Medihoney Honeycolloid Non Adhesive Dressings', 1020, '', 'Active Leptospermum Honey content 80%. Non-occlusive and requires a secondary dressing to hold in place. Absorbs light to moderate amounts of exudates. Pad will form a gel as it warms up with body temperature and as it comes into contact with wound fluid.\r\n\r\nCan be used similarly to an alginate or a hydrocolloid paste to either cover or fill a partial-to-full thickness wound. Non-adhesive.', '405349ca22050d56afbd95bc0406a3f3.jpg', 0, '0000-00-00 00:00:00'),
(665, 47, 123, 0, 0, 'Allevyn Adhesive Dressings', 1050, '', 'ALLEVYN™ Adhesive provides the advantages of ALLEVYN™ Hydrocellular dressings in a adhesive format for simple and effective fixation.\r\n\r\nFeatures:\r\n\r\nLow allergy adhesive\r\nTapered construction with micro-thin edges\r\nUnique trilaminate structure\r\nPerforated wound contact layer\r\nHighly absorbent central hydrocellular layer', '3597855bd6382118e4bb01b731e5e3f6.jpg', 0, '0000-00-00 00:00:00'),
(666, 47, 123, 0, 0, 'Allevyn Non Adhesive Hydrocellular Polurethane Dressings', 1090, '', 'ALLEVYN™ Hydrocellular Foam Dressing\r\n\r\n\r\nFeatures\r\n\r\nUnique trilaminate structure\r\nNon adherent wound contact layer\r\nHighly absorbent central hydrocellular layer\r\nWaterproof outer film layer\r\nNon adhesive\r\nFull range of sizes', '632ad109a728efeefa76806a76620874.jpg', 0, '0000-00-00 00:00:00'),
(667, 47, 123, 0, 0, 'Allevyn AG Adhesive Absorbent Silver Barrier Dressing', 1210, '', 'ALLEVYN ™ Ag Adhesive is indicated for exudate absorption and the management of partial to full thickness wounds. Some typical wounds are:\r\n\r\nUlcers (venous, arterial, diabetic)\r\nPressure Sores\r\nDonor Sites\r\nSurgical Incisions\r\nSurgical Excisions\r\nBurns (1st and 2nd degree)', '2b5483cb1d6a9e94c4188c211ce9e2aa.jpg', 0, '0000-00-00 00:00:00'),
(668, 47, 124, 0, 0, 'Replicare Hydrocolloid Dressings', 1000, '', '', '6fe1a0196ef2efa6bd45caba308a3a76.jpg', 0, '0000-00-00 00:00:00'),
(669, 47, 124, 0, 0, 'Duoderm Hydroactive Sterile Dressings', 300, '', 'DuoDERM® Sterile Hydroactive® dressing is the original DuoDERM® dressing designed for the management of partial and full-thickness pressure sores and leg ulcers. It incorporates a unique ConvaTec hydrocolloid formulation that distinguishes it from other hydrocolloid dressings.', '867de42d37af538a9cdcb9a3ae5d263f.jpg', 0, '0000-00-00 00:00:00'),
(670, 47, 124, 0, 0, 'Douderm CGF Hydrocolloid Dressings', 500, '', 'DuoDERM® CGF® dressing is a hydrocolloid, moisture-retentive wound dressing used for partial and full-thickness wounds with exudate. It incorporates a unique ConvaTec hydrocolloid formulation that distinguishes it from other hydrocolloid dressings.\r\n\r\n', '15037cfd4bf794823196f4052d9baeec.jpg', 0, '0000-00-00 00:00:00'),
(671, 47, 124, 0, 0, 'Douderm Signal Dressings', 800, '', 'DuoDERM Signal® dressing is an adhesive, tapered edge, modern hydrocolloid wound dressing with a change indicator. It incorporates a unique ConvaTec hydrocolloid formulation that distinguishes it from other hydrocolloid dressings. The adhesive hydrocolloid matrix and the outer film on DuoDERM Signal® dressing is permeable by moisture vapor and provides an occlusive barrier against bacteria, viruses, dirt and water. DuoDERM Signal® Dressing is indicated for the management of lightly to moderately exuding wounds.', '86603a7fee6a8e354159e3b732a406c6.jpg', 0, '0000-00-00 00:00:00'),
(672, 47, 124, 0, 0, 'Duoderm CGF Bordered Sterile Dressings', 960, '', 'DuoDERM® CGF® Border dressing incorporates a unique ConvaTec hydrocolloid formulation that distinguishes it from other hydrocolloid dressings. It can be used for "hard-to-dress" areas. The dressing features a wide outer foam border that does not require additional taping. DuoDERM® CGF® Border dressing is indicated for use on dermal ulcers including full-thickness wounds, pressure ulcers (Stage II-IV), leg ulcers, superficial wounds, partial thickness burns and donor sites. Protects against harmful bacteria and viruses such as HBV(11) and HIV*(11). *While the dressing remains intact and without leakage, the use of DuoDERM® dressing neither guarantees nor warrants against the transmission of HIV or HBV', '0dde8749a6f168e97af9103e7e7e6ca0.jpg', 0, '0000-00-00 00:00:00'),
(673, 47, 124, 0, 0, 'Cutinova Hydro Selective Dressing', 690, '', 'CUTINOVA ™ Hydro is a unique, hydro-active polyurethane matrix with an embedded super-absorber providing maximum exudate absorption. The special structure of this dressing offers the unique action of absorbing water from the wound fluid.\r\n\r\nCUTINOVA ™ Hydro is a unique, hydro-active polyurethane matrix with an embedded super-absorber providing maximum exudate absorption. The special structure of this dressing offers the unique action of absorbing water from the wound fluid.\r\n\r\n', '8cb177ddff77b586ef850308b91e5d07.jpg', 0, '0000-00-00 00:00:00'),
(674, 47, 124, 0, 0, 'Flexigel Sheet Absorbent Hydrogel Dressing', 1000, '', 'Made with a polyacrylaride matrix with embedded hydrophilic polysaccharide particles\r\nMoisture vapor permeable\r\nAbsorbs up to 5 times its own weight', 'aa03c0bb4a2053d27131a83a4118f92d.jpg', 0, '0000-00-00 00:00:00'),
(675, 47, 124, 0, 0, 'Replicare Thin Hydrocolloid Dressings', 810, '', 'Features\r\n\r\nREPLICARE ™ Thin is made from a polyurethane film with a thin layer of absorbent colloid.', '8ad179bc90c577bbab7fbeebe60f7cc4.jpg', 0, '0000-00-00 00:00:00'),
(676, 47, 124, 0, 0, 'Dressing, Exuderm, Odorshield, 4" X 4"', 1120, '', 'Exuderm Odorshield: Medline Has Developed Exuderm, A Range Of Sterile Hydrocolloid Wound Dressings Designed For All Stages Of Wounds. Each Product Creates A Moist Environment To Encourage Wounds To Heal. Satin-Back, Waterproof Dressing Is Designed To Protect Wounds Against External Bacterial Contamination And Manage Light To Moderate Exudating Wounds While Maintaining Dressing Integrity. Low Profile, Tapered Edge Resists Roll-Up. Smooth, Satin-Backing Is Practically Friction-Free For Longer Wear.', '6bb67eceb86d954754fb98e446b45a52.jpg', 0, '0000-00-00 00:00:00'),
(677, 47, 124, 0, 0, 'Duoderm Extra Thin Dressing', 210, '', 'DuoDERM® Extra Thin dressing is a hydrocolloid dressing indicated for the management of lightly exuding wounds. It combines a unique ConvaTec hydrocolloid formulation that distinguishes it from other hydrocolloid dressings and a vapor-permeable outer film to provide an occlusive moist environment', '1452483d907a26beb52691d7c879b8a6.jpg', 0, '0000-00-00 00:00:00'),
(678, 47, 125, 0, 0, 'Aquacel Hydrofiber Dressing', 200, '', 'AQUACEL® dressing incorporating unique Hydrofiber® Technology is a versatile primary wound dressing indicated for use on moderate to highly exuding chronic and acute wounds', '2ae51b86264575eb330614f08c8ecf32.jpg', 0, '0000-00-00 00:00:00'),
(679, 47, 125, 0, 0, 'AQUACEL® dressing incorporating unique Hydrofiber® Technology is a versatile primary wound dressing ', 300, '', 'AQUACE® EXTRA™ wound dressing is composed of two layers of Hydrofiber® Technology stitched together. It is nine times stronger and has 39% greater absorbency as compared to the original AQUACE® wound dressing.1 AQUACEL® EXTRA™ Hydrofiber® dressing is specifically suited to help manage moderate to highly exuding wounds and is cleared for the same indications as the original AQUACE® dressing. AQUACEL® EXTRA™ wound dressing is constructed with two-dimensional strengthening fibers that are stitched into the dressing. While made from the same base material that is used to manufacture Hydrofiber® Technology, the fibers do not gel on contact with fluid so that they maintain their integrity and become encompassed by the gel, providing additional strength and aiding the easy removal.', '45ace81ba30f167d9800ff20ac4a8509.jpg', 0, '0000-00-00 00:00:00'),
(680, 47, 126, 0, 0, 'SilvaSorb Antimicrobial Wound Gel', 980, '', 'For lightly draining wounds in need of an antimicrobial barrier\r\n\r\nHelps manage bacterial burden1,2; Continuous antimicrobial protection1,3; Non-staining1; Gentle for the patient4,5; Advanced fluid management1; Extended wear time3,6,7\r\nIndications: pressure ulcers, partial and full-thickness wounds, leg ulcers, diabetic foot ulcers, graft wounds and donor sites, skin tears, surgical wounds, lacerations and abrasions, and first- and second-degree burns.', '1ce92435a6f1e1d354a96098682a2d26.jpg', 0, '0000-00-00 00:00:00'),
(681, 47, 126, 0, 0, 'Carrasyn V HydroGel', 650, '', 'Designed to maintain a moist wound-healing environment.\r\nCarrasyn V Hydrogel is a thicker version of the Carrasyn Hydrogel wound dressing.\r\nNon-oily', 'e1da8a15e78f54969430a4ca767aedd9.jpg', 0, '0000-00-00 00:00:00'),
(682, 47, 126, 0, 0, 'Carrasyn HydroGel', 690, '', 'Designed to maintain a moist wound-healing environment.\r\nCarrasyn V Hydrogel is a thicker version of the Carrasyn Hydrogel wound dressing.\r\nNon-oily.', '897528887dc0a4eae3669f469ef97af1.jpg', 0, '0000-00-00 00:00:00');
INSERT INTO `product` (`prod_id`, `prod_catid`, `prod_subcatid`, `body_cat_id`, `brand_cat_id`, `prod_name`, `prod_price`, `prod_code`, `prod_desc`, `image`, `marchantId`, `date`) VALUES
(683, 47, 126, 0, 0, 'Iodosorb Cadexomer Iodine Gel', 590, '', 'IODOSORB™ Gel is a sterile formulation of Cadexomer Iodine. When applied to the wound, IODOSORB™ cleans it by absorbing fluids, removing exudate, slough and debris and forming a gel over the wound surface. As the gel absorbs exudate, iodine is released, killing bacteria and changing color as the iodine is used up.', '1716eeda586bf79b455fd40976d3294b.jpg', 0, '0000-00-00 00:00:00'),
(684, 47, 126, 0, 0, 'Douderm Hydroactive Sterile Gel', 800, '', 'DuoDERM® Hydroactive® Sterile Gel is a clear, preservative-free, viscous hydrogel that incorporates a unique ConvaTec hydrocolloid formulation that distinguishes it from other hydrocolloid dressings. It is indicated for the management of partial and full-thickness wounds, ideally as a filler for dry cavity wounds to provide a moist healing environment.', '7f87b3586d9bd4d9cdcf1003ac0ed660.jpg', 0, '0000-00-00 00:00:00'),
(685, 47, 126, 0, 0, 'DuoDERM® Hydroactive® Sterile Gel is a clear, preservative-free, viscous hydrogel that incorporates ', 910, '', 'INTRASITE Gel is an amorphous hydrogel which gently re-hydrates necrotic tissue, facilitating autolytic debridement, while being able to loosen and absorb slough and exudate. It can also be used to provide the optimum moist wound management environment during the later stages of wound closure. It is non-adherent and does not harm viable tissue or the skin surrounding the wound. This makes INTRASITE ™ Gel ideal for every stage in the wound management process.', '4fc9e0998b209d449d8606bd8350f594.jpg', 0, '0000-00-00 00:00:00'),
(686, 47, 126, 0, 0, 'Restore Amorphous Hydrogel Dressing 3 oz Tube', 1510, '', 'Easy to handle and apply as supplied in a clear, viscous gel.\r\nCost effective; clinically shown to last up to 72-hours.\r\nConveniently supplied in a variety of forms to meet differing clinical needs.', '7ef9c2a29ff0653aaaafe06a599352f4.jpg', 0, '0000-00-00 00:00:00'),
(687, 47, 126, 0, 0, 'Woun Dres Collagen Hydrogel 3 oz Tube', 1020, '', 'Collagen Hydrogel For Wound Dressing Promotes autolytic debridement by rehydrating and softening dry wounds and necrotic tissue. Hydrogels provide a moist environment facilitating optimal wound healing.', '230a04b989c873f4e6fba2f005d6542d.jpg', 0, '0000-00-00 00:00:00'),
(688, 47, 126, 0, 0, 'Wound Honey 80G Tube', 1200, '', 'Manuka Honey is medically proven to help aid in the healing of wounds, venous stasis wounds, bed and pressure sores, cuts and burns. It is sterilized to protect against infection.', 'd7b82bbdc71f76cad8ddb997924f8b1a.jpg', 0, '0000-00-00 00:00:00'),
(689, 47, 126, 0, 0, 'Hypergel Hypertonic Gel, 0.17 oz Tube', 600, '', 'A water based gel which effectively softens and debrides dry necrosis\r\n\r\nHypergel® effectively debrides dry necrosis to a good environment for natural wound healingsoftens and debrides dry necrosis (eschar) to create an optimal environment for natural wound healing.\r\n', '3b539ee629474155f9d3e6706f90b432.jpg', 0, '0000-00-00 00:00:00'),
(690, 44, 312, 0, 0, 'Leukotape P 1.5" x 15 yds & Cover-Roll Stretch 2" x 10 yds Combo Pack - One Roll Each', 990, '', 'Leukotape P is a high strength, rigid strapping tape, with a very strong, zinc oxide adhesive. It is porous and hand-tearable, yet offers extra strong support for sprains and strains. Ideal for patellofemoral taping. Use in conjunction with Cover Roll Stretch.', '9a8d025714e3658099b09be6b6d3c276.jpg', 0, '0000-00-00 00:00:00'),
(691, 44, 312, 0, 0, 'Leukotape P Sports Tape - 1.5" x 15 Yards', 1120, '', 'Leukotape P is specifically designed for the patellofemoral (McConnell) taping technique for correcting patellar position. Excellent for managing chronic shoulder problems by realigning shoulder related structures, taping and retraining muscles. Leukotape P Sportstape has a high tensile strength, but is hand-tearable for easy application. Leukotape P Sports Tape adhesive contains a dry natural rubber. Leukotape P Sports Tape is a rayon-backed adhesive tape that features an extremely strong zinc oxide adhesive which, combined with the high tensile strength of the tape, makes Leukotape ideal for patellofemoral taping (a taping technique for correcting patellar position). Leukotape is also ideal for managing chronic shoulder problems by realigning shoulder related structures. This can be done by taping and retraining muscles in the arm.', '541177b520e3910126683dcd04a8ad2c.jpg', 0, '0000-00-00 00:00:00'),
(692, 44, 313, 0, 0, 'Kendall Hypoallergenic Cloth Tape', 1210, '', 'Kendall™ Hypoallergenic Cloth Tape has a gentle adhesive and a soft non-woven backing for taping catheters, IV tubing, and dressings where conformability is needed.', 'ed621f8b514ee427ff72d8bc7b4b5249.jpg', 0, '0000-00-00 00:00:00'),
(693, 44, 313, 0, 0, '3M Medipore Soft Cloth Surgical Tape', 1090, '', 'Latex-free, hypoallergenic soft cloth tape products that offer excellent adhesion yet are gentle to reduce risk of skin irritation. Available in perforated rolls.\r\n\r\nMedipore tape is a non-woven polyester, soft, highly conformable tape. It is comfortable, porous and breathable. It stretches to accommodate swelling and movement. The tape is perforated so that no scissors are required. It is easy to handle, with or without gloves, without curling edges, or sticking to itself. Medipore tape is particularly useful for securing wound dressings, tubing and catheters, and repeated applications where preservation of "at risk" skin is critical.', '9c559ebdbf6fd78bd3ecf5e17f6d735a.jpg', 0, '0000-00-00 00:00:00'),
(694, 44, 313, 0, 0, 'Durapore Surgical Tape', 890, '', 'This "silk-like" tape is the most economical, high-strength and high-adhesion tape. Durapore tape is conformable and has bi-directional tear. It is excellent for securing regular and bulky dressings, tubing, and immobilization. It adheres well to dry skin.', '08725242f779b4380fc5dae44a691ef6.jpg', 0, '0000-00-00 00:00:00'),
(695, 44, 314, 0, 0, 'Cloth Surgical Tape', 800, '', 'Strong lightweight construction\r\n Provides secure durable skin adhesion\r\n Tears easily without shredding\r\n Latex free', '4abd85c4939a025701406b7e130f5554.jpg', 0, '0000-00-00 00:00:00'),
(696, 44, 314, 0, 0, 'Cloth Surgical Tape', 1120, '', 'Strong woven construction make this durable tape ideal for securing wound dressings, tubing, and drainage lines.\r\nTears easily for convenient application.\r\nModerate stretching ability to accommodate movement and swelling.\r\nBreathable and hypoallergenic.\r\nAvailable in 1?2, 1, 2 and 3 inch widths.', '5d9665ae84cf7b16e6ae92fa6ff62cdd.jpg', 0, '0000-00-00 00:00:00'),
(697, 44, 315, 0, 0, 'Hypafix Tape', 190, '', 'HYPAFIX is an adhesive, non-woven fabric for dressing retention.\r\n\r\nBenefits:\r\n\r\nCombines security with comfort\r\nHighly conformable\r\nProvides reliable fixation for catheters and drainage tubes\r\nAllows joints to be dressed without constraining movement', '63c0335213cdb1bfde311fc8aeed35e5.jpg', 0, '0000-00-00 00:00:00'),
(698, 44, 315, 0, 0, 'Medfix Dressing Retention Tape', 400, '', 'Medline Medfix Dressing Retention Tape is ideal for securing primary dressings or securing gastrostomy tubes and other feeding tubes. Medfix is comparable to Hypafix Retention Tape. It has a low sensitivity adhesive which is gentle on the skin. The dressing retention sheet has a printed s-curve release liner. It is also water resistant and latex free. Can be left in place for up to 7 days depending on the amount of drainage.', '36846f97e00f802626ba906c41b98e6a.jpg', 0, '0000-00-00 00:00:00'),
(699, 44, 315, 0, 0, 'Medfix EZ dressing Retention Tape', 500, '', 'MedFix EZ Wound Tape is a non-woven dressing tape used to secure primary dressings and to secure gastrostomy tubes and other feeding tubes\r\n\r\nLow sensitivity adhesive, gentle for the patient\r\nNo liner\r\nPerforation every 2"\r\nWater-resistant\r\nLatex-free', 'e6f3baf325671ba65de39b88425d6ecd.jpg', 0, '0000-00-00 00:00:00'),
(700, 44, 316, 0, 0, 'Mefix Tape', 200, '', 'The Molnlycke Mefix Self-Adhesive Dressing Tape is a dressing fixation fabric tape that secures gauze, tubes, cannulas, dressings and drainage devices even to awkward areas of the body. The porous structure of the nonwoven fabric ensures air and water vapor permeability. The fabric is non-absorbent and provides a barrier for blood and fluid strike-through. It can easily be cut to the desired shape and size.', '29bee2b1e8f0993d4f6a76763962bbf5.jpg', 0, '0000-00-00 00:00:00'),
(701, 44, 317, 0, 0, 'Micropore Surgical Paper Tape White', 560, '', 'A latex-free, hypoallergenic paper tape that is gentle to the skin yet adheres well and leaves minimal adhesive residue upon removal. An economical, general purpose, breathable surgical tape. Micropore tape is excellent for repeated applications on sensitive skin, fragile skin and elderly patients. It is available in a dispenser pack for easy tear and convenience.', '7a5114773bbb2325d47b1444376440ed.jpg', 0, '0000-00-00 00:00:00'),
(702, 44, 317, 0, 0, 'Micropore Surgical Paper Tape White with Dispenser', 900, '', 'A latex-free, hypoallergenic paper tape that is gentle to the skin yet adheres well and leaves minimal adhesive residue upon removal. An economical, general purpose, breathable surgical tape. Micropore tape is excellent for repeated applications on sensitive skin, fragile skin and elderly patients. It is available in a dispenser pack for easy tear and convenience.', 'dfc04f4d1b95c9e633278ee84045d093.jpg', 0, '0000-00-00 00:00:00'),
(703, 44, 317, 0, 0, 'Kendall Hypoallergenic Paper Tape', 1200, '', 'Kendall Hypoallergenic Paper Tape is used for frequent taping and re-taping dressings where skin irritation is a concern.', 'c691fbf61300c94628f0e7b9e6e14223.jpg', 0, '0000-00-00 00:00:00'),
(704, 44, 318, 0, 0, 'Paper Surgical Tape', 900, '', 'Provides superior skin adhesion\r\n Natural, highly porous construction allows maximum breathability\r\n Tears easily for convenient use\r\n Latex free', '106badc25639978665b64cf6a3e061e4.jpg', 0, '0000-00-00 00:00:00'),
(705, 44, 318, 0, 0, 'J&J Elastikon Elastic Tape', 1090, '', 'ELASTIKON Elastic Tape is a high twist, cotton elastic cloth tape with a rubber based adhesive.\r\n\r\n \r\n\r\nELASTIKON Elastic Tape is designed to help provide elasticity needed for dynamic/pressure dressings requiring elasticity, support strapping, fractures, muscle injuries, knees, elbows, and shoulders.\r\n\r\n \r\n\r\nELASTIKON Elastic Tape conforms to difficult areas like elbows, knees, and shoulders. The porous construction allows skin to breathe and allows for moisture transmission. The red line centered on the backcloth provides guide for uniform application and pressure. The rubber based adhesive provides strong adhesion with minimal residue. With a dry feathered edge, adhesive is applied to within 1/8" of edge to provide neat and comfortable application without adhesive bleed.', '6b427d55317da93f1cbf62ad95df2d7a.jpg', 0, '0000-00-00 00:00:00'),
(706, 44, 318, 0, 0, '3M Microfoam Surgical Tape', 880, '', 'Latex-free, hypoallergenic, elastic foam tape products designed to stretch and conform while providing secure adhesion to joints or skin folds. Available in rolls and as a sterile tape patch.\r\n\r\nMicrofoam tape consists of closed-cell foam. This tape gives all-direction stretch. It is water-resistant and highly conformable. Microfoam tape is excellent for securing dressings and compression applications in challenging areas. It conforms easily to joints or skin folds. This tape Does Not Contain Either Rubber Latex Or Dry Natural Rubber As Components In The Product Or Its Packaging as most other elastic tapes in this class do.\r\n', 'a0acb318e07fa260beb34f4425de6753.jpg', 0, '0000-00-00 00:00:00'),
(707, 44, 318, 0, 0, 'Transpore Surgical Tape', 660, '', 'A latex-free, hypoallergenic, transparent and perforated plastic tape that offers strong adhesion. Transpore tape is easy to tear into very thin strips, and is easy to use even with gloves.\r\n\r\nThis plastic tape is transparent, perforated polyethylene film with easy bi-directional tear, strong adhesion, and is hypoallergenic. It allows visualization of the skin. Transpore tape is easy to tear into very thin strips and is easy to use even with gloves. For securing tubing and dressings that need to be monitored.', '93e0bb412191dfe4f59ac3918d22bacc.jpg', 0, '0000-00-00 00:00:00'),
(708, 44, 318, 0, 0, 'Blenderm Surgical Tape', 1420, '', 'A latex-free, hypoallergenic, occlusive and transparent plastic tape. This flexible medical tape is designed to provide a barrier from external fluids and contamination. Available in three widths.\r\n\r\nBenefits:\r\n\r\nTransparent for easy monitoring\r\nWaterproof barrier for protection from external fluids and contaminants\r\nFlexible for hard to tape areas\r\nLatex-free and hypoallergenic for sensitive patients', '8ac0811fd11692b5992286bc0a67b92d.jpg', 0, '0000-00-00 00:00:00'),
(709, 44, 323, 0, 0, 'Mepitac Soft Silicone Tape', 750, '', 'Mepitac® is highly conformable and easy to apply and remove. The Safetac layer assures secure fixation and gentle removal from skin and bodily hair. If inspection or repositioning is necessary, can be lifted and re-applied.', '532ce0af7295d5afdd46b9efe6a1916f.jpg', 0, '0000-00-00 00:00:00'),
(710, 44, 323, 0, 0, '3M Kind Removal Silicone Tape', 850, '', '3M™ Kind Removal Silicone Tape provides reliable securement, kind removal, and gentle wear without compromise. The unique silicone adhesive is repositionable and does not stick to gloves or to itself. Ideal for patients with at-risk skin or sensitive skin.', 'e0615ab7c36157e7681379ac96dc2b94.jpg', 0, '0000-00-00 00:00:00'),
(711, 44, 319, 0, 0, '3M Kind Removal Silicone Tape', 690, '', '3M™ Kind Removal Silicone Tape provides reliable securement, kind removal, and gentle wear without compromise. The unique silicone adhesive is repositionable and does not stick to gloves or to itself. Ideal for patients with at-risk skin or sensitive skin.\r\n\r\n3M™ Kind Removal Silicone Tape provides reliable securement, kind removal, and gentle wear without compromise. The unique silicone adhesive is repositionable and does not stick to gloves or to itself. Ideal for patients with at-risk skin or sensitive skin.\r\n\r\n3M™ Kind Removal Silicone Tape provides reliable securement, kind removal, and gentle wear without compromise. The unique silicone adhesive is repositionable and does not stick to gloves or to itself. Ideal for patients with at-risk skin or sensitive skin.\r\n\r\n', 'a23fd755746c3c4bf295e1118dd7d9f9.jpg', 0, '0000-00-00 00:00:00'),
(712, 44, 319, 0, 0, 'Mepitac Soft Silicone Tape', 1020, '', '', 'e516c1a8aba3dfbaa2780f7690d43181.jpg', 0, '0000-00-00 00:00:00'),
(713, 44, 320, 0, 0, 'Medipore H Soft Cloth Tape', 1220, '', 'The same soft, latex-free, hypoallergenic, conformable tape as standard Medipore tape, but with increased gentleness and stronger adhesion for more challenging applications. Available in perforated rolls in several sizes.\r\n\r\nMedipore H tape is a non-woven polyester, soft, highly conformable tape. It has excellent adhesion yet is gentle to skin, reducing the risk of skin irritation. Medipore H tape is comfortable, porous and breathable. It stretches to accommodate swelling and movement. The tape is perforated so that you can tear tape off the roll by hand. It is easy to handle, with or without gloves, without curling edges, or sticking to itself. Medipore H tape is particularly useful for securing wound dressings, tubing and catheters, and repeated applications where preservation of "at risk" skin is critical.', '13ccfd5d74f7060ac2818caa125db366.jpg', 0, '0000-00-00 00:00:00'),
(714, 44, 325, 0, 0, 'View Guard Transparent Dressings - Sterile', 1230, '', 'Easy to apply\r\nConforms to difficult body contours\r\nProvides a breathable barrier that lets air in while keeping moisture vapors and fluid out\r\nIdeal for use around IV sites, for wound care and surgical site protection', 'e9c02eb28e11457720577cebd3dc4a26.jpg', 0, '0000-00-00 00:00:00'),
(715, 44, 325, 0, 0, 'Fixomull Transparent Tape', 1130, '', 'Fixomull® transparent is a transparent and waterproof polyurethane film coated with a very skin-friendly polyacrylate adhesive. The waterproof film offers optimal protection for the wound. It is waterproof and a bacterial barrier. Its semi-permeable structure allows the skin to breathe thus reducing the risk of macerations. The extra-thin film conforms like a second skin to the contours of the body, including joints and extremities. The transparency of the film keeps the dressing inconspicuous and allows visual inspection of the wound environment at all times. Fixomull® transparent is easy to apply due to its innovative application system.', '2a9f50a311dfc44bf09636e96f15e4e6.jpg', 0, '0000-00-00 00:00:00'),
(716, 44, 326, 0, 0, 'Kendall Waterproof Tape', 1520, '', 'Kendall™ Waterproof Tape features a high tensile strength cloth backing that keeps moisture from penetrating to the skin or dressing.', 'f864765ffc79bf2ffa9cb47d82dd5795.jpg', 0, '0000-00-00 00:00:00'),
(717, 44, 326, 0, 0, 'Waterproof Adhesive Tape', 1450, '', 'Strong and economical waterproof tape\r\nCommon in first aid kits\r\nLatex free', 'bcf3451e40bbaac61d9bd7203e949413.jpg', 0, '0000-00-00 00:00:00'),
(718, 2, 3, 0, 0, 'Sheer Plastic Adhesive Bandages - Sterile', 4500, '', 'A sterile, ready to use protective dressing for minor cuts and abrasions\r\nManufactured of strong, sheer, ventilated plastic, coated with a long lasting adhesive\r\nNon-stick pad for comfort and fluid absorption\r\nPackaged in dispenser boxes for convenient handling\r\nLatex free', 'c3443e5a80b20fa392810f20ffdce3cd.jpg', 0, '0000-00-00 00:00:00'),
(719, 2, 3, 0, 0, 'Adhesive Fabric Bandages - Sterile', 900, '', 'Non-stick pad is highly absorbent and helps to cushion wound\r\nFlexible adhesive fabric stretches and conforms to body contours for effective and comfortable protection\r\nLatex free', 'c0d125fe3ef12fe94f74abc3d20200ef.jpg', 0, '0000-00-00 00:00:00'),
(720, 2, 3, 0, 0, 'Curad Sensitive Skin Bandages', 1900, '', 'Curad Sensitive Skin Bandage provides padded protection with a unique non-stick layer that is extra gentle on a healing wound. Curad bandages comfortable absorbent core absorbs fluid, protects and cushions wound from further injury.', 'd0862d10eb8070c3eee8366b334183d4.jpg', 0, '0000-00-00 00:00:00'),
(721, 2, 3, 0, 0, 'Fabric Adhesive, Adhesive Bandage, Knuckle Bands, 1.5" x 3"', 1800, '', 'Ideally suited for areas where flexibility is important. Absorbent, breathable island pad cushions and protects wound. Long lasting adhesive stays secure even when wet. Latex-Free. Sterile.', '4c1611da4bbdd905f773e7640d7d75be.jpg', 0, '0000-00-00 00:00:00'),
(722, 2, 3, 0, 0, 'Fabric Adhesive, Adhesive Bandage, Strips, 2" x 4"', 200, '', 'Latex free. Decorated bandages offer the same high quality protection as our plastic bandages including the non-stick pad to protect the wound. Easy to open and apply. Stays secure - even when wet.', 'ec89115c5d2721e9805794364f92f999.jpg', 0, '0000-00-00 00:00:00'),
(723, 2, 3, 0, 0, 'Despicable Me 2 Bandage.75" Strips, Latex Free (LF)', 1500, '', 'Latex free. Decorated bandages offer the same high quality protection as our plastic bandages including the non-stick pad to protect the wound. Easy to open and apply. Stays secure - even when wet.', 'c4c770d9ae0d779ed3a8081630cfad82.jpg', 0, '0000-00-00 00:00:00'),
(724, 2, 3, 0, 0, 'Angry Birds Bandage, .75" Strips, Latex Free (LF)', 1400, '', 'MDS  is a leading manufacturer of cohesive flexible bandages for the animal health market. While at one time only one or two brand names were known in the self-adhering bandages arena, MDS GuardFlex-ET/LF and VetFlex have arrived to compete successfully. They have changed the landscape of cohesive bandages and are also to stay. EasyTear technology in those cohesive elastic bandages,which means no scissors or clippers are needed;water-proof, hand-tear, making application quick and easy.', 'd5c7b13ad91b14f2e54974f98e87e0f0.jpg', 0, '0000-00-00 00:00:00'),
(725, 2, 3, 0, 0, 'Tourniquet Latex Free 1" x 18"', 1100, '', '', '6147e9d0904aac6abcfe9de100342f63.jpg', 0, '0000-00-00 00:00:00'),
(726, 2, 4, 0, 0, 'Curity Character Bandages', 5000, '', 'Fun and colorful Looney Tunes and zoo character designs make bandages more appealing to kids', '0b65ed97b684ebb6cb1d3147518e74fe.jpg', 0, '0000-00-00 00:00:00'),
(727, 2, 4, 0, 0, 'My Little Pony Adhesive Bandage 3/4" x 3" Stat', 4500, '', 'Adhesive bandages imprinted with either cheerful cartoons or bright neon colors.\r\nVented to help prevent skin maceration. Highly absorbent non-stick pad provides a moist environment for proper wound healing.\r\nEach bandage individually wrapped and sterilized to provide maximum protection.\r\nLatex free.', '5d88353a427e4d000de780ce8a8bb30c.jpg', 0, '0000-00-00 00:00:00'),
(728, 2, 7, 0, 0, 'Profore Four Layer Bandage System', 1520, '', '', '9e466900ef3fb3ad89637db19707e876.jpg', 0, '0000-00-00 00:00:00'),
(729, 2, 7, 0, 0, 'Compress Bandages - Sterile', 1230, '', 'Ideal pressure bandages for first aid and field use\r\n Individually poly bagged\r\n Bulk packaged', 'a692ccf3edfb61317f809f08f34d0ced.jpg', 0, '0000-00-00 00:00:00'),
(730, 2, 15, 0, 0, 'Curity Unna Boot Bandage', 1200, '', 'Curity™ Unna Boot Bandage is formulated with nonhardening zinc oxide paste which allows the bandage to remain flexible.', '18e6b52cb6adea9b447e0952e16403ea.jpg', 0, '0000-00-00 00:00:00'),
(731, 35, 90, 0, 0, 'Ultrasound Transducer Probe Covers - Non-Sterile', 2400, '', '', 'a92f5b68be637cef1d447deb324621d6.jpg', 0, '0000-00-00 00:00:00'),
(732, 35, 90, 0, 0, 'US 1000 3rd Edition Portable Ultrasound Unit with Three Power Settings', 1200, '', '', 'e8c583b5d60ad64b6ca1458eab9000d7.jpg', 0, '0000-00-00 00:00:00'),
(733, 35, 90, 0, 0, 'SoundCare Plus Professional Ultrasound with 2 Applicators', 2100, '', '', 'ddb4f48c77a020c5b3553605c51c2f82.jpg', 0, '0000-00-00 00:00:00'),
(734, 35, 90, 0, 0, 'Aquasonic 100 Ultrasound Transmission Gel, 0.25 Liter Dispenser', 2000, '', '', 'd68a511440acef88b04cdc9505b8ec25.jpg', 0, '0000-00-00 00:00:00'),
(735, 35, 90, 0, 0, 'Pro Advantage Ultrasound Transmission Gel', 2600, '', 'Thick, no-slip formula eliminates air between the transducer and skin offering exceptional coupling efficiency for more effective treatment and diagnosis.\r\nFormulated to be acoustically correct for the broad range of frequencies used in medical ultrasound applications.\r\nNon-irritating hypoallergenic formula will not sting or chafe patient tissue.\r\nSalt-free and formaldehyde-free.\r\nWater soluble formula prevents damage to equipment or clothing.', '777fb187fef28562f097ed3ff909f9c3.jpg', 0, '0000-00-00 00:00:00'),
(736, 35, 90, 0, 0, 'Polysonic Ultrasound Gal & Lotion', 1400, '', 'Multi-purpose ultrasound lotion with superior coupling efficiency in a pleasing cosmetic quality base. Recommended for all ultrasound procedures when a lotion is preferred. Also available, Polysonic Ultrasound Lotion.', '911bbaded9f06fe4de669deb851f1e32.jpg', 0, '0000-00-00 00:00:00'),
(737, 35, 90, 0, 0, 'SoundCare Plus Replacement Head - Wand, 1cm head', 1600, '', '', '6397e0b629b9155c5a31eab6fcfd3ae3.jpg', 0, '0000-00-00 00:00:00'),
(738, 35, 90, 0, 0, 'Chattanooga Intelect Transport Combination Stim with Ultrasound', 1800, '', 'Its lightweight design, battery powered option and custom carrying bag allow you to conveniently take the clinic out of the clinic. 5cm² soundhead is included with the unit with the ability to provide electrotherapy treatment.', '7728e58bd2cacbc3bfd63341c9f95c7c.jpg', 0, '0000-00-00 00:00:00'),
(739, 35, 235, 0, 0, 'Progressive Incline Boards', 2100, '', '', '45e356f1ca9beb2c34a7d36da46ba78f.jpg', 0, '0000-00-00 00:00:00'),
(740, 35, 235, 0, 0, 'TheraBand Rocker and Wobble Boards', 2400, '', 'TheraBand® Rocker and Wobble Boards offer an unstable and sensory-stimulating surface designed to facilitate balance and proprioceptive training and automatic postural reactions. The square Rocker Board and round Wobble Board provide the higher end of the TheraBand System of Progressive Balance Training for rehab, post-rehab conditioning, and fitness applications.\r\n\r\nWhile the Rocker Board allows for one plane of instability at a time, the Wobble Board provides multiple planes of instability for the most challenging training.', '0fec541a0158fe68b6e86150af08953f.jpg', 0, '0000-00-00 00:00:00'),
(741, 35, 235, 0, 0, 'Thera-Band Stability Trainers', 1300, '', 'Thera-Band® Stability Trainers are oval-shaped, color-coded pads supplied in three densities to provide a progressive system of balance training for rehab, post-rehab conditioning and fitness applications.\r\nThe Green (Firm, Beginner) and Blue (Soft, Intermediate) pads are molded in closed-cell foam with a ridged surface.', '2eabdcad9c1c6b7503065997ceccb13f.jpg', 0, '0000-00-00 00:00:00'),
(742, 35, 236, 0, 0, 'Theraband Band Loops', 3200, '', 'TheraBand™ Band Loops for the first time provide continuous loop elastic bands in the same colors and resistances as authentic TheraBand™ System of Progressive Resistance.\r\n\r\nThey feature 4 resistance levels, including Yellow, Red, Green, and Blue supplied in 3 lay flat lengths of 8", 12" and 18".', '0678b68b41209e8398151e10f69f24c2.jpg', 0, '0000-00-00 00:00:00'),
(743, 38, 264, 0, 0, '3M Attest Biological Indicators and Test Packs', 250, '', 'Biological indicators are the only method that indicates the sterilization process was effective and the spores were killed. A nonpathogenic buthighly resistant spore, Geobacillus stearothermophilus, is used to provide a maximum challenge to the steam sterilization process.', 'd16ea0818e9251c0216248f6ec5cd705.jpg', 0, '0000-00-00 00:00:00'),
(765, 35, 79, 0, 17, 'Axelgaard Valutrode 2", Round Fabric Top Electrodes', 1600, '', 'ValuTrode® Fabric Carbon Film reusable electrodes are an economical way to get superior conductivity. ValuTrodes® afford first-rate conformity, optimum distribution of current and a Multi- Stick® patented 2-layer adhesive gel which eliminates performance problems associated with single-layer gels.', '4ba4b146dc58cdb96e31b812bbb012ad.jpg', 0, '0000-00-00 00:00:00'),
(766, 21, 173, 0, 20, 'Drainage Bags, Anti-Reflux Chamber, 2000ml', 1800, '', 'Latex-free and bacteriostatic drainage bags are also available. The bacteriostatic collection bag is impregnated with a novel antimicrobial agent that resists pathogens commonly associated with CAUTIs.\r\n\r\nOur drainage bags are available in a wide range of sizes including larger capacities.', '811ec1b957dc7a00938083a2ebc1bc50.jpg', 0, '0000-00-00 00:00:00'),
(769, 9, 39, 0, 23, 'Hemoccult II Sensa Single Slides Fob Test', 1600, '', 'The Hemoccult II SENSA test is a rapid, convenient and qualitative method for detecting fecal occult blood which may be indicative of gastrointestinal disease. It is not a test for colorectal cancer or any other specific disease. Hemoccult II SENSA is the enhanced Hemoccult product that provides improved readability and higher clinical sensitivity over regular Hemoccult and other FOBTs. Hemoccult II SENSA has been proven to give the highest clinical sensitivity readings (92%) 1,2 and offers the ability to find more true positives of occult blood. Since polyps and cancer may bleed intermittently, Hemoccult II SENSA triple slide products are designed so patients can collect serial specimens over 3 days, increasing the probability of detecting hidden blood from polyps and cancer.', '96daa719a15aa3512ada97a68310109e.jpg', 0, '0000-00-00 00:00:00'),
(791, 30, 213, 0, 27, 'Biofreeze Pain Relieving Gel', 2650, '', 'Traditional thinking is that the pain-relieving mechanism of action of menthol - the active ingredient in Biofreeze Pain Reliever - results from a counter-irritant effect. Simply put, a counter-irritant has an effect of overriding noxious pain signals traveling to the brain through a process modulated between pain-transmitting and non-pain transmitting neurons. This process, known as "gate control" or "gating," was first described by Melzak and Wall.', '5bba97544534bd6f45502b559a893b58.jpg', 0, '0000-00-00 00:00:00'),
(798, 1, 1, 1, 2, 'This is Product Name..', 1205, '', '', '26e6c94f4424327af03303bbd4e754af.jpg', 12, '2017-02-23 11:07:22'),
(800, 0, 7, 14, 6, 'duronto', 3, 'admin', 'this is product  description', '0f523c3b97d3176337f4eace802afabd1.jpg', 0, '2017-05-22 11:54:14'),
(801, 1, 2, 1, 0, 'Napa tablet', 700, 'epm13', 'Napa is best pain killer', '1.jpg', 0, '2017-05-24 09:19:01'),
(802, 32, 217, 0, 0, 'TEDIBAR SOAP', 300, 'admin', 'Tediabar soap is completely soap free and does not contain any harmful alkali. It has the same pH as that of normal skin (pH 5-6). It is gentle and effectively cleanses deep into the pores, without causing dryness. Tedibar soap stabilizes the biological protective mantle of the skin and keeps it soft, supple and healthy. It has re-moisturizing effect and you can see your baby skin glow in a week.', 'b1.jpg', 0, '2017-05-30 05:26:26'),
(803, 32, 217, 11, 0, 'SPOO BABY SHAMPOO', 250, 'admin', 'Spoo Baby Shampoo is an emollient-based, gentle, soap-free, non-irritating shampoo which gently cleans babies hair and scalp and help in the management of common dry skin conditions. The shampoo is very mild and it does not burn the eyes of baby. Lathers well and washes off all the oil in one wash. It is a tear free shampoo.', 'b2.jpg', 0, '2017-05-30 05:56:13'),
(804, 32, 217, 0, 0, 'HEALTHVIT BATH & BODY BABY SOAP', 120, 'admin', 'Healthvit Bath & Body Baby Soap consists of ingredients like honey, aloe vera, pure almond oil extract as well as vitamin E,  this combination is indeed reliable because it not only would make the skin softer, healthier but also prevent dry patches and fade away the skin eruptions like acne and rashes.', 'b3.jpg', 0, '2017-05-30 06:00:30'),
(805, 32, 217, 0, 0, 'MOTHER SPARSH BABY WATER WIPES', 390, 'admin', 'Mother Sparsh WaterWipes are formulated specifically for your baby’s supple, soft & delicate skin. These are the only wipes that contain 98% pure water and aloe vera extract a natural moisturizer. Mother Sparsh Water Wipes don’t irritate skin instead it cleanses your baby’s sensitive skin without causing uneasiness, allergy, and infection. It is also helpful in preventing diaper rash caused due to skin irritation and bacterial infection.', 'b4.jpg', 0, '2017-05-30 06:02:18'),
(806, 32, 217, 0, 0, 'HIMALAYA GENTLE BABY WIPES', 350, 'admin', 'Himalaya Gentle Baby wipes are infused with the goodness of Aloe Vera and Indian Lotus extracts. Gentle Baby Wipes are mild enough to soothe baby''s bottoms during a diaper change. The wipes can also be used to gently cleanse baby''s skin. The natural ingredients ensure that baby remains bacteria-free throughout the day. Ideal for use when travelling.', 'b5.jpg', 0, '2017-05-30 06:03:43'),
(807, 32, 217, 0, 0, 'HIMALAYA BABYCARE KIT', 650, 'admin', 'Himalaya Babycare Kit is a complete basbycare kit for the newly born baby. Himalaya Babycare Kit contains Gentle baby shampoo (100 ml), Baby massage oil (100 ml), Diaper rash cream (20 g), Gentle baby soap (75 g), Baby lotion (100 ml), Baby powder (100 g) and Gentle baby wipes (12''s). ', 'b6.jpg', 0, '2017-05-30 06:10:38'),
(808, 32, 217, 0, 0, 'BODYGUARD ANTI-MOSQUITO BAND', 700, 'admin', 'For usage : The band when exposed to Air, releases fragrance to repel mosquitoes.  For maximum life, it is advised to use the band in Mosquito Infested Area & storing it back in Air Tight Pouches when back in mosquito free area to avoid wastage of oil/fragrance.  Daily use of 2 hours has been observed to give 20 days of effective Protection/Band.', 'b7.jpg', 0, '2017-05-30 06:11:42'),
(809, 32, 217, 0, 0, 'SANNAP BABY DIAPER DISPOSAL BAGS', 400, 'admin', 'SanNap Baby Diaper Disposal Bags provide a safer and more sanitary way to dispose of diapers. Bags seal in wetness and bacteria from soiled diapers and help control odour.', 'b8.jpg', 0, '2017-05-30 06:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `p_panel`
--

CREATE TABLE IF NOT EXISTS `p_panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `p_panel`
--

INSERT INTO `p_panel` (`id`, `username`, `password`, `status`) VALUES
(2, 'duronto', '12345', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `registrstion`
--

CREATE TABLE IF NOT EXISTS `registrstion` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(32) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(55) NOT NULL,
  `file` varchar(500) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `active` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `registrstion`
--

INSERT INTO `registrstion` (`id`, `fullname`, `mobile`, `address`, `email`, `password`, `file`, `gender`, `occupation`, `keyword`, `status`, `active`) VALUES
(30, 'Solaman Badsha', '01814944730', 'Comilla dhaka', 'shagor.ahmed374@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01.jpg', 'male', 'Job Holder', 'c2626d850c80ea07e7511bbae4c76f4b', 1, 1),
(50, 'Gateway Group', '01766666685', 'dhaka', 'cloudnumber0707@gmail.com', '25f9e794323b453885f5181f1b624d0b', './assets/u_image/asasa.jpg', 'male', 'job holder', '291597a100aadd814d197af4f4bab3a7', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET latin1 NOT NULL,
  `position` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `image`, `position`) VALUES
(1, 'PharmacyBanner.jpg', ''),
(2, 'red-heart-and-cardiac-health-monitoring-web-header.jpg', ''),
(3, 'Pharmacy.jpg', ''),
(4, 'banner8.jpg', ''),
(5, 'medical-doctor-stethoscope-and-office-sign-web-header.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `subcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcat_catid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `subcategory` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`subcat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=374 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `subcat_catid`, `subcategory`) VALUES
(1, '1', 'For Patient'),
(2, '1', 'For Staff'),
(3, '2', 'Adhesive Banda'),
(4, '2', 'Character Band'),
(5, '2', 'Cohesive'),
(6, '2', 'Compression'),
(7, '2', 'Compression Ba'),
(8, '2', 'Compression Ba'),
(9, '2', 'Compression Bandages Systems'),
(10, '2', 'Elastic Bandages'),
(11, '2', 'Elastic Net Dressings'),
(12, '2', 'Liquid Bandages'),
(13, '2', 'Plaster Bandages'),
(14, '2', 'Tubular Bandages'),
(15, '2', 'Unna boot'),
(16, '2', 'Zinc Paste'),
(17, '3', 'Accessories'),
(18, '3', 'Blood Collection Tubes'),
(19, '4', 'ECG / EKG Gel'),
(20, '4', 'ECG / EKG Paper'),
(21, '4', 'ECG / EKG Stethoscopes'),
(22, '4', 'Electrodes'),
(23, '5', 'Materials'),
(24, '5', 'Splinting System'),
(25, '5', 'Stockinettes'),
(26, '6', 'Anti Embolism'),
(27, '6', 'Arm Sleeves'),
(28, '6', 'Knee High'),
(29, '6', 'Mens Dress Socks'),
(30, '6', 'Pantyhose'),
(31, '6', 'Thigh High'),
(32, '8', 'Diabetic Strips'),
(33, '9', 'Audiometry'),
(34, '9', 'Audiometry Supplies'),
(35, '9', 'Blood Pressure'),
(36, '9', 'Blood Pressure Cuffs'),
(37, '9', 'Blood Pressure Monitors'),
(38, '9', 'Bulb Replacemnets'),
(39, '9', 'Diagnostic Accessories'),
(40, '9', 'Diagnostic Sets'),
(41, '9', 'Diagnostic Ultrasound'),
(42, '9', 'ECG Electrodes'),
(43, '9', 'ECG Supplies'),
(44, '9', 'Electrode Accessories'),
(45, '9', 'Opthalmoscopes / Otoscopres'),
(46, '9', 'Pen Lights'),
(47, '9', 'Printer Paper'),
(48, '9', 'PT/INR Tests'),
(49, '9', 'sphygmomanometers'),
(50, '9', 'Spirometry Supplies'),
(51, '9', 'Stethoscopes'),
(52, '9', 'Thermometer Accessories'),
(53, '9', 'Thermometers'),
(54, '9', 'Ultrasound Gel'),
(55, '9', 'Vaginal Speculas'),
(56, '9', 'Vital Signs'),
(57, '10', 'Clinical Products'),
(58, '10', 'Influenza Tests'),
(59, '10', 'Strep A'),
(60, '10', 'Urinalysis'),
(61, '11', 'Bathroom Safety'),
(62, '11', 'Crutch Accessories'),
(63, '11', 'Knee Walkers'),
(64, '11', 'Transport Chairs'),
(65, '11', 'Wheel Chair Cushions'),
(66, '12', 'Manuals'),
(67, '13', 'Chattanooga Accessories'),
(68, '13', 'Electrodes'),
(69, '13', 'Electrotherapy Wires'),
(70, '13', 'Iontophoresis Electrodes'),
(71, '13', 'Muscle Stimulators'),
(72, '13', 'Stim / Ultrasound Combo'),
(73, '13', 'TENS/EMS'),
(74, '13', 'Ultrasound'),
(75, '13', 'Ultrasound Gel'),
(76, '35', 'Balance Products'),
(77, '35', 'Band Loops'),
(78, '35', 'Compression Therapy'),
(79, '35', 'Electrotherapy'),
(80, '35', 'Exercise & Mobility'),
(81, '35', 'Exercise Bands'),
(82, '35', 'Exercise Equipment'),
(83, '35', 'Exercise Tubing'),
(84, '35', 'Iontophoresis'),
(85, '35', 'Kinesiology Tape'),
(86, '35', 'Muscle Stimulators'),
(87, '35', 'Sports / Rehab'),
(88, '35', 'Traction'),
(89, '35', 'Treatment Tables'),
(90, '35', 'Ultrasound'),
(91, '40', 'Abdominal Supports'),
(92, '40', 'Aircast/Procare Accessories'),
(93, '40', 'Ankle & Foot Suppports'),
(94, '40', 'Ankle Supports / Braces'),
(95, '40', 'Back Braces'),
(96, '40', 'Back Supports'),
(97, '40', 'Clavicle Support'),
(98, '40', 'Elbow Supports'),
(99, '40', 'Foot Support'),
(100, '40', 'Groin Supports'),
(101, '40', 'Hip Support'),
(102, '40', 'Knee Supports / Braces'),
(103, '40', 'Lumbar Support'),
(104, '40', 'Lumbar Supports'),
(105, '40', 'Maternity Supports'),
(106, '40', 'Neck Supports / Braces'),
(107, '40', 'Posture Supports'),
(108, '40', 'Rib Supports'),
(109, '40', 'Shoulder Supports'),
(110, '40', 'SI Belts / Sacroiliac Belts'),
(111, '40', 'Walking Boot / Brace'),
(112, '40', 'Wrist Sleeves & Thumb Supports'),
(113, '40', 'Wrist Support'),
(114, '47', 'Adhesive Removers'),
(115, '47', 'Alginates / Absorbers'),
(116, '47', 'Cadexomer Dressings'),
(117, '47', 'Cloth Dressings'),
(118, '47', 'Collagen Dressings'),
(119, '47', 'Composite / Island Dressings'),
(120, '47', 'Fillers'),
(121, '47', 'Foam Dressings'),
(122, '47', 'Honey Dressings'),
(123, '47', 'Hydrocellular Dressings'),
(124, '47', 'Hydrocolloid Dressings'),
(125, '47', 'Hydrofiber Dressings'),
(126, '47', 'Hydrogel'),
(127, '47', 'Moleskin'),
(128, '47', 'Non-Adhering Dressings'),
(129, '47', 'Paste'),
(130, '47', 'Scar Management'),
(131, '47', 'Silicone Dressings'),
(132, '47', 'Silver Dressings'),
(133, '47', 'Skin Closure'),
(134, '47', 'Transparent Film Dressings'),
(135, '47', 'Wound Cleansers'),
(136, '47', 'Wound Closure'),
(137, '47', 'Wound Closure Strips'),
(138, '47', 'Wound Contact Layers'),
(139, '47', 'Wound Gel'),
(140, '4', 'Accessories & Supplies '),
(141, '14', 'Antibiotic Ointments '),
(142, '14', 'CPR '),
(143, '15', 'Latex '),
(144, '15', 'Nitrile '),
(145, '15', 'Compliance '),
(146, '15', 'Vinyl '),
(147, '16', 'Carts '),
(148, '16', 'Compliance '),
(149, '16', 'Equipment & Furniture '),
(150, '16', 'Exam Tables '),
(151, '16', 'Prep Pads / Swabsticks / Applicators '),
(152, '16', 'Sharps Containers '),
(153, '16', 'Stools '),
(154, '17', 'Cover Sponges '),
(155, '17', 'Gauze Bandage Rolls '),
(156, '17', 'Gauze Pads '),
(157, '17', ' Impregnated Gauze '),
(158, '17', 'Non-Sterile Gauze '),
(159, '17', 'Sponges '),
(160, '17', 'Tubular Gauze '),
(161, '18', 'Cold Pack Wrap '),
(162, '18', 'Cold Packs '),
(163, '18', 'Heating Pad Accessories '),
(164, '18', 'Hydrocollator Accessories '),
(165, '18', 'Hot Packs '),
(166, '18', 'Hot Packs Terry Covers '),
(167, '18', 'Hot Therapy '),
(168, '20', ' Underwear '),
(169, '20', 'Underpads '),
(170, '20', 'Pants '),
(171, '20', ' Briefs '),
(172, '21', 'Soaps/Foam/Lotion '),
(173, '21', 'Sharps/Waste Containers '),
(174, '21', 'Hand Sanitizers '),
(175, '21', 'Hand Hygiene '),
(176, '21', 'Cleaners / Disinfectants '),
(177, '22', 'Staple Removers '),
(178, '22', 'Pill Crushers & Splitters '),
(179, '22', 'Disposable Scalpels '),
(180, '22', 'Blades '),
(181, '23', 'Stopcocks '),
(182, '23', ' IV Start Kits '),
(183, '23', ' IV Solutions '),
(184, '23', ' IV Catheters '),
(185, '23', ' IV Adminastration Sets'),
(186, '23', ' Accessories '),
(187, '24', 'Air Fresheners '),
(188, '25', 'Sample Collection & Processing '),
(189, '25', 'Miscellaneous '),
(190, '25', 'Drape Sheets'),
(191, '25', 'Containers '),
(192, '25', 'Blood Collection '),
(193, '26', 'Sun Screen '),
(194, '26', 'Skin Care '),
(195, '27', 'Massagers '),
(196, '27', 'Massage Accessories '),
(197, '27', ' Lotions / Creams / Gels '),
(198, '27', 'Gel Warmers '),
(199, '29', 'Rings and Paste / Protectors '),
(200, '29', 'Skin Barriers / Wafers '),
(201, '29', 'Stoma Caps '),
(202, '29', 'Two piece Pouches '),
(203, '29', ' One piece Pouches '),
(204, '29', ' Odor Eliminators '),
(205, '29', 'Adhesives '),
(206, '29', 'Adhesive Removers '),
(207, '29', 'Accessories '),
(208, '29', '1 Piece Systems '),
(209, '30', 'Allergy '),
(210, '30', 'Anesthetics '),
(211, '30', ' Antacid '),
(212, '30', 'Cough Syrup '),
(213, '30', 'Pain Relief '),
(214, '31', 'Beds / Mattress & Accessories '),
(215, '31', 'Safety Supplies '),
(216, '31', 'Wart Remover '),
(217, '32', 'Baby Care '),
(218, '32', 'Bathing '),
(219, '32', 'Bedside Care '),
(220, '32', 'Deodorant '),
(221, '32', ' Enema & Colon Care '),
(222, '32', ' Lubricating Jelly '),
(223, '32', ' Nail Care '),
(224, '32', 'Oral Care'),
(225, '32', 'Personal Care '),
(226, '32', 'Protectors '),
(227, '32', 'Safety Alarms '),
(228, '32', 'Shaving '),
(229, '32', ' Tape Measure '),
(230, '32', 'Wipes '),
(231, '34', 'Ear-Eye-Nose Drugs '),
(232, '34', ' EZ Browse '),
(233, '34', 'Over the Counter '),
(234, '34', 'Rx Only '),
(235, '35', 'Balance Products '),
(236, '35', 'Band Loops '),
(237, '35', 'Compression Therapy '),
(238, '35', 'Electrotherapy '),
(239, '35', 'Exercise & Mobility '),
(240, '35', ' Exercise Bands '),
(241, '35', 'Exercise Equipment '),
(242, '35', 'Exercise Tubing '),
(243, '35', 'Iontophoresis '),
(244, '36', 'Aerosol Therapy '),
(245, '36', ' Asthma '),
(246, '36', 'CPR '),
(247, '36', ' Oxygen Supplies '),
(248, '37', ' Barrier Ointments + Creams '),
(249, '36', 'Body Powder '),
(250, '36', 'Cleansers '),
(251, '36', 'Drapes / Towels '),
(252, '36', 'Dry Skin '),
(253, '36', 'Lip Care '),
(254, '36', 'Moisturizers '),
(255, '37', 'Ointments and Creams '),
(256, '37', 'Skin Prep '),
(257, '37', 'Skin Repair '),
(258, '37', 'Body Powder '),
(259, '37', 'Cleansers '),
(260, '37', 'Drapes / Towels '),
(261, '37', 'Drapes / Towels '),
(262, '37', 'Dry Skin '),
(263, '37', 'Moisturizers '),
(264, '38', 'Monitoring '),
(265, '39', 'Antioxidants '),
(266, '39', 'Anxiety/Stress/Mood '),
(267, '39', ' Blood Sugar '),
(268, '39', 'Cleanse/Detox '),
(269, '39', 'Digestion '),
(270, '39', ' Energy '),
(271, '39', ' General Health '),
(272, '39', 'Homeopathic Singles '),
(273, '39', ' Hormone Balance/Women''s Health '),
(274, '39', ' Immune '),
(275, '39', 'Menopause '),
(276, '39', ' Multi-Vitamins/Multi-Minerals '),
(277, '39', 'Skin Health - Therapeutic '),
(278, '39', 'Weight Management '),
(279, '40', 'Abdominal Supports '),
(280, '40', ' Aircast/Procare Accessories '),
(281, '40', ' Ankle & Foot Suppports '),
(282, '40', 'Ankle Supports / Braces '),
(283, '40', 'Back Braces '),
(284, '40', 'Back Supports '),
(285, '40', 'Clavicle Support '),
(286, '40', ' Drapes '),
(287, '40', 'Equipment '),
(288, '41', 'Drapes '),
(289, '41', 'Equipment '),
(290, '41', 'Minor Procedure Trays '),
(291, '41', 'Skin Marker '),
(292, '42', ' Absorbable '),
(293, '42', ' Non-Absorbable '),
(294, '42', 'Skin Marker '),
(295, '43', ' Feeding / Irrigation Syringes '),
(296, '43', 'IV Flush Syringes '),
(297, '43', 'Loss of Resistance Syringe '),
(298, '43', 'Misc. '),
(299, '43', 'Needles '),
(300, '43', 'Specialty Syringes '),
(301, '43', 'Syringe Accessories '),
(302, '43', 'Syringe Only '),
(303, '43', 'Syringes '),
(304, '45', 'Drainage Bags '),
(305, '45', 'Urinary Accessories '),
(306, '45', ' Urine Bags '),
(307, '46', 'Wheel Chairs '),
(308, '48', 'X-Ray Accessories '),
(309, '48', 'X-Ray Films '),
(310, '48', 'X-Ray Illuminators '),
(311, '48', 'X-Ray Processors '),
(312, '44', 'Athletic '),
(313, '44', ' Cloth "Silk" Tape '),
(314, '44', 'Cloth Surgical Tape '),
(315, '44', 'Dressing Retention Tape '),
(316, '44', ' Fabric Tapes '),
(317, '44', 'Paper Tape '),
(318, '44', 'Plastic Surgical Tape '),
(319, '44', 'Silicone Tape '),
(320, '44', 'Soft Cloth Tape '),
(321, '44', 'Adhesive Tape Removers '),
(322, '44', ' Plastic Surgical Tape '),
(323, '44', ' Silicone Tape '),
(324, '44', 'Soft Cloth Tape '),
(325, '44', ' Transparent Tape '),
(326, '44', 'Waterproof Tape '),
(328, '8', 'All Diabetes Care Products'),
(329, '8', 'Devices'),
(330, '8', 'Supplements'),
(331, '8', 'Herbal Supplements'),
(332, '50', 'Health Food & Drinks'),
(333, '50', 'Protein Supplements'),
(334, '50', 'Weight Management'),
(335, '50', 'Vitamins Minerals'),
(336, '50', 'Herbal Supplements'),
(337, '52', 'Health Monitors'),
(338, '52', 'Respiratory Care'),
(339, '52', 'Supports Braces'),
(340, '52', 'Doctor''s Corner'),
(341, '52', 'Surgicals'),
(342, '52', 'Other Equipments'),
(343, '53', 'Skin Care'),
(344, '53', 'Hair Care'),
(345, '53', 'Sexual Wellness'),
(346, '53', 'Elderly Care'),
(347, '53', 'Women Care'),
(348, '53', 'Baby - Child Care'),
(349, '53', 'Mother Care'),
(350, '53', 'Oral Care'),
(351, '53', 'Massage Relaxation'),
(352, '51', 'Weekly Super Saver Deals'),
(353, '51', 'Amway Herbalife'),
(354, '51', 'Himalaya Herbals'),
(355, '51', 'SBL Homeopathy'),
(356, '51', 'Patanjali'),
(357, '51', 'Healthy Hair'),
(358, '54', 'Stomach Care'),
(359, '54', 'Cardiac Care'),
(360, '54', 'Bone, Joint & Muscle Care'),
(361, '54', 'Diabetes Care'),
(362, '54', 'Pain Relief'),
(363, '54', 'Eye & Ear Care'),
(364, '54', 'Incontinence'),
(365, '54', 'First Aid'),
(366, '54', 'Cold & Cough'),
(367, '54', 'Fever'),
(368, '54', 'Liver Care'),
(369, '54', 'Kidney Care'),
(370, '54', 'Thyroid Care'),
(371, '54', 'Mind Care'),
(372, '54', 'Rectum & Anal Care'),
(373, '54', 'Smoking Cessation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) NOT NULL,
  `comment` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `date`, `user_id`, `comment`) VALUES
(1, '2017-05-22 04:58:24', 30, 'hey\r\n'),
(2, '2017-05-22 05:07:09', 30, 'hello'),
(3, '2017-05-22 05:27:34', 30, ''),
(4, '2017-05-22 05:28:41', 30, 'ggfdgfsdgds'),
(5, '2017-05-24 07:18:24', 50, 'i am not get my medicine yet.'),
(6, '2017-05-24 07:25:02', 50, 'pls as soon as possible\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prescription`
--

CREATE TABLE IF NOT EXISTS `tbl_prescription` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `details` varchar(200) NOT NULL,
  `prescription` varchar(100) NOT NULL,
  `user_id` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_prescription`
--

INSERT INTO `tbl_prescription` (`id`, `date`, `details`, `prescription`, `user_id`) VALUES
(1, '0000-00-00 00:00:00', 'hello', 'assets/prescription/14906936_1152553481460195_5942606258711366120_n1.jpg', 30),
(2, '2017-05-24 07:17:38', 'hello guys pls send my medicine quickly.', 'assets/prescription/prescriptionnew.png', 50);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
