-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: auditoria
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividades` (
  `idActividades` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(65) DEFAULT NULL,
  `Descripcion` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idActividades`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `idAreas` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(65) DEFAULT NULL,
  `Descripcion` varchar(65) DEFAULT NULL,
  `Encargados_idEncargados` int(11) NOT NULL,
  PRIMARY KEY (`idAreas`),
  KEY `fk_Areas_Encargados1_idx` (`Encargados_idEncargados`),
  CONSTRAINT `fk_Areas_Encargados1` FOREIGN KEY (`Encargados_idEncargados`) REFERENCES `encargados` (`idEncargados`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditores`
--

DROP TABLE IF EXISTS `auditores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditores` (
  `idAuditores` int(11) NOT NULL AUTO_INCREMENT,
  `Rol` varchar(65) DEFAULT NULL,
  `Nombre` varchar(65) DEFAULT NULL,
  `Apellido` varchar(65) DEFAULT NULL,
  `Contacto` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idAuditores`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditores`
--

LOCK TABLES `auditores` WRITE;
/*!40000 ALTER TABLE `auditores` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(65) DEFAULT NULL,
  `Contacto` varchar(65) DEFAULT NULL,
  `Direccion` varchar(65) DEFAULT NULL,
  `Telefono` varchar(65) DEFAULT NULL,
  `Areas_idAreas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encargados`
--

DROP TABLE IF EXISTS `encargados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encargados` (
  `idEncargados` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(65) DEFAULT NULL,
  `Apellido` varchar(65) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Puesto` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idEncargados`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encargados`
--

LOCK TABLES `encargados` WRITE;
/*!40000 ALTER TABLE `encargados` DISABLE KEYS */;
/*!40000 ALTER TABLE `encargados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfoque`
--

DROP TABLE IF EXISTS `enfoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfoque` (
  `idEnfoque` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(65) DEFAULT NULL,
  `Descripcion` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idEnfoque`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfoque`
--

LOCK TABLES `enfoque` WRITE;
/*!40000 ALTER TABLE `enfoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `enfoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fases`
--

DROP TABLE IF EXISTS `fases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fases` (
  `idFases` int(11) NOT NULL AUTO_INCREMENT,
  `Procesos` varchar(65) DEFAULT NULL,
  `Metodologias_idMetodologias` int(11) NOT NULL,
  `Descripcion` varchar(65) DEFAULT NULL,
  `Actividades_idActividades` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFases`),
  KEY `fk_Fases_Metodologias1_idx` (`Metodologias_idMetodologias`),
  KEY `fk_Fases_Actividades_idx` (`Actividades_idActividades`),
  CONSTRAINT `fk_Fases_Actividades` FOREIGN KEY (`Actividades_idActividades`) REFERENCES `actividades` (`idActividades`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Fases_Metodologias1` FOREIGN KEY (`Metodologias_idMetodologias`) REFERENCES `metodologias` (`idMetodologias`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fases`
--

LOCK TABLES `fases` WRITE;
/*!40000 ALTER TABLE `fases` DISABLE KEYS */;
/*!40000 ALTER TABLE `fases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informes`
--

DROP TABLE IF EXISTS `informes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informes` (
  `idInformes` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(65) DEFAULT NULL,
  `Resultados` varchar(65) DEFAULT NULL,
  `Estado` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idInformes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informes`
--

LOCK TABLES `informes` WRITE;
/*!40000 ALTER TABLE `informes` DISABLE KEYS */;
/*!40000 ALTER TABLE `informes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodologias`
--

DROP TABLE IF EXISTS `metodologias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metodologias` (
  `idMetodologias` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(65) DEFAULT NULL,
  `Descripcion` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idMetodologias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodologias`
--

LOCK TABLES `metodologias` WRITE;
/*!40000 ALTER TABLE `metodologias` DISABLE KEYS */;
/*!40000 ALTER TABLE `metodologias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objetivo`
--

DROP TABLE IF EXISTS `objetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objetivo` (
  `idObjetivo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(75) DEFAULT NULL,
  `Herramientas` varchar(65) DEFAULT NULL,
  `Riesgos_idRiesgos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idObjetivo`),
  KEY `fk_Objetivo_Riesgo_idx` (`Riesgos_idRiesgos`),
  CONSTRAINT `fk_Objetivo_Riesgo` FOREIGN KEY (`Riesgos_idRiesgos`) REFERENCES `riesgos` (`idRiesgos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objetivo`
--

LOCK TABLES `objetivo` WRITE;
/*!40000 ALTER TABLE `objetivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `objetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL AUTO_INCREMENT,
  `tipoProyecto_idtipoProyecto` int(11) NOT NULL,
  `Auditores_idAuditores` int(11) DEFAULT NULL,
  `Empresa_idEmpresa` int(11) NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaEstimadaFin` date DEFAULT NULL,
  `Informes_idInformes` int(11) DEFAULT NULL,
  `Recursos_idRecursos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProyecto`),
  KEY `fk_Proyecto_tipoProyecto_idx` (`tipoProyecto_idtipoProyecto`),
  KEY `fk_Proyecto_Empresa1_idx` (`Empresa_idEmpresa`),
  CONSTRAINT `fk_Proyecto_Empresa1` FOREIGN KEY (`Empresa_idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Proyecto_tipoProyecto` FOREIGN KEY (`tipoProyecto_idtipoProyecto`) REFERENCES `tipoproyecto` (`idtipoProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recursos`
--

DROP TABLE IF EXISTS `recursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recursos` (
  `idRecursos` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(65) DEFAULT NULL,
  `Tipo` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idRecursos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recursos`
--

LOCK TABLES `recursos` WRITE;
/*!40000 ALTER TABLE `recursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `recursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riesgos`
--

DROP TABLE IF EXISTS `riesgos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riesgos` (
  `idRiesgos` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(65) DEFAULT NULL,
  `Descripcion` varchar(65) DEFAULT NULL,
  `Accion` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idRiesgos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riesgos`
--

LOCK TABLES `riesgos` WRITE;
/*!40000 ALTER TABLE `riesgos` DISABLE KEYS */;
/*!40000 ALTER TABLE `riesgos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subobjetivo`
--

DROP TABLE IF EXISTS `subobjetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subobjetivo` (
  `idSubobjetivo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(65) DEFAULT NULL,
  `Objetivo_idObjetivo` int(11) NOT NULL,
  PRIMARY KEY (`idSubobjetivo`),
  KEY `fk_Subobjetivo_Objetivo1_idx` (`Objetivo_idObjetivo`),
  CONSTRAINT `fk_Subobjetivo_Objetivo1` FOREIGN KEY (`Objetivo_idObjetivo`) REFERENCES `objetivo` (`idObjetivo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subobjetivo`
--

LOCK TABLES `subobjetivo` WRITE;
/*!40000 ALTER TABLE `subobjetivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `subobjetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoproyecto`
--

DROP TABLE IF EXISTS `tipoproyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoproyecto` (
  `idtipoProyecto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(65) DEFAULT NULL,
  `Descripcion` varchar(65) DEFAULT NULL,
  `Enfoque_idEnfoque` int(11) DEFAULT NULL,
  `Metodologias_idMetodologias` int(11) NOT NULL,
  `Objetivo_idObjetico` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtipoProyecto`),
  KEY `fk_tipoProyecto_Metodologias1_idx` (`Metodologias_idMetodologias`),
  CONSTRAINT `fk_tipoProyecto_Metodologias1` FOREIGN KEY (`Metodologias_idMetodologias`) REFERENCES `metodologias` (`idMetodologias`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoproyecto`
--

LOCK TABLES `tipoproyecto` WRITE;
/*!40000 ALTER TABLE `tipoproyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoproyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `user` varchar(20) NOT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `privilegio` int(11) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('root','1243',0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-10 22:59:16
