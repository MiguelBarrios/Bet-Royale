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
  `profile_image` VARCHAR(2500) NULL,
  `about_me` TEXT NULL,
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
  `completion` TINYINT NULL,
  `user_id` INT NOT NULL,
  `description` TEXT NULL,
  `image_url` VARCHAR(2500) NULL,
  `date_created` DATETIME NULL,
  `active` TINYINT NOT NULL,
  `contender_id` INT NULL,
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
  `is_winner` TINYINT NULL,
  `odds` DOUBLE NULL,
  `bettable_event_id` INT NULL,
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
  `multiplier` DOUBLE NULL,
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
  `user_id` INT NOT NULL,
  `in_reply_to_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_event_comment_bettable_event1_idx` (`bettable_event_id` ASC),
  INDEX `fk_event_comment_User1_idx` (`user_id` ASC),
  INDEX `fk_event_comment_event_comment1_idx` (`in_reply_to_id` ASC),
  CONSTRAINT `fk_event_comment_bettable_event1`
    FOREIGN KEY (`bettable_event_id`)
    REFERENCES `bettable_event` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_event_comment_User1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_event_comment_event_comment1`
    FOREIGN KEY (`in_reply_to_id`)
    REFERENCES `event_comment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_has_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_has_category` ;

CREATE TABLE IF NOT EXISTS `user_has_category` (
  `user_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `category_id`),
  INDEX `fk_user_has_category_category1_idx` (`category_id` ASC),
  INDEX `fk_user_has_category_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_has_category_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_category_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_has_subcategory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_has_subcategory` ;

