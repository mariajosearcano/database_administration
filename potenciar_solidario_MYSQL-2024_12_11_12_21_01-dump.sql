-- MySQL dump 10.13  Distrib 9.1.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: potenciar_solidario
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categ_proveedores`
--

DROP TABLE IF EXISTS `categ_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categ_proveedores` (
  `Id_categoria` int NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categ_proveedores`
--

LOCK TABLES `categ_proveedores` WRITE;
/*!40000 ALTER TABLE `categ_proveedores` DISABLE KEYS */;
INSERT INTO `categ_proveedores` (`Id_categoria`, `Categoria`) VALUES (1,'SERVICIOS'),(2,'MATERIALES'),(3,'AGENTE IMPOSITIVO'),(4,'TECNOLOGIA'),(5,'CONSULTORIA'),(6,'ENERGIA RENOVABLE'),(7,'TRANSPORTE'),(8,'CONSTRUCCION'),(9,'AGROINDUSTRIA'),(10,'SOFTWARE'),(11,'CONSULTORIA IT'),(12,'ENERGIA EOLICA'),(13,'ENERGIA SOLAR');
/*!40000 ALTER TABLE `categ_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `Id_ciudad` int NOT NULL AUTO_INCREMENT,
  `Ciudad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` (`Id_ciudad`, `Ciudad`) VALUES (1,'Buenos Aires'),(2,'Cordoba'),(3,'Rosario'),(4,'Mendoza'),(5,'San Miguel de TucumÃ¡n'),(6,'Mar del Plata'),(7,'La Plata'),(8,'Salta'),(9,'Santa Fe'),(10,'San Juan'),(11,'Neuquen'),(12,'Rio Gallegos'),(13,'San Rafael'),(14,'BahÃ­a Blanca'),(15,'Santiago del Estero'),(16,'Rio Cuarto'),(17,'San Fernando del Valle de Catamarca'),(18,'Villa Maria'),(19,'San Luis'),(20,'Chaco'),(21,'San Nicolas'),(22,'Lujan'),(23,'Jujuy'),(24,'Trelew'),(25,'San Fernando'),(26,'Merlo'),(27,'San MartÃ­n'),(28,'Viedma'),(29,'Rawson'),(30,'Obera'),(31,'Calafate'),(32,'Gualeguaychu'),(33,'Rio Grande'),(34,'Villa Carlos Paz'),(35,'Villa Allende'),(36,'San Pedro'),(37,'General Roca'),(38,'Junin'),(39,'Rafaela'),(40,'Posadas'),(41,'Resistencia'),(42,'Formosa');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contribuyente`
--

DROP TABLE IF EXISTS `contribuyente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contribuyente` (
  `Id_contribuyente` int NOT NULL AUTO_INCREMENT,
  `Tipo_contribuyente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_contribuyente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribuyente`
--

LOCK TABLES `contribuyente` WRITE;
/*!40000 ALTER TABLE `contribuyente` DISABLE KEYS */;
INSERT INTO `contribuyente` (`Id_contribuyente`, `Tipo_contribuyente`) VALUES (1,'Monotributista'),(2,'Exento'),(3,'Responsable Inscripto');
/*!40000 ALTER TABLE `contribuyente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta` (
  `Id_cuenta` int NOT NULL AUTO_INCREMENT,
  `Nro_cuenta` varchar(50) DEFAULT NULL,
  `Tipo_cuenta` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` (`Id_cuenta`, `Nro_cuenta`, `Tipo_cuenta`) VALUES (1,'404100','Donante'),(2,'403103','Donante'),(3,'405100','Donante'),(4,'501400','Proveedor'),(5,'503100','Proveedor'),(6,'506100','Proveedor'),(7,'509100','Proveedor'),(8,'516000','Proveedor'),(9,'514100','Proveedor'),(10,'502100','Proveedor'),(11,'507100','Proveedor');
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (1,'contenttypes','0001_initial','2024-12-07 14:20:26.496681'),(2,'auth','0001_initial','2024-12-07 14:20:27.605716'),(3,'admin','0001_initial','2024-12-07 14:20:27.807173'),(4,'admin','0002_logentry_remove_auto_add','2024-12-07 14:20:27.818904'),(5,'admin','0003_logentry_add_action_flag_choices','2024-12-07 14:20:27.828599'),(6,'contenttypes','0002_remove_content_type_name','2024-12-07 14:20:27.948213'),(7,'auth','0002_alter_permission_name_max_length','2024-12-07 14:20:28.068176'),(8,'auth','0003_alter_user_email_max_length','2024-12-07 14:20:28.121426'),(9,'auth','0004_alter_user_username_opts','2024-12-07 14:20:28.135759'),(10,'auth','0005_alter_user_last_login_null','2024-12-07 14:20:28.238322'),(11,'auth','0006_require_contenttypes_0002','2024-12-07 14:20:28.242344'),(12,'auth','0007_alter_validators_add_error_messages','2024-12-07 14:20:28.259448'),(13,'auth','0008_alter_user_username_max_length','2024-12-07 14:20:28.370574'),(14,'auth','0009_alter_user_last_name_max_length','2024-12-07 14:20:28.488591'),(15,'auth','0010_alter_group_name_max_length','2024-12-07 14:20:28.528656'),(16,'auth','0011_update_proxy_permissions','2024-12-07 14:20:28.537535'),(17,'auth','0012_alter_user_first_name_max_length','2024-12-07 14:20:28.618194'),(18,'sessions','0001_initial','2024-12-07 14:20:28.656572');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donantes`
--

DROP TABLE IF EXISTS `donantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donantes` (
  `Id_donante` varchar(50) NOT NULL,
  `Nombre` tinytext,
  `CUIT` varchar(50) DEFAULT NULL,
  `Correo_electronico` varchar(100) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Alta` date DEFAULT NULL,
  `Baja` date DEFAULT NULL,
  `Id_tipo` int DEFAULT NULL,
  `Id_razon_social` int DEFAULT NULL,
  `Id_contribuyente` int DEFAULT NULL,
  `Id_estado` int DEFAULT NULL,
  `Id_frecuencia` int DEFAULT NULL,
  `Id_pais` int DEFAULT NULL,
  PRIMARY KEY (`Id_donante`),
  KEY `Id_tipo` (`Id_tipo`),
  KEY `Id_razon_social` (`Id_razon_social`),
  KEY `Id_contribuyente` (`Id_contribuyente`),
  KEY `Id_estado` (`Id_estado`),
  KEY `Id_frecuencia` (`Id_frecuencia`),
  KEY `Id_pais` (`Id_pais`),
  CONSTRAINT `donantes_ibfk_1` FOREIGN KEY (`Id_tipo`) REFERENCES `tipo_donante` (`Id_tipo`),
  CONSTRAINT `donantes_ibfk_2` FOREIGN KEY (`Id_razon_social`) REFERENCES `razon_social` (`Id_razon_social`),
  CONSTRAINT `donantes_ibfk_3` FOREIGN KEY (`Id_contribuyente`) REFERENCES `contribuyente` (`Id_contribuyente`),
  CONSTRAINT `donantes_ibfk_4` FOREIGN KEY (`Id_estado`) REFERENCES `estado_donante` (`Id_estado`),
  CONSTRAINT `donantes_ibfk_5` FOREIGN KEY (`Id_frecuencia`) REFERENCES `frecuencia` (`Id_frecuencia`),
  CONSTRAINT `donantes_ibfk_6` FOREIGN KEY (`Id_pais`) REFERENCES `pais` (`Id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donantes`
--

LOCK TABLES `donantes` WRITE;
/*!40000 ALTER TABLE `donantes` DISABLE KEYS */;
INSERT INTO `donantes` (`Id_donante`, `Nombre`, `CUIT`, `Correo_electronico`, `Telefono`, `Alta`, `Baja`, `Id_tipo`, `Id_razon_social`, `Id_contribuyente`, `Id_estado`, `Id_frecuencia`, `Id_pais`) VALUES ('D00108','Iniciativa Solidaria','24-91224120-6','iniciativasolidaria@mail.com','(+)55 5747-7433','2022-10-04','2024-08-20',1,1,1,2,2,3),('D00109','Innovatech Solutions','24-56588769-6','innovatechsolutions@mail.com','(+)54 5263-2378','2019-08-09',NULL,2,2,2,1,2,1),('D00110','Apoyo Logistico S.A.','29-01265476-14','apoyologisticosa@mail.com','(+)595 5030-0105','2020-05-02','2024-07-01',1,2,3,2,3,4),('D00111','Futuro Corporativo','27-23783266-6','futurocorporativo@mail.com','(+)595 5380-3426','2019-12-02',NULL,1,1,1,1,1,4),('D00112','Global Energies S.A.','25-36901514-8','globalenergiess.a.@example.net','(+)598 5503-7127','2019-08-13',NULL,2,2,3,1,5,2),('D00113','Proyecto Gubernamental','29-75196406-1','proyectogubernamental@mail.com','(+)598 5550-9219','2022-01-21',NULL,2,3,2,1,1,2),('D00114','Latinoamerica Crece','27-75193456-1','latinoamerica_crece@example.com','(+)598 5550-9219','2020-01-21','2021-12-25',2,3,2,2,1,2),('D00115','Mercado Popular','24-34193456-2','mercadopopular@example.com','(+)55 5550-9219','2020-12-22',NULL,3,1,1,1,2,3),('D00116','Universidad del Sur','29-38793456-3','universidadds@mail.com','(+)51 5550-9220','2018-12-23',NULL,1,2,3,1,5,10),('D00117','Automoviles Full','21-38712356-4','afull@mail.com','(+)598 5550-9221','2020-01-24','2024-02-02',1,2,3,2,1,2),('D00120','Supermercado Vegano SRL','34-01712356-5','supermercadovegano@mail.com','(+)58 5550-9222','2023-01-25',NULL,1,4,3,1,2,9),('D00121','Ministerio de Acción Comunitaria','34-01712356-6','accióncomunitaria@mail.com','(+)56 5550-9223','2018-01-26',NULL,2,3,2,1,5,5),('D00122','El Parque SRL','24-78912356-7','parque@mail.com','(+)591 5550-9224','2018-01-01',NULL,1,4,3,1,4,7),('D00123','Merendero Solidario','24-72582356-8','solidario@mail.com','(+)591 5550-9225','2021-01-02',NULL,4,3,1,1,1,7),('D00124','Soluciones VerdeVida','20-12345678-9','ana.solis@verdevida.com','(+)54 9 11 1234 5678','2024-02-01',NULL,4,5,1,1,1,1),('D00125','Innovación Global S.A.','27-23456789-1','carlos.martinez@innovacionglobal.com','(+)55 21 9876 5432','2024-02-02',NULL,1,2,3,1,1,3),('D00126','Empresas FuturoBrillante','30-34567890-2','laura.perez@futurobrillante.com','(+)56 9 8765 4321','2024-02-03',NULL,1,1,3,1,1,5),('D00127','Horizonte Ecológico','23-45678901-3','juan.rodriguez@horizonteecologico.com','(+)52 55 1234 5678','2024-01-04',NULL,4,5,1,1,1,8),('D00128','Fundación UniCorp','33-56789012-4','marta.gonzalez@unicorp.org','(+)57 300 123 4567','2024-02-05',NULL,4,5,1,1,1,6),('D00129','Corporación NovaTech','30-98765432-1','gerencia@novatech.com','(+)57 300 123 4567','2023-01-01',NULL,1,2,3,1,1,6),('D00130','Servicios Plus','30-45765232-2','luis.gonzalez@ecoplus.com','(+)57 301 234 5678','2023-01-02',NULL,1,1,3,1,1,6),('D00131','InnovaLogix S.A.','27-65432109-8','carla.fernandez@innovalogix.com','(+)55 301 234 5678','2023-01-01',NULL,3,2,2,1,2,3),('D00132','VíaVerde','27-78434109-9','eco@viaverde.com','(+)56 9 8765 4321','2021-01-02','2023-01-03',3,4,3,2,1,5),('D00133','Energía Futuro S.A.','30-67891234-7','maria.lopez@energiasfuturo.com','(+)55 21 9876 5432','2022-01-01','2023-12-31',1,2,3,2,1,3),('D00134','Energía Sustentable S.A.','33-12345678-9','maria.lopez@energiasustentable.com','(+)55 21 9876 5432','2023-01-01','2023-12-31',3,2,3,2,1,3),('D00135','Logística Global S.R.L.','20-98765432-1','global@logisticaglobal.com','(+)56 9 7654 3210','2020-01-01',NULL,3,4,1,1,2,5),('D00136','AgroIndustrias del Sur','33-11223344-5','laura.garcia@agroindustrias.com','(+)57 300 876 5432','2024-01-01',NULL,5,2,3,1,1,6),('D00137','TecnoAvanzado S.R.L.','20-22334455-6','roberto.sanchez@tecnoavanzado.com','(+)54 9 11 6543 2109','2022-06-05',NULL,6,4,1,1,1,1),('D00138','Innovación Solar S.A.','30-99887766-7','julia.martinez@innovacionsolar.com','(+)52 55 1234 5678','2024-02-02',NULL,3,2,3,1,1,8),('D00139','TechGreen Innovación S.R.L.','25-67890123-0','tech@techgreeninnovacion.com','(+)54 9 11 4567 8901','2024-04-01',NULL,5,4,3,1,1,1),('D00140','EcoTransporte S.A.','30-33445566-7','fernando.lopez@ecotransporte.com','(+)54 9 11 8765 4321','2022-04-01','2023-12-01',2,2,2,2,4,1),('D00141','Apoyo Social Universal','30-33675566-8','apoyosocialuniversal@example.com','(+)54 9 11 8765 5588','2021-01-01','2024-06-01',2,3,2,2,3,1),('D00142','Bebidas S.A','34-38765566-0','bebidassa@mail.com','(+)52 55 1234 4324','2024-01-01','2024-05-30',3,2,3,2,1,8);
/*!40000 ALTER TABLE `donantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egresos`
--

DROP TABLE IF EXISTS `egresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `egresos` (
  `Id_egreso` int NOT NULL AUTO_INCREMENT,
  `Id_proveedor` varchar(50) DEFAULT NULL,
  `Tipo_movimiento` tinytext,
  `Fecha` date DEFAULT NULL,
  `Importe` int DEFAULT NULL,
  `Id_cuenta` int DEFAULT NULL,
  PRIMARY KEY (`Id_egreso`),
  KEY `Id_proveedor` (`Id_proveedor`),
  KEY `Id_cuenta` (`Id_cuenta`),
  CONSTRAINT `egresos_ibfk_1` FOREIGN KEY (`Id_proveedor`) REFERENCES `proveedores` (`Id_proveedor`),
  CONSTRAINT `egresos_ibfk_2` FOREIGN KEY (`Id_cuenta`) REFERENCES `cuenta` (`Id_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egresos`
--

LOCK TABLES `egresos` WRITE;
/*!40000 ALTER TABLE `egresos` DISABLE KEYS */;
INSERT INTO `egresos` (`Id_egreso`, `Id_proveedor`, `Tipo_movimiento`, `Fecha`, `Importe`, `Id_cuenta`) VALUES (1,'P00101','Egreso','2019-01-01',109470,7),(2,'P00102','Egreso','2019-01-03',12770,4),(3,'P00103','Egreso','2019-01-05',272036,4),(4,'P00104','Egreso','2019-01-07',10352,10),(5,'P00105','Egreso','2019-01-10',291670,8),(6,'P00110','Egreso','2019-01-12',192247,8),(7,'P00111','Egreso','2019-01-15',233493,11),(8,'P00112','Egreso','2019-01-17',39393,7),(9,'P00113','Egreso','2019-01-20',125746,4),(10,'P00114','Egreso','2019-01-22',13869,10),(11,'P00115','Egreso','2019-01-25',277243,8),(12,'P00116','Egreso','2019-01-27',212213,11),(13,'P00117','Egreso','2019-01-30',214933,7),(14,'P00118','Egreso','2019-02-02',167832,4),(15,'P00119','Egreso','2019-02-05',285851,10),(16,'P00120','Egreso','2019-02-08',130253,8),(17,'P00106','Egreso','2019-02-11',104176,11),(18,'P00107','Egreso','2019-02-14',64042,7),(19,'P00108','Egreso','2019-02-17',131033,4),(20,'P00109','Egreso','2019-02-20',152895,10),(21,'P00110','Egreso','2019-02-23',215535,8),(22,'P00111','Egreso','2019-02-26',172873,11),(23,'P00112','Egreso','2019-03-01',202116,7),(24,'P00113','Egreso','2019-03-04',259600,4),(25,'P00114','Egreso','2019-03-07',157396,10),(26,'P00115','Egreso','2019-03-10',184382,8),(27,'P00116','Egreso','2019-03-13',189803,11),(28,'P00117','Egreso','2019-03-16',121607,7),(29,'P00118','Egreso','2019-03-19',247694,4),(30,'P00119','Egreso','2019-03-22',266431,10),(31,'P00120','Egreso','2019-03-25',201168,8),(32,'P00101','Egreso','2019-03-28',211512,7),(33,'P00102','Egreso','2019-04-01',279575,4),(34,'P00103','Egreso','2019-04-04',211801,4),(35,'P00104','Egreso','2019-04-07',199434,10),(36,'P00105','Egreso','2019-04-10',175139,8),(37,'P00106','Egreso','2019-04-13',18742,11),(38,'P00107','Egreso','2019-04-16',271022,7),(39,'P00108','Egreso','2019-04-19',166866,4),(40,'P00109','Egreso','2019-04-22',230465,10),(41,'P00110','Egreso','2019-04-25',53588,8),(42,'P00111','Egreso','2019-04-28',134090,11),(43,'P00112','Egreso','2019-05-01',282553,7),(44,'P00113','Egreso','2019-05-04',232274,4),(45,'P00114','Egreso','2019-05-07',97345,10),(46,'P00115','Egreso','2019-05-10',273206,8),(47,'P00116','Egreso','2019-05-13',91956,11),(48,'P00117','Egreso','2019-05-16',63352,7),(49,'P00118','Egreso','2019-05-19',113663,4),(50,'P00119','Egreso','2019-05-22',47892,10),(51,'P00120','Egreso','2019-05-25',182791,8),(52,'P00101','Egreso','2019-05-28',115392,7),(53,'P00102','Egreso','2019-06-01',229019,4),(54,'P00103','Egreso','2019-06-04',153534,4),(55,'P00113','Egreso','2019-06-07',49747,4),(56,'P00114','Egreso','2019-06-10',57351,10),(57,'P00115','Egreso','2019-06-13',109321,8),(58,'P00116','Egreso','2019-06-16',94918,11),(59,'P00117','Egreso','2019-06-19',60909,7),(60,'P00118','Egreso','2019-06-22',19987,4),(61,'P00119','Egreso','2019-06-25',143655,10),(62,'P00120','Egreso','2019-06-28',100941,8),(63,'P00120','Egreso','2019-07-01',74480,8),(64,'P00120','Egreso','2019-07-04',50006,8),(65,'P00121','Egreso','2020-01-02',222631,7),(66,'P00122','Egreso','2020-01-05',183419,4),(67,'P00123','Egreso','2020-01-08',296190,4),(68,'P00124','Egreso','2020-01-11',88564,8),(69,'P00125','Egreso','2020-01-14',22903,11),(70,'P00126','Egreso','2020-01-17',74389,7),(71,'P00127','Egreso','2020-01-20',37706,4),(72,'P00128','Egreso','2020-01-23',198341,10),(73,'P00129','Egreso','2020-01-26',237422,8),(74,'P00130','Egreso','2020-01-29',79707,11),(75,'P00131','Egreso','2020-02-01',12989,4),(76,'P00132','Egreso','2020-02-04',249854,7),(77,'P00133','Egreso','2020-02-07',127726,4),(78,'P00134','Egreso','2020-02-10',243396,8),(79,'P00135','Egreso','2020-02-13',46325,11),(80,'P00136','Egreso','2020-02-16',220987,7),(81,'P00137','Egreso','2020-02-19',221445,4),(82,'P00138','Egreso','2020-02-22',94895,10),(83,'P00139','Egreso','2020-02-25',139765,8),(84,'P00140','Egreso','2020-02-28',248599,11),(85,'P00141','Egreso','2020-03-02',130696,4),(86,'P00142','Egreso','2020-03-05',88206,7),(87,'P00143','Egreso','2020-03-08',255727,4),(88,'P00144','Egreso','2020-03-11',295728,8),(89,'P00145','Egreso','2020-03-14',59893,11),(90,'P00146','Egreso','2020-03-17',44782,7),(91,'P00147','Egreso','2020-03-20',195892,4),(92,'P00148','Egreso','2020-03-23',108357,10),(93,'P00149','Egreso','2020-03-26',221537,8),(94,'P00150','Egreso','2020-03-29',277194,11),(95,'P00121','Egreso','2020-04-01',61912,7),(96,'P00122','Egreso','2020-04-04',218194,4),(97,'P00123','Egreso','2020-04-07',251963,4),(98,'P00124','Egreso','2020-04-10',109710,8),(99,'P00125','Egreso','2020-04-13',247663,11),(100,'P00126','Egreso','2020-04-16',117043,7),(101,'P00127','Egreso','2020-04-19',11442,4),(102,'P00128','Egreso','2020-04-22',10587,10),(103,'P00129','Egreso','2020-04-25',13020,8),(104,'P00130','Egreso','2020-04-28',217800,11),(105,'P00131','Egreso','2020-05-01',268049,4),(106,'P00132','Egreso','2020-05-04',229698,7),(107,'P00133','Egreso','2020-05-07',102297,4),(108,'P00134','Egreso','2020-05-10',24358,8),(109,'P00135','Egreso','2020-05-13',165797,11),(110,'P00136','Egreso','2020-05-16',260964,7),(111,'P00137','Egreso','2020-05-19',228513,4),(112,'P00138','Egreso','2020-05-22',91564,10),(113,'P00139','Egreso','2020-05-25',143944,8),(114,'P00140','Egreso','2020-05-28',159738,11),(115,'P00141','Egreso','2020-06-01',207725,4),(116,'P00142','Egreso','2020-06-04',103821,7),(117,'P00143','Egreso','2020-06-07',253296,4),(118,'P00144','Egreso','2020-06-10',201749,8),(119,'P00145','Egreso','2020-06-13',43682,11),(120,'P00146','Egreso','2020-06-16',36878,7),(121,'P00147','Egreso','2020-06-19',113452,4),(122,'P00148','Egreso','2020-06-22',280161,10),(123,'P00149','Egreso','2020-06-25',164567,8),(124,'P00150','Egreso','2020-06-28',137527,11),(125,'P00121','Egreso','2020-07-01',235544,7),(126,'P00122','Egreso','2020-07-04',175383,4),(127,'P00123','Egreso','2020-07-07',119340,4),(128,'P00124','Egreso','2020-07-10',129304,8),(129,'P00125','Egreso','2020-07-13',90516,11),(130,'P00126','Egreso','2020-07-16',97376,7),(131,'P00127','Egreso','2020-07-19',179093,4),(132,'P00128','Egreso','2020-07-22',179746,10),(133,'P00129','Egreso','2020-07-25',94240,8),(134,'P00130','Egreso','2020-07-28',26298,11),(135,'P00131','Egreso','2020-08-01',222635,4),(136,'P00132','Egreso','2020-08-04',192599,7),(137,'P00133','Egreso','2020-08-07',150974,4),(138,'P00134','Egreso','2020-08-10',60625,8),(139,'P00135','Egreso','2020-08-13',294815,11),(140,'P00136','Egreso','2020-08-16',45468,7),(141,'P00137','Egreso','2020-08-19',247726,4),(142,'P00138','Egreso','2020-08-22',175561,10),(143,'P00139','Egreso','2020-08-25',158384,8),(144,'P00140','Egreso','2020-08-28',122240,11),(145,'P00141','Egreso','2020-09-01',121055,4),(146,'P00142','Egreso','2020-09-04',52184,7),(147,'P00143','Egreso','2020-09-07',200021,4),(148,'P00144','Egreso','2020-09-10',269410,8),(149,'P00145','Egreso','2020-09-13',228649,11),(150,'P00146','Egreso','2020-09-16',47698,7),(151,'P00147','Egreso','2020-09-19',20782,4),(152,'P00116','Egreso','2020-09-22',262781,11),(153,'P00148','Egreso','2020-09-22',138216,10),(154,'P00117','Egreso','2020-09-25',191131,7),(155,'P00149','Egreso','2020-09-25',91071,8),(156,'P00118','Egreso','2020-09-28',26855,4),(157,'P00150','Egreso','2020-09-28',157821,11),(158,'P00119','Egreso','2020-10-01',124078,10),(159,'P00134','Egreso','2020-10-01',161646,8),(160,'P00120','Egreso','2020-10-04',16006,8),(161,'P00135','Egreso','2020-10-04',57988,11),(162,'P00101','Egreso','2020-10-07',149277,7),(163,'P00136','Egreso','2020-10-07',135113,7),(164,'P00102','Egreso','2020-10-10',170554,4),(165,'P00137','Egreso','2020-10-10',295302,4),(166,'P00103','Egreso','2020-10-13',25100,4),(167,'P00138','Egreso','2020-10-13',73794,10),(168,'P00113','Egreso','2020-10-16',43202,4),(169,'P00139','Egreso','2020-10-16',106432,8),(170,'P00114','Egreso','2020-10-19',257036,10),(171,'P00140','Egreso','2020-10-19',90675,11),(172,'P00115','Egreso','2020-10-22',218095,8),(173,'P00141','Egreso','2020-10-22',252093,4),(174,'P00116','Egreso','2020-10-25',113111,11),(175,'P00142','Egreso','2020-10-25',85168,7),(176,'P00117','Egreso','2020-10-28',30101,7),(177,'P00143','Egreso','2020-10-28',278387,4),(178,'P00118','Egreso','2020-11-01',299321,4),(179,'P00144','Egreso','2020-11-01',156276,8),(180,'P00119','Egreso','2020-11-04',164974,10),(181,'P00145','Egreso','2020-11-04',28845,11),(182,'P00120','Egreso','2020-11-07',168444,8),(183,'P00146','Egreso','2020-11-07',298913,7),(184,'P00120','Egreso','2020-11-10',285123,8),(185,'P00147','Egreso','2020-11-10',10509,4),(186,'P00120','Egreso','2020-11-13',118002,8),(187,'P00148','Egreso','2020-11-13',239084,10),(188,'P00121','Egreso','2020-11-16',66132,7),(189,'P00149','Egreso','2020-11-16',98759,8),(190,'P00150','Egreso','2020-11-19',22735,11),(191,'P00121','Egreso','2020-11-22',153467,7),(192,'P00122','Egreso','2020-11-25',216757,4),(193,'P00123','Egreso','2020-11-28',248673,4),(194,'P00124','Egreso','2020-12-01',233659,8),(195,'P00125','Egreso','2020-12-04',139242,11),(196,'P00126','Egreso','2020-12-07',231968,7),(197,'P00127','Egreso','2020-12-10',173998,4),(198,'P00128','Egreso','2020-12-13',83142,10),(199,'P00129','Egreso','2020-12-16',64138,8),(200,'P00130','Egreso','2020-12-19',147083,11),(201,'P00131','Egreso','2020-12-22',256449,4),(202,'P00132','Egreso','2020-12-25',152846,7),(203,'P00133','Egreso','2020-12-28',256144,4),(204,'P00119','Egreso','2021-01-01',253069,10),(205,'P00134','Egreso','2021-01-01',135225,8),(206,'P00120','Egreso','2021-01-04',70453,8),(207,'P00135','Egreso','2021-01-04',89516,11),(208,'P00101','Egreso','2021-01-07',66906,7),(209,'P00132','Egreso','2021-01-07',110878,7),(210,'P00102','Egreso','2021-01-10',277032,4),(211,'P00133','Egreso','2021-01-10',31099,4),(212,'P00103','Egreso','2021-01-13',291211,4),(213,'P00134','Egreso','2021-01-13',249165,8),(214,'P00104','Egreso','2021-01-16',288754,10),(215,'P00135','Egreso','2021-01-16',281214,11),(216,'P00105','Egreso','2021-01-19',140691,8),(217,'P00136','Egreso','2021-01-19',148154,7),(218,'P00106','Egreso','2021-01-22',29783,11),(219,'P00137','Egreso','2021-01-22',217867,4),(220,'P00107','Egreso','2021-01-25',269442,7),(221,'P00138','Egreso','2021-01-25',73794,10),(222,'P00108','Egreso','2021-01-28',42714,4),(223,'P00124','Egreso','2021-01-28',30337,8),(224,'P00134','Egreso','2021-01-28',173152,8),(225,'P00139','Egreso','2021-01-28',106432,8),(226,'P00144','Egreso','2021-01-28',124428,8),(227,'P00109','Egreso','2021-02-01',190624,10),(228,'P00125','Egreso','2021-02-01',88185,11),(229,'P00135','Egreso','2021-02-01',170553,11),(230,'P00140','Egreso','2021-02-01',90675,11),(231,'P00145','Egreso','2021-02-01',61059,11),(232,'P00110','Egreso','2021-02-04',198463,8),(233,'P00126','Egreso','2021-02-04',146818,7),(234,'P00136','Egreso','2021-02-04',212736,7),(235,'P00141','Egreso','2021-02-04',252093,4),(236,'P00146','Egreso','2021-02-04',183119,7),(237,'P00111','Egreso','2021-02-07',128552,11),(238,'P00127','Egreso','2021-02-07',283665,4),(239,'P00137','Egreso','2021-02-07',151708,4),(240,'P00142','Egreso','2021-02-07',85168,7),(241,'P00147','Egreso','2021-02-07',202693,4),(242,'P00112','Egreso','2021-02-10',143848,7),(243,'P00128','Egreso','2021-02-10',59591,10),(244,'P00138','Egreso','2021-02-10',279688,10),(245,'P00143','Egreso','2021-02-10',278387,4),(246,'P00148','Egreso','2021-02-10',26156,10),(247,'P00113','Egreso','2021-02-13',111656,4),(248,'P00129','Egreso','2021-02-13',209335,8),(249,'P00139','Egreso','2021-02-13',72059,8),(250,'P00144','Egreso','2021-02-13',156276,8),(251,'P00149','Egreso','2021-02-13',295351,8),(252,'P00114','Egreso','2021-02-16',251228,10),(253,'P00130','Egreso','2021-02-16',241869,11),(254,'P00140','Egreso','2021-02-16',117043,11),(255,'P00145','Egreso','2021-02-16',28845,11),(256,'P00150','Egreso','2021-02-16',195051,11),(257,'P00115','Egreso','2021-02-19',11195,8),(258,'P00121','Egreso','2021-02-19',296580,7),(259,'P00131','Egreso','2021-02-19',141315,4),(260,'P00141','Egreso','2021-02-19',11442,4),(261,'P00146','Egreso','2021-02-19',11442,7),(262,'P00147','Egreso','2021-02-22',10587,4),(263,'P00148','Egreso','2021-02-25',13020,10),(264,'P00149','Egreso','2021-02-28',217800,8),(265,'P00150','Egreso','2021-03-01',268049,11),(266,'P00121','Egreso','2021-03-04',229698,7),(267,'P00122','Egreso','2021-03-07',102297,4),(268,'P00122','Egreso','2022-09-22',149161,4),(269,'P00132','Egreso','2022-09-22',48679,7),(270,'P00142','Egreso','2022-09-22',10587,7),(271,'P00123','Egreso','2022-09-25',85257,4),(272,'P00133','Egreso','2022-09-25',194151,4),(273,'P00143','Egreso','2022-09-25',13020,4),(274,'P00124','Egreso','2022-09-28',246839,8),(275,'P00134','Egreso','2022-09-28',219837,8),(276,'P00144','Egreso','2022-09-28',217800,8),(277,'P00125','Egreso','2022-10-01',244816,11),(278,'P00135','Egreso','2022-10-01',225311,11),(279,'P00145','Egreso','2022-10-01',268049,11),(280,'P00126','Egreso','2022-10-04',14222,7),(281,'P00136','Egreso','2022-10-04',247527,7),(282,'P00146','Egreso','2022-10-04',229698,7),(283,'P00127','Egreso','2022-10-07',212134,4),(284,'P00137','Egreso','2022-10-07',223875,4),(285,'P00147','Egreso','2022-10-07',102297,4),(286,'P00128','Egreso','2022-10-10',280267,10),(287,'P00138','Egreso','2022-10-10',148032,10),(288,'P00148','Egreso','2022-10-10',24358,10),(289,'P00129','Egreso','2022-10-13',211622,8),(290,'P00139','Egreso','2022-10-13',42668,8),(291,'P00149','Egreso','2022-10-13',165797,8),(292,'P00130','Egreso','2022-10-16',140463,11),(293,'P00140','Egreso','2022-10-16',81679,11),(294,'P00150','Egreso','2022-10-16',260964,11),(295,'P00121','Egreso','2022-10-19',228513,7),(296,'P00131','Egreso','2022-10-19',186346,4),(297,'P00141','Egreso','2022-10-19',280320,4),(298,'P00122','Egreso','2022-10-22',91564,4),(299,'P00132','Egreso','2022-10-22',50488,7),(300,'P00142','Egreso','2022-10-22',34695,7),(301,'P00123','Egreso','2022-10-25',91564,4),(302,'P00133','Egreso','2022-10-25',126804,4),(303,'P00143','Egreso','2022-10-25',82635,4),(304,'P00122','Egreso','2022-11-17',24251,4),(305,'P00123','Egreso','2022-11-18',75137,4),(306,'P00101','Egreso','2023-01-01',164820,7),(307,'P00102','Egreso','2023-01-03',109099,4),(308,'P00103','Egreso','2023-01-05',136125,4),(309,'P00104','Egreso','2023-01-07',241670,10),(310,'P00105','Egreso','2023-01-10',257510,8),(311,'P00110','Egreso','2023-01-12',193408,8),(312,'P00111','Egreso','2023-01-15',200989,11),(313,'P00112','Egreso','2023-01-17',172745,7),(314,'P00113','Egreso','2023-01-20',129158,4),(315,'P00114','Egreso','2023-01-22',226947,10),(316,'P00115','Egreso','2023-01-25',14028,8),(317,'P00116','Egreso','2023-01-27',93391,11),(318,'P00117','Egreso','2023-01-30',239664,7),(319,'P00118','Egreso','2023-02-02',145362,4),(320,'P00119','Egreso','2023-02-05',98184,10),(321,'P00120','Egreso','2023-02-08',262998,8),(322,'P00106','Egreso','2023-02-11',47776,11),(323,'P00107','Egreso','2023-02-14',51622,7),(324,'P00108','Egreso','2023-02-17',130133,4),(325,'P00109','Egreso','2023-02-20',232698,10),(326,'P00110','Egreso','2023-02-23',175620,8),(327,'P00111','Egreso','2023-02-26',248690,11),(328,'P00112','Egreso','2023-03-01',176341,7),(329,'P00113','Egreso','2023-03-04',152240,4),(330,'P00119','Egreso','2023-10-01',70237,10),(331,'P00120','Egreso','2023-10-04',71101,8),(332,'P00101','Egreso','2023-10-07',84017,7),(333,'P00102','Egreso','2023-10-10',120929,4),(334,'P00103','Egreso','2023-10-13',151245,4),(335,'P00113','Egreso','2023-10-16',35853,4),(336,'P00114','Egreso','2023-10-19',57471,10),(337,'P00115','Egreso','2023-10-22',289894,8),(338,'P00116','Egreso','2023-10-25',228821,11),(339,'P00117','Egreso','2023-10-28',16770,7),(340,'P00118','Egreso','2023-11-01',52591,4),(341,'P00119','Egreso','2023-11-04',249088,10),(342,'P00120','Egreso','2023-11-07',132812,8),(343,'P00120','Egreso','2023-11-10',193225,8),(344,'P00120','Egreso','2023-11-13',198619,8),(345,'P00018','Egreso','2024-01-03',122441,4),(346,'P00006','Egreso','2024-01-09',251833,4),(347,'P00014','Egreso','2024-01-15',58494,6),(348,'P00003','Egreso','2024-01-18',195975,6),(349,'P00009','Egreso','2024-01-20',12373,7),(350,'P00008','Egreso','2024-01-21',269252,6),(351,'P00010','Egreso','2024-01-28',101610,9),(352,'P00013','Egreso','2024-02-01',41665,5),(353,'P00018','Egreso','2024-02-04',133962,4),(354,'P00002','Egreso','2024-02-08',288255,5),(355,'P00017','Egreso','2024-03-05',288537,8),(356,'P00009','Egreso','2024-03-06',151274,7),(357,'P00004','Egreso','2024-03-09',158607,7),(358,'P00001','Egreso','2024-03-18',171488,4),(359,'P00005','Egreso','2024-03-28',238101,8),(360,'P00012','Egreso','2024-04-09',224379,4),(361,'P00016','Egreso','2024-04-09',295412,9),(362,'P00016','Egreso','2024-04-10',128265,9),(363,'P00005','Egreso','2024-04-14',288617,8),(364,'P00013','Egreso','2024-04-14',79543,5),(365,'P00017','Egreso','2024-05-01',136358,8),(366,'P00010','Egreso','2024-05-02',273713,9),(367,'P00007','Egreso','2024-05-06',235688,5),(368,'P00015','Egreso','2024-05-19',26434,7),(369,'P00015','Egreso','2024-05-24',35574,7),(370,'P00012','Egreso','2024-06-03',153447,4),(371,'P00011','Egreso','2024-06-04',291963,8),(372,'P00008','Egreso','2024-06-12',110198,6),(373,'P00014','Egreso','2024-06-19',218705,6);
/*!40000 ALTER TABLE `egresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_donante`
--

DROP TABLE IF EXISTS `estado_donante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_donante` (
  `Id_estado` int NOT NULL AUTO_INCREMENT,
  `Estado_donante` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_donante`
--

LOCK TABLES `estado_donante` WRITE;
/*!40000 ALTER TABLE `estado_donante` DISABLE KEYS */;
INSERT INTO `estado_donante` (`Id_estado`, `Estado_donante`) VALUES (1,'ACTIVO'),(2,'INACTIVO');
/*!40000 ALTER TABLE `estado_donante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frecuencia`
--

DROP TABLE IF EXISTS `frecuencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frecuencia` (
  `Id_frecuencia` int NOT NULL AUTO_INCREMENT,
  `Frecuencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_frecuencia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frecuencia`
--

LOCK TABLES `frecuencia` WRITE;
/*!40000 ALTER TABLE `frecuencia` DISABLE KEYS */;
INSERT INTO `frecuencia` (`Id_frecuencia`, `Frecuencia`) VALUES (1,'Mensual'),(2,'Bimestral'),(3,'Trimestral'),(4,'Semestral'),(5,'Anual');
/*!40000 ALTER TABLE `frecuencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingresos` (
  `Id_ingreso` int NOT NULL AUTO_INCREMENT,
  `Id_donante` varchar(50) DEFAULT NULL,
  `Tipo_movimiento` tinytext,
  `Fecha` date DEFAULT NULL,
  `Importe` int DEFAULT NULL,
  `Id_cuenta` int DEFAULT NULL,
  PRIMARY KEY (`Id_ingreso`),
  KEY `Id_donante` (`Id_donante`),
  KEY `Id_cuenta` (`Id_cuenta`),
  CONSTRAINT `ingresos_ibfk_1` FOREIGN KEY (`Id_donante`) REFERENCES `donantes` (`Id_donante`),
  CONSTRAINT `ingresos_ibfk_2` FOREIGN KEY (`Id_cuenta`) REFERENCES `cuenta` (`Id_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos`
--

LOCK TABLES `ingresos` WRITE;
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
INSERT INTO `ingresos` (`Id_ingreso`, `Id_donante`, `Tipo_movimiento`, `Fecha`, `Importe`, `Id_cuenta`) VALUES (1,'D00122','Ingreso','2018-01-03',66227,2),(2,'D00121','Ingreso','2018-01-26',243823,1),(3,'D00122','Ingreso','2018-07-15',55300,2),(4,'D00116','Ingreso','2018-12-23',72299,2),(5,'D00122','Ingreso','2019-01-08',84760,2),(6,'D00121','Ingreso','2019-03-15',272276,1),(7,'D00122','Ingreso','2019-07-23',16137,2),(8,'D00109','Ingreso','2019-08-09',183574,1),(9,'D00112','Ingreso','2019-08-13',385846,1),(10,'D00109','Ingreso','2019-10-15',714947,1),(11,'D00116','Ingreso','2019-10-23',63458,2),(12,'D00111','Ingreso','2019-12-02',766487,2),(13,'D00109','Ingreso','2019-12-20',249584,1),(14,'D00135','Ingreso','2020-01-01',60805,3),(15,'D00111','Ingreso','2020-01-03',356286,2),(16,'D00122','Ingreso','2020-01-12',18448,2),(17,'D00117','Ingreso','2020-01-24',387885,2),(18,'D00109','Ingreso','2020-02-05',730842,1),(19,'D00111','Ingreso','2020-02-05',72321,2),(20,'D00117','Ingreso','2020-02-24',540813,2),(21,'D00135','Ingreso','2020-03-01',32127,3),(22,'D00111','Ingreso','2020-03-03',512660,2),(23,'D00117','Ingreso','2020-03-24',274968,2),(24,'D00111','Ingreso','2020-04-04',235999,2),(25,'D00109','Ingreso','2020-04-12',280468,1),(26,'D00117','Ingreso','2020-04-24',276867,2),(27,'D00135','Ingreso','2020-05-01',63835,3),(28,'D00110','Ingreso','2020-05-02',101418,2),(29,'D00111','Ingreso','2020-05-06',188904,2),(30,'D00117','Ingreso','2020-05-24',460149,2),(31,'D00111','Ingreso','2020-06-03',183842,2),(32,'D00121','Ingreso','2020-06-04',205153,1),(33,'D00109','Ingreso','2020-06-18',166865,1),(34,'D00117','Ingreso','2020-06-24',247913,2),(35,'D00135','Ingreso','2020-07-01',84204,3),(36,'D00111','Ingreso','2020-07-05',70469,2),(37,'D00122','Ingreso','2020-07-05',75788,2),(38,'D00117','Ingreso','2020-07-24',565616,2),(39,'D00110','Ingreso','2020-08-03',153871,2),(40,'D00111','Ingreso','2020-08-04',207544,2),(41,'D00112','Ingreso','2020-08-14',750782,1),(42,'D00109','Ingreso','2020-08-22',655577,1),(43,'D00117','Ingreso','2020-08-24',219966,2),(44,'D00135','Ingreso','2020-09-01',121573,3),(45,'D00111','Ingreso','2020-09-03',483595,2),(46,'D00117','Ingreso','2020-09-24',264022,2),(47,'D00111','Ingreso','2020-10-05',226668,2),(48,'D00109','Ingreso','2020-10-10',686866,1),(49,'D00117','Ingreso','2020-10-24',354871,2),(50,'D00135','Ingreso','2020-11-01',179927,3),(51,'D00111','Ingreso','2020-11-04',285886,2),(52,'D00110','Ingreso','2020-11-05',141673,2),(53,'D00116','Ingreso','2020-11-15',173463,2),(54,'D00117','Ingreso','2020-11-24',244865,2),(55,'D00111','Ingreso','2020-12-02',321539,2),(56,'D00117','Ingreso','2020-12-24',325793,2),(57,'D00109','Ingreso','2020-12-25',492556,1),(58,'D00115','Ingreso','2020-12-25',180488,3),(59,'D00135','Ingreso','2021-01-01',433438,3),(60,'D00141','Ingreso','2021-01-01',51713,3),(61,'D00123','Ingreso','2021-01-02',1121873,3),(62,'D00132','Ingreso','2021-01-02',29120,3),(63,'D00111','Ingreso','2021-01-03',345181,2),(64,'D00122','Ingreso','2021-01-18',24378,2),(65,'D00114','Ingreso','2021-01-22',193728,3),(66,'D00117','Ingreso','2021-01-24',399685,2),(67,'D00111','Ingreso','2021-02-05',250534,2),(68,'D00109','Ingreso','2021-02-07',470537,1),(69,'D00110','Ingreso','2021-02-07',130672,2),(70,'D00115','Ingreso','2021-02-10',79065,3),(71,'D00123','Ingreso','2021-02-15',220940,3),(72,'D00132','Ingreso','2021-02-16',88565,3),(73,'D00114','Ingreso','2021-02-23',139844,3),(74,'D00117','Ingreso','2021-02-24',486131,2),(75,'D00135','Ingreso','2021-03-01',526926,3),(76,'D00111','Ingreso','2021-03-04',333984,2),(77,'D00123','Ingreso','2021-03-07',570809,3),(78,'D00132','Ingreso','2021-03-08',88682,3),(79,'D00114','Ingreso','2021-03-22',45549,3),(80,'D00117','Ingreso','2021-03-24',455211,2),(81,'D00141','Ingreso','2021-04-01',109533,3),(82,'D00111','Ingreso','2021-04-06',522252,2),(83,'D00115','Ingreso','2021-04-07',184185,3),(84,'D00109','Ingreso','2021-04-14',143318,1),(85,'D00123','Ingreso','2021-04-22',408684,3),(86,'D00132','Ingreso','2021-04-22',28523,3),(87,'D00114','Ingreso','2021-04-24',87788,3),(88,'D00117','Ingreso','2021-04-24',334904,2),(89,'D00135','Ingreso','2021-05-01',271642,3),(90,'D00111','Ingreso','2021-05-03',564381,2),(91,'D00110','Ingreso','2021-05-04',195011,2),(92,'D00123','Ingreso','2021-05-10',451106,3),(93,'D00116','Ingreso','2021-05-12',42590,2),(94,'D00132','Ingreso','2021-05-12',13240,3),(95,'D00114','Ingreso','2021-05-22',57471,3),(96,'D00117','Ingreso','2021-05-24',268278,2),(97,'D00111','Ingreso','2021-06-05',53611,2),(98,'D00109','Ingreso','2021-06-19',387405,1),(99,'D00115','Ingreso','2021-06-19',65000,3),(100,'D00114','Ingreso','2021-06-23',40464,3),(101,'D00117','Ingreso','2021-06-24',486280,2),(102,'D00123','Ingreso','2021-06-28',442684,3),(103,'D00132','Ingreso','2021-06-30',27493,3),(104,'D00135','Ingreso','2021-07-01',400338,3),(105,'D00141','Ingreso','2021-07-01',117472,3),(106,'D00111','Ingreso','2021-07-04',175471,2),(107,'D00123','Ingreso','2021-07-05',404537,3),(108,'D00132','Ingreso','2021-07-14',222261,3),(109,'D00114','Ingreso','2021-07-22',190604,3),(110,'D00117','Ingreso','2021-07-24',335920,2),(111,'D00122','Ingreso','2021-07-27',61986,2),(112,'D00115','Ingreso','2021-08-05',181635,3),(113,'D00132','Ingreso','2021-08-05',102864,3),(114,'D00110','Ingreso','2021-08-06',199470,2),(115,'D00111','Ingreso','2021-08-06',487451,2),(116,'D00112','Ingreso','2021-08-12',409837,1),(117,'D00123','Ingreso','2021-08-19',374870,3),(118,'D00121','Ingreso','2021-08-22',218438,1),(119,'D00109','Ingreso','2021-08-23',748110,1),(120,'D00114','Ingreso','2021-08-23',197183,3),(121,'D00117','Ingreso','2021-08-24',581841,2),(122,'D00135','Ingreso','2021-09-01',545228,3),(123,'D00111','Ingreso','2021-09-03',590151,2),(124,'D00123','Ingreso','2021-09-12',496721,3),(125,'D00132','Ingreso','2021-09-19',228710,3),(126,'D00114','Ingreso','2021-09-22',46112,3),(127,'D00117','Ingreso','2021-09-24',294729,2),(128,'D00141','Ingreso','2021-10-01',104618,3),(129,'D00132','Ingreso','2021-10-03',291540,3),(130,'D00111','Ingreso','2021-10-05',442684,2),(131,'D00109','Ingreso','2021-10-11',606837,1),(132,'D00115','Ingreso','2021-10-22',66423,3),(133,'D00114','Ingreso','2021-10-23',132359,3),(134,'D00117','Ingreso','2021-10-24',545689,2),(135,'D00123','Ingreso','2021-10-26',455378,3),(136,'D00135','Ingreso','2021-11-01',244089,3),(137,'D00110','Ingreso','2021-11-03',196540,2),(138,'D00123','Ingreso','2021-11-03',329454,3),(139,'D00111','Ingreso','2021-11-04',520747,2),(140,'D00114','Ingreso','2021-11-22',180459,3),(141,'D00132','Ingreso','2021-11-22',366630,3),(142,'D00117','Ingreso','2021-11-24',347660,2),(143,'D00111','Ingreso','2021-12-06',599251,2),(144,'D00132','Ingreso','2021-12-09',446985,3),(145,'D00115','Ingreso','2021-12-15',123625,3),(146,'D00123','Ingreso','2021-12-21',492165,3),(147,'D00114','Ingreso','2021-12-23',113088,3),(148,'D00117','Ingreso','2021-12-24',416591,2),(149,'D00109','Ingreso','2021-12-27',732998,1),(150,'D00135','Ingreso','2022-01-01',569863,3),(151,'D00141','Ingreso','2022-01-01',39420,3),(152,'D00132','Ingreso','2022-01-03',326348,3),(153,'D00111','Ingreso','2022-01-04',360648,2),(154,'D00113','Ingreso','2022-01-21',706102,1),(155,'D00133','Ingreso','2022-01-21',74488,3),(156,'D00122','Ingreso','2022-01-22',82997,2),(157,'D00117','Ingreso','2022-01-24',572610,2),(158,'D00115','Ingreso','2022-02-03',89993,3),(159,'D00111','Ingreso','2022-02-05',63873,2),(160,'D00109','Ingreso','2022-02-08',433172,1),(161,'D00110','Ingreso','2022-02-09',167308,2),(162,'D00133','Ingreso','2022-02-14',14428,3),(163,'D00132','Ingreso','2022-02-18',429540,3),(164,'D00113','Ingreso','2022-02-22',254098,1),(165,'D00117','Ingreso','2022-02-24',317989,2),(166,'D00135','Ingreso','2022-03-01',465762,3),(167,'D00111','Ingreso','2022-03-03',299852,2),(168,'D00132','Ingreso','2022-03-07',303796,3),(169,'D00133','Ingreso','2022-03-07',47448,3),(170,'D00113','Ingreso','2022-03-21',76229,1),(171,'D00117','Ingreso','2022-03-24',477604,2),(172,'D00140','Ingreso','2022-04-01',496574,3),(173,'D00141','Ingreso','2022-04-01',46331,3),(174,'D00111','Ingreso','2022-04-05',723618,2),(175,'D00109','Ingreso','2022-04-16',65198,1),(176,'D00115','Ingreso','2022-04-21',11747,3),(177,'D00133','Ingreso','2022-04-22',67094,3),(178,'D00113','Ingreso','2022-04-23',628328,1),(179,'D00117','Ingreso','2022-04-24',484857,2),(180,'D00132','Ingreso','2022-04-25',262362,3),(181,'D00135','Ingreso','2022-05-01',268395,3),(182,'D00111','Ingreso','2022-05-03',615923,2),(183,'D00110','Ingreso','2022-05-05',194895,2),(184,'D00133','Ingreso','2022-05-10',59924,3),(185,'D00132','Ingreso','2022-05-12',523067,3),(186,'D00113','Ingreso','2022-05-21',486856,1),(187,'D00117','Ingreso','2022-05-24',299187,2),(188,'D00111','Ingreso','2022-06-05',282999,2),(189,'D00137','Ingreso','2022-06-05',46148,3),(190,'D00115','Ingreso','2022-06-09',43728,3),(191,'D00109','Ingreso','2022-06-21',505685,1),(192,'D00113','Ingreso','2022-06-22',298046,1),(193,'D00117','Ingreso','2022-06-24',361284,2),(194,'D00132','Ingreso','2022-06-30',534547,3),(195,'D00133','Ingreso','2022-06-30',46713,3),(196,'D00135','Ingreso','2022-07-01',694300,3),(197,'D00141','Ingreso','2022-07-01',40212,3),(198,'D00111','Ingreso','2022-07-04',693094,2),(199,'D00137','Ingreso','2022-07-05',23153,3),(200,'D00122','Ingreso','2022-07-14',30913,2),(201,'D00132','Ingreso','2022-07-15',307194,3),(202,'D00133','Ingreso','2022-07-15',59286,3),(203,'D00113','Ingreso','2022-07-21',171034,1),(204,'D00117','Ingreso','2022-07-24',375092,2),(205,'D00111','Ingreso','2022-08-03',54677,2),(206,'D00133','Ingreso','2022-08-04',89666,3),(207,'D00137','Ingreso','2022-08-05',83712,3),(208,'D00110','Ingreso','2022-08-07',157365,2),(209,'D00132','Ingreso','2022-08-09',462809,3),(210,'D00112','Ingreso','2022-08-15',747805,1),(211,'D00113','Ingreso','2022-08-23',587146,1),(212,'D00109','Ingreso','2022-08-24',547634,1),(213,'D00117','Ingreso','2022-08-24',378265,2),(214,'D00115','Ingreso','2022-08-26',108254,3),(215,'D00135','Ingreso','2022-09-01',676067,3),(216,'D00111','Ingreso','2022-09-05',319808,2),(217,'D00137','Ingreso','2022-09-05',55339,3),(218,'D00133','Ingreso','2022-09-19',81847,3),(219,'D00113','Ingreso','2022-09-21',417361,1),(220,'D00132','Ingreso','2022-09-23',434394,3),(221,'D00117','Ingreso','2022-09-24',398047,2),(222,'D00140','Ingreso','2022-10-01',444382,3),(223,'D00141','Ingreso','2022-10-01',64932,3),(224,'D00108','Ingreso','2022-10-04',281342,1),(225,'D00111','Ingreso','2022-10-04',626970,2),(226,'D00133','Ingreso','2022-10-05',83619,3),(227,'D00137','Ingreso','2022-10-05',65179,3),(228,'D00132','Ingreso','2022-10-07',291606,3),(229,'D00109','Ingreso','2022-10-13',662880,1),(230,'D00115','Ingreso','2022-10-14',53331,3),(231,'D00113','Ingreso','2022-10-22',279196,1),(232,'D00117','Ingreso','2022-10-24',529570,2),(233,'D00135','Ingreso','2022-11-01',727911,3),(234,'D00110','Ingreso','2022-11-04',156809,2),(235,'D00111','Ingreso','2022-11-05',364686,2),(236,'D00137','Ingreso','2022-11-05',173595,3),(237,'D00121','Ingreso','2022-11-11',135999,1),(238,'D00132','Ingreso','2022-11-20',217008,3),(239,'D00113','Ingreso','2022-11-21',706918,1),(240,'D00133','Ingreso','2022-11-23',166344,3),(241,'D00117','Ingreso','2022-11-24',572356,2),(242,'D00115','Ingreso','2022-12-01',156418,3),(243,'D00111','Ingreso','2022-12-03',631303,2),(244,'D00108','Ingreso','2022-12-04',383818,1),(245,'D00132','Ingreso','2022-12-05',592642,3),(246,'D00137','Ingreso','2022-12-05',116913,3),(247,'D00133','Ingreso','2022-12-09',174132,3),(248,'D00113','Ingreso','2022-12-23',385281,1),(249,'D00116','Ingreso','2022-12-23',58332,2),(250,'D00117','Ingreso','2022-12-24',280450,2),(251,'D00109','Ingreso','2022-12-29',257499,1),(252,'D00129','Ingreso','2023-01-01',298586,2),(253,'D00131','Ingreso','2023-01-01',329958,3),(254,'D00134','Ingreso','2023-01-01',356962,3),(255,'D00135','Ingreso','2023-01-01',538554,3),(256,'D00141','Ingreso','2023-01-01',81503,3),(257,'D00130','Ingreso','2023-01-02',86419,3),(258,'D00133','Ingreso','2023-01-02',570388,3),(259,'D00111','Ingreso','2023-01-05',274376,2),(260,'D00137','Ingreso','2023-01-05',447298,3),(261,'D00122','Ingreso','2023-01-07',92208,2),(262,'D00115','Ingreso','2023-01-19',172159,3),(263,'D00113','Ingreso','2023-01-21',331280,1),(264,'D00117','Ingreso','2023-01-24',233279,2),(265,'D00120','Ingreso','2023-01-25',329609,2),(266,'D00108','Ingreso','2023-02-04',217763,1),(267,'D00111','Ingreso','2023-02-04',128788,2),(268,'D00137','Ingreso','2023-02-05',307698,3),(269,'D00109','Ingreso','2023-02-06',567511,1),(270,'D00110','Ingreso','2023-02-06',168805,2),(271,'D00129','Ingreso','2023-02-12',484258,2),(272,'D00134','Ingreso','2023-02-15',263071,3),(273,'D00130','Ingreso','2023-02-16',18374,3),(274,'D00133','Ingreso','2023-02-16',349275,3),(275,'D00113','Ingreso','2023-02-22',351957,1),(276,'D00131','Ingreso','2023-03-01',242085,3),(277,'D00135','Ingreso','2023-03-01',572337,3),(278,'D00111','Ingreso','2023-03-05',256681,2),(279,'D00137','Ingreso','2023-03-05',464627,3),(280,'D00115','Ingreso','2023-03-06',196425,3),(281,'D00129','Ingreso','2023-03-07',445529,2),(282,'D00130','Ingreso','2023-03-08',51045,3),(283,'D00133','Ingreso','2023-03-08',561428,3),(284,'D00134','Ingreso','2023-03-08',525330,3),(285,'D00120','Ingreso','2023-03-10',280069,2),(286,'D00113','Ingreso','2023-03-21',357979,1),(287,'D00140','Ingreso','2023-04-01',488440,3),(288,'D00141','Ingreso','2023-04-01',73476,3),(289,'D00111','Ingreso','2023-04-03',480666,2),(290,'D00108','Ingreso','2023-04-04',424093,1),(291,'D00137','Ingreso','2023-04-05',294917,3),(292,'D00109','Ingreso','2023-04-17',78589,1),(293,'D00129','Ingreso','2023-04-21',541508,2),(294,'D00130','Ingreso','2023-04-22',76343,3),(295,'D00113','Ingreso','2023-04-23',581485,1),(296,'D00134','Ingreso','2023-04-23',508349,3),(297,'D00133','Ingreso','2023-04-25',579438,3),(298,'D00131','Ingreso','2023-05-01',460201,3),(299,'D00135','Ingreso','2023-05-01',604351,3),(300,'D00110','Ingreso','2023-05-03',175721,2),(301,'D00111','Ingreso','2023-05-05',482346,2),(302,'D00137','Ingreso','2023-05-05',273536,3),(303,'D00129','Ingreso','2023-05-10',440936,2),(304,'D00130','Ingreso','2023-05-12',249539,3),(305,'D00133','Ingreso','2023-05-12',359406,3),(306,'D00134','Ingreso','2023-05-12',501922,3),(307,'D00120','Ingreso','2023-05-18',258235,2),(308,'D00113','Ingreso','2023-05-21',428123,1),(309,'D00115','Ingreso','2023-05-22',43469,3),(310,'D00111','Ingreso','2023-06-03',488328,2),(311,'D00108','Ingreso','2023-06-04',191399,1),(312,'D00137','Ingreso','2023-06-05',477167,3),(313,'D00109','Ingreso','2023-06-20',778799,1),(314,'D00113','Ingreso','2023-06-22',85345,1),(315,'D00129','Ingreso','2023-06-28',312491,2),(316,'D00130','Ingreso','2023-06-30',251130,3),(317,'D00133','Ingreso','2023-06-30',590415,3),(318,'D00134','Ingreso','2023-06-30',462336,3),(319,'D00131','Ingreso','2023-07-01',572372,3),(320,'D00135','Ingreso','2023-07-01',563349,3),(321,'D00141','Ingreso','2023-07-01',117902,3),(322,'D00111','Ingreso','2023-07-05',262263,2),(323,'D00137','Ingreso','2023-07-05',345240,3),(324,'D00120','Ingreso','2023-07-07',371932,2),(325,'D00115','Ingreso','2023-07-10',31692,3),(326,'D00130','Ingreso','2023-07-14',472790,3),(327,'D00133','Ingreso','2023-07-14',410481,3),(328,'D00134','Ingreso','2023-07-14',445924,3),(329,'D00129','Ingreso','2023-07-15',269664,2),(330,'D00122','Ingreso','2023-07-19',93637,2),(331,'D00113','Ingreso','2023-07-21',774305,1),(332,'D00111','Ingreso','2023-08-03',356384,2),(333,'D00108','Ingreso','2023-08-04',390950,1),(334,'D00110','Ingreso','2023-08-05',129491,2),(335,'D00130','Ingreso','2023-08-05',470152,3),(336,'D00134','Ingreso','2023-08-05',341986,3),(337,'D00137','Ingreso','2023-08-05',578153,3),(338,'D00129','Ingreso','2023-08-09',447841,2),(339,'D00133','Ingreso','2023-08-09',234722,3),(340,'D00112','Ingreso','2023-08-13',260898,1),(341,'D00113','Ingreso','2023-08-23',609982,1),(342,'D00109','Ingreso','2023-08-26',402281,1),(343,'D00131','Ingreso','2023-09-01',408599,3),(344,'D00135','Ingreso','2023-09-01',697998,3),(345,'D00129','Ingreso','2023-09-02',500982,2),(346,'D00111','Ingreso','2023-09-05',544174,2),(347,'D00137','Ingreso','2023-09-05',255436,3),(348,'D00130','Ingreso','2023-09-18',570995,3),(349,'D00134','Ingreso','2023-09-19',307348,3),(350,'D00113','Ingreso','2023-09-21',680131,1),(351,'D00120','Ingreso','2023-09-22',488646,2),(352,'D00133','Ingreso','2023-09-22',334523,3),(353,'D00115','Ingreso','2023-09-25',92066,3),(354,'D00140','Ingreso','2023-10-01',309601,3),(355,'D00141','Ingreso','2023-10-01',38437,3),(356,'D00134','Ingreso','2023-10-03',449104,3),(357,'D00108','Ingreso','2023-10-04',797809,1),(358,'D00111','Ingreso','2023-10-04',149397,2),(359,'D00137','Ingreso','2023-10-05',630203,3),(360,'D00133','Ingreso','2023-10-07',366542,3),(361,'D00109','Ingreso','2023-10-12',368134,1),(362,'D00113','Ingreso','2023-10-22',130889,1),(363,'D00116','Ingreso','2023-10-23',185679,2),(364,'D00135','Ingreso','2023-11-01',675277,3),(365,'D00111','Ingreso','2023-11-05',675154,2),(366,'D00137','Ingreso','2023-11-05',788229,3),(367,'D00115','Ingreso','2023-11-13',121690,3),(368,'D00120','Ingreso','2023-11-14',243430,2),(369,'D00133','Ingreso','2023-11-19',537160,3),(370,'D00113','Ingreso','2023-11-21',760502,1),(371,'D00134','Ingreso','2023-11-22',265027,3),(372,'D00111','Ingreso','2023-12-03',202733,2),(373,'D00108','Ingreso','2023-12-04',596040,1),(374,'D00133','Ingreso','2023-12-05',553331,3),(375,'D00137','Ingreso','2023-12-05',667281,3),(376,'D00134','Ingreso','2023-12-09',547298,3),(377,'D00113','Ingreso','2023-12-23',469510,1),(378,'D00109','Ingreso','2023-12-28',238802,1),(379,'D00115','Ingreso','2023-12-30',87280,3),(380,'D00121','Ingreso','2023-12-30',190938,1),(381,'D00135','Ingreso','2024-01-01',747671,3),(382,'D00136','Ingreso','2024-01-01',771106,3),(383,'D00141','Ingreso','2024-01-01',73466,3),(384,'D00142','Ingreso','2024-01-01',57632,2),(385,'D00122','Ingreso','2024-01-02',16927,2),(386,'D00120','Ingreso','2024-01-03',435348,2),(387,'D00127','Ingreso','2024-01-04',487746,3),(388,'D00111','Ingreso','2024-01-05',773286,2),(389,'D00137','Ingreso','2024-01-05',663026,3),(390,'D00113','Ingreso','2024-01-21',577317,1),(391,'D00124','Ingreso','2024-02-01',221969,3),(392,'D00125','Ingreso','2024-02-02',35115,2),(393,'D00138','Ingreso','2024-02-02',71381,3),(394,'D00126','Ingreso','2024-02-03',64959,2),(395,'D00108','Ingreso','2024-02-04',683505,1),(396,'D00111','Ingreso','2024-02-04',334462,2),(397,'D00128','Ingreso','2024-02-05',90795,3),(398,'D00137','Ingreso','2024-02-05',575890,3),(399,'D00109','Ingreso','2024-02-09',739084,1),(400,'D00136','Ingreso','2024-02-15',626668,3),(401,'D00142','Ingreso','2024-02-15',88336,2),(402,'D00115','Ingreso','2024-02-17',85785,3),(403,'D00127','Ingreso','2024-02-18',459222,3),(404,'D00113','Ingreso','2024-02-22',445942,1),(405,'D00135','Ingreso','2024-03-01',607880,3),(406,'D00111','Ingreso','2024-03-03',739298,2),(407,'D00137','Ingreso','2024-03-05',704002,3),(408,'D00127','Ingreso','2024-03-07',232185,3),(409,'D00136','Ingreso','2024-03-08',647753,3),(410,'D00142','Ingreso','2024-03-08',58897,2),(411,'D00138','Ingreso','2024-03-12',55346,3),(412,'D00124','Ingreso','2024-03-14',293230,3),(413,'D00126','Ingreso','2024-03-17',45976,2),(414,'D00125','Ingreso','2024-03-18',43290,2),(415,'D00120','Ingreso','2024-03-19',540812,2),(416,'D00128','Ingreso','2024-03-20',75887,3),(417,'D00113','Ingreso','2024-03-21',239793,1),(418,'D00139','Ingreso','2024-04-01',551050,3),(419,'D00141','Ingreso','2024-04-01',115458,3),(420,'D00108','Ingreso','2024-04-04',627181,1),(421,'D00115','Ingreso','2024-04-04',149833,3),(422,'D00111','Ingreso','2024-04-05',539067,2),(423,'D00137','Ingreso','2024-04-05',776587,3),(424,'D00125','Ingreso','2024-04-07',60901,2),(425,'D00126','Ingreso','2024-04-08',173308,2),(426,'D00128','Ingreso','2024-04-08',97534,3),(427,'D00138','Ingreso','2024-04-08',66576,3),(428,'D00124','Ingreso','2024-04-09',568883,3),(429,'D00109','Ingreso','2024-04-18',578868,1),(430,'D00127','Ingreso','2024-04-22',351798,3),(431,'D00136','Ingreso','2024-04-22',571778,3),(432,'D00142','Ingreso','2024-04-22',33079,2),(433,'D00113','Ingreso','2024-04-23',340346,1),(434,'D00135','Ingreso','2024-05-01',668347,3),(435,'D00111','Ingreso','2024-05-03',159307,2),(436,'D00137','Ingreso','2024-05-05',700318,3),(437,'D00127','Ingreso','2024-05-10',546208,3),(438,'D00136','Ingreso','2024-05-10',783804,3),(439,'D00142','Ingreso','2024-05-10',24515,2),(440,'D00120','Ingreso','2024-05-12',515890,2),(441,'D00139','Ingreso','2024-05-15',700290,3),(442,'D00113','Ingreso','2024-05-21',178456,1),(443,'D00115','Ingreso','2024-05-22',86746,3),(444,'D00124','Ingreso','2024-05-22',470187,3),(445,'D00126','Ingreso','2024-05-23',225900,2),(446,'D00125','Ingreso','2024-05-24',92342,2),(447,'D00128','Ingreso','2024-05-25',117968,3),(448,'D00138','Ingreso','2024-05-25',83697,3),(449,'D00116','Ingreso','2024-06-01',43675,2),(450,'D00108','Ingreso','2024-06-04',659415,1),(451,'D00111','Ingreso','2024-06-05',152701,2),(452,'D00137','Ingreso','2024-06-05',782687,3),(453,'D00124','Ingreso','2024-06-07',347778,3),(454,'D00139','Ingreso','2024-06-08',565167,3),(455,'D00125','Ingreso','2024-06-10',17892,2),(456,'D00138','Ingreso','2024-06-10',40499,3),(457,'D00126','Ingreso','2024-06-12',244932,2),(458,'D00128','Ingreso','2024-06-12',359060,3),(459,'D00109','Ingreso','2024-06-22',481653,1),(460,'D00113','Ingreso','2024-06-22',224200,1),(461,'D00127','Ingreso','2024-06-26',584457,3),(462,'D00136','Ingreso','2024-06-30',578491,3),(463,'D00135','Ingreso','2024-07-01',761671,3),(464,'D00111','Ingreso','2024-07-04',430624,2),(465,'D00137','Ingreso','2024-07-05',711560,3),(466,'D00115','Ingreso','2024-07-10',66711,3),(467,'D00136','Ingreso','2024-07-14',770156,3),(468,'D00127','Ingreso','2024-07-15',420123,3),(469,'D00124','Ingreso','2024-07-18',295364,3),(470,'D00113','Ingreso','2024-07-21',609063,1),(471,'D00139','Ingreso','2024-07-22',635642,3),(472,'D00120','Ingreso','2024-07-28',593821,2),(473,'D00125','Ingreso','2024-07-28',63032,2),(474,'D00138','Ingreso','2024-07-28',41123,3),(475,'D00126','Ingreso','2024-07-30',506437,2),(476,'D00128','Ingreso','2024-07-30',523200,3),(477,'D00124','Ingreso','2024-08-03',250149,3),(478,'D00108','Ingreso','2024-08-04',758508,1),(479,'D00111','Ingreso','2024-08-05',148343,2),(480,'D00127','Ingreso','2024-08-05',268596,3),(481,'D00136','Ingreso','2024-08-05',648108,3),(482,'D00137','Ingreso','2024-08-05',768202,3),(483,'D00139','Ingreso','2024-08-10',642222,3),(484,'D00112','Ingreso','2024-08-14',558515,1),(485,'D00125','Ingreso','2024-08-15',29556,2),(486,'D00126','Ingreso','2024-08-15',234530,2),(487,'D00128','Ingreso','2024-08-15',329953,3),(488,'D00138','Ingreso','2024-08-15',15614,3),(489,'D00113','Ingreso','2024-08-23',740873,1),(490,'D00115','Ingreso','2024-08-28',40287,3),(491,'D00109','Ingreso','2024-08-30',676243,1),(492,'D00113','Ingreso','2024-09-01',508753,1),(493,'D00124','Ingreso','2024-09-01',473575,3),(494,'D00139','Ingreso','2024-09-01',514844,3),(495,'D00136','Ingreso','2024-09-02',556901,3),(496,'D00125','Ingreso','2024-09-05',42628,2),(497,'D00126','Ingreso','2024-09-05',531085,2),(498,'D00128','Ingreso','2024-09-05',471594,3),(499,'D00138','Ingreso','2024-09-05',34964,3);
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `Id_pais` int NOT NULL AUTO_INCREMENT,
  `Pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` (`Id_pais`, `Pais`) VALUES (1,'Argentina'),(2,'Uruguay'),(3,'Brasil'),(4,'Paraguay'),(5,'Chile'),(6,'Colombia'),(7,'Bolivia'),(8,'Mexico'),(9,'Venezuela'),(10,'Peru');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `Id_proveedor` varchar(50) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `CUIT` varchar(50) DEFAULT NULL,
  `Contacto` varchar(100) DEFAULT NULL,
  `Correo_electronico` varchar(100) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Id_categoria` int DEFAULT NULL,
  `Id_contribuyente` int DEFAULT NULL,
  `Id_razon_social` int DEFAULT NULL,
  `Id_ciudad` int DEFAULT NULL,
  `Id_pais` int DEFAULT NULL,
  PRIMARY KEY (`Id_proveedor`),
  KEY `Id_categoria` (`Id_categoria`),
  KEY `Id_contribuyente` (`Id_contribuyente`),
  KEY `Id_razon_social` (`Id_razon_social`),
  KEY `Id_ciudad` (`Id_ciudad`),
  KEY `Id_pais` (`Id_pais`),
  CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`Id_categoria`) REFERENCES `categ_proveedores` (`Id_categoria`),
  CONSTRAINT `proveedores_ibfk_2` FOREIGN KEY (`Id_contribuyente`) REFERENCES `contribuyente` (`Id_contribuyente`),
  CONSTRAINT `proveedores_ibfk_3` FOREIGN KEY (`Id_razon_social`) REFERENCES `razon_social` (`Id_razon_social`),
  CONSTRAINT `proveedores_ibfk_4` FOREIGN KEY (`Id_ciudad`) REFERENCES `ciudad` (`Id_ciudad`),
  CONSTRAINT `proveedores_ibfk_5` FOREIGN KEY (`Id_pais`) REFERENCES `pais` (`Id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` (`Id_proveedor`, `Nombre`, `CUIT`, `Contacto`, `Correo_electronico`, `Telefono`, `Id_categoria`, `Id_contribuyente`, `Id_razon_social`, `Id_ciudad`, `Id_pais`) VALUES ('P00001','Proveedora S.A.','30-12345678-9','Juan Pérez','juan.perez@empresa.com','1234-5678',1,3,2,1,1),('P00002','Pedro González','30-87654321-0','Pedro González','pedro.gonzalez@correo.zom','2345-6789',1,1,4,2,1),('P00003','Empresa XYZ','30-13579246-3','María López','maria.lopez@empresa.com','3456-7890',2,3,2,3,1),('P00004','Servicios AB','30-24681357-2','Laura Ruiz','laura.ruiz@correo.zom','AR4567-8901',3,3,4,4,1),('P00005','Carlos Méndez','30-12345678-9',' Carlos Méndez','carlos.mendez@correo.com','5678-9012',1,1,2,1,1),('P00006','Grupo Alfa','30-97531246-1','Alberto Fernández','alberto.fernandez@empresa.zom','6789-0123',1,3,4,5,1),('P00007','Ana Sánchez','30-19283746-4','Ana Sánchez','ana.sanchez@correo.com','7890-1234',1,3,2,6,1),('P00008','Compañía Beta','30-74859632-7','Laura Martínez','laura.martinez@empresa.zom','8901-2345',3,1,4,7,1),('P00009','Fernando Gómez','30-12345679-8',' Fernando Gómez','fernando.gomez@correo.zom','9012-3456',2,3,2,4,1),('P00010','Soluciones Gama','30-98765432-1','Javier Martínez','javier.martinez@empresa.com','0123-4567',1,3,4,6,1),('P00011','Javier López','30-65432198-7','Javier López','javier.lopez@correo.zom','1234-5678',3,1,2,6,1),('P00012','Proveedor Ltda.','30-32165487-0','Natalia Gómez','natalia.gomez@empresa.com','2345-6789',1,3,4,8,1),('P00013','Repuestos Omega','30-45678901-2',' Sergio Castro','sergio.castro@correo.zom','3456-7890',1,1,2,9,1),('P00014','Estudio Jurídico Alfa','30135792487','María Hernández','maria.hernandez@correo.com','4567-8901',2,3,4,10,1),('P00015','Rosa Pérez','30-24681358-6','Rosa Pérez','rosa.perez@correo.zom','5678-9012',3,3,2,1,1),('P00016','Marketing Global','30-97531247-8','Gabriela Gómez','gabriela.gomez@empresa.com','AR6789-0123',1,3,4,11,1),('P00017','Julio Fernández','30-86430976-9','Julio Fernández','julio.fernandez@correo.zom','7890-1234',2,1,2,12,1),('P00018','Consultora Zeta','30-19283747-0',' Laura Sánchez','laura.sanchez@empresa.zom','8901-2345',1,3,4,13,1),('P00101','Luis Martínez','20-12345678-9','Luis Martínez','luis.martinez@empresa.xyz','0111-2345',4,1,4,1,1),('P00102','Ana Rodríguez','30-98765432-5','Ana Rodríguez','ana.rodriguez@empresa.abc','0123-5678',5,3,2,14,1),('P00103','Carlos Fernández','27-23456789-1','Carlos Fernández','carlos.fernandez@empresa.def','0345-6789',6,1,6,1,1),('P00104','María González','23-45678901-3','María González','maria.gonzalez@empresa.ghi','0678-3456',7,3,4,1,1),('P00105','Pedro López','33-56789012-4','Pedro López','pedro.lopez@empresa.jkl','0765-4321',8,1,2,15,1),('P00106','Laura Pérez','20-87654321-2','Laura Pérez','laura.perez@empresa.mno','0889-7654',9,3,4,16,1),('P00107','Javier Ramírez','30-65432109-8','Javier Ramírez','javier.ramirez@empresa.pqr','0999-1234',4,1,2,17,1),('P00108','Claudia Sánchez','27-76543210-6','Claudia Sánchez','claudia.sanchez@empresa.stu','0777-5678',6,3,6,18,1),('P00109','Daniel Morales','23-87654320-5','Daniel Morales','daniel.morales@empresa.vwx','0555-4321',7,1,4,19,1),('P00110','Gabriela Torres','33-76543219-7','Gabriela Torres','gabriela.torres@empresa.yza','0666-2345',8,3,2,20,1),('P00111','Jorge Herrera','20-87654322-3','Jorge Herrera','jorge.herrera@empresa.bcd','0123-9876',9,1,4,1,1),('P00112','Silvia Ramírez','30-76543214-8','Silvia Ramírez','silvia.ramirez@empresa.efg','0999-2345',4,3,2,21,1),('P00113','Roberto Cruz','27-23456789-3','Roberto Cruz','roberto.cruz@empresa.hij','0555-9876',6,3,6,22,1),('P00114','Patricia Gómez','23-87654323-6','Patricia Gómez','patricia.gomez@empresa.klm','0765-3456',7,1,4,23,1),('P00115','Ernesto Ruiz','33-65432198-7','Ernesto Ruiz','ernesto.ruiz@empresa.nop','0889-6543',8,3,2,1,1),('P00116','Valeria Ortega','20-98765432-9','Valeria Ortega','valeria.ortega@empresa.qrs','0777-7654',9,1,4,1,1),('P00117','Juan Castillo','30-87654321-0','Juan Castillo','juan.castillo@empresa.tuv','0345-9998',4,3,2,24,1),('P00118','Sofía Martínez','27-12345678-9','Sofía Martínez','sofia.martinez@empresa.wxy','0555-2345',6,3,6,4,1),('P00119','Pablo Díaz','23-87654329-8','Pablo Díaz','pablo.diaz@empresa.zab','0123-7654',7,1,4,25,1),('P00120','Isabel Ramírez','33-76543218-9','Isabel Ramírez','isabel.ramirez@empresa.bef','0999-9876',8,3,2,26,1),('P00121','Carla Medina','20-34567890-1','Carla Medina','carla.medina@empresa.qrs','0123-6789',10,1,4,27,1),('P00122','Manuel Fernández','30-98765434-2','Manuel Fernández','manuel.fernandez@empresa.tuv','0345-6789',11,3,2,28,1),('P00123','Sofía Castro','27-87654321-0','Sofía Castro','sofia.castro@empresa.uvw','0456-7890',12,1,2,29,1),('P00124','Ricardo López','23-98765432-4','Ricardo López','ricardo.lopez@empresa.xyz','0567-8901',8,3,4,30,1),('P00125','Gabriela Martínez','33-12345678-9','Gabriela Martínez','gabriela.martinez@empresa.abc','0678-9012',9,1,6,31,1),('P00126','Pablo Vargas','20-23456789-1','Pablo Vargas','pablo.vargas@empresa.def','0789-0123',4,3,2,32,1),('P00127','Laura Fernández','30-34567890-3','Laura Fernández','laura.fernandez@empresa.ghi','0890-1234',13,1,4,33,1),('P00128','Javier González','27-98765432-5','Javier González','javier.gonzalez@empresa.jkl','0912-3456',7,3,2,1,1),('P00129','Patricia Rivas','23-45678901-7','Patricia Rivas','patricia.rivas@empresa.mno','0123-4567',8,1,4,34,1),('P00130','Fernando Reyes','33-56789012-6','Fernando Reyes','fernando.reyes@empresa.pqr','0345-6789',9,3,6,35,1),('P00131','Valentina Ortega','20-87654321-2','Valentina Ortega','valentina.ortega@empresa.stu','0456-7890',5,1,4,36,1),('P00132','Andrés Ruiz','30-12345678-9','Andrés Ruiz','andres.ruiz@empresa.tuv','0567-8901',4,3,2,37,1),('P00133','Daniela Fernández','27-23456789-4','Daniela Fernández','daniela.fernandez@empresa.uvw','0678-9012',12,1,2,38,1),('P00134','Luis Gómez','23-34567890-7','Luis Gómez','luis.gomez@empresa.xyz','0789-0123',8,3,4,1,1),('P00135','Marcela Jiménez','33-45678901-8','Marcela Jiménez','marcela.jimenez@empresa.abc','0890-1234',9,1,6,39,1),('P00136','Roberto Díaz','20-56789012-3','Roberto Díaz','roberto.diaz@empresa.def','0912-3456',4,3,2,12,1),('P00137','Camila Martínez','30-67890123-4','Camila Martínez','camila.martinez@empresa.ghi','0123-4567',13,1,4,1,1),('P00138','Santiago López','27-78901234-6','Santiago López','santiago.lopez@empresa.jkl','0345-6789',7,3,2,4,1),('P00139','Fernanda García','23-89012345-9','Fernanda García','fernanda.garcia@empresa.mno','0456-7890',8,1,4,2,1),('P00140','Nicolás Castillo','33-90123456-0','Nicolás Castillo','nicolas.castillo@empresa.pqr','0567-8901',9,3,6,3,1),('P00141','Juliana Pérez','20-01234567-4','Juliana Pérez','juliana.perez@empresa.stu','0678-9012',5,1,4,10,1),('P00142','Diego Fernández','30-12345678-5','Diego Fernández','diego.fernandez@empresa.uvw','0789-0123',4,3,2,13,1),('P00143','Mariana Gómez','27-23456789-6','Mariana Gómez','mariana.gomez@empresa.xyz','0890-1234',12,1,2,40,1),('P00144','Manuel Rodríguez','23-34567890-1','Manuel Rodríguez','manuel.rodriguez@empresa.def','0912-3456',8,3,4,14,1),('P00145','Clara Jiménez','33-45678901-2','Clara Jiménez','clara.jimenez@empresa.ghi','0123-6789',9,1,6,41,1),('P00146','Eduardo Reyes','20-56789012-5','Eduardo Reyes','eduardo.reyes@empresa.jkl','0345-6789',4,3,2,42,1),('P00147','Laura Castillo','30-67890123-6','Laura Castillo','laura.castillo@empresa.mno','0456-7890',13,1,4,15,1),('P00148','Alejandro Rivas','27-78901234-9','Alejandro Rivas','alejandro.rivas@empresa.pqr','0567-8901',7,3,2,16,1),('P00149','Verónica Martínez','23-89012346-2','Verónica Martínez','veronica.martinez@empresa.stu','0678-9012',8,1,4,1,1),('P00150','Gabriel López','33-90123456-3','Gabriel López','gabriel.lopez@empresa.uvw','0789-0123',9,3,6,18,1);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razon_social`
--

DROP TABLE IF EXISTS `razon_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `razon_social` (
  `Id_razon_social` int NOT NULL AUTO_INCREMENT,
  `Razon_social` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_razon_social`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razon_social`
--

LOCK TABLES `razon_social` WRITE;
/*!40000 ALTER TABLE `razon_social` DISABLE KEYS */;
INSERT INTO `razon_social` (`Id_razon_social`, `Razon_social`) VALUES (1,'SAS'),(2,'SA'),(3,'GOB'),(4,'SRL'),(5,'ONG'),(6,'COOPERATIVA');
/*!40000 ALTER TABLE `razon_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_donante`
--

DROP TABLE IF EXISTS `tipo_donante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_donante` (
  `Id_tipo` int NOT NULL AUTO_INCREMENT,
  `Tipo_donante` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_donante`
--

LOCK TABLES `tipo_donante` WRITE;
/*!40000 ALTER TABLE `tipo_donante` DISABLE KEYS */;
INSERT INTO `tipo_donante` (`Id_tipo`, `Tipo_donante`) VALUES (1,'Empresa'),(2,'Estado'),(3,'Campaña'),(4,'ONG'),(5,'Agroindustria'),(6,'Tecnología');
/*!40000 ALTER TABLE `tipo_donante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'potenciar_solidario'
--
/*!50003 DROP PROCEDURE IF EXISTS `calculate_total_expenses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_total_expenses`()
BEGIN
    SELECT SUM(Importe) AS total_expenses
    FROM egresos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_total_income` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_total_income`()
BEGIN
    SELECT SUM(Importe) AS total_income
    FROM ingresos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11 12:21:02
