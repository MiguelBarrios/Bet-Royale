-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema betroyaledb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `betroyaledb` ;

-- -----------------------------------------------------
-- Schema betroyaledb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `betroyaledb` DEFAULT CHARACTER SET utf8 ;
USE `betroyaledb` ;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `active` TINYINT NULL,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`username` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bettable_event`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bettable_event` ;

CREATE TABLE IF NOT EXISTS `bettable_event` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `end_date` DATETIME NOT NULL,
  `final_result` TINYINT NULL,
  `user_id` INT NOT NULL,
  `result_id` INT NOT NULL,
  `description` TEXT NULL,
  `image_url` VARCHAR(2500) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Bet_info_User_idx` (`user_id` ASC),
  CONSTRAINT `fk_Bet_info_User`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `category` ;

CREATE TABLE IF NOT EXISTS `category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `contender`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `contender` ;

CREATE TABLE IF NOT EXISTS `contender` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(2000) NULL,
  `bettable_event_id` INT NOT NULL,
  `is_winner` TINYINT NULL,
  `odds` DOUBLE NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_contender_bettable_event1_idx` (`bettable_event_id` ASC),
  CONSTRAINT `fk_contender_bettable_event1`
    FOREIGN KEY (`bettable_event_id`)
    REFERENCES `bettable_event` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wager`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `wager` ;

CREATE TABLE IF NOT EXISTS `wager` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `bet_amount` DECIMAL(9,2) NULL,
  `odds` DOUBLE NULL,
  `contender_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_wager_contender1_idx` (`contender_id` ASC),
  INDEX `fk_wager_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_wager_contender1`
    FOREIGN KEY (`contender_id`)
    REFERENCES `contender` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wager_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `subcategory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `subcategory` ;

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_subcategory_category1_idx` (`category_id` ASC),
  CONSTRAINT `fk_subcategory_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bettable_event_has_subcategory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bettable_event_has_subcategory` ;

CREATE TABLE IF NOT EXISTS `bettable_event_has_subcategory` (
  `bettable_event_id` INT NOT NULL,
  `subcategory_id` INT NOT NULL,
  PRIMARY KEY (`bettable_event_id`, `subcategory_id`),
  INDEX `fk_bettable_event_has_subcategory_subcategory1_idx` (`subcategory_id` ASC),
  INDEX `fk_bettable_event_has_subcategory_bettable_event1_idx` (`bettable_event_id` ASC),
  CONSTRAINT `fk_bettable_event_has_subcategory_bettable_event1`
    FOREIGN KEY (`bettable_event_id`)
    REFERENCES `bettable_event` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bettable_event_has_subcategory_subcategory1`
    FOREIGN KEY (`subcategory_id`)
    REFERENCES `subcategory` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `event_comment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `event_comment` ;

CREATE TABLE IF NOT EXISTS `event_comment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comment_date` DATETIME NULL,
  `comment_text` TEXT NULL,
  `bettable_event_id` INT NOT NULL,
  `User_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_event_comment_bettable_event1_idx` (`bettable_event_id` ASC),
  INDEX `fk_event_comment_User1_idx` (`User_id` ASC),
  CONSTRAINT `fk_event_comment_bettable_event1`
    FOREIGN KEY (`bettable_event_id`)
    REFERENCES `bettable_event` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_event_comment_User1`
    FOREIGN KEY (`User_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS betroyale@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'betroyale'@'localhost' IDENTIFIED BY 'betroyale';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'betroyale'@'localhost';
SET SQL_MODE = '';
DROP USER IF EXISTS betroyaleuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'betroyaleuser'@'localhost' IDENTIFIED BY 'betroyale';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'betroyaleuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `role`) VALUES (1, 'admin', 'admin', 'bet', 'royale', NULL, 1, 'ROLE_ADMIN');

COMMIT;

