ALTER TABLE `prefix_fleets` CHANGE `fleet_mission` `fleet_mission` TINYINT(3) UNSIGNED NOT NULL DEFAULT '3', CHANGE `fleet_start_type` `fleet_start_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1', CHANGE `fleet_end_type` `fleet_end_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1', CHANGE `fleet_mess` `fleet_mess` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0', CHANGE `fleet_busy` `fleet_busy` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0';

CREATE TABLE `prefix_log_fleets` (
 `fleet_id` bigint(11) unsigned NOT NULL,
 `fleet_owner` int(11) unsigned NOT NULL DEFAULT '0',
 `fleet_mission` tinyint(3) unsigned NOT NULL DEFAULT '3',
 `fleet_amount` bigint(20) unsigned NOT NULL DEFAULT '0',
 `fleet_array` text,
 `fleet_universe` tinyint(3) unsigned NOT NULL,
 `fleet_start_time` int(11) NOT NULL DEFAULT '0',
 `fleet_start_id` int(11) unsigned NOT NULL,
 `fleet_start_galaxy` tinyint(3) unsigned NOT NULL DEFAULT '0',
 `fleet_start_system` smallint(5) unsigned NOT NULL DEFAULT '0',
 `fleet_start_planet` tinyint(3) unsigned NOT NULL DEFAULT '0',
 `fleet_start_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
 `fleet_end_time` int(11) NOT NULL DEFAULT '0',
 `fleet_end_stay` int(11) NOT NULL DEFAULT '0',
 `fleet_end_id` int(11) unsigned NOT NULL,
 `fleet_end_galaxy` tinyint(3) unsigned NOT NULL DEFAULT '0',
 `fleet_end_system` smallint(5) unsigned NOT NULL DEFAULT '0',
 `fleet_end_planet` tinyint(3) unsigned NOT NULL DEFAULT '0',
 `fleet_end_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
 `fleet_target_obj` smallint(3) unsigned NOT NULL DEFAULT '0',
 `fleet_resource_metal` double(50,0) unsigned NOT NULL DEFAULT '0',
 `fleet_resource_crystal` double(50,0) unsigned NOT NULL DEFAULT '0',
 `fleet_resource_deuterium` double(50,0) unsigned NOT NULL DEFAULT '0',
 `fleet_resource_darkmatter` double(50,0) unsigned NOT NULL DEFAULT '0',
 `fleet_target_owner` int(11) unsigned NOT NULL DEFAULT '0',
 `fleet_group` varchar(15) NOT NULL DEFAULT '0',
 `fleet_mess` tinyint(3) unsigned NOT NULL DEFAULT '0',
 `start_time` int(11) DEFAULT NULL,
 `fleet_busy` tinyint(3) unsigned NOT NULL DEFAULT '0',
 `fleet_state` tinyint(3) unsigned NOT NULL,
 PRIMARY KEY (`fleet_id`),
 KEY `BashRule` (`fleet_owner`,`fleet_end_id`,`fleet_start_time`,`fleet_mission`,`fleet_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8