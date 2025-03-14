-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mini_proyecto_mysql
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
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asistencias`
--

LOCK TABLES `Asistencias` WRITE;
/*!40000 ALTER TABLE `Asistencias` DISABLE KEYS */;
INSERT INTO `Asistencias` VALUES (180,NULL,1,1,'2025-03-10','09:05:00','16:30:00'),(181,NULL,2,1,'2025-03-10','09:00:00','16:20:00'),(182,NULL,3,1,'2025-03-10','08:55:00','16:40:00'),(183,NULL,4,1,'2025-03-10','09:10:00','16:50:00'),(184,NULL,5,1,'2025-03-10','09:02:00','16:35:00'),(185,NULL,6,1,'2025-03-10','08:50:00','16:45:00'),(186,NULL,7,1,'2025-03-10','09:07:00','16:25:00'),(187,NULL,8,1,'2025-03-10','09:03:00','16:30:00'),(188,NULL,9,1,'2025-03-10','09:01:00','16:40:00'),(189,NULL,10,1,'2025-03-10','09:04:00','16:35:00'),(190,NULL,11,1,'2025-03-10','09:06:00','16:50:00'),(191,NULL,12,1,'2025-03-10','09:00:00','16:20:00'),(192,NULL,13,1,'2025-03-10','09:08:00','16:45:00'),(193,NULL,14,1,'2025-03-10','09:02:00','16:30:00'),(194,NULL,15,1,'2025-03-10','09:05:00','16:40:00'),(195,NULL,16,1,'2025-03-10','09:03:00','16:35:00'),(196,NULL,17,1,'2025-03-10','09:07:00','16:25:00'),(197,NULL,18,1,'2025-03-10','09:01:00','16:50:00'),(198,NULL,19,1,'2025-03-10','09:04:00','16:30:00'),(199,NULL,20,1,'2025-03-10','09:00:00','16:45:00'),(200,NULL,21,1,'2025-03-10','09:06:00','16:20:00'),(201,NULL,22,1,'2025-03-10','09:02:00','16:40:00'),(202,NULL,23,1,'2025-03-10','09:05:00','16:35:00'),(203,NULL,24,1,'2025-03-10','09:03:00','16:50:00'),(204,NULL,25,1,'2025-03-10','09:07:00','16:25:00'),(205,NULL,26,1,'2025-03-10','09:01:00','16:30:00'),(206,NULL,27,1,'2025-03-10','09:04:00','16:45:00'),(207,NULL,28,1,'2025-03-10','09:00:00','16:20:00'),(208,NULL,29,1,'2025-03-10','09:06:00','16:40:00'),(209,NULL,30,1,'2025-03-10','09:02:00','16:35:00'),(210,1,1,1,'2025-03-11','09:05:00','16:50:00'),(211,2,2,1,'2025-03-11','09:00:00','16:20:00'),(212,3,3,1,'2025-03-11','08:55:00','16:35:00'),(213,4,4,1,'2025-03-11','09:10:00','16:00:00'),(214,5,5,1,'2025-03-11','09:02:00','16:05:00'),(215,6,6,1,'2025-03-11','08:50:00','16:05:00'),(216,7,7,1,'2025-03-11','09:07:00','16:25:00'),(217,8,8,1,'2025-03-11','09:03:00','16:20:00'),(218,9,9,1,'2025-03-11','09:01:00','16:15:00'),(219,10,10,1,'2025-03-11','09:04:00','16:15:00'),(220,11,11,1,'2025-03-11','09:06:00','16:05:00'),(221,12,12,1,'2025-03-11','09:00:00','16:20:00'),(222,13,13,1,'2025-03-11','09:08:00','16:00:00'),(223,14,14,1,'2025-03-11','09:02:00','15:55:00'),(224,15,15,1,'2025-03-11','09:05:00','16:00:00'),(225,16,16,1,'2025-03-11','09:03:00','16:15:00'),(226,17,17,1,'2025-03-11','09:07:00','16:05:00'),(227,18,18,1,'2025-03-11','09:01:00','16:00:00'),(228,19,19,1,'2025-03-11','09:04:00','16:20:00'),(229,20,20,1,'2025-03-11','09:00:00','16:20:00'),(230,21,21,1,'2025-03-11','09:06:00','16:20:00'),(231,22,22,1,'2025-03-11','09:02:00','16:00:00'),(232,23,23,1,'2025-03-11','09:05:00','17:35:00'),(233,24,24,1,'2025-03-11','09:03:00','16:10:00'),(234,25,25,1,'2025-03-11','09:07:00','16:05:00'),(235,26,26,1,'2025-03-11','09:01:00','16:10:00'),(236,27,27,1,'2025-03-11','09:04:00','16:45:00'),(237,28,28,1,'2025-03-11','09:00:00','16:20:00'),(238,29,29,1,'2025-03-11','09:06:00','16:10:00'),(239,30,30,1,'2025-03-11','09:02:00','16:15:00'),(240,NULL,1,1,'2025-03-12','09:05:00','16:30:00'),(241,NULL,2,1,'2025-03-12','09:00:00','16:20:00'),(242,NULL,3,1,'2025-03-12','08:55:00','16:40:00'),(243,NULL,4,1,'2025-03-12','09:10:00','16:50:00'),(244,NULL,5,1,'2025-03-12','09:02:00','16:35:00'),(245,NULL,6,1,'2025-03-12','08:50:00','16:45:00'),(246,NULL,7,1,'2025-03-12','09:07:00','16:25:00'),(247,NULL,8,1,'2025-03-12','09:03:00','16:30:00'),(248,NULL,9,1,'2025-03-12','09:01:00','16:40:00'),(249,NULL,10,1,'2025-03-12','09:04:00','16:35:00'),(250,NULL,11,1,'2025-03-12','09:06:00','16:50:00'),(251,NULL,12,1,'2025-03-12','09:00:00','16:20:00'),(252,NULL,13,1,'2025-03-12','09:08:00','16:45:00'),(253,NULL,14,1,'2025-03-12','09:02:00','16:30:00'),(254,NULL,15,1,'2025-03-12','09:05:00','16:40:00'),(255,NULL,16,1,'2025-03-12','09:03:00','16:35:00'),(256,NULL,17,1,'2025-03-12','09:07:00','16:25:00'),(257,NULL,18,1,'2025-03-12','09:01:00','16:50:00'),(258,NULL,19,1,'2025-03-12','09:04:00','16:30:00'),(259,NULL,20,1,'2025-03-12','09:00:00','16:45:00'),(260,NULL,21,1,'2025-03-12','09:06:00','16:20:00'),(261,NULL,22,1,'2025-03-12','09:02:00','16:40:00'),(262,NULL,23,1,'2025-03-12','09:05:00','16:35:00'),(263,NULL,24,1,'2025-03-12','09:03:00','16:50:00'),(264,NULL,25,1,'2025-03-12','09:07:00','16:25:00'),(265,NULL,26,1,'2025-03-12','09:01:00','16:30:00'),(266,NULL,27,1,'2025-03-12','09:04:00','16:45:00'),(267,NULL,28,1,'2025-03-12','09:00:00','16:20:00'),(268,NULL,29,1,'2025-03-12','09:06:00','16:40:00'),(269,NULL,30,1,'2025-03-12','09:02:00','16:35:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Eventos`
--

