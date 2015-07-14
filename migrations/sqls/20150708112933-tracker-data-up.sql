/* Replace with your SQL commands */
CREATE TABLE `tracker1`.`tracker_data` (
  `tracker_data_id` int(11) NOT NULL AUTO_INCREMENT,
 `packetHeader` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `StringCounter` varchar(50) DEFAULT NULL,
  `TrackID` varchar(50) DEFAULT NULL,
  `Lat` varchar(50) DEFAULT NULL,
  `Lon` varchar(50) DEFAULT NULL,
  `TimeDate` varchar(50) DEFAULT NULL,
  `FixNoFixERROR` varchar(50) DEFAULT NULL,
  `SatUsed` varchar(50) DEFAULT NULL,
  `RSSI` varchar(50) DEFAULT NULL,
  `Speed` varchar(50) DEFAULT NULL,
  `Heading` varchar(50) DEFAULT NULL,
  `Mileage` varchar(50) DEFAULT NULL,
  `TimeTraveled` varchar(50) DEFAULT NULL,
  `MCC` varchar(50) DEFAULT NULL,
  `LNC` varchar(50) DEFAULT NULL,
  `LAC` varchar(50) DEFAULT NULL,
  `CI` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `InternalBatteryVolts` varchar(50) DEFAULT NULL,
  `MainBatteryVolts` varchar(50) DEFAULT NULL,
  `AD1` varchar(50) DEFAULT NULL,
  `AD2` varchar(50) DEFAULT NULL,
  `AD3` varchar(50) DEFAULT NULL,
  `AD4` varchar(50) DEFAULT NULL,
  `SIM` varchar(50) DEFAULT NULL,
  `Extension` varchar(50) DEFAULT NULL,
  `Checksum` varchar(50) DEFAULT NULL,


  `tracker_id1` int(11) NULL,
    `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,




  PRIMARY KEY (`tracker_data_id`),
  UNIQUE KEY `tracker_data_id_UNIQUE` (`tracker_data_id`),
  KEY `fk_tracker_id_idx` (`tracker_id1`),
  CONSTRAINT `fk_tracker_id` FOREIGN KEY (`tracker_id1`) REFERENCES `tracker` (`tracker_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) 