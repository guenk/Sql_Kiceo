-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema schema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema schema
-- -----------------------------------------------------
-- Create schema if not exists 
DROP DATABASE IF EXISTS `schema`;

CREATE SCHEMA IF NOT EXISTS `schema` DEFAULT CHARACTER SET utf8 ;
USE `schema` ;

-- -----------------------------------------------------
-- Table `schema`.`Station`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schema`.`Station` (
  `ID_Station` INT NOT NULL AUTO_INCREMENT,
  `Nom_Station` VARCHAR(45) NOT NULL,
  `Desservi` TINYINT NOT NULL,
  PRIMARY KEY (`ID_Station`),
  UNIQUE INDEX `ID_Station_UNIQUE` (`ID_Station` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schema`.`Ligne`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schema`.`Ligne` (
  `Id_Ligne` INT NOT NULL AUTO_INCREMENT,
  `Nom_Ligne` VARCHAR(45) NULL,
  `Direction` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_Ligne`),
  UNIQUE INDEX `Id_Ligne_UNIQUE` (`Id_Ligne` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schema`.`Jour`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schema`.`Jour` (
  `ID_Jour` INT NOT NULL AUTO_INCREMENT,
  `Nom_Jour` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Jour`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schema`.`Horaire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schema`.`Horaire` (
  `ID_Horaire` INT NOT NULL AUTO_INCREMENT,
  `Station_ID_Station` INT NOT NULL,
  `Heures` TIME NULL,
  `Jour_ID_Jour` INT NOT NULL,
  PRIMARY KEY (`ID_Horaire`),
  INDEX `fk_Horaire_Station1_idx` (`Station_ID_Station` ASC) VISIBLE,
  INDEX `fk_Horaire_Jour1_idx` (`Jour_ID_Jour` ASC) VISIBLE,
  UNIQUE INDEX `ID_Horaire_UNIQUE` (`ID_Horaire` ASC) VISIBLE,
  CONSTRAINT `fk_Horaire_Station1`
    FOREIGN KEY (`Station_ID_Station`)
    REFERENCES `schema`.`Station` (`ID_Station`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Horaire_Jour1`
    FOREIGN KEY (`Jour_ID_Jour`)
    REFERENCES `schema`.`Jour` (`ID_Jour`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schema`.`Ligne_has_Station`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schema`.`Ligne_has_Station` (
  `Ligne_IdLigne` INT NOT NULL AUTO_INCREMENT,
  `Station_IdStation` INT NOT NULL,
  PRIMARY KEY (`Ligne_IdLigne`, `Station_IdStation`),
  INDEX `fk_Ligne_has_Station_Station1_idx` (`Station_IdStation` ASC) VISIBLE,
  INDEX `fk_Ligne_has_Station_Ligne_idx` (`Ligne_IdLigne` ASC) VISIBLE,
  INDEX `Ligne_IdLigne` (`Ligne_IdLigne` ASC) VISIBLE,
  CONSTRAINT `fk_Ligne_has_Station_Ligne`
    FOREIGN KEY (`Ligne_IdLigne`)
    REFERENCES `schema`.`Ligne` (`Id_Ligne`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ligne_has_Station_Station1`
    FOREIGN KEY (`Station_IdStation`)
    REFERENCES `schema`.`Station` (`ID_Station`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
