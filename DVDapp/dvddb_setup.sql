-- Dumping database structure for dvddb
DROP DATABASE IF EXISTS `dvddb`;
CREATE DATABASE IF NOT EXISTS `database1`;
USE `database1`;

-- Dumping structure for table dvddb.collection
DROP TABLE IF EXISTS `collection`;
CREATE TABLE IF NOT EXISTS `collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL DEFAULT '0',
  `Genre` varchar(50) NOT NULL DEFAULT '0',
  `Year` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table dvddb.collection: ~2 rows (approximately)
INSERT INTO `collection` (`ID`, `Title`, `Genre`, `Year`) VALUES
	(1, 'Bad Boys 3', 'Action', 2019),
	(3, 'Batman - Dark Knight Rises', 'Action', 2011),
	(4, 'Mission Impossible 4', 'Action', 2018);


-- Dumping structure for table dvddb.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `apikey` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table dvddb.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`, `apikey`) VALUES
	(1, 'kaleem', '1234', 'abc123'),
	(2, 'admin', '1234', 'FbMTh0pDq');