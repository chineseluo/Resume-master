
/**
*contact
*/
DROP TABLE IF EXISTS t_contact;
CREATE TABLE t_contact (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createTime` DATETIME NOT NULL,
  `language` VARCHAR(20) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL DEFAULT '',
  `message` TEXT NOT NULL,
  PRIMARY KEY (`id`))
  ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARACTER SET = utf8;

/**
*education
*/
DROP TABLE IF EXISTS t_education;
CREATE TABLE `t_education` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createTime` DATETIME NOT NULL,
  `language` VARCHAR(20) NOT NULL,
  `period` VARCHAR(100) NOT NULL,
  `title` VARCHAR(100) NOT NULL DEFAULT '',
  `brief` VARCHAR(500) NOT NULL DEFAULT '',
  `indexNo` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;

/**
*education_degree
*/
DROP TABLE IF EXISTS t_education_degree;

CREATE TABLE `t_education_degree` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `language` VARCHAR(20) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;

/**
*experience
*/
DROP TABLE IF EXISTS t_experience;

CREATE TABLE `t_experience` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createTime` DATETIME NOT NULL,
  `language` VARCHAR(20) NOT NULL,
  `period` VARCHAR(100) NOT NULL,
  `title` VARCHAR(100) NOT NULL DEFAULT '',
  `brief` VARCHAR(500) NOT NULL DEFAULT '',
  `indexNo` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;
/**
*hobby
*/
DROP TABLE IF EXISTS t_hobby;
CREATE TABLE `t_hobby` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createTime` DATETIME NOT NULL,
  `language` VARCHAR(20) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `indexNo` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8;

/**
*honor
*/
DROP TABLE IF EXISTS t_honor;
CREATE TABLE `t_honor` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createTime` DATETIME NOT NULL,
  `language` VARCHAR(20) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `brief` VARCHAR(500) NOT NULL,
  `indexNo` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;

/**
*skill
*/
DROP TABLE IF EXISTS t_skill;

CREATE TABLE `t_skill` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createTime` DATETIME NOT NULL,
  `language` VARCHAR(20) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `level` INT(11) NOT NULL,
  `indexNo` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8;

/**
*working_status
*/
DROP TABLE IF EXISTS t_working_status;
CREATE TABLE `t_working_status` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `language` VARCHAR(20) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;

/**
* about_me
*/
DROP TABLE IF EXISTS `t_about_me`;
CREATE TABLE `t_about_me` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createTime` DATETIME NOT NULL,
  `language` VARCHAR(20) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `gender` VARCHAR(10) NOT NULL,
  `birthday` DATE NOT NULL,
  `motto` VARCHAR(500) NULL DEFAULT '',
  `residence` VARCHAR(255) NOT NULL DEFAULT '',
  `email` VARCHAR(100) NOT NULL DEFAULT '',
  `mobile` VARCHAR(50) NOT NULL DEFAULT '',
  `workingYears` VARCHAR(50) NOT NULL,
  `education_degree_id` BIGINT(20) NOT NULL,
  `working_status_id` BIGINT(20) NOT NULL,
  `resumeFile` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
   INDEX `fk_aboutme_edudegree_idx` (`education_degree_id` ASC),
     INDEX `fk_aboutme_workstatus_idx` (`working_status_id` ASC),
     CONSTRAINT `fk_aboutme_edudegree`
     FOREIGN KEY (`education_degree_id`)
     REFERENCES `t_education_degree` (`id`)
       ON DELETE NO ACTION
       ON UPDATE NO ACTION,
     CONSTRAINT `fk_aboutme_workstatus`
     FOREIGN KEY (`working_status_id`)
     REFERENCES `t_working_status` (`id`)
       ON DELETE NO ACTION
      ON UPDATE NO ACTION
          )
  ENGINE = InnoDB
  AUTO_INCREMENT = 20
  DEFAULT CHARACTER SET = utf8;