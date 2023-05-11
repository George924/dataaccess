CREATE SCHEMA `facultate` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `magazin2023`.`student` (
  `idstudent` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `grupa` SET('1','2','3','4') NULL,
  `email` VARCHAR(145) NULL,
  `data_add` VARCHAR(45) NULL,
  `status` ENUM('admis', 'respins', 'neevaluat')  DEFAULT 'neevaluat',
  PRIMARY KEY (`idstudent`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB;



