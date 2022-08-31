
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police', 'police', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police', 'police', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'police', 1)
;

CREATE TABLE `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
);
