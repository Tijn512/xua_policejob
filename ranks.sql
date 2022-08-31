

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('police', 'Overheid', 1);

ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(24, 'police', 1, 'aspirant', 'Aspirant', 350, '{}', '{}'),
(25, 'police', 2, 'surveillant', 'Surveillant', 450, '{}', '{}'),
(26, 'police', 3, 'agent', 'Agent', 550, '{}', '{}'),
(27, 'police', 4, 'hoofdagent', 'Hoof-dagent', 600, '{}', '{}'),
(28, 'police', 5, 'brigadier', 'Brigadier', 750, '{}', '{}'),
(29, 'police', 6, 'inspecteur', 'Inspecteur', 1000, '{}', '{}'),
(30, 'police', 7, 'hoofdinspecteur', 'Hoofd-Inspecteur', 1250, '{}', '{}'),
(31, 'police', 8, 'commissaris', 'Commissaris', 1500, '{}', '{}'),
(32, 'police', 9, 'hoofdcommissaris', 'Hoofd-Commissaris', 2000, '{}', '{}'),
(33, 'police', 10, 'korpsleiding', 'Korpsleiding', 2500, '{}', '{}'),
(34, 'police', 11, 'dsi1', 'DSI Tryout', 3000, '{}', '{}'),
(35, 'police', 12, 'dsi2', 'DSI Leidinggevende', 3500, '{}', '{}'),
(36, 'police', 13, 'dsi3', 'DSI Leidinggevende', 4000, '{}', '{}'),
(37, 'police', 14, 'dsi4', 'DSI Leidinggevende', 4500, '{}', '{}'),
(38, 'police', 15, 'dsi5', 'DSI Leidinggevende', 5000, '{}', '{}'),

ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
COMMIT;

