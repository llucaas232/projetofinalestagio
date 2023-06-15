-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `user` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `stock` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whocreated` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whencreated` date NOT NULL,
  `highlight` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Sementes de alfazema',0.79,'17','C:\\Users\\lucas\\Desktop\\fotosprojeto\\foto1.jpg','Sementes de alfazema/lavanda, conhecida pela sua cor roxa e cheiro característico.','Rodrigo','2023-06-14','sim'),(2,'Sementes de Morango',0.89,'26','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar2.png','Sementes de morango, alimento doce, rico em nutrientes e saudável.','Lucas','2023-06-14','nao'),(3,'Sementes de manjericão',0.79,'20','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar3.png','Manjericão do mais verde possivel, sempre benéfico á saúde!','Lucas','2023-06-14','Sim'),(4,'Sementes de girassol',1.19,'30','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar4.png','Girassol, uma flor linda e autónoma, fama por seguir a luz do Sol.','Rodrigo','2023-06-14','nao'),(5,'Sementes de orégãos',0.79,'48','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar5.png','Sementes de oregãos, muito utilizados na cozinha do Mediterrâneo e também para fazer alguns medicamentos antigos.','Rodrigo','2023-06-14','nao'),(6,'Semente de coentro',1.19,'22','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar6.png','Sementes de coentro, usada como tempero ou condimento, exala odor característico.','Rodrigo','2023-06-14','nao'),(7,'Semente de quiabo',1.24,'65','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar7.png','Sementes de quiabo, alimento usado em culinária antes da maturação. ','Lucas','2023-06-14','nao'),(8,'Semente de alecrim',2.09,'21','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar8.png','Sementes de alecrim,  que possui diversos benefícios à saúde.','Lucas','2023-06-14','sim'),(9,'Semente de brócolos',1.19,'11','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar9.png','Sementes de brócolos, alimento saudável utilizado em diversos tipos de salada.','Lucas','2023-06-14','sim'),(20,'Semente de tomate coração de boi',1.19,'19','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar10.png','Com IVA\nUm favorito nacional pelo seu tamanho e formato! Um tomate com sabor e textura incríveis e poucas sementes.','Rodrigo','2023-06-14','nao'),(21,'Sementes de pimento CAYENNE',1.99,'12','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar11.png','A pimenta cayenne é hoje uma das variedades mais cultivadas na Ásia. Tem um aroma fumado e pungente e um calor intenso.\n','Rodrigo','2023-06-14','nao'),(22,'Semente de cravo da índia',1.19,'4','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar12.png','O cravo da índia ajuda a combater a gengivite, pois possui eugenol na sua composição com ação analgésica e anti-inflamatória, ajudando a diminuir a dor.\n','Rodrigo','2023-06-14','nao'),(23,'Semente de amor perfeito',1.29,'1','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar13.png','A flor do amor perfeito significa romantismo e amor duradouro, está associada à reflexão, pensamento e lembranças amorosas.\n','Lucas','2023-06-14','nao'),(24,'Semente de couve flor',1.19,'23','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar14.png','A couve flor é um alimento rico em nutrientes e pode ser consumido de várias formas.','Lucas','2023-06-14','nao'),(25,'Semente de pepino',1.19,'12','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar15.png','O pepino é um diurético natural, ajudando na dissolução de cálculos renais.','Lucas','2023-06-14','nao'),(26,'Semente de cenoura',1.19,'6','C:\\Users\\lucas\\Desktop\\fotosprojeto\\Capturar16.png','A cenoura é um legume rico em nutrientes, podendo ser comida crua, inteira ou em salada.','Lucas','2023-06-14','nao');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `id` int NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15 11:32:35
