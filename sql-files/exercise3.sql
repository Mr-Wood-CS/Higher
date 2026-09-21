SET NAMES utf8mb4;

-- Question1

DROP TABLE IF EXISTS `Question1`;

CREATE TABLE `Question1` (
  `pupilID` tinyint DEFAULT NULL,
  `Forename` varchar(6) DEFAULT NULL,
  `Surname` varchar(8) DEFAULT NULL,
  `test1` tinyint DEFAULT NULL,
  `test2` tinyint DEFAULT NULL,
  `test3` tinyint DEFAULT NULL,
  `test4` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `Question1` VALUES
    (1,'Jane','Smith',9,7,8,6),
    (2,'Duncan','Scott',10,8,9,8),
    (3,'James','Webster',8,6,7,9),
    (4,'Julie','O\'Brian',7,6,9,5),
    (5,'Mary','Davis',9,9,7,5),
    (6,'Adam','Young',10,8,7,6),
    (7,'Holly','Jeffreys',8,7,6,9),
    (8,'Annie','McKay',7,8,8,10);

-- Question2

DROP TABLE IF EXISTS `Question2`;

CREATE TABLE `Question2` (
  `staffID` tinyint DEFAULT NULL,
  `Forename` varchar(7) DEFAULT NULL,
  `Surname` varchar(7) DEFAULT NULL,
  `hourlyRate` decimal(2,1) DEFAULT NULL,
  `hoursWorked` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `Question2` VALUES
    (1,'Kenneth','Brown',7.5,20),
    (2,'David','Gilmour',6.0,34),
    (3,'Ashley','Grant',6.0,35),
    (4,'Vickie','Moore',6.0,35),
    (5,'Laura','Green',4.5,20);

-- Question3

DROP TABLE IF EXISTS `Question3`;

CREATE TABLE `Question3` (
  `studentID` tinyint DEFAULT NULL,
  `Forename` varchar(5) DEFAULT NULL,
  `Surname` varchar(9) DEFAULT NULL,
  `test1` tinyint DEFAULT NULL,
  `test2` tinyint DEFAULT NULL,
  `test3` tinyint DEFAULT NULL,
  `test4` tinyint DEFAULT NULL,
  `test5` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `Question3` VALUES
    (1,'Bill','Johnstone',15,12,12,13,14),
    (2,'Harry','Smith',12,11,14,13,16),
    (3,'Ann','Clark',14,14,13,15,15),
    (4,'Billy','Johnston',10,9,12,11,14),
    (5,'Tom','Harris',14,14,14,12,14);

-- Question4

DROP TABLE IF EXISTS `Question4`;

CREATE TABLE `Question4` (
  `productID` tinyint DEFAULT NULL,
  `productName` varchar(8) DEFAULT NULL,
  `buyingPrice` tinyint DEFAULT NULL,
  `sellingPrice` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `Question4` VALUES
    (1,'Mars Bar',27,42),
    (2,'Snickers',31,25),
    (3,'Yorkie',32,45),
    (4,'Bounty',26,21);

-- Question5

DROP TABLE IF EXISTS `Question5`;

CREATE TABLE `Question5` (
  `productName` varchar(19) DEFAULT NULL,
  `productID` smallint DEFAULT NULL,
  `priceUK` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `Question5` VALUES
    ('Network Card',2,13.5),
    ('Optical Mouse',17,7.5),
    ('Basic Keyboard',1,7.0),
    ('Monitor',34,30.0),
    ('Flat Screen Monitor',102,75.0),
    ('3D Graphics Card',97,30.0);

-- Question6

DROP TABLE IF EXISTS `Question6`;

CREATE TABLE `Question6` (
  `fishType` varchar(11) DEFAULT NULL,
  `pricePerKilo` decimal(4,2) DEFAULT NULL,
  `numberOfKilos` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `Question6` VALUES
    ('Haddock',12.00,5.0),
    ('Cod',12.00,3.0),
    ('Plaice',6.00,4.0),
    ('Red Mullet',12.00,1.0),
    ('Salmon',10.00,8.5),
    ('Coley',7.00,1.0),
    ('Grey Mullet',5.50,2.5),
    ('Gurnard',5.75,3.0),
    ('Halibut',16.45,3.5),
    ('Herring',4.50,2.0),
    ('Huss',9.80,1.5),
    ('Lemon Sole',14.49,4.0),
    ('Mackeral',6.79,5.0),
    ('Monkfish',16.00,2.5),
    ('Sea Bass',9.75,6.0),
    ('Skate',9.95,3.0),
    ('Snapper',13.00,2.5),
    ('Trout',8.95,3.0),
    ('Anchovies',15.00,2.5),
    ('Sprats',4.00,0.5);
