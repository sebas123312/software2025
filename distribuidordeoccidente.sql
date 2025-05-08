-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: distribuidordeoccidente
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `Cod_cliente` int(11) NOT NULL,
  `Nom_empresa` varchar(50) DEFAULT NULL,
  `Direccion_cliente` varchar(100) DEFAULT NULL,
  `Tel_cliente` varchar(20) DEFAULT NULL,
  `Depto_cliente` varchar(50) DEFAULT NULL,
  `Nom_vendedor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Distribuciones Guate','4ta. Avenida 15-21, Zona 1','502-23456789','Guatemala','Carlos Pérez'),(2,'Supermercados La Torre','Av. Reforma 12-34','502-23456790','Escuintla','Ana López'),(3,'Comercializadora Xela','Calle Real 24, Zona 3','502-23456791','Quetzaltenango','Luis García'),(4,'El Gran Abarrotero','Zona 3, Jalapa','502-23456792','Jalapa','Marta Gálvez'),(5,'Productos del Sol','Calle 1, Barrio 4','502-23456793','Mazatenango','Carlos Pérez'),(6,'Lider Bazar','Calle del Sol 45','502-23456794','Retalhuleu','Ana López'),(7,'La Bodega Central','Avenida Los Árboles, Zona 7','502-23456795','Huehuetenango','Luis García'),(8,'Supermayorista SA','9a. Calle 12-16','502-23456796','San Marcos','Marta Gálvez'),(9,'Distribuidora Alianza','Zona 10, Edificio Central','502-23456797','Guatemala','Carlos Pérez'),(10,'Distribuidora El Rey','Calle Luna 12-45','502-23456798','Chimaltenango','Ana López'),(11,'Comercial Vértice','Avenida Norte 45-78','502-23456799','Totonicapán','Luis García'),(12,'Super Selectos','Calle Mariposa 23-34','502-23456800','Sacatepéquez','Marta Gálvez'),(13,'Bodega Internacional','Barrio Las Flores, El Progreso','502-23456801','El Progreso','Carlos Pérez'),(14,'La Central','Calle Azul 15, Zona 6','502-23456802','Santa Rosa','Ana López'),(15,'Distribuidora El Mundo','Avenida El Sol 18-22','502-23456803','Retalhuleu','Luis García');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_factura` (
  `Cod_Factura` int(11) NOT NULL,
  `Cod_Producto` int(11) DEFAULT NULL,
  `Cantidad` varchar(50) DEFAULT NULL,
  `Precio_Unitario` decimal(10,2) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Cod_Factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
INSERT INTO `detalle_factura` VALUES (1,1,'5',22.50,112.50),(2,2,'10',18.00,180.00),(3,3,'15',12.75,191.25),(4,4,'20',8.50,170.00),(5,5,'4',30.00,120.00),(6,6,'8',14.00,112.00),(7,7,'10',10.00,100.00),(8,8,'12',9.75,117.00),(9,9,'25',5.00,125.00),(10,10,'18',6.50,117.00),(11,11,'6',13.00,78.00),(12,12,'14',7.25,101.50),(13,13,'3',16.50,49.50),(14,14,'5',20.00,100.00),(15,15,'9',11.00,99.00);
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_pedido` (
  `Cod_Pedido` int(11) NOT NULL,
  `Cod_Producto` int(11) DEFAULT NULL,
  `Precio_Unidad` decimal(10,0) DEFAULT NULL,
  `Cantidad` varchar(70) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Cod_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (1,1,23,'5',113),(2,2,18,'10',180),(3,3,13,'15',191),(4,4,9,'20',170),(5,5,30,'4',120),(6,6,14,'8',112),(7,7,10,'10',100),(8,8,10,'12',117),(9,9,5,'25',125),(10,10,7,'18',117),(11,11,13,'6',78),(12,12,7,'14',102),(13,13,17,'3',50),(14,14,20,'5',100),(15,15,11,'9',99);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `Cod_Empleados` int(11) NOT NULL,
  `Cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Empleados`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Vendedor'),(2,'Vendedor'),(3,'Vendedor'),(4,'Vendedor'),(5,'Vendedor'),(6,'Vendedor'),(7,'Vendedor'),(8,'Vendedor'),(9,'Vendedor'),(10,'Vendedor'),(11,'Vendedor'),(12,'Vendedor'),(13,'Vendedor'),(14,'Vendedor'),(15,'Vendedor');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `Cod_Factura` int(11) NOT NULL,
  `Cod_Pedido` int(11) DEFAULT NULL,
  `Fecha_Factura` date DEFAULT NULL,
  `Monto_Total` decimal(10,2) DEFAULT NULL,
  `Total_Pagar` decimal(10,2) DEFAULT NULL,
  `Forma_Pago` varchar(50) DEFAULT NULL,
  `Cod_Vendedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_Factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,1,'2025-05-03',112.50,112.50,'Transferencia',1),(2,2,'2025-05-04',180.00,180.00,'Efectivo',2),(3,3,'2025-05-05',191.25,191.25,'Tarjeta',3),(4,4,'2025-05-05',170.00,170.00,'Transferencia',4),(5,5,'2025-05-06',120.00,120.00,'Efectivo',5),(6,6,'2025-05-07',112.00,112.00,'Tarjeta',1),(7,7,'2025-05-08',100.00,100.00,'Transferencia',2),(8,8,'2025-05-08',117.00,117.00,'Efectivo',3),(9,9,'2025-05-09',125.00,125.00,'Tarjeta',4),(10,10,'2025-05-09',117.00,117.00,'Transferencia',5),(11,11,'2025-05-10',78.00,78.00,'Efectivo',1),(12,12,'2025-05-11',101.50,101.50,'Tarjeta',2),(13,13,'2025-05-12',49.50,49.50,'Transferencia',3),(14,14,'2025-05-12',100.00,100.00,'Efectivo',4),(15,15,'2025-05-13',99.00,99.00,'Tarjeta',5);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `Nom_producto` varchar(100) DEFAULT NULL,
  `Cod_producto` int(11) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  `Cant_existente` int(11) DEFAULT NULL,
  `Precio_unitario` decimal(10,0) DEFAULT NULL,
  `Cod_proveedor` int(11) DEFAULT NULL,
  `Fecha_ingreso` date DEFAULT NULL,
  `Ultima_actualizacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES ('Arroz',1,'Arroz de grano largo','Granos',500,5,1,'2025-04-01','2025-05-01'),('Azúcar',2,'Azúcar refinada','Endulzantes',300,5,2,'2025-04-02','2025-05-01'),('Harina',3,'Harina de maíz','Panadería',400,4,3,'2025-04-03','2025-05-01'),('Frijoles',4,'Frijoles negros','Legumbres',800,6,4,'2025-04-04','2025-05-01'),('Aceite',5,'Aceite de cocina','Aceites',600,3,5,'2025-04-05','2025-05-01'),('Sal',6,'Sal de mesa','Condimentos',500,2,6,'2025-04-06','2025-05-01'),('Sopa',7,'Sopa de pollo','Comida rápida',700,3,7,'2025-04-07','2025-05-01'),('Leche',8,'Leche líquida','Lácteos',300,7,8,'2025-04-08','2025-05-01'),('Cereal',9,'Cereal de avena','Desayunos',500,5,9,'2025-04-09','2025-05-01'),('Jugo',10,'Jugo de naranja','Bebidas',200,3,10,'2025-04-10','2025-05-01'),('Galletas',11,'Galletas de avena','Snacks',1000,2,11,'2025-04-11','2025-05-01'),('Pastas',12,'Pasta italiana','Comida rápida',700,3,12,'2025-04-12','2025-05-01'),('Fruta',13,'Frutas variadas','Frescos',300,3,13,'2025-04-13','2025-05-01'),('Verduras',14,'Verduras frescas','Frescos',1500,2,14,'2025-04-14','2025-05-01'),('Café',15,'Café en grano','Bebidas',200,8,15,'2025-04-15','2025-05-01');
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca_producto`
--

