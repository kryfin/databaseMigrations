/* Replace with your SQL commands */
/* Replace with your SQL commands */
CREATE TABLE `tracker1`.`person` (
  `person_id` INT NOT NULL AUTO_INCREMENT,
  `person_name` VARCHAR(50) NULL,
  `person_address` VARCHAR(100) NULL,
  `person_cnic` VARCHAR(13) NOT NULL,
  `person_contact` VARCHAR(14) NULL,
    `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE INDEX `person_cnic_UNIQUE` (`person_cnic` ASC));
