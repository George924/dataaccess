CREATE SCHEMA `magazin2023` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `universitate2023`.`produse` (
  `idprodus` INT NOT NULL,
  `numep` VARCHAR(45) NULL,
  `cantitate` VARCHAR(45) NULL,
  `idfirma` VARCHAR(45) NULL,
  `firma` VARCHAR(45) NULL,
  `adresafirma` VARCHAR(45) NULL,
  `modelp` VARCHAR(45) NULL,
  `stocp` VARCHAR(45) NULL,
  `pret` VARCHAR(45) NULL,
  `categoriep` VARCHAR(45) NULL,
  `descrierep` TINYTEXT NULL,
  `data_addp` DATETIME NULL,
  PRIMARY KEY (`idprodus`));