LOCK TABLES `Eventos` WRITE;
/*!40000 ALTER TABLE `Eventos` DISABLE KEYS */;
INSERT INTO `Eventos` VALUES (1,'Evento especial','2025-03-10','Carnaval, Todos el personal de Reboot se disfraza'),(2,'Asignatura','2025-03-10','todos los días 09:00 a 16:00, salvo que haya evento especial'),(3,'Asignatura','2025-03-11','todos los días 09:00 a 16:00, salvo que haya evento especial'),(4,'Asignatura','2025-03-12','todos los días 09:00 a 16:00, salvo que haya evento especial'),(5,'Descanso','2025-03-10','Todos los días 13:00 a 14:00'),(6,'Descanso','2025-03-11','Todos los días 13:00 a 14:00'),(7,'Descanso','2025-03-12','Todos los días 13:00 a 14:00'),(8,'Evento especial','2025-03-11','Día de las Mascotas, todos traen mascotas, Martes 14:00-16:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mascotas`
--

LOCK TABLES `Mascotas` WRITE;
/*!40000 ALTER TABLE `Mascotas` DISABLE KEYS */;
INSERT INTO `Mascotas` VALUES (1,1,'Luna','Perro'),(2,2,'Max','Gato'),(3,3,'Bella','Ave'),(4,4,'Charlie','Perro'),(5,5,'Simba','Gato'),(6,6,'Rocky','Perro'),(7,7,'Coco','Reptil'),(8,8,'Milo','Otro'),(9,9,'Nala','Gato'),(10,10,'Daisy','Ave'),(11,11,'Thor','Perro'),(12,12,'Bruno','Gato'),(13,13,'Maya','Perro'),(14,14,'Zeus','Otro'),(15,15,'Loki','Reptil'),(16,16,'Toby','Perro'),(17,17,'Kira','Gato'),(18,18,'Rex','Perro'),(19,19,'Lucy','Ave'),(20,20,'Bobby','Otro'),(21,21,'Leo','Perro'),(22,22,'Sasha','Gato'),(23,23,'Max y Cooper','Cachorros'),(24,24,'Chester','Reptil'),(25,25,'Balu','Otro'),(26,26,'Duke','Perro'),(27,27,'Zoe','Gato'),(28,28,'Ragnar','Reptil'),(29,29,'Nina','Otro'),(30,30,'Apollo','Ave');
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
  `descripcion` varchar(1000) DEFAULT NULL,
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
INSERT INTO `Mochilas` VALUES (1,1,'Grande','Paraguas amarillo, tabaco de liar, gorra, libreta, mechero, cepillo de dientes'),(2,2,'Grande','Libros de matemáticas, portátil, cuaderno, cargador, bolígrafo, gafas de sol'),(3,3,'Pequeña','Bocadillo, botella de agua'),(4,4,'Grande','Toalla, bañador, crema solar, gafas de natación, botella de agua'),(5,5,'Pequeña','Monedero, chicles, auriculares'),(6,6,'Grande','Cámara de fotos, trípode, libreta, bolígrafo, mapa de la ciudad'),(7,7,'Pequeña','Barra de granola, servilleta, teléfono'),(8,8,'Grande','Ropa de gimnasia, toalla, zapatillas deportivas, botella de agua, guantes de entrenamiento'),(9,9,'Grande','Ordenador portátil, ratón, cargador, libreta, bolígrafos, pendrive'),(10,10,'Pequeña','Pasaporte, billetes de avión, gafas de sol'),(11,11,'Grande','Bote de proteínas, batidora portátil, shaker, snacks saludables'),(12,12,'Pequeña','Cartera, teléfono, llaves del coche'),(13,13,'Grande','Ropa de montaña, brújula, cantimplora, linterna, barra energética'),(14,14,'Grande','Pijama, neceser con cepillo de dientes, perfume, cargador, libro'),(15,15,'Pequeña','Bocadillo, zumo en cartón, servilleta'),(16,16,'Grande','Herramientas básicas, cinta adhesiva, guantes de trabajo'),(17,17,'Pequeña','Estuche con bolígrafos y lápices, goma de borrar'),(18,18,'Grande','Maletín con documentos, bolígrafos, libreta, gafas de lectura'),(19,19,'Pequeña','Botella de agua, barra de cereales'),(20,20,'Grande','Tabla de dibujo, pinceles, acuarelas, lápices de colores'),(21,21,'Pequeña','Agenda, bolígrafo, notas adhesivas'),(22,22,'Grande','Saco de dormir, linterna, navaja multiusos, cuerda, mapa de senderismo'),(23,23,'Grande','Animal de juguete amarillo lleno de babas y mordiscos'),(24,24,'Pequeña','Gafas, spray nasal, pastillas para la alergia'),(25,25,'Grande','Cargador de portátil, documentos importantes, tablet, bolígrafos'),(26,26,'Pequeña','Bálsamo labial, pañuelos, pastillas para la garganta'),(27,27,'Grande','Cámara de vídeo, micrófono, auriculares, trípode, libreta de notas'),(28,28,'Pequeña','Snacks, paquete de chicles, llaves de casa'),(29,29,'Grande','Botiquín de primeros auxilios, vendas, analgésicos, termómetro, guantes médicos'),(30,30,'Pequeña','Teléfono, auriculares, gafas de sol');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participaciones`
--

LOCK TABLES `Participaciones` WRITE;
/*!40000 ALTER TABLE `Participaciones` DISABLE KEYS */;
INSERT INTO `Participaciones` VALUES (1,1,1),(2,1,3),(3,1,5),(4,2,2),(5,2,4),(6,3,1),(7,3,6),(8,4,3),(9,4,7),(10,5,2),(11,5,5),(12,5,8),(13,6,1),(14,6,4),(15,7,3),(16,7,6),(17,7,8),(18,8,2),(19,8,5),(20,9,1),(21,9,4),(22,9,7),(23,10,3),(24,10,6),(25,11,2),(26,11,5),(27,11,8),(28,12,1),(29,12,4),(30,13,3),(31,13,6),(32,13,7),(33,14,2),(34,14,5),(35,15,1),(36,15,4),(37,15,8),(38,16,3),(39,16,6),(40,17,2),(41,17,5),(42,17,7),(43,18,1),(44,18,4),(45,19,3),(46,19,6),(47,19,8),(48,20,2),(49,20,5),(50,21,1),(51,21,4),(52,21,7),(53,22,3),(54,22,6),(55,23,2),(56,23,5),(57,23,8),(58,24,1),(59,24,4),(60,25,3),(61,25,6),(62,25,7),(63,26,2),(64,26,5),(65,27,1),(66,27,4),(67,27,8),(68,28,3),(69,28,6),(70,29,2),(71,29,5),(72,29,7),(73,30,1),(74,30,4),(75,30,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Testimonios`
--

LOCK TABLES `Testimonios` WRITE;
/*!40000 ALTER TABLE `Testimonios` DISABLE KEYS */;
INSERT INTO `Testimonios` VALUES (1,1,'2025-03-12','Yo no fui el último en irme el martes y no sé nada del patito de goma, me quedé hasta tarde jugando con los perritos. Pueden revisar las Mochilas.'),(2,2,'2025-03-12','Recuerdo que el patito estaba en la mesa del profesor, pero luego ya no lo vi más.'),(3,3,'2025-03-12','Creo que alguien lo escondió por diversión. He visto a Marcos riéndose mucho cuando se mencionó.'),(4,4,'2025-03-12','Ayer vi a un grupo cerca del patito, pero no presté atención, estaba revisando mi móvil.'),(5,5,'2025-03-12','No sé nada del patito, pero en mi casa mi gato también roba cosas pequeñas.'),(6,6,'2025-03-12','No entiendo por qué están tan preocupados por un patito de goma, hay cosas más importantes.'),(7,7,'2025-03-12','Tal vez lo recogió el personal de limpieza, suelen llevarse objetos olvidados.'),(8,8,'2025-03-12','Escuché a alguien decir que el patito daba mala suerte. ¿Será que alguien lo tiró?'),(9,9,'2025-03-12','No vi nada raro, pero ayer escuché risas sospechosas cuando salimos del aula.'),(10,10,'2025-03-12','Yo solo quiero decir que hoy vi una oferta de hamburguesas, ¿alguien quiere ir después de clases?'),(11,11,'2025-03-12','A lo mejor se lo llevó algún profesor para gastarnos una broma.'),(12,12,'2025-03-12','No sé qué pasó, pero sí noté que Ana miraba mucho el patito antes de que desapareciera.'),(13,13,'2025-03-12','¿Podría ser que alguien lo haya puesto en una mochila por error?'),(14,14,'2025-03-12','Lo último que vi fue a Diego sosteniéndolo, pero no sé qué hizo después.'),(15,15,'2025-03-12','Quizá simplemente lo movieron de sitio y nadie se ha dado cuenta.'),(16,16,'2025-03-12','Yo vi a un perro cerca del aula esta mañana, ¿podría haberlo agarrado?'),(17,17,'2025-03-12','No sé nada del patito, pero ayer alguien dejó caer una bandeja en la cafetería.'),(18,18,'2025-03-12','¿Han revisado detrás del armario? A veces las cosas desaparecen ahí.'),(19,19,'2025-03-12','Tal vez fue una broma, hay gente a la que no le gustaba ese patito.'),(20,20,'2025-03-12','Yo ni siquiera sabía que había un patito de goma en el aula.'),(21,21,'2025-03-12','Sé que Falete estuvo en clase el martes durante el día de la mascota, Ese día me tuve que ir a las 16:00 y recuerdo haberlo visto'),(22,22,'2025-03-12','A lo mejor fue alguien que quería llamar la atención.'),(23,23,'2025-03-12','Escuché que alguien dijo que el patito estaba maldito, quizás lo tiraron.'),(24,24,'2025-03-12','¿Seguros de que existía el patito? Porque yo no recuerdo haberlo visto nunca.'),(25,25,'2025-03-12','Tal vez se cayó detrás de algún mueble.'),(26,26,'2025-03-12','No vi nada, pero mi intuición me dice que alguien lo escondió.'),(27,27,'2025-03-12','Ayer cuando estaba limpiando por la tarde, después del dia de las mascotas,  me pareció ver a un chico muy joven de como mucho 25 años con algo amarillo.'),(28,28,'2025-03-12','No vi nada, pero si lo encuentran, avísenme, tengo curiosidad.'),(29,29,'2025-03-12','¿Y si simplemente se esfumó en el aire? A veces las cosas desaparecen sin razón.'),(30,30,'2025-03-12','Lo último que recuerdo es que estaba sobre la mesa, después no lo vi más.');
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

-- Dump completed on 2025-03-14 14:57:41
