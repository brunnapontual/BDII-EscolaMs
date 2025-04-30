-- MySQL Workbench Forward Engineering 

 

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0; 

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0; 

SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION'; 

 

-- ----------------------------------------------------- 

-- Schema escola_musica 

-- ----------------------------------------------------- 

 

-- ----------------------------------------------------- 

-- Schema escola_musica 

-- ----------------------------------------------------- 

CREATE SCHEMA IF NOT EXISTS `escola_musica` DEFAULT CHARACTER SET utf8mb3 ; 

USE `escola_musica` ; 

 

-- ----------------------------------------------------- 

-- Table `escola_musica`.`sinfonia` 

-- ----------------------------------------------------- 

CREATE TABLE IF NOT EXISTS `escola_musica`.`sinfonia` ( 

  `IDsinfonia` INT NOT NULL AUTO_INCREMENT, 

  `Nome` VARCHAR(45) NOT NULL, 

  `Compositor` VARCHAR(45) NOT NULL, 

  `Dt_Criacao` DATE NOT NULL, 

  PRIMARY KEY (`IDsinfonia`)) 

ENGINE = InnoDB 

DEFAULT CHARACTER SET = utf8mb3; 

 

 

-- ----------------------------------------------------- 

-- Table `escola_musica`.`orquestra` 

-- ----------------------------------------------------- 

CREATE TABLE IF NOT EXISTS `escola_musica`.`orquestra` ( 

  `IDorquestra` INT NOT NULL AUTO_INCREMENT, 

  `Nome` VARCHAR(60) NOT NULL, 

  `Pais` VARCHAR(45) NOT NULL, 

  `Cidade` VARCHAR(45) NOT NULL, 

  `Dt_Criacao` DATE NOT NULL, 

  `Sinfonia_IDsinfonia` INT NOT NULL, 

  PRIMARY KEY (`IDorquestra`), 

  INDEX `fk_Orquestra_Sinfonia1_idx` (`Sinfonia_IDsinfonia` ASC) VISIBLE, 

  CONSTRAINT `fk_Orquestra_Sinfonia1` 

    FOREIGN KEY (`Sinfonia_IDsinfonia`) 

    REFERENCES `escola_musica`.`sinfonia` (`IDsinfonia`)) 

ENGINE = InnoDB 

DEFAULT CHARACTER SET = utf8mb3; 

 

 

-- ----------------------------------------------------- 

-- Table `escola_musica`.`musicos` 

-- ----------------------------------------------------- 

CREATE TABLE IF NOT EXISTS `escola_musica`.`musicos` ( 

  `CPF` VARCHAR(14) NOT NULL, 

  `Nome` VARCHAR(45) NOT NULL, 

  `Nacionalidade` VARCHAR(45) NOT NULL, 

  `Instrumento` VARCHAR(45) NOT NULL, 

  `Dt_Nascimento` DATE NOT NULL, 

  `Orquestra_IDorquestra` INT NOT NULL, 

  PRIMARY KEY (`CPF`), 

  INDEX `fk_Musicos_Orquestra1_idx` (`Orquestra_IDorquestra` ASC) VISIBLE, 

  CONSTRAINT `fk_Musicos_Orquestra1` 

    FOREIGN KEY (`Orquestra_IDorquestra`) 

    REFERENCES `escola_musica`.`orquestra` (`IDorquestra`)) 

ENGINE = InnoDB 

DEFAULT CHARACTER SET = utf8mb3; 

 

 

-- ----------------------------------------------------- 

-- Table `escola_musica`.`funcao` 

-- ----------------------------------------------------- 

CREATE TABLE IF NOT EXISTS `escola_musica`.`funcao` ( 

  `IDfuncao` INT NOT NULL AUTO_INCREMENT, 

  `DT_Funcao` DATE NOT NULL, 

  `Nome_Sinfonia` VARCHAR(45) NOT NULL, 

  `Nome_Funcao` VARCHAR(45) NOT NULL, 

  `Sinfonia_IDsinfonia` INT NOT NULL, 

  `musicos_CPF` VARCHAR(14) NOT NULL, 

  PRIMARY KEY (`IDfuncao`), 

  INDEX `fk_Funcao_Sinfonia1_idx` (`Sinfonia_IDsinfonia` ASC) VISIBLE, 

  INDEX `fk_funcao_musicos1_idx` (`musicos_CPF` ASC) VISIBLE, 

  CONSTRAINT `fk_Funcao_Sinfonia1` 

    FOREIGN KEY (`Sinfonia_IDsinfonia`) 

    REFERENCES `escola_musica`.`sinfonia` (`IDsinfonia`) 

    ON DELETE NO ACTION 

    ON UPDATE NO ACTION, 

  CONSTRAINT `fk_funcao_musicos1` 

    FOREIGN KEY (`musicos_CPF`) 

    REFERENCES `escola_musica`.`musicos` (`CPF`) 

    ON DELETE NO ACTION 

    ON UPDATE NO ACTION) 

ENGINE = InnoDB 

DEFAULT CHARACTER SET = utf8mb3; 

 

 

-- ----------------------------------------------------- 

-- Table `escola_musica`.`instrumento` 

-- ----------------------------------------------------- 

CREATE TABLE IF NOT EXISTS `escola_musica`.`instrumento` ( 

  `IDinstrumento` INT NOT NULL AUTO_INCREMENT, 

  `Instrumento` VARCHAR(45) NOT NULL, 

  `Sinfonia_IDsinfonia` INT NOT NULL, 

  `musicos_CPF` VARCHAR(14) NOT NULL, 

  PRIMARY KEY (`IDinstrumento`), 

  INDEX `fk_Instrumento_Sinfonia1_idx` (`Sinfonia_IDsinfonia` ASC) VISIBLE, 

  INDEX `fk_instrumento_musicos1_idx` (`musicos_CPF` ASC) VISIBLE, 

  CONSTRAINT `fk_Instrumento_Sinfonia1` 

    FOREIGN KEY (`Sinfonia_IDsinfonia`) 

    REFERENCES `escola_musica`.`sinfonia` (`IDsinfonia`), 

  CONSTRAINT `fk_instrumento_musicos1` 

    FOREIGN KEY (`musicos_CPF`) 

    REFERENCES `escola_musica`.`musicos` (`CPF`) 

    ON DELETE NO ACTION 

    ON UPDATE NO ACTION) 

ENGINE = InnoDB 

DEFAULT CHARACTER SET = utf8mb3; 

 

 

SET SQL_MODE=@OLD_SQL_MODE; 

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS; 

SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS; 
