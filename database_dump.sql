-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `ISBN` varchar(25) NOT NULL,
  `BOOK_TITLE` varchar(80) DEFAULT NULL,
  `CATEGORY` varchar(30) DEFAULT NULL,
  `RENTAL_PRICE` decimal(10,2) DEFAULT NULL,
  `Status` enum('Yes','No') DEFAULT NULL,
  `AUTHOR` varchar(30) DEFAULT NULL,
  `PUBLISHER` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('978-0-09-957807-9','A Game of Thrones','Fantasy',7.50,'Yes','George R.R. Martin','Bantam'),('978-0-14-044930-3','The Histories','History',5.50,'Yes','Herodotus','Penguin Classics'),('978-0-14-118776-1','One Hundred Years of Solitude','Literary Fiction',6.50,'Yes','Gabriel Garcia Marquez','Penguin Books'),('978-0-141-44171-6','Jane Eyre','Classic',4.00,'No','Charlotte Bronte','Penguin Classics'),('978-0-19-280551-1','The Guns of August','History',7.00,'Yes','Barbara W. Tuchman','Oxford University Press'),('978-0-307-37840-1','The Alchemist','Fiction',2.50,'Yes','Paulo Coelho','HarperOne'),('978-0-307-58837-1','Sapiens: A Brief History of Humankind','History',8.00,'No','Yuval Noah Harari','Harper Perennial'),('978-0-330-25864-8','Animal Farm','Classic',5.50,'Yes','George Orwell','Penguin Books'),('978-0-375-41398-8','The Diary of a Young Girl','History',6.50,'Yes','Anne Frank','Bantam'),('978-0-393-05081-8','A People\'s History of the United States','History',9.00,'Yes','Howard Zinn','Harper Perennial'),('978-0-393-91257-8','Guns, Germs, and Steel: The Fates of Human Societies','History',7.00,'Yes','Jared Diamond','W. W. Norton & Company'),('978-0-525-47535-5','The Great Gatsby','Classic',8.00,'Yes','F. Scott Fitzgerald','Scribner'),('978-0-553-29698-2','The Catcher in the Rye','Classic',7.00,'Yes','J.D. Salinger','Little, Brown and Company'),('978-0-679-76489-8','Harry Potter and the Sorcerer\'s Stone','Fantasy',7.00,'Yes','J.K. Rowling','Scholastic'),('978-0-7432-4722-4','The Da Vinci Code','Mystery',8.00,'Yes','Dan Brown','Doubleday'),('978-0-7432-7357-1','1491: New Revelations of the Americas Before Columbus','History',6.50,'No','Charles C. Mann','Vintage Books');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `BRANCH_NO` varchar(10) NOT NULL,
  `MANAGER_ID` varchar(10) DEFAULT NULL,
  `BRANCH_ADDRESS` varchar(30) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`BRANCH_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('B001','M101','123 Main St','+919099988676'),('B002','M102','456 Elm St','+919099988677'),('B003','M103','789 Oak St','+919099988678'),('B004','M104','567 Pine St','+919099988679'),('B005','M105','890 Maple St','+919099988680');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CUSTOMER_ID` varchar(10) NOT NULL,
  `CUSTOMER_NAME` varchar(30) DEFAULT NULL,
  `CUSTOMER_ADDRESS` varchar(30) DEFAULT NULL,
  `REG_DATE` date DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C101','Alice Johnson','123 Main St','2021-05-15'),('C102','Bob Smith','456 Elm St','2021-06-20'),('C103','Carol Davis','789 Oak St','2021-07-10'),('C104','Dave Wilson','567 Pine St','2021-08-05'),('C105','Eve Brown','890 Maple St','2021-09-25'),('C106','Frank Thomas','234 Cedar St','2021-10-15'),('C107','Grace Taylor','345 Walnut St','2021-11-20'),('C108','Henry Anderson','456 Birch St','2021-12-10'),('C109','Ivy Martinez','567 Oak St','2022-01-05'),('C110','Jack Wilson','678 Pine St','2022-02-25');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EMP_ID` varchar(10) NOT NULL,
  `EMP_NAME` varchar(30) DEFAULT NULL,
  `POSITION` varchar(30) DEFAULT NULL,
  `SALARY` decimal(10,2) DEFAULT NULL,
  `BRANCH_NO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `BRANCH_NO` (`BRANCH_NO`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`BRANCH_NO`) REFERENCES `branch` (`BRANCH_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E101','John Doe','Manager',60000.00,NULL),('E102','Jane Smith','Clerk',45000.00,NULL),('E103','Mike Johnson','Librarian',55000.00,NULL),('E104','Emily Davis','Assistant',40000.00,NULL),('E105','Sarah Brown','Assistant',42000.00,NULL),('E106','Michelle Ramirez','Assistant',43000.00,NULL),('E107','Michael Thompson','Manager',62000.00,NULL),('E108','Jessica Taylor','Clerk',46000.00,NULL),('E109','Daniel Anderson','Librarian',57000.00,NULL),('E110','Laura Martinez','Assistant',41000.00,NULL),('E111','Christopher Lee','Manager',65000.00,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

