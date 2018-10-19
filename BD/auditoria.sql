-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema auditoria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema auditoria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `auditoria` DEFAULT CHARACTER SET latin1 ;
USE `auditoria` ;

-- -----------------------------------------------------
-- Table `auditoria`.`actividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`actividades` (
  `idActividades` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(65) NULL DEFAULT NULL,
  `Descripcion` VARCHAR(65) NULL DEFAULT NULL,
  PRIMARY KEY (`idActividades`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`encargados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`encargados` (
  `idEncargados` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(65) NULL DEFAULT NULL,
  `Apellido` VARCHAR(65) NULL DEFAULT NULL,
  `Telefono` VARCHAR(45) NULL DEFAULT NULL,
  `Puesto` VARCHAR(65) NULL DEFAULT NULL,
  PRIMARY KEY (`idEncargados`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`areas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`areas` (
  `idAreas` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(65) NULL DEFAULT NULL,
  `Descripcion` VARCHAR(65) NULL DEFAULT NULL,
  `Encargados_idEncargados` INT(11) NOT NULL,
  PRIMARY KEY (`idAreas`),
  INDEX `fk_Areas_Encargados1_idx` (`Encargados_idEncargados` ASC),
  CONSTRAINT `fk_Areas_Encargados1`
    FOREIGN KEY (`Encargados_idEncargados`)
    REFERENCES `auditoria`.`encargados` (`idEncargados`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`auditores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`auditores` (
  `idAuditores` INT(11) NOT NULL AUTO_INCREMENT,
  `Rol` VARCHAR(65) NULL DEFAULT NULL,
  `Nombre` VARCHAR(65) NULL DEFAULT NULL,
  `Apellido` VARCHAR(65) NULL DEFAULT NULL,
  `Contacto` VARCHAR(65) NULL DEFAULT NULL,
  PRIMARY KEY (`idAuditores`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`empresa` (
  `idEmpresa` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(65) NULL DEFAULT NULL,
  `Contacto` VARCHAR(65) NULL DEFAULT NULL,
  `Direccion` VARCHAR(65) NULL DEFAULT NULL,
  `Telefono` VARCHAR(65) NULL DEFAULT NULL,
  `Areas_idAreas` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`enfoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`enfoque` (
  `idEnfoque` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(65) NULL DEFAULT NULL,
  `Descripcion` VARCHAR(65) NULL DEFAULT NULL,
  PRIMARY KEY (`idEnfoque`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`metodologias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`metodologias` (
  `idMetodologias` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(65) NULL DEFAULT NULL,
  `Descripcion` VARCHAR(65) NULL DEFAULT NULL,
  PRIMARY KEY (`idMetodologias`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`fases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`fases` (
  `idFases` INT(11) NOT NULL AUTO_INCREMENT,
  `Procesos` VARCHAR(65) NULL DEFAULT NULL,
  `Metodologias_idMetodologias` INT(11) NOT NULL,
  `Descripcion` VARCHAR(65) NULL DEFAULT NULL,
  `Actividades_idActividades` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idFases`),
  INDEX `fk_Fases_Metodologias1_idx` (`Metodologias_idMetodologias` ASC),
  INDEX `fk_Fases_Actividades_idx` (`Actividades_idActividades` ASC),
  CONSTRAINT `fk_Fases_Actividades`
    FOREIGN KEY (`Actividades_idActividades`)
    REFERENCES `auditoria`.`actividades` (`idActividades`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Fases_Metodologias1`
    FOREIGN KEY (`Metodologias_idMetodologias`)
    REFERENCES `auditoria`.`metodologias` (`idMetodologias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`recursos_de_ti`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`recursos_de_ti` (
  `idRecursos` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(65) NULL DEFAULT NULL,
  `Tipo` VARCHAR(65) NULL DEFAULT NULL,
  PRIMARY KEY (`idRecursos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`riesgos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`riesgos` (
  `idRiesgos` INT(11) NOT NULL AUTO_INCREMENT,
  `Tipo` VARCHAR(65) NULL DEFAULT NULL,
  `Descripcion` VARCHAR(65) NULL DEFAULT NULL,
  `Accion` VARCHAR(65) NULL DEFAULT NULL,
  `recursos_de_ti_idRecursos` INT(11) NOT NULL,
  PRIMARY KEY (`idRiesgos`),
  INDEX `fk_riesgos_recursos_de_ti1_idx` (`recursos_de_ti_idRecursos` ASC),
  CONSTRAINT `fk_riesgos_recursos_de_ti1`
    FOREIGN KEY (`recursos_de_ti_idRecursos`)
    REFERENCES `auditoria`.`recursos_de_ti` (`idRecursos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`tipoproyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`tipoproyecto` (
  `idtipoProyecto` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(65) NULL DEFAULT NULL,
  `Descripcion` VARCHAR(65) NULL DEFAULT NULL,
  `Enfoque_idEnfoque` INT(11) NULL DEFAULT NULL,
  `Metodologias_idMetodologias` INT(11) NOT NULL,
  PRIMARY KEY (`idtipoProyecto`),
  INDEX `fk_tipoProyecto_Metodologias1_idx` (`Metodologias_idMetodologias` ASC),
  CONSTRAINT `fk_tipoProyecto_Metodologias1`
    FOREIGN KEY (`Metodologias_idMetodologias`)
    REFERENCES `auditoria`.`metodologias` (`idMetodologias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`objetivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`objetivo` (
  `idObjetivo` INT(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` VARCHAR(75) NULL DEFAULT NULL,
  `Herramientas` VARCHAR(65) NULL DEFAULT NULL,
  `Riesgos_idRiesgos` INT(11) NULL DEFAULT NULL,
  `Peso` DOUBLE NULL,
  `objetivocol` VARCHAR(45) NULL,
  `tipoproyecto_idtipoProyecto` INT(11) NOT NULL,
  `encargados_idEncargados` INT(11) NOT NULL,
  PRIMARY KEY (`idObjetivo`),
  INDEX `fk_Objetivo_Riesgo_idx` (`Riesgos_idRiesgos` ASC),
  INDEX `fk_objetivo_tipoproyecto1_idx` (`tipoproyecto_idtipoProyecto` ASC),
  INDEX `fk_objetivo_encargados1_idx` (`encargados_idEncargados` ASC),
  CONSTRAINT `fk_Objetivo_Riesgo`
    FOREIGN KEY (`Riesgos_idRiesgos`)
    REFERENCES `auditoria`.`riesgos` (`idRiesgos`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_objetivo_tipoproyecto1`
    FOREIGN KEY (`tipoproyecto_idtipoProyecto`)
    REFERENCES `auditoria`.`tipoproyecto` (`idtipoProyecto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_objetivo_encargados1`
    FOREIGN KEY (`encargados_idEncargados`)
    REFERENCES `auditoria`.`encargados` (`idEncargados`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`informes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`informes` (
  `idInformes` INT(11) NOT NULL AUTO_INCREMENT,
  `Tipo` VARCHAR(65) NULL DEFAULT NULL,
  `Resultados` VARCHAR(65) NULL DEFAULT NULL,
  `Estado` VARCHAR(65) NULL DEFAULT NULL,
  `objetivo_idObjetivo` INT(11) NOT NULL,
  PRIMARY KEY (`idInformes`),
  INDEX `fk_informes_objetivo1_idx` (`objetivo_idObjetivo` ASC),
  CONSTRAINT `fk_informes_objetivo1`
    FOREIGN KEY (`objetivo_idObjetivo`)
    REFERENCES `auditoria`.`objetivo` (`idObjetivo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`proyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`proyecto` (
  `idProyecto` INT(11) NOT NULL AUTO_INCREMENT,
  `tipoProyecto_idtipoProyecto` INT(11) NOT NULL,
  `Empresa_idEmpresa` INT(11) NOT NULL,
  `fechaInicio` DATE NULL DEFAULT NULL,
  `fechaEstimadaFin` DATE NULL DEFAULT NULL,
  `Informes_idInformes` INT(11) NULL DEFAULT NULL,
  `Recursos_idRecursos` INT(11) NULL DEFAULT NULL,
  `auditores_idAuditores` INT(11) NOT NULL,
  PRIMARY KEY (`idProyecto`),
  INDEX `fk_Proyecto_tipoProyecto_idx` (`tipoProyecto_idtipoProyecto` ASC),
  INDEX `fk_Proyecto_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  INDEX `fk_proyecto_auditores1_idx` (`auditores_idAuditores` ASC),
  CONSTRAINT `fk_Proyecto_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `auditoria`.`empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Proyecto_tipoProyecto`
    FOREIGN KEY (`tipoProyecto_idtipoProyecto`)
    REFERENCES `auditoria`.`tipoproyecto` (`idtipoProyecto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyecto_auditores1`
    FOREIGN KEY (`auditores_idAuditores`)
    REFERENCES `auditoria`.`auditores` (`idAuditores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`subobjetivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`subobjetivo` (
  `idSubobjetivo` INT(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` VARCHAR(65) NULL DEFAULT NULL,
  `Objetivo_idObjetivo` INT(11) NOT NULL,
  PRIMARY KEY (`idSubobjetivo`),
  INDEX `fk_Subobjetivo_Objetivo1_idx` (`Objetivo_idObjetivo` ASC),
  CONSTRAINT `fk_Subobjetivo_Objetivo1`
    FOREIGN KEY (`Objetivo_idObjetivo`)
    REFERENCES `auditoria`.`objetivo` (`idObjetivo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `auditoria`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auditoria`.`usuarios` (
  `user` VARCHAR(20) NOT NULL,
  `contraseña` VARCHAR(20) NULL DEFAULT NULL,
  `privilegio` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
