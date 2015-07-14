/* Replace with your SQL commands */
CREATE TABLE `tracker1`.`tracker` (
  `tracker_id` INT NOT NULL AUTO_INCREMENT,
  `tracker_imei` VARCHAR(30)  NULL,
    `purchasing_date` date  NULL,
  `id` INT  NULL,
  PRIMARY KEY (`tracker_id`),
  UNIQUE KEY `tracker_id_UNIQUE` (`tracker_id`),
  UNIQUE KEY `tracker_imei_UNIQUE` (`tracker_imei`),
  KEY `fk_account_id_idx` (`account_id`),
  CONSTRAINT `account_id` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
);