CREATE TABLE IF NOT EXISTS `user_has_subcategory` (
  `user_id` INT NOT NULL,
  `subcategory_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `subcategory_id`),
  INDEX `fk_user_has_subcategory_subcategory1_idx` (`subcategory_id` ASC),
  INDEX `fk_user_has_subcategory_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_has_subcategory_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_subcategory_subcategory1`
    FOREIGN KEY (`subcategory_id`)
    REFERENCES `subcategory` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `event_review`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `event_review` ;

CREATE TABLE IF NOT EXISTS `event_review` (
  `user_id` INT NOT NULL,
  `bettable_event_id` INT NOT NULL,
  `rating` INT NULL,
  `comment` TEXT NULL,
  `review_date` DATETIME NULL,
  PRIMARY KEY (`user_id`, `bettable_event_id`),
  INDEX `fk_user_has_bettable_event_bettable_event1_idx` (`bettable_event_id` ASC),
  INDEX `fk_user_has_bettable_event_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_has_bettable_event_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_bettable_event_bettable_event1`
    FOREIGN KEY (`bettable_event_id`)
    REFERENCES `bettable_event` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `viewing_party`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `viewing_party` ;

CREATE TABLE IF NOT EXISTS `viewing_party` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `description` VARCHAR(2000) NULL,
  `start_date` DATE NULL,
  `start_time` TIME NULL,
  `image_url` VARCHAR(2000) NULL,
  `create_date` DATETIME NULL,
  `user_id` INT NOT NULL,
  `bettable_event_id` INT NOT NULL,
  `max_attendees` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_viewing_party_user1_idx` (`user_id` ASC),
  INDEX `fk_viewing_party_bettable_event1_idx` (`bettable_event_id` ASC),
  CONSTRAINT `fk_viewing_party_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_viewing_party_bettable_event1`
    FOREIGN KEY (`bettable_event_id`)
    REFERENCES `bettable_event` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_has_viewing_party`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_has_viewing_party` ;

CREATE TABLE IF NOT EXISTS `user_has_viewing_party` (
  `user_id` INT NOT NULL,
  `viewing_party_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `viewing_party_id`),
  INDEX `fk_user_has_viewing_party_viewing_party1_idx` (`viewing_party_id` ASC),
  INDEX `fk_user_has_viewing_party_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_has_viewing_party_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_viewing_party_viewing_party1`
    FOREIGN KEY (`viewing_party_id`)
    REFERENCES `viewing_party` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `party_comment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `party_comment` ;

CREATE TABLE IF NOT EXISTS `party_comment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comment_date` DATETIME NULL,
  `comment_text` TEXT NULL,
  `user_id` INT NOT NULL,
  `viewing_party_id` INT NULL,
  `in_reply_to` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_party_comment_user1_idx` (`user_id` ASC),
  INDEX `fk_party_comment_viewing_party1_idx` (`viewing_party_id` ASC),
  INDEX `fk_party_comment_party_comment1_idx` (`in_reply_to` ASC),
  CONSTRAINT `fk_party_comment_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_party_comment_viewing_party1`
    FOREIGN KEY (`viewing_party_id`)
    REFERENCES `viewing_party` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_party_comment_party_comment1`
    FOREIGN KEY (`in_reply_to`)
    REFERENCES `party_comment` (`id`)
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
INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `role`, `profile_image`, `about_me`) VALUES (1, 'admin', 'admin', 'bet', 'royale', NULL, 1, 'ROLE_ADMIN', NULL, NULL);
INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `role`, `profile_image`, `about_me`) VALUES (2, 'lpaladini', 'password', 'lucas', 'paladini', 'lpaladini@me.com', 1, 'ROLE_USER', NULL, NULL);
INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `role`, `profile_image`, `about_me`) VALUES (3, 'acorneld', 'password', 'andrew', 'cornelius', 'acorneld@gmail.com', 1, 'ROLE_USER', NULL, NULL);
INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `role`, `profile_image`, `about_me`) VALUES (4, 'spaghettisoup', 'password', 'alex', 'martinez', 'amartin@gmail.com', 1, 'ROLE_USER', NULL, NULL);
INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `role`, `profile_image`, `about_me`) VALUES (5, 'victorwiktor', 'password', 'viktor', 'oleskivy', 'olesvikt@yahoo.com', 1, 'ROLE_USER', NULL, NULL);
INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `role`, `profile_image`, `about_me`) VALUES (6, 'cinderqueen', 'password', 'esmeralda', 'anastazsia', 'eanastazisa@gmail.com', 1, 'ROLE_USER', NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `bettable_event`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `bettable_event` (`id`, `name`, `end_date`, `completion`, `user_id`, `description`, `image_url`, `date_created`, `active`, `contender_id`) VALUES (1, 'does it work', '2022-04-30 14:12:00', NULL, 2, 'does this test work?', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fus.123rf.com%2F450wm%2Falphaspirit%2Falphaspirit1906%2Falphaspirit190600058%2F124217648-man-who-rejoices-at-the-stadium-for-winning-a-rich-soccer-bet.jpg%3Fver%3D6&imgrefurl=https%3A%2F%2Fwww.123rf.com%2Fstock-photo%2Fsports_betting.html&tbnid=3EN7PJ6UFYMtaM&vet=12ahUKEwiSqc-Pv6j3AhVkIH0KHft-A3oQMygEegUIARDqAQ..i&docid=dSDGFOzCjKLSVM&w=450&h=253&q=betting%20image&ved=2ahUKEwiSqc-Pv6j3AhVkIH0KHft-A3oQMygEegUIARDqAQ', NULL, 0, NULL);
INSERT INTO `bettable_event` (`id`, `name`, `end_date`, `completion`, `user_id`, `description`, `image_url`, `date_created`, `active`, `contender_id`) VALUES (2, 'expired event test', '2022-04-12 12:00:00', 1, 3, 'former soccer match', NULL, '2022-03-24 11:59:30', 0, NULL);
INSERT INTO `bettable_event` (`id`, `name`, `end_date`, `completion`, `user_id`, `description`, `image_url`, `date_created`, `active`, `contender_id`) VALUES (3, 'UFC FIGHT NIGHT ', '2022-04-30 16:59:00', NULL, 4, 'Bantamweight match, Font vs. Vera', NULL, '2022-04-25 09:20:00', 1, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `category`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `category` (`id`, `name`, `description`) VALUES (1, 'fight', 'intial fight');
INSERT INTO `category` (`id`, `name`, `description`) VALUES (2, 'sports', 'sports ranging in various movements');
INSERT INTO `category` (`id`, `name`, `description`) VALUES (3, 'esports', 'online gaming competitions based on skill');
INSERT INTO `category` (`id`, `name`, `description`) VALUES (4, 'politics', 'political concepts');
INSERT INTO `category` (`id`, `name`, `description`) VALUES (5, 'food', 'any type of food');
INSERT INTO `category` (`id`, `name`, `description`) VALUES (6, 'stocks', 'stock value movement');

COMMIT;


-- -----------------------------------------------------
-- Data for table `contender`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `contender` (`id`, `name`, `description`, `is_winner`, `odds`, `bettable_event_id`) VALUES (1, 'viper', 'this will work', 1, 0.5, 1);
INSERT INTO `contender` (`id`, `name`, `description`, `is_winner`, `odds`, `bettable_event_id`) VALUES (2, 'blaze', 'this won\'t work', NULL, 0.5, 1);
INSERT INTO `contender` (`id`, `name`, `description`, `is_winner`, `odds`, `bettable_event_id`) VALUES (3, 'Rob Font', 'Bantamweight', NULL, 0.7, 3);
INSERT INTO `contender` (`id`, `name`, `description`, `is_winner`, `odds`, `bettable_event_id`) VALUES (4, 'Marlon Vera', 'Bantamweight', NULL, 0.3, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `wager`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `wager` (`id`, `bet_amount`, `multiplier`, `contender_id`, `user_id`) VALUES (1, 100, 2, 1, 2);
INSERT INTO `wager` (`id`, `bet_amount`, `multiplier`, `contender_id`, `user_id`) VALUES (2, 200, 2, 2, 3);
INSERT INTO `wager` (`id`, `bet_amount`, `multiplier`, `contender_id`, `user_id`) VALUES (3, 350, 2, 1, 4);
INSERT INTO `wager` (`id`, `bet_amount`, `multiplier`, `contender_id`, `user_id`) VALUES (4, 600, 2, 2, 5);
INSERT INTO `wager` (`id`, `bet_amount`, `multiplier`, `contender_id`, `user_id`) VALUES (6, 750, 1.85, 3, 4);
INSERT INTO `wager` (`id`, `bet_amount`, `multiplier`, `contender_id`, `user_id`) VALUES (7, 500, 2.15, 4, 2);
INSERT INTO `wager` (`id`, `bet_amount`, `multiplier`, `contender_id`, `user_id`) VALUES (8, 250, 1.85, 3, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `subcategory`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `subcategory` (`id`, `name`, `description`, `category_id`) VALUES (1, 'DeathMatch', 'L vs A', 1);
INSERT INTO `subcategory` (`id`, `name`, `description`, `category_id`) VALUES (2, 'Soccer Match', 'Team Arlington vs Team Soup Lovers', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `bettable_event_has_subcategory`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `bettable_event_has_subcategory` (`bettable_event_id`, `subcategory_id`) VALUES (1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `event_comment`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `event_comment` (`id`, `comment_date`, `comment_text`, `bettable_event_id`, `user_id`, `in_reply_to_id`) VALUES (1, '2022-04-22 14:12:00', 'grilled cheese', 1, 2, NULL);
INSERT INTO `event_comment` (`id`, `comment_date`, `comment_text`, `bettable_event_id`, `user_id`, `in_reply_to_id`) VALUES (2, '2022-04-22 18:24:00', 'soup', 1, 3, 1);
INSERT INTO `event_comment` (`id`, `comment_date`, `comment_text`, `bettable_event_id`, `user_id`, `in_reply_to_id`) VALUES (3, '2022-04-25 09:15:00', 'can\'t wait to see Font win this fight ', 3, 4, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `user_has_category`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `user_has_category` (`user_id`, `category_id`) VALUES (2, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `user_has_subcategory`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `user_has_subcategory` (`user_id`, `subcategory_id`) VALUES (2, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `event_review`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `event_review` (`user_id`, `bettable_event_id`, `rating`, `comment`, `review_date`) VALUES (2, 1, 4, 'I\'m too dang good', '2022-04-22');

COMMIT;


-- -----------------------------------------------------
-- Data for table `viewing_party`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `viewing_party` (`id`, `title`, `description`, `start_date`, `start_time`, `image_url`, `create_date`, `user_id`, `bettable_event_id`, `max_attendees`) VALUES (1, 'literally anything', 'deathmatch', '2022-04-22', '17:47', NULL, NULL, 2, 1, NULL);
INSERT INTO `viewing_party` (`id`, `title`, `description`, `start_date`, `start_time`, `image_url`, `create_date`, `user_id`, `bettable_event_id`, `max_attendees`) VALUES (2, 'UFC FIGHT NIGHT ', 'Enosa Bar', '2022-04-30', '15:30', NULL, '2022-04-25', 3, 3, 25);

COMMIT;


-- -----------------------------------------------------
-- Data for table `user_has_viewing_party`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `user_has_viewing_party` (`user_id`, `viewing_party_id`) VALUES (2, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `party_comment`
-- -----------------------------------------------------
START TRANSACTION;
USE `betroyaledb`;
INSERT INTO `party_comment` (`id`, `comment_date`, `comment_text`, `user_id`, `viewing_party_id`, `in_reply_to`) VALUES (1, '2022-04-22', 'Grilled Salmon', 2, NULL, NULL);
INSERT INTO `party_comment` (`id`, `comment_date`, `comment_text`, `user_id`, `viewing_party_id`, `in_reply_to`) VALUES (2, '2022-04-23', 'easy win', 3, NULL, 1);

COMMIT;

