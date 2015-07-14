/* Replace with your SQL commands */
CREATE TABLE `tracker1`.`tracker_data` (
  `tracker_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_data_location` varchar(100) NULL,
  `tracker_data_history` varchar(100) NULL,
  `tracker_id1` int(11) NULL,
  PRIMARY KEY (`tracker_data_id`),
  UNIQUE KEY `tracker_data_id_UNIQUE` (`tracker_data_id`),
  KEY `fk_tracker_id_idx` (`tracker_id1`),
  CONSTRAINT `fk_tracker_id` FOREIGN KEY (`tracker_id1`) REFERENCES `tracker` (`tracker_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) 