DROP TABLE IF EXISTS `marca_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca_producto` (
  `Cod_Marca` int(11) NOT NULL,
  `Nombre_Marca` varchar(50) DEFAULT NULL,
  `Nombre_Producto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_producto`
--

LOCK TABLES `marca_producto` WRITE;
/*!40000 ALTER TABLE `marca_producto` DISABLE KEYS */;
INSERT INTO `marca_producto` VALUES (1,'Nestlé','Leche en Polvo'),(2,'Colgate','Pasta Dental'),(3,'PepsiCo','Papas Fritas'),(4,'Bimbo','Pan de Caja'),(5,'Procter & Gamble','Detergente'),(6,'Unilever','Desodorante'),(7,'Kimberly-Clark','Papel Higiénico'),(8,'La Costeña','Frijoles Enlatados'),(9,'Coca-Cola','Refresco'),(10,'Lala','Leche Entera'),(11,'Zucaritas','Cereal'),(12,'Maggi','Sopa Instantánea'),(13,'Galletas Diana','Galletas de Vainilla'),(14,'Frito Lay','Doritos'),(15,'Palmolive','Jabón Corporal');
/*!40000 ALTER TABLE `marca_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodo_pago`
--

DROP TABLE IF EXISTS `metodo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metodo_pago` (
  `Cod_Metodo_Pago` int(11) NOT NULL,
  `Nombre_Metodo` varchar(50) DEFAULT NULL,
  `Tipo_Metodo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Metodo_Pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodo_pago`
--

LOCK TABLES `metodo_pago` WRITE;
/*!40000 ALTER TABLE `metodo_pago` DISABLE KEYS */;
INSERT INTO `metodo_pago` VALUES (1,'Tarjeta de Crédito','Crédito'),(2,'Efectivo','Pago al contado'),(3,'Transferencia Bancaria','Bancario'),(4,'PayPal','En línea'),(5,'Cheque','Bancario'),(6,'Tarjeta de Débito','Débito'),(7,'Bitcoin','Criptomoneda'),(8,'Pago Contra Entrega','Contado'),(9,'Sodexo','Vouchers'),(10,'Depósito','Bancario'),(11,'Tarjeta de Regalo','Prepago'),(12,'Pago Móvil','En línea'),(13,'Western Union','Bancario'),(14,'MoneyGram','Bancario'),(15,'Efectivo por Reparto','Contado');
/*!40000 ALTER TABLE `metodo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimietoinventario`
--

DROP TABLE IF EXISTS `movimietoinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimietoinventario` (
  `Cod_producto` int(11) NOT NULL,
  `Tipo_movimiento` varchar(20) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Fecha_movimiento` date DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `Cod_vendedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimietoinventario`
--

LOCK TABLES `movimietoinventario` WRITE;
/*!40000 ALTER TABLE `movimietoinventario` DISABLE KEYS */;
INSERT INTO `movimietoinventario` VALUES (1,'Ingreso',100,'2025-04-01','Compra inicial',1),(2,'Ingreso',150,'2025-04-02','Compra inicial',2),(3,'Ingreso',200,'2025-04-03','Compra inicial',3),(4,'Ingreso',300,'2025-04-04','Compra inicial',4),(5,'Ingreso',200,'2025-04-05','Compra inicial',5),(6,'Ingreso',250,'2025-04-06','Compra inicial',6),(7,'Ingreso',150,'2025-04-07','Compra inicial',7),(8,'Ingreso',100,'2025-04-08','Compra inicial',8),(9,'Ingreso',200,'2025-04-09','Compra inicial',9),(10,'Ingreso',100,'2025-04-10','Compra inicial',10),(11,'Ingreso',300,'2025-04-11','Compra inicial',11),(12,'Ingreso',200,'2025-04-12','Compra inicial',12),(13,'Ingreso',150,'2025-04-13','Compra inicial',13),(14,'Ingreso',100,'2025-04-14','Compra inicial',14),(15,'Ingreso',100,'2025-04-15','Compra inicial',15);
/*!40000 ALTER TABLE `movimietoinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `Cod_Pedido` int(11) NOT NULL,
  `Cod_Cliente` int(11) DEFAULT NULL,
  `Cod_Empleado` int(11) DEFAULT NULL,
  `Cod_Metodo_Pago` int(11) DEFAULT NULL,
  `Fecha_Pedido` date DEFAULT NULL,
  `Fecha_Entrega` date DEFAULT NULL,
  `Fecha_Envio` date DEFAULT NULL,
  `Direccion_Dest` varchar(70) DEFAULT NULL,
  `Ciudad_Dest` varchar(50) DEFAULT NULL,
  `Estado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Cod_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,1,1,'2025-05-01','2025-05-03','2025-05-02','Zona 10, Ciudad de Guatemala','Guatemala','Enviado'),(2,2,2,2,'2025-05-01','2025-05-04','2025-05-02','Zona 5, Mixco','Guatemala','Entregado'),(3,3,3,3,'2025-05-02','2025-05-05','2025-05-03','Chiquimula Centro','Chiquimula','En Camino'),(4,4,4,1,'2025-05-02','2025-05-05','2025-05-04','Cobán Norte','Alta Verapaz','Entregado'),(5,5,5,2,'2025-05-03','2025-05-06','2025-05-04','Centro de Mazatenango','Suchitepéquez','Pendiente'),(6,6,1,3,'2025-05-04','2025-05-07','2025-05-05','Colonia Ciudad Real','Guatemala','En Camino'),(7,7,2,1,'2025-05-04','2025-05-08','2025-05-05','Calzada Aguilar Batres','Guatemala','Pendiente'),(8,8,3,2,'2025-05-05','2025-05-08','2025-05-06','Zona 3, Quetzaltenango','Quetzaltenango','Entregado'),(9,9,4,3,'2025-05-05','2025-05-09','2025-05-07','El Naranjo, Escuintla','Escuintla','Enviado'),(10,10,5,1,'2025-05-06','2025-05-09','2025-05-07','Zona 6, Villa Nueva','Guatemala','Entregado'),(11,11,1,2,'2025-05-06','2025-05-10','2025-05-08','Colonia Landívar','Guatemala','En Camino'),(12,12,2,3,'2025-05-07','2025-05-11','2025-05-09','Centro Histórico','Guatemala','Pendiente'),(13,13,3,1,'2025-05-07','2025-05-12','2025-05-09','Santa Elena, Petén','Petén','Entregado'),(14,14,4,2,'2025-05-08','2025-05-12','2025-05-10','Jalapa Centro','Jalapa','Pendiente'),(15,15,5,3,'2025-05-08','2025-05-13','2025-05-10','Zona 1, San Marcos','San Marcos','Enviado');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `Cod_producto` int(11) NOT NULL,
  `Nom_producto` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Precio_unitario` decimal(10,0) DEFAULT NULL,
  `Tel_proveedor` varchar(20) DEFAULT NULL,
  `Cant_comprada` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Arroz','Arroz de grano largo',5,'502-34567891','500kg'),(2,'Azúcar','Azúcar refinada',5,'502-34567892','300kg'),(3,'Harina','Harina de maíz',4,'502-34567893','400kg'),(4,'Frijoles','Frijoles negros',6,'502-34567894','800kg'),(5,'Aceite','Aceite de cocina',3,'502-34567895','600kg'),(6,'Sal','Sal de mesa',2,'502-34567896','500kg'),(7,'Sopa','Sopa de pollo',3,'502-34567897','700kg'),(8,'Leche','Leche líquida',7,'502-34567898','300kg'),(9,'Cereal','Cereal de avena',5,'502-34567899','500kg'),(10,'Jugo','Jugo de naranja',3,'502-34567900','200kg'),(11,'Galletas','Galletas de avena',2,'502-34567901','1000kg'),(12,'Pastas','Pasta italiana',3,'502-34567902','700kg'),(13,'Fruta','Frutas variadas',3,'502-34567903','300kg'),(14,'Verduras','Verduras frescas',2,'502-34567904','1500kg'),(15,'Café','Café en grano',8,'502-34567905','200kg');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `Cod_proveedor` int(11) NOT NULL,
  `Nom_empresa` varchar(50) DEFAULT NULL,
  `Direcc_empresa` varchar(100) DEFAULT NULL,
  `Depto_proveedor` varchar(50) DEFAULT NULL,
  `Email_proveedor` varchar(100) DEFAULT NULL,
  `Tel_proveedor` varchar(20) DEFAULT NULL,
  `Nom_vendedor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Proveedora Guatemalteca','Calle 1, Zona 2','Guatemala','contacto@proveedoraguate.com','502-34567890','Carlos Pérez'),(2,'Distribuciones del Norte','Avenida Norte 15-22','Quetzaltenango','ventas@distribuciondelnorte.com','502-34567891','Ana López'),(3,'Comercializadora Central','4ta. Avenida 10-56','Escuintla','info@comercializadora.com','502-34567892','Luis García'),(4,'Proveedores El Sur','Calle Real, Jalapa','Jalapa','proveedoreselsur@gmail.com','502-34567893','Marta Gálvez'),(5,'Distribuidora San Marcos','9a. Calle 12-34','San Marcos','ventas@distribuidorasanmarcos.com','502-34567894','Carlos Pérez'),(6,'Comercial El Sol','Barrio El Sol, Mazatenango','Mazatenango','contacto@comercialelsol.com','502-34567895','Ana López'),(7,'Proveedora Huehue','Avenida Los Árboles','Huehuetenango','ventas@proveedorahuehue.com','502-34567896','Luis García'),(8,'Distribuciones Retalhuleu','Calle Los Pinos','Retalhuleu','info@distribucionesretalhuleu.com','502-34567897','Marta Gálvez'),(9,'Proveedora Internacional','Zona 1','Guatemala','proveedoraint@guatemala.com','502-34567898','Carlos Pérez'),(10,'Super Proveedor','Avenida del Norte, Chimaltenango','Chimaltenango','superproveedor@chimaltenango.com','502-34567899','Ana López'),(11,'Comercial Vértice','Zona 5','Totonicapán','comercialvertice@totonicapan.com','502-34567900','Luis García'),(12,'Distribuidora Selectos','Calle Mariposa','Sacatepéquez','distribuidora@selectos.com','502-34567901','Marta Gálvez'),(13,'Proveedor El Progreso','Barrio Las Flores','El Progreso','proveedor@progreso.com','502-34567902','Carlos Pérez'),(14,'Central Distribuciones','Calle 10, Santa Rosa','Santa Rosa','central@distribuciones.com','502-34567903','Ana López'),(15,'Mundo Proveedor','Avenida El Sol','Retalhuleu','mundoproveedor@retalhuleu.com','502-34567904','Luis García');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutaentrega`
--

DROP TABLE IF EXISTS `rutaentrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rutaentrega` (
  `Cod_ruta` int(11) NOT NULL,
  `Nom_ruta` varchar(50) DEFAULT NULL,
  `Nom_vendedor` varchar(50) DEFAULT NULL,
  `Cod_vendedor` int(11) DEFAULT NULL,
  `Tel_vendedor` varchar(20) DEFAULT NULL,
  `Depto_ruta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_ruta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutaentrega`
--

LOCK TABLES `rutaentrega` WRITE;
/*!40000 ALTER TABLE `rutaentrega` DISABLE KEYS */;
INSERT INTO `rutaentrega` VALUES (1,'Ruta 1 - Guatemala','Carlos Pérez',1,'502-55500001','Guatemala'),(2,'Ruta 2 - Quetzaltenango','Ana López',2,'502-55500002','Quetzaltenango'),(3,'Ruta 3 - Escuintla','Luis García',3,'502-55500003','Escuintla'),(4,'Ruta 4 - Mazatenango','Marta Gálvez',4,'502-55500004','Mazatenango'),(5,'Ruta 5 - Huehuetenango','Carlos Pérez',5,'502-55500005','Huehuetenango'),(6,'Ruta 6 - Retalhuleu','Ana López',6,'502-55500006','Retalhuleu'),(7,'Ruta 7 - San Marcos','Luis García',7,'502-55500007','San Marcos'),(8,'Ruta 8 - Santa Rosa','Marta Gálvez',8,'502-55500008','Santa Rosa'),(9,'Ruta 9 - Totonicapán','Carlos Pérez',9,'502-55500009','Totonicapán'),(10,'Ruta 10 - Sacatepéquez','Ana López',10,'502-55500010','Sacatepéquez'),(11,'Ruta 11 - Chimaltenango','Luis García',11,'502-55500011','Chimaltenango'),(12,'Ruta 12 - Guatemala','Marta Gálvez',12,'502-55500012','Guatemala'),(13,'Ruta 13 - El Progreso','Carlos Pérez',13,'502-55500013','El Progreso'),(14,'Ruta 14 - Jalapa','Ana López',14,'502-55500014','Jalapa'),(15,'Ruta 15 - Retalhuleu','Luis García',15,'502-55500015','Retalhuleu');
/*!40000 ALTER TABLE `rutaentrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte` (
  `Cod_transporte` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_vehiculo` varchar(50) DEFAULT NULL,
  `marca_vehiculo` varchar(50) DEFAULT NULL,
  `placa_vehiculo` varchar(20) DEFAULT NULL,
  `Modelo` varchar(20) DEFAULT NULL,
  `Capacidad_kg` decimal(10,2) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `Conductor_asignado` varchar(50) DEFAULT NULL,
  `ruta_asignada` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_transporte`),
  UNIQUE KEY `placa_vehiculo` (`placa_vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (1,'Camión','Freightliner','C123BGL','2021',8000.00,'Activo','Carlos Méndez','Ruta Occidente'),(2,'Camión','Isuzu','D452FJK','2020',7500.00,'Activo','Luis Ramírez','Ruta Sur'),(3,'Camión','Kenworth','E887LKJ','2019',9000.00,'En mantenimiento','Pedro López','Ruta Central'),(4,'Camión','Volvo','F301KPL','2021',8500.00,'Activo','José Martínez','Ruta Norte'),(5,'Camión','Mercedes-Benz','G213QWM','2022',8200.00,'Activo','Marco García','Ruta Oriente'),(6,'Camión','International','H091AXZ','2018',7900.00,'Activo','Raúl Castillo','Ruta Sur'),(7,'Camión','Ford','J871PQL','2020',8100.00,'Inactivo','Andrés Mejía','Ruta Norte'),(8,'Camión','Chevrolet','K998WER','2021',8300.00,'Activo','Mario Pérez','Ruta Central'),(9,'Camión','Nissan','L561YXN','2019',7800.00,'Activo','Ricardo Díaz','Ruta Oriente'),(10,'Camión','MAN','M334HSD','2022',9000.00,'Activo','Héctor Morales','Ruta Sur'),(11,'Camión','Scania','N673VBN','2020',8200.00,'Activo','Javier Rivas','Ruta Occidente'),(12,'Camión','Hyundai','P902TRW','2021',8100.00,'Activo','Sergio Alvarado','Ruta Central'),(13,'Camión','DAF','Q134UYT','2018',7600.00,'Inactivo','Julio Pineda','Ruta Oriente'),(14,'Camión','IVECO','R987HJK','2020',8700.00,'Activo','David Romero','Ruta Norte'),(15,'Camión','Hino','S776OPL','2022',8500.00,'Activo','Fernando Ruiz','Ruta Sur');
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedores` (
  `Cod_vendedores` int(11) NOT NULL,
  `Nom_vendedor` varchar(50) DEFAULT NULL,
  `Tel_vendedor` varchar(20) DEFAULT NULL,
  `Ruta_vendedor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_vendedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'Carlos Pérez','502-55500001','Ruta 1 - Guatemala'),(2,'Ana López','502-55500002','Ruta 2 - Quetzaltenango'),(3,'Luis García','502-55500003','Ruta 3 - Escuintla'),(4,'Marta Gálvez','502-55500004','Ruta 4 - Mazatenango'),(5,'Carlos Pérez','502-55500005','Ruta 5 - Huehuetenango'),(6,'Ana López','502-55500006','Ruta 6 - Retalhuleu'),(7,'Luis García','502-55500007','Ruta 7 - San Marcos'),(8,'Marta Gálvez','502-55500008','Ruta 8 - Santa Rosa'),(9,'Carlos Pérez','502-55500009','Ruta 9 - Totonicapán'),(10,'Ana López','502-55500010','Ruta 10 - Sacatepéquez'),(11,'Luis García','502-55500011','Ruta 11 - Chimaltenango'),(12,'Marta Gálvez','502-55500012','Ruta 12 - Guatemala'),(13,'Carlos Pérez','502-55500013','Ruta 13 - El Progreso'),(14,'Ana López','502-55500014','Ruta 14 - Jalapa'),(15,'Luis García','502-55500015','Ruta 15 - Retalhuleu');
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-08  8:19:48
