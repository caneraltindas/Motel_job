USE `spacelife`;

ALTER TABLE `users`
  ADD COLUMN `last_hotel` VARCHAR(255) NULL
;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('hotel_black_money','Argent Sale Hotel',0)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('hotel','Hotel',0)
;

INSERT INTO `datastore` (name, label, shared) VALUES
  ('hotel','Hotel',0)
;

CREATE TABLE `owned_hotels` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,

  PRIMARY KEY (`id`)
);

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `hotels` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'Chambre 1', 'Chambre 1', '{“y”:-941.3338,“z”:14.35,“x”:-1338.46997}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-941.3338,“z”:14.35,“x”:-1338.46997}', '[]', NULL, 1, 1, 0, '{“x”:151.9085,“y”:-1001.4863,“z”:-99.9999}', 5454),
(2, 'Chambre 2', 'Chambre 2', '{“y”:-939.2253,“z”:14.35,“x”:-1331.6533}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-939.2253,“z”:14.35,“x”:-1331.6533}', '[]', NULL, 1, 1, 0, '{“x”:151.9085,“y”:-1001.4863,“z”:-99.9999}', 5454),
(3, 'Chambre 3', 'Chambre 3', '{“y”:-938.0975,“z”:14.35,“x”:-1329.0551}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-938.0975,“z”:14.35,“x”:-1329.0551}', '[]', NULL, 1, 1, 0, '{“x”:151.9085,“y”:-1001.4863,“z”:-99.9999}', 5454),
(4, 'Chambre 4', 'Chambre 4', '{“y”:-935.1585,“z”:15.35,“x”:-1320.4286}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-935.1585,“z”:15.35,“x”:-1320.4286}', '[]', NULL, 1, 1, 0, '{“x”:151.9085,“y”:-1001.4863,“z”:-99.9999}', 5454),
(5, 'Chambre 5', 'Chambre 5', '{“y”:-933.9512,“z”:15.35,“x”:-1317.5079}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-933.9512,“z”:15.35,“x”:-1317.5079}', '[]', NULL, 1, 1, 0, '{“x”:151.9085,“y”:-1001.4863,“z”:-99.9999}', 5454),
(6, 'Chambre 6', 'Chambre 6', '{“y”:-932.0045,“z”:15.35,“x”:-1311.3612}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-932.0045,“z”:15.35,“x”:-1311.3612}', '[]', NULL, 1, 1, 0, '{“x”:151.9085,“y”:-1001.4863,“z”:-99.9999}', 5454),
(7, 'Chambre 7', 'Chambre 7', '{“y”:-930.8492,“z”:15.35,“x”:-1308.6068}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-1007.8554,“z”:-99.9999,“x”:151.4382}', '{“y”:-930.8492,“z”:15.35,“x”:-1308.6068}', '[]', NULL, 1, 1, 0, '{“x”:151.9085,“y”:-1001.4863,“z”:-99.9999}', 5454);

ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
;
;
;
