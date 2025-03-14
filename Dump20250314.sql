-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: mini_proyecto_mysql
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `Asistencias`
--

DROP TABLE IF EXISTS `Asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asistencias` (
  `id_asistencia` int NOT NULL AUTO_INCREMENT,
  `id_mascota` int DEFAULT NULL,
  `id_persona` int DEFAULT NULL,
  `asistencia` tinyint(1) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  PRIMARY KEY (`id_asistencia`),
  UNIQUE KEY `id_asistencia` (`id_asistencia`),
  KEY `id_persona` (`id_persona`),
  KEY `id_mascota` (`id_mascota`),
  CONSTRAINT `Asistencias_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `Personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Asistencias_ibfk_2` FOREIGN KEY (`id_mascota`) REFERENCES `Mascotas` (`id_mascota`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asistencias`
--

LOCK TABLES `Asistencias` WRITE;
/*!40000 ALTER TABLE `Asistencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `Asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Eventos`
--

DROP TABLE IF EXISTS `Eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Eventos` (
  `id_evento` int NOT NULL AUTO_INCREMENT,
  `nombre` enum('Asignatura','Evento especial','Descanso') NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_evento`),
  UNIQUE KEY `id_evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Eventos`
--

LOCK TABLES `Eventos` WRITE;
/*!40000 ALTER TABLE `Eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mascotas`
--

DROP TABLE IF EXISTS `Mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mascotas` (
  `id_mascota` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_mascota`),
  UNIQUE KEY `id_mascota` (`id_mascota`),
  KEY `id_persona` (`id_persona`),
  CONSTRAINT `Mascotas_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `Personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mascotas`
--

LOCK TABLES `Mascotas` WRITE;
/*!40000 ALTER TABLE `Mascotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mochilas`
--

DROP TABLE IF EXISTS `Mochilas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mochilas` (
  `id_mochila` int NOT NULL AUTO_INCREMENT,
  `id_persona` int DEFAULT NULL,
  `tipo` enum('Grande','Pequeña') DEFAULT NULL,
  `descripción` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_mochila`),
  UNIQUE KEY `id_mochila` (`id_mochila`),
  UNIQUE KEY `id_persona` (`id_persona`),
  CONSTRAINT `Mochilas_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `Personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mochilas`
--

LOCK TABLES `Mochilas` WRITE;
/*!40000 ALTER TABLE `Mochilas` DISABLE KEYS */;
INSERT INTO `Mochilas` VALUES (1,1,'Grande','paraguas amarillo'),(2,2,'Grande','Libros de matemáticas, portátil, cuaderno, cargador, bolígrafo, gafas de sol'),(3,3,'Pequeña','Bocadillo, botella de agua'),(4,4,'Grande','Toalla, bañador, crema solar, gafas de natación, botella de agua'),(5,5,'Pequeña','Monedero, chicles, auriculares'),(6,6,'Grande','Cámara de fotos, trípode, libreta, bolígrafo, mapa de la ciudad'),(7,7,'Pequeña','Barra de granola, servilleta, teléfono'),(8,8,'Grande','Ropa de gimnasia, toalla, zapatillas deportivas, botella de agua, guantes de entrenamiento'),(9,9,'Grande','Ordenador portátil, ratón, cargador, libreta, bolígrafos, pendrive'),(10,10,'Pequeña','Pasaporte, billetes de avión, gafas de sol'),(11,11,'Grande','Bote de proteínas, batidora portátil, shaker, snacks saludables'),(12,12,'Pequeña','Cartera, teléfono, llaves del coche'),(13,13,'Grande','Ropa de montaña, brújula, cantimplora, linterna, barra energética'),(14,14,'Grande','Pijama, neceser con cepillo de dientes, perfume, cargador, libro'),(15,15,'Pequeña','Bocadillo, zumo en cartón, servilleta'),(16,16,'Grande','Herramientas básicas, cinta adhesiva, guantes de trabajo'),(17,17,'Pequeña','Estuche con bolígrafos y lápices, goma de borrar'),(18,18,'Grande','Maletín con documentos, bolígrafos, libreta, gafas de lectura'),(19,19,'Pequeña','Botella de agua, barra de cereales'),(20,20,'Grande','Tabla de dibujo, pinceles, acuarelas, lápices de colores'),(21,21,'Pequeña','Agenda, bolígrafo, notas adhesivas'),(22,22,'Grande','Saco de dormir, linterna, navaja multiusos, cuerda, mapa de senderismo'),(23,23,'Grande','animal de juguete amarillo lleno de babas'),(24,24,'Pequeña','Gafas, spray nasal, pastillas para la alergia'),(25,25,'Grande','Cargador de portátil, documentos importantes, tablet, bolígrafos'),(26,26,'Pequeña','Bálsamo labial, pañuelos, pastillas para la garganta'),(27,27,'Grande','Cámara de vídeo, micrófono, auriculares, trípode, libreta de notas'),(28,28,'Pequeña','Snacks, paquete de chicles, llaves de casa'),(29,29,'Grande','Botiquín de primeros auxilios, vendas, analgésicos, termómetro, guantes médicos'),(30,30,'Pequeña','Teléfono, auriculares, gafas de sol');
/*!40000 ALTER TABLE `Mochilas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participaciones`
--

DROP TABLE IF EXISTS `Participaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Participaciones` (
  `id_participación` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NOT NULL,
  `id_evento` int NOT NULL,
  PRIMARY KEY (`id_participación`),
  UNIQUE KEY `id_participación` (`id_participación`),
  KEY `id_persona` (`id_persona`),
  KEY `id_evento` (`id_evento`),
  CONSTRAINT `Participaciones_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `Personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Participaciones_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `Eventos` (`id_evento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participaciones`
--

LOCK TABLES `Participaciones` WRITE;
/*!40000 ALTER TABLE `Participaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `Participaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personas`
--

DROP TABLE IF EXISTS `Personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personas` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `tipo` enum('Estudiante','Profesor','Otro') NOT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `id_persona` (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personas`
--

LOCK TABLES `Personas` WRITE;
/*!40000 ALTER TABLE `Personas` DISABLE KEYS */;
INSERT INTO `Personas` VALUES (1,'Eugenio Young','Estudiante',20),(2,'Valeria Martín','Estudiante',21),(3,'Diego Suárez','Estudiante',21),(4,'Camila Rodríguez','Estudiante',23),(5,'Javier Ortega','Estudiante',27),(6,'Laura Fernández','Estudiante',29),(7,'Mateo Ramírez','Estudiante',32),(8,'Sofía Delgado','Estudiante',28),(9,'Marcos Herrera','Estudiante',30),(10,'Natalia Pérez','Estudiante',34),(11,'Lucas Morales','Estudiante',31),(12,'Andrea Castro','Estudiante',33),(13,'Pablo Vázquez','Estudiante',26),(14,'Martina Ruiz','Estudiante',38),(15,'Daniel Soto','Estudiante',29),(16,'Emma León','Estudiante',36),(17,'Hugo Rivas','Estudiante',30),(18,'Claudia Méndez','Estudiante',32),(19,'Samuel Torres','Estudiante',28),(20,'Isabella Navarro','Estudiante',40),(21,'Adrián Punisher','Profesor',30),(22,'Iratze Dictatorship','Profesor',26),(23,'Yeray Doggy','Profesor',50),(24,'Carolina Méndez','Profesor',47),(25,'Roberto Sánchez','Profesor',50),(26,'Adrián López','Otro',39),(27,'Meli Clean','Otro',42),(28,'Carlos Méndez','Otro',37),(29,'Diana Herrera','Otro',43),(30,'Eduardo Ríos','Otro',46);
/*!40000 ALTER TABLE `Personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Testimonios`
--

DROP TABLE IF EXISTS `Testimonios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Testimonios` (
  `id_testimonio` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripción` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_testimonio`),
  UNIQUE KEY `id_testimonio` (`id_testimonio`),
  UNIQUE KEY `id_persona` (`id_persona`),
  CONSTRAINT `Testimonios_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `Personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Testimonios`
--

LOCK TABLES `Testimonios` WRITE;
/*!40000 ALTER TABLE `Testimonios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Testimonios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-14  9:40:43
