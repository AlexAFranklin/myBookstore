-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: my_bookstore
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities4_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities4_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES ('Alex','ROLE_EMPLOYEE'),('alex1993','ROLE_ADMIN'),('BuffySummers','ROLE_CUSTOMER'),('Ehsan','ROLE_EMPLOYEE'),('Giles','ROLE_EMPLOYEE'),('hello_imauser','ROLE_CUSTOMER'),('john','ROLE_EMPLOYEE'),('mary','ROLE_EMPLOYEE'),('mary','ROLE_MANAGER'),('susan','ROLE_ADMIN'),('susan','ROLE_EMPLOYEE'),('susan','ROLE_MANAGER');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isbn` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` double NOT NULL,
  `genre` enum('NON_FICTION','GRAPHIC_NOVEL','FICTION','MYSTERY_THRILLER','ROMANCE','SCIENCE_FICTION','FANTASY','CLASSIC','HISTORICAL','YOUNG_ADULT') NOT NULL,
  `inventory` int NOT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'9781234567890','Book Title 1','Author 1','Publisher 1','Description 1',19.99,'FICTION',15,0),(2,'9782345678901','Book Title 2','Author 2','Publisher 2','Description 2',24.99,'MYSTERY_THRILLER',0,0),(3,'9783456789012','Book Title 3','Author 3','Publisher 3','Description 3',14.99,'ROMANCE',8,1),(4,'9784567890123','Book Title 4','Author 4','Publisher 4','Description 4',9.99,'NON_FICTION',19,1),(5,'9785678901234','Book Title 5','Author 5','Publisher 5','Description 5',29.99,'SCIENCE_FICTION',12,1),(6,'934875983749587','Book Title 6','Author 6','Publisher 6','Description 6',10,'GRAPHIC_NOVEL',20,0),(7,'83476587495','Book Title 7','Author 7 ','Publisher 7','Description 7',19.99,'FICTION',10,1),(8,'234-238794823','Hamlet','William Shakespeare','Harbrace Publishing','Very angry young dude.',9.99,'CLASSIC',20,1);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `status_update_date` date DEFAULT NULL,
  `status` enum('REQUEST','CANCELLED','FULFILLED') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `requests_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (1,4,'john','alex1993','2023-08-28',NULL,'FULFILLED'),(2,4,'john','alex1993','2023-08-28','2023-08-30','CANCELLED'),(3,5,'john',NULL,'2023-08-28','2023-08-30','CANCELLED');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `enabled` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Alex','$2a$10$CDYsqhgdfA2UNkkks2tcYOR0apkGzbpP81kxlAZkGYeAmT3yUv1XK','Alex Franklin','alexandra.a.franklin@gmail.com',1),('alex1993','$2a$10$lRetscLZz/AVn5X6.MjPj.I1oZVyYkbdE1iMS.ttl1ErrWp24XkjW','Alexandra Franklin','alexandra.a.franklin@gmail.com',1),('alexandra93','{noop}hello123','Alexandra Franklin','alexandra.a.franklin@gmail.com',1),('BuffySummers','$2a$10$a5SXIBlEaViN.ua44EOMTeS4xWx/OFHK5qQtkFE1uIeNGMvnsZhra','Buffy Summers','vampire.slayer@gmail.com',1),('Ehsan','$2a$10$zAyAM3cVFHoYmpbSlUCw4uq.HbfgAKSlm2f/aCm22zrQaydYaqWxu','Ehsan Motlagh','ehsan@gmail.com',1),('Giles','$2a$10$tXKtKD1xIUXPDMkCknOukOML95JC4xscrZv/BXMUcDcMsQk2dRmum','Rupert Giles','r.giles@gmail.com',1),('hello_imauser','$2a$10$aWd0JACsvhC/xvTEeK18juRa.kiKC9Amjknc.wITfYzx2fZCxFXWa','User Name','ima.user@gmail.com',1),('john','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q','john smith','john.smith@gmail.com',1),('mary','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q','mary sure','mary.sue@gmail.com',1),('susan','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q','susan jones','susan.jones@gmail.com',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-31 16:46:05
