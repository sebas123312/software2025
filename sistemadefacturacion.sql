-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemadefacturacion
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo` (
  `Cod_Articulo` int(11) NOT NULL,
  `Cif_Proveedor` int(11) DEFAULT NULL,
  `Nombre_Articulo` varchar(20) DEFAULT NULL,
  `Caracteristicas` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cod_Articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (301,401,'Laptop','Intel i5, 8GB RAM, SSD 256GB'),(302,402,'Mouse','Óptico, USB, color negro'),(303,403,'Teclado','Mecánico, retroiluminado'),(304,404,'Monitor','24\", LED, Full HD'),(305,405,'Impresora','Láser, blanco y negro'),(306,406,'Router','Wi-Fi doble banda, 1200 Mbps'),(307,407,'Cámara','Webcam HD 1080p'),(308,408,'Auriculares','Con micrófono, bluetooth'),(309,409,'Tablet','10\", Android 11, 64GB'),(310,410,'Disco Duro','1TB, USB 3.0, portátil');
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `CIF_Cliente` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido1` varchar(30) DEFAULT NULL,
  `Apellido2` varchar(30) DEFAULT NULL,
  `Nombre_Empresa` varchar(30) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `Ciudad` varchar(20) DEFAULT NULL,
  `CP` varchar(20) DEFAULT NULL,
  `Provincia` varchar(30) DEFAULT NULL,
  `Pais` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CIF_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (101,'Juan','Pérez','Gómez','ElectroMax','Av. Central 123','Lima','15001','Lima','Perú'),(102,'Ana','Martínez','Díaz','Comercial Luna','Calle 5 N°12','Bogotá','110111','Cundinamarca','Colombia'),(103,'Luis','Torres','Salas','AgroSur','Ruta 8 Km 30','Montevideo','11300','Montevideo','Uruguay'),(104,'María','Rojas','Lopez','Textiles Sur','Zona Ind. 4','Santiago','8320000','RM','Chile'),(105,'Carlos','Ramírez','Núñez','Mecánica Rápida','Av. Siempre Viva 742','Quito','170150','Pichincha','Ecuador'),(106,'Lucía','Fernández','Vega','Delicias S.A.','Zona Gourmet','San José','10101','San José','Costa Rica'),(107,'Pedro','García','Muñoz','Almacenes del Norte','Carrera 23','Medellín','050021','Antioquia','Colombia'),(108,'Valeria','Morales','Castro','Distribuciones VMC','Av. Sur 18','La Paz','1001','Murillo','Bolivia'),(109,'Diego','Herrera','Ortega','FarmaVida','Zona Norte','Asunción','0012','Central','Paraguay'),(110,'Sofía','López','Reyes','Cosméticos Andinos','Pasaje 21','Cusco','08001','Cusco','Perú');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallefactura`
--

DROP TABLE IF EXISTS `detallefactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallefactura` (
  `NumFactura` int(11) DEFAULT NULL,
  `NumDetalleFactura` int(11) DEFAULT NULL,
  `Cod_Articulo` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `porcentaje_ganancia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallefactura`
--

LOCK TABLES `detallefactura` WRITE;
/*!40000 ALTER TABLE `detallefactura` DISABLE KEYS */;
INSERT INTO `detallefactura` VALUES (1,1,101,5,20),(1,2,102,3,15),(2,1,103,2,10),(2,2,104,1,25),(3,1,105,4,30),(4,1,106,2,18),(4,2,107,6,22),(5,1,108,3,12),(5,2,109,5,20),(6,1,110,1,10),(201,1,301,2,20),(202,1,302,5,15),(203,1,303,1,10),(204,1,304,3,25),(205,1,305,1,18),(206,1,306,2,12),(207,1,307,4,14),(208,1,308,3,16),(209,1,309,2,22),(210,1,310,1,19);
/*!40000 ALTER TABLE `detallefactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `NumFactura` int(11) NOT NULL,
  `FechaFactura` datetime DEFAULT NULL,
  `CIF_Cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`NumFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (201,'2023-01-05 10:00:00',101),(202,'2023-01-10 11:30:00',102),(203,'2023-01-15 09:45:00',103),(204,'2023-02-01 14:20:00',104),(205,'2023-02-12 12:00:00',105),(206,'2023-03-03 08:15:00',106),(207,'2023-03-14 13:50:00',107),(208,'2023-04-01 10:10:00',108),(209,'2023-04-07 15:30:00',109),(210,'2023-04-08 16:45:00',110);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `CIF_Proveedor` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido1` varchar(30) DEFAULT NULL,
  `Apellido2` varchar(30) DEFAULT NULL,
  `Nombre_Empresa` varchar(30) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `Ciudad` varchar(20) DEFAULT NULL,
  `CP` varchar(20) DEFAULT NULL,
  `Provincia` varchar(20) DEFAULT NULL,
  `Pais` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CIF_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (401,'Laura','Gómez','Ríos','TecnoMundo','Av. América 100','Lima','15002','Lima','Perú'),(402,'Hugo','Santos','Lara','GlobalTech','Calle 10','Buenos Aires','1405','Buenos Aires','Argentina'),(403,'Andrés','Cruz','Mendoza','Insumos S.A.','Diagonal 20','Bogotá','110221','Cundinamarca','Colombia'),(404,'Marta','Moreno','Silva','MoniLED','Ruta Sur','Quito','170110','Pichincha','Ecuador'),(405,'Esteban','Navarro','Campos','PrintExpress','Zona Ind. 5','Santiago','8320001','RM','Chile'),(406,'Daniela','Vega','Ramos','WiNet','Circuito 21','La Paz','1003','Murillo','Bolivia'),(407,'Iván','Peña','Ordoñez','VisionCam','Av. Central','Asunción','0013','Central','Paraguay'),(408,'Nora','León','Castaño','SoundMax','Av. Norte 8','Medellín','050022','Antioquia','Colombia'),(409,'Raúl','Herrera','López','TableTech','Av. Este 15','Caracas','1060','Distrito Capital','Venezuela'),(410,'Clara','Torres','Ibáñez','DataStore','Av. Sur 9','Cusco','08002','Cusco','Perú');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-05 10:11:19