--
-- Table structure for table `issuestatus`
--

DROP TABLE IF EXISTS `issuestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuestatus` (
  `ISSUE_ID` varchar(10) NOT NULL,
  `ISSUED_CUST` varchar(30) DEFAULT NULL,
  `ISSUED_BOOK_NAME` varchar(80) DEFAULT NULL,
  `ISSUE_DATE` date DEFAULT NULL,
  `ISBN_BOOK` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ISSUE_ID`),
  KEY `ISSUED_CUST` (`ISSUED_CUST`),
  KEY `ISBN_BOOK` (`ISBN_BOOK`),
  CONSTRAINT `issuestatus_ibfk_1` FOREIGN KEY (`ISSUED_CUST`) REFERENCES `customer` (`CUSTOMER_ID`) ON DELETE CASCADE,
  CONSTRAINT `issuestatus_ibfk_2` FOREIGN KEY (`ISBN_BOOK`) REFERENCES `books` (`ISBN`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuestatus`
--

/*!40000 ALTER TABLE `issuestatus` DISABLE KEYS */;
INSERT INTO `issuestatus` VALUES ('IS101','C101','The Catcher in the Rye','2023-05-01','978-0-553-29698-2'),('IS102','C102','The Da Vinci Code','2023-05-02','978-0-7432-4722-4'),('IS103','C103','1491: New Revelations of the Americas Before Columbus','2023-05-03','978-0-7432-7357-1'),('IS104','C104','Sapiens: A Brief History of Humankind','2023-05-04','978-0-307-58837-1'),('IS105','C105','The Diary of a Young Girl','2023-05-05','978-0-375-41398-8');
/*!40000 ALTER TABLE `issuestatus` ENABLE KEYS */;

--
-- Table structure for table `returnstatus`
--

DROP TABLE IF EXISTS `returnstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returnstatus` (
  `RETURN_ID` varchar(10) NOT NULL,
  `RETURN_CUST` varchar(30) DEFAULT NULL,
  `RETURN_BOOK_NAME` varchar(80) DEFAULT NULL,
  `RETURN_DATE` date DEFAULT NULL,
  `ISBN_BOOK2` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`RETURN_ID`),
  KEY `ISBN_BOOK2` (`ISBN_BOOK2`),
  CONSTRAINT `returnstatus_ibfk_1` FOREIGN KEY (`ISBN_BOOK2`) REFERENCES `books` (`ISBN`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnstatus`
--

/*!40000 ALTER TABLE `returnstatus` DISABLE KEYS */;
INSERT INTO `returnstatus` VALUES ('RS101','C101','The Catcher in the Rye','2023-06-06','978-0-553-29698-2'),('RS102','C102','The Da Vinci Code','2023-06-07','978-0-7432-4722-4'),('RS103','C105','The Diary of a Young Girl','2023-06-08','978-0-375-41398-8'),('RS104','C108','The Histories','2023-06-09','978-0-14-044930-3'),('RS105','C110','A Game of Thrones','2023-06-10','978-0-09-957807-9');
/*!40000 ALTER TABLE `returnstatus` ENABLE KEYS */;

--
-- Dumping routines for database 'library'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-30 12:19:43
