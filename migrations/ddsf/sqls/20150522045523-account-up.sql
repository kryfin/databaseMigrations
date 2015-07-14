CREATE TABLE `tracker1`.`accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(50)  NULL,
  `account_password` varchar(100) NULL,
  `person_id` int(11) NULL,
 `role_id` int(11) NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_id_UNIQUE` (`id`),
 
  KEY `person_id_idx` (`person_id`),
  KEY `role_id_idx` (`role_id`),
  CONSTRAINT `person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON UPDATE CASCADE,
 CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON UPDATE CASCADE
);