/*
Navicat MySQL Data Transfer

Source Server         : InfinityCore
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : characters

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2014-09-11 16:10:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_data`
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_data
-- ----------------------------
INSERT INTO `account_data` VALUES ('7', '0', '1410148174', 0x53455420666C61676765645475746F7269616C732022760123232423234523232523232823232E23235A23232D23235B23232923233123234B23233823233B23232B23233A23233C23235923235323234323234123234223233723232C23235823233323234623235F23235E220D0A5345542070726F66616E69747946696C746572202230220D0A53455420616C7761797353686F77416374696F6E42617273202231220D0A53455420706C6179657253746174757354657874202231220D0A5345542070657453746174757354657874202231220D0A53455420616C7465726E6174655265736F7572636554657874202231220D0A5345542063616D65726144697374616E63654D6178466163746F72202231220D0A5345542074616C656E744672616D6553686F776E202231220D0A);
INSERT INTO `account_data` VALUES ('8', '0', '1410374184', 0x534554207363726970744572726F7273202231220D0A53455420666C61676765645475746F7269616C732022760123232423233A23234523232523235B23232D23232723232823232E23233B23235A23233823232923233123232B23235E23234B23235D220D0A5345542070726F66616E69747946696C746572202230220D0A5345542063616D65726144697374616E63654D6178466163746F72202231220D0A5345542073686F774E657762696554697073202230220D0A5345542073686F775475746F7269616C73202230220D0A);

-- ----------------------------
-- Table structure for `account_instance_times`
-- ----------------------------
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_instance_times
-- ----------------------------
INSERT INTO `account_instance_times` VALUES ('1', '8', '1389892256');
INSERT INTO `account_instance_times` VALUES ('2', '2', '1389886680');
INSERT INTO `account_instance_times` VALUES ('2', '4', '1389886879');
INSERT INTO `account_instance_times` VALUES ('2', '5', '1389887697');
INSERT INTO `account_instance_times` VALUES ('6', '1', '1389896867');

-- ----------------------------
-- Table structure for `account_tutorial`
-- ----------------------------
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_tutorial
-- ----------------------------
INSERT INTO `account_tutorial` VALUES ('7', '13641395', '12583042', '0', '0', '0', '0', '0', '0');
INSERT INTO `account_tutorial` VALUES ('8', '13641403', '113246338', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `addons`
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `name` varchar(120) NOT NULL DEFAULT '',
  `crc` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addons';

-- ----------------------------
-- Records of addons
-- ----------------------------
INSERT INTO `addons` VALUES ('Blizzard_AchievementUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ArchaeologyUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ArenaUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_AuctionUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BarbershopUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BattlefieldMinimap', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BindingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_Calendar', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ClientSavedVariables', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CombatLog', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CombatText', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CompactRaidFrames', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CUFProfiles', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_DebugTools', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_EncounterJournal', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GlyphUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GMChatUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GMSurveyUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildBankUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildControlUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_InspectUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ItemAlterationUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ItemSocketingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_LookingForGuildUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_MacroUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_MovePad', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_RaidUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ReforgingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TalentUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TimeManager', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TokenUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TradeSkillUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TrainerUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_VoidStorageUI', '1276933997');

-- ----------------------------
-- Table structure for `arena_team`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team
-- ----------------------------

-- ----------------------------
-- Table structure for `arena_team_member`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team_member
-- ----------------------------

-- ----------------------------
-- Table structure for `armory_character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `armory_character_stats`;
CREATE TABLE `armory_character_stats` (
  `guid` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `save_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='World of Warcraft Armory table';

-- ----------------------------
-- Records of armory_character_stats
-- ----------------------------
INSERT INTO `armory_character_stats` VALUES ('4', '4 0 0 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16777494 98 0 0 0 0 0 98 1000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 2203 0 0 0 262152 2048 4194304 1161117696 1157234688 1157234688 1053240066 1069547520 29422 29422 0 1094071723 1095885127 0 0 1 0 0 0 0 0 1065353216 1065353216 0 0 0 26 22 24 20 21 0 0 0 0 0 0 0 0 0 0 98 0 0 1 0 1 0 0 0 0 1065353216 0 1065353216 0 0 0 0 0 0 0 0 0 38 285212672 41 0 0 0 15 0 0 0 1079194418 1082864435 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 0 0 0 0 50332676 33554439 16777216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 49567 0 49578 0 49577 0 49576 0 49579 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 23346 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 36 1073741824 46 1073741824 48 1073741824 38 1073741824 40 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 42 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 44 1073741824 53 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 770 1400 2818074 2949164 3538990 6225975 8912994 10616992 11337900 14811312 16842981 27066635 27197854 30998961 51839746 803 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 65537 65537 65537 65537 65836 65537 65537 65537 65537 65537 65537 65537 19660801 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 327681 327685 327685 327685 327980 327685 327685 327685 65541 65537 65537 327681 19660801 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 1084227584 1084227584 0 1086824046 1086824046 1086824046 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 524288 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 180 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065772646 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 0 1065353216 1065353216 1065353216 0 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 85 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 21 22 23 24 25 26 41 42 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 0 1065353216 ', '1410325693');
INSERT INTO `armory_character_stats` VALUES ('5', '5 0 0 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2309 123 223 0 0 0 0 123 223 3 0 0 0 1082802611 0 0 0 0 1067702026 0 0 0 0 5 5 0 0 0 262152 2048 4194304 1161117696 1157234688 1157234688 1053240066 1069547520 57 57 0 1087364530 1090668836 0 0 1 0 0 0 0 0 1065353216 1065353216 0 0 0 20 19 24 25 32 0 0 0 0 0 0 0 0 0 0 50 0 0 0 0 3 0 0 0 0 0 0 1077936128 0 0 0 0 0 0 0 0 128 63 0 20 0 0 0 0 0 0 0 1065353216 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 0 0 0 0 134481154 33554447 0 0 0 24973 0 8 0 0 24972 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6129 0 0 0 1396 0 3274 0 0 0 0 0 0 0 0 0 0 0 0 0 11847 0 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 54 1073741824 0 0 56 1073741824 82 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 75 1073741824 60 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 62 1073741824 65 1073741824 69 1073741824 58 1073741824 68 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 84 1073741824 85 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2559 2800 6225963 8913005 11337890 23199972 27197795 52363857 802 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 65537 65836 65537 65537 65537 65537 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 327685 327980 327685 65541 65537 65537 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 1079754313 0 1083752626 1083752626 1083752626 0 1083961404 1083961404 1083961404 1083961404 1083961404 1083961404 30 0 0 0 0 0 0 0 0 0 384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2097152 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 169 0 0 15 38 15 15 15 15 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 15 1065353216 1065353216 1065353216 0 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 85 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 21 22 23 24 25 26 41 42 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 0 1065353216 ', '1410356231');
INSERT INTO `armory_character_stats` VALUES ('6', '6 0 0 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1798 108 86 0 0 0 0 116 86 0 0 0 0 1077499449 0 0 0 0 1059984507 0 0 0 0 3 6 0 0 0 524296 2048 4194304 1156415488 1157234688 1157234688 1053240066 1069547520 59 59 0 1086163935 1088182213 0 0 0 0 0 0 0 0 1065353216 1065353216 0 0 0 28 16 25 18 26 0 0 0 0 0 0 0 0 0 0 81 0 0 1 0 0 0 0 0 0 1065353216 0 0 0 0 0 0 0 0 0 0 68 44 1 36 0 0 0 0 0 0 0 1065353216 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 0 0 0 0 33948417 33554437 0 0 0 24852 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 52544 0 0 0 52545 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 36 0 2362 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 87 1073741824 0 0 89 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 93 1073741824 95 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 91 1073741824 96 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 112 1400 3538988 7143519 8913011 10616992 11337900 27132279 28377503 52494809 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 65537 19660801 65836 65537 65537 65537 65537 65537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 327685 19660805 327980 327685 327685 65537 65537 65541 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 1084227584 1079484100 0 1083189994 1083189994 1083189994 0 1082951526 1082951526 1082951526 1082951526 1082951526 1082951526 30 0 0 0 0 0 0 0 0 0 0 262144 0 0 0 0 0 0 0 0 262144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2147483648 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 43 0 0 8 8 8 8 8 8 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 8 1065353216 1065353216 1065353216 0 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 85 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 21 22 23 24 25 26 41 42 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 0 1065353216 ', '1410374645');

-- ----------------------------
-- Table structure for `armory_game_chart`
-- ----------------------------
DROP TABLE IF EXISTS `armory_game_chart`;
CREATE TABLE `armory_game_chart` (
  `gameid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `guid` int(11) NOT NULL,
  `changeType` int(11) NOT NULL,
  `ratingChange` int(11) NOT NULL,
  `teamRating` int(11) NOT NULL,
  `damageDone` int(11) NOT NULL,
  `deaths` int(11) NOT NULL,
  `healingDone` int(11) NOT NULL,
  `damageTaken` int(11) NOT NULL,
  `healingTaken` int(11) NOT NULL,
  `killingBlows` int(11) NOT NULL,
  `mapId` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`gameid`,`teamid`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WoWArmory Game Chart';

-- ----------------------------
-- Records of armory_game_chart
-- ----------------------------

-- ----------------------------
-- Table structure for `auctionhouse`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemowner` int(10) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(10) unsigned NOT NULL DEFAULT '0',
  `startbid` int(10) unsigned NOT NULL DEFAULT '0',
  `deposit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhouse
-- ----------------------------

-- ----------------------------
-- Table structure for `auctionhousebot`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhousebot`;
CREATE TABLE `auctionhousebot` (
  `auctionhouse` int(11) NOT NULL DEFAULT '0' COMMENT 'mapID of the auctionhouse.',
  `name` char(25) DEFAULT NULL COMMENT 'Text name of the auctionhouse.',
  `minitems` int(11) DEFAULT '0' COMMENT 'This is the minimum number of items you want to keep in the auction house. a 0 here will make it the same as the maximum.',
  `maxitems` int(11) DEFAULT '0' COMMENT 'This is the number of items you want to keep in the auction house.',
  `percentgreytradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Grey Trade Goods auction items',
  `percentwhitetradegoods` int(11) DEFAULT '27' COMMENT 'Sets the percentage of the White Trade Goods auction items',
  `percentgreentradegoods` int(11) DEFAULT '12' COMMENT 'Sets the percentage of the Green Trade Goods auction items',
  `percentbluetradegoods` int(11) DEFAULT '10' COMMENT 'Sets the percentage of the Blue Trade Goods auction items',
  `percentpurpletradegoods` int(11) DEFAULT '1' COMMENT 'Sets the percentage of the Purple Trade Goods auction items',
  `percentorangetradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Orange Trade Goods auction items',
  `percentyellowtradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Yellow Trade Goods auction items',
  `percentgreyitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Grey auction items',
  `percentwhiteitems` int(11) DEFAULT '10' COMMENT 'Sets the percentage of the non trade White auction items',
  `percentgreenitems` int(11) DEFAULT '30' COMMENT 'Sets the percentage of the non trade Green auction items',
  `percentblueitems` int(11) DEFAULT '8' COMMENT 'Sets the percentage of the non trade Blue auction items',
  `percentpurpleitems` int(11) DEFAULT '2' COMMENT 'Sets the percentage of the non trade Purple auction items',
  `percentorangeitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Orange auction items',
  `percentyellowitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Yellow auction items',
  `minpricegrey` int(11) DEFAULT '100' COMMENT 'Minimum price of Grey items (percentage).',
  `maxpricegrey` int(11) DEFAULT '150' COMMENT 'Maximum price of Grey items (percentage).',
  `minpricewhite` int(11) DEFAULT '150' COMMENT 'Minimum price of White items (percentage).',
  `maxpricewhite` int(11) DEFAULT '250' COMMENT 'Maximum price of White items (percentage).',
  `minpricegreen` int(11) DEFAULT '800' COMMENT 'Minimum price of Green items (percentage).',
  `maxpricegreen` int(11) DEFAULT '1400' COMMENT 'Maximum price of Green items (percentage).',
  `minpriceblue` int(11) DEFAULT '1250' COMMENT 'Minimum price of Blue items (percentage).',
  `maxpriceblue` int(11) DEFAULT '1750' COMMENT 'Maximum price of Blue items (percentage).',
  `minpricepurple` int(11) DEFAULT '2250' COMMENT 'Minimum price of Purple items (percentage).',
  `maxpricepurple` int(11) DEFAULT '4550' COMMENT 'Maximum price of Purple items (percentage).',
  `minpriceorange` int(11) DEFAULT '3250' COMMENT 'Minimum price of Orange items (percentage).',
  `maxpriceorange` int(11) DEFAULT '5550' COMMENT 'Maximum price of Orange items (percentage).',
  `minpriceyellow` int(11) DEFAULT '5250' COMMENT 'Minimum price of Yellow items (percentage).',
  `maxpriceyellow` int(11) DEFAULT '6550' COMMENT 'Maximum price of Yellow items (percentage).',
  `minbidpricegrey` int(11) DEFAULT '70' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricegrey` int(11) DEFAULT '100' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricewhite` int(11) DEFAULT '70' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricewhite` int(11) DEFAULT '100' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricegreen` int(11) DEFAULT '80' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricegreen` int(11) DEFAULT '100' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceblue` int(11) DEFAULT '75' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 75',
  `maxbidpriceblue` int(11) DEFAULT '100' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricepurple` int(11) DEFAULT '80' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricepurple` int(11) DEFAULT '100' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceorange` int(11) DEFAULT '80' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceorange` int(11) DEFAULT '100' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceyellow` int(11) DEFAULT '80' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceyellow` int(11) DEFAULT '100' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 100',
  `maxstackgrey` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackwhite` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackgreen` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackblue` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackpurple` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackorange` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackyellow` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `buyerpricegrey` int(11) DEFAULT '1' COMMENT 'Multiplier to vendorprice when buying grey items from auctionhouse',
  `buyerpricewhite` int(11) DEFAULT '3' COMMENT 'Multiplier to vendorprice when buying white items from auctionhouse',
  `buyerpricegreen` int(11) DEFAULT '5' COMMENT 'Multiplier to vendorprice when buying green items from auctionhouse',
  `buyerpriceblue` int(11) DEFAULT '12' COMMENT 'Multiplier to vendorprice when buying blue items from auctionhouse',
  `buyerpricepurple` int(11) DEFAULT '15' COMMENT 'Multiplier to vendorprice when buying purple items from auctionhouse',
  `buyerpriceorange` int(11) DEFAULT '20' COMMENT 'Multiplier to vendorprice when buying orange items from auctionhouse',
  `buyerpriceyellow` int(11) DEFAULT '22' COMMENT 'Multiplier to vendorprice when buying yellow items from auctionhouse',
  `buyerbiddinginterval` int(11) DEFAULT '1' COMMENT 'Interval how frequently AHB bids on each AH. Time in minutes',
  `buyerbidsperinterval` int(11) DEFAULT '1' COMMENT 'number of bids to put in per bidding interval',
  PRIMARY KEY (`auctionhouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhousebot
-- ----------------------------

-- ----------------------------
-- Table structure for `bugreport`
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- ----------------------------
-- Records of bugreport
-- ----------------------------

-- ----------------------------
-- Table structure for `calendar_events`
-- ----------------------------
DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE `calendar_events` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creator` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `dungeon` int(10) NOT NULL DEFAULT '-1',
  `eventtime` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `time2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of calendar_events
-- ----------------------------

-- ----------------------------
-- Table structure for `calendar_invites`
-- ----------------------------
DROP TABLE IF EXISTS `calendar_invites`;
CREATE TABLE `calendar_invites` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `event` bigint(20) unsigned NOT NULL DEFAULT '0',
  `invitee` int(10) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `statustime` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of calendar_invites
-- ----------------------------

-- ----------------------------
-- Table structure for `channels`
-- ----------------------------
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- ----------------------------
-- Records of channels
-- ----------------------------

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `speccount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activespec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  `achievementPoint` int(10) NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `talentTree` varchar(10) NOT NULL DEFAULT '0 0',
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `totalHonorPoints` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`) USING BTREE,
  KEY `idx_online` (`online`) USING BTREE,
  KEY `idx_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('1', '7', 'Lokz', '8', '9', '0', '5', '263', '173', '262661', '33554442', '0', '-1278.41', '-5560.26', '21.0877', '1', '0', '0', '5.3949', '0 0 64 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '619', '54', '1410148793', '0', '0.01395', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '', '0', '0', '0', '0', '4294967295', '0', '123', '223', '0', '0', '0', '0', '0', '1', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 33554592 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1048576 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 52543 0 0 0 52679 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 ', '0', null, null, null, '0', '0', '0', '0 0 ', '0', '0');
INSERT INTO `characters` VALUES ('2', '7', 'Loki', '7', '9', '0', '3', '139', '32', '100990977', '33554439', '0', '-4981.54', '867.255', '274.31', '0', '0', '0', '4.62747', '32 0 0 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '667', '198', '1410168828', '0', '0.0465083', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '', '0', '0', '0', '0', '4294967295', '0', '73', '259', '0', '0', '0', '0', '3', '1', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 65536 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 57 0 0 0 1396 0 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 ', '0', null, null, null, '0', '0', '0', '0 0 ', '0', '0');
INSERT INTO `characters` VALUES ('3', '7', 'Druix', '8', '11', '0', '4', '183', '53', '83887108', '16777226', '0', '-1167.49', '-5533.02', '12.0247', '1', '0', '0', '0.513642', '0 0 64 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '600', '288', '1410181536', '0', '30.7045', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '', '0', '0', '0', '0', '4294967295', '0', '125', '94', '0', '100', '0', '0', '0', '1', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 33554464 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1048576 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 6139 0 0 0 6124 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 ', '0', null, null, null, '0', '0', '0', '0 0 ', '0', '0');
INSERT INTO `characters` VALUES ('4', '8', 'Warriox', '22', '1', '0', '3', '770', '180', '50332676', '33554439', '0', '-1453.19', '1424.02', '35.5563', '638', '0', '0', '3.25626', '0 0 0 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '602', '95', '1410325693', '0', '0.459446', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '4755', '0', '', '0', '0', '0', '0', '4294967295', '0', '98', '0', '0', '0', '0', '0', '0', '1', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 524288 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 49567 0 49578 0 49577 0 49576 0 49579 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 23346 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 ', '0', null, null, null, '0', '0', '0', '0 0 ', '0', '0');
INSERT INTO `characters` VALUES ('5', '8', 'Testi', '5', '9', '0', '5', '2559', '169', '134481154', '33554447', '0', '2061.4', '1761.35', '84.8123', '0', '0', '0', '1.7137', '0 4 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '3978', '467', '1410356231', '0', '0.898087', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '85', '0', '', '0', '0', '0', '0', '4294967295', '0', '123', '223', '0', '0', '0', '0', '0', '1', '0', '0 0 0 0 0 0 0 384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2097152 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 6129 0 0 0 1396 0 3274 0 0 0 0 0 0 0 0 0 0 0 0 0 11847 0 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 ', '0', null, null, null, '0', '0', '0', '0 0 ', '0', '0');
INSERT INTO `characters` VALUES ('6', '8', 'Shamix', '6', '7', '0', '3', '112', '43', '33948417', '33554437', '0', '-3050.34', '-495.95', '41.8318', '1', '0', '0', '0.786965', '0 0 32 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '380', '61', '1410374645', '0', '0.01705', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '215', '0', '', '0', '0', '0', '0', '4294967295', '0', '108', '86', '0', '0', '0', '0', '0', '1', '0', '0 0 0 0 0 0 0 0 262144 0 0 0 0 0 0 0 0 262144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2147483648 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 52544 0 0 0 52545 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 36 0 2362 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 ', '0', null, null, null, '0', '0', '0', '0 0 ', '0', '0');
INSERT INTO `characters` VALUES ('7', '8', 'Magix', '4', '8', '0', '5', '858', '38', '50398724', '33554433', '0', '10558.4', '878.79', '1309.95', '1', '0', '0', '0.509537', '0 0 0 6 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '905', '91', '1410392480', '0', '0.668124', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '141', '0', '', '0', '0', '0', '0', '4294967295', '0', '112', '271', '0', '0', '0', '0', '0', '1', '0', '64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 131072 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 52553 0 0 0 1431 0 52554 0 11187 0 11190 0 0 0 0 0 0 0 0 0 0 0 35 0 0 0 0 0 0 0 46753 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 ', '0', null, null, null, '0', '0', '0', '0 0 ', '0', '0');
INSERT INTO `characters` VALUES ('8', '8', 'Thumpz', '1', '2', '0', '3', '1112', '10062', '134873601', '33554438', '0', '-8920.74', '-126.704', '81.3307', '0', '0', '0', '5.45538', '2 0 0 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '732', '437', '1410469105', '0', '3.41439', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '12', '0', '', '0', '0', '0', '0', '4294967295', '0', '98', '119', '0', '0', '0', '0', '0', '1', '0', '0 0 0 536870912 128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 58233 0 0 0 44 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 52557 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 ', '0', null, null, null, '0', '0', '0', '0 0 ', '0', '0');

-- ----------------------------
-- Table structure for `character_account_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_account_data
-- ----------------------------
INSERT INTO `character_account_data` VALUES ('1', '1', '1410148175', 0x534554206175746F4C6F6F7444656661756C74202231220D0A534554206D61705175657374446966666963756C7479202231220D0A534554206175746F5175657374506F7055707320227601220D0A53455420747261636B65645175657374732022760125736D257169257637220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E6365202231352E303030303030220D0A5345542063616D65726153617665645069746368202231392E373439393732220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A5345542061637469766543554650726F66696C6520225072696D617279220D0A);
INSERT INTO `character_account_data` VALUES ('1', '7', '1410148176', 0x56455253494F4E20350A0A414444454456455253494F4E2031360A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A434F4C4F52530A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A424154544C4547524F554E4420323535203132372030204E0A424154544C4547524F554E445F4C4541444552203235352032313920313833204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F434F4E564552534154494F4E20302031373720323430204E0A424E5F434F4E564552534154494F4E5F4E4F5449434520302031373720323430204E0A424E5F434F4E564552534154494F4E5F4C49535420302031373720323430204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A434F4D4241545F4755494C445F58505F4741494E203131312031313120323535204E0A43555252454E43592030203137302030204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D452047656E6572616C0A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A424154544C4547524F554E440A424154544C4547524F554E445F4C45414445520A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A54415247455449434F4E530A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A454E440A0A4348414E4E454C530A4C6F6F6B696E67466F7247726F75700A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A454E440A0A57494E444F5720320A4E414D4520436F6D626174204C6F670A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A434F4D4241545F4755494C445F58505F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);
INSERT INTO `character_account_data` VALUES ('2', '1', '1410168451', 0x534554206175746F4C6F6F7444656661756C74202231220D0A534554206D61705175657374446966666963756C7479202231220D0A534554206175746F5175657374506F7055707320227601220D0A53455420747261636B656451756573747320227601263A76220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E6365202231352E303030303030220D0A5345542063616D65726153617665645069746368202231392E323030303032220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A5345542061637469766543554650726F66696C6520225072696D617279220D0A);
INSERT INTO `character_account_data` VALUES ('2', '7', '1410167523', 0x56455253494F4E20350A0A414444454456455253494F4E2031360A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A434F4C4F52530A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A424154544C4547524F554E4420323535203132372030204E0A424154544C4547524F554E445F4C4541444552203235352032313920313833204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F434F4E564552534154494F4E20302031373720323430204E0A424E5F434F4E564552534154494F4E5F4E4F5449434520302031373720323430204E0A424E5F434F4E564552534154494F4E5F4C49535420302031373720323430204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A434F4D4241545F4755494C445F58505F4741494E203131312031313120323535204E0A43555252454E43592030203137302030204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D452047656E6572616C0A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A424154544C4547524F554E440A424154544C4547524F554E445F4C45414445520A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A54415247455449434F4E530A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A454E440A0A4348414E4E454C530A4C6F6F6B696E67466F7247726F75700A454E440A0A5A4F4E454348414E4E454C5320323039373135350A0A454E440A0A57494E444F5720320A4E414D4520436F6D626174204C6F670A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A434F4D4241545F4755494C445F58505F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);
INSERT INTO `character_account_data` VALUES ('3', '1', '1410181434', 0x534554206175746F4C6F6F7444656661756C74202231220D0A534554206D61705175657374446966666963756C7479202231220D0A534554206175746F5175657374506F7055707320227601220D0A53455420747261636B656451756573747320227601257341220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E6365202231352E303030303030220D0A5345542063616D65726153617665645069746368202232312E353138353938220D0A534554206D696E696D6170547261636B6564496E666F76322022343935363234220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A5345542061637469766543554650726F66696C6520225072696D617279220D0A);
INSERT INTO `character_account_data` VALUES ('3', '7', '1410181435', 0x56455253494F4E20350A0A414444454456455253494F4E2031360A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A434F4C4F52530A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A424154544C4547524F554E4420323535203132372030204E0A424154544C4547524F554E445F4C4541444552203235352032313920313833204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F434F4E564552534154494F4E20302031373720323430204E0A424E5F434F4E564552534154494F4E5F4E4F5449434520302031373720323430204E0A424E5F434F4E564552534154494F4E5F4C49535420302031373720323430204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A434F4D4241545F4755494C445F58505F4741494E203131312031313120323535204E0A43555252454E43592030203137302030204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D452047656E6572616C0A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A424154544C4547524F554E440A424154544C4547524F554E445F4C45414445520A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A54415247455449434F4E530A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A454E440A0A4348414E4E454C530A4C6F6F6B696E67466F7247726F75700A454E440A0A5A4F4E454348414E4E454C5320323039373135350A0A454E440A0A57494E444F5720320A4E414D4520436F6D626174204C6F670A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A434F4D4241545F4755494C445F58505F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);
INSERT INTO `character_account_data` VALUES ('4', '1', '1410325276', 0x534554206175746F4C6F6F7444656661756C74202231220D0A534554206D61705175657374446966666963756C7479202231220D0A534554206175746F5175657374506F7055707320227601220D0A53455420747261636B656451756573747320227601220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E6365202231352E303030303030220D0A5345542063616D65726153617665645069746368202231372E323030303235220D0A5345542073686F77426174746C656669656C644D696E696D6170202232220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A5345542061637469766543554650726F66696C6520225072696D617279220D0A);
INSERT INTO `character_account_data` VALUES ('4', '7', '1410324806', 0x56455253494F4E20350A0A414444454456455253494F4E2031360A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A434F4C4F52530A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A424154544C4547524F554E4420323535203132372030204E0A424154544C4547524F554E445F4C4541444552203235352032313920313833204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F434F4E564552534154494F4E20302031373720323430204E0A424E5F434F4E564552534154494F4E5F4E4F5449434520302031373720323430204E0A424E5F434F4E564552534154494F4E5F4C49535420302031373720323430204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A434F4D4241545F4755494C445F58505F4741494E203131312031313120323535204E0A43555252454E43592030203137302030204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D452047656E6572616C0A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A424154544C4547524F554E440A424154544C4547524F554E445F4C45414445520A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A54415247455449434F4E530A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A454E440A0A4348414E4E454C530A4C6F6F6B696E67466F7247726F75700A454E440A0A5A4F4E454348414E4E454C5320323039373135350A0A454E440A0A57494E444F5720320A4E414D4520436F6D626174204C6F670A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A434F4D4241545F4755494C445F58505F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);
INSERT INTO `character_account_data` VALUES ('5', '1', '1410355449', 0x534554206175746F4C6F6F7444656661756C74202231220D0A534554206D61705175657374446966666963756C7479202231220D0A534554206175746F5175657374506F7055707320227601220D0A53455420747261636B656451756573747320227601257553257554220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E6365202231352E303030303030220D0A5345542063616D657261536176656450697463682022372E333530303031220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A5345542061637469766543554650726F66696C6520225072696D617279220D0A);
INSERT INTO `character_account_data` VALUES ('5', '7', '1410355447', 0x56455253494F4E20350A0A414444454456455253494F4E2031360A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A434F4C4F52530A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A424154544C4547524F554E4420323535203132372030204E0A424154544C4547524F554E445F4C4541444552203235352032313920313833204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F434F4E564552534154494F4E20302031373720323430204E0A424E5F434F4E564552534154494F4E5F4E4F5449434520302031373720323430204E0A424E5F434F4E564552534154494F4E5F4C49535420302031373720323430204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A434F4D4241545F4755494C445F58505F4741494E203131312031313120323535204E0A43555252454E43592030203137302030204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D452047656E6572616C0A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A424154544C4547524F554E440A424154544C4547524F554E445F4C45414445520A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A54415247455449434F4E530A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A454E440A0A4348414E4E454C530A4C6F6F6B696E67466F7247726F75700A454E440A0A5A4F4E454348414E4E454C5320323039373135350A0A454E440A0A57494E444F5720320A4E414D4520436F6D626174204C6F670A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A434F4D4241545F4755494C445F58505F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);
INSERT INTO `character_account_data` VALUES ('7', '1', '1410392231', 0x534554206175746F4C6F6F7444656661756C74202231220D0A534554206D61705175657374446966666963756C7479202231220D0A534554206175746F5175657374506F7055707320227601220D0A53455420747261636B656451756573747320227601264073220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E6365202231352E303030303030220D0A5345542063616D65726153617665645069746368202231342E353439393939220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A5345542061637469766543554650726F66696C6520225072696D617279220D0A);
INSERT INTO `character_account_data` VALUES ('7', '7', '1410392176', 0x56455253494F4E20350A0A414444454456455253494F4E2031360A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A434F4C4F52530A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A424154544C4547524F554E4420323535203132372030204E0A424154544C4547524F554E445F4C4541444552203235352032313920313833204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F434F4E564552534154494F4E20302031373720323430204E0A424E5F434F4E564552534154494F4E5F4E4F5449434520302031373720323430204E0A424E5F434F4E564552534154494F4E5F4C49535420302031373720323430204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A434F4D4241545F4755494C445F58505F4741494E203131312031313120323535204E0A43555252454E43592030203137302030204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D452047656E6572616C0A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A424154544C4547524F554E440A424154544C4547524F554E445F4C45414445520A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A54415247455449434F4E530A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A454E440A0A4348414E4E454C530A4C6F6F6B696E67466F7247726F75700A454E440A0A5A4F4E454348414E4E454C5320323039373135350A0A454E440A0A57494E444F5720320A4E414D4520436F6D626174204C6F670A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A434F4D4241545F4755494C445F58505F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);
INSERT INTO `character_account_data` VALUES ('8', '1', '1410468889', 0x534554206175746F4C6F6F7444656661756C74202231220D0A534554206D61705175657374446966666963756C7479202231220D0A534554206175746F5175657374506F7055707320227601220D0A53455420747261636B656451756573747320227601264144262769220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E6365202231352E303030303030220D0A5345542063616D65726153617665645069746368202232342E313030303231220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A5345542061637469766543554650726F66696C6520225072696D617279220D0A);
INSERT INTO `character_account_data` VALUES ('8', '7', '1410468888', 0x56455253494F4E20350A0A414444454456455253494F4E2031360A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A434F4C4F52530A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A424154544C4547524F554E4420323535203132372030204E0A424154544C4547524F554E445F4C4541444552203235352032313920313833204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F434F4E564552534154494F4E20302031373720323430204E0A424E5F434F4E564552534154494F4E5F4E4F5449434520302031373720323430204E0A424E5F434F4E564552534154494F4E5F4C49535420302031373720323430204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A434F4D4241545F4755494C445F58505F4741494E203131312031313120323535204E0A43555252454E43592030203137302030204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D452047656E6572616C0A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A424154544C4547524F554E440A424154544C4547524F554E445F4C45414445520A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A54415247455449434F4E530A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A454E440A0A4348414E4E454C530A4C6F6F6B696E67466F7247726F75700A454E440A0A5A4F4E454348414E4E454C5320323039373135350A0A454E440A0A57494E444F5720320A4E414D4520436F6D626174204C6F670A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A434F4D4241545F4755494C445F58505F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A452031320A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);

-- ----------------------------
-- Table structure for `character_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement
-- ----------------------------
INSERT INTO `character_achievement` VALUES ('1', '457', '1389600772');
INSERT INTO `character_achievement` VALUES ('1', '459', '1389600772');
INSERT INTO `character_achievement` VALUES ('1', '1413', '1389600772');
INSERT INTO `character_achievement` VALUES ('1', '5544', '1410148304');
INSERT INTO `character_achievement` VALUES ('1', '5682', '1410148527');
INSERT INTO `character_achievement` VALUES ('1', '5683', '1410148739');
INSERT INTO `character_achievement` VALUES ('2', '5544', '1410167484');
INSERT INTO `character_achievement` VALUES ('2', '5681', '1410168630');
INSERT INTO `character_achievement` VALUES ('3', '460', '1389687623');
INSERT INTO `character_achievement` VALUES ('3', '1410', '1389687623');
INSERT INTO `character_achievement` VALUES ('3', '1411', '1389609742');
INSERT INTO `character_achievement` VALUES ('3', '5544', '1410169770');
INSERT INTO `character_achievement` VALUES ('3', '5682', '1410169935');
INSERT INTO `character_achievement` VALUES ('4', '463', '1409881907');
INSERT INTO `character_achievement` VALUES ('4', '464', '1389705919');
INSERT INTO `character_achievement` VALUES ('4', '5544', '1410324877');
INSERT INTO `character_achievement` VALUES ('4', '5681', '1410325598');
INSERT INTO `character_achievement` VALUES ('5', '5544', '1410326871');
INSERT INTO `character_achievement` VALUES ('5', '5679', '1410355931');
INSERT INTO `character_achievement` VALUES ('5', '5681', '1410330192');
INSERT INTO `character_achievement` VALUES ('5', '5682', '1410355617');
INSERT INTO `character_achievement` VALUES ('5', '5683', '1410355763');
INSERT INTO `character_achievement` VALUES ('6', '465', '1389709333');
INSERT INTO `character_achievement` VALUES ('6', '1405', '1389709333');
INSERT INTO `character_achievement` VALUES ('6', '5544', '1410374542');
INSERT INTO `character_achievement` VALUES ('7', '5544', '1410388146');
INSERT INTO `character_achievement` VALUES ('7', '5678', '1410388434');
INSERT INTO `character_achievement` VALUES ('7', '5682', '1410388292');
INSERT INTO `character_achievement` VALUES ('7', '5683', '1410392390');
INSERT INTO `character_achievement` VALUES ('8', '5681', '1410466798');
INSERT INTO `character_achievement` VALUES ('9', '467', '1389709759');
INSERT INTO `character_achievement` VALUES ('10', '1408', '1389774435');

-- ----------------------------
-- Table structure for `character_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement_progress
-- ----------------------------
INSERT INTO `character_achievement_progress` VALUES ('1', '34', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '35', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '36', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '37', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '38', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '39', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '40', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '41', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '73', '7', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '162', '960', '1410148661');
INSERT INTO `character_achievement_progress` VALUES ('1', '167', '1', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '230', '7', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '231', '7', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '232', '7', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '233', '7', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '234', '7', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '236', '7', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '653', '1', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '657', '1', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '753', '1', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '756', '1', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '757', '1', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '992', '3361', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '993', '3361', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '994', '761', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '995', '5060', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '996', '661', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '2020', '200', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '2239', '7', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '3355', '230', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '3513', '230', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '3631', '7', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '4092', '230', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '4224', '173', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '5212', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '5217', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '5237', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '5301', '7', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '5313', '5060', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '5314', '3361', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '5315', '3361', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '5316', '761', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '5317', '661', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '5371', '4', '1410148582');
INSERT INTO `character_achievement_progress` VALUES ('1', '5372', '28', '1410148586');
INSERT INTO `character_achievement_progress` VALUES ('1', '5373', '43', '1410148467');
INSERT INTO `character_achievement_progress` VALUES ('1', '5529', '17', '1410148661');
INSERT INTO `character_achievement_progress` VALUES ('1', '5530', '17', '1410148661');
INSERT INTO `character_achievement_progress` VALUES ('1', '8819', '500', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '8820', '500', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '8821', '500', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '8822', '500', '1410148174');
INSERT INTO `character_achievement_progress` VALUES ('1', '9598', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '9683', '3361', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '9684', '5060', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '9685', '661', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '9686', '3361', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '9687', '761', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '13498', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '14174', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '14178', '5', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '16187', '1', '1410148304');
INSERT INTO `character_achievement_progress` VALUES ('1', '16463', '3', '1410148527');
INSERT INTO `character_achievement_progress` VALUES ('1', '16464', '6', '1410148739');
INSERT INTO `character_achievement_progress` VALUES ('1', '16820', '230', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('1', '16825', '3361', '1410148763');
INSERT INTO `character_achievement_progress` VALUES ('2', '34', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '35', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '36', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '37', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '38', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '39', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '40', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '41', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '73', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '162', '449', '1410168585');
INSERT INTO `character_achievement_progress` VALUES ('2', '167', '1', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '230', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '231', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '232', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '233', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '234', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '236', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '653', '1', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '657', '1', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '753', '1', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '756', '1', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '757', '1', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '2020', '200', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '2030', '3226', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '2031', '3226', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '2032', '3226', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '2033', '4510', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '2034', '3126', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '2239', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '3355', '32', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '3513', '32', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '3631', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '4092', '32', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '4224', '32', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '5212', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '5217', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '5229', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '5301', '7', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '5328', '3226', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '5329', '4510', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '5330', '3226', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '5331', '3226', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '5332', '3126', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '5371', '1', '1410167415');
INSERT INTO `character_achievement_progress` VALUES ('2', '5372', '28', '1410168584');
INSERT INTO `character_achievement_progress` VALUES ('2', '5373', '25', '1410168571');
INSERT INTO `character_achievement_progress` VALUES ('2', '5512', '10', '1410168585');
INSERT INTO `character_achievement_progress` VALUES ('2', '5529', '10', '1410168585');
INSERT INTO `character_achievement_progress` VALUES ('2', '8819', '500', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '8820', '500', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '8821', '500', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '8822', '500', '1410167271');
INSERT INTO `character_achievement_progress` VALUES ('2', '9598', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '9678', '3226', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '9679', '3126', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '9680', '4510', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '9681', '3226', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '9682', '3226', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '13498', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '14174', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '14178', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '16187', '1', '1410167484');
INSERT INTO `character_achievement_progress` VALUES ('2', '16462', '3', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '16820', '32', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('2', '16826', '126', '1410168630');
INSERT INTO `character_achievement_progress` VALUES ('3', '34', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '35', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '36', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '37', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '38', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '39', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '40', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '41', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '73', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '162', '536', '1410169911');
INSERT INTO `character_achievement_progress` VALUES ('3', '167', '1', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '230', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '231', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '232', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '233', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '234', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '236', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '653', '1', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '655', '1', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '656', '1', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '657', '1', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '756', '1', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '834', '1', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '992', '3242', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '993', '3242', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '994', '642', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '995', '4575', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '996', '542', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '2020', '200', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '2045', '2000', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '2239', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '3355', '110', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '3513', '110', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '3631', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '4092', '110', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '4224', '110', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '5212', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '5214', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '5237', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '5289', '1', '1410181466');
INSERT INTO `character_achievement_progress` VALUES ('3', '5301', '7', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '5313', '4575', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '5314', '3242', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '5315', '3242', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '5316', '642', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '5317', '542', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '5371', '1', '1410169863');
INSERT INTO `character_achievement_progress` VALUES ('3', '5372', '12', '1410169911');
INSERT INTO `character_achievement_progress` VALUES ('3', '5373', '24', '1410169876');
INSERT INTO `character_achievement_progress` VALUES ('3', '5529', '12', '1410169911');
INSERT INTO `character_achievement_progress` VALUES ('3', '5530', '12', '1410169911');
INSERT INTO `character_achievement_progress` VALUES ('3', '8819', '500', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '8820', '500', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '8821', '500', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '8822', '500', '1410169623');
INSERT INTO `character_achievement_progress` VALUES ('3', '9598', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '9683', '3242', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '9684', '4575', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '9685', '542', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '9686', '3242', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '9687', '642', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '13498', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '14174', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '14175', '4', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '16187', '1', '1410169770');
INSERT INTO `character_achievement_progress` VALUES ('3', '16463', '3', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '16820', '110', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('3', '16825', '3242', '1410169935');
INSERT INTO `character_achievement_progress` VALUES ('4', '34', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '35', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '36', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '37', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '38', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '39', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '40', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '41', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '73', '4', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '167', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '230', '4', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '231', '4', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '232', '4', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '233', '4', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '234', '4', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '236', '4', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '641', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '651', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '652', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '653', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '654', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '655', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '656', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '657', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '753', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '754', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '755', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '756', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '834', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '2020', '200', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '2030', '3398', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '2031', '3422', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '2032', '3398', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '2033', '3398', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '2034', '3298', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '2239', '4', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '3355', '180', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '3513', '180', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '3631', '4', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '4092', '180', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '4224', '180', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '5212', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '5220', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '5301', '7', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '5328', '3398', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '5329', '3398', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '5330', '3422', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '5331', '3398', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '5332', '3298', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '8819', '500', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '8820', '500', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '8821', '500', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '8822', '500', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '9378', '1', '1410324712');
INSERT INTO `character_achievement_progress` VALUES ('4', '9598', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '9678', '3398', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '9679', '3298', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '9680', '3398', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '9681', '3422', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '9682', '3398', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '13498', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '14174', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '14182', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '16187', '2', '1410324877');
INSERT INTO `character_achievement_progress` VALUES ('4', '16462', '3', '1410325598');
INSERT INTO `character_achievement_progress` VALUES ('4', '16820', '180', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('4', '16826', '1200', '1410325608');
INSERT INTO `character_achievement_progress` VALUES ('5', '34', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '35', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '36', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '37', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '38', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '39', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '40', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '41', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '73', '14', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '162', '2010', '1410356204');
INSERT INTO `character_achievement_progress` VALUES ('5', '167', '1', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '230', '14', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '231', '14', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '232', '14', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '233', '14', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '234', '14', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '236', '14', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '653', '1', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '657', '1', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '753', '1', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '756', '1', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '757', '1', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '992', '990', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '993', '990', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '994', '5985', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '995', '990', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '996', '3590', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '1037', '1', '1410330246');
INSERT INTO `character_achievement_progress` VALUES ('5', '2020', '200', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '2239', '14', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '3354', '26', '1410355586');
INSERT INTO `character_achievement_progress` VALUES ('5', '3355', '292', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '3506', '26', '1410355586');
INSERT INTO `character_achievement_progress` VALUES ('5', '3507', '26', '1410355586');
INSERT INTO `character_achievement_progress` VALUES ('5', '3510', '26', '1410355586');
INSERT INTO `character_achievement_progress` VALUES ('5', '3511', '26', '1410355586');
INSERT INTO `character_achievement_progress` VALUES ('5', '3512', '26', '1410355586');
INSERT INTO `character_achievement_progress` VALUES ('5', '3513', '292', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '3631', '14', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '4092', '292', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '4093', '26', '1410355586');
INSERT INTO `character_achievement_progress` VALUES ('5', '4224', '178', '1410355617');
INSERT INTO `character_achievement_progress` VALUES ('5', '5212', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '5217', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '5238', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '5301', '7', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '5313', '990', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '5314', '990', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '5315', '990', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '5316', '5985', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '5317', '3590', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '5371', '7', '1410330382');
INSERT INTO `character_achievement_progress` VALUES ('5', '5372', '154', '1410356203');
INSERT INTO `character_achievement_progress` VALUES ('5', '5373', '43', '1410355572');
INSERT INTO `character_achievement_progress` VALUES ('5', '5512', '35', '1410356204');
INSERT INTO `character_achievement_progress` VALUES ('5', '5529', '35', '1410356204');
INSERT INTO `character_achievement_progress` VALUES ('5', '8819', '500', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '8820', '500', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '8821', '500', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '8822', '500', '1410326636');
INSERT INTO `character_achievement_progress` VALUES ('5', '9598', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '9683', '990', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '9684', '990', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '9685', '3590', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '9686', '990', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '9687', '5985', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '13498', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '14174', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '14178', '5', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '15688', '26', '1410355586');
INSERT INTO `character_achievement_progress` VALUES ('5', '15689', '26', '1410355586');
INSERT INTO `character_achievement_progress` VALUES ('5', '16187', '3', '1410326871');
INSERT INTO `character_achievement_progress` VALUES ('5', '16449', '1', '1410355931');
INSERT INTO `character_achievement_progress` VALUES ('5', '16462', '5', '1410330192');
INSERT INTO `character_achievement_progress` VALUES ('5', '16463', '9', '1410355617');
INSERT INTO `character_achievement_progress` VALUES ('5', '16464', '12', '1410355763');
INSERT INTO `character_achievement_progress` VALUES ('5', '16820', '292', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('5', '16825', '3590', '1410356055');
INSERT INTO `character_achievement_progress` VALUES ('6', '34', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '35', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '36', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '37', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '38', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '39', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '40', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '41', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '73', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '162', '480', '1410374593');
INSERT INTO `character_achievement_progress` VALUES ('6', '167', '1', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '230', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '231', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '232', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '233', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '234', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '236', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '641', '1', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '653', '1', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '655', '1', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '657', '1', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '754', '1', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '756', '1', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '834', '1', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '903', '1', '1410374389');
INSERT INTO `character_achievement_progress` VALUES ('6', '992', '3102', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '993', '4010', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '994', '502', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '995', '3102', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '996', '402', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '2020', '200', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '2239', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '3355', '43', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '3513', '43', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '3631', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '4092', '43', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '4224', '43', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '5212', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '5213', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '5236', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '5301', '7', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '5313', '3102', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '5314', '3102', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '5315', '4010', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '5316', '502', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '5317', '402', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '5371', '2', '1410374478');
INSERT INTO `character_achievement_progress` VALUES ('6', '5372', '26', '1410374594');
INSERT INTO `character_achievement_progress` VALUES ('6', '5373', '21', '1410374588');
INSERT INTO `character_achievement_progress` VALUES ('6', '5529', '11', '1410374593');
INSERT INTO `character_achievement_progress` VALUES ('6', '5530', '11', '1410374593');
INSERT INTO `character_achievement_progress` VALUES ('6', '8819', '500', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '8820', '500', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '8821', '500', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '8822', '500', '1410374265');
INSERT INTO `character_achievement_progress` VALUES ('6', '9598', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '9683', '3102', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '9684', '3102', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '9685', '402', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '9686', '4010', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '9687', '502', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '13498', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '14173', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '14174', '3', '1410374584');
INSERT INTO `character_achievement_progress` VALUES ('6', '16187', '2', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '16820', '43', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('6', '16825', '3102', '1410374542');
INSERT INTO `character_achievement_progress` VALUES ('7', '34', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '35', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '36', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '37', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '38', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '39', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '40', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '41', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '73', '7', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '162', '1746', '1410392346');
INSERT INTO `character_achievement_progress` VALUES ('7', '167', '1', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '230', '7', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '231', '7', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '232', '7', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '233', '7', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '234', '7', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '236', '7', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '653', '1', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '657', '1', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '753', '1', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '756', '1', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '757', '1', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '1299', '1', '1410388032');
INSERT INTO `character_achievement_progress` VALUES ('7', '2020', '200', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '2030', '3386', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '2031', '3386', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '2032', '5160', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '2033', '3386', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '2034', '3286', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '2072', '1577', '1410392407');
INSERT INTO `character_achievement_progress` VALUES ('7', '2239', '7', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '2416', '3000', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '3354', '39', '1410388256');
INSERT INTO `character_achievement_progress` VALUES ('7', '3355', '190', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '3506', '39', '1410388256');
INSERT INTO `character_achievement_progress` VALUES ('7', '3507', '39', '1410388256');
INSERT INTO `character_achievement_progress` VALUES ('7', '3510', '39', '1410388256');
INSERT INTO `character_achievement_progress` VALUES ('7', '3511', '39', '1410388256');
INSERT INTO `character_achievement_progress` VALUES ('7', '3512', '39', '1410388256');
INSERT INTO `character_achievement_progress` VALUES ('7', '3513', '190', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '3631', '7', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '4092', '190', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '4093', '39', '1410388256');
INSERT INTO `character_achievement_progress` VALUES ('7', '4224', '179', '1410388465');
INSERT INTO `character_achievement_progress` VALUES ('7', '4742', '3000', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '5018', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '5212', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '5234', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '5301', '7', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '5328', '5160', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '5329', '3386', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '5330', '3386', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '5331', '3386', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '5332', '3286', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '5371', '4', '1410392407');
INSERT INTO `character_achievement_progress` VALUES ('7', '5372', '9', '1410392407');
INSERT INTO `character_achievement_progress` VALUES ('7', '5373', '81', '1410392333');
INSERT INTO `character_achievement_progress` VALUES ('7', '5529', '23', '1410392346');
INSERT INTO `character_achievement_progress` VALUES ('7', '5530', '23', '1410392346');
INSERT INTO `character_achievement_progress` VALUES ('7', '8819', '500', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '8820', '500', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '8821', '500', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '8822', '500', '1410388021');
INSERT INTO `character_achievement_progress` VALUES ('7', '9598', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '9678', '5160', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '9679', '3286', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '9680', '3386', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '9681', '3386', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '9682', '3386', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '13498', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '14174', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '14181', '5', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '15688', '39', '1410388256');
INSERT INTO `character_achievement_progress` VALUES ('7', '15689', '39', '1410388256');
INSERT INTO `character_achievement_progress` VALUES ('7', '16187', '1', '1410388146');
INSERT INTO `character_achievement_progress` VALUES ('7', '16444', '1', '1410388434');
INSERT INTO `character_achievement_progress` VALUES ('7', '16445', '1', '1410388435');
INSERT INTO `character_achievement_progress` VALUES ('7', '16446', '1', '1410388436');
INSERT INTO `character_achievement_progress` VALUES ('7', '16463', '2', '1410388292');
INSERT INTO `character_achievement_progress` VALUES ('7', '16464', '6', '1410392390');
INSERT INTO `character_achievement_progress` VALUES ('7', '16820', '190', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('7', '16826', '286', '1410392456');
INSERT INTO `character_achievement_progress` VALUES ('8', '34', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '35', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '36', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '37', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '38', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '39', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '40', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '41', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '73', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '162', '497', '1410466955');
INSERT INTO `character_achievement_progress` VALUES ('8', '167', '1', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '230', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '231', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '232', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '233', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '234', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '236', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '641', '1', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '655', '1', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '656', '1', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '753', '1', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '754', '1', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '755', '1', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '756', '1', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '834', '1', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '1146', '1', '1410466518');
INSERT INTO `character_achievement_progress` VALUES ('8', '2020', '200', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '2030', '4275', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '2031', '3168', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '2032', '3168', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '2033', '3168', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '2034', '3068', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '2239', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '3354', '12', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '3355', '50', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '3506', '12', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '3507', '12', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '3510', '12', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '3511', '12', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '3512', '12', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '3513', '50', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '3631', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '4092', '50', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '4093', '12', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '4224', '10062', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '5212', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '5215', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '5233', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '5301', '7', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '5328', '3168', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '5329', '3168', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '5330', '3168', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '5331', '4275', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '5332', '3068', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '5371', '6', '1410466936');
INSERT INTO `character_achievement_progress` VALUES ('8', '5372', '137', '1410466953');
INSERT INTO `character_achievement_progress` VALUES ('8', '5373', '22', '1410466697');
INSERT INTO `character_achievement_progress` VALUES ('8', '5512', '10', '1410466955');
INSERT INTO `character_achievement_progress` VALUES ('8', '5529', '10', '1410466955');
INSERT INTO `character_achievement_progress` VALUES ('8', '8819', '500', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '8820', '500', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '8821', '500', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '8822', '500', '1410466503');
INSERT INTO `character_achievement_progress` VALUES ('8', '9598', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '9678', '3168', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '9679', '3068', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '9680', '3168', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '9681', '3168', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '9682', '4275', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '13498', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '14174', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '14176', '3', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '15688', '12', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '15689', '12', '1410466957');
INSERT INTO `character_achievement_progress` VALUES ('8', '16462', '1', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '16820', '50', '1410466798');
INSERT INTO `character_achievement_progress` VALUES ('8', '16826', '68', '1410466798');

-- ----------------------------
-- Table structure for `character_action`
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_action
-- ----------------------------
INSERT INTO `character_action` VALUES ('1', '0', '0', '686', '0');
INSERT INTO `character_action` VALUES ('1', '0', '1', '348', '0');
INSERT INTO `character_action` VALUES ('1', '0', '9', '26297', '0');
INSERT INTO `character_action` VALUES ('1', '0', '10', '10', '48');
INSERT INTO `character_action` VALUES ('2', '0', '0', '686', '0');
INSERT INTO `character_action` VALUES ('2', '0', '10', '10', '48');
INSERT INTO `character_action` VALUES ('3', '0', '0', '5176', '0');
INSERT INTO `character_action` VALUES ('3', '0', '1', '774', '0');
INSERT INTO `character_action` VALUES ('3', '0', '9', '26297', '0');
INSERT INTO `character_action` VALUES ('3', '0', '72', '6603', '0');
INSERT INTO `character_action` VALUES ('3', '0', '84', '6603', '0');
INSERT INTO `character_action` VALUES ('3', '0', '96', '6603', '0');
INSERT INTO `character_action` VALUES ('4', '0', '72', '88163', '0');
INSERT INTO `character_action` VALUES ('4', '0', '73', '88161', '0');
INSERT INTO `character_action` VALUES ('5', '0', '0', '686', '0');
INSERT INTO `character_action` VALUES ('5', '0', '1', '348', '0');
INSERT INTO `character_action` VALUES ('5', '0', '2', '172', '0');
INSERT INTO `character_action` VALUES ('5', '0', '9', '20577', '0');
INSERT INTO `character_action` VALUES ('5', '0', '10', '10', '48');
INSERT INTO `character_action` VALUES ('6', '0', '0', '403', '0');
INSERT INTO `character_action` VALUES ('6', '0', '9', '20549', '0');
INSERT INTO `character_action` VALUES ('6', '0', '75', '20549', '0');
INSERT INTO `character_action` VALUES ('7', '0', '0', '133', '0');
INSERT INTO `character_action` VALUES ('7', '0', '1', '5143', '0');
INSERT INTO `character_action` VALUES ('7', '0', '2', '2136', '0');
INSERT INTO `character_action` VALUES ('7', '0', '9', '58984', '0');
INSERT INTO `character_action` VALUES ('8', '0', '0', '35395', '0');
INSERT INTO `character_action` VALUES ('8', '0', '9', '59752', '0');

-- ----------------------------
-- Table structure for `character_arena_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_stats`;
CREATE TABLE `character_arena_stats` (
  `guid` int(10) NOT NULL,
  `slot` tinyint(3) NOT NULL,
  `matchMakerRating` smallint(5) NOT NULL,
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_arena_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `character_aura`
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` int(11) NOT NULL DEFAULT '0',
  `amount1` int(11) NOT NULL DEFAULT '0',
  `amount2` int(11) NOT NULL DEFAULT '0',
  `base_amount0` int(11) NOT NULL DEFAULT '0',
  `base_amount1` int(11) NOT NULL DEFAULT '0',
  `base_amount2` int(11) NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_aura
-- ----------------------------
INSERT INTO `character_aura` VALUES ('4', '4', '0', '2457', '1', '1', '1', '0', '0', '0', '0', '0', '0', '-1', '-1', '0');
INSERT INTO `character_aura` VALUES ('4', '4', '0', '59073', '1', '1', '1', '0', '0', '0', '0', '0', '0', '-1', '-1', '0');
INSERT INTO `character_aura` VALUES ('5', '5', '0', '91576', '2', '2', '1', '0', '0', '0', '0', '0', '0', '-1', '-1', '0');
INSERT INTO `character_aura` VALUES ('5', '5', '0', '91938', '2', '2', '1', '0', '0', '0', '0', '0', '0', '-1', '-1', '0');

-- ----------------------------
-- Table structure for `character_banned`
-- ----------------------------
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE `character_banned` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- ----------------------------
-- Records of character_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `character_battleground_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_battleground_data
-- ----------------------------
INSERT INTO `character_battleground_data` VALUES ('1', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');
INSERT INTO `character_battleground_data` VALUES ('2', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');
INSERT INTO `character_battleground_data` VALUES ('3', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');
INSERT INTO `character_battleground_data` VALUES ('4', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');
INSERT INTO `character_battleground_data` VALUES ('5', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');
INSERT INTO `character_battleground_data` VALUES ('6', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');
INSERT INTO `character_battleground_data` VALUES ('7', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');
INSERT INTO `character_battleground_data` VALUES ('8', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_battleground_random`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_battleground_random
-- ----------------------------

-- ----------------------------
-- Table structure for `character_bug_submission`
-- ----------------------------
DROP TABLE IF EXISTS `character_bug_submission`;
CREATE TABLE `character_bug_submission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `playerId` bigint(20) DEFAULT NULL,
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `position_z` float DEFAULT NULL,
  `orientation` float DEFAULT NULL,
  `mapId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_bug_submission
-- ----------------------------

-- ----------------------------
-- Table structure for `character_cuf_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `character_cuf_profiles`;
CREATE TABLE `character_cuf_profiles` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Character Guid',
  `id` tinyint(3) unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `unk146` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk147` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk148` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk150` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk152` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk154` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_cuf_profiles
-- ----------------------------
INSERT INTO `character_cuf_profiles` VALUES ('1', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('2', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('3', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('4', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('5', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('6', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('7', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('8', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('9', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('10', '0', 'Principal', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('11', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('12', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('13', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('14', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('15', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('16', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('17', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_cuf_profiles` VALUES ('18', '0', 'Primary', '36', '72', '0', '0', '117441180', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_currency`
-- ----------------------------
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE `character_currency` (
  `guid` int(10) unsigned NOT NULL,
  `currency` smallint(5) unsigned NOT NULL,
  `total_count` int(10) unsigned NOT NULL,
  `week_count` int(10) unsigned NOT NULL,
  `week_cap` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_currency
-- ----------------------------
INSERT INTO `character_currency` VALUES ('1', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('1', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('1', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('1', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('1', '483', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('1', '484', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('2', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('2', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('2', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('2', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('2', '483', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('2', '484', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('3', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('3', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('3', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('3', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('3', '483', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('3', '484', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('4', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('4', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('4', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('4', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('4', '483', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('4', '484', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('5', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('5', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('5', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('5', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('5', '483', '0', '0', '135000');
INSERT INTO `character_currency` VALUES ('5', '484', '0', '0', '164900');
INSERT INTO `character_currency` VALUES ('6', '390', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('6', '392', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('6', '395', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('6', '396', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('6', '483', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('6', '484', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('7', '390', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('7', '392', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('7', '395', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('7', '396', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('7', '483', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('7', '484', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('8', '390', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('8', '392', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('8', '395', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('8', '396', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('8', '483', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('8', '484', '0', '0', '25');
INSERT INTO `character_currency` VALUES ('9', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('9', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('9', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('9', '396', '7200', '0', '0');
INSERT INTO `character_currency` VALUES ('10', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('10', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('10', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('10', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('11', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('11', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('11', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('11', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('12', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('12', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('12', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('12', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('13', '390', '10000', '0', '0');
INSERT INTO `character_currency` VALUES ('13', '392', '42028', '0', '0');
INSERT INTO `character_currency` VALUES ('13', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('13', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('14', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('14', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('14', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('14', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('15', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('15', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('15', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('15', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('16', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('16', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('16', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('16', '396', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('17', '390', '10000', '0', '0');
INSERT INTO `character_currency` VALUES ('17', '392', '1756', '0', '0');
INSERT INTO `character_currency` VALUES ('17', '395', '39170', '0', '0');
INSERT INTO `character_currency` VALUES ('17', '396', '24780', '0', '0');
INSERT INTO `character_currency` VALUES ('18', '390', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('18', '392', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('18', '395', '0', '0', '0');
INSERT INTO `character_currency` VALUES ('18', '396', '80', '0', '0');

-- ----------------------------
-- Table structure for `character_current_artifacts`
-- ----------------------------
DROP TABLE IF EXISTS `character_current_artifacts`;
CREATE TABLE `character_current_artifacts` (
  `guid` int(10) unsigned NOT NULL,
  `branchId` int(10) NOT NULL DEFAULT '0',
  `entry` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`branchId`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_current_artifacts
-- ----------------------------

-- ----------------------------
-- Table structure for `character_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_digsites`
-- ----------------------------
DROP TABLE IF EXISTS `character_digsites`;
CREATE TABLE `character_digsites` (
  `guid` int(10) unsigned NOT NULL,
  `entry` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_digsites
-- ----------------------------

-- ----------------------------
-- Table structure for `character_equipmentsets`
-- ----------------------------
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets` (
  `guid` int(10) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `item0` int(11) unsigned NOT NULL DEFAULT '0',
  `item1` int(11) unsigned NOT NULL DEFAULT '0',
  `item2` int(11) unsigned NOT NULL DEFAULT '0',
  `item3` int(11) unsigned NOT NULL DEFAULT '0',
  `item4` int(11) unsigned NOT NULL DEFAULT '0',
  `item5` int(11) unsigned NOT NULL DEFAULT '0',
  `item6` int(11) unsigned NOT NULL DEFAULT '0',
  `item7` int(11) unsigned NOT NULL DEFAULT '0',
  `item8` int(11) unsigned NOT NULL DEFAULT '0',
  `item9` int(11) unsigned NOT NULL DEFAULT '0',
  `item10` int(11) unsigned NOT NULL DEFAULT '0',
  `item11` int(11) unsigned NOT NULL DEFAULT '0',
  `item12` int(11) unsigned NOT NULL DEFAULT '0',
  `item13` int(11) unsigned NOT NULL DEFAULT '0',
  `item14` int(11) unsigned NOT NULL DEFAULT '0',
  `item15` int(11) unsigned NOT NULL DEFAULT '0',
  `item16` int(11) unsigned NOT NULL DEFAULT '0',
  `item17` int(11) unsigned NOT NULL DEFAULT '0',
  `item18` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`) USING BTREE,
  KEY `Idx_setindex` (`setindex`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_equipmentsets
-- ----------------------------

-- ----------------------------
-- Table structure for `character_feed_log`
-- ----------------------------
DROP TABLE IF EXISTS `character_feed_log`;
CREATE TABLE `character_feed_log` (
  `guid` int(11) NOT NULL,
  `type` smallint(1) NOT NULL,
  `data` int(11) NOT NULL,
  `date` int(11) DEFAULT NULL,
  `counter` int(11) NOT NULL,
  `difficulty` smallint(6) DEFAULT '-1',
  `item_guid` int(11) DEFAULT '-1',
  `item_quality` smallint(6) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_feed_log
-- ----------------------------
INSERT INTO `character_feed_log` VALUES ('4', '1', '5544', '1410324877', '0', '0', '0', '0');
INSERT INTO `character_feed_log` VALUES ('4', '1', '5681', '1410325598', '0', '0', '0', '0');
INSERT INTO `character_feed_log` VALUES ('5', '1', '5544', '1410326871', '0', '0', '0', '0');
INSERT INTO `character_feed_log` VALUES ('5', '1', '5681', '1410330192', '0', '0', '0', '0');
INSERT INTO `character_feed_log` VALUES ('5', '1', '5682', '1410355617', '0', '0', '0', '0');
INSERT INTO `character_feed_log` VALUES ('5', '1', '5683', '1410355763', '0', '0', '0', '0');
INSERT INTO `character_feed_log` VALUES ('5', '1', '5679', '1410355931', '0', '0', '0', '0');
INSERT INTO `character_feed_log` VALUES ('6', '1', '5544', '1410374542', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `character_glyphs`
-- ----------------------------
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
  `guid` int(10) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyph1` smallint(5) unsigned DEFAULT '0',
  `glyph2` smallint(5) unsigned DEFAULT '0',
  `glyph3` smallint(5) unsigned DEFAULT '0',
  `glyph4` smallint(5) unsigned DEFAULT '0',
  `glyph5` smallint(5) unsigned DEFAULT '0',
  `glyph6` smallint(5) unsigned DEFAULT '0',
  `glyph7` smallint(5) unsigned DEFAULT '0',
  `glyph8` smallint(5) unsigned DEFAULT '0',
  `glyph9` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_glyphs
-- ----------------------------
INSERT INTO `character_glyphs` VALUES ('1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_glyphs` VALUES ('2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_glyphs` VALUES ('3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_glyphs` VALUES ('4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_glyphs` VALUES ('5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_glyphs` VALUES ('6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_glyphs` VALUES ('7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_glyphs` VALUES ('8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_guild_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_guild_reputation`;
CREATE TABLE `character_guild_reputation` (
  `guid` int(10) unsigned NOT NULL,
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `disband_time` int(10) unsigned NOT NULL DEFAULT '0',
  `weekly_rep` bigint(20) NOT NULL DEFAULT '0',
  `total_rep` bigint(20) NOT NULL DEFAULT '0',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Characters Guild Reputation System';

-- ----------------------------
-- Records of character_guild_reputation
-- ----------------------------
INSERT INTO `character_guild_reputation` VALUES ('1', '1', '0', '1', '1');

-- ----------------------------
-- Table structure for `character_homebind`
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_homebind
-- ----------------------------
INSERT INTO `character_homebind` VALUES ('1', '1', '14', '-1171.45', '-5263.65', '0.847728');
INSERT INTO `character_homebind` VALUES ('2', '0', '1', '-4983.42', '877.7', '274.31');
INSERT INTO `character_homebind` VALUES ('3', '1', '14', '-1171.45', '-5263.65', '0.847728');
INSERT INTO `character_homebind` VALUES ('4', '638', '4714', '-1451.5', '1401.99', '35.5561');
INSERT INTO `character_homebind` VALUES ('5', '0', '85', '1704.23', '1701.18', '134.87');
INSERT INTO `character_homebind` VALUES ('6', '1', '215', '-2915.55', '-257.347', '59.2693');
INSERT INTO `character_homebind` VALUES ('7', '1', '141', '10311.3', '831.463', '1326.41');
INSERT INTO `character_homebind` VALUES ('8', '0', '12', '-8914.57', '-133.909', '80.5378');

-- ----------------------------
-- Table structure for `character_instance`
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `character_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_inventory
-- ----------------------------
INSERT INTO `character_inventory` VALUES ('1', '0', '4', '2');
INSERT INTO `character_inventory` VALUES ('1', '0', '6', '4');
INSERT INTO `character_inventory` VALUES ('1', '0', '15', '6');
INSERT INTO `character_inventory` VALUES ('1', '0', '23', '8');
INSERT INTO `character_inventory` VALUES ('1', '0', '24', '9');
INSERT INTO `character_inventory` VALUES ('1', '0', '25', '10');
INSERT INTO `character_inventory` VALUES ('2', '0', '4', '12');
INSERT INTO `character_inventory` VALUES ('2', '0', '6', '14');
INSERT INTO `character_inventory` VALUES ('2', '0', '7', '16');
INSERT INTO `character_inventory` VALUES ('2', '0', '15', '18');
INSERT INTO `character_inventory` VALUES ('2', '0', '23', '20');
INSERT INTO `character_inventory` VALUES ('3', '0', '23', '22');
INSERT INTO `character_inventory` VALUES ('3', '0', '15', '24');
INSERT INTO `character_inventory` VALUES ('3', '0', '6', '26');
INSERT INTO `character_inventory` VALUES ('3', '0', '4', '28');
INSERT INTO `character_inventory` VALUES ('3', '0', '24', '29');
INSERT INTO `character_inventory` VALUES ('3', '0', '26', '34');
INSERT INTO `character_inventory` VALUES ('4', '0', '3', '36');
INSERT INTO `character_inventory` VALUES ('4', '0', '6', '38');
INSERT INTO `character_inventory` VALUES ('4', '0', '7', '40');
INSERT INTO `character_inventory` VALUES ('4', '0', '15', '42');
INSERT INTO `character_inventory` VALUES ('4', '0', '23', '44');
INSERT INTO `character_inventory` VALUES ('4', '0', '4', '46');
INSERT INTO `character_inventory` VALUES ('4', '0', '5', '48');
INSERT INTO `character_inventory` VALUES ('4', '0', '24', '53');
INSERT INTO `character_inventory` VALUES ('5', '0', '4', '54');
INSERT INTO `character_inventory` VALUES ('5', '0', '6', '56');
INSERT INTO `character_inventory` VALUES ('5', '0', '26', '58');
INSERT INTO `character_inventory` VALUES ('5', '0', '15', '60');
INSERT INTO `character_inventory` VALUES ('5', '0', '23', '62');
INSERT INTO `character_inventory` VALUES ('5', '0', '24', '65');
INSERT INTO `character_inventory` VALUES ('5', '0', '27', '68');
INSERT INTO `character_inventory` VALUES ('5', '0', '25', '69');
INSERT INTO `character_inventory` VALUES ('5', '0', '14', '75');
INSERT INTO `character_inventory` VALUES ('5', '0', '7', '82');
INSERT INTO `character_inventory` VALUES ('5', '0', '36', '84');
INSERT INTO `character_inventory` VALUES ('5', '0', '37', '85');
INSERT INTO `character_inventory` VALUES ('6', '0', '4', '87');
INSERT INTO `character_inventory` VALUES ('6', '0', '6', '89');
INSERT INTO `character_inventory` VALUES ('6', '0', '23', '91');
INSERT INTO `character_inventory` VALUES ('6', '0', '15', '93');
INSERT INTO `character_inventory` VALUES ('6', '0', '16', '95');
INSERT INTO `character_inventory` VALUES ('6', '0', '24', '96');
INSERT INTO `character_inventory` VALUES ('7', '0', '4', '98');
INSERT INTO `character_inventory` VALUES ('7', '0', '7', '102');
INSERT INTO `character_inventory` VALUES ('7', '0', '15', '104');
INSERT INTO `character_inventory` VALUES ('7', '0', '23', '106');
INSERT INTO `character_inventory` VALUES ('7', '0', '24', '107');
INSERT INTO `character_inventory` VALUES ('7', '0', '25', '110');
INSERT INTO `character_inventory` VALUES ('7', '0', '8', '113');
INSERT INTO `character_inventory` VALUES ('7', '0', '27', '114');
INSERT INTO `character_inventory` VALUES ('7', '0', '28', '116');
INSERT INTO `character_inventory` VALUES ('7', '0', '19', '117');
INSERT INTO `character_inventory` VALUES ('7', '0', '6', '118');
INSERT INTO `character_inventory` VALUES ('7', '0', '9', '130');
INSERT INTO `character_inventory` VALUES ('7', '0', '29', '131');
INSERT INTO `character_inventory` VALUES ('7', '0', '26', '137');
INSERT INTO `character_inventory` VALUES ('7', '0', '31', '139');
INSERT INTO `character_inventory` VALUES ('7', '0', '30', '140');
INSERT INTO `character_inventory` VALUES ('8', '0', '4', '142');
INSERT INTO `character_inventory` VALUES ('8', '0', '7', '144');
INSERT INTO `character_inventory` VALUES ('8', '0', '6', '146');
INSERT INTO `character_inventory` VALUES ('8', '0', '23', '148');
INSERT INTO `character_inventory` VALUES ('8', '0', '15', '150');
INSERT INTO `character_inventory` VALUES ('8', '0', '24', '151');
INSERT INTO `character_inventory` VALUES ('8', '0', '25', '152');
INSERT INTO `character_inventory` VALUES ('8', '0', '26', '154');
INSERT INTO `character_inventory` VALUES ('8', '0', '27', '155');

-- ----------------------------
-- Table structure for `character_pet`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`) USING BTREE,
  KEY `idx_slot` (`slot`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of character_pet
-- ----------------------------
INSERT INTO `character_pet` VALUES ('1', '416', '1', '4449', '688', '0', '5', '0', '2', 'Imp', '1', '0', '207', '118', '1410148793', '7 2 7 1 7 0 129 3110 129 6307 1 0 1 0 6 2 6 1 6 0 ');
INSERT INTO `character_pet` VALUES ('2', '416', '2', '4449', '688', '0', '3', '0', '2', 'Imp', '1', '100', '0', '0', '1410168727', '7 2 7 1 7 0 129 3110 1 0 1 0 1 0 6 2 6 1 6 0 ');
INSERT INTO `character_pet` VALUES ('3', '416', '5', '4449', '688', '0', '5', '0', '2', 'Imp', '1', '0', '214', '124', '1410356231', '7 2 7 1 7 0 193 3110 129 6307 1 0 1 0 6 2 6 1 6 0 ');

-- ----------------------------
-- Table structure for `character_pet_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_pet_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playercount` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus
-- ----------------------------
INSERT INTO `character_queststatus` VALUES ('1', '24622', '1', '0', '1410148793', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('1', '24812', '3', '0', '1410148739', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('1', '25037', '3', '0', '1410148793', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('2', '28169', '1', '0', '1410168727', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('3', '24768', '3', '0', '1410181536', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('5', '24972', '1', '0', '1410355799', '0', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('5', '24973', '3', '0', '1410356231', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('6', '24852', '3', '0', '1410374645', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('7', '28724', '3', '0', '1410392480', '0', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('8', '26389', '3', '0', '1410466897', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `character_queststatus` VALUES ('8', '28770', '3', '0', '1410467016', '4', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_queststatus_daily`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_daily
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_monthly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_monthly`;
CREATE TABLE `character_queststatus_monthly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_monthly
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_rewarded`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE `character_queststatus_rewarded` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `active` tinyint(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_rewarded
-- ----------------------------
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '25064', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '26272', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '26273', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '26274', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '26275', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '26276', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '26277', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('2', '27670', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('2', '27671', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('2', '28167', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('3', '24764', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('3', '24765', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('3', '24767', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('4', '14078', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('4', '14091', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('4', '14094', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('4', '14098', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '24959', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '24960', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '24961', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '24968', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '25089', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '26799', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '26800', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '26801', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '26802', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '28608', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '28651', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '28652', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '28653', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('5', '28672', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('6', '14449', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('6', '14452', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('7', '26841', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('7', '26940', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('7', '28713', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('7', '28714', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('7', '28715', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('7', '28723', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('7', '28734', '1');
INSERT INTO `character_queststatus_rewarded` VALUES ('8', '28762', '1');

-- ----------------------------
-- Table structure for `character_queststatus_seasonal`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_seasonal`;
CREATE TABLE `character_queststatus_seasonal` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_seasonal
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_weekly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_weekly
-- ----------------------------

-- ----------------------------
-- Table structure for `character_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_reputation
-- ----------------------------
INSERT INTO `character_reputation` VALUES ('1', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('1', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '47', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '54', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '67', '0', '25');
INSERT INTO `character_reputation` VALUES ('1', '68', '261', '17');
INSERT INTO `character_reputation` VALUES ('1', '69', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '72', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '76', '261', '17');
INSERT INTO `character_reputation` VALUES ('1', '81', '261', '17');
INSERT INTO `character_reputation` VALUES ('1', '83', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '86', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('1', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('1', '469', '0', '14');
INSERT INTO `character_reputation` VALUES ('1', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('1', '471', '0', '22');
INSERT INTO `character_reputation` VALUES ('1', '509', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '510', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '530', '1060', '17');
INSERT INTO `character_reputation` VALUES ('1', '549', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '550', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '551', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '569', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '570', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '571', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('1', '589', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '729', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '730', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '889', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '890', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '891', '0', '14');
INSERT INTO `character_reputation` VALUES ('1', '892', '0', '24');
INSERT INTO `character_reputation` VALUES ('1', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '910', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '911', '261', '17');
INSERT INTO `character_reputation` VALUES ('1', '922', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '930', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('1', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('1', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '936', '0', '28');
INSERT INTO `character_reputation` VALUES ('1', '941', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '946', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '947', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '948', '0', '8');
INSERT INTO `character_reputation` VALUES ('1', '949', '0', '24');
INSERT INTO `character_reputation` VALUES ('1', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '978', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('1', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('1', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1037', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1050', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1052', '0', '152');
INSERT INTO `character_reputation` VALUES ('1', '1064', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1067', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1068', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1082', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '1085', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1094', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('1', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('1', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('1', '1119', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1124', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1126', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1133', '261', '17');
INSERT INTO `character_reputation` VALUES ('1', '1134', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('1', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1166', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1167', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('1', '1171', '0', '64');
INSERT INTO `character_reputation` VALUES ('1', '1172', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1174', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1177', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1178', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1181', '0', '20');
INSERT INTO `character_reputation` VALUES ('1', '1204', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('2', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '47', '126', '17');
INSERT INTO `character_reputation` VALUES ('2', '54', '510', '17');
INSERT INTO `character_reputation` VALUES ('2', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '67', '0', '14');
INSERT INTO `character_reputation` VALUES ('2', '68', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '69', '126', '17');
INSERT INTO `character_reputation` VALUES ('2', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '72', '126', '17');
INSERT INTO `character_reputation` VALUES ('2', '76', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '81', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '83', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '86', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('2', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('2', '469', '0', '25');
INSERT INTO `character_reputation` VALUES ('2', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('2', '471', '0', '20');
INSERT INTO `character_reputation` VALUES ('2', '509', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '510', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '530', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '549', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '550', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '551', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '569', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '570', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '571', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('2', '589', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '729', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '730', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '889', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '890', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '891', '0', '24');
INSERT INTO `character_reputation` VALUES ('2', '892', '0', '14');
INSERT INTO `character_reputation` VALUES ('2', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '910', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '911', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '922', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '930', '126', '17');
INSERT INTO `character_reputation` VALUES ('2', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('2', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('2', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '936', '0', '28');
INSERT INTO `character_reputation` VALUES ('2', '941', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '946', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '947', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '948', '0', '8');
INSERT INTO `character_reputation` VALUES ('2', '949', '0', '24');
INSERT INTO `character_reputation` VALUES ('2', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '978', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('2', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('2', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1037', '0', '136');
INSERT INTO `character_reputation` VALUES ('2', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1050', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1052', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '1064', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '1067', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '1068', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1082', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '1085', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1094', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('2', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('2', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('2', '1119', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '1124', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '1126', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1133', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '1134', '126', '17');
INSERT INTO `character_reputation` VALUES ('2', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('2', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('2', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '1166', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '1167', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('2', '1171', '0', '66');
INSERT INTO `character_reputation` VALUES ('2', '1172', '0', '2');
INSERT INTO `character_reputation` VALUES ('2', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1174', '0', '16');
INSERT INTO `character_reputation` VALUES ('2', '1177', '0', '0');
INSERT INTO `character_reputation` VALUES ('2', '1178', '0', '6');
INSERT INTO `character_reputation` VALUES ('2', '1181', '0', '20');
INSERT INTO `character_reputation` VALUES ('2', '1204', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('3', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '47', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '54', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '67', '0', '25');
INSERT INTO `character_reputation` VALUES ('3', '68', '142', '17');
INSERT INTO `character_reputation` VALUES ('3', '69', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '72', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '76', '142', '17');
INSERT INTO `character_reputation` VALUES ('3', '81', '142', '17');
INSERT INTO `character_reputation` VALUES ('3', '83', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '86', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('3', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('3', '469', '0', '14');
INSERT INTO `character_reputation` VALUES ('3', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('3', '471', '0', '22');
INSERT INTO `character_reputation` VALUES ('3', '509', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '510', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '530', '575', '17');
INSERT INTO `character_reputation` VALUES ('3', '549', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '550', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '551', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '569', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '570', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '571', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('3', '589', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '729', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '730', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '889', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '890', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '891', '0', '14');
INSERT INTO `character_reputation` VALUES ('3', '892', '0', '24');
INSERT INTO `character_reputation` VALUES ('3', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '910', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '911', '142', '17');
INSERT INTO `character_reputation` VALUES ('3', '922', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '930', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('3', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('3', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '936', '0', '28');
INSERT INTO `character_reputation` VALUES ('3', '941', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '946', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '947', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '948', '0', '8');
INSERT INTO `character_reputation` VALUES ('3', '949', '0', '24');
INSERT INTO `character_reputation` VALUES ('3', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '978', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('3', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('3', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1037', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1050', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1052', '0', '152');
INSERT INTO `character_reputation` VALUES ('3', '1064', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1067', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1068', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1082', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '1085', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1094', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('3', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('3', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('3', '1119', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '1124', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1126', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '1133', '142', '17');
INSERT INTO `character_reputation` VALUES ('3', '1134', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('3', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1166', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1167', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('3', '1171', '0', '66');
INSERT INTO `character_reputation` VALUES ('3', '1172', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1174', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1177', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1178', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1181', '0', '20');
INSERT INTO `character_reputation` VALUES ('3', '1204', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('4', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('4', '47', '322', '17');
INSERT INTO `character_reputation` VALUES ('4', '54', '298', '17');
INSERT INTO `character_reputation` VALUES ('4', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '67', '0', '14');
INSERT INTO `character_reputation` VALUES ('4', '68', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '69', '298', '17');
INSERT INTO `character_reputation` VALUES ('4', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '72', '298', '17');
INSERT INTO `character_reputation` VALUES ('4', '76', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '81', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '83', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '86', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('4', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('4', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('4', '469', '0', '25');
INSERT INTO `character_reputation` VALUES ('4', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('4', '471', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '509', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '510', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '530', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '549', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '550', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '551', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '569', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '570', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '571', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('4', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('4', '589', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '729', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '730', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '889', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '890', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '891', '0', '24');
INSERT INTO `character_reputation` VALUES ('4', '892', '0', '14');
INSERT INTO `character_reputation` VALUES ('4', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '910', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '911', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '922', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '930', '298', '17');
INSERT INTO `character_reputation` VALUES ('4', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('4', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('4', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '936', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '941', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '946', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '947', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '948', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '949', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '978', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('4', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('4', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1037', '0', '136');
INSERT INTO `character_reputation` VALUES ('4', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1050', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1052', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '1064', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '1067', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '1068', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1082', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '1085', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1094', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('4', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('4', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('4', '1119', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '1124', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '1126', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1133', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '1134', '1200', '17');
INSERT INTO `character_reputation` VALUES ('4', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('4', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('4', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('4', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('4', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('4', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '1166', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '1167', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('4', '1171', '0', '66');
INSERT INTO `character_reputation` VALUES ('4', '1172', '0', '2');
INSERT INTO `character_reputation` VALUES ('4', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1174', '0', '16');
INSERT INTO `character_reputation` VALUES ('4', '1177', '0', '0');
INSERT INTO `character_reputation` VALUES ('4', '1178', '0', '6');
INSERT INTO `character_reputation` VALUES ('4', '1181', '0', '20');
INSERT INTO `character_reputation` VALUES ('4', '1204', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('5', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '47', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '54', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '67', '0', '25');
INSERT INTO `character_reputation` VALUES ('5', '68', '1985', '17');
INSERT INTO `character_reputation` VALUES ('5', '69', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '72', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '76', '490', '17');
INSERT INTO `character_reputation` VALUES ('5', '81', '490', '17');
INSERT INTO `character_reputation` VALUES ('5', '83', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '86', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('5', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('5', '469', '0', '14');
INSERT INTO `character_reputation` VALUES ('5', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('5', '471', '0', '22');
INSERT INTO `character_reputation` VALUES ('5', '509', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '510', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '530', '490', '17');
INSERT INTO `character_reputation` VALUES ('5', '549', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '550', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '551', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '569', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '570', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '571', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('5', '589', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '729', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '730', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '889', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '890', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '891', '0', '14');
INSERT INTO `character_reputation` VALUES ('5', '892', '0', '24');
INSERT INTO `character_reputation` VALUES ('5', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '910', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '911', '490', '17');
INSERT INTO `character_reputation` VALUES ('5', '922', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '930', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('5', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('5', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '936', '0', '28');
INSERT INTO `character_reputation` VALUES ('5', '941', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '946', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '947', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '948', '0', '8');
INSERT INTO `character_reputation` VALUES ('5', '949', '0', '24');
INSERT INTO `character_reputation` VALUES ('5', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '978', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('5', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('5', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1037', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1050', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '1052', '0', '152');
INSERT INTO `character_reputation` VALUES ('5', '1064', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1067', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1068', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1082', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '1085', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1094', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('5', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('5', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('5', '1119', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '1124', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1126', '0', '2');
INSERT INTO `character_reputation` VALUES ('5', '1133', '490', '17');
INSERT INTO `character_reputation` VALUES ('5', '1134', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('5', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('5', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '1166', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '1167', '0', '0');
INSERT INTO `character_reputation` VALUES ('5', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('5', '1171', '0', '66');
INSERT INTO `character_reputation` VALUES ('5', '1172', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1174', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '1177', '0', '6');
INSERT INTO `character_reputation` VALUES ('5', '1178', '0', '16');
INSERT INTO `character_reputation` VALUES ('5', '1181', '0', '20');
INSERT INTO `character_reputation` VALUES ('5', '1204', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('6', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '47', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '54', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '67', '0', '25');
INSERT INTO `character_reputation` VALUES ('6', '68', '2', '17');
INSERT INTO `character_reputation` VALUES ('6', '69', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('6', '72', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '76', '2', '17');
INSERT INTO `character_reputation` VALUES ('6', '81', '10', '17');
INSERT INTO `character_reputation` VALUES ('6', '83', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '86', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('6', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('6', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('6', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('6', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('6', '469', '0', '14');
INSERT INTO `character_reputation` VALUES ('6', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('6', '471', '0', '22');
INSERT INTO `character_reputation` VALUES ('6', '509', '0', '2');
INSERT INTO `character_reputation` VALUES ('6', '510', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '530', '2', '17');
INSERT INTO `character_reputation` VALUES ('6', '549', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '550', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '551', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '569', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '570', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '571', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('6', '589', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '729', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '730', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '889', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '890', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '891', '0', '14');
INSERT INTO `character_reputation` VALUES ('6', '892', '0', '24');
INSERT INTO `character_reputation` VALUES ('6', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '910', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '911', '2', '17');
INSERT INTO `character_reputation` VALUES ('6', '922', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '930', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('6', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('6', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '936', '0', '28');
INSERT INTO `character_reputation` VALUES ('6', '941', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '946', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '947', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '948', '0', '8');
INSERT INTO `character_reputation` VALUES ('6', '949', '0', '24');
INSERT INTO `character_reputation` VALUES ('6', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '978', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('6', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('6', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('6', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1037', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1050', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '1052', '0', '152');
INSERT INTO `character_reputation` VALUES ('6', '1064', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1067', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1068', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1082', '0', '2');
INSERT INTO `character_reputation` VALUES ('6', '1085', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1094', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('6', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('6', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('6', '1119', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '1124', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1126', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '1133', '2', '17');
INSERT INTO `character_reputation` VALUES ('6', '1134', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('6', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '1166', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '1167', '0', '0');
INSERT INTO `character_reputation` VALUES ('6', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('6', '1171', '0', '64');
INSERT INTO `character_reputation` VALUES ('6', '1172', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1174', '0', '4');
INSERT INTO `character_reputation` VALUES ('6', '1177', '0', '6');
INSERT INTO `character_reputation` VALUES ('6', '1178', '0', '16');
INSERT INTO `character_reputation` VALUES ('6', '1181', '0', '20');
INSERT INTO `character_reputation` VALUES ('6', '1204', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('7', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '47', '286', '17');
INSERT INTO `character_reputation` VALUES ('7', '54', '286', '17');
INSERT INTO `character_reputation` VALUES ('7', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '67', '0', '14');
INSERT INTO `character_reputation` VALUES ('7', '68', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '69', '1160', '17');
INSERT INTO `character_reputation` VALUES ('7', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '72', '286', '17');
INSERT INTO `character_reputation` VALUES ('7', '76', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '81', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '83', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '86', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('7', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('7', '469', '0', '25');
INSERT INTO `character_reputation` VALUES ('7', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('7', '471', '0', '20');
INSERT INTO `character_reputation` VALUES ('7', '509', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '510', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '530', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '549', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '550', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '551', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '569', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '570', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '571', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('7', '589', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '729', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '730', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '889', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '890', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '891', '0', '24');
INSERT INTO `character_reputation` VALUES ('7', '892', '0', '14');
INSERT INTO `character_reputation` VALUES ('7', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '910', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '911', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '922', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '930', '286', '17');
INSERT INTO `character_reputation` VALUES ('7', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('7', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('7', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '936', '0', '28');
INSERT INTO `character_reputation` VALUES ('7', '941', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '946', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '947', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '948', '0', '8');
INSERT INTO `character_reputation` VALUES ('7', '949', '0', '24');
INSERT INTO `character_reputation` VALUES ('7', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '978', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('7', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('7', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1037', '0', '136');
INSERT INTO `character_reputation` VALUES ('7', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1050', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1052', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '1064', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '1067', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '1068', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1082', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '1085', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1094', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('7', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('7', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('7', '1119', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '1124', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '1126', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1133', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '1134', '286', '17');
INSERT INTO `character_reputation` VALUES ('7', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('7', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('7', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '1166', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '1167', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('7', '1171', '0', '66');
INSERT INTO `character_reputation` VALUES ('7', '1172', '0', '2');
INSERT INTO `character_reputation` VALUES ('7', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1174', '0', '16');
INSERT INTO `character_reputation` VALUES ('7', '1177', '0', '0');
INSERT INTO `character_reputation` VALUES ('7', '1178', '0', '6');
INSERT INTO `character_reputation` VALUES ('7', '1181', '0', '20');
INSERT INTO `character_reputation` VALUES ('7', '1204', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('8', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '47', '68', '17');
INSERT INTO `character_reputation` VALUES ('8', '54', '68', '17');
INSERT INTO `character_reputation` VALUES ('8', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '67', '0', '14');
INSERT INTO `character_reputation` VALUES ('8', '68', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '69', '68', '17');
INSERT INTO `character_reputation` VALUES ('8', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '72', '275', '17');
INSERT INTO `character_reputation` VALUES ('8', '76', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '81', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '83', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '86', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('8', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('8', '469', '0', '25');
INSERT INTO `character_reputation` VALUES ('8', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('8', '471', '0', '20');
INSERT INTO `character_reputation` VALUES ('8', '509', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '510', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '530', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '549', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '550', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '551', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '569', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '570', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '571', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('8', '589', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '729', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '730', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '889', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '890', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '891', '0', '24');
INSERT INTO `character_reputation` VALUES ('8', '892', '0', '14');
INSERT INTO `character_reputation` VALUES ('8', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '910', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '911', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '922', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '930', '68', '17');
INSERT INTO `character_reputation` VALUES ('8', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('8', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('8', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '936', '0', '28');
INSERT INTO `character_reputation` VALUES ('8', '941', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '946', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '947', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '948', '0', '8');
INSERT INTO `character_reputation` VALUES ('8', '949', '0', '24');
INSERT INTO `character_reputation` VALUES ('8', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '978', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('8', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('8', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1037', '0', '136');
INSERT INTO `character_reputation` VALUES ('8', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1050', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1052', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '1064', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '1067', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '1068', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1082', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '1085', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1094', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('8', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('8', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('8', '1119', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '1124', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '1126', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1133', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '1134', '68', '17');
INSERT INTO `character_reputation` VALUES ('8', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('8', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('8', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '1166', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '1167', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('8', '1171', '0', '66');
INSERT INTO `character_reputation` VALUES ('8', '1172', '0', '2');
INSERT INTO `character_reputation` VALUES ('8', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1174', '0', '16');
INSERT INTO `character_reputation` VALUES ('8', '1177', '0', '0');
INSERT INTO `character_reputation` VALUES ('8', '1178', '0', '6');
INSERT INTO `character_reputation` VALUES ('8', '1181', '0', '20');
INSERT INTO `character_reputation` VALUES ('8', '1204', '0', '16');

-- ----------------------------
-- Table structure for `character_skills`
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_skills
-- ----------------------------
INSERT INTO `character_skills` VALUES ('1', '43', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '95', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '109', '300', '300');
INSERT INTO `character_skills` VALUES ('1', '136', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '162', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '173', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '228', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '315', '300', '300');
INSERT INTO `character_skills` VALUES ('1', '354', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '355', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '415', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '593', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '799', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '802', '1', '1');
INSERT INTO `character_skills` VALUES ('2', '43', '1', '5');
INSERT INTO `character_skills` VALUES ('2', '95', '1', '5');
INSERT INTO `character_skills` VALUES ('2', '98', '300', '300');
INSERT INTO `character_skills` VALUES ('2', '136', '1', '5');
INSERT INTO `character_skills` VALUES ('2', '162', '1', '5');
INSERT INTO `character_skills` VALUES ('2', '173', '1', '5');
INSERT INTO `character_skills` VALUES ('2', '228', '1', '5');
INSERT INTO `character_skills` VALUES ('2', '313', '300', '300');
INSERT INTO `character_skills` VALUES ('2', '354', '1', '1');
INSERT INTO `character_skills` VALUES ('2', '355', '1', '1');
INSERT INTO `character_skills` VALUES ('2', '415', '1', '1');
INSERT INTO `character_skills` VALUES ('2', '593', '1', '1');
INSERT INTO `character_skills` VALUES ('2', '799', '1', '1');
INSERT INTO `character_skills` VALUES ('2', '802', '1', '1');
INSERT INTO `character_skills` VALUES ('3', '54', '1', '5');
INSERT INTO `character_skills` VALUES ('3', '95', '1', '5');
INSERT INTO `character_skills` VALUES ('3', '109', '300', '300');
INSERT INTO `character_skills` VALUES ('3', '134', '1', '1');
INSERT INTO `character_skills` VALUES ('3', '136', '1', '5');
INSERT INTO `character_skills` VALUES ('3', '160', '1', '5');
INSERT INTO `character_skills` VALUES ('3', '162', '1', '5');
INSERT INTO `character_skills` VALUES ('3', '173', '1', '5');
INSERT INTO `character_skills` VALUES ('3', '229', '1', '5');
INSERT INTO `character_skills` VALUES ('3', '315', '300', '300');
INSERT INTO `character_skills` VALUES ('3', '414', '1', '1');
INSERT INTO `character_skills` VALUES ('3', '415', '1', '1');
INSERT INTO `character_skills` VALUES ('3', '473', '1', '5');
INSERT INTO `character_skills` VALUES ('3', '573', '1', '1');
INSERT INTO `character_skills` VALUES ('3', '574', '1', '1');
INSERT INTO `character_skills` VALUES ('3', '798', '1', '1');
INSERT INTO `character_skills` VALUES ('4', '26', '1', '1');
INSERT INTO `character_skills` VALUES ('4', '43', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '44', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '45', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '46', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '54', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '55', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '95', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '98', '300', '300');
INSERT INTO `character_skills` VALUES ('4', '136', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '160', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '162', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '172', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '173', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '176', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '226', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '229', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '257', '1', '1');
INSERT INTO `character_skills` VALUES ('4', '267', '1', '1');
INSERT INTO `character_skills` VALUES ('4', '413', '1', '1');
INSERT INTO `character_skills` VALUES ('4', '414', '1', '1');
INSERT INTO `character_skills` VALUES ('4', '415', '1', '1');
INSERT INTO `character_skills` VALUES ('4', '433', '1', '1');
INSERT INTO `character_skills` VALUES ('4', '473', '1', '5');
INSERT INTO `character_skills` VALUES ('4', '770', '1', '1');
INSERT INTO `character_skills` VALUES ('4', '791', '300', '300');
INSERT INTO `character_skills` VALUES ('4', '803', '1', '1');
INSERT INTO `character_skills` VALUES ('5', '43', '1', '5');
INSERT INTO `character_skills` VALUES ('5', '95', '1', '5');
INSERT INTO `character_skills` VALUES ('5', '109', '300', '300');
INSERT INTO `character_skills` VALUES ('5', '136', '1', '5');
INSERT INTO `character_skills` VALUES ('5', '162', '1', '5');
INSERT INTO `character_skills` VALUES ('5', '173', '1', '5');
INSERT INTO `character_skills` VALUES ('5', '228', '1', '5');
INSERT INTO `character_skills` VALUES ('5', '354', '1', '1');
INSERT INTO `character_skills` VALUES ('5', '355', '1', '1');
INSERT INTO `character_skills` VALUES ('5', '415', '1', '1');
INSERT INTO `character_skills` VALUES ('5', '593', '1', '1');
INSERT INTO `character_skills` VALUES ('5', '799', '1', '1');
INSERT INTO `character_skills` VALUES ('5', '802', '1', '1');
INSERT INTO `character_skills` VALUES ('6', '44', '1', '5');
INSERT INTO `character_skills` VALUES ('6', '54', '1', '5');
INSERT INTO `character_skills` VALUES ('6', '95', '1', '5');
INSERT INTO `character_skills` VALUES ('6', '109', '300', '300');
INSERT INTO `character_skills` VALUES ('6', '115', '300', '300');
INSERT INTO `character_skills` VALUES ('6', '136', '1', '5');
INSERT INTO `character_skills` VALUES ('6', '160', '1', '5');
INSERT INTO `character_skills` VALUES ('6', '162', '1', '5');
INSERT INTO `character_skills` VALUES ('6', '172', '1', '5');
INSERT INTO `character_skills` VALUES ('6', '173', '1', '5');
INSERT INTO `character_skills` VALUES ('6', '375', '1', '1');
INSERT INTO `character_skills` VALUES ('6', '414', '1', '1');
INSERT INTO `character_skills` VALUES ('6', '415', '1', '1');
INSERT INTO `character_skills` VALUES ('6', '433', '1', '1');
INSERT INTO `character_skills` VALUES ('6', '473', '1', '5');
INSERT INTO `character_skills` VALUES ('6', '801', '1', '1');
INSERT INTO `character_skills` VALUES ('7', '6', '1', '1');
INSERT INTO `character_skills` VALUES ('7', '8', '1', '1');
INSERT INTO `character_skills` VALUES ('7', '43', '1', '5');
INSERT INTO `character_skills` VALUES ('7', '95', '1', '5');
INSERT INTO `character_skills` VALUES ('7', '98', '300', '300');
INSERT INTO `character_skills` VALUES ('7', '113', '300', '300');
INSERT INTO `character_skills` VALUES ('7', '136', '1', '5');
INSERT INTO `character_skills` VALUES ('7', '162', '1', '5');
INSERT INTO `character_skills` VALUES ('7', '173', '1', '5');
INSERT INTO `character_skills` VALUES ('7', '228', '1', '5');
INSERT INTO `character_skills` VALUES ('7', '237', '1', '1');
INSERT INTO `character_skills` VALUES ('7', '415', '1', '1');
INSERT INTO `character_skills` VALUES ('7', '799', '1', '1');
INSERT INTO `character_skills` VALUES ('7', '802', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '43', '1', '5');
INSERT INTO `character_skills` VALUES ('8', '44', '1', '5');
INSERT INTO `character_skills` VALUES ('8', '54', '1', '5');
INSERT INTO `character_skills` VALUES ('8', '55', '1', '5');
INSERT INTO `character_skills` VALUES ('8', '95', '1', '5');
INSERT INTO `character_skills` VALUES ('8', '98', '300', '300');
INSERT INTO `character_skills` VALUES ('8', '160', '1', '5');
INSERT INTO `character_skills` VALUES ('8', '162', '1', '5');
INSERT INTO `character_skills` VALUES ('8', '172', '1', '5');
INSERT INTO `character_skills` VALUES ('8', '184', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '229', '1', '5');
INSERT INTO `character_skills` VALUES ('8', '257', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '267', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '413', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '414', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '415', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '433', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '594', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '770', '1', '1');
INSERT INTO `character_skills` VALUES ('8', '800', '1', '1');

-- ----------------------------
-- Table structure for `character_social`
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_social
-- ----------------------------

-- ----------------------------
-- Table structure for `character_spell`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_spell
-- ----------------------------
INSERT INTO `character_spell` VALUES ('1', '348', '1', '0');
INSERT INTO `character_spell` VALUES ('3', '774', '1', '0');
INSERT INTO `character_spell` VALUES ('5', '172', '1', '0');
INSERT INTO `character_spell` VALUES ('5', '348', '1', '0');
INSERT INTO `character_spell` VALUES ('7', '2136', '1', '0');
INSERT INTO `character_spell` VALUES ('7', '5143', '1', '0');

-- ----------------------------
-- Table structure for `character_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_stats
-- ----------------------------
INSERT INTO `character_stats` VALUES ('4', '119348', '76958', '0', '0', '0', '0', '62', '69', '5816', '3779', '186', '10576', '0', '0', '0', '0', '85', '0', '0', '2.26258', '0', '6.46944', '6.46944', '0', '222', '0', '2786', '3677');
INSERT INTO `character_stats` VALUES ('5', '123', '223', '0', '0', '0', '0', '20', '19', '24', '25', '32', '50', '0', '0', '0', '0', '3', '0', '0', '3.43349', '0', '4.77352', '4.77352', '0', '20', '0', '0', '0');
INSERT INTO `character_stats` VALUES ('7', '112', '271', '0', '0', '0', '0', '20', '21', '21', '28', '27', '67', '0', '0', '4', '0', '0', '0', '0', '4.47786', '0', '5', '5', '0', '20', '0', '0', '0');
INSERT INTO `character_stats` VALUES ('8', '98', '119', '0', '0', '0', '0', '24', '21', '24', '21', '22', '33', '0', '0', '0', '0', '0', '0', '5', '5', '0', '5.00001', '5.00001', '0', '37', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_talent`
-- ----------------------------
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
  `guid` int(10) unsigned NOT NULL,
  `spell` mediumint(8) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_talent
-- ----------------------------

-- ----------------------------
-- Table structure for `character_void_storage`
-- ----------------------------
DROP TABLE IF EXISTS `character_void_storage`;
CREATE TABLE `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` int(10) unsigned NOT NULL,
  `itemEntry` mediumint(8) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `randomProperty` int(10) unsigned NOT NULL DEFAULT '0',
  `suffixFactor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`) USING BTREE,
  KEY `idx_player` (`playerGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_void_storage
-- ----------------------------

-- ----------------------------
-- Table structure for `corpse`
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
  `corpseGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `phaseMask` smallint(5) unsigned NOT NULL DEFAULT '1',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`corpseGuid`),
  KEY `idx_type` (`corpseType`) USING BTREE,
  KEY `idx_time` (`time`) USING BTREE,
  KEY `idx_player` (`guid`) USING BTREE,
  KEY `idx_instance` (`instanceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

-- ----------------------------
-- Records of corpse
-- ----------------------------

-- ----------------------------
-- Table structure for `creature_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of creature_respawn
-- ----------------------------
INSERT INTO `creature_respawn` VALUES ('7164', '1389682230', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7165', '1389682228', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7167', '1389682223', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7187', '1389682217', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7188', '1389682225', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7190', '1389682217', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7218', '1389682205', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7220', '1389682222', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7221', '1389682219', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7222', '1389682216', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7223', '1389682214', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7247', '1389682198', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7250', '1389682211', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7251', '1389682221', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7252', '1389682191', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7253', '1389682217', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7254', '1389682202', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7255', '1389682200', '0', '0');
INSERT INTO `creature_respawn` VALUES ('7259', '1389682214', '0', '0');
INSERT INTO `creature_respawn` VALUES ('8015', '1409883910', '0', '0');
INSERT INTO `creature_respawn` VALUES ('8021', '1409884263', '0', '0');
INSERT INTO `creature_respawn` VALUES ('9210', '1389601896', '0', '0');
INSERT INTO `creature_respawn` VALUES ('9462', '1389601899', '0', '0');
INSERT INTO `creature_respawn` VALUES ('9464', '1389601884', '0', '0');
INSERT INTO `creature_respawn` VALUES ('9466', '1389601901', '0', '0');
INSERT INTO `creature_respawn` VALUES ('9474', '1389601920', '0', '0');
INSERT INTO `creature_respawn` VALUES ('9479', '1389601907', '0', '0');
INSERT INTO `creature_respawn` VALUES ('9480', '1389601912', '0', '0');
INSERT INTO `creature_respawn` VALUES ('9481', '1389601920', '0', '0');
INSERT INTO `creature_respawn` VALUES ('11220', '1410073585', '0', '0');
INSERT INTO `creature_respawn` VALUES ('11221', '1410073358', '0', '0');
INSERT INTO `creature_respawn` VALUES ('11225', '1410051898', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12038', '1389601908', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12039', '1389601891', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12044', '1389601914', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12045', '1389601874', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12046', '1389601868', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12052', '1389601928', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12053', '1389601906', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12054', '1389601861', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12056', '1389601893', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12442', '1389872192', '0', '0');
INSERT INTO `creature_respawn` VALUES ('12443', '1389872439', '0', '0');
INSERT INTO `creature_respawn` VALUES ('13452', '1389871798', '0', '0');
INSERT INTO `creature_respawn` VALUES ('13453', '1389871769', '0', '0');
INSERT INTO `creature_respawn` VALUES ('13454', '1389871806', '0', '0');
INSERT INTO `creature_respawn` VALUES ('13455', '1389871735', '0', '0');
INSERT INTO `creature_respawn` VALUES ('13456', '1389871698', '0', '0');
INSERT INTO `creature_respawn` VALUES ('13457', '1389871725', '0', '0');
INSERT INTO `creature_respawn` VALUES ('13512', '1389870679', '0', '0');
INSERT INTO `creature_respawn` VALUES ('14236', '1389879040', '0', '0');
INSERT INTO `creature_respawn` VALUES ('14653', '1410052336', '0', '0');
INSERT INTO `creature_respawn` VALUES ('14676', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('14741', '1410052267', '0', '0');
INSERT INTO `creature_respawn` VALUES ('14811', '1410052302', '0', '0');
INSERT INTO `creature_respawn` VALUES ('14916', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('15011', '1410051822', '0', '0');
INSERT INTO `creature_respawn` VALUES ('15109', '1410051800', '0', '0');
INSERT INTO `creature_respawn` VALUES ('15113', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('15127', '1410052302', '0', '0');
INSERT INTO `creature_respawn` VALUES ('15221', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18802', '1409883910', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18805', '1410356199', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18806', '1410356336', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18822', '1410356326', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18827', '1409883906', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18830', '1409883919', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18832', '1409883918', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18837', '1409883908', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18838', '1409883911', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18841', '1409883921', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18868', '1409883915', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18877', '1410356427', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18878', '1410356224', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18880', '1410356208', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18883', '1410356194', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18890', '1409883913', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18891', '1410356378', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18895', '1410356441', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18905', '1409883911', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18924', '1410356201', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18934', '1410356200', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18954', '1409883911', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18986', '1409883919', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18987', '1410356407', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18993', '1409883900', '0', '0');
INSERT INTO `creature_respawn` VALUES ('18994', '1410355927', '0', '0');
INSERT INTO `creature_respawn` VALUES ('20123', '1389682203', '0', '0');
INSERT INTO `creature_respawn` VALUES ('20131', '1389682207', '0', '0');
INSERT INTO `creature_respawn` VALUES ('20135', '1389682202', '0', '0');
INSERT INTO `creature_respawn` VALUES ('20142', '1389682214', '0', '0');
INSERT INTO `creature_respawn` VALUES ('20263', '1389682202', '0', '0');
INSERT INTO `creature_respawn` VALUES ('20272', '1389682224', '0', '0');
INSERT INTO `creature_respawn` VALUES ('20355', '1389682198', '0', '0');
INSERT INTO `creature_respawn` VALUES ('20371', '1389601879', '0', '0');
INSERT INTO `creature_respawn` VALUES ('20372', '1389601923', '0', '0');
INSERT INTO `creature_respawn` VALUES ('21785', '1389601903', '0', '0');
INSERT INTO `creature_respawn` VALUES ('23210', '1389871691', '0', '0');
INSERT INTO `creature_respawn` VALUES ('23222', '1389871802', '0', '0');
INSERT INTO `creature_respawn` VALUES ('25224', '1389886128', '0', '0');
INSERT INTO `creature_respawn` VALUES ('26124', '1389871789', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27016', '1389682200', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27027', '1389682199', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27057', '1389682200', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27164', '1389682208', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27211', '1389682202', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27269', '1389682205', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27348', '1389682201', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27399', '1389682251', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27537', '1389682213', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27545', '1389682211', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27549', '1389682205', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27561', '1389682209', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27593', '1389682201', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27605', '1389682251', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27670', '1389682196', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27775', '1389682208', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27798', '1389682214', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27843', '1389682197', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27869', '1389682202', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27919', '1389682212', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27947', '1389682204', '0', '0');
INSERT INTO `creature_respawn` VALUES ('28793', '1410051882', '0', '0');
INSERT INTO `creature_respawn` VALUES ('28827', '1410051809', '0', '0');
INSERT INTO `creature_respawn` VALUES ('28869', '1410051850', '0', '0');
INSERT INTO `creature_respawn` VALUES ('28886', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('28926', '1410052302', '0', '0');
INSERT INTO `creature_respawn` VALUES ('29003', '1410052327', '0', '0');
INSERT INTO `creature_respawn` VALUES ('29017', '1410051880', '0', '0');
INSERT INTO `creature_respawn` VALUES ('29051', '1410052249', '0', '0');
INSERT INTO `creature_respawn` VALUES ('29076', '1410052324', '0', '0');
INSERT INTO `creature_respawn` VALUES ('30943', '1409883901', '0', '0');
INSERT INTO `creature_respawn` VALUES ('30997', '1410355806', '0', '0');
INSERT INTO `creature_respawn` VALUES ('31131', '1410356334', '0', '0');
INSERT INTO `creature_respawn` VALUES ('31389', '1410355820', '0', '0');
INSERT INTO `creature_respawn` VALUES ('31659', '1410356345', '0', '0');
INSERT INTO `creature_respawn` VALUES ('36411', '1389601919', '0', '0');
INSERT INTO `creature_respawn` VALUES ('41748', '1389601907', '0', '0');
INSERT INTO `creature_respawn` VALUES ('41921', '1389601884', '0', '0');
INSERT INTO `creature_respawn` VALUES ('41933', '1389601896', '0', '0');
INSERT INTO `creature_respawn` VALUES ('42208', '1389601922', '0', '0');
INSERT INTO `creature_respawn` VALUES ('42344', '1389601915', '0', '0');
INSERT INTO `creature_respawn` VALUES ('42463', '1389601957', '0', '0');
INSERT INTO `creature_respawn` VALUES ('42612', '1389601896', '0', '0');
INSERT INTO `creature_respawn` VALUES ('42747', '1389601892', '0', '0');
INSERT INTO `creature_respawn` VALUES ('42831', '1389601917', '0', '0');
INSERT INTO `creature_respawn` VALUES ('42835', '1389601916', '0', '0');
INSERT INTO `creature_respawn` VALUES ('42995', '1389601897', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43106', '1389601885', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43137', '1389601966', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43699', '1389682212', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43700', '1389682225', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43701', '1389682215', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43702', '1389682223', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43720', '1389682217', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43810', '1389682227', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43826', '1389682217', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43827', '1389682225', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43829', '1389682221', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43869', '1389682222', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43871', '1389682221', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43872', '1389682215', '0', '0');
INSERT INTO `creature_respawn` VALUES ('47732', '1410073590', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48356', '1389886092', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48360', '1389886098', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48362', '1389886100', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48369', '1389886100', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48370', '1389886090', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48371', '1389886092', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48376', '1389886057', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48377', '1389886122', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48381', '1389886108', '0', '0');
INSERT INTO `creature_respawn` VALUES ('48435', '1410051890', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49015', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49017', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49018', '1410052296', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49019', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49020', '1410052223', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49022', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49023', '1410052303', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49025', '1410052297', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49026', '1410052302', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49027', '1410052298', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49034', '1410052330', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49036', '1410052322', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49488', '1410051949', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49564', '1410051905', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49567', '1410051810', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49568', '1410051877', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49570', '1410051872', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49572', '1410051817', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49574', '1410051843', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49581', '1410051805', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49844', '1410169024', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49856', '1410169067', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49892', '1410169052', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49905', '1410168892', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49908', '1410169037', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49910', '1410168903', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49957', '1410169055', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49959', '1410169063', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49965', '1410168980', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49982', '1410169026', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49983', '1410169001', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49988', '1410168915', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49989', '1410168936', '0', '0');
INSERT INTO `creature_respawn` VALUES ('49994', '1410168947', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50007', '1389601945', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50009', '1410168958', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50011', '1410168945', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50013', '1410168902', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50021', '1410168902', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50032', '1410169005', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50037', '1410168993', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50039', '1410169004', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50041', '1410168951', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50048', '1410168966', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50050', '1410169034', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50053', '1410168929', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50054', '1410169018', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50062', '1410168920', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50071', '1410168919', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50073', '1410168910', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50074', '1410168976', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50081', '1410168933', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50083', '1410169012', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50867', '1389601889', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50868', '1389601900', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50877', '1389601884', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50882', '1389601881', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50891', '1389601930', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50896', '1389601925', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50916', '1389601932', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50932', '1389601927', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50933', '1389601925', '0', '0');
INSERT INTO `creature_respawn` VALUES ('50939', '1389601858', '0', '0');
INSERT INTO `creature_respawn` VALUES ('51315', '1389886088', '0', '0');
INSERT INTO `creature_respawn` VALUES ('51316', '1389886087', '0', '0');
INSERT INTO `creature_respawn` VALUES ('51359', '1389886100', '0', '0');
INSERT INTO `creature_respawn` VALUES ('51363', '1389886093', '0', '0');
INSERT INTO `creature_respawn` VALUES ('51364', '1389886077', '0', '0');
INSERT INTO `creature_respawn` VALUES ('51365', '1389886132', '0', '0');
INSERT INTO `creature_respawn` VALUES ('51368', '1389886082', '0', '0');
INSERT INTO `creature_respawn` VALUES ('51369', '1389886091', '0', '0');
INSERT INTO `creature_respawn` VALUES ('56185', '1389884245', '0', '0');
INSERT INTO `creature_respawn` VALUES ('59244', '1389886115', '0', '0');
INSERT INTO `creature_respawn` VALUES ('59247', '1389886079', '0', '0');
INSERT INTO `creature_respawn` VALUES ('59248', '1389886090', '0', '0');
INSERT INTO `creature_respawn` VALUES ('63427', '1410356354', '0', '0');
INSERT INTO `creature_respawn` VALUES ('63443', '1410356303', '0', '0');
INSERT INTO `creature_respawn` VALUES ('63446', '1410356413', '0', '0');
INSERT INTO `creature_respawn` VALUES ('63448', '1410355911', '0', '0');
INSERT INTO `creature_respawn` VALUES ('63462', '1410355942', '0', '0');
INSERT INTO `creature_respawn` VALUES ('63984', '1410356316', '0', '0');
INSERT INTO `creature_respawn` VALUES ('63986', '1410356314', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64053', '1410355899', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64129', '1410356200', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64148', '1410356198', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64155', '1410356213', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64156', '1410356190', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64159', '1410356220', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64249', '1409883917', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64250', '1409883910', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64251', '1409883903', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64252', '1409883924', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64259', '1409883914', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64260', '1409883905', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64261', '1409883906', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64266', '1409883901', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64302', '1409883904', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64304', '1409883917', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64366', '1409883912', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64374', '1409883924', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64546', '1409883909', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64553', '1409883912', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64594', '1409883922', '0', '0');
INSERT INTO `creature_respawn` VALUES ('64767', '1409884261', '0', '0');
INSERT INTO `creature_respawn` VALUES ('65035', '1409884231', '0', '0');
INSERT INTO `creature_respawn` VALUES ('65042', '1409884257', '0', '0');
INSERT INTO `creature_respawn` VALUES ('67396', '1389871117', '0', '0');
INSERT INTO `creature_respawn` VALUES ('71623', '1389886072', '0', '0');
INSERT INTO `creature_respawn` VALUES ('71625', '1389886104', '0', '0');
INSERT INTO `creature_respawn` VALUES ('71626', '1389886108', '0', '0');
INSERT INTO `creature_respawn` VALUES ('71629', '1389886082', '0', '0');
INSERT INTO `creature_respawn` VALUES ('71632', '1389886100', '0', '0');
INSERT INTO `creature_respawn` VALUES ('71633', '1389886124', '0', '0');
INSERT INTO `creature_respawn` VALUES ('71636', '1389886077', '0', '0');
INSERT INTO `creature_respawn` VALUES ('71637', '1389886098', '0', '0');
INSERT INTO `creature_respawn` VALUES ('71816', '1389886971', '1', '0');
INSERT INTO `creature_respawn` VALUES ('77641', '1410374817', '1', '0');
INSERT INTO `creature_respawn` VALUES ('77847', '1410374743', '1', '0');
INSERT INTO `creature_respawn` VALUES ('77939', '1410374748', '1', '0');
INSERT INTO `creature_respawn` VALUES ('78026', '1410374789', '1', '0');
INSERT INTO `creature_respawn` VALUES ('78085', '1410374790', '1', '0');
INSERT INTO `creature_respawn` VALUES ('78129', '1410374677', '1', '0');
INSERT INTO `creature_respawn` VALUES ('78176', '1410374428', '1', '0');
INSERT INTO `creature_respawn` VALUES ('78206', '1410374683', '1', '0');
INSERT INTO `creature_respawn` VALUES ('78272', '1410374434', '1', '0');
INSERT INTO `creature_respawn` VALUES ('89764', '1410392427', '1', '0');
INSERT INTO `creature_respawn` VALUES ('89810', '1410392489', '1', '0');
INSERT INTO `creature_respawn` VALUES ('90053', '1410392433', '1', '0');
INSERT INTO `creature_respawn` VALUES ('90338', '1410374774', '1', '0');
INSERT INTO `creature_respawn` VALUES ('90425', '1410374763', '1', '0');
INSERT INTO `creature_respawn` VALUES ('90478', '1410374800', '1', '0');
INSERT INTO `creature_respawn` VALUES ('90488', '1410374436', '1', '0');
INSERT INTO `creature_respawn` VALUES ('90509', '1410374767', '1', '0');
INSERT INTO `creature_respawn` VALUES ('90586', '1410374736', '1', '0');
INSERT INTO `creature_respawn` VALUES ('91072', '1410181664', '1', '0');
INSERT INTO `creature_respawn` VALUES ('91446', '1410181681', '1', '0');
INSERT INTO `creature_respawn` VALUES ('91575', '1410181670', '1', '0');
INSERT INTO `creature_respawn` VALUES ('96855', '1410170211', '1', '0');
INSERT INTO `creature_respawn` VALUES ('96889', '1410374772', '1', '0');
INSERT INTO `creature_respawn` VALUES ('97512', '1410181672', '1', '0');
INSERT INTO `creature_respawn` VALUES ('97603', '1410181665', '1', '0');
INSERT INTO `creature_respawn` VALUES ('97892', '1410181645', '1', '0');
INSERT INTO `creature_respawn` VALUES ('98299', '1410181638', '1', '0');
INSERT INTO `creature_respawn` VALUES ('112622', '1410374436', '1', '0');
INSERT INTO `creature_respawn` VALUES ('119187', '1410181683', '1', '0');
INSERT INTO `creature_respawn` VALUES ('119461', '1389711036', '1', '0');
INSERT INTO `creature_respawn` VALUES ('119462', '1389711066', '1', '0');
INSERT INTO `creature_respawn` VALUES ('119750', '1389711044', '1', '0');
INSERT INTO `creature_respawn` VALUES ('119752', '1389710980', '1', '0');
INSERT INTO `creature_respawn` VALUES ('119753', '1389711022', '1', '0');
INSERT INTO `creature_respawn` VALUES ('119754', '1389711026', '1', '0');
INSERT INTO `creature_respawn` VALUES ('119755', '1389710996', '1', '0');
INSERT INTO `creature_respawn` VALUES ('119756', '1389710980', '1', '0');
INSERT INTO `creature_respawn` VALUES ('120276', '1410181661', '1', '0');
INSERT INTO `creature_respawn` VALUES ('121031', '1389684436', '1', '0');
INSERT INTO `creature_respawn` VALUES ('121112', '1389684433', '1', '0');
INSERT INTO `creature_respawn` VALUES ('123298', '1410392496', '1', '0');
INSERT INTO `creature_respawn` VALUES ('123302', '1410392463', '1', '0');
INSERT INTO `creature_respawn` VALUES ('123303', '1410392475', '1', '0');
INSERT INTO `creature_respawn` VALUES ('123307', '1410392483', '1', '0');
INSERT INTO `creature_respawn` VALUES ('123731', '1410148870', '1', '0');
INSERT INTO `creature_respawn` VALUES ('123736', '1410181632', '1', '0');
INSERT INTO `creature_respawn` VALUES ('123738', '1410148871', '1', '0');
INSERT INTO `creature_respawn` VALUES ('124042', '1410181665', '1', '0');
INSERT INTO `creature_respawn` VALUES ('124048', '1410181677', '1', '0');
INSERT INTO `creature_respawn` VALUES ('124051', '1410181694', '1', '0');
INSERT INTO `creature_respawn` VALUES ('124061', '1410181694', '1', '0');
INSERT INTO `creature_respawn` VALUES ('124063', '1410181685', '1', '0');
INSERT INTO `creature_respawn` VALUES ('124242', '1410181632', '1', '0');
INSERT INTO `creature_respawn` VALUES ('124244', '1410181671', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127357', '1410181673', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127360', '1410181639', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127361', '1410181632', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127362', '1410181632', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127367', '1410181638', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127481', '1410181667', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127482', '1410181675', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127496', '1410181639', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127499', '1410181639', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127508', '1410181671', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127516', '1410181675', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127521', '1410181657', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127522', '1410181679', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127523', '1410181665', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127526', '1410181663', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127538', '1410181670', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127610', '1410181632', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127611', '1410181632', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127613', '1410181631', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127707', '1410181683', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127714', '1410181683', '1', '0');
INSERT INTO `creature_respawn` VALUES ('127722', '1410170211', '1', '0');
INSERT INTO `creature_respawn` VALUES ('128857', '1410374682', '1', '0');
INSERT INTO `creature_respawn` VALUES ('128858', '1410374779', '1', '0');
INSERT INTO `creature_respawn` VALUES ('128859', '1410374771', '1', '0');
INSERT INTO `creature_respawn` VALUES ('128863', '1410374820', '1', '0');
INSERT INTO `creature_respawn` VALUES ('128877', '1410374815', '1', '0');
INSERT INTO `creature_respawn` VALUES ('128881', '1410374767', '1', '0');
INSERT INTO `creature_respawn` VALUES ('128885', '1410374758', '1', '0');
INSERT INTO `creature_respawn` VALUES ('128886', '1410374733', '1', '0');
INSERT INTO `creature_respawn` VALUES ('128893', '1410374779', '1', '0');
INSERT INTO `creature_respawn` VALUES ('129105', '1410374799', '1', '0');
INSERT INTO `creature_respawn` VALUES ('129112', '1410374734', '1', '0');
INSERT INTO `creature_respawn` VALUES ('129113', '1410374737', '1', '0');
INSERT INTO `creature_respawn` VALUES ('129299', '1410374430', '1', '0');
INSERT INTO `creature_respawn` VALUES ('129308', '1410374440', '1', '0');
INSERT INTO `creature_respawn` VALUES ('129310', '1410374436', '1', '0');
INSERT INTO `creature_respawn` VALUES ('129312', '1410374436', '1', '0');
INSERT INTO `creature_respawn` VALUES ('161239', '1410075515', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161278', '1410075471', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161279', '1410075460', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161280', '1410075480', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161384', '1410075145', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161389', '1410075157', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161424', '1410075175', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161477', '1410075714', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161478', '1410075691', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161486', '1410075777', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161488', '1410075751', '530', '0');
INSERT INTO `creature_respawn` VALUES ('161489', '1410075684', '530', '0');
INSERT INTO `creature_respawn` VALUES ('169916', '1389711408', '530', '0');
INSERT INTO `creature_respawn` VALUES ('176246', '1389710959', '530', '0');
INSERT INTO `creature_respawn` VALUES ('176258', '1389710935', '530', '0');
INSERT INTO `creature_respawn` VALUES ('179743', '1410075754', '530', '0');
INSERT INTO `creature_respawn` VALUES ('185970', '1410053007', '530', '0');
INSERT INTO `creature_respawn` VALUES ('185971', '1410052945', '530', '0');
INSERT INTO `creature_respawn` VALUES ('185992', '1410052868', '530', '0');
INSERT INTO `creature_respawn` VALUES ('185993', '1410052866', '530', '0');
INSERT INTO `creature_respawn` VALUES ('185994', '1410052869', '530', '0');
INSERT INTO `creature_respawn` VALUES ('185995', '1410052868', '530', '0');
INSERT INTO `creature_respawn` VALUES ('185996', '1410052863', '530', '0');
INSERT INTO `creature_respawn` VALUES ('185997', '1410052864', '530', '0');
INSERT INTO `creature_respawn` VALUES ('195978', '1389864050', '571', '0');
INSERT INTO `creature_respawn` VALUES ('195981', '1389866451', '571', '0');
INSERT INTO `creature_respawn` VALUES ('232993', '1389602300', '609', '0');
INSERT INTO `creature_respawn` VALUES ('232999', '1389602216', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233000', '1389602216', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233001', '1389602409', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233003', '1389602216', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233033', '1389602517', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233043', '1389602216', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233050', '1389602253', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233088', '1389602267', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233094', '1389602202', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233095', '1389602186', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233116', '1389602208', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233117', '1389602204', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233123', '1389602204', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233124', '1389602192', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233129', '1389602200', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233150', '1389602521', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233151', '1389602494', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233152', '1389602392', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233153', '1389602216', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233154', '1389602216', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233155', '1389602308', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233156', '1389602258', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233167', '1389602226', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233168', '1389602216', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233175', '1389602469', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233186', '1389602338', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233226', '1389602594', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233227', '1389602535', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233228', '1389602198', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233229', '1389602196', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233230', '1389602194', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233231', '1389602193', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233232', '1389602192', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233249', '1389602476', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233260', '1389602206', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233261', '1389602190', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233262', '1389602204', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233263', '1389602192', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233264', '1389602188', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233319', '1389602008', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233325', '1389602077', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233336', '1389602291', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233337', '1389602456', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233374', '1389601882', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233628', '1389602012', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233629', '1389602030', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233632', '1389602079', '609', '0');
INSERT INTO `creature_respawn` VALUES ('234384', '1389602056', '609', '0');
INSERT INTO `creature_respawn` VALUES ('234410', '1389602045', '609', '0');
INSERT INTO `creature_respawn` VALUES ('234587', '1389601986', '609', '0');
INSERT INTO `creature_respawn` VALUES ('234588', '1389601966', '609', '0');
INSERT INTO `creature_respawn` VALUES ('234595', '1389602006', '609', '0');
INSERT INTO `creature_respawn` VALUES ('234596', '1389602077', '609', '0');
INSERT INTO `creature_respawn` VALUES ('234599', '1389602017', '609', '0');
INSERT INTO `creature_respawn` VALUES ('236050', '1389682266', '638', '0');
INSERT INTO `creature_respawn` VALUES ('236200', '1389682285', '638', '0');
INSERT INTO `creature_respawn` VALUES ('236287', '1389682355', '638', '0');
INSERT INTO `creature_respawn` VALUES ('236350', '1389682305', '638', '0');
INSERT INTO `creature_respawn` VALUES ('236351', '1389682294', '638', '0');
INSERT INTO `creature_respawn` VALUES ('236802', '1389682268', '638', '0');
INSERT INTO `creature_respawn` VALUES ('242202', '1389808459', '648', '0');
INSERT INTO `creature_respawn` VALUES ('242205', '1389808460', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243112', '1389808467', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243117', '1389808465', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243125', '1389808465', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243134', '1389808468', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243138', '1389808470', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243142', '1389808487', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243144', '1389808466', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243146', '1389808484', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243148', '1389808478', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243150', '1389808475', '648', '0');
INSERT INTO `creature_respawn` VALUES ('243164', '1389808479', '648', '0');
INSERT INTO `creature_respawn` VALUES ('258322', '1410169048', '0', '0');
INSERT INTO `creature_respawn` VALUES ('300693', '1389682353', '638', '0');
INSERT INTO `creature_respawn` VALUES ('710058', '1389711047', '1', '0');
INSERT INTO `creature_respawn` VALUES ('710211', '1389711089', '1', '0');
INSERT INTO `creature_respawn` VALUES ('710226', '1389711156', '1', '0');
INSERT INTO `creature_respawn` VALUES ('9944717', '1410181859', '1', '0');
INSERT INTO `creature_respawn` VALUES ('15461666', '1389871689', '0', '0');

-- ----------------------------
-- Table structure for `cronjobs`
-- ----------------------------
DROP TABLE IF EXISTS `cronjobs`;
CREATE TABLE `cronjobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(11) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cronjobs
-- ----------------------------

-- ----------------------------
-- Table structure for `daily_players_reports`
-- ----------------------------
DROP TABLE IF EXISTS `daily_players_reports`;
CREATE TABLE `daily_players_reports` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daily_players_reports
-- ----------------------------

-- ----------------------------
-- Table structure for `gameobject_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of gameobject_respawn
-- ----------------------------
INSERT INTO `gameobject_respawn` VALUES ('14443', '1410392590', '0', '1');
INSERT INTO `gameobject_respawn` VALUES ('56795', '1410325696', '0', '638');
INSERT INTO `gameobject_respawn` VALUES ('56796', '1410325688', '0', '638');
INSERT INTO `gameobject_respawn` VALUES ('56797', '1410325568', '0', '638');
INSERT INTO `gameobject_respawn` VALUES ('56798', '1410325659', '0', '638');

-- ----------------------------
-- Table structure for `game_event_condition_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save` (
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  `eventEntry` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_condition_save
-- ----------------------------

-- ----------------------------
-- Table structure for `game_event_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_save
-- ----------------------------
INSERT INTO `game_event_save` VALUES ('33', '2', '0');
INSERT INTO `game_event_save` VALUES ('34', '2', '0');
INSERT INTO `game_event_save` VALUES ('35', '2', '0');
INSERT INTO `game_event_save` VALUES ('36', '2', '0');
INSERT INTO `game_event_save` VALUES ('37', '2', '0');
INSERT INTO `game_event_save` VALUES ('38', '2', '0');
INSERT INTO `game_event_save` VALUES ('39', '2', '0');
INSERT INTO `game_event_save` VALUES ('40', '2', '0');
INSERT INTO `game_event_save` VALUES ('41', '2', '0');
INSERT INTO `game_event_save` VALUES ('43', '2', '0');
INSERT INTO `game_event_save` VALUES ('44', '2', '0');
INSERT INTO `game_event_save` VALUES ('45', '2', '0');
INSERT INTO `game_event_save` VALUES ('46', '2', '0');
INSERT INTO `game_event_save` VALUES ('47', '2', '0');

-- ----------------------------
-- Table structure for `gm_subsurveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_subsurveys
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_surveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys` (
  `guid` int(10) NOT NULL,
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_surveys
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `closedBy` int(10) NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `response` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haveTicket` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raiddifficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for `group_instance`
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `group_member`
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `memberGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of group_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned DEFAULT '1',
  `todayExperience` bigint(20) unsigned DEFAULT '0',
  `RaidChallenge` int(10) NOT NULL DEFAULT '0',
  `ChallengeCount` int(32) unsigned NOT NULL DEFAULT '0',
  `RatedBGChallenge` int(10) NOT NULL DEFAULT '0',
  `DungeonChallenge` int(10) NOT NULL DEFAULT '0',
  `experience` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement`;
CREATE TABLE `guild_achievement` (
  `guildId` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_achievement
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement_progress`;
CREATE TABLE `guild_achievement_progress` (
  `guildId` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_achievement_progress
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`) USING BTREE,
  KEY `Idx_PlayerGuid` (`PlayerGuid`) USING BTREE,
  KEY `Idx_LogGuid` (`LogGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`) USING BTREE,
  KEY `Idx_item_guid` (`item_guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_item
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_right`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_right
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_tab`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_tab
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_challenges_completed`
-- ----------------------------
DROP TABLE IF EXISTS `guild_challenges_completed`;
CREATE TABLE `guild_challenges_completed` (
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeId` int(10) unsigned DEFAULT NULL,
  `dateCompleted` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guildId`),
  KEY `challengeId` (`challengeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_challenges_completed
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(10) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(10) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`) USING BTREE,
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`) USING BTREE,
  KEY `Idx_LogGuid` (`LogGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- ----------------------------
-- Records of guild_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_finder_applicant`
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_applicant`;
CREATE TABLE `guild_finder_applicant` (
  `guildId` int(10) unsigned DEFAULT NULL,
  `playerGuid` int(10) unsigned DEFAULT NULL,
  `availability` tinyint(3) unsigned DEFAULT '0',
  `classRole` tinyint(3) unsigned DEFAULT '0',
  `interests` tinyint(3) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `guildId` (`guildId`,`playerGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_finder_applicant
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_finder_guild_settings`
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_guild_settings`;
CREATE TABLE `guild_finder_guild_settings` (
  `guildId` int(10) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interests` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_finder_guild_settings
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  `activity` bigint(20) NOT NULL,
  `profession1_skillID` int(10) NOT NULL DEFAULT '0',
  `weekReputation` int(10) NOT NULL DEFAULT '0',
  `profession2_rank` int(10) NOT NULL DEFAULT '0',
  `profession2_skillID` int(10) NOT NULL DEFAULT '0',
  `profession1_rank` int(10) NOT NULL DEFAULT '0',
  `weekActivity` int(10) NOT NULL DEFAULT '0',
  `profession1_level` int(10) NOT NULL DEFAULT '0',
  `profession2_level` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `guid_key` (`guid`) USING BTREE,
  KEY `guildid_key` (`guildid`) USING BTREE,
  KEY `guildid_rank_key` (`guildid`,`rank`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_member_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member_withdraw`;
CREATE TABLE `guild_member_withdraw` (
  `guid` int(10) unsigned NOT NULL,
  `tab0` int(10) unsigned NOT NULL DEFAULT '0',
  `tab1` int(10) unsigned NOT NULL DEFAULT '0',
  `tab2` int(10) unsigned NOT NULL DEFAULT '0',
  `tab3` int(10) unsigned NOT NULL DEFAULT '0',
  `tab4` int(10) unsigned NOT NULL DEFAULT '0',
  `tab5` int(10) unsigned NOT NULL DEFAULT '0',
  `tab6` int(10) unsigned NOT NULL DEFAULT '0',
  `tab7` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Member Dayly Withdraws';

-- ----------------------------
-- Records of guild_member_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_newslog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_newslog`;
CREATE TABLE `guild_newslog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Value` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `Idx_PlayerGuid` (`PlayerGuid`) USING BTREE,
  KEY `Idx_LogGuid` (`LogGuid`) USING BTREE,
  KEY `guildid_key` (`guildid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Newslog';

-- ----------------------------
-- Records of guild_newslog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_old_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_old_member`;
CREATE TABLE `guild_old_member` (
  `guid` int(10) NOT NULL,
  `guildId` int(10) NOT NULL,
  `weekReputation` int(10) NOT NULL,
  `leaveDate` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_old_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_rank`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `instance`
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `map` (`map`) USING BTREE,
  KEY `resettime` (`resettime`) USING BTREE,
  KEY `difficulty` (`difficulty`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance
-- ----------------------------

-- ----------------------------
-- Table structure for `instance_reset`
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance_reset
-- ----------------------------
INSERT INTO `instance_reset` VALUES ('33', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('36', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('249', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('249', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('269', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('409', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('469', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('509', '0', '1410494400');
INSERT INTO `instance_reset` VALUES ('531', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('532', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('533', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('533', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('534', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('540', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('542', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('543', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('544', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('545', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('546', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('547', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('548', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('550', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('552', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('553', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('554', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('555', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('556', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('557', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('558', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('560', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('564', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('565', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('568', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('574', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('575', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('576', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('578', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('580', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('585', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('595', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('598', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('599', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('600', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('601', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('602', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('603', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('603', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('604', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('608', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('615', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('615', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('616', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('616', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('619', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('624', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('624', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('631', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('631', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('631', '2', '1410667200');
INSERT INTO `instance_reset` VALUES ('631', '3', '1410667200');
INSERT INTO `instance_reset` VALUES ('632', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('643', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('644', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('645', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('649', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('649', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('649', '2', '1410667200');
INSERT INTO `instance_reset` VALUES ('649', '3', '1410667200');
INSERT INTO `instance_reset` VALUES ('650', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('657', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('658', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('668', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('669', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('669', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('669', '2', '1410667200');
INSERT INTO `instance_reset` VALUES ('669', '3', '1410667200');
INSERT INTO `instance_reset` VALUES ('670', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('671', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('671', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('671', '2', '1410667200');
INSERT INTO `instance_reset` VALUES ('671', '3', '1410667200');
INSERT INTO `instance_reset` VALUES ('720', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('720', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('720', '2', '1410667200');
INSERT INTO `instance_reset` VALUES ('720', '3', '1410667200');
INSERT INTO `instance_reset` VALUES ('724', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('724', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('724', '2', '1410667200');
INSERT INTO `instance_reset` VALUES ('724', '3', '1410667200');
INSERT INTO `instance_reset` VALUES ('725', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('754', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('754', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('754', '2', '1410667200');
INSERT INTO `instance_reset` VALUES ('754', '3', '1410667200');
INSERT INTO `instance_reset` VALUES ('755', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('757', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('757', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('859', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('938', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('939', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('940', '1', '1410494400');
INSERT INTO `instance_reset` VALUES ('967', '0', '1410667200');
INSERT INTO `instance_reset` VALUES ('967', '1', '1410667200');
INSERT INTO `instance_reset` VALUES ('967', '2', '1410667200');
INSERT INTO `instance_reset` VALUES ('967', '3', '1410667200');

-- ----------------------------
-- Table structure for `item_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- ----------------------------
-- Records of item_instance
-- ----------------------------
INSERT INTO `item_instance` VALUES ('2', '52543', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('4', '52679', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('6', '35', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('8', '6948', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('9', '62391', '1', '0', '0', '5', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('10', '52873', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('12', '57', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('14', '1396', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '39', '0', '');
INSERT INTO `item_instance` VALUES ('16', '59', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', '');
INSERT INTO `item_instance` VALUES ('18', '35', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('20', '6948', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('22', '6948', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('24', '35', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('26', '6124', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('28', '6139', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('29', '62391', '3', '0', '0', '6', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('34', '4813', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('36', '49567', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('38', '49576', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('40', '49579', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', '');
INSERT INTO `item_instance` VALUES ('42', '23346', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('44', '6948', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('46', '49578', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('48', '49577', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '20', '0', '');
INSERT INTO `item_instance` VALUES ('53', '52040', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('54', '6129', '5', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('56', '1396', '5', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('58', '62530', '5', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('60', '35', '5', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('62', '6948', '5', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('65', '4604', '5', '0', '0', '4', '0', '-1 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('68', '159', '5', '0', '0', '4', '0', '-1 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('69', '6060', '5', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '20', '0', '');
INSERT INTO `item_instance` VALUES ('75', '11847', '5', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('82', '3274', '5', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '30', '0', '');
INSERT INTO `item_instance` VALUES ('84', '2885', '5', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('85', '62328', '5', '0', '0', '3', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('87', '52544', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '54', '0', '');
INSERT INTO `item_instance` VALUES ('89', '52545', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('91', '6948', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('93', '36', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '35', '0', '');
INSERT INTO `item_instance` VALUES ('95', '2362', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('96', '57216', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '45', '0', '');
INSERT INTO `item_instance` VALUES ('98', '52553', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('102', '52554', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', '');
INSERT INTO `item_instance` VALUES ('104', '35', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('106', '6948', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('107', '62391', '7', '0', '0', '5', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('110', '4813', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('113', '11187', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '20', '0', '');
INSERT INTO `item_instance` VALUES ('114', '67310', '7', '0', '0', '7', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('116', '23384', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('117', '46753', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('118', '1431', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '50', '0', '');
INSERT INTO `item_instance` VALUES ('130', '11190', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '20', '0', '');
INSERT INTO `item_instance` VALUES ('131', '961', '7', '0', '0', '3', '0', '-1 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('137', '2775', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('139', '117', '7', '0', '0', '1', '0', '-1 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('140', '10641', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('142', '58233', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('144', '43', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '24', '0', '');
INSERT INTO `item_instance` VALUES ('146', '44', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('148', '6948', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('150', '52557', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('151', '57255', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '20', '0', '');
INSERT INTO `item_instance` VALUES ('152', '117', '8', '0', '0', '2', '0', '-1 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('154', '5571', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('155', '5571', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `item_loot_items`
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_items`;
CREATE TABLE `item_loot_items` (
  `container_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(10) NOT NULL DEFAULT '0' COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `rnd_prop` int(10) NOT NULL DEFAULT '0' COMMENT 'random enchantment added when originally rolled',
  `rnd_suffix` int(10) NOT NULL DEFAULT '0' COMMENT 'random suffix added when originally rolled'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of item_loot_items
-- ----------------------------

-- ----------------------------
-- Table structure for `item_loot_money`
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_money`;
CREATE TABLE `item_loot_money` (
  `container_id` int(10) NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of item_loot_money
-- ----------------------------

-- ----------------------------
-- Table structure for `item_refund_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance` (
  `item_guid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` int(10) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_refund_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `item_soulbound_trade_data`
-- ----------------------------
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE `item_soulbound_trade_data` (
  `itemGuid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_soulbound_trade_data
-- ----------------------------
INSERT INTO `item_soulbound_trade_data` VALUES ('151', '8 9');
INSERT INTO `item_soulbound_trade_data` VALUES ('152', '8 9');
INSERT INTO `item_soulbound_trade_data` VALUES ('164', '8 9');
INSERT INTO `item_soulbound_trade_data` VALUES ('165', '8 9');
INSERT INTO `item_soulbound_trade_data` VALUES ('170', '8 9');
INSERT INTO `item_soulbound_trade_data` VALUES ('406', '17 18');

-- ----------------------------
-- Table structure for `lag_reports`
-- ----------------------------
DROP TABLE IF EXISTS `lag_reports`;
CREATE TABLE `lag_reports` (
  `reportId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `lagType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `latency` int(10) unsigned NOT NULL DEFAULT '0',
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of lag_reports
-- ----------------------------

-- ----------------------------
-- Table structure for `lfg_data`
-- ----------------------------
DROP TABLE IF EXISTS `lfg_data`;
CREATE TABLE `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LFG Data';

-- ----------------------------
-- Records of lfg_data
-- ----------------------------

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cod` bigint(20) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_items`
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`) USING BTREE,
  KEY `idx_mail_id` (`mail_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mail_items
-- ----------------------------

-- ----------------------------
-- Table structure for `petition`
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition
-- ----------------------------

-- ----------------------------
-- Table structure for `petition_sign`
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`) USING BTREE,
  KEY `Idx_ownerguid` (`ownerguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_aura`
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` mediumint(8) NOT NULL,
  `amount1` mediumint(8) NOT NULL,
  `amount2` mediumint(8) NOT NULL,
  `base_amount0` mediumint(8) NOT NULL,
  `base_amount1` mediumint(8) NOT NULL,
  `base_amount2` mediumint(8) NOT NULL,
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_aura
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_spell`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_spell
-- ----------------------------
INSERT INTO `pet_spell` VALUES ('1', '3110', '129');
INSERT INTO `pet_spell` VALUES ('1', '6307', '129');
INSERT INTO `pet_spell` VALUES ('1', '32233', '1');
INSERT INTO `pet_spell` VALUES ('2', '3110', '129');
INSERT INTO `pet_spell` VALUES ('2', '32233', '1');
INSERT INTO `pet_spell` VALUES ('3', '3110', '193');
INSERT INTO `pet_spell` VALUES ('3', '6307', '129');
INSERT INTO `pet_spell` VALUES ('3', '32233', '1');

-- ----------------------------
-- Table structure for `pet_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `players_reports_status`
-- ----------------------------
DROP TABLE IF EXISTS `players_reports_status`;
CREATE TABLE `players_reports_status` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players_reports_status
-- ----------------------------
INSERT INTO `players_reports_status` VALUES ('6', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `pool_quest_save`
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pool_quest_save
-- ----------------------------
INSERT INTO `pool_quest_save` VALUES ('348', '24635');
INSERT INTO `pool_quest_save` VALUES ('349', '14102');
INSERT INTO `pool_quest_save` VALUES ('350', '13905');
INSERT INTO `pool_quest_save` VALUES ('351', '13916');
INSERT INTO `pool_quest_save` VALUES ('352', '11377');
INSERT INTO `pool_quest_save` VALUES ('353', '11665');
INSERT INTO `pool_quest_save` VALUES ('354', '13425');
INSERT INTO `pool_quest_save` VALUES ('356', '11368');
INSERT INTO `pool_quest_save` VALUES ('357', '11389');
INSERT INTO `pool_quest_save` VALUES ('372', '28059');
INSERT INTO `pool_quest_save` VALUES ('372', '28130');
INSERT INTO `pool_quest_save` VALUES ('373', '27949');
INSERT INTO `pool_quest_save` VALUES ('373', '27967');
INSERT INTO `pool_quest_save` VALUES ('374', '27975');
INSERT INTO `pool_quest_save` VALUES ('374', '27991');
INSERT INTO `pool_quest_save` VALUES ('375', '27970');
INSERT INTO `pool_quest_save` VALUES ('375', '27972');
INSERT INTO `pool_quest_save` VALUES ('376', '28685');
INSERT INTO `pool_quest_save` VALUES ('376', '28687');
INSERT INTO `pool_quest_save` VALUES ('377', '28678');
INSERT INTO `pool_quest_save` VALUES ('377', '28681');
INSERT INTO `pool_quest_save` VALUES ('378', '28694');
INSERT INTO `pool_quest_save` VALUES ('378', '28697');
INSERT INTO `pool_quest_save` VALUES ('379', '28689');
INSERT INTO `pool_quest_save` VALUES ('379', '28691');
INSERT INTO `pool_quest_save` VALUES ('5662', '13674');
INSERT INTO `pool_quest_save` VALUES ('5663', '13762');
INSERT INTO `pool_quest_save` VALUES ('5664', '13770');
INSERT INTO `pool_quest_save` VALUES ('5665', '13775');
INSERT INTO `pool_quest_save` VALUES ('5666', '13778');
INSERT INTO `pool_quest_save` VALUES ('5667', '13783');
INSERT INTO `pool_quest_save` VALUES ('5668', '13666');
INSERT INTO `pool_quest_save` VALUES ('5669', '13603');
INSERT INTO `pool_quest_save` VALUES ('5670', '13741');
INSERT INTO `pool_quest_save` VALUES ('5671', '13747');
INSERT INTO `pool_quest_save` VALUES ('5672', '13758');
INSERT INTO `pool_quest_save` VALUES ('5673', '13753');
INSERT INTO `pool_quest_save` VALUES ('5674', '13103');
INSERT INTO `pool_quest_save` VALUES ('5675', '13116');
INSERT INTO `pool_quest_save` VALUES ('5676', '13832');
INSERT INTO `pool_quest_save` VALUES ('5677', '12960');
INSERT INTO `pool_quest_save` VALUES ('5678', '24585');
INSERT INTO `pool_quest_save` VALUES ('50003', '26226');
INSERT INTO `pool_quest_save` VALUES ('50004', '26183');
INSERT INTO `pool_quest_save` VALUES ('50005', '25162');
INSERT INTO `pool_quest_save` VALUES ('50006', '25156');
INSERT INTO `pool_quest_save` VALUES ('50007', '26556');
INSERT INTO `pool_quest_save` VALUES ('50008', '26420');

-- ----------------------------
-- Table structure for `reserved_name`
-- ----------------------------
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- ----------------------------
-- Records of reserved_name
-- ----------------------------

-- ----------------------------
-- Table structure for `warden_action`
-- ----------------------------
DROP TABLE IF EXISTS `warden_action`;
CREATE TABLE `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warden_action
-- ----------------------------

-- ----------------------------
-- Table structure for `worldstates`
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- ----------------------------
-- Records of worldstates
-- ----------------------------
INSERT INTO `worldstates` VALUES ('3781', '9000000', null);
INSERT INTO `worldstates` VALUES ('3801', '0', null);
INSERT INTO `worldstates` VALUES ('3802', '1', null);
INSERT INTO `worldstates` VALUES ('20001', '1410951600', null);
INSERT INTO `worldstates` VALUES ('20002', '1411020336', null);
INSERT INTO `worldstates` VALUES ('20003', '1410519600', null);
INSERT INTO `worldstates` VALUES ('20006', '1410519600', null);
INSERT INTO `worldstates` VALUES ('20007', '1412139600', null);
INSERT INTO `worldstates` VALUES ('20050', '1411037999', null);
