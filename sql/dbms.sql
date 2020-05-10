SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `usertable` (
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `email` varchar(35) NOT NULL PRIMARY KEY,
  `password` varchar(16) NOT NULL,
  `street` varchar(10) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(25) NOT NULL,
  `phoneno` varchar(25) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `employee` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `email` varchar(35) NOT NULL,
  `empid` varchar(10) NOT NULL PRIMARY KEY,
  `password` varchar(10) NOT NULL,
  `street` varchar(10) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(25) NOT NULL,
  `phoneno` varchar(25) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `model` (
  `model_id` int(10) NOT NULL PRIMARY KEY,
  `model_name` varchar(16) NOT NULL UNIQUE,
  `seat_capacity` int(3) NOT NULL,
  `image` varchar(20) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `vehicle` (
  `vehicle_id` int(10) NOT NULL PRIMARY KEY,
  `vehicle_name` varchar(16) NOT NULL,
  `model_name` varchar(16) NOT NULL,
  `cost` int(3) NOT NULL,
  `owner_id` varchar(30) NOT NULL,
  `company` varchar(20) NOT NULL,
  `status` int(1) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `admin` (
  `uname` varchar(20) NOT NULL PRIMARY KEY,
  `password` varchar(16) NOT NULL,
  `deflt` int(1) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cart` (
  `vehicle_id` int(10) NOT NULL,
  `vehicle_name` varchar(16) NOT NULL,
  `model_name` varchar(16) NOT NULL,
  `cost` int(3) NOT NULL,
  `owner_id` varchar(30) NOT NULL,
  `company` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  `bill_id` int(10) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `sell`(
  `vehicle_id` int(10) NOT NULL,
  `vehicle_name` varchar(16) NOT NULL,
  `model_name` varchar(16) NOT NULL,
  `cost` int(3) NOT NULL,
  `owner_id` varchar(30) NOT NULL,
  `company` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  `bill_id` int(10) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `bill` (
  `bill_id` int(10) NOT NULL PRIMARY KEY,
  `noitems` int(10) NOT NULL,
  `empid` varchar(10) NOT NULL,
  `buyer_mail` varchar(30) NOT NULL,
  `total_cost` int(10) NOT NULL,
  `bors` varchar(1) NOT NULL,
  `date` DATE NOT NULL 
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` VALUES('admin','sad',0);
INSERT INTO `employee` VALUES('Administrator','A','admin@gmail.com','admin','sad','A','B','C','D','12347890');
INSERT INTO `employee` VALUES('Ronan','DSouza','ron@gmail.com','18BCE0782','sad','Kulshekar','Mangalore','Karnataka','India','9932781930');
INSERT INTO `employee` VALUES('Reece','DSouza','red@gmail.com','18BCE0483','sad','Kulshekar','Mangalore','Karnataka','India','9994710295');

INSERT INTO `usertable` VALUES('admin','a','admin@gmail.com','sad','A','B','C','D','12347890');
INSERT INTO `usertable` VALUES('Siddarth','Dahiya','sid@gmail.com','sad','AustinTown','Bangalore','Karnataka','India','7293107832');
INSERT INTO `usertable` VALUES('Sanchit','Kumawat','san@gmail.com','sad','Koramangala','Bangalore','Karnataka','India','988320199');

INSERT INTO `model` VALUES('12','SUV','6','suv.jfif');
INSERT INTO `model` VALUES('13','LUV','4','luv.jpg');
INSERT INTO `model` VALUES('14','SPORTS','2','sports.jfif');

INSERT INTO `vehicle` VALUES('1234','XYLO','SUV','1000000','admin','Mahindra',0);
INSERT INTO `vehicle` VALUES('1235','SWIFT','LUV','500000','admin','Maruthi',0);
INSERT INTO `vehicle` VALUES('1236','ECO SPORT','SPORTS','200000','admin','Ford',0);
INSERT INTO `vehicle` VALUES('1237','Jazz','SPORTS','300000','admin','Honda',0);
INSERT INTO `vehicle` VALUES('1238','Figo','LUV','200000','admin','Ford',0);






