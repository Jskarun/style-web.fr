-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Serveur: db2597.1and1.fr
-- Généré le : Dimanche 23 Septembre 2012 à 12:49
-- Version du serveur: 5.0.95
-- Version de PHP: 5.3.3-7+squeeze14
-- 
-- Base de données: `db335675583`
-- 
CREATE DATABASE `db335675583` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE db335675583;

-- --------------------------------------------------------

-- 
-- Structure de la table `admin`
-- 

CREATE TABLE `admin` (
  `id` tinyint(4) NOT NULL auto_increment,
  `login` varchar(20) default NULL,
  `pass` varchar(50) default NULL,
  `prenom` varchar(50) default NULL,
  `niveau` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Contenu de la table `admin`
-- 

INSERT INTO `admin` VALUES (2, 'skarun', 'a105e10d936e2452aee4f560c1a030cd', 'Jonathan', 1);

-- --------------------------------------------------------

-- 
-- Structure de la table `configs`
-- 

CREATE TABLE `configs` (
  `id` int(4) NOT NULL auto_increment,
  `mod_par` varchar(50) NOT NULL default '',
  `date_mod` varchar(50) NOT NULL default '',
  `valid` int(2) NOT NULL default '0',
  `boitier` varchar(50) NOT NULL default '',
  `cm` varchar(50) NOT NULL default '',
  `cpu` varchar(50) NOT NULL default '',
  `mem` varchar(50) NOT NULL default '',
  `dd` varchar(50) NOT NULL default '',
  `cg` varchar(50) NOT NULL default '',
  `lect_disq` varchar(50) NOT NULL default '',
  `lect_opt` varchar(50) NOT NULL default '',
  `res` varchar(50) NOT NULL default '',
  `son` varchar(50) NOT NULL default '',
  `os` varchar(50) NOT NULL default '',
  `garantie` varchar(40) NOT NULL default '1 an sur site',
  `compl` varchar(100) NOT NULL default '',
  `photo` varchar(60) NOT NULL default '',
  `nom` varchar(40) NOT NULL default '',
  `prix` float(10,0) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- 
-- Contenu de la table `configs`
-- 

INSERT INTO `configs` VALUES (4, 'Nicolas', '17/06/2009', 1, 'Tour ATX 500W', 'Msi P45 NEO-F', 'CORE II  DUO  E5200', '2 Go DDRII 800 MHZ', '320 Go SATA2', 'N9500GT-MD 1G OC', 'Lecteur carte mémoire photo', 'Graveur Double Couche', 'Réseau 10/100/1000 intégré', 'Chipset son 7.1', 'LINUX Ubuntu', '1 an sur site', 'Hotline 1 an - Manuel d''utilisation - Drivers de tous les composants', 'boitier_imag.jpg', 'Imag''IN', 392);
INSERT INTO `configs` VALUES (3, 'Nicolas', '17/06/2009', 1, 'Tour ATX 600W', 'Msi P45 NEO-F', 'CORE QUAD Q 9550', '4 Go DDRII 800MHZ', '1000 Go SATA2', ' ATI R4850-2D512-OC', 'Lecteur carte mémoire photo', 'Graveur Double Couche', 'Réseau 10/100/1000 intégré', 'Chipset son 7.1', 'LINUX Ubuntu', '1 an sur site', 'Hotline 1 an - Manuel d''utilisation - Drivers de tous les composants', 'boitier_gamer.jpg', 'Pro Gamer', 699);
INSERT INTO `configs` VALUES (10, 'Nicolas', '17/06/2009', 1, 'Tour ATX 500W', 'Msi K9N6PGM2-V', 'SEMPRON  LE 1250', '1 Go DDRII 800 MHZ', '160 Go SATA2', 'Chipset video intégré', 'Lecteur carte mémoire photo', 'Graveur Double Couche 22X', 'Réseau 10/100/1000 intégré', 'Chipset son 5.1', 'LINUX Ubuntu', '1 an sur site', 'Hotline 1 an - Manuel d''utilisation - Drivers de tous les composants', 'boitier_buro.jpg', 'Bureau''Net', 237);
INSERT INTO `configs` VALUES (23, 'Nicolas', '17/06/2009', 1, 'Tour ATX 500W', 'Msi G31M3-F', 'CELERON E 1400', '1 Go DDRII 800 MHZ', '160 Go SATA2', 'Chipset video intégré', 'Lecteur carte mémoire photo', 'Graveur Double Couche', 'Réseau 10/100/1000 intégré', 'Chipset son 5.1', 'LINUX Ubuntu', '1 an sur site', 'Hotline 1 an - Manuel d''utilisation - Drivers de tous les composants', 'conf23.jpg', 'Bureau''Net INTEL', 250);

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_assets`
-- 

CREATE TABLE `jos_assets` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL default '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

-- 
-- Contenu de la table `jos_assets`
-- 

INSERT INTO `jos_assets` VALUES (1, 0, 1, 418, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}');
INSERT INTO `jos_assets` VALUES (2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}');
INSERT INTO `jos_assets` VALUES (3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}');
INSERT INTO `jos_assets` VALUES (5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}');
INSERT INTO `jos_assets` VALUES (6, 1, 11, 12, 1, 'com_config', 'com_config', '{}');
INSERT INTO `jos_assets` VALUES (7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}');
INSERT INTO `jos_assets` VALUES (8, 1, 17, 24, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}');
INSERT INTO `jos_assets` VALUES (9, 1, 25, 26, 1, 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `jos_assets` VALUES (10, 1, 27, 28, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.delete":[],"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (11, 1, 29, 30, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (12, 1, 31, 32, 1, 'com_login', 'com_login', '{}');
INSERT INTO `jos_assets` VALUES (13, 1, 33, 34, 1, 'com_mailto', 'com_mailto', '{}');
INSERT INTO `jos_assets` VALUES (14, 1, 35, 36, 1, 'com_massmail', 'com_massmail', '{}');
INSERT INTO `jos_assets` VALUES (15, 1, 37, 38, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}');
INSERT INTO `jos_assets` VALUES (16, 1, 39, 40, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (17, 1, 41, 42, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}');
INSERT INTO `jos_assets` VALUES (18, 1, 43, 44, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (19, 1, 45, 48, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}');
INSERT INTO `jos_assets` VALUES (20, 1, 49, 50, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (21, 1, 51, 52, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}');
INSERT INTO `jos_assets` VALUES (22, 1, 53, 54, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `jos_assets` VALUES (23, 1, 55, 56, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (24, 1, 57, 58, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (25, 1, 59, 62, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}');
INSERT INTO `jos_assets` VALUES (26, 1, 63, 64, 1, 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `jos_assets` VALUES (27, 8, 18, 23, 2, 'com_content.category.2', 'Menu principal', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}');
INSERT INTO `jos_assets` VALUES (28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}');
INSERT INTO `jos_assets` VALUES (30, 19, 46, 47, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}');
INSERT INTO `jos_assets` VALUES (31, 25, 60, 61, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}');
INSERT INTO `jos_assets` VALUES (32, 27, 19, 20, 3, 'com_content.article.1', 'Réalisations', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_assets` VALUES (33, 27, 21, 22, 3, 'com_content.article.2', 'Accueil', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_banner_clients`
-- 

CREATE TABLE `jos_banner_clients` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `jos_banner_clients`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_banner_tracks`
-- 

CREATE TABLE `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `jos_banner_tracks`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_banners`
-- 

CREATE TABLE `jos_banners` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `clickurl` varchar(200) NOT NULL default '',
  `state` tinyint(3) NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `reset` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `language` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `jos_banners`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_categories`
-- 

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `extension` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `description` varchar(5120) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL default '0',
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Contenu de la table `jos_categories`
-- 

INSERT INTO `jos_categories` VALUES (1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*');
INSERT INTO `jos_categories` VALUES (2, 27, 1, 1, 2, 1, 'main-menu', 'com_content', 'Menu principal', 'main-menu', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2010-06-28 13:26:37', 42, '2011-12-11 17:49:21', 0, '*');
INSERT INTO `jos_categories` VALUES (3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*');
INSERT INTO `jos_categories` VALUES (4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*');
INSERT INTO `jos_categories` VALUES (5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*');
INSERT INTO `jos_categories` VALUES (6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_contact_details`
-- 

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `jos_contact_details`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_content`
-- 

CREATE TABLE `jos_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL default '1',
  `parentid` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Contenu de la table `jos_content`
-- 

INSERT INTO `jos_content` VALUES (1, 32, 'Réalisations', 'realisations', '', '<p>Mes rélisations :</p>\r\n<p>- ici</p>\r\n<p>- et la</p>', '', 1, 0, 0, 2, '2011-12-11 17:39:39', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-12-11 17:39:39', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'fr-FR', '');
INSERT INTO `jos_content` VALUES (2, 33, 'Accueil', 'home', '', '<p>bonjour et bienvenue</p>', '', 1, 0, 0, 2, '2011-12-11 17:40:49', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-12-11 17:40:49', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_content_frontpage`
-- 

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `jos_content_frontpage`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_content_rating`
-- 

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(10) unsigned NOT NULL default '0',
  `rating_count` int(10) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `jos_content_rating`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_core_log_searches`
-- 

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `jos_core_log_searches`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_extensions`
-- 

CREATE TABLE `jos_extensions` (
  `extension_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL default '1',
  `access` tinyint(3) unsigned NOT NULL default '1',
  `protected` tinyint(3) NOT NULL default '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 AUTO_INCREMENT=10000 ;

-- 
-- Contenu de la table `jos_extensions`
-- 

INSERT INTO `jos_extensions` VALUES (1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{"administrator":"fr-FR","site":"fr-FR"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"BL","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (103, 'Joomla! Web Application Framework', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Web Application Framework","type":"library","creationDate":"2008","author":"Joomla","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"1.6.0","description":"The Joomla! Web Application Framework is the Core of the Joomla! Content Management System","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (306, 'mod_online', 'module', 'mod_online', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (313, 'mod_unread', 'module', 'mod_unread', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_extensions` VALUES (401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `jos_extensions` VALUES (404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_extensions` VALUES (405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jos_extensions` VALUES (406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `jos_extensions` VALUES (408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `jos_extensions` VALUES (409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `jos_extensions` VALUES (410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_extensions` VALUES (411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jos_extensions` VALUES (412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '', '{"mode":"2","skin":"0","compressed":"0","cleanup_startup":"0","cleanup_save":"2","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","safari":"0","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `jos_extensions` VALUES (413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_extensions` VALUES (414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jos_extensions` VALUES (415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `jos_extensions` VALUES (416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `jos_extensions` VALUES (417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_extensions` VALUES (423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jos_extensions` VALUES (424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0);
INSERT INTO `jos_extensions` VALUES (425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `jos_extensions` VALUES (426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `jos_extensions` VALUES (427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `jos_extensions` VALUES (428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `jos_extensions` VALUES (429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `jos_extensions` VALUES (430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `jos_extensions` VALUES (431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_extensions` VALUES (432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jos_extensions` VALUES (433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_extensions` VALUES (435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"1.6.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"1.6.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"1.6.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"1.6.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"1.6.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (602, 'Français', 'language', 'fr-FR', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (603, 'Français', 'language', 'fr-FR', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jos_extensions` VALUES (700, 'Joomla! CMS', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"June 2011","author":"Joomla!","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.6.4","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_languages`
-- 

CREATE TABLE `jos_languages` (
  `lang_id` int(11) unsigned NOT NULL auto_increment,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `published` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Contenu de la table `jos_languages`
-- 

INSERT INTO `jos_languages` VALUES (1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', 1);
INSERT INTO `jos_languages` VALUES (2, 'fr-FR', 'Français (FR)', 'Français (FR)', 'fr', 'fr', '', '', '', 1);

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_menu`
-- 

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL default '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL default '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL default '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL default '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL default '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL default '0' COMMENT 'The click behaviour of the link.',
  `access` tinyint(3) unsigned NOT NULL default '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL default '',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias` (`client_id`,`parent_id`,`alias`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`),
  KEY `link` (`link`(27))
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

-- 
-- Contenu de la table `jos_menu`
-- 

INSERT INTO `jos_menu` VALUES (1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 43, 0, '*', 0);
INSERT INTO `jos_menu` VALUES (2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 37, 38, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 31, 36, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 32, 33, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 34, 35, 0, '*', 1);
INSERT INTO `jos_menu` VALUES (101, 'mainmenu', 'Accueil', 'accueil', '', 'accueil', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 42, '2011-08-18 12:09:52', 0, 1, '', 0, '{"num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","orderby_pri":"","orderby_sec":"front","order_date":"","multi_column_order":"1","show_pagination":"2","show_pagination_results":"1","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"1","feed_summary":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 42, 1, '*', 0);
INSERT INTO `jos_menu` VALUES (102, 'mainmenu', 'Mes réalisations', 'mes-realisations', '', 'accueil/mes-realisations', 'index.php?option=com_content&view=article&id=1', 'component', 1, 101, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 3, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 40, 41, 0, 'fr-FR', 0);

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_menu_types`
-- 

CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `jos_menu_types`
-- 

INSERT INTO `jos_menu_types` VALUES (1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_messages`
-- 

CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` tinyint(3) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL default '0',
  `priority` tinyint(1) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `jos_messages`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_messages_cfg`
-- 

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `jos_messages_cfg`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_modules`
-- 

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- 
-- Contenu de la table `jos_modules`
-- 

INSERT INTO `jos_modules` VALUES (1, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');
INSERT INTO `jos_modules` VALUES (2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*');
INSERT INTO `jos_modules` VALUES (3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*');
INSERT INTO `jos_modules` VALUES (4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*');
INSERT INTO `jos_modules` VALUES (6, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*');
INSERT INTO `jos_modules` VALUES (7, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*');
INSERT INTO `jos_modules` VALUES (8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*');
INSERT INTO `jos_modules` VALUES (9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*');
INSERT INTO `jos_modules` VALUES (10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*');
INSERT INTO `jos_modules` VALUES (12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*');
INSERT INTO `jos_modules` VALUES (13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*');
INSERT INTO `jos_modules` VALUES (14, 'User Status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*');
INSERT INTO `jos_modules` VALUES (15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*');
INSERT INTO `jos_modules` VALUES (16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*');
INSERT INTO `jos_modules` VALUES (17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');
INSERT INTO `jos_modules` VALUES (18, 'Banners', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["27"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_modules_menu`
-- 

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `jos_modules_menu`
-- 

INSERT INTO `jos_modules_menu` VALUES (1, 0);
INSERT INTO `jos_modules_menu` VALUES (2, 0);
INSERT INTO `jos_modules_menu` VALUES (3, 0);
INSERT INTO `jos_modules_menu` VALUES (4, 0);
INSERT INTO `jos_modules_menu` VALUES (6, 0);
INSERT INTO `jos_modules_menu` VALUES (7, 0);
INSERT INTO `jos_modules_menu` VALUES (8, 0);
INSERT INTO `jos_modules_menu` VALUES (9, 0);
INSERT INTO `jos_modules_menu` VALUES (10, 0);
INSERT INTO `jos_modules_menu` VALUES (12, 0);
INSERT INTO `jos_modules_menu` VALUES (13, 0);
INSERT INTO `jos_modules_menu` VALUES (14, 0);
INSERT INTO `jos_modules_menu` VALUES (15, 0);
INSERT INTO `jos_modules_menu` VALUES (16, 0);
INSERT INTO `jos_modules_menu` VALUES (17, 0);
INSERT INTO `jos_modules_menu` VALUES (18, 0);

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_newsfeeds`
-- 

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `alias` varchar(100) NOT NULL default '',
  `link` varchar(200) NOT NULL default '',
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(10) unsigned NOT NULL default '1',
  `cache_time` int(10) unsigned NOT NULL default '3600',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL default '',
  `params` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `jos_newsfeeds`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_redirect_links`
-- 

CREATE TABLE `jos_redirect_links` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `old_url` varchar(150) NOT NULL,
  `new_url` varchar(150) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `jos_redirect_links`
-- 

INSERT INTO `jos_redirect_links` VALUES (1, 'http://www.styleoweb.fr/Joomla/index.php/mes-realisations', '', 'http://www.styleoweb.fr/Joomla/', '', 0, '2011-12-11 17:52:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_schemas`
-- 

CREATE TABLE `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `jos_schemas`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_session`
-- 

CREATE TABLE `jos_session` (
  `session_id` varchar(32) NOT NULL default '',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `guest` tinyint(4) unsigned default '1',
  `time` varchar(14) default '',
  `data` varchar(20480) default NULL,
  `userid` int(11) default '0',
  `username` varchar(150) default '',
  `usertype` varchar(50) default '',
  PRIMARY KEY  (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `jos_session`
-- 

INSERT INTO `jos_session` VALUES ('eec3b0476594ea4b8214afa1d4acdf78', 1, 0, '1323625952', '__default|a:8:{s:15:"session.counter";i:48;s:19:"session.timer.start";i:1323625091;s:18:"session.timer.last";i:1323625951;s:17:"session.timer.now";i:1323625952;s:22:"session.client.browser";s:117:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_2) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":5:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"fr-FR";}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:0:{}}}}s:9:"com_menus";O:8:"stdClass":2:{s:4:"edit";O:8:"stdClass":2:{s:4:"menu";O:8:"stdClass":1:{s:4:"data";N;}s:4:"item";O:8:"stdClass":4:{s:4:"type";N;s:4:"link";N;s:4:"data";N;s:2:"id";a:0:{}}}s:5:"items";O:8:"stdClass":2:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:8:"mainmenu";}s:10:"limitstart";i:0;}}s:9:"com_admin";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"profile";O:8:"stdClass":1:{s:4:"data";N;}}}s:14:"com_categories";O:8:"stdClass":2:{s:10:"categories";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:9:"extension";s:11:"com_content";}}s:4:"edit";O:8:"stdClass":1:{s:8:"category";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":24:{s:9:"\0*\0isRoot";b:1;s:2:"id";i:42;s:4:"name";s:8:"Jonathan";s:8:"username";s:5:"admin";s:5:"email";s:14:"skarun@free.fr";s:8:"password";s:65:"c97971350d0a1918476c8917db5c0630:lkRZsedNjlzOjGUdg25wGGiMNllJJERW";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2011-08-18 11:53:33";s:13:"lastvisitDate";s:19:"2011-12-11 17:38:27";s:10:"activation";s:0:"";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";N;s:5:"guest";i:0;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;s:9:"password2";s:0:"";}s:13:"session.token";s:32:"8854b76a714c2f7ca29b7f6d28c48776";}', 42, 'admin', '');
INSERT INTO `jos_session` VALUES ('f23935691bd7a57b9e43374087ca2499', 0, 1, '1323625972', '__default|a:9:{s:15:"session.counter";i:10;s:19:"session.timer.start";i:1323625928;s:18:"session.timer.last";i:1323625969;s:17:"session.timer.now";i:1323625971;s:22:"session.client.browser";s:117:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_2) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":23:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:16:"com_mailto.links";a:3:{s:40:"85e879092374ad921c82a2f3cc92e64ed9bf8114";O:8:"stdClass":2:{s:4:"link";s:57:"http://www.styleoweb.fr/Joomla/index.php/mes-realisations";s:6:"expiry";i:1323625931;}s:40:"067f3de9545f770922c707630e060362ee3ed697";O:8:"stdClass":2:{s:4:"link";s:65:"http://www.styleoweb.fr/Joomla/index.php/accueil/mes-realisations";s:6:"expiry";i:1323625966;}s:40:"daada30f0af3d1f41e00e6f6826cffccfa447de4";O:8:"stdClass":2:{s:4:"link";s:84:"http://www.styleoweb.fr/Joomla/index.php/accueil/mes-realisations/2-main-menu/2-home";s:6:"expiry";i:1323625969;}}s:13:"session.token";s:32:"b34da60d07739fcaef87b2ba2fd37bff";}', 0, '', '');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_template_styles`
-- 

CREATE TABLE `jos_template_styles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` varchar(50) NOT NULL default '',
  `client_id` tinyint(1) unsigned NOT NULL default '0',
  `home` char(7) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Contenu de la table `jos_template_styles`
-- 

INSERT INTO `jos_template_styles` VALUES (2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}');
INSERT INTO `jos_template_styles` VALUES (3, 'atomic', 0, '0', 'Atomic - Default', '{}');
INSERT INTO `jos_template_styles` VALUES (4, 'beez_20', 0, '1', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}');
INSERT INTO `jos_template_styles` VALUES (5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}');
INSERT INTO `jos_template_styles` VALUES (6, 'beez5', 0, '0', 'Beez5 - Default-Fruit Shop', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Matuna Market ","sitedescription":"Fruit Shop Sample Site","navposition":"left","html5":"0"}');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_update_categories`
-- 

CREATE TABLE `jos_update_categories` (
  `categoryid` int(11) NOT NULL auto_increment,
  `name` varchar(20) default '',
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `updatesite` int(11) default '0',
  PRIMARY KEY  (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `jos_update_categories`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_update_sites`
-- 

CREATE TABLE `jos_update_sites` (
  `update_site_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `type` varchar(20) default '',
  `location` text NOT NULL,
  `enabled` int(11) default '0',
  PRIMARY KEY  (`update_site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=3 ;

-- 
-- Contenu de la table `jos_update_sites`
-- 

INSERT INTO `jos_update_sites` VALUES (1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1);
INSERT INTO `jos_update_sites` VALUES (2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1);

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_update_sites_extensions`
-- 

CREATE TABLE `jos_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL default '0',
  `extension_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

-- 
-- Contenu de la table `jos_update_sites_extensions`
-- 

INSERT INTO `jos_update_sites_extensions` VALUES (1, 700);
INSERT INTO `jos_update_sites_extensions` VALUES (2, 700);

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_updates`
-- 

CREATE TABLE `jos_updates` (
  `update_id` int(11) NOT NULL auto_increment,
  `update_site_id` int(11) default '0',
  `extension_id` int(11) default '0',
  `categoryid` int(11) default '0',
  `name` varchar(100) default '',
  `description` text NOT NULL,
  `element` varchar(100) default '',
  `type` varchar(20) default '',
  `folder` varchar(20) default '',
  `client_id` tinyint(3) default '0',
  `version` varchar(10) default '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  PRIMARY KEY  (`update_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `jos_updates`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_user_profiles`
-- 

CREATE TABLE `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- 
-- Contenu de la table `jos_user_profiles`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `jos_user_usergroup_map`
-- 

CREATE TABLE `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY  (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `jos_user_usergroup_map`
-- 

INSERT INTO `jos_user_usergroup_map` VALUES (42, 8);

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_usergroups`
-- 

CREATE TABLE `jos_usergroups` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` USING BTREE (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Contenu de la table `jos_usergroups`
-- 

INSERT INTO `jos_usergroups` VALUES (1, 0, 1, 20, 'Public');
INSERT INTO `jos_usergroups` VALUES (2, 1, 6, 17, 'Enregistré');
INSERT INTO `jos_usergroups` VALUES (3, 2, 7, 14, 'Auteur');
INSERT INTO `jos_usergroups` VALUES (4, 3, 8, 11, 'Rédacteur');
INSERT INTO `jos_usergroups` VALUES (5, 4, 9, 10, 'Éditeur');
INSERT INTO `jos_usergroups` VALUES (6, 1, 2, 5, 'Gestionnaire');
INSERT INTO `jos_usergroups` VALUES (7, 6, 3, 4, 'Administrateur');
INSERT INTO `jos_usergroups` VALUES (8, 1, 18, 19, 'Super Utilisateur');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_users`
-- 

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

-- 
-- Contenu de la table `jos_users`
-- 

INSERT INTO `jos_users` VALUES (42, 'Jonathan', 'admin', 'skarun@free.fr', 'c97971350d0a1918476c8917db5c0630:lkRZsedNjlzOjGUdg25wGGiMNllJJERW', 'deprecated', 0, 1, '2011-08-18 11:53:33', '2011-12-11 17:52:08', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_viewlevels`
-- 

CREATE TABLE `jos_viewlevels` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Contenu de la table `jos_viewlevels`
-- 

INSERT INTO `jos_viewlevels` VALUES (1, 'Accès Public', 0, '[1]');
INSERT INTO `jos_viewlevels` VALUES (2, 'Accès Enregistré', 1, '[6,2,8]');
INSERT INTO `jos_viewlevels` VALUES (3, 'Accès Spécial', 2, '[6,3,8]');

-- --------------------------------------------------------

-- 
-- Structure de la table `jos_weblinks`
-- 

CREATE TABLE `jos_weblinks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `access` int(11) NOT NULL default '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `jos_weblinks`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `options`
-- 

CREATE TABLE `options` (
  `cle` int(7) NOT NULL auto_increment,
  `id_opt` int(4) NOT NULL default '0',
  `type` varchar(15) NOT NULL default '',
  `element` varchar(150) NOT NULL default '',
  `prix` float NOT NULL default '0',
  `img` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`cle`)
) ENGINE=MyISAM AUTO_INCREMENT=372 DEFAULT CHARSET=latin1 AUTO_INCREMENT=372 ;

-- 
-- Contenu de la table `options`
-- 

INSERT INTO `options` VALUES (369, 23, 'cg', '	N9400GT-MD512H', 35, '');
INSERT INTO `options` VALUES (300, 4, 'dd', '	HDD 500 Go SATA', 10, '');
INSERT INTO `options` VALUES (39, 10, 'boitier', 'Boitier Multimédia', 20, 'boitier_imag.jpg');
INSERT INTO `options` VALUES (331, 4, 'cpu', 'CORE QUAD   Q 8200', 75, '');
INSERT INTO `options` VALUES (340, 4, 'compl', 'Drive Clone 6 Pro : Clonage de disques  + Sauvegarde de fichiers , sauvegarde incrementiel.', 32, '');
INSERT INTO `options` VALUES (353, 10, 'cg', 'N9400GT-MD512H', 35, '');
INSERT INTO `options` VALUES (354, 10, 'cg', 'N9500GT-MD1G-OC', 45, '');
INSERT INTO `options` VALUES (12, 10, 'lect_disq', 'Lecteur disquette', 0, '');
INSERT INTO `options` VALUES (239, 4, 'os', 'Windows Vista Basic', 70, '');
INSERT INTO `options` VALUES (311, 3, '- type -', 'Windows Vista Premium', 90, '');
INSERT INTO `options` VALUES (89, 10, 'compl', '	Bit Defender INTERNET SECURITY  2009avec firewall/antispam/antiphishing/controle parental', 7.9, '');
INSERT INTO `options` VALUES (349, 10, 'dd', 'HDD 750 Go SATA', 40, '');
INSERT INTO `options` VALUES (31, 10, 'boitier', 'Boitier Gamer', 55, 'boitier_gamer.jpg');
INSERT INTO `options` VALUES (332, 4, 'mem', '	3Go DDRII 800 MHZ', 10, '');
INSERT INTO `options` VALUES (297, 23, 'os', '	Windows XP Pro', 109, '');
INSERT INTO `options` VALUES (327, 4, 'cpu', '	CORE II DUO E7400', 40, '');
INSERT INTO `options` VALUES (352, 10, 'cg', 'NX8400GS-TD512EH', 30, '');
INSERT INTO `options` VALUES (295, 10, 'os', '	 Windows XP Pro', 109, '');
INSERT INTO `options` VALUES (53, 10, 'lect_opt', 'GRAVEUR DVD LIGHT SCRIBE / LECTEUR DVD - BLU RAY - HD DVD', 72, '');
INSERT INTO `options` VALUES (341, 3, 'cg', '	 R4870-T2D1G-OC', 40, '');
INSERT INTO `options` VALUES (333, 4, 'mem', '	4Go DDRII 800 MHZ', 20, '');
INSERT INTO `options` VALUES (335, 4, 'dd', 'HDD 1000 Go SATA', 45, '');
INSERT INTO `options` VALUES (258, 3, 'os', 'Windows Vista Ultimate', 140, '');
INSERT INTO `options` VALUES (344, 3, 'compl', 'Drive Clone 6 Pro : Clonage de disques + Sauvegarde de fichiers , sauvegarde incrementiel.', 32, '');
INSERT INTO `options` VALUES (330, 4, 'cpu', 'CORE QUAD Q 9550', 155, '');
INSERT INTO `options` VALUES (67, 4, 'lect_disq', 'Lecteur disquette', 0, '');
INSERT INTO `options` VALUES (68, 4, 'lect_opt', 'GRAVEUR DVD LIGHT SCRIBE / LECTEUR DVD - BLU RAY - HD DVD', 72, '');
INSERT INTO `options` VALUES (242, 4, 'os', 'Windows Vista Business', 110, '');
INSERT INTO `options` VALUES (316, 4, 'boitier', 'Boitier Gamer  9909CA', 55, 'boitier_gamer.jpg');
INSERT INTO `options` VALUES (73, 3, 'boitier', '	Boitier Multimédia', 20, 'boitier_imag.jpg');
INSERT INTO `options` VALUES (74, 3, 'boitier', '	Boitier Gamer', 55, 'boitier_gamer.jpg');
INSERT INTO `options` VALUES (343, 3, 'cg', 'N295GTX-M2D1792', 295, '');
INSERT INTO `options` VALUES (308, 3, 'os', '	Windows XP Pro', 109, '');
INSERT INTO `options` VALUES (347, 10, 'mem', '4Go DDRII 800 MHZ', 30, '');
INSERT INTO `options` VALUES (307, 3, 'os', 'Windows XP Home', 69, '');
INSERT INTO `options` VALUES (342, 3, 'cg', 'R4890-T2D1G-OC', 70, '');
INSERT INTO `options` VALUES (81, 3, 'lect_disq', '	Lecteur disquette', 0, '');
INSERT INTO `options` VALUES (82, 3, 'lect_opt', 'GRAVEUR DVD LIGHT SCRIBE / LECTEUR DVD - BLU RAY - HD DVD', 72, '');
INSERT INTO `options` VALUES (313, 10, 'os', 'Windows Vista Premium', 90, '');
INSERT INTO `options` VALUES (309, 4, 'os', '	Windows Vista Premium', 90, '');
INSERT INTO `options` VALUES (87, 3, 'compl', '	Bit Defender INTERNET SECURITY  2009 avec firewall/antispam/antiphishing/controle parental', 7.9, '');
INSERT INTO `options` VALUES (339, 4, 'compl', '	 Bit Defender INTERNET SECURITY 2009 avec firewall/antispam/antiphishing/controle parental', 6.9, '');
INSERT INTO `options` VALUES (90, 10, 'compl', 'carte Pci Firewire IEEE1394', 10, '');
INSERT INTO `options` VALUES (91, 4, 'compl', 'carte Pci Firewire IEEE1394', 10, '');
INSERT INTO `options` VALUES (92, 3, 'compl', 'Carte Pci Firewire IEEE1394', 10, '');
INSERT INTO `options` VALUES (222, 10, 'os', '	 Windows Vista Business', 110, '');
INSERT INTO `options` VALUES (237, 23, 'os', 'Windows Vista Ultimate', 140, '');
INSERT INTO `options` VALUES (296, 23, 'os', '	 Windows XP Home', 69, '');
INSERT INTO `options` VALUES (366, 23, 'dd', '	HDD 1000 Go SATA', 55, '');
INSERT INTO `options` VALUES (305, 4, 'os', '	Windows XP Pro', 109, '');
INSERT INTO `options` VALUES (334, 4, 'dd', 'HDD 750 Go SATA', 30, '');
INSERT INTO `options` VALUES (350, 10, 'dd', 'HDD 1000 Go SATA', 55, '');
INSERT INTO `options` VALUES (254, 3, 'os', 'Windows Vista Basic', 70, '');
INSERT INTO `options` VALUES (243, 4, 'os', 'Windows Vista Ultimate', 140, '');
INSERT INTO `options` VALUES (315, 4, 'boitier', 'Boitier Multimédia 9906', 20, 'boitier_imag.jpg');
INSERT INTO `options` VALUES (213, 10, 'dd', '	 HDD 320Go SATA', 10, '');
INSERT INTO `options` VALUES (338, 4, 'cg', 'N9800GT-T2D1G-OC ( + alim Gamer)', 80, '');
INSERT INTO `options` VALUES (127, 23, 'boitier', '	Boitier Multimédia', 20, 'boitier_imag.jpg');
INSERT INTO `options` VALUES (128, 23, 'boitier', '	Boitier Gamer', 55, 'boitier_gamer.jpg');
INSERT INTO `options` VALUES (368, 23, 'cg', '	NX8400GS-TD512EH', 30, '');
INSERT INTO `options` VALUES (360, 23, 'cpu', 'CORE QUAD   Q 9300', 130, '');
INSERT INTO `options` VALUES (336, 4, 'cg', 'N9600GT-T2D512', 25, '');
INSERT INTO `options` VALUES (358, 23, 'cpu', '	CORE II DUO E8400', 95, '');
INSERT INTO `options` VALUES (361, 23, 'mem', '	2Go DDRII 800 MHZ', 10, '');
INSERT INTO `options` VALUES (365, 23, 'dd', 'HDD 750 Go SATA', 40, '');
INSERT INTO `options` VALUES (314, 23, 'os', 'Windows Vista Premium', 90, '');
INSERT INTO `options` VALUES (276, 10, 'cpu', 'ATHLON 64 X2 5200+', 25, '');
INSERT INTO `options` VALUES (328, 4, 'cpu', 'CORE II DUO E8400', 80, '');
INSERT INTO `options` VALUES (367, 23, 'cg', '	NX8400GS-TD256E', 25, '');
INSERT INTO `options` VALUES (232, 23, 'os', 'Windows Vista Basic', 70, '');
INSERT INTO `options` VALUES (329, 4, 'cpu', 'CORE QUAD Q 9300', 115, '');
INSERT INTO `options` VALUES (294, 10, 'os', '	Windows XP Home', 69, '');
INSERT INTO `options` VALUES (147, 23, 'lect_disq', 'Lecteur disquette', 0, '');
INSERT INTO `options` VALUES (148, 23, 'lect_opt', 'GRAVEUR DVD LIGHT SCRIBE / LECTEUR DVD - BLU RAY - HD DVD', 72, '');
INSERT INTO `options` VALUES (236, 23, 'os', '	 Windows Vista Business', 110, '');
INSERT INTO `options` VALUES (364, 23, 'dd', 'HDD 500 Go SATA', 15, '');
INSERT INTO `options` VALUES (357, 23, 'cpu', 'CORE II  DUO  E7400', 55, '');
INSERT INTO `options` VALUES (348, 10, 'dd', '	HDD 500 Go SATA', 15, '');
INSERT INTO `options` VALUES (155, 23, 'compl', '	 Bit Defender INTERNET SECURITY 2009avec firewall/antispam/antiphishing/controle parental', 7.9, '');
INSERT INTO `options` VALUES (156, 23, 'compl', '	carte Pci Firewire IEEE1394', 10, '');
INSERT INTO `options` VALUES (337, 4, 'cg', 'R4850-2D512-OC ( + alim Gamer)', 80, '');
INSERT INTO `options` VALUES (257, 3, 'os', 'Windows Vista Business', 110, '');
INSERT INTO `options` VALUES (226, 23, 'dd', ' HDD 320Go SATA', 10, '');
INSERT INTO `options` VALUES (312, 3, 'os', 'Windows Vista Premium', 90, '');
INSERT INTO `options` VALUES (220, 10, 'os', 'Windows Vista Basic', 70, '');
INSERT INTO `options` VALUES (224, 10, 'os', '	Windows Vista Ultimate', 140, '');
INSERT INTO `options` VALUES (370, 23, 'cg', '	N9500GT-MD1G-OC', 45, '');
INSERT INTO `options` VALUES (304, 4, 'os', 'Windows XP Home', 69, '');
INSERT INTO `options` VALUES (359, 23, 'cpu', 'CORE QUAD   Q 8200', 90, '');
INSERT INTO `options` VALUES (346, 10, 'mem', '3Go DDRII 800 MHZ', 20, '');
INSERT INTO `options` VALUES (345, 10, 'mem', '2Go DDRII 800 MHZ', 10, '');
INSERT INTO `options` VALUES (351, 10, 'cg', 'NX8400GS-TD256E', 25, '');
INSERT INTO `options` VALUES (355, 10, 'compl', 'Drive Clone 6 Pro : Clonage de disques + Sauvegarde de fichiers , sauvegarde incrementiel.', 32, '');
INSERT INTO `options` VALUES (356, 23, 'cpu', 'CORE II DUO E5200', 15, '');
INSERT INTO `options` VALUES (362, 23, 'mem', '	3Go DDRII 800 MHZ', 20, '');
INSERT INTO `options` VALUES (363, 23, 'mem', '	4Go DDRII 800 MHZ', 30, '');
INSERT INTO `options` VALUES (371, 23, 'cg', '	Drive Clone 6 Pro : Clonage de disques + Sauvegarde de fichiers , sauvegarde incrementiel.', 32, '');

-- --------------------------------------------------------

-- 
-- Structure de la table `pe_comments`
-- 

CREATE TABLE `pe_comments` (
  `id` int(11) NOT NULL auto_increment,
  `photo` int(11) NOT NULL default '0',
  `author` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `comment` text NOT NULL,
  `uploaded` varchar(255) NOT NULL default '',
  `website` varchar(255) default NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `pe_comments`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `pe_constraints`
-- 

CREATE TABLE `pe_constraints` (
  `id` int(11) NOT NULL auto_increment,
  `folder_id` int(11) default NULL,
  `type` varchar(255) default NULL,
  `type2` varchar(255) default NULL,
  `value` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- Contenu de la table `pe_constraints`
-- 

INSERT INTO `pe_constraints` VALUES (1, 1, 'tags', 'one', ';4;');
INSERT INTO `pe_constraints` VALUES (2, 2, 'tags', 'one', ';1;');
INSERT INTO `pe_constraints` VALUES (3, 3, 'tags', 'one', ';8;');
INSERT INTO `pe_constraints` VALUES (4, 4, 'tags', 'all', ';12;');
INSERT INTO `pe_constraints` VALUES (6, 5, 'tags', 'all', ';18;');
INSERT INTO `pe_constraints` VALUES (7, 6, 'tags', 'all', ';20;');
INSERT INTO `pe_constraints` VALUES (8, 7, 'tags', 'all', ';23;');
INSERT INTO `pe_constraints` VALUES (10, 8, 'tags', 'all', ';30;');
INSERT INTO `pe_constraints` VALUES (11, 9, 'tags', 'all', ';32;33;34;');
INSERT INTO `pe_constraints` VALUES (13, 10, 'tags', 'all', ';37;');

-- --------------------------------------------------------

-- 
-- Structure de la table `pe_folders`
-- 

CREATE TABLE `pe_folders` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `in` int(11) default NULL,
  `orderid` int(11) default NULL,
  `password` varchar(255) NOT NULL default '',
  `sorting` tinyint(2) NOT NULL default '0',
  `photossort` text,
  `thumbnail_refresh` int(11) NOT NULL default '0',
  `thumbnail_photo_id` int(11) default NULL,
  `thumbnail_perso` tinyint(1) NOT NULL default '0',
  `contains_subfolders` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Contenu de la table `pe_folders`
-- 

INSERT INTO `pe_folders` VALUES (1, 'RandonnÃ©es', NULL, -1, 1, '', 0, NULL, 1312982345, 8, 1, 1);
INSERT INTO `pe_folders` VALUES (2, 'Le Suchet', NULL, 1, 3, '', 6, NULL, 1312982821, 39, 1, 1);
INSERT INTO `pe_folders` VALUES (3, 'Le Grand Taureau', NULL, 1, 2, '', 7, NULL, 1312982234, 15, 1, 1);
INSERT INTO `pe_folders` VALUES (4, 'Lac du Bourget', NULL, -1, 4, '', 7, NULL, 1313426148, 60, 1, 1);
INSERT INTO `pe_folders` VALUES (5, 'Panoramas', NULL, -1, 5, '', 6, NULL, 1319708974, 739, 1, 1);
INSERT INTO `pe_folders` VALUES (6, 'A bord du Conifer', NULL, -1, 6, '', 7, NULL, 1313532519, 84, 0, 1);
INSERT INTO `pe_folders` VALUES (7, 'New-York', NULL, -1, 7, '', 7, NULL, 1313531909, 104, 1, 1);
INSERT INTO `pe_folders` VALUES (8, 'MaÃ¯a & Famille', NULL, -1, 8, '', 0, NULL, 1315342388, 413, 1, 1);
INSERT INTO `pe_folders` VALUES (9, 'Mariage Edith & Ludo', NULL, -1, 9, '', 7, NULL, 1316593897, 424, 1, 1);
INSERT INTO `pe_folders` VALUES (10, 'CrÃªte', NULL, -1, 10, '', 7, NULL, 1319709013, 539, 1, 1);

-- --------------------------------------------------------

-- 
-- Structure de la table `pe_home_folders`
-- 

CREATE TABLE `pe_home_folders` (
  `id` int(11) NOT NULL auto_increment,
  `folder_id` int(11) default NULL,
  `order_id` int(11) NOT NULL,
  `thumbnail` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Contenu de la table `pe_home_folders`
-- 

INSERT INTO `pe_home_folders` VALUES (2, 10, 1, NULL, NULL);
INSERT INTO `pe_home_folders` VALUES (3, 5, 2, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Structure de la table `pe_options`
-- 

CREATE TABLE `pe_options` (
  `name` varchar(255) NOT NULL default '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `pe_options`
-- 

INSERT INTO `pe_options` VALUES ('version', '3.5.3');
INSERT INTO `pe_options` VALUES ('s_lang', 'Francais');
INSERT INTO `pe_options` VALUES ('email', 'skarun@free.fr');
INSERT INTO `pe_options` VALUES ('s_comments_notification_email', 'skarun@free.fr');
INSERT INTO `pe_options` VALUES ('s_contact_email', 'skarun@free.fr');
INSERT INTO `pe_options` VALUES ('version_update', '1345059176');
INSERT INTO `pe_options` VALUES ('s_title', 'Gallerie Photo - Jonathan Escaravage');
INSERT INTO `pe_options` VALUES ('s_home_title', 'About');
INSERT INTO `pe_options` VALUES ('s_home_text', '');
INSERT INTO `pe_options` VALUES ('s_template', 'default');
INSERT INTO `pe_options` VALUES ('s_home_title_enabled', 'false');
INSERT INTO `pe_options` VALUES ('s_home', 'false');
INSERT INTO `pe_options` VALUES ('s_contact', 'true');
INSERT INTO `pe_options` VALUES ('s_search', 'true');
INSERT INTO `pe_options` VALUES ('s_home_panel_hidden', 'true');
INSERT INTO `pe_options` VALUES ('quality', '100');
INSERT INTO `pe_options` VALUES ('s_slideshow_duration', '5089.55223880597');
INSERT INTO `pe_options` VALUES ('s_slideshow', 'true');
INSERT INTO `pe_options` VALUES ('s_slideshow_fullscreen', 'true');
INSERT INTO `pe_options` VALUES ('s_comments', 'true');
INSERT INTO `pe_options` VALUES ('s_comments_notification', 'true');
INSERT INTO `pe_options` VALUES ('s_rss_limit', '20');
INSERT INTO `pe_options` VALUES ('s_rss_large', 'true');
INSERT INTO `pe_options` VALUES ('s_download_single', 'true');
INSERT INTO `pe_options` VALUES ('s_download_archive', 'false');
INSERT INTO `pe_options` VALUES ('s_rss_comments', 'false');
INSERT INTO `pe_options` VALUES ('s_rss_albums', 'false');
INSERT INTO `pe_options` VALUES ('s_piclens', 'true');
INSERT INTO `pe_options` VALUES ('s_duplicate', 'true');

-- --------------------------------------------------------

-- 
-- Structure de la table `pe_photos`
-- 

CREATE TABLE `pe_photos` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL default '',
  `uploaded` int(11) NOT NULL default '0',
  `exif` text,
  `date` datetime default NULL,
  `protection_id` int(11) NOT NULL default '0',
  `thumbnail_width` int(11) NOT NULL,
  `thumbnail_height` int(11) NOT NULL,
  `key` varchar(100) default NULL,
  `updated` tinyint(1) NOT NULL default '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=749 DEFAULT CHARSET=utf8 AUTO_INCREMENT=749 ;

-- 
-- Contenu de la table `pe_photos`
-- 

INSERT INTO `pe_photos` VALUES (2, 'DSC01144', '', '1312981586Bv23.jpg', 1312981586, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'vNA59Awi7E2', 1);
INSERT INTO `pe_photos` VALUES (3, 'DSC01149', '', '131298158632Tv.jpg', 1312981587, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'uf6Rx4nsKs3', 1);
INSERT INTO `pe_photos` VALUES (4, 'DSC01150', '', '1312981587k4hb.jpg', 1312981587, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, '6u6boscTc34', 1);
INSERT INTO `pe_photos` VALUES (5, 'DSC01155', '', '131298158762PU.jpg', 1312981588, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'PIg4xbFQVI5', 1);
INSERT INTO `pe_photos` VALUES (6, 'DSC01157', '', '1312981588N9ec.jpg', 1312981588, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 84, 150, 'KIFr0BkCi36', 1);
INSERT INTO `pe_photos` VALUES (7, 'DSC01158', '', '1312981589gvv8.jpg', 1312981589, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'S7Mx74CMO37', 1);
INSERT INTO `pe_photos` VALUES (8, 'DSC01160', '', '1312981589AfHS.jpg', 1312981589, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, '7cwr9B6QeI8', 1);
INSERT INTO `pe_photos` VALUES (9, 'DSC_0089', '', '1312982021Sxba.jpg', 1312982021, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 99, 'bgzV8bfuT89', 1);
INSERT INTO `pe_photos` VALUES (10, 'DSC_0055', '', '1312982021mFVG.jpg', 1312982022, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 87, 'nOawppwbOt10', 1);
INSERT INTO `pe_photos` VALUES (11, 'DSC_0057', '', '1312982022xBFJ.jpg', 1312982023, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 99, 'yfT1IqxR2911', 1);
INSERT INTO `pe_photos` VALUES (12, 'DSC_0065', '', '1312982023Q0g3.jpg', 1312982023, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 99, '2VSxzke7IK12', 1);
INSERT INTO `pe_photos` VALUES (13, 'DSC_0067', '', '131298202419QO.jpg', 1312982024, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 99, 150, 'fviHp0Ry8a13', 1);
INSERT INTO `pe_photos` VALUES (14, 'DSC_0069', '', '1312982025UF2p.jpg', 1312982026, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 99, 'iSyCCGjHHf14', 1);
INSERT INTO `pe_photos` VALUES (15, 'DSC_0070', '', '13129820260kf4.jpg', 1312982026, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 90, '8UFKyMDxGr15', 1);
INSERT INTO `pe_photos` VALUES (16, 'DSC_0083', '', '1312982027SrQt.jpg', 1312982027, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 99, 'V2C42jj8p016', 1);
INSERT INTO `pe_photos` VALUES (17, 'DSC_0087', '', '1312982027zP56.jpg', 1312982028, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 99, 'nzMJg404TN17', 1);
INSERT INTO `pe_photos` VALUES (18, 'DSC_0092', '', '131298202806ew.jpg', 1312982029, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 99, 150, 'DztPhNfa7v18', 1);
INSERT INTO `pe_photos` VALUES (19, 'DSC01166', '', '1312982772Tv5d.jpg', 1312982772, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'cU9OtMkr0v19', 1);
INSERT INTO `pe_photos` VALUES (20, 'DSC01179', '', '131298277307qv.jpg', 1312982773, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, '6j32J2yHzC20', 1);
INSERT INTO `pe_photos` VALUES (21, 'DSC01181', '', '1312982773e5ov.jpg', 1312982773, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'PoNduvgfNO21', 1);
INSERT INTO `pe_photos` VALUES (22, 'DSC01187', '', '1312982774kM52.jpg', 1312982774, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'hpMEOC9skC22', 1);
INSERT INTO `pe_photos` VALUES (23, 'DSC01189', '', '1312982774IbpN.jpg', 1312982775, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, '0w6z9G8Hei23', 1);
INSERT INTO `pe_photos` VALUES (24, 'DSC01192', '', '1312982775p1gw.jpg', 1312982775, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'VltfNcRsI724', 1);
INSERT INTO `pe_photos` VALUES (25, 'DSC01196', '', '1312982775NpA4.jpg', 1312982776, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'glpCPLKGlV25', 1);
INSERT INTO `pe_photos` VALUES (26, 'DSC01199', '', '13129827760US2.jpg', 1312982776, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'MPxz1zJNEJ26', 1);
INSERT INTO `pe_photos` VALUES (27, 'DSC01200', '', '1312982776Lqej.jpg', 1312982777, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'EISgbk2e0s27', 1);
INSERT INTO `pe_photos` VALUES (28, 'DSC01201', '', '1312982777q5rx.jpg', 1312982777, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, '3rAILDJDln28', 1);
INSERT INTO `pe_photos` VALUES (29, 'DSC01216', '', '1312982778P0pT.jpg', 1312982778, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'siPtdb2NKJ29', 1);
INSERT INTO `pe_photos` VALUES (30, 'DSC01217', '', '1312982778zsxz.jpg', 1312982778, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, '0cvEvh1Fkg30', 1);
INSERT INTO `pe_photos` VALUES (31, 'DSC01218', '', '1312982779vN5V.jpg', 1312982779, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'xLHzyRdUAT31', 1);
INSERT INTO `pe_photos` VALUES (32, 'DSC01231', '', '1312982779pVQb.jpg', 1312982780, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'N7b6rDKJSr32', 1);
INSERT INTO `pe_photos` VALUES (33, 'DSC01234', '', '1312982780iQTD.jpg', 1312982780, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'xSEtSsjcp033', 1);
INSERT INTO `pe_photos` VALUES (34, 'DSC01235', '', '1312982780H3ts.jpg', 1312982781, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, '0m6aU1q7Vu34', 1);
INSERT INTO `pe_photos` VALUES (35, 'DSC01236', '', '1312982781AO7R.jpg', 1312982781, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'vIcSjJwPQD35', 1);
INSERT INTO `pe_photos` VALUES (36, 'DSC01237', '', '1312982782Ja2D.jpg', 1312982782, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'SNwHHJFhg936', 1);
INSERT INTO `pe_photos` VALUES (37, 'DSC01238', '', '1312982782yyEl.jpg', 1312982782, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'mEnvCOroNU37', 1);
INSERT INTO `pe_photos` VALUES (38, 'DSC01241', '', '13129827836jtl.jpg', 1312982783, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'ypj8B7S9CR38', 1);
INSERT INTO `pe_photos` VALUES (39, 'DSC01242', '', '13129827838KQ3.jpg', 1312982783, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 84, 150, 'EhaI5qi0dz39', 1);
INSERT INTO `pe_photos` VALUES (40, 'DSC01243', '', '13129827848J1p.jpg', 1312982784, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'K8V4n8FCzf40', 1);
INSERT INTO `pe_photos` VALUES (41, 'DSC01244', '', '1312982784tsSG.jpg', 1312982785, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'VeFlTUDG0G41', 1);
INSERT INTO `pe_photos` VALUES (42, 'DSC01246', '', '1312982785iswR.jpg', 1312982785, '0x011A : 240.00 (240/1) 0\n0x011B : 240.00 (240/1) 0\n0x0128 : Inches\n', NULL, 0, 150, 84, 'KodTqGfSqS42', 1);
INSERT INTO `pe_photos` VALUES (43, 'DSC01848', 'SONY DSC', '1313426088ROuQ.jpg', 1313426088, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:30:56\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/4.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 04:23:46\n0x9004 : 2011:08:12 04:23:46\n0x9202 : 4\n0x9203 : 3.00 (300/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 04:23:46', 0, 150, 84, 'TFHGhytAmO43', 1);
INSERT INTO `pe_photos` VALUES (44, 'DSC01849', 'SONY DSC', '1313426088PmRx.jpg', 1313426089, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:30:59\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 04:24:14\n0x9004 : 2011:08:12 04:24:14\n0x9202 : 5.6000006708602\n0x9203 : 8.37 (837/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 04:24:14', 0, 84, 150, '3LxRAOrjkq44', 1);
INSERT INTO `pe_photos` VALUES (45, 'DSC01853', 'SONY DSC', '1313426089Shup.jpg', 1313426089, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:01\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 05:42:56\n0x9004 : 2011:08:12 05:42:56\n0x9202 : 8\n0x9203 : 8.62 (862/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 05:42:56', 0, 150, 84, 'nHPiaSI4fS45', 1);
INSERT INTO `pe_photos` VALUES (46, 'DSC01854', 'SONY DSC', '1313426090QP0P.jpg', 1313426090, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:05\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/9.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 05:43:30\n0x9004 : 2011:08:12 05:43:30\n0x9202 : 8.9999999910024\n0x9203 : 9.87 (987/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 05:43:30', 0, 84, 150, 'E3sgzzFS4R46', 1);
INSERT INTO `pe_photos` VALUES (47, 'DSC01855', 'SONY DSC', '1313426090VUPp.jpg', 1313426090, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:07\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/9.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 05:43:44\n0x9004 : 2011:08:12 05:43:44\n0x9202 : 8.9999999910024\n0x9203 : 8.87 (887/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 05:43:44', 0, 150, 84, 'ASw3D2GVbR47', 1);
INSERT INTO `pe_photos` VALUES (48, 'DSC01856', 'SONY DSC', '1313426091UT65.jpg', 1313426091, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:10\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:08:12 05:45:20\n0x9004 : 2011:08:12 05:45:20\n0x9202 : 5.6000006708602\n0x9203 : 1.25 (125/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 05:45:20', 0, 150, 84, 'fpsVxtHamM48', 1);
INSERT INTO `pe_photos` VALUES (49, 'DSC01857', 'SONY DSC', '1313426091NdVo.jpg', 1313426092, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:13\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 800\n0x9000 : 0230\n0x9003 : 2011:08:12 05:45:29\n0x9004 : 2011:08:12 05:45:29\n0x9202 : 5.6000006708602\n0x9203 : 2.00 (200/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 05:45:29', 0, 150, 84, 'SRFe20EwRy49', 1);
INSERT INTO `pe_photos` VALUES (50, 'DSC01860', 'SONY DSC', '1313426092FSgu.jpg', 1313426092, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:15\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 1600\n0x9000 : 0230\n0x9003 : 2011:08:12 05:49:30\n0x9004 : 2011:08:12 05:49:30\n0x9202 : 8\n0x9203 : 1.37 (137/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 05:49:30', 0, 84, 150, 'hmkEfOvLDw50', 1);
INSERT INTO `pe_photos` VALUES (51, 'DSC01862', 'SONY DSC', '1313426093un8K.jpg', 1313426093, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:19\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 05:57:34\n0x9004 : 2011:08:12 05:57:34\n0x9202 : 8\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 38.00 (380/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 57\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 05:57:34', 0, 150, 84, 'wJLOzdbaeo51', 1);
INSERT INTO `pe_photos` VALUES (52, 'DSC01863', 'SONY DSC', '1313426093uGEb.jpg', 1313426094, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:21\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 05:57:49\n0x9004 : 2011:08:12 05:57:49\n0x9202 : 8\n0x9203 : 7.50 (750/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 37.00 (370/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 55\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 05:57:49', 0, 84, 150, 'N10n61mzn952', 1);
INSERT INTO `pe_photos` VALUES (53, 'DSC01868', 'SONY DSC', '1313426094H26L.jpg', 1313426094, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:24\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 500\n0x9000 : 0230\n0x9003 : 2011:08:12 08:54:44\n0x9004 : 2011:08:12 08:54:44\n0x9202 : 8\n0x9203 : 4.00 (400/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 08:54:44', 0, 150, 84, '3ukd3pRo6p53', 1);
INSERT INTO `pe_photos` VALUES (54, 'DSC01871', 'SONY DSC', '1313426094IJJq.jpg', 1313426095, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:26\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 640\n0x9000 : 0230\n0x9003 : 2011:08:12 08:55:56\n0x9004 : 2011:08:12 08:55:56\n0x9202 : 8\n0x9203 : 3.37 (337/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 08:55:56', 0, 150, 84, 'Lr4rasuctz54', 1);
INSERT INTO `pe_photos` VALUES (55, 'DSC01872', 'SONY DSC', '1313426095yUsu.jpg', 1313426095, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:28\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:08:12 09:33:43\n0x9004 : 2011:08:12 09:33:43\n0x9202 : 2.8000003354301\n0x9203 : -0.75 (-75/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 09:33:43', 0, 84, 150, 'rapqolhALu55', 1);
INSERT INTO `pe_photos` VALUES (56, 'DSC01875', 'SONY DSC', '1313426096EtbG.jpg', 1313426096, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:31\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:08:12 22:39:34\n0x9004 : 2011:08:12 22:39:34\n0x9202 : 7.0999998788497\n0x9203 : 3.37 (337/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 22:39:34', 0, 150, 84, 'yDOJGH4sVU56', 1);
INSERT INTO `pe_photos` VALUES (57, 'DSC01876', 'SONY DSC', '1313426096Rau2.jpg', 1313426097, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:33\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 22:42:43\n0x9004 : 2011:08:12 22:42:43\n0x9202 : 7.0999998788497\n0x9203 : 9.12 (912/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 22:42:43', 0, 150, 84, 'HAgBRhUgkh57', 1);
INSERT INTO `pe_photos` VALUES (58, 'DSC01880', 'SONY DSC', '1313426097DwlL.jpg', 1313426097, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:36\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 800\n0x9000 : 0230\n0x9003 : 2011:08:12 22:56:55\n0x9004 : 2011:08:12 22:56:55\n0x9202 : 7.0999998788497\n0x9203 : 3.62 (362/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 22:56:55', 0, 150, 84, 'FBiVSwb42M58', 1);
INSERT INTO `pe_photos` VALUES (59, 'DSC01894', 'SONY DSC', '1313426098ai0e.jpg', 1313426098, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:38\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/10.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 23:33:57\n0x9004 : 2011:08:12 23:33:57\n0x9202 : 9.9999993422909\n0x9203 : 9.00 (900/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 23:33:57', 0, 84, 150, 'nqj75QDTct59', 1);
INSERT INTO `pe_photos` VALUES (60, 'DSC01905', 'SONY DSC', '131342609819bF.jpg', 1313426099, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:41\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/9.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 23:37:40\n0x9004 : 2011:08:12 23:37:40\n0x9202 : 8.9999999910024\n0x9203 : 8.87 (887/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 19.00 (190/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 28\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-12 23:37:40', 0, 150, 84, 'IKTPfF24Mb60', 1);
INSERT INTO `pe_photos` VALUES (61, 'DSC01907', 'SONY DSC', '1313426099qgGu.jpg', 1313426099, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:43\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/9.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:13 00:21:19\n0x9004 : 2011:08:13 00:21:19\n0x9202 : 8.9999999910024\n0x9203 : 8.25 (825/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-13 00:21:19', 0, 150, 84, 'blDkbpHciy61', 1);
INSERT INTO `pe_photos` VALUES (62, 'DSC01936', 'SONY DSC', '13134261006aP9.jpg', 1313426100, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:46\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:13 00:34:33\n0x9004 : 2011:08:13 00:34:33\n0x9202 : 8\n0x9203 : 9.62 (962/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-13 00:34:33', 0, 150, 84, 'OwP3sJIVwK62', 1);
INSERT INTO `pe_photos` VALUES (63, 'DSC01947', 'SONY DSC', '1313426100t4P9.jpg', 1313426100, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:48\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:13 02:45:07\n0x9004 : 2011:08:13 02:45:07\n0x9202 : 5.6000006708602\n0x9203 : 7.25 (725/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-13 02:45:07', 0, 150, 84, 'i0o7PuCGoi63', 1);
INSERT INTO `pe_photos` VALUES (64, 'DSC01949', 'SONY DSC', '1313426101zxds.jpg', 1313426101, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:51\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:13 02:49:51\n0x9004 : 2011:08:13 02:49:51\n0x9202 : 5.6000006708602\n0x9203 : 9.87 (987/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-13 02:49:51', 0, 150, 84, 'IqufAvubyD64', 1);
INSERT INTO `pe_photos` VALUES (65, 'DSC01980', 'SONY DSC', '1313426101yB3q.jpg', 1313426101, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:53\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:14 02:36:26\n0x9004 : 2011:08:14 02:36:26\n0x9202 : 8\n0x9203 : 6.62 (662/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 39\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-14 02:36:26', 0, 150, 84, 'Ag4j0mTHck65', 1);
INSERT INTO `pe_photos` VALUES (66, 'DSC01982', 'SONY DSC', '1313426102dBxj.jpg', 1313426102, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:56\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:14 02:38:39\n0x9004 : 2011:08:14 02:38:39\n0x9202 : 8\n0x9203 : 9.75 (975/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 27.00 (270/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 40\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-14 02:38:39', 0, 150, 84, 'mljAh3VKzd66', 1);
INSERT INTO `pe_photos` VALUES (67, 'DSC01985', 'SONY DSC', '13134261024FSB.jpg', 1313426103, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:58\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:14 02:41:08\n0x9004 : 2011:08:14 02:41:08\n0x9202 : 7.0999998788497\n0x9203 : 9.87 (987/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-14 02:41:08', 0, 150, 84, 'SbuggUCB1567', 1);
INSERT INTO `pe_photos` VALUES (68, 'DSC01987', 'SONY DSC', '1313426103BanH.jpg', 1313426103, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:31:59\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Program (auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:14 02:43:17\n0x9004 : 2011:08:14 02:43:17\n0x9202 : 8\n0x9203 : 10.37 (1037/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 40.00 (400/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 60\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-14 02:43:17', 0, 150, 84, '0rb4AafnHh68', 1);
INSERT INTO `pe_photos` VALUES (69, 'DSC01989', 'SONY DSC', '1313426104l6D1.jpg', 1313426104, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 18:32:02\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:14 03:13:16\n0x9004 : 2011:08:14 03:13:16\n0x9202 : 7.0999998788497\n0x9203 : 8.62 (862/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-14 03:13:16', 0, 150, 84, 'yUsHoAAee469', 1);
INSERT INTO `pe_photos` VALUES (70, 'cote_quiberon', '', '1313428058iPy3.jpg', 1313428058, '0x010F : Panasonic\n0x0110 : DMC-FZ18\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:37\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 100\n0x9000 : 0230\n0x9003 : 2008:06:21 14:51:30\n0x9004 : 2008:06:21 14:51:30\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/1)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9209 : No\n0x920A : 4.60 (23/5)\n', '2008-06-21 14:51:30', 0, 150, 78, 'dxJu4gzELR70', 1);
INSERT INTO `pe_photos` VALUES (71, 'pano-nantes', 'Stitched Panorama', '1313428058DiAi.jpg', 1313428059, '0x010E : Stitched Panorama\n0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:39\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2009:06:22 08:20:27\n0x9004 : 2010:03:29 17:09:22\n0x9202 : 8\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2009-06-22 08:20:27', 0, 150, 60, 'v9QKa4z4A071', 1);
INSERT INTO `pe_photos` VALUES (72, 'pano-vue-nantes-nuit', 'Stitched Panorama', '1313428059jDN5.jpg', 1313428059, '0x010E : Stitched Panorama\n0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:40\n0x013B : \n0x829A :  2.500 s (25/10)\n0x829D : f/3.5\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2009:10:06 20:01:05\n0x9004 : 2009:10:06 21:20:45\n0x9202 : 3.5000001890894\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2009-10-06 20:01:05', 0, 150, 42, '2cobFVjdy672', 1);
INSERT INTO `pe_photos` VALUES (73, 'fribourg', 'Stitched Panorama', '1313428060cLdS.jpg', 1313428060, '0x010E : Stitched Panorama\n0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:40\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2010:02:16 13:36:10\n0x9004 : 2010:03:29 12:00:13\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2010-02-16 13:36:10', 0, 150, 58, '9OrBCfLErb73', 1);
INSERT INTO `pe_photos` VALUES (74, 'mont-dor', 'Stitched Panorama', '13134280608u0H.jpg', 1313428061, '0x010E : Stitched Panorama\n0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:41\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/6.3\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2010:06:27 12:07:26\n0x9004 : 2010:06:30 22:29:04\n0x9202 : 6.3000007484194\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2010-06-27 12:07:26', 0, 150, 54, '8rDUUjbmw174', 1);
INSERT INTO `pe_photos` VALUES (76, 'DSC01400', 'SONY DSC', '1313428061Rh6O.jpg', 1313428061, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:46\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/6.3\n0x8822 : Program (auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:15 22:03:22\n0x9004 : 2011:07:15 22:03:22\n0x9202 : 6.3000007484194\n0x9203 : 8.75 (875/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-15 22:03:22', 0, 150, 36, 'HpkCHiEJR076', 1);
INSERT INTO `pe_photos` VALUES (77, 'DSC01401', 'SONY DSC', '1313428062kLRI.jpg', 1313428062, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:48\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/6.3\n0x8822 : Program (auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:16 00:37:24\n0x9004 : 2011:07:16 00:37:24\n0x9202 : 6.3000007484194\n0x9203 : 9.12 (912/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-16 00:37:24', 0, 150, 45, 'Ql5r9bcIAv77', 1);
INSERT INTO `pe_photos` VALUES (78, 'DSC01402', 'SONY DSC', '13134280621v3Q.jpg', 1313428063, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:50\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/5.6\n0x8822 : Program (auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:16 00:37:46\n0x9004 : 2011:07:16 00:37:46\n0x9202 : 5.6000006708602\n0x9203 : 8.62 (862/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-16 00:37:46', 0, 150, 30, '2h2CMnynUA78', 1);
INSERT INTO `pe_photos` VALUES (79, 'pano_pt_vue_dent_chat', '', '1313428063wjui.jpg', 1313428063, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:52\n0x829D : f/10.0\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:12 23:36:13\n0x9004 : 2011:08:12 23:36:13\n0x9202 : 9.9999993422909\n', '2011-08-12 23:36:13', 0, 150, 41, 'sywzG1yPfa79', 1);
INSERT INTO `pe_photos` VALUES (80, 'pano_lac_bourget_1', '', '1313428063FR0s.jpg', 1313428064, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:56\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/9.0\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:13 00:31:20\n0x9004 : 2011:08:13 00:31:20\n0x9202 : 8.9999999910024\n0x920A : 12.23 (2147483647/175595021)\n0xA405 : 12\n', '2011-08-13 00:31:20', 0, 150, 41, 'J7ghA9jpIa80', 1);
INSERT INTO `pe_photos` VALUES (81, 'pano_lac_bourget', 'SONY DSC', '1313428064jRdi.jpg', 1313428064, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:01:59\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/9.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:13 00:31:58\n0x9004 : 2011:08:13 00:31:58\n0x9202 : 8.9999999910024\n0x9203 : 9.25 (925/100)\n0x9204 : -1.00 (-10/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-13 00:31:58', 0, 150, 44, 'f5HShQKytu81', 1);
INSERT INTO `pe_photos` VALUES (82, 'pano_pt_vue_aix_chapelle', '', '13134280648l2U.jpg', 1313428065, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:02:08\n0x829D : f/8.0\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:14 05:15:08\n0x9004 : 2011:08:14 05:15:08\n0x9202 : 8\n0x920A : 15.15 (2147483647/141721956)\n0xA405 : 15\n', '2011-08-14 05:15:08', 0, 150, 29, 'sGNmj2rIPy82', 1);
INSERT INTO `pe_photos` VALUES (83, 'pano_aix_les_bains', '', '13134280654jTp.jpg', 1313428065, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:15 19:02:14\n0x829D : f/8.0\n0x9000 : 0230\n0x9003 : 2011:08:14 05:36:17\n0x9004 : 2011:08:14 05:36:17\n0x9202 : 8\n', '2011-08-14 05:36:17', 0, 150, 49, 'UDLEv6GHbf83', 1);
INSERT INTO `pe_photos` VALUES (84, 'DSC01657', 'SONY DSC', '1313529037c5k9.jpg', 1313529038, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:14\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 03:07:27\n0x9004 : 2011:07:31 03:07:27\n0x9202 : 6.3000007484194\n0x9203 : 6.87 (687/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Bracket\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 03:07:27', 0, 84, 150, 'nUUs3f2BSy84', 1);
INSERT INTO `pe_photos` VALUES (85, 'DSC01659', 'SONY DSC', '1313529038Mv8w.jpg', 1313529039, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:17\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 03:07:56\n0x9004 : 2011:07:31 03:07:56\n0x9202 : 5.6000006708602\n0x9203 : 8.75 (875/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Bracket\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 03:07:56', 0, 150, 84, 'JMllflPfBx85', 1);
INSERT INTO `pe_photos` VALUES (86, 'DSC01660', 'SONY DSC', '1313529039R7CR.jpg', 1313529040, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:20\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 03:08:06\n0x9004 : 2011:07:31 03:08:06\n0x9202 : 5.6000006708602\n0x9203 : 8.12 (812/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Bracket\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 03:08:06', 0, 150, 84, 'RT69Sdz5Np86', 1);
INSERT INTO `pe_photos` VALUES (87, 'DSC01668', 'SONY DSC', '131352904010qF.jpg', 1313529041, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:24\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 03:14:53\n0x9004 : 2011:07:31 03:14:53\n0x9202 : 5.6000006708602\n0x9203 : 8.12 (812/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 03:14:53', 0, 150, 84, 'txedqEINHr87', 1);
INSERT INTO `pe_photos` VALUES (88, 'DSC01676', 'SONY DSC', '1313529041k6zw.jpg', 1313529042, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:28\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 03:33:11\n0x9004 : 2011:07:31 03:33:11\n0x9202 : 6.3000007484194\n0x9203 : 8.37 (837/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 03:33:11', 0, 150, 84, 'mKn9hAiK1O88', 1);
INSERT INTO `pe_photos` VALUES (89, 'DSC01679', 'SONY DSC', '13135290422ekb.jpg', 1313529042, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:31\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 03:33:48\n0x9004 : 2011:07:31 03:33:48\n0x9202 : 6.3000007484194\n0x9203 : 8.12 (812/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 03:33:48', 0, 150, 84, '07Hz0EaqNh89', 1);
INSERT INTO `pe_photos` VALUES (90, 'DSC01686', 'SONY DSC', '1313529043y5AQ.jpg', 1313529044, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:35\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 04:04:20\n0x9004 : 2011:07:31 04:04:20\n0x9202 : 8\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 51\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:04:20', 0, 150, 84, 'f3Ad7Hqjhd90', 1);
INSERT INTO `pe_photos` VALUES (91, 'DSC01694', 'SONY DSC', '1313529044LAyJ.jpg', 1313529044, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:38\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 04:05:52\n0x9004 : 2011:07:31 04:05:52\n0x9202 : 8\n0x9203 : 8.25 (825/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 31.00 (310/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 46\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:05:52', 0, 150, 84, 'Q7Q3AEwcOe91', 1);
INSERT INTO `pe_photos` VALUES (92, 'DSC01701', 'SONY DSC', '1313529045yMJo.jpg', 1313529045, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:42\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 04:09:33\n0x9004 : 2011:07:31 04:09:33\n0x9202 : 8\n0x9203 : 8.37 (837/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:09:33', 0, 84, 150, '6jSDmkCwGv92', 1);
INSERT INTO `pe_photos` VALUES (93, 'DSC01703', 'SONY DSC', '1313529046bnlQ.jpg', 1313529046, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:46\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 04:10:03\n0x9004 : 2011:07:31 04:10:03\n0x9202 : 8\n0x9203 : 7.75 (775/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:10:03', 0, 150, 84, 'VNiDUEHjNk93', 1);
INSERT INTO `pe_photos` VALUES (94, 'DSC01706', 'SONY DSC', '1313529047hfFM.jpg', 1313529047, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:50\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 04:10:45\n0x9004 : 2011:07:31 04:10:45\n0x9202 : 8\n0x9203 : 9.25 (925/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:10:45', 0, 84, 150, 'sf9dgmmGSG94', 1);
INSERT INTO `pe_photos` VALUES (95, 'DSC01724', 'SONY DSC', '1313529048j6BN.jpg', 1313529048, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:53\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 04:41:45\n0x9004 : 2011:07:31 04:41:45\n0x9202 : 4.4999999955012\n0x9203 : 6.75 (675/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:41:45', 0, 84, 150, 'CIIcx9jw3P95', 1);
INSERT INTO `pe_photos` VALUES (96, 'DSC01736', 'SONY DSC', '1313529048BMhT.jpg', 1313529049, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:56\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 04:47:45\n0x9004 : 2011:07:31 04:47:45\n0x9202 : 8\n0x9203 : 8.25 (825/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:47:45', 0, 150, 84, '5HOgweviIS96', 1);
INSERT INTO `pe_photos` VALUES (97, 'DSC01742', 'SONY DSC', '1313529049EBpg.jpg', 1313529050, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:00:59\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 04:48:39\n0x9004 : 2011:07:31 04:48:39\n0x9202 : 7.0999998788497\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:48:39', 0, 84, 150, 'moRboizGup97', 1);
INSERT INTO `pe_photos` VALUES (98, 'DSC01746', 'SONY DSC', '1313529051fsqH.jpg', 1313529051, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:01:01\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:07:31 04:49:28\n0x9004 : 2011:07:31 04:49:28\n0x9202 : 7.0999998788497\n0x9203 : 8.75 (875/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:49:28', 0, 150, 84, 'a1GUwh94F798', 1);
INSERT INTO `pe_photos` VALUES (99, 'DSC01748', 'SONY DSC', '1313529051Pamy.jpg', 1313529052, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:01:05\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:07:31 04:51:49\n0x9004 : 2011:07:31 04:51:49\n0x9202 : 7.0999998788497\n0x9203 : 4.75 (475/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-07-31 04:51:49', 0, 84, 150, 'mzmVvoSEwt99', 1);
INSERT INTO `pe_photos` VALUES (100, 'Premier soir - Noel Ã  Time Square', '', '1313531426M0qC.jpg', 1313531427, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:08\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:09 18:46:05\n0x9004 : 2011:04:09 18:46:05\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-09 18:46:05', 0, 112, 150, '5KF4kbVSun100', 1);
INSERT INTO `pe_photos` VALUES (101, 'Vue de Manhattan de Hoboken (1)', '', '1313531427Sjcr.jpg', 1313531427, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:09\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/4.8\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 00:08:52\n0x9004 : 2011:04:10 00:08:52\n0x9202 : 4.800000313301\n0x9204 : 0.00 (0/6)\n0x9205 : 4.5947934199881\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 00:08:52', 0, 150, 99, 'AfHKR84nJz101', 1);
INSERT INTO `pe_photos` VALUES (102, 'Moi et mon oncle Noel', '', '13135314282339.jpg', 1313531428, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:10\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/4.8\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 00:09:07\n0x9004 : 2011:04:10 00:09:07\n0x9202 : 4.800000313301\n0x9204 : 0.00 (0/6)\n0x9205 : 4.7568284600109\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 38.00 (380/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 57\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 00:09:07', 0, 150, 99, '49dF2esu3h102', 1);
INSERT INTO `pe_photos` VALUES (103, 'Vue de Manhattan de Hoboken (2)', '', '1313531428RTgt.jpg', 1313531428, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:11\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 00:10:10\n0x9004 : 2011:04:10 00:10:10\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 00:10:10', 0, 150, 99, 'af9GC7Htx1103', 1);
INSERT INTO `pe_photos` VALUES (104, 'Vue de Manhattan de Hoboken ', '', '13135314299RyD.jpg', 1313531429, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:12\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 00:10:16\n0x9004 : 2011:04:10 00:10:16\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 00:10:16', 0, 150, 99, 'mzjMvpCMFM104', 1);
INSERT INTO `pe_photos` VALUES (105, 'Time Square ', '', '13135314297H7U.jpg', 1313531430, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:14\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 01:08:11\n0x9004 : 2011:04:10 01:08:11\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:08:11', 0, 150, 99, 'GmL4bTCUUg105', 1);
INSERT INTO `pe_photos` VALUES (106, 'Time Square', '', '1313531430nyVm.jpg', 1313531430, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:15\n0x829A :  0.025 s (1/40) (1/40)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 01:08:35\n0x9004 : 2011:04:10 01:08:35\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:08:35', 0, 150, 99, 'GsFw8b2AoG106', 1);
INSERT INTO `pe_photos` VALUES (107, 'Hard Rock cafÃ© Ã  Time Square ', '', '1313531431GQ0H.jpg', 1313531431, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:16\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/5.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 01:11:51\n0x9004 : 2011:04:10 01:11:51\n0x9202 : 5.3000005155061\n0x9204 : 0.00 (0/6)\n0x9205 : 5.098242509277\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 42.00 (420/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 63\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:11:51', 0, 150, 99, 'LdA7fVqpku107', 1);
INSERT INTO `pe_photos` VALUES (108, 'Time Square ', '', '1313531431Jt7P.jpg', 1313531432, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:17\n0x829A :  0.025 s (1/40) (1/40)\n0x829D : f/5.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 01:12:18\n0x9004 : 2011:04:10 01:12:18\n0x9202 : 5.3000005155061\n0x9204 : 0.00 (0/6)\n0x9205 : 5.098242509277\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 42.00 (420/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 63\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:12:18', 0, 99, 150, '9ftUhITaJx108', 1);
INSERT INTO `pe_photos` VALUES (109, 'Time Square (5)', '', '1313532247IVrK.jpg', 1313532247, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:47\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 01:14:54\n0x9004 : 2011:04:10 01:14:54\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:14:54', 0, 99, 150, 'y7bnrTqLO2109', 1);
INSERT INTO `pe_photos` VALUES (110, ' Taxis Ã  Time Square (1)', '', '1313532247etJJ.jpg', 1313532248, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:48\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 01:18:50\n0x9004 : 2011:04:10 01:18:50\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:18:50', 0, 150, 130, 'Ng03I1A8Sd110', 1);
INSERT INTO `pe_photos` VALUES (111, 'Taxis Ã  Time Square (2)', '', '1313532248Hfow.jpg', 1313532248, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:49\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 01:18:52\n0x9004 : 2011:04:10 01:18:52\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:18:52', 0, 127, 150, 'Vb9EsFEcSM111', 1);
INSERT INTO `pe_photos` VALUES (112, 'Gaela Ã  Time Square', '', '1313532249qUvV.jpg', 1313532249, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:50\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 01:18:55\n0x9004 : 2011:04:10 01:18:55\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 0.60 (60/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:18:55', 0, 150, 106, 'juVvSct5Hw112', 1);
INSERT INTO `pe_photos` VALUES (113, 'Time Square (6)', '', '13135322494QHU.jpg', 1313532250, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:52\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:10 01:30:22\n0x9004 : 2011:04:10 01:30:22\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 4.7568284600109\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 38.00 (380/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 57\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:30:22', 0, 99, 150, 'EJlC1Iu7I2113', 1);
INSERT INTO `pe_photos` VALUES (114, 'Time Square (7)', '', '1313532250s8RU.jpg', 1313532250, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:53\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:10 01:32:44\n0x9004 : 2011:04:10 01:32:44\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-10 01:32:44', 0, 99, 150, 'p6PrGaPnhw114', 1);
INSERT INTO `pe_photos` VALUES (115, 'Pot de margarine aux dimensions US', '', '1313532251F8ac.jpg', 1313532251, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:53\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:04:10 10:01:00\n0x9004 : 2011:04:10 10:01:00\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-10 10:01:00', 0, 150, 112, 'mylxn9iEcS115', 1);
INSERT INTO `pe_photos` VALUES (116, 'Marvel et ChloÃ© dans la cuisine', '', '1313532251pzrd.jpg', 1313532252, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:53\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:04:10 10:01:06\n0x9004 : 2011:04:10 10:01:06\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-10 10:01:06', 0, 150, 112, 'Hz8mw2faDt116', 1);
INSERT INTO `pe_photos` VALUES (117, 'ChloÃ©', '', '1313532252FaSz.jpg', 1313532252, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:54\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 500\n0x9000 : 0230\n0x9003 : 2011:04:10 10:01:20\n0x9004 : 2011:04:10 10:01:20\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-10 10:01:20', 0, 150, 112, 's2bLqyNhM7117', 1);
INSERT INTO `pe_photos` VALUES (118, 'Premier smoothie Starbuck dans le Macy''s', '', '1313532253HAVJ.jpg', 1313532254, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:54\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 125\n0x9000 : 0230\n0x9003 : 2011:04:10 14:01:10\n0x9004 : 2011:04:10 14:01:10\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-10 14:01:10', 0, 112, 150, 'uOszwc1npf118', 1);
INSERT INTO `pe_photos` VALUES (119, 'Deli dans Middle Town', '', '131353225428y9.jpg', 1313532254, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:54\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:04:10 16:33:43\n0x9004 : 2011:04:10 16:33:43\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-10 16:33:43', 0, 112, 150, 'SokUTQrdK0119', 1);
INSERT INTO `pe_photos` VALUES (120, 'ComÃ©dies musicales - Time Square', '', '1313532254Vqay.jpg', 1313532255, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:55\n0x829A :  0.008 s (1/120) (1/120)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:10 18:12:42\n0x9004 : 2011:04:10 18:12:42\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-10 18:12:42', 0, 150, 112, '0fcEFDp4OD120', 1);
INSERT INTO `pe_photos` VALUES (121, 'Ga Ã©tudie le plan', '', '1313532255OFen.jpg', 1313532255, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:55\n0x829A :  0.025 s (1/40) (1/40)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:10 18:13:12\n0x9004 : 2011:04:10 18:13:12\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-10 18:13:12', 0, 150, 112, 'U8L853JLns121', 1);
INSERT INTO `pe_photos` VALUES (122, 'Gaela Ã  Bryant Park ', '', '1313532256fyJU.jpg', 1313532256, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:56\n0x829A :  0.050 s (1/20) (1/20)\n0x829D : f/2.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:11 02:12:38\n0x9004 : 2011:04:11 02:12:38\n0x9202 : 2\n0x9204 : -0.67 (-4/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.19 (119/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 02:12:38', 0, 150, 104, 'BaeNPx2noE122', 1);
INSERT INTO `pe_photos` VALUES (123, 'Fontaine Bryant Park', '', '1313532256QDDo.jpg', 1313532257, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:57\n0x829A :  0.025 s (1/40) (1/40)\n0x829D : f/2.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:11 02:12:56\n0x9004 : 2011:04:11 02:12:56\n0x9202 : 2\n0x9204 : -0.67 (-4/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 02:12:56', 0, 150, 99, '2DFzBQuln6123', 1);
INSERT INTO `pe_photos` VALUES (124, 'Hall du World finantial center', '', '13135322576uA7.jpg', 1313532257, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:58\n0x829A :  0.008 s (1/120) (1/120)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:11 12:17:00\n0x9004 : 2011:04:11 12:17:00\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-11 12:17:00', 0, 150, 112, 'pii7nLQuOP124', 1);
INSERT INTO `pe_photos` VALUES (125, 'Helmsley Plaza - Isamu Noguchi''s Red Cube', '', '1313532258umDj.jpg', 1313532258, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:58\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:11 17:15:30\n0x9004 : 2011:04:11 17:15:30\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-11 17:15:30', 0, 112, 150, 'rvmPsjD1NS125', 1);
INSERT INTO `pe_photos` VALUES (126, 'Les fameux smoothies du financial district', '', '1313532258lKmS.jpg', 1313532259, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:58\n0x829A :  0.008 s (1/120) (1/120)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 100\n0x9000 : 0230\n0x9003 : 2011:04:11 17:19:19\n0x9004 : 2011:04:11 17:19:19\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-11 17:19:19', 0, 150, 112, '1TI8l5QDHe126', 1);
INSERT INTO `pe_photos` VALUES (127, 'humm', '', '1313532259tBes.jpg', 1313532259, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:59\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:11 17:21:39\n0x9004 : 2011:04:11 17:21:39\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-11 17:21:39', 0, 112, 150, '5nNeCUhc9g127', 1);
INSERT INTO `pe_photos` VALUES (128, 'Le WTC en reconstruction', '', '1313532260Azxr.jpg', 1313532260, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:00:59\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:11 17:25:53\n0x9004 : 2011:04:11 17:25:53\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-11 17:25:53', 0, 112, 150, 'MJkpgcFk0p128', 1);
INSERT INTO `pe_photos` VALUES (129, 'Gaela sur le ferry vers Liberty Island', '', '1313532260N3I1.jpg', 1313532260, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:01:00\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 20:28:28\n0x9004 : 2011:04:11 20:28:28\n0x9202 : 8\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 20:28:28', 0, 150, 99, 'xfx88UDDoa129', 1);
INSERT INTO `pe_photos` VALUES (130, 'La Skyline vue de Liberty Island', '', '1313532261rucT.jpg', 1313532261, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:01:01\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 20:30:18\n0x9004 : 2011:04:11 20:30:18\n0x9202 : 8\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 20:30:18', 0, 150, 53, 'EHhysSrMux130', 1);
INSERT INTO `pe_photos` VALUES (131, 'La Statue de la LibertÃ© (1)', '', '1313532261c94g.jpg', 1313532262, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:01:02\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 20:35:38\n0x9004 : 2011:04:11 20:35:38\n0x9202 : 8\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 20:35:38', 0, 110, 150, 'pTID2qd7Pm131', 1);
INSERT INTO `pe_photos` VALUES (132, 'De la "vraie" vinaigrette franÃ§aise !!', '', '1313532262fd0g.jpg', 1313532262, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:01:03\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/8.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:24:14\n0x9004 : 2011:04:11 21:24:14\n0x9202 : 8\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.47 (47/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:24:14', 0, 99, 150, 'ghF2xGGACt132', 1);
INSERT INTO `pe_photos` VALUES (133, 'La Statue de la LibertÃ© - queqlues chiffres', '', '1313532263hgJv.jpg', 1313532263, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:01:04\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:26:50\n0x9004 : 2011:04:11 21:26:50\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:26:50', 0, 72, 150, 'ysRpbOd7Te133', 1);
INSERT INTO `pe_photos` VALUES (134, 'American flag', '', '131353226346hB.jpg', 1313532263, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:01:05\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:36:25\n0x9004 : 2011:04:11 21:36:25\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Hard\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:36:25', 0, 150, 102, 'eT4RL4tHfa134', 1);
INSERT INTO `pe_photos` VALUES (135, 'La Statue de la LibertÃ© (2)', '', '1313532264Q23u.jpg', 1313532264, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:17 00:01:06\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:37:55\n0x9004 : 2011:04:11 21:37:55\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:37:55', 0, 99, 150, 'OIneNGezij135', 1);
INSERT INTO `pe_photos` VALUES (136, 'Quelque chose manque Ã  prÃ©sent', '', '1313532264ucTL.jpg', 1313532265, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:39\n0x829A :  0.001 s (1/2000) (1/2000)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:44:04\n0x9004 : 2011:04:11 21:44:04\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.41 (141/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:44:04', 0, 150, 98, 'jI2O7T5ebi136', 1);
INSERT INTO `pe_photos` VALUES (137, 'The Manhattan Skyline', '', '1313532265Av7z.jpg', 1313532265, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:40\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:44:17\n0x9004 : 2011:04:11 21:44:17\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Hard\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:44:17', 0, 150, 49, 'aVN20I7mMN137', 1);
INSERT INTO `pe_photos` VALUES (138, 'Gaela Ã  Liberty Island', '', '1313532265KtLK.jpg', 1313532266, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:41\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/9.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:45:26\n0x9004 : 2011:04:11 21:45:26\n0x9202 : 8.9999999910024\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:45:26', 0, 150, 99, 'UF1j5endRB138', 1);
INSERT INTO `pe_photos` VALUES (139, 'Jonathan Ã  Liberty Island', '', '1313532266Usya.jpg', 1313532266, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:43\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/9.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:46:24\n0x9004 : 2011:04:11 21:46:24\n0x9202 : 8.9999999910024\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:46:24', 0, 150, 72, '7FwetaSIe9139', 1);
INSERT INTO `pe_photos` VALUES (140, 'La Statue de la LibertÃ© ', '', '1313532266R74R.jpg', 1313532267, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:44\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/7.1\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:55:34\n0x9004 : 2011:04:11 21:55:34\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 4.2870938501452\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 31.00 (310/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 46\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:55:34', 0, 99, 150, 'T5iTKNpdmH140', 1);
INSERT INTO `pe_photos` VALUES (141, 'La Statue de la LibertÃ© (4)', '', '1313532267Muiv.jpg', 1313532267, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:45\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/7.1\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 21:55:55\n0x9004 : 2011:04:11 21:55:55\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 4.2870938501452\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 31.00 (310/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 46\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 21:55:55', 0, 150, 99, 'D3Eu7minn7141', 1);
INSERT INTO `pe_photos` VALUES (142, 'Le nouveau colosse', '', '1313532268xJU6.jpg', 1313532268, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:46\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/7.1\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 22:00:15\n0x9004 : 2011:04:11 22:00:15\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : 0.84 (84/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 22:00:15', 0, 150, 99, 'M71eOTqaUH142', 1);
INSERT INTO `pe_photos` VALUES (143, 'La Statue de la LibertÃ© (5)', '', '1313532268MIRM.jpg', 1313532268, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:47\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/7.1\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 22:01:25\n0x9004 : 2011:04:11 22:01:25\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 1.26 (126/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 22:01:25', 0, 99, 150, 's5uvndiNo3143', 1);
INSERT INTO `pe_photos` VALUES (144, 'La Statue de la LibertÃ© (6)', '', '1313532269cEls.jpg', 1313532269, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:48\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/7.1\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 22:03:48\n0x9004 : 2011:04:11 22:03:48\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Hard\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 22:03:48', 0, 150, 99, 'Mp0QFBzEsz144', 1);
INSERT INTO `pe_photos` VALUES (145, 'La Statue de la LibertÃ© (7)', '', '1313532270CkGK.jpg', 1313532270, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:50\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/7.1\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 22:06:22\n0x9004 : 2011:04:11 22:06:22\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 50.00 (500/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 75\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 22:06:22', 0, 150, 99, 'gTdtPTzkPg145', 1);
INSERT INTO `pe_photos` VALUES (146, 'La Statue de la LibertÃ© (8)', '', '13135322717n7r.jpg', 1313532271, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:51\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/7.1\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 22:06:29\n0x9004 : 2011:04:11 22:06:29\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 4.7568284600109\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 38.00 (380/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 57\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 22:06:29', 0, 150, 99, 'JxxR7msarr146', 1);
INSERT INTO `pe_photos` VALUES (147, 'Retour sur le Battery Park South Ferry', '', '1313532271qkCA.jpg', 1313532272, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:52\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/4.5\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 22:30:45\n0x9004 : 2011:04:11 22:30:45\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 4.4382778882714\n0x9206 : 0.60 (60/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 32.00 (320/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 48\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 22:30:45', 0, 150, 99, 'BRn6QfB7NB147', 1);
INSERT INTO `pe_photos` VALUES (148, 'Vue du ferry', '', '1313532272yGvl.jpg', 1313532272, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:53\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 22:54:25\n0x9004 : 2011:04:11 22:54:25\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 22:54:25', 0, 150, 99, 'F3dqCP92ai148', 1);
INSERT INTO `pe_photos` VALUES (149, 'Taureau en bronze d''Arturo di Modica sur Bowling green (Finantia', '', '1313532273TKAE.jpg', 1313532273, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:55\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:11 23:19:24\n0x9004 : 2011:04:11 23:19:24\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 4.4382778882714\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 51\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 23:19:24', 0, 150, 99, 'xpiFUGdf0f149', 1);
INSERT INTO `pe_photos` VALUES (150, 'Jonathan sur la 5e av (Finantial District)', '', '1313532273y5ab.jpg', 1313532274, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:56\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 360\n0x9000 : 0230\n0x9003 : 2011:04:11 23:21:44\n0x9004 : 2011:04:11 23:21:44\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 4.4382778882714\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : Yes\n0x920A : 34.00 (340/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 51\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 23:21:44', 0, 91, 150, 'RhA93FmHaI150', 1);
INSERT INTO `pe_photos` VALUES (151, 'Wall St.', '', '1313532274613y.jpg', 1313532274, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:57\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:11 23:25:17\n0x9004 : 2011:04:11 23:25:17\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 23:25:17', 0, 150, 118, 'lIRJLOuqjS151', 1);
INSERT INTO `pe_photos` VALUES (152, 'Wall St.', '', '13135322757y9Q.jpg', 1313532275, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:58\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/4.5\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:11 23:27:16\n0x9004 : 2011:04:11 23:27:16\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 4.2870938501452\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : Yes\n0x920A : 31.00 (310/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 46\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 23:27:16', 0, 106, 150, 'gviEyEqzcw152', 1);
INSERT INTO `pe_photos` VALUES (153, 'Cops in Broad St.', '', '131353227640jN.jpg', 1313532276, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:59\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/3.5\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:11 23:28:47\n0x9004 : 2011:04:11 23:28:47\n0x9202 : 3.5000001890894\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : Yes\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 23:28:47', 0, 107, 150, 'fdmRfnPAwJ153', 1);
INSERT INTO `pe_photos` VALUES (154, 'Statue de Georges Washington au Federal Hall (Financial District', '', '1313532276Ibwz.jpg', 1313532276, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:15:59\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:11 23:29:45\n0x9004 : 2011:04:11 23:29:45\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 4.7568284600109\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 38.00 (380/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 57\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 23:29:45', 0, 90, 150, 'Iiyc8QLAyg154', 1);
INSERT INTO `pe_photos` VALUES (155, 'New York Stock Exchange', '', '1313532277g8oJ.jpg', 1313532277, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:00\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:11 23:31:49\n0x9004 : 2011:04:11 23:31:49\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 23:31:49', 0, 99, 150, '8bycvRaDgs155', 1);
INSERT INTO `pe_photos` VALUES (156, 'No comment...', '', '1313532277NDpp.jpg', 1313532278, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:01\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/5.3\n0x8822 : Program (auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:11 23:33:39\n0x9004 : 2011:04:11 23:33:39\n0x9202 : 5.3000005155061\n0x9204 : 0.00 (0/6)\n0x9205 : 5.2780316430916\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 46.00 (460/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 69\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-11 23:33:39', 0, 150, 99, '84Lba8vi5h156', 1);
INSERT INTO `pe_photos` VALUES (157, 'Vue de l''Empire State Buidling by night (1)', '', '1313532278IA5a.jpg', 1313532278, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:02\n0x829A :  0.500 s (1/2) (1/2)\n0x829D : f/4.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 03:26:27\n0x9004 : 2011:04:12 03:26:27\n0x9202 : 4.800000313301\n0x9204 : 0.00 (0/6)\n0x9205 : 4.7568284600109\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 38.00 (380/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 57\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 03:26:27', 0, 150, 99, 'RVAVsIDNBL157', 1);
INSERT INTO `pe_photos` VALUES (158, 'Vue de l''Empire State Buidling by night - sud ', '', '1313532279blqF.jpg', 1313532279, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:04\n0x829A :  0.500 s (1/2) (1/2)\n0x829D : f/4.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 03:29:55\n0x9004 : 2011:04:12 03:29:55\n0x9202 : 4.800000313301\n0x9204 : 0.00 (0/6)\n0x9205 : 4.7568284600109\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 38.00 (380/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 57\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 03:29:55', 0, 150, 99, 'GSfut8iusH158', 1);
INSERT INTO `pe_photos` VALUES (159, 'Vue de l''Empire State Buidling by night - sud (2)', '', '131353227959Uc.jpg', 1313532280, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:05\n0x829A :  0.400 s (4/10) (1/3)\n0x829D : f/4.5\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 03:30:45\n0x9004 : 2011:04:12 03:30:45\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 03:30:45', 0, 150, 99, 'Heegsti7SI159', 1);
INSERT INTO `pe_photos` VALUES (160, 'Vue de l''Empire State Buidling by night - est (1)', '', '1313532280AJcb.jpg', 1313532280, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:06\n0x829A :  0.500 s (1/2) (1/2)\n0x829D : f/4.5\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 03:32:30\n0x9004 : 2011:04:12 03:32:30\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 03:32:30', 0, 150, 99, '5tdDhOv3iq160', 1);
INSERT INTO `pe_photos` VALUES (161, 'Vue de l''Empire State Buidling by night - est ', '', '1313532281E6lN.jpg', 1313532281, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:07\n0x829A :  0.500 s (1/2) (1/2)\n0x829D : f/4.5\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 03:32:48\n0x9004 : 2011:04:12 03:32:48\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 03:32:48', 0, 150, 99, 'KVTG3TbuzI161', 1);
INSERT INTO `pe_photos` VALUES (162, '6th avenue', '', '1313532281EUzD.jpg', 1313532282, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:07\n0x829A :  0.008 s (1/120) (1/120)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:12 11:10:09\n0x9004 : 2011:04:12 11:10:09\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-12 11:10:09', 0, 112, 150, 'LBEnobKyA9162', 1);
INSERT INTO `pe_photos` VALUES (163, 'Apple store sur la 5e avenue', '', '1313532282M1r3.jpg', 1313532282, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:08\n0x829A :  0.006 s (1/170) (1/170)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:12 12:33:57\n0x9004 : 2011:04:12 12:33:57\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-12 12:33:57', 0, 150, 112, 'GAIUL3Qz6O163', 1);
INSERT INTO `pe_photos` VALUES (164, 'EntrÃ©e du Metropolitan Museum', '', '1313532283kulJ.jpg', 1313532283, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:08\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:12 13:59:19\n0x9004 : 2011:04:12 13:59:19\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-12 13:59:19', 0, 150, 112, '0Knkp7Ud8k164', 1);
INSERT INTO `pe_photos` VALUES (165, 'Choco cookie aprÃ¨s le MET', '', '1313532283hpnb.jpg', 1313532283, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:08\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:12 17:50:30\n0x9004 : 2011:04:12 17:50:30\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-12 17:50:30', 0, 112, 150, '5f6daBBLHn165', 1);
INSERT INTO `pe_photos` VALUES (166, 'MET museum - Egypt ', '', '1313532284y6wA.jpg', 1313532284, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:09\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/1.8\n0x8822 : Reserved\n0x8827 : 800\n0x9000 : 0230\n0x9003 : 2011:04:12 20:41:57\n0x9004 : 2011:04:12 20:41:57\n0x9202 : 1.8000001165881\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 20:41:57', 0, 99, 150, '5rHSCxkyti166', 1);
INSERT INTO `pe_photos` VALUES (167, 'MET museum - Egypt (2)', '', '1313532284y4Ep.jpg', 1313532285, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:10\n0x829A :  0.050 s (1/20) (1/20)\n0x829D : f/2.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 20:43:46\n0x9004 : 2011:04:12 20:43:46\n0x9202 : 2\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 20:43:46', 0, 99, 150, 'hQj6FyKgSa167', 1);
INSERT INTO `pe_photos` VALUES (168, 'MET museum - Egypt (3)', '', '13135322861vCT.jpg', 1313532288, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:11\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 20:45:59\n0x9004 : 2011:04:12 20:45:59\n0x9202 : 2\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 20:45:59', 0, 99, 150, 'EH3lVx778H168', 1);
INSERT INTO `pe_photos` VALUES (169, 'MET museum - Egypt (4)', '', '1313532288Rg6N.jpg', 1313532288, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:12\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 20:52:01\n0x9004 : 2011:04:12 20:52:01\n0x9202 : 2\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 20:52:01', 0, 99, 150, 'qfkLOKTaw2169', 1);
INSERT INTO `pe_photos` VALUES (170, 'MET museum - Egypt (5)', '', '1313532289czeC.jpg', 1313532289, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:14\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/2.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 20:53:08\n0x9004 : 2011:04:12 20:53:08\n0x9202 : 2\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 20:53:08', 0, 150, 99, 'usTVoOGuvU170', 1);
INSERT INTO `pe_photos` VALUES (171, 'MET museum - Egypt ', '', '1313532289rFsU.jpg', 1313532290, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:14\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 20:54:51\n0x9004 : 2011:04:12 20:54:51\n0x9202 : 2\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 20:54:51', 0, 150, 99, 'hJuIzisRdg171', 1);
INSERT INTO `pe_photos` VALUES (172, 'MET museum - Egypt (7)', '', '1313532292AjK7.jpg', 1313532292, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:16\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/3.2\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 20:57:39\n0x9004 : 2011:04:12 20:57:39\n0x9202 : 3.2000002104669\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 20:57:39', 0, 150, 99, 'ldMnFQhGKu172', 1);
INSERT INTO `pe_photos` VALUES (173, 'MET museum - Temple de Dendur ', '', '1313532292SjVN.jpg', 1313532293, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:17\n0x829A :  0.025 s (1/40) (1/40)\n0x829D : f/3.2\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 20:58:50\n0x9004 : 2011:04:12 20:58:50\n0x9202 : 3.2000002104669\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 20:58:50', 0, 99, 150, '9aAVUPs5UI173', 1);
INSERT INTO `pe_photos` VALUES (174, 'MET museum - Temple de Dendur (2)', '', '1313532293SeFV.jpg', 1313532293, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:18\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/3.2\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 20:59:49\n0x9004 : 2011:04:12 20:59:49\n0x9202 : 3.2000002104669\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 20:59:49', 0, 99, 150, 'oNA75RfNnk174', 1);
INSERT INTO `pe_photos` VALUES (175, 'MET museum - Statue en bronze de Diane', '', '1313532294fxgC.jpg', 1313532294, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:19\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/3.2\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:26:42\n0x9004 : 2011:04:12 21:26:42\n0x9202 : 3.2000002104669\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:26:42', 0, 99, 150, '32NnriSCfE175', 1);
INSERT INTO `pe_photos` VALUES (176, 'MET museum - Perseus avec la tÃªte de Medusa (Canova)', '', '1313532294Nv8t.jpg', 1313532294, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:20\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/3.2\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:42:50\n0x9004 : 2011:04:12 21:42:50\n0x9202 : 3.2000002104669\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:42:50', 0, 150, 114, 'VBcBd4a5mH176', 1);
INSERT INTO `pe_photos` VALUES (177, 'DSC_0158', '', '1313532295T0Eb.jpg', 1313532295, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:21\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/4.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:44:46\n0x9004 : 2011:04:12 21:44:46\n0x9202 : 4\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:44:46', 0, 99, 150, 'T41UoCgeqt177', 1);
INSERT INTO `pe_photos` VALUES (178, 'DSC_0160', '', '1313532295uTUu.jpg', 1313532296, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:23\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:46:49\n0x9004 : 2011:04:12 21:46:49\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:46:49', 0, 99, 150, 'HtuzBEl7Rt178', 1);
INSERT INTO `pe_photos` VALUES (179, 'DSC_0161', '', '1313532296454M.jpg', 1313532296, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:24\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:48:03\n0x9004 : 2011:04:12 21:48:03\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.60 (60/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:48:03', 0, 150, 99, 'wDMI2E1tGe179', 1);
INSERT INTO `pe_photos` VALUES (180, 'DSC_0163', '', '1313532296NOMy.jpg', 1313532297, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:25\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:49:50\n0x9004 : 2011:04:12 21:49:50\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.19 (119/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:49:50', 0, 99, 150, 'Sslt3oCcoz180', 1);
INSERT INTO `pe_photos` VALUES (181, 'DSC_0164', '', '1313532297raJk.jpg', 1313532297, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:26\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:51:38\n0x9004 : 2011:04:12 21:51:38\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.00 (100/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:51:38', 0, 111, 150, 'sSavLs1TnU181', 1);
INSERT INTO `pe_photos` VALUES (182, 'DSC_0165', '', '1313532298zyNz.jpg', 1313532298, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:27\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:57:42\n0x9004 : 2011:04:12 21:57:42\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:57:42', 0, 87, 150, 'gG2hkSBmhz182', 1);
INSERT INTO `pe_photos` VALUES (183, 'DSC_0166', '', '1313532298zAts.jpg', 1313532299, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:29\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:58:22\n0x9004 : 2011:04:12 21:58:22\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.89 (89/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:58:22', 0, 150, 99, 'kSHFcij08q183', 1);
INSERT INTO `pe_photos` VALUES (184, 'Departement des arts Afrique, Oceanie, AmÃ©riques', '', '1313532299nxvc.jpg', 1313532299, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:30\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:58:33\n0x9004 : 2011:04:12 21:58:33\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.60 (60/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:58:33', 0, 150, 108, 'EHd4rAh59U184', 1);
INSERT INTO `pe_photos` VALUES (185, 'DSC_0168', '', '1313532300PhOO.jpg', 1313532300, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:31\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:59:16\n0x9004 : 2011:04:12 21:59:16\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:59:16', 0, 150, 121, 'JTvQxnIDNl185', 1);
INSERT INTO `pe_photos` VALUES (186, 'DSC_0169', '', '1313532300wVx8.jpg', 1313532300, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:32\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 21:59:27\n0x9004 : 2011:04:12 21:59:27\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 21:59:27', 0, 150, 105, 'IcbK5tcv9F186', 1);
INSERT INTO `pe_photos` VALUES (187, 'Departement des arts Afrique, Oceanie, AmÃ©riques', '', '13135323010obp.jpg', 1313532302, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:33\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:00:11\n0x9004 : 2011:04:12 22:00:11\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.89 (89/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:00:11', 0, 99, 150, 'TcvqHJ8VgE187', 1);
INSERT INTO `pe_photos` VALUES (188, 'DSC_0171', '', '1313532302lcAb.jpg', 1313532303, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:35\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:01:59\n0x9004 : 2011:04:12 22:01:59\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.47 (47/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:01:59', 0, 150, 99, 'vVb2ryBLCU188', 1);
INSERT INTO `pe_photos` VALUES (189, 'DSC_0174', '', '1313532303tJsF.jpg', 1313532304, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:36\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:03:37\n0x9004 : 2011:04:12 22:03:37\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.63 (63/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:03:37', 0, 150, 86, 'M1hK33gzJe189', 1);
INSERT INTO `pe_photos` VALUES (190, 'Qui c''est ?', '', '1313532304qs00.jpg', 1313532305, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:37\n0x829A :  0.025 s (1/40) (1/40)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:04:23\n0x9004 : 2011:04:12 22:04:23\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.41 (141/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:04:23', 0, 150, 99, 'FGCFoNnDGU190', 1);
INSERT INTO `pe_photos` VALUES (191, 'DSC_0176', '', '1313532305h7bD.jpg', 1313532306, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:38\n0x829A :  0.025 s (1/40) (1/40)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:06:01\n0x9004 : 2011:04:12 22:06:01\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.89 (89/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:06:01', 0, 150, 99, 'm8BCwJteth191', 1);
INSERT INTO `pe_photos` VALUES (192, 'DSC_0177', '', '13135323067bpT.jpg', 1313532307, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:40\n0x829A :  0.025 s (1/40) (1/40)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:06:46\n0x9004 : 2011:04:12 22:06:46\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:06:46', 0, 99, 150, 'mv0OkOo4Gj192', 1);
INSERT INTO `pe_photos` VALUES (193, 'DSC_0178', '', '13135323073Au0.jpg', 1313532307, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:41\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:08:57\n0x9004 : 2011:04:12 22:08:57\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.41 (141/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:08:57', 0, 150, 99, 'ps8cRCGQ97193', 1);
INSERT INTO `pe_photos` VALUES (194, 'Instrument de musique !!', '', '1313532308vVFx.jpg', 1313532308, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:42\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:10:23\n0x9004 : 2011:04:12 22:10:23\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:10:23', 0, 99, 150, 'SUSyED0CwB194', 1);
INSERT INTO `pe_photos` VALUES (195, 'DSC_0180', '', '1313532308tgTL.jpg', 1313532308, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:44\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:10:42\n0x9004 : 2011:04:12 22:10:42\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:10:42', 0, 150, 99, '0Fqzh2NQUB195', 1);
INSERT INTO `pe_photos` VALUES (196, 'DSC_0181', '', '13135323098oS1.jpg', 1313532309, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:45\n0x829A :  0.077 s (1/13) (1/13)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:11:11\n0x9004 : 2011:04:12 22:11:11\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:11:11', 0, 150, 99, 'iUzHHoJ7UB196', 1);
INSERT INTO `pe_photos` VALUES (197, 'DSC_0183', '', '1313532309Ndc9.jpg', 1313532309, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:46\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:18:16\n0x9004 : 2011:04:12 22:18:16\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.47 (47/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:18:16', 0, 150, 99, 'GDBVPGP25v197', 1);
INSERT INTO `pe_photos` VALUES (198, 'DSC_0184', '', '1313532310cLhy.jpg', 1313532310, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:47\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:27:47\n0x9004 : 2011:04:12 22:27:47\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:27:47', 0, 99, 150, '4wLQQH84BC198', 1);
INSERT INTO `pe_photos` VALUES (199, 'PrÃ©lude Ã  la civilisation - Brauner', '', '1313532310wxSE.jpg', 1313532311, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:49\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 22:35:00\n0x9004 : 2011:04:12 22:35:00\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 22:35:00', 0, 150, 99, 's7zSUbvF3K199', 1);
INSERT INTO `pe_photos` VALUES (200, 'Les nymphÃ©a - Monet au Museum of Modern Art', '', '1313532311sIwC.jpg', 1313532311, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:50\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 23:05:33\n0x9004 : 2011:04:12 23:05:33\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 23:05:33', 0, 150, 99, 'Paole4iuM6200', 1);
INSERT INTO `pe_photos` VALUES (201, 'DSC_0187', '', '1313532312lmnI.jpg', 1313532312, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:52\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 800\n0x9000 : 0230\n0x9003 : 2011:04:12 23:11:06\n0x9004 : 2011:04:12 23:11:06\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 23:11:06', 0, 99, 150, 'QQ1t7ni5Fp201', 1);
INSERT INTO `pe_photos` VALUES (202, 'DSC_0188', '', '1313532312kyjn.jpg', 1313532313, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:53\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 800\n0x9000 : 0230\n0x9003 : 2011:04:12 23:11:20\n0x9004 : 2011:04:12 23:11:20\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 23:11:20', 0, 150, 99, 'xjA2IIR1ok202', 1);
INSERT INTO `pe_photos` VALUES (203, 'Plan du MET', '', '1313532313GdtB.jpg', 1313532313, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:54\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 23:11:47\n0x9004 : 2011:04:12 23:11:47\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.56 (56/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 23:11:47', 0, 150, 99, 'hKBeL7pSSF203', 1);
INSERT INTO `pe_photos` VALUES (204, 'DSC_0190', '', '1313532314Jduq.jpg', 1313532314, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:56\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 23:17:38\n0x9004 : 2011:04:12 23:17:38\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 23:17:38', 0, 99, 150, '8rJlwU9rhy204', 1);
INSERT INTO `pe_photos` VALUES (205, 'DSC_0191', '', '1313532314xoOc.jpg', 1313532315, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:57\n0x829A :  0.077 s (1/13) (1/13)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:12 23:18:32\n0x9004 : 2011:04:12 23:18:32\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-12 23:18:32', 0, 99, 150, 'cbzyi4oMyr205', 1);
INSERT INTO `pe_photos` VALUES (206, 'Bus dans NY', '', '1313532315RG2f.jpg', 1313532315, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:58\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 500\n0x9000 : 0230\n0x9003 : 2011:04:13 11:42:39\n0x9004 : 2011:04:13 11:42:39\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-13 11:42:39', 0, 150, 112, 'vr7bBkhVp8206', 1);
INSERT INTO `pe_photos` VALUES (207, 'Une vieille "croute" du MoMa', '', '1313532316OcLl.jpg', 1313532316, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:58\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 500\n0x9000 : 0230\n0x9003 : 2011:04:13 14:37:47\n0x9004 : 2011:04:13 14:37:47\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-13 14:37:47', 0, 112, 150, '3LLjnfuf1h207', 1);
INSERT INTO `pe_photos` VALUES (208, 'Bakery Grand Central Station', '', '1313532316il6C.jpg', 1313532316, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:59\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:13 17:31:38\n0x9004 : 2011:04:13 17:31:38\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-13 17:31:38', 0, 112, 150, 'cMnekS5sAg208', 1);
INSERT INTO `pe_photos` VALUES (209, 'Grand Central Station', '', '1313532317I31D.jpg', 1313532317, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:16:59\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 640\n0x9000 : 0230\n0x9003 : 2011:04:13 17:37:32\n0x9004 : 2011:04:13 17:37:32\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-13 17:37:32', 0, 112, 150, 'HtvgA1DEcP209', 1);
INSERT INTO `pe_photos` VALUES (210, 'Les demoiselles d''Avigon - Picasso', '', '13135323175ASc.jpg', 1313532318, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:00\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:13 18:55:24\n0x9004 : 2011:04:13 18:55:24\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-13 18:55:24', 0, 99, 150, 'I7rIzk2QT7210', 1);
INSERT INTO `pe_photos` VALUES (211, 'DSC_0193', '', '13135323182ro2.jpg', 1313532318, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:01\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:13 19:03:13\n0x9004 : 2011:04:13 19:03:13\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-13 19:03:13', 0, 150, 99, 'VfcEE1iNlP211', 1);
INSERT INTO `pe_photos` VALUES (212, 'Sculture de Boccioni', '', '1313532319T6bK.jpg', 1313532319, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:03\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/1.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:13 19:04:07\n0x9004 : 2011:04:13 19:04:07\n0x9202 : 1.8000001165881\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-13 19:04:07', 0, 99, 150, 'hMEhAxemlt212', 1);
INSERT INTO `pe_photos` VALUES (213, 'DSC_0196', '', '1313532319Po6w.jpg', 1313532320, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:05\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/1.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:13 19:04:57\n0x9004 : 2011:04:13 19:04:57\n0x9202 : 1.8000001165881\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.71 (71/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Hard\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-13 19:04:57', 0, 99, 150, 'R80D4pqIee213', 1);
INSERT INTO `pe_photos` VALUES (214, 'Sculture de Picasso', '', '1313532320lbSH.jpg', 1313532320, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:06\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/1.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:13 19:05:09\n0x9004 : 2011:04:13 19:05:09\n0x9202 : 1.8000001165881\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.53 (53/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-13 19:05:09', 0, 99, 150, 'sgPyTJivH5214', 1);
INSERT INTO `pe_photos` VALUES (215, 'DSC_0198', '', '1313532321Uwtn.jpg', 1313532321, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:07\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/1.8\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:13 19:06:07\n0x9004 : 2011:04:13 19:06:07\n0x9202 : 1.8000001165881\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-13 19:06:07', 0, 99, 150, 'bKgN5PH9RS215', 1);
INSERT INTO `pe_photos` VALUES (216, 'Greenwich village Ã  la tombÃ©e de la nuit', '', '1313532321ee4V.jpg', 1313532321, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:07\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 320\n0x9000 : 0230\n0x9003 : 2011:04:13 19:22:30\n0x9004 : 2011:04:13 19:22:30\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-13 19:22:30', 0, 112, 150, 'eK0U38STov216', 1);
INSERT INTO `pe_photos` VALUES (217, 'DSC_0199', '', '1313532322Q5e5.jpg', 1313532322, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:09\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/3.2\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:13 19:26:59\n0x9004 : 2011:04:13 19:26:59\n0x9202 : 3.2000002104669\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-13 19:26:59', 0, 99, 150, 'PJR6qTPVUP217', 1);
INSERT INTO `pe_photos` VALUES (218, 'Persistance de la mÃ©moire  - Dali', '', '1313532322Vg2C.jpg', 1313532323, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:10\n0x829A :  0.050 s (1/20) (1/20)\n0x829D : f/2.5\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:13 19:48:52\n0x9004 : 2011:04:13 19:48:52\n0x9202 : 2.4999998355727\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.19 (119/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-13 19:48:52', 0, 150, 99, 'VxMqJ5dbkg218', 1);
INSERT INTO `pe_photos` VALUES (219, 'Cocktail restau thaÃ¯', '', '1313532323pFjp.jpg', 1313532323, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:10\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:04:13 20:25:56\n0x9004 : 2011:04:13 20:25:56\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-13 20:25:56', 0, 150, 112, '4mPn986rJ8219', 1);
INSERT INTO `pe_photos` VALUES (220, 'Cocktail restau thaÃ¯', '', '1313532324esuV.jpg', 1313532324, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:11\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:04:13 20:27:16\n0x9004 : 2011:04:13 20:27:16\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-13 20:27:16', 0, 112, 150, '0UmMbUEa0m220', 1);
INSERT INTO `pe_photos` VALUES (221, 'Trajet Hoboken - 33Ã¨me avec le PATH', '', '1313532324feob.jpg', 1313532325, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:12\n0x829A :  0.000 s (1/2300) (1/2300)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:14 11:27:20\n0x9004 : 2011:04:14 11:27:20\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-14 11:27:20', 0, 112, 150, 'xAAmoTxqd3221', 1);
INSERT INTO `pe_photos` VALUES (222, 'Centre St. dans le Finantial District', '', '1313532325c5b2.jpg', 1313532325, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:12\n0x829A :  0.001 s (1/670) (1/670)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:14 14:29:58\n0x9004 : 2011:04:14 14:29:58\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-14 14:29:58', 0, 150, 112, 'bIuSoNsMbx222', 1);
INSERT INTO `pe_photos` VALUES (223, 'City Hall park (1)', '', '13135323250Tli.jpg', 1313532326, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:14\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 18:35:32\n0x9004 : 2011:04:14 18:35:32\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 18:35:32', 0, 99, 150, 'FBQLtGxuft223', 1);
INSERT INTO `pe_photos` VALUES (224, 'City Hall park ', '', '1313532326Gx4h.jpg', 1313532326, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:16\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 18:35:47\n0x9004 : 2011:04:14 18:35:47\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 18:35:47', 0, 99, 150, 'SUMnI39kNV224', 1);
INSERT INTO `pe_photos` VALUES (225, 'City Hall park (3)', '', '1313532327lMCB.jpg', 1313532327, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:17\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 18:36:05\n0x9004 : 2011:04:14 18:36:05\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.6050018504433\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 20.00 (200/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 30\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 18:36:05', 0, 99, 150, 'SKUUtlcpAR225', 1);
INSERT INTO `pe_photos` VALUES (226, 'DSC_0205', '', '1313532327LCD0.jpg', 1313532328, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:18\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 18:40:35\n0x9004 : 2011:04:14 18:40:35\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 18:40:35', 0, 150, 99, 'b0f21SaE7y226', 1);
INSERT INTO `pe_photos` VALUES (227, 'DSC_0206', '', '1313532328vJQm.jpg', 1313532328, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:19\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 18:40:54\n0x9004 : 2011:04:14 18:40:54\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 18:40:54', 0, 150, 99, 'PtBUlQIV2m227', 1);
INSERT INTO `pe_photos` VALUES (228, 'DSC_0208', '', '1313532329xv5R.jpg', 1313532329, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:20\n0x829A :  0.000 s (1/4000) (1/4000)\n0x829D : f/7.1\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 18:46:04\n0x9004 : 2011:04:14 18:46:04\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 18:46:04', 0, 99, 150, 'TIbOwo7pOp228', 1);
INSERT INTO `pe_photos` VALUES (229, 'City hall', '', '1313532329r1yU.jpg', 1313532330, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:21\n0x829A :  0.000 s (1/4000) (1/4000)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 18:51:34\n0x9004 : 2011:04:14 18:51:34\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.8637453156994\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 24.00 (240/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 36\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 18:51:34', 0, 124, 150, 'qV12MiOjxk229', 1);
INSERT INTO `pe_photos` VALUES (230, 'Brooklin Bridge', '', '1313532330Hhqi.jpg', 1313532330, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:22\n0x829A :  0.000 s (1/4000) (1/4000)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 18:52:32\n0x9004 : 2011:04:14 18:52:32\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 18:52:32', 0, 150, 99, 'xce3pUJgK8230', 1);
INSERT INTO `pe_photos` VALUES (231, 'Chinatown (1)', '', '1313532330DCKI.jpg', 1313532331, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:23\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 18:57:54\n0x9004 : 2011:04:14 18:57:54\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.8637453156994\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 24.00 (240/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 36\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 18:57:54', 0, 99, 150, 'L5BnPR11tN231', 1);
INSERT INTO `pe_photos` VALUES (232, 'Statue de Confucius - entrÃ©e dans Chinatown', '', '1313532331hCqz.jpg', 1313532331, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:24\n0x829A :  0.001 s (1/2000) (1/2000)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 19:00:22\n0x9004 : 2011:04:14 19:00:22\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 19:00:22', 0, 99, 150, '9d5Umo3AtR232', 1);
INSERT INTO `pe_photos` VALUES (233, 'Etale Chinatown', '', '13135323329wtr.jpg', 1313532332, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:25\n0x829A :  0.001 s (1/2000) (1/2000)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 19:01:38\n0x9004 : 2011:04:14 19:01:38\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 19:01:38', 0, 150, 89, 'CfH1r1DoCn233', 1);
INSERT INTO `pe_photos` VALUES (234, 'Chinatown (2)', '', '1313532332roPy.jpg', 1313532333, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:27\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 19:01:54\n0x9004 : 2011:04:14 19:01:54\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 19:01:54', 0, 150, 99, 'xoHUqJgI1h234', 1);
INSERT INTO `pe_photos` VALUES (235, 'Etales Ã  Chinatown', '', '13135323336NNC.jpg', 1313532333, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:28\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 19:09:49\n0x9004 : 2011:04:14 19:09:49\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 1.26 (126/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 19:09:49', 0, 150, 99, 'PnVjtene4V235', 1);
INSERT INTO `pe_photos` VALUES (236, 'Chinatown (4)', '', '1313532334p9dk.jpg', 1313532334, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:29\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 19:11:50\n0x9004 : 2011:04:14 19:11:50\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 19:11:50', 0, 150, 99, 'mRtmpM8LPw236', 1);
INSERT INTO `pe_photos` VALUES (237, 'Chinatown', '', '1313532334BNeg.jpg', 1313532335, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:30\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 19:12:53\n0x9004 : 2011:04:14 19:12:53\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 19:12:53', 0, 99, 150, 'Ekwcbssnah237', 1);
INSERT INTO `pe_photos` VALUES (238, 'Chinatown (6)', '', '13135323359F3K.jpg', 1313532335, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:31\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:14 19:15:57\n0x9004 : 2011:04:14 19:15:57\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.7321319661472\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 23.00 (230/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 34\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-14 19:15:57', 0, 99, 150, 'xOzfoeRUHx238', 1);
INSERT INTO `pe_photos` VALUES (239, 'NY by night de Hoboken', '', '1313532335HGof.jpg', 1313532336, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:32\n0x829A :  0.400 s (4/10) (1/3)\n0x829D : f/3.5\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 04:57:57\n0x9004 : 2011:04:15 04:57:57\n0x9202 : 3.5000001890894\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 04:57:57', 0, 150, 99, 'NrOGLLFCMx239', 1);
INSERT INTO `pe_photos` VALUES (240, 'NY by night de Hoboken', '', '1313532336t2QM.jpg', 1313532336, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:33\n0x829A :  0.800 s (8/10)\n0x829D : f/4.5\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 05:02:02\n0x9004 : 2011:04:15 05:02:02\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 4.4382778882714\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 51\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 05:02:02', 0, 150, 99, 'k6aDtQvczS240', 1);
INSERT INTO `pe_photos` VALUES (241, 'PATH', '', '1313532337Uocw.jpg', 1313532337, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:34\n0x829A :  0.050 s (1/20) (1/20)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:15 11:07:48\n0x9004 : 2011:04:15 11:07:48\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-15 11:07:48', 0, 112, 150, 'RKD16plOVk241', 1);
INSERT INTO `pe_photos` VALUES (242, 'Geenwich village', '', '1313532337sDeB.jpg', 1313532338, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:34\n0x829A :  0.025 s (1/40) (1/40)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:15 17:32:51\n0x9004 : 2011:04:15 17:32:51\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-15 17:32:51', 0, 112, 150, 'CE4t892a3N242', 1);
INSERT INTO `pe_photos` VALUES (243, 'Marvel et John', '', '13135323387Bxp.jpg', 1313532338, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:35\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 500\n0x9000 : 0230\n0x9003 : 2011:04:15 20:58:53\n0x9004 : 2011:04:15 20:58:53\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : Yes\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-15 20:58:53', 0, 150, 112, 'pItxP2PPwB243', 1);
INSERT INTO `pe_photos` VALUES (244, 'MusÃ©e d''histoires naturelles', '', '1313532338bUoG.jpg', 1313532339, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:36\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.5\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 21:10:39\n0x9004 : 2011:04:15 21:10:39\n0x9202 : 2.4999998355727\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:10:39', 0, 150, 99, 'QLhhEs0ERc244', 1);
INSERT INTO `pe_photos` VALUES (245, 'DSC_0233', '', '13135323391utc.jpg', 1313532339, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:38\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/2.5\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 21:11:07\n0x9004 : 2011:04:15 21:11:07\n0x9202 : 2.4999998355727\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:11:07', 0, 150, 99, 'ncfqSuTF99245', 1);
INSERT INTO `pe_photos` VALUES (246, 'MusÃ©e d''histoires naturelles', '', '1313532340zCbr.jpg', 1313532340, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:39\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.5\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 21:12:47\n0x9004 : 2011:04:15 21:12:47\n0x9202 : 2.4999998355727\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:12:47', 0, 99, 150, 'F62zfDc41p246', 1);
INSERT INTO `pe_photos` VALUES (247, 'MusÃ©e d''histoires naturelles', '', '1313532340MCvi.jpg', 1313532341, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:40\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/2.5\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 21:14:35\n0x9004 : 2011:04:15 21:14:35\n0x9202 : 2.4999998355727\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:14:35', 0, 150, 99, 'qdcPpDTKk8247', 1);
INSERT INTO `pe_photos` VALUES (248, 'MusÃ©e d''histoires naturelles', '', '13135323415hau.jpg', 1313532342, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:41\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.5\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 21:18:39\n0x9004 : 2011:04:15 21:18:39\n0x9202 : 2.4999998355727\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.00 (100/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:18:39', 0, 150, 99, 'Q54jMJUtm1248', 1);
INSERT INTO `pe_photos` VALUES (249, 'Homard', '', '1313532342ioVJ.jpg', 1313532342, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:41\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:15 21:25:02\n0x9004 : 2011:04:15 21:25:02\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : Yes\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-15 21:25:02', 0, 150, 112, 'V3w3k3azcP249', 1);
INSERT INTO `pe_photos` VALUES (250, 'Gaela donne Ã  manger au T-rex', '', '1313532342MOVh.jpg', 1313532343, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:42\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.5\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 21:25:27\n0x9004 : 2011:04:15 21:25:27\n0x9202 : 2.4999998355727\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:25:27', 0, 150, 99, 'MFdrBhokO2250', 1);
INSERT INTO `pe_photos` VALUES (251, 'T-rex', '', '1313532343BUnO.jpg', 1313532343, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:43\n0x829A :  0.050 s (1/20) (1/20)\n0x829D : f/4.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 21:29:34\n0x9004 : 2011:04:15 21:29:34\n0x9202 : 4\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:29:34', 0, 150, 99, 'atylAdvNj6251', 1);
INSERT INTO `pe_photos` VALUES (252, 'T-rex', '', '13135323441aEB.jpg', 1313532344, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:44\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/4.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 21:30:13\n0x9004 : 2011:04:15 21:30:13\n0x9202 : 4\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:30:13', 0, 150, 99, 'LHlgLjnfGd252', 1);
INSERT INTO `pe_photos` VALUES (253, 'Hadrosaures (enfin, je crois...)', '', '1313532344Hygy.jpg', 1313532344, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:45\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.2\n0x8822 : Program (auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 21:37:55\n0x9004 : 2011:04:15 21:37:55\n0x9202 : 2.1999999637832\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:37:55', 0, 99, 150, 'Q9yRPKMJcC253', 1);
INSERT INTO `pe_photos` VALUES (254, 'Hadrosaures (enfin, je crois...)', '', '1313532345PQ1B.jpg', 1313532345, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:46\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.5\n0x8822 : Program (auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 21:39:12\n0x9004 : 2011:04:15 21:39:12\n0x9202 : 2.4999998355727\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:39:12', 0, 99, 150, 'DHL6d8PHIV254', 1);
INSERT INTO `pe_photos` VALUES (255, 'Triceratops', '', '1313532345VH32.jpg', 1313532346, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:48\n0x829A :  0.050 s (1/20) (1/20)\n0x829D : f/2.2\n0x8822 : Program (auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 21:40:58\n0x9004 : 2011:04:15 21:40:58\n0x9202 : 2.1999999637832\n0x9204 : -0.33 (-2/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:40:58', 0, 99, 150, 'xvbQm64xVc255', 1);
INSERT INTO `pe_photos` VALUES (256, 'Vue de central park', '', '1313532346roCV.jpg', 1313532347, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:49\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/9.0\n0x8822 : Program (auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 21:42:50\n0x9004 : 2011:04:15 21:42:50\n0x9202 : 8.9999999910024\n0x9204 : -0.33 (-2/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:42:50', 0, 150, 99, 'SIyCrTDLgd256', 1);
INSERT INTO `pe_photos` VALUES (257, 'Vue de central park du musÃ©e', '', '1313532347O7f2.jpg', 1313532347, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:51\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Program (auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 21:43:31\n0x9004 : 2011:04:15 21:43:31\n0x9202 : 8\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:43:31', 0, 99, 150, '9wBe8gAx1K257', 1);
INSERT INTO `pe_photos` VALUES (258, 'Les vacanciers au musÃ©e', '', '1313532347jAq0.jpg', 1313532348, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:52\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/2.8\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 21:45:00\n0x9004 : 2011:04:15 21:45:00\n0x9202 : 2.8000003354301\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.53 (53/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:45:00', 0, 150, 99, 'qxfHLwzPja258', 1);
INSERT INTO `pe_photos` VALUES (259, 'Mammouth', '', '1313532348FhOj.jpg', 1313532348, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:53\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/3.2\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:15 21:49:00\n0x9004 : 2011:04:15 21:49:00\n0x9202 : 3.2000002104669\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 21:49:00', 0, 150, 99, 'Ews24jl5jf259', 1);
INSERT INTO `pe_photos` VALUES (260, 'Cheescake', '', '1313532349Ahro.jpg', 1313532349, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:53\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:15 22:08:58\n0x9004 : 2011:04:15 22:08:58\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : Yes\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-15 22:08:58', 0, 150, 112, 'zsPPvbtsGt260', 1);
INSERT INTO `pe_photos` VALUES (261, 'Restaurant Class Ã  Hoboken avec vue dur Manhattan', '', '1313532349SjHJ.jpg', 1313532350, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:53\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:04:15 22:24:03\n0x9004 : 2011:04:15 22:24:03\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-15 22:24:03', 0, 150, 112, '2Sroq3dTGV261', 1);
INSERT INTO `pe_photos` VALUES (262, 'Devanture du musÃ©e d''histoire naturelle en construction', '', '1313532350Ut8A.jpg', 1313532350, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:55\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:25:10\n0x9004 : 2011:04:15 22:25:10\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:25:10', 0, 99, 150, 'mssC1taa53262', 1);
INSERT INTO `pe_photos` VALUES (263, 'Central Park', '', '13135323518Arb.jpg', 1313532351, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:56\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:30:37\n0x9004 : 2011:04:15 22:30:37\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:30:37', 0, 99, 150, 'x2pdrK7F08263', 1);
INSERT INTO `pe_photos` VALUES (264, 'Central Park - Le reservoir', '', '1313532351b75h.jpg', 1313532352, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:57\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:31:22\n0x9004 : 2011:04:15 22:31:22\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:31:22', 0, 150, 99, 'TtxDGVDORz264', 1);
INSERT INTO `pe_photos` VALUES (265, 'Central Park - Le reservoir', '', '1313532352yQJj.jpg', 1313532352, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:58\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:33:16\n0x9004 : 2011:04:15 22:33:16\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:33:16', 0, 150, 99, 'RCpDbDjG2z265', 1);
INSERT INTO `pe_photos` VALUES (266, 'Central Park - Le reservoir', '', '1313532352raG8.jpg', 1313532353, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:17:59\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:34:09\n0x9004 : 2011:04:15 22:34:09\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:34:09', 0, 150, 99, 'Q1SEnMFup2266', 1);
INSERT INTO `pe_photos` VALUES (267, 'Ecureuil Ã  Central Park', '', '13135323531md3.jpg', 1313532353, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:00\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:35:30\n0x9004 : 2011:04:15 22:35:30\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.41 (141/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Hard\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:35:30', 0, 150, 99, '01Lzu4nuar267', 1);
INSERT INTO `pe_photos` VALUES (268, 'The lake - Central Park', '', '1313532354yc8O.jpg', 1313532354, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:02\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:37:41\n0x9004 : 2011:04:15 22:37:41\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:37:41', 0, 150, 99, 'GUAEoU0hdy268', 1);
INSERT INTO `pe_photos` VALUES (269, 'DSC_0271', '', '1313532354A5nh.jpg', 1313532354, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:03\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:46:31\n0x9004 : 2011:04:15 22:46:31\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:46:31', 0, 150, 99, 'sfQny0h77c269', 1);
INSERT INTO `pe_photos` VALUES (270, 'Marvel et Gaela', '', '1313532355xBHK.jpg', 1313532355, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:04\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:04:15 22:50:22\n0x9004 : 2011:04:15 22:50:22\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : Yes\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-15 22:50:22', 0, 150, 112, '5PTw4agJrL270', 1);
INSERT INTO `pe_photos` VALUES (271, 'La classe amÃ©ricaine', '', '13135323550tbT.jpg', 1313532356, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:05\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:56:34\n0x9004 : 2011:04:15 22:56:34\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 0.79 (79/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:56:34', 0, 150, 107, 'CU8AtB3pyl271', 1);
INSERT INTO `pe_photos` VALUES (272, 'Jet d''eau Ã  Central Park', '', '1313532356G3qc.jpg', 1313532356, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:06\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 22:57:11\n0x9004 : 2011:04:15 22:57:11\n0x9202 : 7.0999998788497\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 2.51 (251/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 22:57:11', 0, 150, 99, 'br5to5D76U272', 1);
INSERT INTO `pe_photos` VALUES (273, 'Central Park ', '', '1313532357AL9K.jpg', 1313532357, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:07\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/14.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 23:01:42\n0x9004 : 2011:04:15 23:01:42\n0x9202 : 14.000000756358\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 23:01:42', 0, 150, 99, 'U0CjmPPrE8273', 1);
INSERT INTO `pe_photos` VALUES (274, 'Central Park ', '', '1313532357pCqL.jpg', 1313532358, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:07\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/14.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 23:02:07\n0x9004 : 2011:04:15 23:02:07\n0x9202 : 14.000000756358\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 23:02:07', 0, 150, 99, 'qa8FDy68sR274', 1);
INSERT INTO `pe_photos` VALUES (275, 'Jet d''eau Ã  Central Park', '', '1313532358U7c4.jpg', 1313532358, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:08\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/16.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 23:02:38\n0x9004 : 2011:04:15 23:02:38\n0x9202 : 16\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Hard\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 23:02:38', 0, 150, 99, '4Or7akOaq8275', 1);
INSERT INTO `pe_photos` VALUES (276, 'Jon Ã  Central Park', '', '1313532359uanK.jpg', 1313532359, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:09\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 23:03:14\n0x9004 : 2011:04:15 23:03:14\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 3.76 (376/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 23:03:14', 0, 150, 99, 'OEvmnFfVnk276', 1);
INSERT INTO `pe_photos` VALUES (277, 'Central Park ', '', '13135323597F9R.jpg', 1313532360, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:10\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/10.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 23:03:39\n0x9004 : 2011:04:15 23:03:39\n0x9202 : 9.9999993422909\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 23:03:39', 0, 150, 99, 'SSpDBwz417277', 1);
INSERT INTO `pe_photos` VALUES (278, 'Runners Ã  Central Park', '', '1313532360PrdA.jpg', 1313532360, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:11\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/9.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 23:16:02\n0x9004 : 2011:04:15 23:16:02\n0x9202 : 8.9999999910024\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 23:16:02', 0, 150, 99, 'wGdr3RagpT278', 1);
INSERT INTO `pe_photos` VALUES (279, 'Croisement Fifth av - 72th', '', '1313532361FlSR.jpg', 1313532361, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:13\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/9.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:15 23:23:10\n0x9004 : 2011:04:15 23:23:10\n0x9202 : 8.9999999910024\n0x9204 : 0.00 (0/6)\n0x9205 : 1.7411011265922\n0x9206 : 1.78 (178/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 35.00 (350/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 52\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-15 23:23:10', 0, 150, 99, 'pHEOk3HNfB279', 1);
INSERT INTO `pe_photos` VALUES (280, 'Dollars', '', '131353236105DC.jpg', 1313532362, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:13\n0x829A :  0.008 s (1/120) (1/120)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 100\n0x9000 : 0230\n0x9003 : 2011:04:16 12:40:57\n0x9004 : 2011:04:16 12:40:57\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-16 12:40:57', 0, 150, 112, 'NTQOh7yzCC280', 1);
INSERT INTO `pe_photos` VALUES (281, 'MacDo sur la route de Boston', '', '1313532362Ozuu.jpg', 1313532362, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:13\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:04:16 13:39:45\n0x9004 : 2011:04:16 13:39:45\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-16 13:39:45', 0, 112, 150, 'Qh5sOPnDTI281', 1);
INSERT INTO `pe_photos` VALUES (282, 'Messe pour les athlÃ¨tes - Trinity church', '', '13135323630xBD.jpg', 1313532363, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:14\n0x829A :  0.003 s (1/350) (1/350)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:17 11:59:14\n0x9004 : 2011:04:17 11:59:14\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-17 11:59:14', 0, 150, 112, 'KxIGV6VduR282', 1);
INSERT INTO `pe_photos` VALUES (283, 'Bateau cygne du Public Garden', '', '1313532363bRvS.jpg', 1313532363, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:14\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:17 12:46:16\n0x9004 : 2011:04:17 12:46:16\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-17 12:46:16', 0, 150, 112, 'U7yIt4Dn4f283', 1);
INSERT INTO `pe_photos` VALUES (284, 'Beacon Hill', '', '1313532364Swej.jpg', 1313532364, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:14\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:17 13:26:21\n0x9004 : 2011:04:17 13:26:21\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-17 13:26:21', 0, 150, 112, '5KatmQrGeq284', 1);
INSERT INTO `pe_photos` VALUES (285, 'Statue de Christoph Colomb sur le waterfront de Boston', '', '1313532364m5a9.jpg', 1313532365, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:15\n0x829A :  0.001 s (1/900) (1/900)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:17 15:41:49\n0x9004 : 2011:04:17 15:41:49\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-17 15:41:49', 0, 112, 150, 'sr7xtpoy6Q285', 1);
INSERT INTO `pe_photos` VALUES (286, 'Harvard campus - Boston', '', '1313532365aUiG.jpg', 1313532365, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:16\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/4.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 16:51:39\n0x9004 : 2011:04:17 16:51:39\n0x9202 : 4\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 16:51:39', 0, 150, 99, 'IMUxA540Iz286', 1);
INSERT INTO `pe_photos` VALUES (287, 'Statue de John Bridges - Harvard square Cambridge common', '', '1313532366UNyS.jpg', 1313532366, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:17\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 16:51:54\n0x9004 : 2011:04:17 16:51:54\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 16:51:54', 0, 99, 150, 'cHyHP9tu9e287', 1);
INSERT INTO `pe_photos` VALUES (288, 'Campus Havard', '', '1313532366Ll4C.jpg', 1313532367, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:18\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/4.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 16:52:50\n0x9004 : 2011:04:17 16:52:50\n0x9202 : 4\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 16:52:50', 0, 99, 150, 's2ebs2fMCj288', 1);
INSERT INTO `pe_photos` VALUES (289, 'FacultÃ© de droit d''Harvard', '', '1313532367Ba3A.jpg', 1313532367, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:20\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 16:55:00\n0x9004 : 2011:04:17 16:55:00\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.098242509277\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 42.00 (420/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 63\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 16:55:00', 0, 150, 99, 'RdVTfCENG6289', 1);
INSERT INTO `pe_photos` VALUES (290, 'Campus Havard', '', '131353236815OF.jpg', 1313532368, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:21\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 16:55:47\n0x9004 : 2011:04:17 16:55:47\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 16:55:47', 0, 150, 99, 'bDEhFSLaQ9290', 1);
INSERT INTO `pe_photos` VALUES (291, 'DSC_0294', '', '1313532368gyTl.jpg', 1313532369, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:22\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 16:57:04\n0x9004 : 2011:04:17 16:57:04\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 16:57:04', 0, 150, 99, 'hgPASdtKee291', 1);
INSERT INTO `pe_photos` VALUES (292, 'Statue de John Harvard dans le campus', '', '13135323699fu6.jpg', 1313532369, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:23\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 17:05:18\n0x9004 : 2011:04:17 17:05:18\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 17:05:18', 0, 99, 150, 'HLcbMQIewu292', 1);
INSERT INTO `pe_photos` VALUES (293, 'Statue de John Harvard dans le campus', '', '1313532370IQHz.jpg', 1313532370, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:24\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 17:05:53\n0x9004 : 2011:04:17 17:05:53\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 17:05:53', 0, 150, 99, 'G9zbNGxLS7293', 1);
INSERT INTO `pe_photos` VALUES (294, 'Campus Havard', '', '13135323709F3m.jpg', 1313532370, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:25\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 17:09:49\n0x9004 : 2011:04:17 17:09:49\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 4.1410596953655\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 30.00 (300/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 45\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 17:09:49', 0, 99, 150, 'hjgbnDB9ss294', 1);
INSERT INTO `pe_photos` VALUES (295, 'Mini-mall connu des Ã©tudiants dans le centre de Cambridge', '', '13135323710uI1.jpg', 1313532371, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:26\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 17:19:07\n0x9004 : 2011:04:17 17:19:07\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 42\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 17:19:07', 0, 99, 150, 'TxtMt33bQ8295', 1);
INSERT INTO `pe_photos` VALUES (296, 'New old South Church - Boston', '', '1313532371ieRo.jpg', 1313532372, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:27\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:35:51\n0x9004 : 2011:04:17 18:35:51\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.7321319661472\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 23.00 (230/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 34\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:35:51', 0, 99, 150, 'nCAPgw8mFB296', 1);
INSERT INTO `pe_photos` VALUES (297, 'Arche d''arrivÃ©e du Marathon de Boston sur Boylton street', '', '1313532372lADy.jpg', 1313532372, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:29\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:36:22\n0x9004 : 2011:04:17 18:36:22\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:36:22', 0, 150, 99, 'wj5dwzQV2i297', 1);
INSERT INTO `pe_photos` VALUES (298, 'New old South Church - Boston', '', '1313532373LCk1.jpg', 1313532373, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:30\n0x829A :  0.100 s (1/10) (1/10)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:44:48\n0x9004 : 2011:04:17 18:44:48\n0x9202 : 3.5000001890894\n0x9204 : -1.00 (-6/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:44:48', 0, 150, 99, 'Fl47FlN2eF298', 1);
INSERT INTO `pe_photos` VALUES (299, 'New old South Church - Boston', '', '1313532373hvek.jpg', 1313532374, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:31\n0x829A :  0.250 s (1/4) (1/4)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:45:24\n0x9004 : 2011:04:17 18:45:24\n0x9202 : 3.5000001890894\n0x9204 : -1.00 (-6/6)\n0x9205 : 3.4822022531845\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:45:24', 0, 99, 150, 'y5CJ6ngjDk299', 1);
INSERT INTO `pe_photos` VALUES (300, 'John Hancock Tower', '', '1313532374PUGA.jpg', 1313532374, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:32\n0x829A :  0.000 s (1/4000) (1/4000)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:47:00\n0x9004 : 2011:04:17 18:47:00\n0x9202 : 3.5000001890894\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:47:00', 0, 99, 150, 'KyNmEMyxx8300', 1);
INSERT INTO `pe_photos` VALUES (301, 'Messe pour les marathoniens', '', '1313532374w09r.jpg', 1313532375, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:33\n0x829A :  0.001 s (1/2000) (1/2000)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:47:33\n0x9004 : 2011:04:17 18:47:33\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 4.2870938501452\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 31.00 (310/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 46\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:47:33', 0, 150, 99, '5CIg0m3QEi301', 1);
INSERT INTO `pe_photos` VALUES (302, 'DSC_0306', '', '1313532375oTT5.jpg', 1313532375, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:35\n0x829A :  0.000 s (1/2500) (1/2500)\n0x829D : f/4.8\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:48:54\n0x9004 : 2011:04:17 18:48:54\n0x9202 : 4.800000313301\n0x9204 : 0.00 (0/6)\n0x9205 : 4.7568284600109\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 38.00 (380/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 57\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:48:54', 0, 150, 99, 'T6wtsQs42v302', 1);
INSERT INTO `pe_photos` VALUES (303, 'John Hancock Tower', '', '1313532376IOkz.jpg', 1313532376, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:36\n0x829A :  0.000 s (1/4000) (1/4000)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:53:52\n0x9004 : 2011:04:17 18:53:52\n0x9202 : 3.5000001890894\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:53:52', 0, 150, 99, 'cglbRCnpeA303', 1);
INSERT INTO `pe_photos` VALUES (304, 'Devant Trinity church', '', '1313532376Jayt.jpg', 1313532377, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:37\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:54:01\n0x9004 : 2011:04:17 18:54:01\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:54:01', 0, 99, 150, 'yhlDKSQspc304', 1);
INSERT INTO `pe_photos` VALUES (305, 'Ruelle ', '', '1313532377fjTV.jpg', 1313532377, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:38\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/4.2\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 18:58:21\n0x9004 : 2011:04:17 18:58:21\n0x9202 : 4.2000005010457\n0x9204 : 0.00 (0/6)\n0x9205 : 4.1410596953655\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 30.00 (300/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 45\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 18:58:21', 0, 99, 150, 'woGwt9HhdE305', 1);
INSERT INTO `pe_photos` VALUES (306, 'Boston Public Garden', '', '1313532378aA8S.jpg', 1313532378, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:39\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:06:35\n0x9004 : 2011:04:17 19:06:35\n0x9202 : 3.5000001890894\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:06:35', 0, 150, 99, 'dM9LrmEHnL306', 1);
INSERT INTO `pe_photos` VALUES (307, 'Boston Public Garden', '', '1313532378tVTb.jpg', 1313532379, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:40\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/4.2\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:07:53\n0x9004 : 2011:04:17 19:07:53\n0x9202 : 4.2000005010457\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:07:53', 0, 150, 99, '4GeCHnOCre307', 1);
INSERT INTO `pe_photos` VALUES (308, 'Bateaux-cygne du Public Garden', '', '1313532379Iymy.jpg', 1313532379, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:41\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:09:13\n0x9004 : 2011:04:17 19:09:13\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:09:13', 0, 150, 99, '0E0eykTe86308', 1);
INSERT INTO `pe_photos` VALUES (309, 'Boston Public Garden', '', '1313532379cqPA.jpg', 1313532380, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:42\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:10:46\n0x9004 : 2011:04:17 19:10:46\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.7321319661472\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 23.00 (230/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 34\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:10:46', 0, 150, 99, 'm6f4kOMSh9309', 1);
INSERT INTO `pe_photos` VALUES (310, 'Statue de Washington au Public Garden', '', '1313532380EDSj.jpg', 1313532380, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:44\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:13:05\n0x9004 : 2011:04:17 19:13:05\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 42\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:13:05', 0, 99, 150, 'PcHKo4qbg1310', 1);
INSERT INTO `pe_photos` VALUES (311, 'Statue de Washington au Public Garden', '', '1313532381xGVR.jpg', 1313532381, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:45\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:13:12\n0x9004 : 2011:04:17 19:13:12\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 50.00 (500/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 75\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:13:12', 0, 99, 150, 'znJbil6dvC311', 1);
INSERT INTO `pe_photos` VALUES (312, 'Public Garden', '', '1313532382dw1H.jpg', 1313532382, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:46\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:15:57\n0x9004 : 2011:04:17 19:15:57\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:15:57', 0, 150, 99, '5J6lrLSnG3312', 1);
INSERT INTO `pe_photos` VALUES (313, 'On dirait pas il y a du soleil...', '', '13135323829jaM.jpg', 1313532383, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:47\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:16:14\n0x9004 : 2011:04:17 19:16:14\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.6050018504433\n0x9206 : 1.26 (126/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 20.00 (200/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 30\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:16:14', 0, 150, 99, 'NQH5I55jGi313', 1);
INSERT INTO `pe_photos` VALUES (314, 'Boston Common', '', '1313532383xVME.jpg', 1313532383, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:48\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:21:11\n0x9004 : 2011:04:17 19:21:11\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.8637453156994\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 24.00 (240/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 36\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:21:11', 0, 150, 99, 'GJNoJSIys7314', 1);
INSERT INTO `pe_photos` VALUES (315, 'Dans un pub Ã  Boston', '', '1313532384528O.jpg', 1313532384, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:49\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:04:17 19:25:45\n0x9004 : 2011:04:17 19:25:45\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : Yes\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-17 19:25:45', 0, 150, 112, 'cEOaftVFtC315', 1);
INSERT INTO `pe_photos` VALUES (316, 'Ecureuil du Common', '', '1313532384HNIj.jpg', 1313532384, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:50\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:37:08\n0x9004 : 2011:04:17 19:37:08\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Hard\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:37:08', 0, 150, 99, 'r0qOQH75fl316', 1);
INSERT INTO `pe_photos` VALUES (317, 'Ecureuil du Common de Boston', '', '1313532385NBje.jpg', 1313532385, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:51\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:37:14\n0x9004 : 2011:04:17 19:37:14\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Hard\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:37:14', 0, 150, 99, 'Kwn3saGMnw317', 1);
INSERT INTO `pe_photos` VALUES (318, 'State House Boston', '', '13135323855c6a.jpg', 1313532386, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:52\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:38:46\n0x9004 : 2011:04:17 19:38:46\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:38:46', 0, 150, 99, 'qr8GLVzaMR318', 1);
INSERT INTO `pe_photos` VALUES (319, 'Beacon Hill Louisburg Square', '', '1313532386elHK.jpg', 1313532386, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:53\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:57:55\n0x9004 : 2011:04:17 19:57:55\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:57:55', 0, 150, 99, 'LUxRqokEpS319', 1);
INSERT INTO `pe_photos` VALUES (320, 'Beacon Hill maison neo-classique', '', '1313532387uD3u.jpg', 1313532387, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:54\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:58:27\n0x9004 : 2011:04:17 19:58:27\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.6050018504433\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 20.00 (200/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 30\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:58:27', 0, 99, 150, 'hLfC1znbHf320', 1);
INSERT INTO `pe_photos` VALUES (321, 'Beacon Hill Louisburg Square', '', '1313532387zphJ.jpg', 1313532387, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:55\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 19:59:44\n0x9004 : 2011:04:17 19:59:44\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.6050018504433\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 22.00 (220/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 33\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 19:59:44', 0, 150, 99, 'gBo7SOtn1w321', 1);
INSERT INTO `pe_photos` VALUES (322, 'Beacon Hill Acorn street', '', '1313532388NIaw.jpg', 1313532388, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:56\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 20:03:40\n0x9004 : 2011:04:17 20:03:40\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 20:03:40', 0, 150, 99, 'BHqu24u2rL322', 1);
INSERT INTO `pe_photos` VALUES (323, 'Beacon Hill', '', '13135323885JML.jpg', 1313532389, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:57\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 20:04:23\n0x9004 : 2011:04:17 20:04:23\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 20:04:23', 0, 150, 99, 'uAultRki3f323', 1);
INSERT INTO `pe_photos` VALUES (324, 'Beacon Hill', '', '1313532389TLuH.jpg', 1313532389, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:18:59\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 20:04:40\n0x9004 : 2011:04:17 20:04:40\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 20:04:40', 0, 99, 150, '4iVrAxBhcd324', 1);
INSERT INTO `pe_photos` VALUES (325, 'Beacon Hill', '', '1313532390BTxx.jpg', 1313532390, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:01\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 20:04:50\n0x9004 : 2011:04:17 20:04:50\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 20:04:50', 0, 99, 150, 'En4qJa0yqq325', 1);
INSERT INTO `pe_photos` VALUES (326, 'Beacon Hill Acorn street', '', '1313532390Oxyg.jpg', 1313532391, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:03\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 20:06:15\n0x9004 : 2011:04:17 20:06:15\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 20:06:15', 0, 99, 150, 'qPxrHkNLHt326', 1);
INSERT INTO `pe_photos` VALUES (327, 'Retour en metro Ã  l''hotel', '', '1313532391EGR8.jpg', 1313532392, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:03\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 800\n0x9000 : 0230\n0x9003 : 2011:04:17 21:46:11\n0x9004 : 2011:04:17 21:46:11\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-17 21:46:11', 0, 150, 112, 'LGSwhPVpq6327', 1);
INSERT INTO `pe_photos` VALUES (328, 'Grande arche de Rowe''s Wharf', '', '1313532392fU1G.jpg', 1313532392, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:05\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 22:17:16\n0x9004 : 2011:04:17 22:17:16\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 22:17:16', 0, 150, 99, 'kd23x0Ug6R328', 1);
INSERT INTO `pe_photos` VALUES (329, 'Grande arche de Rowe''s Wharf', '', '1313532392LwBw.jpg', 1313532393, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:06\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 22:17:47\n0x9004 : 2011:04:17 22:17:47\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 22:17:47', 0, 99, 150, 'T6Oti6O77j329', 1);
INSERT INTO `pe_photos` VALUES (330, 'Rowe''s Wharf', '', '1313532393sA6i.jpg', 1313532393, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:07\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 22:18:32\n0x9004 : 2011:04:17 22:18:32\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 22:18:32', 0, 99, 150, 'ULb2SvexL3330', 1);
INSERT INTO `pe_photos` VALUES (331, 'Waterfront', '', '1313532394vEBn.jpg', 1313532394, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:08\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 22:19:13\n0x9004 : 2011:04:17 22:19:13\n0x9202 : 4.4999999955012\n0x9204 : 0.00 (0/6)\n0x9205 : 3.6050018504433\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 22.00 (220/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 33\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 22:19:13', 0, 99, 150, '54QH7ziHg5331', 1);
INSERT INTO `pe_photos` VALUES (332, 'Vue du somment du US Federal Defender''s Office', '', '13135323947fkP.jpg', 1313532395, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:09\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 22:29:10\n0x9004 : 2011:04:17 22:29:10\n0x9202 : 5.6000006708602\n0x9204 : -0.33 (-2/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 22:29:10', 0, 150, 99, 'VTGmnvUbA3332', 1);
INSERT INTO `pe_photos` VALUES (333, 'Vue du somment du US Federal Defender''s Office', '', '1313532395vhhC.jpg', 1313532395, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:10\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 22:29:25\n0x9004 : 2011:04:17 22:29:25\n0x9202 : 5.6000006708602\n0x9204 : -0.33 (-2/6)\n0x9205 : 3.6050018504433\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 20.00 (200/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 30\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 22:29:25', 0, 150, 99, 'O2dgumKpUn333', 1);
INSERT INTO `pe_photos` VALUES (334, 'Vue du somment du US Federal Defender''s Office', '', '13135323954kQP.jpg', 1313532396, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:11\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 22:33:29\n0x9004 : 2011:04:17 22:33:29\n0x9202 : 5.6000006708602\n0x9204 : -0.33 (-2/6)\n0x9205 : 3.4822022531845\n0x9206 : 1.26 (126/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 22:33:29', 0, 150, 99, 'wlxCiE6IIL334', 1);
INSERT INTO `pe_photos` VALUES (335, 'Vue du One Internationl Place Ã  gauche', '', '1313532396uDom.jpg', 1313532396, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:12\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:17 22:33:40\n0x9004 : 2011:04:17 22:33:40\n0x9202 : 5.6000006708602\n0x9204 : -0.33 (-2/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-17 22:33:40', 0, 150, 99, 'eDMdOHKMSl335', 1);
INSERT INTO `pe_photos` VALUES (336, 'Lire le mode d''emploi', '', '1313532397g2KP.jpg', 1313532397, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:13\n0x829A :  0.059 s (1/17) (1/17)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:17 22:56:31\n0x9004 : 2011:04:17 22:56:31\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-17 22:56:31', 0, 112, 150, 'bvwzVHTfdN336', 1);
INSERT INTO `pe_photos` VALUES (337, 'DÃ©jeuner avec Juliet et les enfants', '', '1313532397NPk6.jpg', 1313532398, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:13\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:18 12:32:43\n0x9004 : 2011:04:18 12:32:43\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-18 12:32:43', 0, 112, 150, 'hQf8gzzeQC337', 1);
INSERT INTO `pe_photos` VALUES (338, 'Kennebunkport', '', '13135323989RTE.jpg', 1313532398, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:14\n0x829A :  0.001 s (1/1100) (1/1100)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:18 13:18:39\n0x9004 : 2011:04:18 13:18:39\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-18 13:18:39', 0, 150, 112, '5a9l6H9kGi338', 1);
INSERT INTO `pe_photos` VALUES (339, 'Diner ', '', '1313532399R3iH.jpg', 1313532399, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:14\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:18 17:47:24\n0x9004 : 2011:04:18 17:47:24\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-18 17:47:24', 0, 150, 112, 'UoxzktqB5r339', 1);
INSERT INTO `pe_photos` VALUES (340, 'Les bon burgers', '', '1313532399RjNt.jpg', 1313532400, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:15\n0x829A :  0.050 s (1/20) (1/20)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:18 17:48:00\n0x9004 : 2011:04:18 17:48:00\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-18 17:48:00', 0, 150, 112, '1TVvuC9qc1340', 1);
INSERT INTO `pe_photos` VALUES (341, 'trop gros - on teste le doggy bag', '', '1313532400pQF7.jpg', 1313532400, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:15\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:18 18:20:31\n0x9004 : 2011:04:18 18:20:31\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-18 18:20:31', 0, 112, 150, 'qCq5ITp0k2341', 1);
INSERT INTO `pe_photos` VALUES (342, 'South Congretional church - Kennebunkport', '', '1313532400G5zF.jpg', 1313532401, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:16\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 19:59:59\n0x9004 : 2011:04:18 19:59:59\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 19:59:59', 0, 99, 150, 'dGL771qGaL342', 1);
INSERT INTO `pe_photos` VALUES (343, 'Sur la plage avec Juliet et Robin', '', '1313532401BViQ.jpg', 1313532402, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:17\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 21:46:46\n0x9004 : 2011:04:18 21:46:46\n0x9202 : 5.3000005155061\n0x9204 : 0.00 (0/6)\n0x9205 : 5.2780316430916\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 46.00 (460/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 69\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 21:46:46', 0, 99, 150, 'SjFGMI7G20343', 1);
INSERT INTO `pe_photos` VALUES (344, 'Sur la plage avec Juliet et Robin', '', '13135324020re3.jpg', 1313532402, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:18\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 21:46:55\n0x9004 : 2011:04:18 21:46:55\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.8637453156994\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 24.00 (240/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 36\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 21:46:55', 0, 150, 99, 'zAJfCuxxHU344', 1);
INSERT INTO `pe_photos` VALUES (345, 'James', '', '1313532402LExu.jpg', 1313532403, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:20\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 21:47:03\n0x9004 : 2011:04:18 21:47:03\n0x9202 : 5.3000005155061\n0x9204 : 0.00 (0/6)\n0x9205 : 5.2780316430916\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 46.00 (460/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 69\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 21:47:03', 0, 99, 150, 'IKLcRr5mxM345', 1);
INSERT INTO `pe_photos` VALUES (346, 'Plage du Maine', '', '1313532403kVUk.jpg', 1313532403, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:21\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 21:53:32\n0x9004 : 2011:04:18 21:53:32\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Hard\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 21:53:32', 0, 150, 99, '014vkuKkuq346', 1);
INSERT INTO `pe_photos` VALUES (347, 'Jeux sur la plage', '', '1313532404hUwv.jpg', 1313532404, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:22\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 21:54:06\n0x9004 : 2011:04:18 21:54:06\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 21:54:06', 0, 150, 99, 'VpTCcw4pd4347', 1);
INSERT INTO `pe_photos` VALUES (348, 'Jeux sur la plage', '', '1313532404a7zf.jpg', 1313532405, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:23\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 21:54:17\n0x9004 : 2011:04:18 21:54:17\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 50.00 (500/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 75\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 21:54:17', 0, 150, 99, 'GSAhL2BfSS348', 1);
INSERT INTO `pe_photos` VALUES (349, 'Jeux sur la plage', '', '1313532405O2E9.jpg', 1313532405, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:24\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 21:54:33\n0x9004 : 2011:04:18 21:54:33\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 50.00 (500/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 75\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 21:54:33', 0, 99, 150, 'zmvtBo0aLI349', 1);
INSERT INTO `pe_photos` VALUES (350, 'Plage du Maine', '', '13135324056psl.jpg', 1313532406, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:25\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 22:47:39\n0x9004 : 2011:04:18 22:47:39\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 42\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 22:47:39', 0, 150, 99, 'AJ5o4LFxIU350', 1);
INSERT INTO `pe_photos` VALUES (351, 'PiÃ¨ges Ã  homards', '', '1313532406Im4y.jpg', 1313532406, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:26\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 22:49:05\n0x9004 : 2011:04:18 22:49:05\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 22:49:05', 0, 150, 99, 'JlNSIwmMas351', 1);
INSERT INTO `pe_photos` VALUES (352, 'Gaela et Robin', '', '1313532407Jx4U.jpg', 1313532407, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:27\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 22:49:28\n0x9004 : 2011:04:18 22:49:28\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 22:49:28', 0, 99, 150, 'RiG4xuz5rt352', 1);
INSERT INTO `pe_photos` VALUES (353, 'PiÃ¨ges Ã  homards', '', '1313532407NOOu.jpg', 1313532408, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:28\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 22:50:39\n0x9004 : 2011:04:18 22:50:39\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 22:50:39', 0, 150, 99, 'sGUqRqD8pm353', 1);
INSERT INTO `pe_photos` VALUES (354, 'Bateaux de pÃ¨che Maine', '', '1313532408vujd.jpg', 1313532408, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:30\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:18 22:51:05\n0x9004 : 2011:04:18 22:51:05\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 42\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-18 22:51:05', 0, 150, 99, 'I3jxPAeJf4354', 1);
INSERT INTO `pe_photos` VALUES (355, 'Notre chambre chez Juliet', '', '1313532408p1Ui.jpg', 1313532409, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:31\n0x829A :  0.059 s (1/17) (1/17)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:19 09:10:42\n0x9004 : 2011:04:19 09:10:42\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-19 09:10:42', 0, 150, 112, 'J7U1qM5LVh355', 1);
INSERT INTO `pe_photos` VALUES (356, 'Devant chez Juliet', '', '1313532409VjQj.jpg', 1313532409, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:31\n0x829A :  0.006 s (1/180) (1/180)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:19 09:11:37\n0x9004 : 2011:04:19 09:11:37\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-19 09:11:37', 0, 150, 112, 'cMioUGD74G356', 1);
INSERT INTO `pe_photos` VALUES (357, 'Petit dÃ©jeuner amÃ©ricain au Maine Dinner', '', '1313532410S1hA.jpg', 1313532410, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:31\n0x829A :  0.001 s (1/1400) (1/1400)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:19 10:41:59\n0x9004 : 2011:04:19 10:41:59\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-19 10:41:59', 0, 150, 112, 'Mo8kCnl9OL357', 1);
INSERT INTO `pe_photos` VALUES (358, 'Blueberry pancakes, cafÃ© Ã  volontÃ© et bacon, humm', '', '1313532410DM2s.jpg', 1313532411, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:32\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 125\n0x9000 : 0230\n0x9003 : 2011:04:19 11:41:20\n0x9004 : 2011:04:19 11:41:20\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-19 11:41:20', 0, 150, 112, 'njmu3euinx358', 1);
INSERT INTO `pe_photos` VALUES (359, 'Waffels pour les enfants', '', '1313532411uFNB.jpg', 1313532411, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:32\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 100\n0x9000 : 0230\n0x9003 : 2011:04:19 11:42:45\n0x9004 : 2011:04:19 11:42:45\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-19 11:42:45', 0, 150, 112, '1amhyoitcv359', 1);
INSERT INTO `pe_photos` VALUES (360, 'MusÃ©e sur les sorciÃ¨res de Salem', '', '13135324128GSz.jpg', 1313532412, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:33\n0x829A :  0.008 s (1/120) (1/120)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 100\n0x9000 : 0230\n0x9003 : 2011:04:19 14:53:03\n0x9004 : 2011:04:19 14:53:03\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-19 14:53:03', 0, 112, 150, 'lIEopaCBzK360', 1);
INSERT INTO `pe_photos` VALUES (361, 'Statue de Rogen Connant, fondateur de Salem', '', '1313532412b2Bs.jpg', 1313532413, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:34\n0x829A :  0.003 s (1/310) (1/310)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:19 14:53:50\n0x9004 : 2011:04:19 14:53:50\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-19 14:53:50', 0, 112, 150, 'QIhO2aqicN361', 1);
INSERT INTO `pe_photos` VALUES (362, 'Maison de Juliet', '', '1313532413ONmQ.jpg', 1313532413, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:35\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:19 16:52:19\n0x9004 : 2011:04:19 16:52:19\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 19.00 (190/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 28\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-19 16:52:19', 0, 150, 99, 'SVrxca6Uns362', 1);
INSERT INTO `pe_photos` VALUES (363, 'Notre super voiture de location', '', '1313532416NTmE.jpg', 1313532418, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:37\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:19 16:52:37\n0x9004 : 2011:04:19 16:52:37\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-19 16:52:37', 0, 150, 99, 'SJKnPESmwx363', 1);
INSERT INTO `pe_photos` VALUES (364, 'Maison de Juliet', '', '1313532418unm2.jpg', 1313532418, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:38\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:19 16:52:52\n0x9004 : 2011:04:19 16:52:52\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-19 16:52:52', 0, 150, 99, 'vldNCnlyiS364', 1);
INSERT INTO `pe_photos` VALUES (365, 'Maison de Juliet', '', '1313532419JRwf.jpg', 1313532419, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:39\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:19 16:53:22\n0x9004 : 2011:04:19 16:53:22\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 3.8637453156994\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 24.00 (240/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 36\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-19 16:53:22', 0, 150, 99, 'VLrqkE66Gr365', 1);
INSERT INTO `pe_photos` VALUES (366, 'Le trÃ¨s connu bake shop de Carlos', '', '1313532419JrbJ.jpg', 1313532419, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:40\n0x829A :  0.002 s (1/560) (1/560)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:20 14:44:13\n0x9004 : 2011:04:20 14:44:13\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-20 14:44:13', 0, 150, 112, 'zu9p4IrcxK366', 1);
INSERT INTO `pe_photos` VALUES (367, 'Comme d''habitude, un smoothie', '', '1313532420nVGO.jpg', 1313532420, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:40\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 500\n0x9000 : 0230\n0x9003 : 2011:04:20 15:33:29\n0x9004 : 2011:04:20 15:33:29\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-20 15:33:29', 0, 112, 150, 'maAf4FD3Ki367', 1);
INSERT INTO `pe_photos` VALUES (368, 'Petite ballade dans Hoboken', '', '1313532420NrO3.jpg', 1313532421, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:40\n0x829A :  0.002 s (1/560) (1/560)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:20 15:43:44\n0x9004 : 2011:04:20 15:43:44\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-20 15:43:44', 0, 150, 112, 'TM1EKbjUtQ368', 1);
INSERT INTO `pe_photos` VALUES (369, 'EntrÃ©e du PATH Ã  Hoboken', '', '1313532459HEaw.jpg', 1313532459, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:41\n0x829A :  0.001 s (1/1400) (1/1400)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:20 15:51:43\n0x9004 : 2011:04:20 15:51:43\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-20 15:51:43', 0, 150, 112, 'biBEmLQcvD369', 1);
INSERT INTO `pe_photos` VALUES (370, 'Sur les berges de l''Hudson river', '', '1313532459PPGb.jpg', 1313532460, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:41\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:20 16:04:14\n0x9004 : 2011:04:20 16:04:14\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-20 16:04:14', 0, 150, 112, 'qsQ8lLkrHx370', 1);
INSERT INTO `pe_photos` VALUES (371, '...la maison de Marvel et John', '', '1313532460oNgu.jpg', 1313532460, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:42\n0x829A :  0.001 s (1/950) (1/950)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:20 16:52:08\n0x9004 : 2011:04:20 16:52:08\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-20 16:52:08', 0, 112, 150, 'NP43ex0fL7371', 1);
INSERT INTO `pe_photos` VALUES (372, '...ChloÃ©', '', '1313532460JlLo.jpg', 1313532461, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:42\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 100\n0x9000 : 0230\n0x9003 : 2011:04:20 16:53:54\n0x9004 : 2011:04:20 16:53:54\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-20 16:53:54', 0, 112, 150, 'iBluEgan86372', 1);
INSERT INTO `pe_photos` VALUES (373, 'Marvel donne un bain Ã  ChloÃ©', '', '1313532461KUCv.jpg', 1313532461, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:43\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:04:20 21:16:08\n0x9004 : 2011:04:20 21:16:08\n0x9202 : 2.8000003354301\n0x9207 : Spot\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-20 21:16:08', 0, 150, 112, 'DEDdjl1QTR373', 1);
INSERT INTO `pe_photos` VALUES (374, 'Chez Marvel', '', '1313532462v23y.jpg', 1313532462, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:44\n0x829A :  0.077 s (1/13) (1/13)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:21 16:10:00\n0x9004 : 2011:04:21 16:10:00\n0x9202 : 3.5000001890894\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-21 16:10:00', 0, 150, 99, 'HIGLOSGH5G374', 1);
INSERT INTO `pe_photos` VALUES (375, '...notre chambre chez Marvel', '', '1313532462bjtR.jpg', 1313532462, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:45\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:21 16:11:20\n0x9004 : 2011:04:21 16:11:20\n0x9202 : 3.5000001890894\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-21 16:11:20', 0, 99, 150, 'E0N35mg6nv375', 1);
INSERT INTO `pe_photos` VALUES (376, 'DSC_0385', '', '1313532463641D.jpg', 1313532463, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:47\n0x829A :  0.020 s (1/50) (1/50)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:21 16:11:34\n0x9004 : 2011:04:21 16:11:34\n0x9202 : 3.5000001890894\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-21 16:11:34', 0, 99, 150, 'oVlc6LP15p376', 1);
INSERT INTO `pe_photos` VALUES (377, 'Lustre Swaroski du Rockfeller Center', '', '1313532463wpiB.jpg', 1313532464, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:48\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 125\n0x9000 : 0230\n0x9003 : 2011:04:21 17:21:02\n0x9004 : 2011:04:21 17:21:02\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-21 17:21:02', 0, 112, 150, 'Nqdgm64h08377', 1);
INSERT INTO `pe_photos` VALUES (378, 'Vue du Washington Bridge de chez Arelis', '', '131353246469By.jpg', 1313532464, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:49\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:04:21 21:43:43\n0x9004 : 2011:04:21 21:43:43\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-21 21:43:43', 0, 150, 112, 'egt6Fnbapn378', 1);
INSERT INTO `pe_photos` VALUES (379, 'Arelis, Noel et Chupi', '', '1313532465T6G0.jpg', 1313532466, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:49\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1000\n0x9000 : 0230\n0x9003 : 2011:04:21 21:46:26\n0x9004 : 2011:04:21 21:46:26\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Soft\n', '2011-04-21 21:46:26', 0, 150, 112, 'hw1y5fAblo379', 1);
INSERT INTO `pe_photos` VALUES (380, 'Vue de Central Park du Rockfeller', '', '1313532466wz1v.jpg', 1313532466, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:50\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:22 00:28:46\n0x9004 : 2011:04:22 00:28:46\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:28:46', 0, 99, 150, 'F9TgzM6oGQ380', 1);
INSERT INTO `pe_photos` VALUES (381, 'Vue de Central Park du Rockfeller', '', '1313532466Mthc.jpg', 1313532467, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:52\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:22 00:28:53\n0x9004 : 2011:04:22 00:28:53\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:28:53', 0, 99, 150, 'TFGA3UU4Vz381', 1);
INSERT INTO `pe_photos` VALUES (382, 'Vue Nord Est du Rockfeller', '', '1313532467ypBS.jpg', 1313532467, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:53\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:22 00:28:57\n0x9004 : 2011:04:22 00:28:57\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:28:57', 0, 99, 150, 'Qty72T6ee7382', 1);
INSERT INTO `pe_photos` VALUES (383, 'Vue Est du Rockfeller', '', '13135324687mKy.jpg', 1313532468, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:54\n0x829A :  0.000 s (1/2500) (1/2500)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:22 00:30:54\n0x9004 : 2011:04:22 00:30:54\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:30:54', 0, 150, 99, 's4rDobhgTE383', 1);
INSERT INTO `pe_photos` VALUES (384, 'Vue Est du Rockfeller', '', '1313532468BDsu.jpg', 1313532469, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:56\n0x829A :  0.000 s (1/2500) (1/2500)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:22 00:31:06\n0x9004 : 2011:04:22 00:31:06\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 39\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:31:06', 0, 99, 150, 'RbNtotaaK1384', 1);
INSERT INTO `pe_photos` VALUES (385, 'Vue de la cathedral St Patrick du Rockfeller', '', '1313532469bIhN.jpg', 1313532469, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:58\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:22 00:31:25\n0x9004 : 2011:04:22 00:31:25\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:31:25', 0, 99, 150, 'D0lEu9mqbd385', 1);
INSERT INTO `pe_photos` VALUES (386, 'Vue Sud du Rockfeller', '', '1313532470VBmw.jpg', 1313532470, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:19:59\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:04:22 00:32:36\n0x9004 : 2011:04:22 00:32:36\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : Low Gain Up\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:32:36', 0, 99, 150, '2olvQJ2RwM386', 1);
INSERT INTO `pe_photos` VALUES (387, 'Vue Sud du Rockfeller', '', '131353247164BB.jpg', 1313532471, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:01\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:22 00:33:57\n0x9004 : 2011:04:22 00:33:57\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Soft\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:33:57', 0, 150, 99, 'KbHnLNRqVC387', 1);
INSERT INTO `pe_photos` VALUES (388, 'Vue de Central Park du Rockfeller', '', '1313532471Ab0d.jpg', 1313532471, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:03\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:22 00:43:21\n0x9004 : 2011:04:22 00:43:21\n0x9202 : 4.9999996711455\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:43:21', 0, 150, 99, 'uvavTO6d1b388', 1);
INSERT INTO `pe_photos` VALUES (389, 'Vue Sud Ouest du Rockfeller', '', '1313532472Kgqk.jpg', 1313532472, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:04\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.6\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:22 00:44:59\n0x9004 : 2011:04:22 00:44:59\n0x9202 : 5.6000006708602\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:44:59', 0, 150, 99, 'ykDCyBbSV0389', 1);
INSERT INTO `pe_photos` VALUES (390, 'Gaela et Empire State Building', '', '1313532473z6Pz.jpg', 1313532473, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:06\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/9.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:22 00:48:34\n0x9004 : 2011:04:22 00:48:34\n0x9202 : 8.9999999910024\n0x9204 : 0.00 (0/6)\n0x9205 : 5.6568542494924\n0x9206 : 2.11 (211/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 82\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:48:34', 0, 150, 99, 'FEbxNFqhfU390', 1);
INSERT INTO `pe_photos` VALUES (391, 'Ga et Central Park', '', '13135324730K8t.jpg', 1313532474, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:07\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/6.3\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:22 00:50:14\n0x9004 : 2011:04:22 00:50:14\n0x9202 : 6.3000007484194\n0x9204 : 0.00 (0/6)\n0x9205 : 3.4822022531845\n0x9206 : 0.84 (84/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 27\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:50:14', 0, 150, 99, 'eOeo9Fut93391', 1);
INSERT INTO `pe_photos` VALUES (392, 'Vue de Central Park du Rockfeller', '', '1313532474J9GB.jpg', 1313532474, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:10\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/8.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:22 00:51:59\n0x9004 : 2011:04:22 00:51:59\n0x9202 : 8\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 42\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:51:59', 0, 150, 99, 'lIIKfELhQd392', 1);
INSERT INTO `pe_photos` VALUES (393, 'Jon en NY', '', '1313532475wGKi.jpg', 1313532475, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:12\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/9.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:22 00:52:13\n0x9004 : 2011:04:22 00:52:13\n0x9202 : 8.9999999910024\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : 1.26 (126/100)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 42\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:52:13', 0, 150, 99, 'JQyD7acmyx393', 1);
INSERT INTO `pe_photos` VALUES (394, 'Jon en NY', '', '1313532475ww9A.jpg', 1313532475, '0x010F : NIKON CORPORATION\n0x0110 : NIKON D40\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:14\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/10.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:04:22 00:52:40\n0x9004 : 2011:04:22 00:52:40\n0x9202 : 9.9999993422909\n0x9204 : 0.00 (0/6)\n0x9205 : 4\n0x9206 : -1.00 (-1/1)\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA217 : One-chip color area sensor\n0xA300 : \n0xA301 : \n0xA302 : \0\0\n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA404 : 1.00 (1/1)\n0xA405 : 42\n0xA406 : Standard\n0xA407 : None\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n0xA40C : Unknown\n', '2011-04-22 00:52:40', 0, 150, 99, 'T82jE3AFEq394', 1);
INSERT INTO `pe_photos` VALUES (395, 'et on retrouve Elsie, Jo et Jacob', '', '1313532476UBqV.jpg', 1313532476, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:14\n0x829A :  0.067 s (1/15) (1/15)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:04:22 20:50:18\n0x9004 : 2011:04:22 20:50:18\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-22 20:50:18', 0, 112, 150, 'kTkpBgvzD2395', 1);
INSERT INTO `pe_photos` VALUES (396, 'Retour Ã  la maison avec un vrai petit dÃ©jeuner franÃ§ais', '', '1313532476C9VR.jpg', 1313532477, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:15\n0x829A :  0.050 s (1/20) (1/20)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 80\n0x9000 : 0230\n0x9003 : 2011:04:24 05:07:45\n0x9004 : 2011:04:24 05:07:45\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-24 05:07:45', 0, 150, 112, 'mG4mHEpxvH396', 1);
INSERT INTO `pe_photos` VALUES (397, 'Les croissants nous ont manquÃ©', '', '13135324775zvd.jpg', 1313532477, '0x010F : Apple\n0x0110 : iPhone 4\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:08:16 23:20:16\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 100\n0x9000 : 0230\n0x9003 : 2011:04:24 05:08:15\n0x9004 : 2011:04:24 05:08:15\n0x9202 : 2.8000003354301\n0x9207 : Matrix\n0x9209 : No\n0x920A : 3.85 (77/20)\n0xA217 : One-chip color area sensor\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA406 : Standard\n0xA40A : Hard\n', '2011-04-24 05:08:15', 0, 150, 112, 'EAwHaqaM1E397', 1);
INSERT INTO `pe_photos` VALUES (398, 'DSC02072', 'SONY DSC', '1315341993bPDg.jpg', 1315341994, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:45:19\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 07:00:24\n0x9004 : 2011:08:21 07:00:24\n0x9202 : 8\n0x9203 : 5.87 (587/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 27.00 (270/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 40\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 07:00:24', 0, 150, 84, 'kHJLLmspoH398', 1);
INSERT INTO `pe_photos` VALUES (399, 'DSC02073', 'SONY DSC', '1315341994c6pL.jpg', 1315341994, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:45:22\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 07:00:36\n0x9004 : 2011:08:21 07:00:36\n0x9202 : 8\n0x9203 : 5.87 (587/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 25.00 (250/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 37\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 07:00:36', 0, 150, 84, 'I8kfHtz4SA399', 1);
INSERT INTO `pe_photos` VALUES (400, 'DSC02077', 'SONY DSC', '1315341995KLID.jpg', 1315341995, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:45:25\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 07:01:35\n0x9004 : 2011:08:21 07:01:35\n0x9202 : 8\n0x9203 : 7.12 (712/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 36.00 (360/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 54\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 07:01:35', 0, 150, 89, 'd7igrRM4wg400', 1);
INSERT INTO `pe_photos` VALUES (401, 'DSC02078', 'SONY DSC', '1315341996HKCK.jpg', 1315341996, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:45:28\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 07:01:37\n0x9004 : 2011:08:21 07:01:37\n0x9202 : 8\n0x9203 : 7.62 (762/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 36.00 (360/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 54\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 07:01:37', 0, 150, 84, 'PIDJiurzaF401', 1);
INSERT INTO `pe_photos` VALUES (402, 'DSC02197', 'SONY DSC', '13153423458tcj.jpg', 1315342346, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:48:23\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 800\n0x9000 : 0230\n0x9003 : 2011:08:23 07:02:43\n0x9004 : 2011:08:23 07:02:43\n0x9202 : 5.6000006708602\n0x9203 : 2.87 (287/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-23 07:02:43', 0, 150, 90, 'lCBdJMJbot402', 1);
INSERT INTO `pe_photos` VALUES (403, 'DSC02242', 'SONY DSC', '1315342346B7dh.jpg', 1315342347, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:48:56\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:08:25 05:56:23\n0x9004 : 2011:08:25 05:56:23\n0x9202 : 3.5000001890894\n0x9203 : 1.75 (175/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-25 05:56:23', 0, 150, 84, '6IduJFILAr403', 1);
INSERT INTO `pe_photos` VALUES (404, 'DSC02059', 'SONY DSC', '13153423481Vkf.jpg', 1315342348, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:10\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 05:34:09\n0x9004 : 2011:08:21 05:34:09\n0x9202 : 4.9999996711455\n0x9203 : 6.00 (600/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 45.00 (450/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 67\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 05:34:09', 0, 150, 84, 'uj5G2OqMnK404', 1);
INSERT INTO `pe_photos` VALUES (405, 'DSC02063', 'SONY DSC', '1315342349zvgn.jpg', 1315342350, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:14\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 06:58:44\n0x9004 : 2011:08:21 06:58:44\n0x9202 : 5.6000006708602\n0x9203 : 6.87 (687/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 06:58:44', 0, 150, 84, 'ck3hlGxIPN405', 1);
INSERT INTO `pe_photos` VALUES (406, 'DSC02064', 'SONY DSC', '1315342350OAqE.jpg', 1315342351, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:19\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 06:58:55\n0x9004 : 2011:08:21 06:58:55\n0x9202 : 5.6000006708602\n0x9203 : 6.25 (625/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 06:58:55', 0, 150, 84, 'vzyaCnb5PG406', 1);
INSERT INTO `pe_photos` VALUES (407, 'DSC02065', 'SONY DSC', '1315342351uKOf.jpg', 1315342352, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:22\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 06:58:56\n0x9004 : 2011:08:21 06:58:56\n0x9202 : 5.6000006708602\n0x9203 : 6.37 (637/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 06:58:56', 0, 150, 84, 'AmmNTQUFtp407', 1);
INSERT INTO `pe_photos` VALUES (408, 'DSC02066', 'SONY DSC', '1315342352USJT.jpg', 1315342353, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:26\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 06:58:57\n0x9004 : 2011:08:21 06:58:57\n0x9202 : 5.6000006708602\n0x9203 : 6.75 (675/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 06:58:57', 0, 150, 84, 'BseaNqxjpR408', 1);
INSERT INTO `pe_photos` VALUES (409, 'DSC02067', 'SONY DSC', '1315342353Rn2P.jpg', 1315342354, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:29\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 06:58:58\n0x9004 : 2011:08:21 06:58:58\n0x9202 : 5.6000006708602\n0x9203 : 6.75 (675/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 06:58:58', 0, 150, 84, 'fiLdVbxBEi409', 1);
INSERT INTO `pe_photos` VALUES (410, 'DSC02080', 'SONY DSC', '1315342354ED8e.jpg', 1315342355, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:56\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 07:02:55\n0x9004 : 2011:08:21 07:02:55\n0x9202 : 4.4999999955012\n0x9203 : 6.25 (625/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 31.00 (310/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 46\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 07:02:55', 0, 150, 84, '7AmGEhRJA1410', 1);
INSERT INTO `pe_photos` VALUES (411, 'DSC02068', 'SONY DSC', '1315342355CANr.jpg', 1315342356, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:32\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 06:59:00\n0x9004 : 2011:08:21 06:59:00\n0x9202 : 5.6000006708602\n0x9203 : 6.87 (687/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 06:59:00', 0, 150, 97, 'T6FvmwB0ur411', 1);
INSERT INTO `pe_photos` VALUES (412, 'DSC02069', 'SONY DSC', '1315342356bu34.jpg', 1315342357, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:34\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 06:59:01\n0x9004 : 2011:08:21 06:59:01\n0x9202 : 5.6000006708602\n0x9203 : 6.75 (675/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 06:59:01', 0, 150, 102, 'NU9MwuMCQ0412', 1);
INSERT INTO `pe_photos` VALUES (413, 'DSC02090', 'SONY DSC', '1315342358ndFx.jpg', 1315342358, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:51:31\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 07:08:34\n0x9004 : 2011:08:21 07:08:34\n0x9202 : 5.6000006708602\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 07:08:34', 0, 150, 84, 'f6Jd5lfteB413', 1);
INSERT INTO `pe_photos` VALUES (414, 'DSC02089', 'SONY DSC', '1315342360wRug.jpg', 1315342361, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:59\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 07:08:28\n0x9004 : 2011:08:21 07:08:28\n0x9202 : 4.9999996711455\n0x9203 : 8.00 (800/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 39\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 07:08:28', 0, 150, 98, 'lFHq1gS918414', 1);
INSERT INTO `pe_photos` VALUES (415, 'DSC02093', 'SONY DSC', '1315342361l8xG.jpg', 1315342362, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:51:41\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 07:09:31\n0x9004 : 2011:08:21 07:09:31\n0x9202 : 4.9999996711455\n0x9203 : 8.50 (850/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 44.00 (440/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 66\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 07:09:31', 0, 150, 84, 'fL90Hbz3wu415', 1);
INSERT INTO `pe_photos` VALUES (416, 'DSC02216', 'SONY DSC', '1315342362txdz.jpg', 1315342362, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:51:57\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:24 04:54:30\n0x9004 : 2011:08:24 04:54:30\n0x9202 : 4.4999999955012\n0x9203 : 6.25 (625/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 41.00 (410/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 61\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-24 04:54:30', 0, 150, 84, 'QC9Hw0gwtq416', 1);
INSERT INTO `pe_photos` VALUES (417, 'DSC02070', 'SONY DSC', '13153423639g6w.jpg', 1315342364, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:36\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 06:59:05\n0x9004 : 2011:08:21 06:59:05\n0x9202 : 5.6000006708602\n0x9203 : 6.25 (625/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 06:59:05', 0, 150, 84, 'mrfqEChQlg417', 1);
INSERT INTO `pe_photos` VALUES (418, 'DSC02234', 'SONY DSC', '1315342364cK6e.jpg', 1315342365, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:52:15\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:08:25 05:55:23\n0x9004 : 2011:08:25 05:55:23\n0x9202 : 2.8000003354301\n0x9203 : 1.62 (162/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-25 05:55:23', 0, 150, 84, 'gK14aFaukV418', 1);
INSERT INTO `pe_photos` VALUES (419, 'DSC02239', 'SONY DSC', '1315342500hcns.jpg', 1315342501, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:52:23\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:08:25 05:55:46\n0x9004 : 2011:08:25 05:55:46\n0x9202 : 2.8000003354301\n0x9203 : 1.25 (125/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-25 05:55:46', 0, 150, 84, 'A256czru53419', 1);
INSERT INTO `pe_photos` VALUES (420, 'DSC02071', 'SONY DSC', '1315342501fLab.jpg', 1315342502, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:39\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 06:59:54\n0x9004 : 2011:08:21 06:59:54\n0x9202 : 5.6000006708602\n0x9203 : 6.00 (600/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 06:59:54', 0, 150, 84, 'gqenw2lP0v420', 1);
INSERT INTO `pe_photos` VALUES (421, 'DSC02079', 'SONY DSC', '1315342502RuxF.jpg', 1315342503, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:06 22:50:41\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:08:21 07:02:24\n0x9004 : 2011:08:21 07:02:24\n0x9202 : 8\n0x9203 : 8.00 (800/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 49.00 (490/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 73\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-08-21 07:02:24', 0, 150, 84, 'P9TwOgtLU3421', 1);
INSERT INTO `pe_photos` VALUES (422, 'DSC02265', 'SONY DSC', '1316593751hNH4.jpg', 1316593752, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:19:36\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 01:39:32\n0x9004 : 2011:09:10 01:39:32\n0x9202 : 8\n0x9203 : 8.12 (812/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 01:39:32', 0, 95, 150, 'NEUHJ9IcSp422', 1);
INSERT INTO `pe_photos` VALUES (423, 'DSC02266', 'SONY DSC', '1316593753MgDU.jpg', 1316593753, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:19:39\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 01:41:24\n0x9004 : 2011:09:10 01:41:24\n0x9202 : 8\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 41.00 (410/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 61\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 01:41:24', 0, 100, 150, 'hxDc7r6BsC423', 1);
INSERT INTO `pe_photos` VALUES (424, 'DSC02267', 'SONY DSC', '1316593754TVyn.jpg', 1316593755, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:19:42\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 01:44:34\n0x9004 : 2011:09:10 01:44:34\n0x9202 : 8\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 01:44:34', 0, 150, 135, 'jngh2pgBnd424', 1);
INSERT INTO `pe_photos` VALUES (425, 'DSC02269', 'SONY DSC', '1316593756bkpn.jpg', 1316593756, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:19:44\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 640\n0x9000 : 0230\n0x9003 : 2011:09:10 01:51:57\n0x9004 : 2011:09:10 01:51:57\n0x9202 : 5.6000006708602\n0x9203 : 3.62 (362/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 50.00 (500/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 75\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 01:51:57', 0, 99, 150, 'ls4ejbzUMk425', 1);
INSERT INTO `pe_photos` VALUES (426, 'DSC02273', 'SONY DSC', '1316593757pVdz.jpg', 1316593757, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:19:49\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 320\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:32\n0x9004 : 2011:09:10 02:05:32\n0x9202 : 8\n0x9203 : 6.00 (600/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 52.00 (520/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 78\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:32', 0, 106, 150, 'jA5FT3FaGm426', 1);
INSERT INTO `pe_photos` VALUES (427, 'DSC02274', 'SONY DSC', '13165937581HUT.jpg', 1316593759, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:19:52\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:37\n0x9004 : 2011:09:10 02:05:37\n0x9202 : 8\n0x9203 : 6.12 (612/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:37', 0, 150, 138, 'G79Ki9J98M427', 1);
INSERT INTO `pe_photos` VALUES (428, 'DSC02278', 'SONY DSC', '1316593759edUP.jpg', 1316593760, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:19:55\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 320\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:40\n0x9004 : 2011:09:10 02:05:40\n0x9202 : 8\n0x9203 : 6.50 (650/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:40', 0, 150, 127, 'SN31iuLLRv428', 1);
INSERT INTO `pe_photos` VALUES (429, 'DSC02279', 'SONY DSC', '1316593760hhxa.jpg', 1316593761, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:19:59\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 320\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:40\n0x9004 : 2011:09:10 02:05:40\n0x9202 : 8\n0x9203 : 6.62 (662/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:40', 0, 150, 122, 'Dowt80mONl429', 1);
INSERT INTO `pe_photos` VALUES (430, 'DSC02282', 'SONY DSC', '1316593762clfQ.jpg', 1316593762, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:05\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 320\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:41\n0x9004 : 2011:09:10 02:05:41\n0x9202 : 8\n0x9203 : 6.75 (675/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:41', 0, 150, 84, 'kIdma910dk430', 1);
INSERT INTO `pe_photos` VALUES (431, 'DSC02284', 'SONY DSC', '1316593762QDIu.jpg', 1316593763, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:07\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:44\n0x9004 : 2011:09:10 02:05:44\n0x9202 : 8\n0x9203 : 7.12 (712/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 36.00 (360/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 54\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:44', 0, 150, 141, 'aNeABUDwP6431', 1);
INSERT INTO `pe_photos` VALUES (432, 'DSC02285', 'SONY DSC', '1316593763Q1L2.jpg', 1316593764, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:10\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:45\n0x9004 : 2011:09:10 02:05:45\n0x9202 : 8\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 36.00 (360/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 54\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:45', 0, 150, 147, 'll1PJ3QN9d432', 1);
INSERT INTO `pe_photos` VALUES (433, 'DSC02287', 'SONY DSC', '131659376560RL.jpg', 1316593766, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:12\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:50\n0x9004 : 2011:09:10 02:05:50\n0x9202 : 8\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 36.00 (360/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 54\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:50', 0, 150, 146, '3ibx6J9euD433', 1);
INSERT INTO `pe_photos` VALUES (434, 'DSC02288', 'SONY DSC', '1316593766TUj1.jpg', 1316593767, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:14\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:52\n0x9004 : 2011:09:10 02:05:52\n0x9202 : 8\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 36.00 (360/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 54\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:52', 0, 150, 93, 'OaATQc65xT434', 1);
INSERT INTO `pe_photos` VALUES (435, 'DSC02289', 'SONY DSC', '13165937674DHh.jpg', 1316593768, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:17\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:05:54\n0x9004 : 2011:09:10 02:05:54\n0x9202 : 8\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 51.00 (510/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 76\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:05:54', 0, 84, 150, '2sExcbefts435', 1);
INSERT INTO `pe_photos` VALUES (436, 'DSC02293', 'SONY DSC', '1316593768Ck3i.jpg', 1316593769, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:21\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:06:01\n0x9004 : 2011:09:10 02:06:01\n0x9202 : 8\n0x9203 : 7.12 (712/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:06:01', 0, 84, 150, 'QoETHHiQEh436', 1);
INSERT INTO `pe_photos` VALUES (437, 'DSC02297', 'SONY DSC', '1316593769kkaB.jpg', 1316593770, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:24\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:06:24\n0x9004 : 2011:09:10 02:06:24\n0x9202 : 8\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 51\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:06:24', 0, 74, 150, 'NifQHhkv38437', 1);
INSERT INTO `pe_photos` VALUES (438, 'DSC02298', 'SONY DSC', '1316593770b3RE.jpg', 1316593771, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:26\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:06:29\n0x9004 : 2011:09:10 02:06:29\n0x9202 : 8\n0x9203 : 7.75 (775/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:06:29', 0, 128, 150, 'TwFPDMdsoJ438', 1);
INSERT INTO `pe_photos` VALUES (439, 'DSC02300', 'SONY DSC', '1316593772z1wk.jpg', 1316593772, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:29\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:06:33\n0x9004 : 2011:09:10 02:06:33\n0x9202 : 8\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 22.00 (220/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 33\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:06:33', 0, 73, 150, 'wGdtcvi89h439', 1);
INSERT INTO `pe_photos` VALUES (440, 'DSC02302', 'SONY DSC', '1316593773prL6.jpg', 1316593773, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:31\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:06:36\n0x9004 : 2011:09:10 02:06:36\n0x9202 : 8\n0x9203 : 7.25 (725/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 20.00 (200/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 30\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:06:36', 0, 64, 150, '5BdzcATQTu440', 1);
INSERT INTO `pe_photos` VALUES (441, 'DSC02305', 'SONY DSC', '13165937744xl4.jpg', 1316593774, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:34\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:06:51\n0x9004 : 2011:09:10 02:06:51\n0x9202 : 8\n0x9203 : 7.75 (775/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:06:51', 0, 84, 150, 'yy6ghtVHFu441', 1);
INSERT INTO `pe_photos` VALUES (442, 'DSC02306', 'SONY DSC', '1316593775PEAe.jpg', 1316593776, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:36\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:10:18\n0x9004 : 2011:09:10 02:10:18\n0x9202 : 8\n0x9203 : 7.75 (775/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 33.00 (330/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 49\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:10:18', 0, 131, 150, 'TO8CsU5J01442', 1);
INSERT INTO `pe_photos` VALUES (443, 'DSC02307', 'SONY DSC', '1316593777Daw1.jpg', 1316593777, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:39\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:14:56\n0x9004 : 2011:09:10 02:14:56\n0x9202 : 8\n0x9203 : 9.12 (912/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 36.00 (360/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 54\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:14:56', 0, 150, 97, '6OFGxuOtHL443', 1);
INSERT INTO `pe_photos` VALUES (444, 'DSC02308', 'SONY DSC', '1316593778PEnw.jpg', 1316593778, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:42\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:16:11\n0x9004 : 2011:09:10 02:16:11\n0x9202 : 8\n0x9203 : 8.00 (800/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 51\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:16:11', 0, 150, 85, 'zfOPxPAmFs444', 1);
INSERT INTO `pe_photos` VALUES (445, 'DSC02311', 'SONY DSC', '1316593779C7bO.jpg', 1316593779, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:44\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:16:23\n0x9004 : 2011:09:10 02:16:23\n0x9202 : 8\n0x9203 : 8.75 (875/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 51\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:16:23', 0, 150, 92, 'hrOK2yrk6U445', 1);
INSERT INTO `pe_photos` VALUES (446, 'DSC02314', 'SONY DSC', '1316593780CPAB.jpg', 1316593780, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:48\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:16:43\n0x9004 : 2011:09:10 02:16:43\n0x9202 : 8\n0x9203 : 8.62 (862/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 51\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:16:43', 0, 150, 95, 'jmKOVh7m8A446', 1);
INSERT INTO `pe_photos` VALUES (447, 'DSC02315', 'SONY DSC', '1316593781EzKq.jpg', 1316593782, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:51\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:16:45\n0x9004 : 2011:09:10 02:16:45\n0x9202 : 8\n0x9203 : 8.62 (862/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 51\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:16:45', 0, 150, 95, 'toCGPNsDDo447', 1);
INSERT INTO `pe_photos` VALUES (448, 'DSC02316', 'SONY DSC', '1316593782vraL.jpg', 1316593782, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:55\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:16:48\n0x9004 : 2011:09:10 02:16:48\n0x9202 : 8\n0x9203 : 8.62 (862/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 51\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:16:48', 0, 150, 91, 'j4psaRU13P448', 1);
INSERT INTO `pe_photos` VALUES (449, 'DSC02319', 'SONY DSC', '13165937830GRD.jpg', 1316593784, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:57\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:17:56\n0x9004 : 2011:09:10 02:17:56\n0x9202 : 4.4999999955012\n0x9203 : 8.87 (887/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 42\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:17:56', 0, 150, 108, 'u5FICnx1D5449', 1);
INSERT INTO `pe_photos` VALUES (450, 'DSC02321', 'SONY DSC', '1316593784N3lH.jpg', 1316593785, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:20:59\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:17:59\n0x9004 : 2011:09:10 02:17:59\n0x9202 : 4.4999999955012\n0x9203 : 9.00 (900/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:17:59', 0, 150, 108, 'wbihBCVh6s450', 1);
INSERT INTO `pe_photos` VALUES (451, 'DSC02323', 'SONY DSC', '131659378531FG.jpg', 1316593786, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:02\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:18:11\n0x9004 : 2011:09:10 02:18:11\n0x9202 : 4.4999999955012\n0x9203 : 9.12 (912/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:18:11', 0, 78, 150, 'QImAkSU17L451', 1);
INSERT INTO `pe_photos` VALUES (452, 'DSC02326', 'SONY DSC', '1316593787Qtnf.jpg', 1316593787, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:05\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 02:57:02\n0x9004 : 2011:09:10 02:57:02\n0x9202 : 4.9999996711455\n0x9203 : 9.00 (900/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 02:57:02', 0, 87, 150, '0moHNUtqDD452', 1);
INSERT INTO `pe_photos` VALUES (453, 'DSC02327', 'SONY DSC', '13165937889Oee.jpg', 1316593788, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:08\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 03:03:13\n0x9004 : 2011:09:10 03:03:13\n0x9202 : 4.9999996711455\n0x9203 : 8.75 (875/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 32.00 (320/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 48\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 03:03:13', 0, 150, 105, 'fCRztOMzDn453', 1);
INSERT INTO `pe_photos` VALUES (454, 'DSC02328', 'SONY DSC', '1316593789lLQC.jpg', 1316593789, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:10\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/7.1\n0x8822 : Program (auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 03:19:38\n0x9004 : 2011:09:10 03:19:38\n0x9202 : 7.0999998788497\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 03:19:38', 0, 150, 25, 'fOPHGtMj2F454', 1);
INSERT INTO `pe_photos` VALUES (455, 'DSC02329', 'SONY DSC', '1316593790RiFU.jpg', 1316593790, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:12\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/10.0\n0x8822 : Program (auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 03:20:02\n0x9004 : 2011:09:10 03:20:02\n0x9202 : 9.9999993422909\n0x9203 : 7.37 (737/100)\n0x9204 : -1.00 (-10/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 03:20:02', 0, 150, 26, 'PbIBGRIOkA455', 1);
INSERT INTO `pe_photos` VALUES (456, 'DSC02341', 'SONY DSC', '13165937918kbN.jpg', 1316593791, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:17\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/4.0\n0x8822 : Shutter Priority (semi-auto)\n0x8827 : 1600\n0x9000 : 0230\n0x9003 : 2011:09:10 03:41:21\n0x9004 : 2011:09:10 03:41:21\n0x9202 : 4\n0x9203 : 0.25 (25/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 42\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 03:41:21', 0, 81, 150, 'Llu17mfVGG456', 1);
INSERT INTO `pe_photos` VALUES (457, 'DSC02347', 'SONY DSC', '1316593792IDVA.jpg', 1316593792, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:20\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/3.5\n0x8822 : Shutter Priority (semi-auto)\n0x8827 : 1600\n0x9000 : 0230\n0x9003 : 2011:09:10 04:21:42\n0x9004 : 2011:09:10 04:21:42\n0x9202 : 3.5000001890894\n0x9203 : -0.75 (-75/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:21:42', 0, 84, 150, 'DpC3KeID46457', 1);
INSERT INTO `pe_photos` VALUES (458, 'DSC02352', 'SONY DSC', '1316593793bNH0.jpg', 1316593794, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:23\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/5.0\n0x8822 : Shutter Priority (semi-auto)\n0x8827 : 1600\n0x9000 : 0230\n0x9003 : 2011:09:10 04:23:47\n0x9004 : 2011:09:10 04:23:47\n0x9202 : 4.9999996711455\n0x9203 : 0.75 (75/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 45.00 (450/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 67\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:23:47', 0, 150, 139, 'szlR2p3uB4458', 1);
INSERT INTO `pe_photos` VALUES (459, 'DSC02362', 'SONY DSC', '1316593794LnmA.jpg', 1316593794, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:29\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:30:25\n0x9004 : 2011:09:10 04:30:25\n0x9202 : 6.3000007484194\n0x9203 : 6.87 (687/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 53.00 (530/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 79\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:30:25', 0, 150, 84, 'AbRFjhiz2w459', 1);
INSERT INTO `pe_photos` VALUES (460, 'DSC02364', 'SONY DSC', '1316593795RK8r.jpg', 1316593795, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:32\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:32:14\n0x9004 : 2011:09:10 04:32:14\n0x9202 : 6.3000007484194\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 32.00 (320/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 48\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:32:14', 0, 82, 150, 'xfvuIP4Uth460', 1);
INSERT INTO `pe_photos` VALUES (461, 'DSC02366', 'SONY DSC', '1316593796ldw7.jpg', 1316593796, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:35\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:32:16\n0x9004 : 2011:09:10 04:32:16\n0x9202 : 6.3000007484194\n0x9203 : 6.87 (687/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 29.00 (290/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 43\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:32:16', 0, 84, 150, 'G3ehvJqPod461', 1);
INSERT INTO `pe_photos` VALUES (462, 'DSC02367', 'SONY DSC', '1316593796VLQi.jpg', 1316593797, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:39\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:32:18\n0x9004 : 2011:09:10 04:32:18\n0x9202 : 6.3000007484194\n0x9203 : 7.25 (725/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:32:18', 0, 84, 150, 'gdzyegDmbf462', 1);
INSERT INTO `pe_photos` VALUES (463, 'DSC02369', 'SONY DSC', '131659379749E2.jpg', 1316593798, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:41\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:32:23\n0x9004 : 2011:09:10 04:32:23\n0x9202 : 6.3000007484194\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 22.00 (220/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 33\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:32:23', 0, 84, 150, '10HDEiuLTN463', 1);
INSERT INTO `pe_photos` VALUES (464, 'DSC02371', 'SONY DSC', '1316593798n1EF.jpg', 1316593798, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:45\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:32:26\n0x9004 : 2011:09:10 04:32:26\n0x9202 : 6.3000007484194\n0x9203 : 6.75 (675/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 45.00 (450/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 67\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:32:26', 0, 150, 103, '2r8CuEmJoD464', 1);
INSERT INTO `pe_photos` VALUES (465, 'DSC02372', 'SONY DSC', '1316593799Sy1I.jpg', 1316593799, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:49\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:32:28\n0x9004 : 2011:09:10 04:32:28\n0x9202 : 6.3000007484194\n0x9203 : 6.75 (675/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 45.00 (450/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 67\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:32:28', 0, 150, 84, 'V6saNfi5Iu465', 1);
INSERT INTO `pe_photos` VALUES (466, 'DSC02378', 'SONY DSC', '13165938002vPS.jpg', 1316593800, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:52\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:32:46\n0x9004 : 2011:09:10 04:32:46\n0x9202 : 6.3000007484194\n0x9203 : 7.75 (775/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 29.00 (290/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 43\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:32:46', 0, 84, 150, 'EpLdHPoPrC466', 1);
INSERT INTO `pe_photos` VALUES (467, 'DSC02379', 'SONY DSC', '1316593800wdme.jpg', 1316593801, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:56\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:32:56\n0x9004 : 2011:09:10 04:32:56\n0x9202 : 5.6000006708602\n0x9203 : 8.37 (837/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:32:56', 0, 150, 84, 'wnMFH1gKtm467', 1);
INSERT INTO `pe_photos` VALUES (468, 'DSC02382', 'SONY DSC', '1316593825Gj9O.jpg', 1316593826, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:21:59\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:33:26\n0x9004 : 2011:09:10 04:33:26\n0x9202 : 8\n0x9203 : 7.62 (762/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 41.00 (410/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 61\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:33:26', 0, 150, 114, '7yFreliIof468', 1);
INSERT INTO `pe_photos` VALUES (469, 'DSC02384', 'SONY DSC', '1316593826Qxuz.jpg', 1316593826, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:22:01\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:33:34\n0x9004 : 2011:09:10 04:33:34\n0x9202 : 8\n0x9203 : 8.37 (837/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 45.00 (450/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 67\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:33:34', 0, 150, 98, 'KVlRThmCm7469', 1);
INSERT INTO `pe_photos` VALUES (470, 'DSC02387', 'SONY DSC', '1316593827Kua8.jpg', 1316593828, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:22:04\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:41:25\n0x9004 : 2011:09:10 04:41:25\n0x9202 : 4.4999999955012\n0x9203 : 7.12 (712/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 40.00 (400/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 60\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:41:25', 0, 150, 122, 'Ggh86APeP5470', 1);
INSERT INTO `pe_photos` VALUES (471, 'DSC02389', 'SONY DSC', '1316593828Aml6.jpg', 1316593828, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:22:08\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:41:36\n0x9004 : 2011:09:10 04:41:36\n0x9202 : 4.4999999955012\n0x9203 : 6.75 (675/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 41.00 (410/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 61\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:41:36', 0, 150, 84, 'aQiujHdDf4471', 1);
INSERT INTO `pe_photos` VALUES (472, 'DSC02392', 'SONY DSC', '1316593829OjHg.jpg', 1316593829, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:09:21 10:22:10\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:09:10 04:55:37\n0x9004 : 2011:09:10 04:55:37\n0x9202 : 5.6000006708602\n0x9203 : 8.00 (800/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-09-10 04:55:37', 0, 150, 84, 'sLvLM1Dd8c472', 1);
INSERT INTO `pe_photos` VALUES (473, 'DSC02574', 'SONY DSC', '1319564911Phfj.jpg', 1319564912, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:46:40\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:11 23:47:00\n0x9004 : 2011:10:11 23:47:00\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-11 23:47:00', 0, 150, 84, 'Nn7Ixg24CH473', 1);
INSERT INTO `pe_photos` VALUES (474, 'DSC02575', 'SONY DSC', '1319564913pH63.jpg', 1319564913, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:46:42\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:11 23:47:08\n0x9004 : 2011:10:11 23:47:08\n0x9202 : 8\n0x9203 : 9.37 (937/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-11 23:47:08', 0, 150, 84, 'ucwQUhnn9c474', 1);
INSERT INTO `pe_photos` VALUES (475, 'DSC02581', 'SONY DSC', '13195649142wxl.jpg', 1319564914, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:46:45\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 00:11:30\n0x9004 : 2011:10:12 00:11:30\n0x9202 : 8\n0x9203 : 8.37 (837/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 00:11:30', 0, 150, 84, 'dUrcejJMbF475', 1);
INSERT INTO `pe_photos` VALUES (476, 'DSC02583', 'SONY DSC', '13195649159iFF.jpg', 1319564915, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:46:48\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 00:13:17\n0x9004 : 2011:10:12 00:13:17\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 00:13:17', 0, 150, 84, 'p55kjpBwPe476', 1);
INSERT INTO `pe_photos` VALUES (477, 'DSC02584', 'SONY DSC', '13195649166Lao.jpg', 1319564917, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:46:50\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 00:17:11\n0x9004 : 2011:10:12 00:17:11\n0x9202 : 8\n0x9203 : 9.62 (962/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 00:17:11', 0, 150, 84, 'a1vSQCz1VA477', 1);
INSERT INTO `pe_photos` VALUES (478, 'DSC02585', 'SONY DSC', '1319564917b0Oa.jpg', 1319564918, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:46:52\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 00:23:47\n0x9004 : 2011:10:12 00:23:47\n0x9202 : 8\n0x9203 : 8.37 (837/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 00:23:47', 0, 150, 84, 'fn9q2HI36N478', 1);
INSERT INTO `pe_photos` VALUES (479, 'DSC02586', 'SONY DSC', '1319564918eg0K.jpg', 1319564920, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:46:54\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 00:33:39\n0x9004 : 2011:10:12 00:33:39\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 00:33:39', 0, 84, 150, 'fA6purmzIM479', 1);
INSERT INTO `pe_photos` VALUES (480, 'DSC02587', 'SONY DSC', '1319565168CJlM.jpg', 1319565168, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:46:56\n0x829A :  0.013 s (1/80) (1/80)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 02:30:13\n0x9004 : 2011:10:12 02:30:13\n0x9202 : 5.6000006708602\n0x9203 : 5.12 (512/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 02:30:13', 0, 150, 84, '5OR4hNgsay480', 1);
INSERT INTO `pe_photos` VALUES (481, 'DSC02594', 'SONY DSC', '1319565169uvbw.jpg', 1319565169, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:46:59\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 21:51:08\n0x9004 : 2011:10:12 21:51:08\n0x9202 : 6.3000007484194\n0x9203 : 6.00 (600/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 21:51:08', 0, 84, 150, 'KskKIsaufi481', 1);
INSERT INTO `pe_photos` VALUES (482, 'DSC02598', 'SONY DSC', '1319565170po2K.jpg', 1319565171, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:02\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 22:08:29\n0x9004 : 2011:10:12 22:08:29\n0x9202 : 6.3000007484194\n0x9203 : 9.62 (962/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 22:08:29', 0, 150, 84, 'zCk5w7eqAL482', 1);
INSERT INTO `pe_photos` VALUES (483, 'DSC02599', 'SONY DSC', '1319565171giC9.jpg', 1319565172, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:04\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 22:08:42\n0x9004 : 2011:10:12 22:08:42\n0x9202 : 8\n0x9203 : 9.12 (912/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 22:08:42', 0, 84, 150, 'IJ9z6mktrT483', 1);
INSERT INTO `pe_photos` VALUES (484, 'DSC02600', 'SONY DSC', '1319565173zAep.jpg', 1319565174, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:07\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 22:09:05\n0x9004 : 2011:10:12 22:09:05\n0x9202 : 8\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 22:09:05', 0, 150, 84, '2EaqhvRThG484', 1);
INSERT INTO `pe_photos` VALUES (485, 'DSC02601', 'SONY DSC', '1319565174c3xM.jpg', 1319565175, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:10\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 22:11:04\n0x9004 : 2011:10:12 22:11:04\n0x9202 : 8\n0x9203 : 8.37 (837/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 22:11:04', 0, 84, 150, 'lxA4Sk5DGt485', 1);
INSERT INTO `pe_photos` VALUES (486, 'DSC02606', 'SONY DSC', '1319565175Uesw.jpg', 1319565176, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:13\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:12 22:29:43\n0x9004 : 2011:10:12 22:29:43\n0x9202 : 8\n0x9203 : 9.75 (975/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-12 22:29:43', 0, 150, 84, 'Bx1soRxeIg486', 1);
INSERT INTO `pe_photos` VALUES (487, 'DSC02610', 'SONY DSC', '13195651770DuS.jpg', 1319565177, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:16\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:11:16\n0x9004 : 2011:10:13 00:11:16\n0x9202 : 8\n0x9203 : 8.00 (800/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 24.00 (240/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 36\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:11:16', 0, 150, 81, '9MzIvAMRVU487', 1);
INSERT INTO `pe_photos` VALUES (488, 'DSC02611', 'SONY DSC', '13195651781qxF.jpg', 1319565179, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:18\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:13:40\n0x9004 : 2011:10:13 00:13:40\n0x9202 : 6.3000007484194\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:13:40', 0, 150, 84, 'UuOvQaRwzu488', 1);
INSERT INTO `pe_photos` VALUES (489, 'DSC02612', 'SONY DSC', '1319565180DLRN.jpg', 1319565180, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:20\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:14:27\n0x9004 : 2011:10:13 00:14:27\n0x9202 : 4.4999999955012\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:14:27', 0, 150, 84, 'Ib215f11Og489', 1);
INSERT INTO `pe_photos` VALUES (490, 'DSC02614', 'SONY DSC', '1319565182c1bO.jpg', 1319565182, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:23\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:19:00\n0x9004 : 2011:10:13 00:19:00\n0x9202 : 5.6000006708602\n0x9203 : 8.87 (887/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:19:00', 0, 150, 84, 'nfKPbdwviP490', 1);
INSERT INTO `pe_photos` VALUES (491, 'DSC02615', 'SONY DSC', '1319565183zueD.jpg', 1319565183, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:26\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:19:18\n0x9004 : 2011:10:13 00:19:18\n0x9202 : 4.4999999955012\n0x9203 : 8.75 (875/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:19:18', 0, 84, 150, 'LHGvswLyII491', 1);
INSERT INTO `pe_photos` VALUES (492, 'DSC02617', 'SONY DSC', '13195651832cLE.jpg', 1319565184, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:29\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:24:14\n0x9004 : 2011:10:13 00:24:14\n0x9202 : 4.4999999955012\n0x9203 : 9.00 (900/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:24:14', 0, 150, 84, '4ho3o06Iq9492', 1);
INSERT INTO `pe_photos` VALUES (493, 'DSC02623', 'SONY DSC', '1319565185b8GL.jpg', 1319565185, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:31\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:31:44\n0x9004 : 2011:10:13 00:31:44\n0x9202 : 5.6000006708602\n0x9203 : 9.12 (912/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:31:44', 0, 150, 84, 'CbB6zNtetn493', 1);
INSERT INTO `pe_photos` VALUES (494, 'DSC02625', 'SONY DSC', '1319565186DppM.jpg', 1319565186, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:33\n0x829A :  0.000 s (1/2500) (1/2500)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:41:28\n0x9004 : 2011:10:13 00:41:28\n0x9202 : 4.4999999955012\n0x9203 : 9.50 (950/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:41:28', 0, 150, 84, 'rHQQVpgm7U494', 1);
INSERT INTO `pe_photos` VALUES (495, 'DSC02626', 'SONY DSC', '1319565187wRMn.jpg', 1319565187, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:35\n0x829A :  0.000 s (1/2500) (1/2500)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:41:50\n0x9004 : 2011:10:13 00:41:50\n0x9202 : 4.4999999955012\n0x9203 : 9.62 (962/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:41:50', 0, 84, 150, 'Ta0hRcuqcc495', 1);
INSERT INTO `pe_photos` VALUES (496, 'DSC02631', 'SONY DSC', '1319565188xPbU.jpg', 1319565188, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:38\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 00:43:53\n0x9004 : 2011:10:13 00:43:53\n0x9202 : 8\n0x9203 : 9.37 (937/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 46.00 (460/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 69\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 00:43:53', 0, 150, 84, 'fMzxlxLM4U496', 1);
INSERT INTO `pe_photos` VALUES (497, 'DSC02640', 'SONY DSC', '1319565203HEBn.jpg', 1319565204, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:40\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 02:05:43\n0x9004 : 2011:10:13 02:05:43\n0x9202 : 8\n0x9203 : 8.62 (862/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 02:05:43', 0, 150, 84, 'ENyoFvwMOp497', 1);
INSERT INTO `pe_photos` VALUES (498, 'DSC02644', 'SONY DSC', '13195652042cuw.jpg', 1319565205, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:43\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 02:20:05\n0x9004 : 2011:10:13 02:20:05\n0x9202 : 6.3000007484194\n0x9203 : 9.25 (925/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 54.00 (540/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 81\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 02:20:05', 0, 84, 150, 'hktRdnEaOb498', 1);
INSERT INTO `pe_photos` VALUES (499, 'DSC02654', 'SONY DSC', '1319565687Ruw4.jpg', 1319565688, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:46\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 02:21:12\n0x9004 : 2011:10:13 02:21:12\n0x9202 : 8\n0x9203 : 9.25 (925/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 02:21:12', 0, 150, 84, '9jsE9nBBjh499', 1);
INSERT INTO `pe_photos` VALUES (500, 'DSC02661', 'SONY DSC', '1319565689uyMy.jpg', 1319565689, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:48\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/6.3\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 02:57:08\n0x9004 : 2011:10:13 02:57:08\n0x9202 : 6.3000007484194\n0x9203 : 6.25 (625/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 34.00 (340/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 51\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 02:57:08', 0, 150, 84, '0wP38igs3y500', 1);
INSERT INTO `pe_photos` VALUES (501, 'DSC02667', 'SONY DSC', '1319565690FyLn.jpg', 1319565690, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:50\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 03:47:18\n0x9004 : 2011:10:13 03:47:18\n0x9202 : 8\n0x9203 : 7.50 (750/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 03:47:18', 0, 150, 84, 'blJ35T8ADE501', 1);
INSERT INTO `pe_photos` VALUES (502, 'DSC02668', 'SONY DSC', '1319565691mS2h.jpg', 1319565691, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:53\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 03:47:20\n0x9004 : 2011:10:13 03:47:20\n0x9202 : 8\n0x9203 : 7.25 (725/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 03:47:20', 0, 150, 84, 'r4FU67D6ML502', 1);
INSERT INTO `pe_photos` VALUES (503, 'DSC02669', 'SONY DSC', '1319565693imuI.jpg', 1319565694, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:55\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 03:47:57\n0x9004 : 2011:10:13 03:47:57\n0x9202 : 8\n0x9203 : 8.62 (862/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 03:47:57', 0, 150, 84, '4k4GzovPrL503', 1);
INSERT INTO `pe_photos` VALUES (504, 'DSC02672', 'SONY DSC', '1319565695OCtT.jpg', 1319565696, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:47:58\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 03:51:52\n0x9004 : 2011:10:13 03:51:52\n0x9202 : 8\n0x9203 : 9.37 (937/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 24.00 (240/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 36\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 03:51:52', 0, 150, 84, 'F91OjeGQHE504', 1);
INSERT INTO `pe_photos` VALUES (505, 'DSC02682', 'SONY DSC', '1319565697TiqI.jpg', 1319565697, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:01\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/9.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 03:54:28\n0x9004 : 2011:10:13 03:54:28\n0x9202 : 8.9999999910024\n0x9203 : 9.37 (937/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 22.00 (220/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 33\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 03:54:28', 0, 150, 84, 'H5DbwOaPif505', 1);
INSERT INTO `pe_photos` VALUES (506, 'DSC02687', 'SONY DSC', '1319565698bSfp.jpg', 1319565698, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:03\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 04:21:36\n0x9004 : 2011:10:13 04:21:36\n0x9202 : 8\n0x9203 : 9.00 (900/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 04:21:36', 0, 150, 84, 'IuNpvUpdqH506', 1);
INSERT INTO `pe_photos` VALUES (507, 'DSC02692', 'SONY DSC', '1319565699IUkh.jpg', 1319565699, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:07\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/3.5\n0x8822 : Program (auto)\n0x8827 : 800\n0x9000 : 0230\n0x9003 : 2011:10:13 06:07:00\n0x9004 : 2011:10:13 06:07:00\n0x9202 : 3.5000001890894\n0x9203 : 0.37 (37/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 06:07:00', 0, 150, 84, 'VRiln3GC8j507', 1);
INSERT INTO `pe_photos` VALUES (508, 'DSC02698', 'SONY DSC', '13195656991opw.jpg', 1319565700, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:11\n0x829A :  0.100 s (1/10) (1/10)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1600\n0x9000 : 0230\n0x9003 : 2011:10:13 07:18:29\n0x9004 : 2011:10:13 07:18:29\n0x9202 : 2.8000003354301\n0x9203 : -3.50 (-350/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 07:18:29', 0, 150, 84, 'J6ACl0sze1508', 1);
INSERT INTO `pe_photos` VALUES (509, 'DSC02700', 'SONY DSC', '1319565700JIqM.jpg', 1319565701, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:17\n0x829A :  0.100 s (1/10) (1/10)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1600\n0x9000 : 0230\n0x9003 : 2011:10:13 07:21:31\n0x9004 : 2011:10:13 07:21:31\n0x9202 : 2.8000003354301\n0x9203 : -3.00 (-300/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 07:21:31', 0, 150, 84, 'wENahaNBrE509', 1);
INSERT INTO `pe_photos` VALUES (510, 'DSC02701', 'SONY DSC', '1319565702Mb1N.jpg', 1319565702, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:21\n0x829A :  0.100 s (1/10) (1/10)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1600\n0x9000 : 0230\n0x9003 : 2011:10:13 07:35:18\n0x9004 : 2011:10:13 07:35:18\n0x9202 : 2.8000003354301\n0x9203 : -3.25 (-325/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 07:35:18', 0, 150, 84, 'MsvCPvpfIf510', 1);
INSERT INTO `pe_photos` VALUES (511, 'DSC02702', 'SONY DSC', '1319565703LzSh.jpg', 1319565703, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:25\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 1600\n0x9000 : 0230\n0x9003 : 2011:10:13 08:06:05\n0x9004 : 2011:10:13 08:06:05\n0x9202 : 2.8000003354301\n0x9203 : -2.25 (-225/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 08:06:05', 0, 150, 84, 'J63qF1ofDv511', 1);
INSERT INTO `pe_photos` VALUES (512, 'DSC02711', 'SONY DSC', '1319565704F92R.jpg', 1319565704, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:29\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 21:58:07\n0x9004 : 2011:10:13 21:58:07\n0x9202 : 5.6000006708602\n0x9203 : 8.75 (875/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 21:58:07', 0, 150, 84, '6HJJsMtr1i512', 1);
INSERT INTO `pe_photos` VALUES (513, 'DSC02712', 'SONY DSC', '1319565705eNQK.jpg', 1319565706, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:31\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 21:58:33\n0x9004 : 2011:10:13 21:58:33\n0x9202 : 5.6000006708602\n0x9203 : 9.00 (900/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 21:58:33', 0, 150, 84, 'U0Vx0Swm1r513', 1);
INSERT INTO `pe_photos` VALUES (514, 'DSC02713', 'SONY DSC', '13195657061gBP.jpg', 1319565707, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:33\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 21:59:09\n0x9004 : 2011:10:13 21:59:09\n0x9202 : 8\n0x9203 : 9.37 (937/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 21:59:09', 0, 150, 84, 'eQMJ89GNhH514', 1);
INSERT INTO `pe_photos` VALUES (515, 'DSC02715', 'SONY DSC', '1319565708Ozor.jpg', 1319565708, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:36\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 22:04:31\n0x9004 : 2011:10:13 22:04:31\n0x9202 : 8\n0x9203 : 9.62 (962/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 22:04:31', 0, 150, 84, 'RsNRdQ9kUs515', 1);
INSERT INTO `pe_photos` VALUES (516, 'DSC02719', 'SONY DSC', '1319565709OvKg.jpg', 1319565710, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:38\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 22:06:29\n0x9004 : 2011:10:13 22:06:29\n0x9202 : 8\n0x9203 : 9.37 (937/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 37.00 (370/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 55\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 22:06:29', 0, 150, 84, '7uFmr7Pjah516', 1);
INSERT INTO `pe_photos` VALUES (517, 'DSC02720', 'SONY DSC', '1319565710BB57.jpg', 1319565710, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:41\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 22:14:40\n0x9004 : 2011:10:13 22:14:40\n0x9202 : 8\n0x9203 : 8.37 (837/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 39.00 (390/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 58\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 22:14:40', 0, 150, 84, '2oIa89nd5O517', 1);
INSERT INTO `pe_photos` VALUES (518, 'DSC02721', 'SONY DSC', '1319565711MOvD.jpg', 1319565711, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:44\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 22:23:24\n0x9004 : 2011:10:13 22:23:24\n0x9202 : 8\n0x9203 : 9.00 (900/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 19.00 (190/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 28\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 22:23:24', 0, 150, 84, 'x90Qcngdt5518', 1);
INSERT INTO `pe_photos` VALUES (519, 'DSC02722', 'SONY DSC', '1319565712ukuy.jpg', 1319565712, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:46\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 22:41:38\n0x9004 : 2011:10:13 22:41:38\n0x9202 : 8\n0x9203 : 9.12 (912/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 22:41:38', 0, 150, 84, 'nAiOwmg6BN519', 1);
INSERT INTO `pe_photos` VALUES (520, 'DSC02723', 'SONY DSC', '1319565713I8Sm.jpg', 1319565713, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:48\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 22:43:12\n0x9004 : 2011:10:13 22:43:12\n0x9202 : 8\n0x9203 : 9.87 (987/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 22:43:12', 0, 150, 84, 'bKp8xD3dxO520', 1);
INSERT INTO `pe_photos` VALUES (521, 'DSC02724', 'SONY DSC', '1319565714VuyH.jpg', 1319565714, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:51\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 22:48:30\n0x9004 : 2011:10:13 22:48:30\n0x9202 : 5.6000006708602\n0x9203 : 8.12 (812/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 22.00 (220/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 33\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 22:48:30', 0, 150, 84, 'DssdnwbfT3521', 1);
INSERT INTO `pe_photos` VALUES (522, 'DSC02732', 'SONY DSC', '1319565715Sz8h.jpg', 1319565715, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:53\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 23:17:05\n0x9004 : 2011:10:13 23:17:05\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 21.00 (210/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 31\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 23:17:05', 0, 150, 84, 'cAB6eyFpGB522', 1);
INSERT INTO `pe_photos` VALUES (523, 'DSC02733', 'SONY DSC', '1319565716nk5F.jpg', 1319565717, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:56\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 23:17:59\n0x9004 : 2011:10:13 23:17:59\n0x9202 : 8\n0x9203 : 9.87 (987/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 37.00 (370/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 55\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 23:17:59', 0, 150, 84, '2w7Sn5M5Vj523', 1);
INSERT INTO `pe_photos` VALUES (524, 'DSC02736', 'SONY DSC', '1319565718hbqI.jpg', 1319565718, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:48:58\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 23:41:16\n0x9004 : 2011:10:13 23:41:16\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 47.00 (470/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 70\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-13 23:41:16', 0, 150, 84, 'R1G6e93w26524', 1);
INSERT INTO `pe_photos` VALUES (525, 'DSC02737', 'SONY DSC', '13195657190A9w.jpg', 1319565719, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:01\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 00:04:54\n0x9004 : 2011:10:14 00:04:54\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 32.00 (320/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 48\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 00:04:54', 0, 150, 84, 'Kr3K7Jki7o525', 1);
INSERT INTO `pe_photos` VALUES (526, 'DSC02739', 'SONY DSC', '1319565720Gpud.jpg', 1319565721, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:04\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 00:09:00\n0x9004 : 2011:10:14 00:09:00\n0x9202 : 5.6000006708602\n0x9203 : 8.75 (875/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 00:09:00', 0, 150, 84, 'Fb6194N6Di526', 1);
INSERT INTO `pe_photos` VALUES (527, 'DSC02740', 'SONY DSC', '13195657211giN.jpg', 1319565722, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:06\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 00:33:50\n0x9004 : 2011:10:14 00:33:50\n0x9202 : 5.6000006708602\n0x9203 : 5.75 (575/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 29.00 (290/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 43\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 00:33:50', 0, 150, 84, '4sjnx8s4cA527', 1);
INSERT INTO `pe_photos` VALUES (528, 'DSC02744', 'SONY DSC', '1319565723Hu7f.jpg', 1319565723, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:09\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 00:59:25\n0x9004 : 2011:10:14 00:59:25\n0x9202 : 5.6000006708602\n0x9203 : 6.50 (650/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 00:59:25', 0, 150, 84, 'UQaLQFltdJ528', 1);
INSERT INTO `pe_photos` VALUES (529, 'DSC02859', 'SONY DSC', '1319566311611V.jpg', 1319566311, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:24\n0x829A :  0.000 s (1/3200) (1/3200)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:15 23:44:33\n0x9004 : 2011:10:15 23:44:33\n0x9202 : 4.4999999955012\n0x9203 : 9.62 (962/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 32.00 (320/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 48\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 23:44:33', 0, 150, 84, '9Ar8917JBO529', 1);
INSERT INTO `pe_photos` VALUES (530, 'DSC02868', 'SONY DSC', '1319566312Vaam.jpg', 1319566312, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:30\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/13.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 00:09:13\n0x9004 : 2011:10:16 00:09:13\n0x9202 : 12.99999803435\n0x9203 : 10.25 (1025/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 36.00 (360/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 54\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 00:09:13', 0, 84, 150, 'oFtfUfBfhL530', 1);
INSERT INTO `pe_photos` VALUES (531, 'DSC02869', 'SONY DSC', '13195663135fbL.jpg', 1319566313, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:33\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 00:53:04\n0x9004 : 2011:10:16 00:53:04\n0x9202 : 4.9999996711455\n0x9203 : 6.87 (687/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 48.00 (480/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 72\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 00:53:04', 0, 150, 84, 'pr1aFGIExG531', 1);
INSERT INTO `pe_photos` VALUES (532, 'DSC02876', 'SONY DSC', '1319566314ka9s.jpg', 1319566314, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:41\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 02:49:26\n0x9004 : 2011:10:16 02:49:26\n0x9202 : 8\n0x9203 : 7.50 (750/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 02:49:26', 0, 150, 84, 'sL9DF0LKSk532', 1);
INSERT INTO `pe_photos` VALUES (533, 'DSC02879', 'SONY DSC', '1319566315QGtB.jpg', 1319566316, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:45\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 02:52:58\n0x9004 : 2011:10:16 02:52:58\n0x9202 : 8\n0x9203 : 6.50 (650/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 24.00 (240/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 36\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 02:52:58', 0, 150, 84, 'iS1oRwrcj4533', 1);
INSERT INTO `pe_photos` VALUES (534, 'DSC02750', 'SONY DSC', '13195663169waO.jpg', 1319566317, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:12\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 02:42:21\n0x9004 : 2011:10:14 02:42:21\n0x9202 : 7.0999998788497\n0x9203 : 9.87 (987/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 25.00 (250/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 37\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 02:42:21', 0, 150, 84, 'FMQnQI919Q534', 1);
INSERT INTO `pe_photos` VALUES (535, 'DSC02751', 'SONY DSC', '1319566318srg7.jpg', 1319566319, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:15\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 02:44:17\n0x9004 : 2011:10:14 02:44:17\n0x9202 : 7.0999998788497\n0x9203 : 8.62 (862/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 25.00 (250/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 37\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 02:44:17', 0, 150, 84, 'Bfl4ahfSFL535', 1);
INSERT INTO `pe_photos` VALUES (536, 'DSC02752', 'SONY DSC', '1319566319waBv.jpg', 1319566320, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:16\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 02:52:21\n0x9004 : 2011:10:14 02:52:21\n0x9202 : 7.0999998788497\n0x9203 : 7.75 (775/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 02:52:21', 0, 150, 84, 'Uff9GcrTHp536', 1);
INSERT INTO `pe_photos` VALUES (537, 'DSC02762', 'SONY DSC', '1319566321TRiQ.jpg', 1319566321, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:19\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 03:45:22\n0x9004 : 2011:10:14 03:45:22\n0x9202 : 7.0999998788497\n0x9203 : 8.75 (875/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 03:45:22', 0, 150, 84, 'gfOd2RgwRr537', 1);
INSERT INTO `pe_photos` VALUES (538, 'DSC02765', 'SONY DSC', '1319566322rzkj.jpg', 1319566322, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:22\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 03:45:47\n0x9004 : 2011:10:14 03:45:47\n0x9202 : 7.0999998788497\n0x9203 : 9.12 (912/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 03:45:47', 0, 150, 72, 'D6y57lSxFS538', 1);
INSERT INTO `pe_photos` VALUES (539, 'DSC02766', 'SONY DSC', '1319566323qnqi.jpg', 1319566323, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:25\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 03:56:28\n0x9004 : 2011:10:14 03:56:28\n0x9202 : 8\n0x9203 : 8.12 (812/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 39\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 03:56:28', 0, 150, 84, 'uTkA8snE9O539', 1);
INSERT INTO `pe_photos` VALUES (540, 'DSC02767', 'SONY DSC', '1319566324dVj2.jpg', 1319566324, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:27\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 03:58:12\n0x9004 : 2011:10:14 03:58:12\n0x9202 : 8\n0x9203 : 8.25 (825/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 03:58:12', 0, 150, 84, 'F68RccEalx540', 1);
INSERT INTO `pe_photos` VALUES (541, 'DSC02768', 'SONY DSC', '1319566325SRNi.jpg', 1319566325, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:30\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:02:22\n0x9004 : 2011:10:14 04:02:22\n0x9202 : 8\n0x9203 : 9.37 (937/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:02:22', 0, 150, 84, '7PwbS2Au0P541', 1);
INSERT INTO `pe_photos` VALUES (542, 'DSC02769', 'SONY DSC', '131956632647Sv.jpg', 1319566326, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:32\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:02:44\n0x9004 : 2011:10:14 04:02:44\n0x9202 : 8\n0x9203 : 9.37 (937/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:02:44', 0, 150, 84, 'ISfjiSHMB0542', 1);
INSERT INTO `pe_photos` VALUES (543, 'DSC02770', 'SONY DSC', '1319566327FJzz.jpg', 1319566327, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:35\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:06:19\n0x9004 : 2011:10:14 04:06:19\n0x9202 : 8\n0x9203 : 9.00 (900/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:06:19', 0, 84, 150, '6nlgfT8i3t543', 1);
INSERT INTO `pe_photos` VALUES (544, 'DSC02772', 'SONY DSC', '1319566328zPOu.jpg', 1319566328, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:38\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:10:42\n0x9004 : 2011:10:14 04:10:42\n0x9202 : 8\n0x9203 : 10.25 (1025/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 33.00 (330/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 49\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:10:42', 0, 84, 150, 'oxfcByIipk544', 1);
INSERT INTO `pe_photos` VALUES (545, 'DSC02773', 'SONY DSC', '1319566329tjNq.jpg', 1319566329, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:40\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:12:57\n0x9004 : 2011:10:14 04:12:57\n0x9202 : 8\n0x9203 : 6.75 (675/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 43.00 (430/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 64\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:12:57', 0, 150, 84, '4SGvMyEOxq545', 1);
INSERT INTO `pe_photos` VALUES (546, 'DSC02774', 'SONY DSC', '1319566330nwyr.jpg', 1319566331, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:42\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:13:12\n0x9004 : 2011:10:14 04:13:12\n0x9202 : 8\n0x9203 : 6.12 (612/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:13:12', 0, 150, 84, 'aVUdtFN1IT546', 1);
INSERT INTO `pe_photos` VALUES (547, 'DSC02775', 'SONY DSC', '13195663313REO.jpg', 1319566331, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:45\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:13:24\n0x9004 : 2011:10:14 04:13:24\n0x9202 : 8\n0x9203 : 6.87 (687/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 43.00 (430/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 64\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:13:24', 0, 150, 96, '9bk3H1cfvA547', 1);
INSERT INTO `pe_photos` VALUES (548, 'DSC02777', 'SONY DSC', '1319566332da6F.jpg', 1319566332, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:47\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:14:11\n0x9004 : 2011:10:14 04:14:11\n0x9202 : 7.0999998788497\n0x9203 : 6.50 (650/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:14:11', 0, 84, 150, 'wgC52ib9SG548', 1);
INSERT INTO `pe_photos` VALUES (549, 'DSC02779', 'SONY DSC', '1319566333pg19.jpg', 1319566333, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:50\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:18:52\n0x9004 : 2011:10:14 04:18:52\n0x9202 : 7.0999998788497\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:18:52', 0, 84, 150, 'yx4GLkEExT549', 1);
INSERT INTO `pe_photos` VALUES (550, 'DSC02782', 'SONY DSC', '1319566334Bl5Q.jpg', 1319566334, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:53\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:34:35\n0x9004 : 2011:10:14 04:34:35\n0x9202 : 7.0999998788497\n0x9203 : 10.37 (1037/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 30.00 (300/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 45\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:34:35', 0, 150, 84, 'codEQJCdgi550', 1);
INSERT INTO `pe_photos` VALUES (551, 'DSC02785', 'SONY DSC', '1319566335cEQQ.jpg', 1319566335, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:55\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:36:19\n0x9004 : 2011:10:14 04:36:19\n0x9202 : 5.6000006708602\n0x9203 : 8.75 (875/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:36:19', 0, 150, 84, 'POERMghJEb551', 1);
INSERT INTO `pe_photos` VALUES (552, 'DSC02786', 'SONY DSC', '1319566336JV4x.jpg', 1319566337, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:49:58\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 04:37:17\n0x9004 : 2011:10:14 04:37:17\n0x9202 : 5.6000006708602\n0x9203 : 8.00 (800/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 04:37:17', 0, 150, 84, 'qRioq93mp2552', 1);
INSERT INTO `pe_photos` VALUES (553, 'DSC02787', 'SONY DSC', '1319566338lfvE.jpg', 1319566339, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:01\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 800\n0x9000 : 0230\n0x9003 : 2011:10:14 05:42:19\n0x9004 : 2011:10:14 05:42:19\n0x9202 : 8\n0x9203 : 5.62 (562/100)\n0x9204 : 0.30 (3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 05:42:19', 0, 150, 84, 'PbBCG9sCLu553', 1);
INSERT INTO `pe_photos` VALUES (554, 'DSC02790', 'SONY DSC', '1319566339hxjJ.jpg', 1319566340, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:03\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 20:10:39\n0x9004 : 2011:10:14 20:10:39\n0x9202 : 8\n0x9203 : 9.75 (975/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 20:10:39', 0, 150, 84, 'zMc8Iw8x4z554', 1);
INSERT INTO `pe_photos` VALUES (555, 'DSC02791', 'SONY DSC', '1319566341A5L8.jpg', 1319566341, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:06\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 20:11:05\n0x9004 : 2011:10:14 20:11:05\n0x9202 : 5.6000006708602\n0x9203 : 7.75 (775/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 20:11:05', 0, 150, 84, 'gT9F1K6r9C555', 1);
INSERT INTO `pe_photos` VALUES (556, 'DSC02792', 'SONY DSC', '1319566342xGKu.jpg', 1319566342, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:09\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 20:47:32\n0x9004 : 2011:10:14 20:47:32\n0x9202 : 5.6000006708602\n0x9203 : 8.00 (800/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 20:47:32', 0, 150, 84, 'hcTED17MbT556', 1);
INSERT INTO `pe_photos` VALUES (557, 'DSC02793', 'SONY DSC', '13195663424Kod.jpg', 1319566343, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:12\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 20:47:54\n0x9004 : 2011:10:14 20:47:54\n0x9202 : 5.6000006708602\n0x9203 : 9.75 (975/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 25.00 (250/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 37\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 20:47:54', 0, 150, 84, 'NFE7u0UDBr557', 1);
INSERT INTO `pe_photos` VALUES (558, 'DSC02794', 'SONY DSC', '1319566344halC.jpg', 1319566344, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:16\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 22:13:02\n0x9004 : 2011:10:14 22:13:02\n0x9202 : 8\n0x9203 : 8.75 (875/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 23.00 (230/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 34\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 22:13:02', 0, 84, 150, 'SkycMwAuGi558', 1);
INSERT INTO `pe_photos` VALUES (559, 'DSC02795', 'SONY DSC', '1319566345TdPl.jpg', 1319566345, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:20\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 22:17:42\n0x9004 : 2011:10:14 22:17:42\n0x9202 : 8\n0x9203 : 9.62 (962/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 25.00 (250/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 37\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 22:17:42', 0, 84, 150, 'GBwBdxjl2A559', 1);
INSERT INTO `pe_photos` VALUES (560, 'DSC02796', 'SONY DSC', '1319566346CoHj.jpg', 1319566347, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:24\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 22:19:14\n0x9004 : 2011:10:14 22:19:14\n0x9202 : 8\n0x9203 : 10.00 (1000/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 29.00 (290/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 43\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 22:19:14', 0, 150, 84, '0woUB3jCCK560', 1);
INSERT INTO `pe_photos` VALUES (561, 'DSC02797', 'SONY DSC', '1319566347HMhq.jpg', 1319566348, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:27\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:14 22:19:45\n0x9004 : 2011:10:14 22:19:45\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-14 22:19:45', 0, 150, 84, 's9qB9yOjNt561', 1);
INSERT INTO `pe_photos` VALUES (562, 'DSC02802', 'SONY DSC', '13195663484e4o.jpg', 1319566349, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:31\n0x829A :  0.000 s (1/2500) (1/2500)\n0x829D : f/4.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 00:19:22\n0x9004 : 2011:10:15 00:19:22\n0x9202 : 4.4999999955012\n0x9203 : 9.25 (925/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 19.00 (190/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 28\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 00:19:22', 0, 150, 84, '0S5HaOhAqH562', 1);
INSERT INTO `pe_photos` VALUES (563, 'DSC02808', 'SONY DSC', '1319566350gFci.jpg', 1319566350, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:34\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/7.1\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 00:39:47\n0x9004 : 2011:10:15 00:39:47\n0x9202 : 7.0999998788497\n0x9203 : 8.75 (875/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 00:39:47', 0, 150, 84, 'P6VeJvbKAe563', 1);
INSERT INTO `pe_photos` VALUES (564, 'DSC02812', 'SONY DSC', '13195663514TxV.jpg', 1319566352, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:38\n0x829A :  0.005 s (1/200) (1/200)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 00:57:26\n0x9004 : 2011:10:15 00:57:26\n0x9202 : 8\n0x9203 : 8.25 (825/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 31.00 (310/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 46\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 00:57:26', 0, 150, 84, 'NPj0imloKV564', 1);
INSERT INTO `pe_photos` VALUES (565, 'DSC02816', 'SONY DSC', '1319566352vdp6.jpg', 1319566353, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:42\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 01:04:44\n0x9004 : 2011:10:15 01:04:44\n0x9202 : 8\n0x9203 : 9.00 (900/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 19.00 (190/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 28\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 01:04:44', 0, 150, 84, 's1InTGAIz2565', 1);
INSERT INTO `pe_photos` VALUES (566, 'DSC02820', 'SONY DSC', '1319566354V3h6.jpg', 1319566354, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:47\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/4.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 01:07:01\n0x9004 : 2011:10:15 01:07:01\n0x9202 : 4\n0x9203 : 9.00 (900/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 26.00 (260/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 39\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 01:07:01', 0, 150, 84, 'q0uOG7afdv566', 1);
INSERT INTO `pe_photos` VALUES (567, 'DSC02825', 'SONY DSC', '1319566355tTkk.jpg', 1319566355, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:50\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 03:04:04\n0x9004 : 2011:10:15 03:04:04\n0x9202 : 8\n0x9203 : 7.87 (787/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 03:04:04', 0, 84, 150, 'psszclgyJB567', 1);
INSERT INTO `pe_photos` VALUES (568, 'DSC02828', 'SONY DSC', '1319566356a42B.jpg', 1319566356, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:55\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 03:06:15\n0x9004 : 2011:10:15 03:06:15\n0x9202 : 8\n0x9203 : 7.87 (787/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 03:06:15', 0, 150, 84, 'Sn689mU3xf568', 1);
INSERT INTO `pe_photos` VALUES (569, 'DSC02839', 'SONY DSC', '1319566357o2b7.jpg', 1319566357, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:50:59\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 03:16:25\n0x9004 : 2011:10:15 03:16:25\n0x9202 : 8\n0x9203 : 7.75 (775/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 03:16:25', 0, 150, 84, 'w4xGHsEgun569', 1);
INSERT INTO `pe_photos` VALUES (570, 'DSC02844', 'SONY DSC', '1319566358VyO5.jpg', 1319566358, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:03\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 03:22:07\n0x9004 : 2011:10:15 03:22:07\n0x9202 : 8\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 03:22:07', 0, 150, 84, '5njQ4Nvyu3570', 1);
INSERT INTO `pe_photos` VALUES (571, 'DSC02849', 'SONY DSC', '13195663596PIb.jpg', 1319566359, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:07\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:15 03:30:37\n0x9004 : 2011:10:15 03:30:37\n0x9202 : 8\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 03:30:37', 0, 150, 84, '3OkRq25lqx571', 1);
INSERT INTO `pe_photos` VALUES (572, 'DSC02854', 'SONY DSC', '1319566360U9vl.jpg', 1319566360, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:12\n0x829A :  0.100 s (1/10) (1/10)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:15 05:52:40\n0x9004 : 2011:10:15 05:52:40\n0x9202 : 5.6000006708602\n0x9203 : 0.12 (12/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 05:52:40', 0, 150, 84, 'FEkO59EcOM572', 1);
INSERT INTO `pe_photos` VALUES (573, 'DSC02856', 'SONY DSC', '1319566361nz8v.jpg', 1319566362, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:18\n0x829A :  0.003 s (1/320) (1/320)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:15 19:57:17\n0x9004 : 2011:10:15 19:57:17\n0x9202 : 8\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 19:57:17', 0, 84, 150, '7S1MDKEND8573', 1);
INSERT INTO `pe_photos` VALUES (574, 'DSC02857', 'SONY DSC', '1319566362uMxb.jpg', 1319566363, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:21\n0x829A :  0.001 s (1/1250) (1/1250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:15 23:43:59\n0x9004 : 2011:10:15 23:43:59\n0x9202 : 8\n0x9203 : 9.75 (975/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 23:43:59', 0, 150, 84, '0E3INj5yCP574', 1);
INSERT INTO `pe_photos` VALUES (575, 'DSC02862', 'SONY DSC', '1319566363n5L8.jpg', 1319566364, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:27\n0x829A :  0.001 s (1/2000) (1/2000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:15 23:49:44\n0x9004 : 2011:10:15 23:49:44\n0x9202 : 5.6000006708602\n0x9203 : 9.00 (900/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-15 23:49:44', 0, 84, 150, 'bmjvU1iPhV575', 1);
INSERT INTO `pe_photos` VALUES (576, 'DSC02870', 'SONY DSC', '1319566365HnFv.jpg', 1319566365, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:37\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/10.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 01:56:01\n0x9004 : 2011:10:16 01:56:01\n0x9202 : 9.9999993422909\n0x9203 : 10.00 (1000/100)\n0x9204 : -0.70 (-7/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 21.00 (210/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 31\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 01:56:01', 0, 150, 84, 'pgPRT3j4y2576', 1);
INSERT INTO `pe_photos` VALUES (577, 'DSC02887', 'SONY DSC', '1319566382yz1v.jpg', 1319566384, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:52\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 03:07:03\n0x9004 : 2011:10:16 03:07:03\n0x9202 : 5.6000006708602\n0x9203 : 7.87 (787/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 03:07:03', 0, 84, 150, 'wdJiqrRtVD577', 1);
INSERT INTO `pe_photos` VALUES (578, 'DSC02888', 'SONY DSC', '1319566385Jr9m.jpg', 1319566385, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:56\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 03:07:31\n0x9004 : 2011:10:16 03:07:31\n0x9202 : 5.6000006708602\n0x9203 : 7.62 (762/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 28.00 (280/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 42\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 03:07:31', 0, 150, 84, 'TruINS6qNq578', 1);
INSERT INTO `pe_photos` VALUES (579, 'DSC02889', 'SONY DSC', '1319566386jyT7.jpg', 1319566387, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:01\n0x829A :  0.001 s (1/1600) (1/1600)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 03:27:36\n0x9004 : 2011:10:16 03:27:36\n0x9202 : 8\n0x9203 : 10.25 (1025/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 03:27:36', 0, 150, 84, 'rlCMjxfGOh579', 1);
INSERT INTO `pe_photos` VALUES (580, 'DSC02901', 'SONY DSC', '1319566387tjyj.jpg', 1319566388, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:05\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 04:49:00\n0x9004 : 2011:10:16 04:49:00\n0x9202 : 8\n0x9203 : 7.87 (787/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 04:49:00', 0, 150, 84, 'vtSnOIdES6580', 1);
INSERT INTO `pe_photos` VALUES (581, 'DSC02884', 'SONY DSC', '13195663887Awc.jpg', 1319566389, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:51:48\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/5.6\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 02:57:13\n0x9004 : 2011:10:16 02:57:13\n0x9202 : 5.6000006708602\n0x9203 : 6.00 (600/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 02:57:13', 0, 150, 84, 'InUwxsJ6uf581', 1);
INSERT INTO `pe_photos` VALUES (582, 'DSC02907', 'SONY DSC', '1319566389ocoB.jpg', 1319566390, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:10\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:10:16 05:06:04\n0x9004 : 2011:10:16 05:06:04\n0x9202 : 8\n0x9203 : 6.75 (675/100)\n0x9204 : 0.30 (3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 05:06:04', 0, 84, 150, 'zGv86ywqcn582', 1);
INSERT INTO `pe_photos` VALUES (583, 'DSC02962', 'SONY DSC', '1319566702SN0p.jpg', 1319566703, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:39\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:16 21:47:02\n0x9004 : 2011:10:16 21:47:02\n0x9202 : 8\n0x9203 : 8.87 (887/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 21:47:02', 0, 150, 84, 'kGnPTOoUom583', 1);
INSERT INTO `pe_photos` VALUES (584, 'DSC02973', 'SONY DSC', '13195667036oiD.jpg', 1319566704, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:41\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:16 22:03:32\n0x9004 : 2011:10:16 22:03:32\n0x9202 : 8\n0x9203 : 7.87 (787/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 22:03:32', 0, 150, 84, 'z6LCaingDe584', 1);
INSERT INTO `pe_photos` VALUES (585, 'DSC02974', 'SONY DSC', '1319566704sHJr.jpg', 1319566705, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:44\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:16 22:17:57\n0x9004 : 2011:10:16 22:17:57\n0x9202 : 8\n0x9203 : 9.25 (925/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 22:17:57', 0, 150, 84, '3wUEMHp0HA585', 1);
INSERT INTO `pe_photos` VALUES (586, 'DSC02975', 'SONY DSC', '13195667068vlL.jpg', 1319566706, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:47\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:16 22:18:24\n0x9004 : 2011:10:16 22:18:24\n0x9202 : 8\n0x9203 : 9.25 (925/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 30.00 (300/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 45\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-16 22:18:24', 0, 84, 150, 'VMfAeC4kig586', 1);
INSERT INTO `pe_photos` VALUES (587, 'DSC02978', 'SONY DSC', '1319566706M0f6.jpg', 1319566707, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:49\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:17 00:04:16\n0x9004 : 2011:10:17 00:04:16\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-17 00:04:16', 0, 150, 84, 'ooDK0ab3RD587', 1);
INSERT INTO `pe_photos` VALUES (588, 'DSC02994', 'SONY DSC', '1319566707wx3B.jpg', 1319566708, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:52\n0x829A :  0.008 s (1/125) (1/125)\n0x829D : f/10.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:17 22:24:42\n0x9004 : 2011:10:17 22:24:42\n0x9202 : 9.9999993422909\n0x9203 : 7.37 (737/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : Yes\n0x920A : 21.00 (210/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA405 : 31\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-17 22:24:42', 0, 150, 84, 'b90ErEOmt1588', 1);
INSERT INTO `pe_photos` VALUES (589, 'DSC03002', 'SONY DSC', '1319566708vbHO.jpg', 1319566709, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:55\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/6.3\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:17 22:55:14\n0x9004 : 2011:10:17 22:55:14\n0x9202 : 6.3000007484194\n0x9203 : 6.12 (612/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : Yes\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-17 22:55:14', 0, 150, 84, 'RlG6GHjxCI589', 1);
INSERT INTO `pe_photos` VALUES (590, 'DSC03007', 'SONY DSC', '1319566709ym8h.jpg', 1319566709, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:25 19:52:58\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:17 23:00:35\n0x9004 : 2011:10:17 23:00:35\n0x9202 : 8\n0x9203 : 9.12 (912/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-17 23:00:35', 0, 84, 150, 'HU1MacPoqM590', 1);
INSERT INTO `pe_photos` VALUES (717, 'DSC03010', 'SONY DSC', '1319616412nyrI.jpg', 1319616413, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:31:43\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/8.0\n0x8822 : Reserved\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:17 23:11:03\n0x9004 : 2011:10:17 23:11:03\n0x9202 : 8\n0x9203 : 8.62 (862/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Manual Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-17 23:11:03', 0, 150, 84, 'QReGxfJhu5717', 1);
INSERT INTO `pe_photos` VALUES (718, 'DSC03014', 'SONY DSC', '131961641566E0.jpg', 1319616416, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:31:47\n0x829A :  0.033 s (1/30) (1/30)\n0x829D : f/2.8\n0x8822 : Program (auto)\n0x8827 : 640\n0x9000 : 0230\n0x9003 : 2011:10:17 23:29:16\n0x9004 : 2011:10:17 23:29:16\n0x9202 : 2.8000003354301\n0x9203 : -0.88 (-88/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : Yes\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-17 23:29:16', 0, 150, 84, 'UH7Mv5eRd5718', 1);
INSERT INTO `pe_photos` VALUES (719, 'DSC03018', 'SONY DSC', '13196164171lxJ.jpg', 1319616418, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:31:50\n0x829A :  0.017 s (1/60) (1/60)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:17 23:32:24\n0x9004 : 2011:10:17 23:32:24\n0x9202 : 8\n0x9203 : 5.62 (562/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : Yes\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-17 23:32:24', 0, 84, 150, 'JUhafPzqmK719', 1);
INSERT INTO `pe_photos` VALUES (720, 'DSC03021', 'SONY DSC', '13196164191MSB.jpg', 1319616420, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:31:53\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 01:01:20\n0x9004 : 2011:10:18 01:01:20\n0x9202 : 8\n0x9203 : 9.25 (925/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 01:01:20', 0, 150, 84, 'G7vLDTRh6f720', 1);
INSERT INTO `pe_photos` VALUES (721, 'DSC03024', 'SONY DSC', '1319616421dfpo.jpg', 1319616422, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:31:55\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 01:43:05\n0x9004 : 2011:10:18 01:43:05\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 01:43:05', 0, 150, 84, 'bPM9vc4AT7721', 1);
INSERT INTO `pe_photos` VALUES (722, 'DSC03025', 'SONY DSC', '1319616423nfa5.jpg', 1319616423, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:31:58\n0x829A :  0.003 s (1/400) (1/400)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 02:07:13\n0x9004 : 2011:10:18 02:07:13\n0x9202 : 8\n0x9203 : 8.62 (862/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 02:07:13', 0, 150, 84, 'vxQCx1m2hy722', 1);
INSERT INTO `pe_photos` VALUES (723, 'DSC03026', 'SONY DSC', '1319616425yxe1.jpg', 1319616425, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:00\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 02:08:17\n0x9004 : 2011:10:18 02:08:17\n0x9202 : 8\n0x9203 : 9.50 (950/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 2.8284271247462\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 16.00 (160/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 24\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 02:08:17', 0, 150, 84, 'BOv2t4LeaG723', 1);
INSERT INTO `pe_photos` VALUES (724, 'DSC03031', 'SONY DSC', '1319616426u7Np.jpg', 1319616427, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:03\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/20.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 02:17:27\n0x9004 : 2011:10:18 02:17:27\n0x9202 : 19.999998684582\n0x9203 : 9.75 (975/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : Yes\n0x920A : 42.00 (420/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 63\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 02:17:27', 0, 150, 84, 'kcq2bL45gN724', 1);
INSERT INTO `pe_photos` VALUES (725, 'DSC03034', 'SONY DSC', '1319616428LzGt.jpg', 1319616429, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:05\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 02:20:48\n0x9004 : 2011:10:18 02:20:48\n0x9202 : 8\n0x9203 : 9.75 (975/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 02:20:48', 0, 150, 84, '2CeI0CyltG725', 1);
INSERT INTO `pe_photos` VALUES (726, 'DSC03035', 'SONY DSC', '1319616430nEVc.jpg', 1319616431, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:08\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 02:21:33\n0x9004 : 2011:10:18 02:21:33\n0x9202 : 8\n0x9203 : 9.87 (987/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 02:21:33', 0, 150, 84, 'KUo0MI4rN4726', 1);
INSERT INTO `pe_photos` VALUES (727, 'DSC03038', 'SONY DSC', '1319616432HsVA.jpg', 1319616433, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:10\n0x829A :  0.004 s (1/250) (1/250)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 02:22:31\n0x9004 : 2011:10:18 02:22:31\n0x9202 : 8\n0x9203 : 7.50 (750/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 02:22:31', 0, 84, 150, '227hO8TH35727', 1);
INSERT INTO `pe_photos` VALUES (728, 'DSC03039', 'SONY DSC', '13196164341QOz.jpg', 1319616435, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:13\n0x829A :  0.001 s (1/800) (1/800)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 13:27:08\n0x9004 : 2011:10:18 13:27:08\n0x9202 : 8\n0x9203 : 10.12 (1012/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 13:27:08', 0, 150, 84, 'oPxtrwVQIi728', 1);
INSERT INTO `pe_photos` VALUES (729, 'DSC03040', 'SONY DSC', '1319616436tjNb.jpg', 1319616436, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:16\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 13:57:03\n0x9004 : 2011:10:18 13:57:03\n0x9202 : 8\n0x9203 : 9.87 (987/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 30.00 (300/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 45\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 13:57:03', 0, 150, 84, 'qm8FmJhf5U729', 1);
INSERT INTO `pe_photos` VALUES (730, 'DSC03041', 'SONY DSC', '1319616438KF92.jpg', 1319616438, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:19\n0x829A :  0.006 s (1/160) (1/160)\n0x829D : f/13.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 13:58:29\n0x9004 : 2011:10:18 13:58:29\n0x9202 : 12.99999803435\n0x9203 : 8.62 (862/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : Yes\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 13:58:29', 0, 150, 84, '0SL65u3O6Q730', 1);
INSERT INTO `pe_photos` VALUES (731, 'DSC03047', 'SONY DSC', '1319616439itrm.jpg', 1319616440, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:21\n0x829A :  0.002 s (1/640) (1/640)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 14:03:43\n0x9004 : 2011:10:18 14:03:43\n0x9202 : 8\n0x9203 : 9.25 (925/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 45.00 (450/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 67\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 14:03:43', 0, 150, 84, 'JkAaERwtC0731', 1);
INSERT INTO `pe_photos` VALUES (732, 'DSC03051', 'SONY DSC', '1319616441kxv3.jpg', 1319616442, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:23\n0x829A :  0.001 s (1/1000) (1/1000)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 14:46:44\n0x9004 : 2011:10:18 14:46:44\n0x9202 : 8\n0x9203 : 9.62 (962/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4.5002339387552\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 37.00 (370/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 55\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 14:46:44', 0, 150, 84, 'CTlAtyeAD0732', 1);
INSERT INTO `pe_photos` VALUES (733, 'DSC03052', 'SONY DSC', '1319616443EKbS.jpg', 1319616444, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:26\n0x829A :  0.002 s (1/500) (1/500)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:18 14:46:55\n0x9004 : 2011:10:18 14:46:55\n0x9202 : 8\n0x9203 : 8.75 (875/100)\n0x9204 : -0.30 (-3/10)\n0x9205 : 4.9933221956064\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 49.00 (490/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 73\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 14:46:55', 0, 150, 84, 'pCS6yMprvl733', 1);
INSERT INTO `pe_photos` VALUES (734, 'DSC03055', 'SONY DSC', '1319616445blUT.jpg', 1319616446, '0x010E : SONY DSC\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:26 09:32:29\n0x829A :  0.040 s (1/25) (1/25)\n0x829D : f/3.5\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 1600\n0x9000 : 0230\n0x9003 : 2011:10:18 20:47:59\n0x9004 : 2011:10:18 20:47:59\n0x9202 : 3.5000001890894\n0x9203 : -1.13 (-113/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 3.4942915836668\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 18.00 (180/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 27\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-10-18 20:47:59', 0, 150, 84, 'c9wC95ovoR734', 1);
INSERT INTO `pe_photos` VALUES (744, 'plateau_lassithi', '', '131970932348Cs.jpg', 1319709323, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:27 11:53:23\n0x829D : f/8.0\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 02:04:43\n0x9004 : 2011:10:13 02:04:43\n0x9202 : 8\n', '2011-10-13 02:04:43', 0, 150, 49, 'mGKsTnTaSN744', 1);
INSERT INTO `pe_photos` VALUES (743, 'misc2', '', '1319709322dOOu.jpg', 1319709322, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:27 11:53:41\n0x829D : f/8.0\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 23:16:38\n0x9004 : 2011:10:13 23:16:38\n0x9202 : 8\n', '2011-10-13 23:16:38', 0, 150, 50, 'oufnJBmF4z743', 1);
INSERT INTO `pe_photos` VALUES (742, 'misc1', '', '13197093224RH0.jpg', 1319709322, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:27 11:53:37\n0x829D : f/8.0\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 03:52:19\n0x9004 : 2011:10:13 03:52:19\n0x9202 : 8\n', '2011-10-13 03:52:19', 0, 150, 42, 'T1oJjwD0F9742', 1);
INSERT INTO `pe_photos` VALUES (740, 'archanes_road', '', '13197093204tbo.jpg', 1319709321, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:27 11:53:20\n0x829D : f/8.0\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:11 23:47:19\n0x9004 : 2011:10:11 23:47:19\n0x9202 : 8\n', '2011-10-11 23:47:19', 0, 150, 60, 'AGEOjOeNOK740', 1);
INSERT INTO `pe_photos` VALUES (741, 'plateau_lassithi2', '', '1319709321LBrl.jpg', 1319709321, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:10:27 11:53:33\n0x829D : f/6.3\n0x8827 : 200\n0x9000 : 0230\n0x9003 : 2011:10:13 02:20:05\n0x9004 : 2011:10:13 02:20:05\n0x9202 : 6.3000007484194\n0x920A : 19.19 (2147483647/111878548)\n0xA405 : 19\n', '2011-10-13 02:20:05', 0, 150, 31, '9yd9Ae6gsp741', 1);
INSERT INTO `pe_photos` VALUES (746, 'pano_citadelle', '', '13207883231Som.jpg', 1320788323, '0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:11:08 22:38:20\n0x829D : f/8.0\n0x8827 : 400\n0x9000 : 0230\n0x9003 : 2011:11:05 22:52:42\n0x9004 : 2011:11:05 22:52:42\n0x9202 : 8\n0x920A : 17.56 (2147483647/122277067)\n0xA405 : 18\n', '2011-11-05 22:52:42', 0, 150, 29, '74wv5Ja661746', 1);
INSERT INTO `pe_photos` VALUES (747, '[Group 2]-DSC03113_DSC03139-27 images', 'Stitched Panorama', '1322001468MOOo.jpg', 1322001468, '0x010E : Stitched Panorama\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:11:22 23:36:46\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/8.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:11:19 17:32:04\n0x9004 : 2011:11:19 17:32:04\n0x9202 : 8\n0x9203 : 6.87 (687/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-11-19 17:32:04', 0, 150, 59, 'Eqg2iB8cp6747', 1);
INSERT INTO `pe_photos` VALUES (748, '[Group 1]-DSC03140_DSC03161-22 images', 'Stitched Panorama', '1322001469H842.jpg', 1322001469, '0x010E : Stitched Panorama\n0x010F : SONY\n0x0110 : NEX-3\n0x011A : 300.00 (300/1) Inches\n0x011B : 300.00 (300/1) Inches\n0x0128 : Inches\n0x0131 : Adobe Photoshop Lightroom 3.4\n0x0132 : 2011:11:22 23:37:17\n0x829A :  0.010 s (1/100) (1/100)\n0x829D : f/9.0\n0x8822 : Aperture Priority (semi-auto)\n0x8827 : 250\n0x9000 : 0230\n0x9003 : 2011:11:19 17:51:33\n0x9004 : 2011:11:19 17:51:33\n0x9202 : 8.9999999910024\n0x9203 : 7.00 (700/100)\n0x9204 : 0.00 (0/10)\n0x9205 : 5.5983434623808\n0x9207 : Matrix\n0x9208 : Cloudy\n0x9209 : No\n0x920A : 55.00 (550/10)\n0xA300 : \n0xA301 : \n0xA401 : Normal Process\n0xA402 : Auto Exposure\n0xA403 : 0\n0xA405 : 82\n0xA406 : Standard\n0xA408 : Normal\n0xA409 : Normal\n0xA40A : Normal\n', '2011-11-19 17:51:33', 0, 150, 31, '074UUCUJCC748', 1);

-- --------------------------------------------------------

-- 
-- Structure de la table `pe_photos_tags`
-- 

CREATE TABLE `pe_photos_tags` (
  `photo_id` int(11) NOT NULL default '0',
  `tag_id` int(11) NOT NULL default '0',
  UNIQUE KEY `photo_id_2` (`photo_id`,`tag_id`),
  KEY `photo_id` (`photo_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `pe_photos_tags`
-- 

INSERT INTO `pe_photos_tags` VALUES (2, 1);
INSERT INTO `pe_photos_tags` VALUES (2, 2);
INSERT INTO `pe_photos_tags` VALUES (2, 3);
INSERT INTO `pe_photos_tags` VALUES (2, 4);
INSERT INTO `pe_photos_tags` VALUES (3, 1);
INSERT INTO `pe_photos_tags` VALUES (3, 2);
INSERT INTO `pe_photos_tags` VALUES (3, 3);
INSERT INTO `pe_photos_tags` VALUES (3, 4);
INSERT INTO `pe_photos_tags` VALUES (4, 1);
INSERT INTO `pe_photos_tags` VALUES (4, 2);
INSERT INTO `pe_photos_tags` VALUES (4, 3);
INSERT INTO `pe_photos_tags` VALUES (4, 4);
INSERT INTO `pe_photos_tags` VALUES (5, 1);
INSERT INTO `pe_photos_tags` VALUES (5, 2);
INSERT INTO `pe_photos_tags` VALUES (5, 3);
INSERT INTO `pe_photos_tags` VALUES (5, 4);
INSERT INTO `pe_photos_tags` VALUES (6, 1);
INSERT INTO `pe_photos_tags` VALUES (6, 2);
INSERT INTO `pe_photos_tags` VALUES (6, 3);
INSERT INTO `pe_photos_tags` VALUES (6, 4);
INSERT INTO `pe_photos_tags` VALUES (7, 1);
INSERT INTO `pe_photos_tags` VALUES (7, 2);
INSERT INTO `pe_photos_tags` VALUES (7, 3);
INSERT INTO `pe_photos_tags` VALUES (7, 4);
INSERT INTO `pe_photos_tags` VALUES (8, 1);
INSERT INTO `pe_photos_tags` VALUES (8, 2);
INSERT INTO `pe_photos_tags` VALUES (8, 3);
INSERT INTO `pe_photos_tags` VALUES (8, 4);
INSERT INTO `pe_photos_tags` VALUES (9, 7);
INSERT INTO `pe_photos_tags` VALUES (9, 8);
INSERT INTO `pe_photos_tags` VALUES (9, 9);
INSERT INTO `pe_photos_tags` VALUES (10, 7);
INSERT INTO `pe_photos_tags` VALUES (10, 8);
INSERT INTO `pe_photos_tags` VALUES (10, 9);
INSERT INTO `pe_photos_tags` VALUES (11, 7);
INSERT INTO `pe_photos_tags` VALUES (11, 8);
INSERT INTO `pe_photos_tags` VALUES (11, 9);
INSERT INTO `pe_photos_tags` VALUES (12, 7);
INSERT INTO `pe_photos_tags` VALUES (12, 8);
INSERT INTO `pe_photos_tags` VALUES (12, 9);
INSERT INTO `pe_photos_tags` VALUES (13, 7);
INSERT INTO `pe_photos_tags` VALUES (13, 8);
INSERT INTO `pe_photos_tags` VALUES (13, 9);
INSERT INTO `pe_photos_tags` VALUES (14, 7);
INSERT INTO `pe_photos_tags` VALUES (14, 8);
INSERT INTO `pe_photos_tags` VALUES (14, 9);
INSERT INTO `pe_photos_tags` VALUES (15, 7);
INSERT INTO `pe_photos_tags` VALUES (15, 8);
INSERT INTO `pe_photos_tags` VALUES (15, 9);
INSERT INTO `pe_photos_tags` VALUES (16, 7);
INSERT INTO `pe_photos_tags` VALUES (16, 8);
INSERT INTO `pe_photos_tags` VALUES (16, 9);
INSERT INTO `pe_photos_tags` VALUES (17, 7);
INSERT INTO `pe_photos_tags` VALUES (17, 8);
INSERT INTO `pe_photos_tags` VALUES (17, 9);
INSERT INTO `pe_photos_tags` VALUES (18, 7);
INSERT INTO `pe_photos_tags` VALUES (18, 8);
INSERT INTO `pe_photos_tags` VALUES (18, 9);
INSERT INTO `pe_photos_tags` VALUES (19, 1);
INSERT INTO `pe_photos_tags` VALUES (19, 2);
INSERT INTO `pe_photos_tags` VALUES (19, 3);
INSERT INTO `pe_photos_tags` VALUES (19, 4);
INSERT INTO `pe_photos_tags` VALUES (20, 1);
INSERT INTO `pe_photos_tags` VALUES (20, 2);
INSERT INTO `pe_photos_tags` VALUES (20, 3);
INSERT INTO `pe_photos_tags` VALUES (20, 4);
INSERT INTO `pe_photos_tags` VALUES (21, 1);
INSERT INTO `pe_photos_tags` VALUES (21, 2);
INSERT INTO `pe_photos_tags` VALUES (21, 3);
INSERT INTO `pe_photos_tags` VALUES (21, 4);
INSERT INTO `pe_photos_tags` VALUES (22, 1);
INSERT INTO `pe_photos_tags` VALUES (22, 2);
INSERT INTO `pe_photos_tags` VALUES (22, 3);
INSERT INTO `pe_photos_tags` VALUES (22, 4);
INSERT INTO `pe_photos_tags` VALUES (23, 1);
INSERT INTO `pe_photos_tags` VALUES (23, 2);
INSERT INTO `pe_photos_tags` VALUES (23, 3);
INSERT INTO `pe_photos_tags` VALUES (23, 4);
INSERT INTO `pe_photos_tags` VALUES (24, 1);
INSERT INTO `pe_photos_tags` VALUES (24, 2);
INSERT INTO `pe_photos_tags` VALUES (24, 3);
INSERT INTO `pe_photos_tags` VALUES (24, 4);
INSERT INTO `pe_photos_tags` VALUES (25, 1);
INSERT INTO `pe_photos_tags` VALUES (25, 2);
INSERT INTO `pe_photos_tags` VALUES (25, 3);
INSERT INTO `pe_photos_tags` VALUES (25, 4);
INSERT INTO `pe_photos_tags` VALUES (26, 1);
INSERT INTO `pe_photos_tags` VALUES (26, 2);
INSERT INTO `pe_photos_tags` VALUES (26, 3);
INSERT INTO `pe_photos_tags` VALUES (26, 4);
INSERT INTO `pe_photos_tags` VALUES (27, 1);
INSERT INTO `pe_photos_tags` VALUES (27, 2);
INSERT INTO `pe_photos_tags` VALUES (27, 3);
INSERT INTO `pe_photos_tags` VALUES (27, 4);
INSERT INTO `pe_photos_tags` VALUES (28, 1);
INSERT INTO `pe_photos_tags` VALUES (28, 2);
INSERT INTO `pe_photos_tags` VALUES (28, 3);
INSERT INTO `pe_photos_tags` VALUES (28, 4);
INSERT INTO `pe_photos_tags` VALUES (29, 1);
INSERT INTO `pe_photos_tags` VALUES (29, 2);
INSERT INTO `pe_photos_tags` VALUES (29, 3);
INSERT INTO `pe_photos_tags` VALUES (29, 4);
INSERT INTO `pe_photos_tags` VALUES (30, 1);
INSERT INTO `pe_photos_tags` VALUES (30, 2);
INSERT INTO `pe_photos_tags` VALUES (30, 3);
INSERT INTO `pe_photos_tags` VALUES (30, 4);
INSERT INTO `pe_photos_tags` VALUES (31, 1);
INSERT INTO `pe_photos_tags` VALUES (31, 2);
INSERT INTO `pe_photos_tags` VALUES (31, 3);
INSERT INTO `pe_photos_tags` VALUES (31, 4);
INSERT INTO `pe_photos_tags` VALUES (32, 1);
INSERT INTO `pe_photos_tags` VALUES (32, 2);
INSERT INTO `pe_photos_tags` VALUES (32, 3);
INSERT INTO `pe_photos_tags` VALUES (32, 4);
INSERT INTO `pe_photos_tags` VALUES (33, 1);
INSERT INTO `pe_photos_tags` VALUES (33, 2);
INSERT INTO `pe_photos_tags` VALUES (33, 3);
INSERT INTO `pe_photos_tags` VALUES (33, 4);
INSERT INTO `pe_photos_tags` VALUES (34, 1);
INSERT INTO `pe_photos_tags` VALUES (34, 2);
INSERT INTO `pe_photos_tags` VALUES (34, 3);
INSERT INTO `pe_photos_tags` VALUES (34, 4);
INSERT INTO `pe_photos_tags` VALUES (35, 1);
INSERT INTO `pe_photos_tags` VALUES (35, 2);
INSERT INTO `pe_photos_tags` VALUES (35, 3);
INSERT INTO `pe_photos_tags` VALUES (35, 4);
INSERT INTO `pe_photos_tags` VALUES (36, 1);
INSERT INTO `pe_photos_tags` VALUES (36, 2);
INSERT INTO `pe_photos_tags` VALUES (36, 3);
INSERT INTO `pe_photos_tags` VALUES (36, 4);
INSERT INTO `pe_photos_tags` VALUES (37, 1);
INSERT INTO `pe_photos_tags` VALUES (37, 2);
INSERT INTO `pe_photos_tags` VALUES (37, 3);
INSERT INTO `pe_photos_tags` VALUES (37, 4);
INSERT INTO `pe_photos_tags` VALUES (38, 1);
INSERT INTO `pe_photos_tags` VALUES (38, 2);
INSERT INTO `pe_photos_tags` VALUES (38, 3);
INSERT INTO `pe_photos_tags` VALUES (38, 4);
INSERT INTO `pe_photos_tags` VALUES (39, 1);
INSERT INTO `pe_photos_tags` VALUES (39, 2);
INSERT INTO `pe_photos_tags` VALUES (39, 3);
INSERT INTO `pe_photos_tags` VALUES (39, 4);
INSERT INTO `pe_photos_tags` VALUES (40, 1);
INSERT INTO `pe_photos_tags` VALUES (40, 2);
INSERT INTO `pe_photos_tags` VALUES (40, 3);
INSERT INTO `pe_photos_tags` VALUES (40, 4);
INSERT INTO `pe_photos_tags` VALUES (41, 1);
INSERT INTO `pe_photos_tags` VALUES (41, 2);
INSERT INTO `pe_photos_tags` VALUES (41, 3);
INSERT INTO `pe_photos_tags` VALUES (41, 4);
INSERT INTO `pe_photos_tags` VALUES (42, 1);
INSERT INTO `pe_photos_tags` VALUES (42, 2);
INSERT INTO `pe_photos_tags` VALUES (42, 3);
INSERT INTO `pe_photos_tags` VALUES (42, 4);
INSERT INTO `pe_photos_tags` VALUES (43, 2);
INSERT INTO `pe_photos_tags` VALUES (43, 12);
INSERT INTO `pe_photos_tags` VALUES (43, 13);
INSERT INTO `pe_photos_tags` VALUES (43, 14);
INSERT INTO `pe_photos_tags` VALUES (43, 15);
INSERT INTO `pe_photos_tags` VALUES (43, 16);
INSERT INTO `pe_photos_tags` VALUES (44, 2);
INSERT INTO `pe_photos_tags` VALUES (44, 12);
INSERT INTO `pe_photos_tags` VALUES (44, 13);
INSERT INTO `pe_photos_tags` VALUES (44, 14);
INSERT INTO `pe_photos_tags` VALUES (44, 15);
INSERT INTO `pe_photos_tags` VALUES (44, 16);
INSERT INTO `pe_photos_tags` VALUES (45, 2);
INSERT INTO `pe_photos_tags` VALUES (45, 12);
INSERT INTO `pe_photos_tags` VALUES (45, 13);
INSERT INTO `pe_photos_tags` VALUES (45, 14);
INSERT INTO `pe_photos_tags` VALUES (45, 15);
INSERT INTO `pe_photos_tags` VALUES (45, 16);
INSERT INTO `pe_photos_tags` VALUES (46, 2);
INSERT INTO `pe_photos_tags` VALUES (46, 12);
INSERT INTO `pe_photos_tags` VALUES (46, 13);
INSERT INTO `pe_photos_tags` VALUES (46, 14);
INSERT INTO `pe_photos_tags` VALUES (46, 15);
INSERT INTO `pe_photos_tags` VALUES (46, 16);
INSERT INTO `pe_photos_tags` VALUES (47, 2);
INSERT INTO `pe_photos_tags` VALUES (47, 12);
INSERT INTO `pe_photos_tags` VALUES (47, 13);
INSERT INTO `pe_photos_tags` VALUES (47, 14);
INSERT INTO `pe_photos_tags` VALUES (47, 15);
INSERT INTO `pe_photos_tags` VALUES (47, 16);
INSERT INTO `pe_photos_tags` VALUES (48, 2);
INSERT INTO `pe_photos_tags` VALUES (48, 12);
INSERT INTO `pe_photos_tags` VALUES (48, 13);
INSERT INTO `pe_photos_tags` VALUES (48, 14);
INSERT INTO `pe_photos_tags` VALUES (48, 15);
INSERT INTO `pe_photos_tags` VALUES (48, 16);
INSERT INTO `pe_photos_tags` VALUES (49, 2);
INSERT INTO `pe_photos_tags` VALUES (49, 12);
INSERT INTO `pe_photos_tags` VALUES (49, 13);
INSERT INTO `pe_photos_tags` VALUES (49, 14);
INSERT INTO `pe_photos_tags` VALUES (49, 15);
INSERT INTO `pe_photos_tags` VALUES (49, 16);
INSERT INTO `pe_photos_tags` VALUES (50, 2);
INSERT INTO `pe_photos_tags` VALUES (50, 12);
INSERT INTO `pe_photos_tags` VALUES (50, 13);
INSERT INTO `pe_photos_tags` VALUES (50, 14);
INSERT INTO `pe_photos_tags` VALUES (50, 15);
INSERT INTO `pe_photos_tags` VALUES (50, 16);
INSERT INTO `pe_photos_tags` VALUES (51, 2);
INSERT INTO `pe_photos_tags` VALUES (51, 12);
INSERT INTO `pe_photos_tags` VALUES (51, 13);
INSERT INTO `pe_photos_tags` VALUES (51, 14);
INSERT INTO `pe_photos_tags` VALUES (51, 15);
INSERT INTO `pe_photos_tags` VALUES (51, 16);
INSERT INTO `pe_photos_tags` VALUES (52, 2);
INSERT INTO `pe_photos_tags` VALUES (52, 12);
INSERT INTO `pe_photos_tags` VALUES (52, 13);
INSERT INTO `pe_photos_tags` VALUES (52, 14);
INSERT INTO `pe_photos_tags` VALUES (52, 15);
INSERT INTO `pe_photos_tags` VALUES (52, 16);
INSERT INTO `pe_photos_tags` VALUES (53, 2);
INSERT INTO `pe_photos_tags` VALUES (53, 12);
INSERT INTO `pe_photos_tags` VALUES (53, 13);
INSERT INTO `pe_photos_tags` VALUES (53, 14);
INSERT INTO `pe_photos_tags` VALUES (53, 15);
INSERT INTO `pe_photos_tags` VALUES (53, 16);
INSERT INTO `pe_photos_tags` VALUES (54, 2);
INSERT INTO `pe_photos_tags` VALUES (54, 12);
INSERT INTO `pe_photos_tags` VALUES (54, 13);
INSERT INTO `pe_photos_tags` VALUES (54, 14);
INSERT INTO `pe_photos_tags` VALUES (54, 15);
INSERT INTO `pe_photos_tags` VALUES (54, 16);
INSERT INTO `pe_photos_tags` VALUES (55, 2);
INSERT INTO `pe_photos_tags` VALUES (55, 12);
INSERT INTO `pe_photos_tags` VALUES (55, 13);
INSERT INTO `pe_photos_tags` VALUES (55, 14);
INSERT INTO `pe_photos_tags` VALUES (55, 15);
INSERT INTO `pe_photos_tags` VALUES (55, 16);
INSERT INTO `pe_photos_tags` VALUES (56, 2);
INSERT INTO `pe_photos_tags` VALUES (56, 12);
INSERT INTO `pe_photos_tags` VALUES (56, 13);
INSERT INTO `pe_photos_tags` VALUES (56, 14);
INSERT INTO `pe_photos_tags` VALUES (56, 15);
INSERT INTO `pe_photos_tags` VALUES (56, 16);
INSERT INTO `pe_photos_tags` VALUES (57, 2);
INSERT INTO `pe_photos_tags` VALUES (57, 12);
INSERT INTO `pe_photos_tags` VALUES (57, 13);
INSERT INTO `pe_photos_tags` VALUES (57, 14);
INSERT INTO `pe_photos_tags` VALUES (57, 15);
INSERT INTO `pe_photos_tags` VALUES (57, 16);
INSERT INTO `pe_photos_tags` VALUES (58, 2);
INSERT INTO `pe_photos_tags` VALUES (58, 12);
INSERT INTO `pe_photos_tags` VALUES (58, 13);
INSERT INTO `pe_photos_tags` VALUES (58, 14);
INSERT INTO `pe_photos_tags` VALUES (58, 15);
INSERT INTO `pe_photos_tags` VALUES (58, 16);
INSERT INTO `pe_photos_tags` VALUES (59, 2);
INSERT INTO `pe_photos_tags` VALUES (59, 12);
INSERT INTO `pe_photos_tags` VALUES (59, 13);
INSERT INTO `pe_photos_tags` VALUES (59, 14);
INSERT INTO `pe_photos_tags` VALUES (59, 15);
INSERT INTO `pe_photos_tags` VALUES (59, 16);
INSERT INTO `pe_photos_tags` VALUES (60, 2);
INSERT INTO `pe_photos_tags` VALUES (60, 12);
INSERT INTO `pe_photos_tags` VALUES (60, 13);
INSERT INTO `pe_photos_tags` VALUES (60, 14);
INSERT INTO `pe_photos_tags` VALUES (60, 15);
INSERT INTO `pe_photos_tags` VALUES (60, 16);
INSERT INTO `pe_photos_tags` VALUES (61, 2);
INSERT INTO `pe_photos_tags` VALUES (61, 12);
INSERT INTO `pe_photos_tags` VALUES (61, 13);
INSERT INTO `pe_photos_tags` VALUES (61, 14);
INSERT INTO `pe_photos_tags` VALUES (61, 15);
INSERT INTO `pe_photos_tags` VALUES (61, 16);
INSERT INTO `pe_photos_tags` VALUES (62, 2);
INSERT INTO `pe_photos_tags` VALUES (62, 12);
INSERT INTO `pe_photos_tags` VALUES (62, 13);
INSERT INTO `pe_photos_tags` VALUES (62, 14);
INSERT INTO `pe_photos_tags` VALUES (62, 15);
INSERT INTO `pe_photos_tags` VALUES (62, 16);
INSERT INTO `pe_photos_tags` VALUES (63, 2);
INSERT INTO `pe_photos_tags` VALUES (63, 12);
INSERT INTO `pe_photos_tags` VALUES (63, 13);
INSERT INTO `pe_photos_tags` VALUES (63, 14);
INSERT INTO `pe_photos_tags` VALUES (63, 15);
INSERT INTO `pe_photos_tags` VALUES (63, 16);
INSERT INTO `pe_photos_tags` VALUES (64, 2);
INSERT INTO `pe_photos_tags` VALUES (64, 12);
INSERT INTO `pe_photos_tags` VALUES (64, 13);
INSERT INTO `pe_photos_tags` VALUES (64, 14);
INSERT INTO `pe_photos_tags` VALUES (64, 15);
INSERT INTO `pe_photos_tags` VALUES (64, 16);
INSERT INTO `pe_photos_tags` VALUES (65, 2);
INSERT INTO `pe_photos_tags` VALUES (65, 12);
INSERT INTO `pe_photos_tags` VALUES (65, 13);
INSERT INTO `pe_photos_tags` VALUES (65, 14);
INSERT INTO `pe_photos_tags` VALUES (65, 15);
INSERT INTO `pe_photos_tags` VALUES (65, 16);
INSERT INTO `pe_photos_tags` VALUES (66, 2);
INSERT INTO `pe_photos_tags` VALUES (66, 12);
INSERT INTO `pe_photos_tags` VALUES (66, 13);
INSERT INTO `pe_photos_tags` VALUES (66, 14);
INSERT INTO `pe_photos_tags` VALUES (66, 15);
INSERT INTO `pe_photos_tags` VALUES (66, 16);
INSERT INTO `pe_photos_tags` VALUES (67, 2);
INSERT INTO `pe_photos_tags` VALUES (67, 12);
INSERT INTO `pe_photos_tags` VALUES (67, 13);
INSERT INTO `pe_photos_tags` VALUES (67, 14);
INSERT INTO `pe_photos_tags` VALUES (67, 15);
INSERT INTO `pe_photos_tags` VALUES (67, 16);
INSERT INTO `pe_photos_tags` VALUES (68, 2);
INSERT INTO `pe_photos_tags` VALUES (68, 12);
INSERT INTO `pe_photos_tags` VALUES (68, 13);
INSERT INTO `pe_photos_tags` VALUES (68, 14);
INSERT INTO `pe_photos_tags` VALUES (68, 15);
INSERT INTO `pe_photos_tags` VALUES (68, 16);
INSERT INTO `pe_photos_tags` VALUES (69, 2);
INSERT INTO `pe_photos_tags` VALUES (69, 12);
INSERT INTO `pe_photos_tags` VALUES (69, 13);
INSERT INTO `pe_photos_tags` VALUES (69, 14);
INSERT INTO `pe_photos_tags` VALUES (69, 15);
INSERT INTO `pe_photos_tags` VALUES (69, 16);
INSERT INTO `pe_photos_tags` VALUES (70, 18);
INSERT INTO `pe_photos_tags` VALUES (71, 18);
INSERT INTO `pe_photos_tags` VALUES (72, 18);
INSERT INTO `pe_photos_tags` VALUES (73, 18);
INSERT INTO `pe_photos_tags` VALUES (74, 18);
INSERT INTO `pe_photos_tags` VALUES (76, 18);
INSERT INTO `pe_photos_tags` VALUES (77, 18);
INSERT INTO `pe_photos_tags` VALUES (78, 18);
INSERT INTO `pe_photos_tags` VALUES (79, 18);
INSERT INTO `pe_photos_tags` VALUES (80, 18);
INSERT INTO `pe_photos_tags` VALUES (81, 18);
INSERT INTO `pe_photos_tags` VALUES (82, 18);
INSERT INTO `pe_photos_tags` VALUES (83, 18);
INSERT INTO `pe_photos_tags` VALUES (84, 20);
INSERT INTO `pe_photos_tags` VALUES (84, 21);
INSERT INTO `pe_photos_tags` VALUES (84, 22);
INSERT INTO `pe_photos_tags` VALUES (85, 20);
INSERT INTO `pe_photos_tags` VALUES (85, 21);
INSERT INTO `pe_photos_tags` VALUES (85, 22);
INSERT INTO `pe_photos_tags` VALUES (86, 20);
INSERT INTO `pe_photos_tags` VALUES (86, 21);
INSERT INTO `pe_photos_tags` VALUES (86, 22);
INSERT INTO `pe_photos_tags` VALUES (87, 20);
INSERT INTO `pe_photos_tags` VALUES (87, 21);
INSERT INTO `pe_photos_tags` VALUES (87, 22);
INSERT INTO `pe_photos_tags` VALUES (88, 20);
INSERT INTO `pe_photos_tags` VALUES (88, 21);
INSERT INTO `pe_photos_tags` VALUES (88, 22);
INSERT INTO `pe_photos_tags` VALUES (89, 20);
INSERT INTO `pe_photos_tags` VALUES (89, 21);
INSERT INTO `pe_photos_tags` VALUES (89, 22);
INSERT INTO `pe_photos_tags` VALUES (90, 20);
INSERT INTO `pe_photos_tags` VALUES (90, 21);
INSERT INTO `pe_photos_tags` VALUES (90, 22);
INSERT INTO `pe_photos_tags` VALUES (91, 20);
INSERT INTO `pe_photos_tags` VALUES (91, 21);
INSERT INTO `pe_photos_tags` VALUES (91, 22);
INSERT INTO `pe_photos_tags` VALUES (92, 20);
INSERT INTO `pe_photos_tags` VALUES (92, 21);
INSERT INTO `pe_photos_tags` VALUES (92, 22);
INSERT INTO `pe_photos_tags` VALUES (93, 20);
INSERT INTO `pe_photos_tags` VALUES (93, 21);
INSERT INTO `pe_photos_tags` VALUES (93, 22);
INSERT INTO `pe_photos_tags` VALUES (94, 20);
INSERT INTO `pe_photos_tags` VALUES (94, 21);
INSERT INTO `pe_photos_tags` VALUES (94, 22);
INSERT INTO `pe_photos_tags` VALUES (95, 20);
INSERT INTO `pe_photos_tags` VALUES (95, 21);
INSERT INTO `pe_photos_tags` VALUES (95, 22);
INSERT INTO `pe_photos_tags` VALUES (96, 20);
INSERT INTO `pe_photos_tags` VALUES (96, 21);
INSERT INTO `pe_photos_tags` VALUES (96, 22);
INSERT INTO `pe_photos_tags` VALUES (97, 20);
INSERT INTO `pe_photos_tags` VALUES (97, 21);
INSERT INTO `pe_photos_tags` VALUES (97, 22);
INSERT INTO `pe_photos_tags` VALUES (98, 20);
INSERT INTO `pe_photos_tags` VALUES (98, 21);
INSERT INTO `pe_photos_tags` VALUES (98, 22);
INSERT INTO `pe_photos_tags` VALUES (99, 20);
INSERT INTO `pe_photos_tags` VALUES (99, 21);
INSERT INTO `pe_photos_tags` VALUES (99, 22);
INSERT INTO `pe_photos_tags` VALUES (100, 23);
INSERT INTO `pe_photos_tags` VALUES (100, 26);
INSERT INTO `pe_photos_tags` VALUES (101, 23);
INSERT INTO `pe_photos_tags` VALUES (101, 26);
INSERT INTO `pe_photos_tags` VALUES (102, 23);
INSERT INTO `pe_photos_tags` VALUES (102, 26);
INSERT INTO `pe_photos_tags` VALUES (103, 23);
INSERT INTO `pe_photos_tags` VALUES (103, 26);
INSERT INTO `pe_photos_tags` VALUES (104, 23);
INSERT INTO `pe_photos_tags` VALUES (104, 26);
INSERT INTO `pe_photos_tags` VALUES (105, 23);
INSERT INTO `pe_photos_tags` VALUES (105, 26);
INSERT INTO `pe_photos_tags` VALUES (106, 23);
INSERT INTO `pe_photos_tags` VALUES (106, 26);
INSERT INTO `pe_photos_tags` VALUES (107, 23);
INSERT INTO `pe_photos_tags` VALUES (107, 26);
INSERT INTO `pe_photos_tags` VALUES (108, 23);
INSERT INTO `pe_photos_tags` VALUES (108, 26);
INSERT INTO `pe_photos_tags` VALUES (109, 23);
INSERT INTO `pe_photos_tags` VALUES (110, 23);
INSERT INTO `pe_photos_tags` VALUES (111, 23);
INSERT INTO `pe_photos_tags` VALUES (112, 23);
INSERT INTO `pe_photos_tags` VALUES (113, 23);
INSERT INTO `pe_photos_tags` VALUES (114, 23);
INSERT INTO `pe_photos_tags` VALUES (115, 23);
INSERT INTO `pe_photos_tags` VALUES (116, 23);
INSERT INTO `pe_photos_tags` VALUES (117, 23);
INSERT INTO `pe_photos_tags` VALUES (118, 23);
INSERT INTO `pe_photos_tags` VALUES (119, 23);
INSERT INTO `pe_photos_tags` VALUES (120, 23);
INSERT INTO `pe_photos_tags` VALUES (121, 23);
INSERT INTO `pe_photos_tags` VALUES (122, 23);
INSERT INTO `pe_photos_tags` VALUES (123, 23);
INSERT INTO `pe_photos_tags` VALUES (124, 23);
INSERT INTO `pe_photos_tags` VALUES (125, 23);
INSERT INTO `pe_photos_tags` VALUES (126, 23);
INSERT INTO `pe_photos_tags` VALUES (127, 23);
INSERT INTO `pe_photos_tags` VALUES (128, 23);
INSERT INTO `pe_photos_tags` VALUES (129, 23);
INSERT INTO `pe_photos_tags` VALUES (130, 23);
INSERT INTO `pe_photos_tags` VALUES (131, 23);
INSERT INTO `pe_photos_tags` VALUES (132, 23);
INSERT INTO `pe_photos_tags` VALUES (133, 23);
INSERT INTO `pe_photos_tags` VALUES (134, 23);
INSERT INTO `pe_photos_tags` VALUES (135, 23);
INSERT INTO `pe_photos_tags` VALUES (136, 23);
INSERT INTO `pe_photos_tags` VALUES (137, 23);
INSERT INTO `pe_photos_tags` VALUES (138, 23);
INSERT INTO `pe_photos_tags` VALUES (139, 23);
INSERT INTO `pe_photos_tags` VALUES (140, 23);
INSERT INTO `pe_photos_tags` VALUES (141, 23);
INSERT INTO `pe_photos_tags` VALUES (142, 23);
INSERT INTO `pe_photos_tags` VALUES (143, 23);
INSERT INTO `pe_photos_tags` VALUES (144, 23);
INSERT INTO `pe_photos_tags` VALUES (145, 23);
INSERT INTO `pe_photos_tags` VALUES (146, 23);
INSERT INTO `pe_photos_tags` VALUES (147, 23);
INSERT INTO `pe_photos_tags` VALUES (148, 23);
INSERT INTO `pe_photos_tags` VALUES (149, 23);
INSERT INTO `pe_photos_tags` VALUES (150, 23);
INSERT INTO `pe_photos_tags` VALUES (151, 23);
INSERT INTO `pe_photos_tags` VALUES (152, 23);
INSERT INTO `pe_photos_tags` VALUES (153, 23);
INSERT INTO `pe_photos_tags` VALUES (154, 23);
INSERT INTO `pe_photos_tags` VALUES (155, 23);
INSERT INTO `pe_photos_tags` VALUES (156, 23);
INSERT INTO `pe_photos_tags` VALUES (157, 23);
INSERT INTO `pe_photos_tags` VALUES (158, 23);
INSERT INTO `pe_photos_tags` VALUES (159, 23);
INSERT INTO `pe_photos_tags` VALUES (160, 23);
INSERT INTO `pe_photos_tags` VALUES (161, 23);
INSERT INTO `pe_photos_tags` VALUES (162, 23);
INSERT INTO `pe_photos_tags` VALUES (163, 23);
INSERT INTO `pe_photos_tags` VALUES (164, 23);
INSERT INTO `pe_photos_tags` VALUES (165, 23);
INSERT INTO `pe_photos_tags` VALUES (166, 23);
INSERT INTO `pe_photos_tags` VALUES (167, 23);
INSERT INTO `pe_photos_tags` VALUES (168, 23);
INSERT INTO `pe_photos_tags` VALUES (169, 23);
INSERT INTO `pe_photos_tags` VALUES (170, 23);
INSERT INTO `pe_photos_tags` VALUES (171, 23);
INSERT INTO `pe_photos_tags` VALUES (172, 23);
INSERT INTO `pe_photos_tags` VALUES (173, 23);
INSERT INTO `pe_photos_tags` VALUES (174, 23);
INSERT INTO `pe_photos_tags` VALUES (175, 23);
INSERT INTO `pe_photos_tags` VALUES (176, 23);
INSERT INTO `pe_photos_tags` VALUES (177, 23);
INSERT INTO `pe_photos_tags` VALUES (178, 23);
INSERT INTO `pe_photos_tags` VALUES (179, 23);
INSERT INTO `pe_photos_tags` VALUES (180, 23);
INSERT INTO `pe_photos_tags` VALUES (181, 23);
INSERT INTO `pe_photos_tags` VALUES (182, 23);
INSERT INTO `pe_photos_tags` VALUES (183, 23);
INSERT INTO `pe_photos_tags` VALUES (184, 23);
INSERT INTO `pe_photos_tags` VALUES (185, 23);
INSERT INTO `pe_photos_tags` VALUES (186, 23);
INSERT INTO `pe_photos_tags` VALUES (187, 23);
INSERT INTO `pe_photos_tags` VALUES (188, 23);
INSERT INTO `pe_photos_tags` VALUES (189, 23);
INSERT INTO `pe_photos_tags` VALUES (190, 23);
INSERT INTO `pe_photos_tags` VALUES (191, 23);
INSERT INTO `pe_photos_tags` VALUES (192, 23);
INSERT INTO `pe_photos_tags` VALUES (193, 23);
INSERT INTO `pe_photos_tags` VALUES (194, 23);
INSERT INTO `pe_photos_tags` VALUES (195, 23);
INSERT INTO `pe_photos_tags` VALUES (196, 23);
INSERT INTO `pe_photos_tags` VALUES (197, 23);
INSERT INTO `pe_photos_tags` VALUES (198, 23);
INSERT INTO `pe_photos_tags` VALUES (199, 23);
INSERT INTO `pe_photos_tags` VALUES (200, 23);
INSERT INTO `pe_photos_tags` VALUES (201, 23);
INSERT INTO `pe_photos_tags` VALUES (202, 23);
INSERT INTO `pe_photos_tags` VALUES (203, 23);
INSERT INTO `pe_photos_tags` VALUES (204, 23);
INSERT INTO `pe_photos_tags` VALUES (205, 23);
INSERT INTO `pe_photos_tags` VALUES (206, 23);
INSERT INTO `pe_photos_tags` VALUES (207, 23);
INSERT INTO `pe_photos_tags` VALUES (208, 23);
INSERT INTO `pe_photos_tags` VALUES (209, 23);
INSERT INTO `pe_photos_tags` VALUES (210, 23);
INSERT INTO `pe_photos_tags` VALUES (211, 23);
INSERT INTO `pe_photos_tags` VALUES (212, 23);
INSERT INTO `pe_photos_tags` VALUES (213, 23);
INSERT INTO `pe_photos_tags` VALUES (214, 23);
INSERT INTO `pe_photos_tags` VALUES (215, 23);
INSERT INTO `pe_photos_tags` VALUES (216, 23);
INSERT INTO `pe_photos_tags` VALUES (217, 23);
INSERT INTO `pe_photos_tags` VALUES (218, 23);
INSERT INTO `pe_photos_tags` VALUES (219, 23);
INSERT INTO `pe_photos_tags` VALUES (220, 23);
INSERT INTO `pe_photos_tags` VALUES (221, 23);
INSERT INTO `pe_photos_tags` VALUES (222, 23);
INSERT INTO `pe_photos_tags` VALUES (223, 23);
INSERT INTO `pe_photos_tags` VALUES (224, 23);
INSERT INTO `pe_photos_tags` VALUES (225, 23);
INSERT INTO `pe_photos_tags` VALUES (226, 23);
INSERT INTO `pe_photos_tags` VALUES (227, 23);
INSERT INTO `pe_photos_tags` VALUES (228, 23);
INSERT INTO `pe_photos_tags` VALUES (229, 23);
INSERT INTO `pe_photos_tags` VALUES (230, 23);
INSERT INTO `pe_photos_tags` VALUES (231, 23);
INSERT INTO `pe_photos_tags` VALUES (232, 23);
INSERT INTO `pe_photos_tags` VALUES (233, 23);
INSERT INTO `pe_photos_tags` VALUES (234, 23);
INSERT INTO `pe_photos_tags` VALUES (235, 23);
INSERT INTO `pe_photos_tags` VALUES (236, 23);
INSERT INTO `pe_photos_tags` VALUES (237, 23);
INSERT INTO `pe_photos_tags` VALUES (238, 23);
INSERT INTO `pe_photos_tags` VALUES (239, 23);
INSERT INTO `pe_photos_tags` VALUES (240, 23);
INSERT INTO `pe_photos_tags` VALUES (241, 23);
INSERT INTO `pe_photos_tags` VALUES (242, 23);
INSERT INTO `pe_photos_tags` VALUES (243, 23);
INSERT INTO `pe_photos_tags` VALUES (244, 23);
INSERT INTO `pe_photos_tags` VALUES (245, 23);
INSERT INTO `pe_photos_tags` VALUES (246, 23);
INSERT INTO `pe_photos_tags` VALUES (247, 23);
INSERT INTO `pe_photos_tags` VALUES (248, 23);
INSERT INTO `pe_photos_tags` VALUES (249, 23);
INSERT INTO `pe_photos_tags` VALUES (250, 23);
INSERT INTO `pe_photos_tags` VALUES (251, 23);
INSERT INTO `pe_photos_tags` VALUES (252, 23);
INSERT INTO `pe_photos_tags` VALUES (253, 23);
INSERT INTO `pe_photos_tags` VALUES (254, 23);
INSERT INTO `pe_photos_tags` VALUES (255, 23);
INSERT INTO `pe_photos_tags` VALUES (256, 23);
INSERT INTO `pe_photos_tags` VALUES (257, 23);
INSERT INTO `pe_photos_tags` VALUES (258, 23);
INSERT INTO `pe_photos_tags` VALUES (259, 23);
INSERT INTO `pe_photos_tags` VALUES (260, 23);
INSERT INTO `pe_photos_tags` VALUES (261, 23);
INSERT INTO `pe_photos_tags` VALUES (262, 23);
INSERT INTO `pe_photos_tags` VALUES (263, 23);
INSERT INTO `pe_photos_tags` VALUES (264, 23);
INSERT INTO `pe_photos_tags` VALUES (265, 23);
INSERT INTO `pe_photos_tags` VALUES (266, 23);
INSERT INTO `pe_photos_tags` VALUES (267, 23);
INSERT INTO `pe_photos_tags` VALUES (268, 23);
INSERT INTO `pe_photos_tags` VALUES (269, 23);
INSERT INTO `pe_photos_tags` VALUES (270, 23);
INSERT INTO `pe_photos_tags` VALUES (271, 23);
INSERT INTO `pe_photos_tags` VALUES (272, 23);
INSERT INTO `pe_photos_tags` VALUES (273, 23);
INSERT INTO `pe_photos_tags` VALUES (274, 23);
INSERT INTO `pe_photos_tags` VALUES (275, 23);
INSERT INTO `pe_photos_tags` VALUES (276, 23);
INSERT INTO `pe_photos_tags` VALUES (277, 23);
INSERT INTO `pe_photos_tags` VALUES (278, 23);
INSERT INTO `pe_photos_tags` VALUES (279, 23);
INSERT INTO `pe_photos_tags` VALUES (280, 23);
INSERT INTO `pe_photos_tags` VALUES (281, 23);
INSERT INTO `pe_photos_tags` VALUES (282, 23);
INSERT INTO `pe_photos_tags` VALUES (283, 23);
INSERT INTO `pe_photos_tags` VALUES (284, 23);
INSERT INTO `pe_photos_tags` VALUES (285, 23);
INSERT INTO `pe_photos_tags` VALUES (286, 23);
INSERT INTO `pe_photos_tags` VALUES (287, 23);
INSERT INTO `pe_photos_tags` VALUES (288, 23);
INSERT INTO `pe_photos_tags` VALUES (289, 23);
INSERT INTO `pe_photos_tags` VALUES (290, 23);
INSERT INTO `pe_photos_tags` VALUES (291, 23);
INSERT INTO `pe_photos_tags` VALUES (292, 23);
INSERT INTO `pe_photos_tags` VALUES (293, 23);
INSERT INTO `pe_photos_tags` VALUES (294, 23);
INSERT INTO `pe_photos_tags` VALUES (295, 23);
INSERT INTO `pe_photos_tags` VALUES (296, 23);
INSERT INTO `pe_photos_tags` VALUES (297, 23);
INSERT INTO `pe_photos_tags` VALUES (298, 23);
INSERT INTO `pe_photos_tags` VALUES (299, 23);
INSERT INTO `pe_photos_tags` VALUES (300, 23);
INSERT INTO `pe_photos_tags` VALUES (301, 23);
INSERT INTO `pe_photos_tags` VALUES (302, 23);
INSERT INTO `pe_photos_tags` VALUES (303, 23);
INSERT INTO `pe_photos_tags` VALUES (304, 23);
INSERT INTO `pe_photos_tags` VALUES (305, 23);
INSERT INTO `pe_photos_tags` VALUES (306, 23);
INSERT INTO `pe_photos_tags` VALUES (307, 23);
INSERT INTO `pe_photos_tags` VALUES (308, 23);
INSERT INTO `pe_photos_tags` VALUES (309, 23);
INSERT INTO `pe_photos_tags` VALUES (310, 23);
INSERT INTO `pe_photos_tags` VALUES (311, 23);
INSERT INTO `pe_photos_tags` VALUES (312, 23);
INSERT INTO `pe_photos_tags` VALUES (313, 23);
INSERT INTO `pe_photos_tags` VALUES (314, 23);
INSERT INTO `pe_photos_tags` VALUES (315, 23);
INSERT INTO `pe_photos_tags` VALUES (316, 23);
INSERT INTO `pe_photos_tags` VALUES (317, 23);
INSERT INTO `pe_photos_tags` VALUES (318, 23);
INSERT INTO `pe_photos_tags` VALUES (319, 23);
INSERT INTO `pe_photos_tags` VALUES (320, 23);
INSERT INTO `pe_photos_tags` VALUES (321, 23);
INSERT INTO `pe_photos_tags` VALUES (322, 23);
INSERT INTO `pe_photos_tags` VALUES (323, 23);
INSERT INTO `pe_photos_tags` VALUES (324, 23);
INSERT INTO `pe_photos_tags` VALUES (325, 23);
INSERT INTO `pe_photos_tags` VALUES (326, 23);
INSERT INTO `pe_photos_tags` VALUES (327, 23);
INSERT INTO `pe_photos_tags` VALUES (328, 23);
INSERT INTO `pe_photos_tags` VALUES (329, 23);
INSERT INTO `pe_photos_tags` VALUES (330, 23);
INSERT INTO `pe_photos_tags` VALUES (331, 23);
INSERT INTO `pe_photos_tags` VALUES (332, 23);
INSERT INTO `pe_photos_tags` VALUES (333, 23);
INSERT INTO `pe_photos_tags` VALUES (334, 23);
INSERT INTO `pe_photos_tags` VALUES (335, 23);
INSERT INTO `pe_photos_tags` VALUES (336, 23);
INSERT INTO `pe_photos_tags` VALUES (337, 23);
INSERT INTO `pe_photos_tags` VALUES (338, 23);
INSERT INTO `pe_photos_tags` VALUES (339, 23);
INSERT INTO `pe_photos_tags` VALUES (340, 23);
INSERT INTO `pe_photos_tags` VALUES (341, 23);
INSERT INTO `pe_photos_tags` VALUES (342, 23);
INSERT INTO `pe_photos_tags` VALUES (343, 23);
INSERT INTO `pe_photos_tags` VALUES (344, 23);
INSERT INTO `pe_photos_tags` VALUES (345, 23);
INSERT INTO `pe_photos_tags` VALUES (346, 23);
INSERT INTO `pe_photos_tags` VALUES (347, 23);
INSERT INTO `pe_photos_tags` VALUES (348, 23);
INSERT INTO `pe_photos_tags` VALUES (349, 23);
INSERT INTO `pe_photos_tags` VALUES (350, 23);
INSERT INTO `pe_photos_tags` VALUES (351, 23);
INSERT INTO `pe_photos_tags` VALUES (352, 23);
INSERT INTO `pe_photos_tags` VALUES (353, 23);
INSERT INTO `pe_photos_tags` VALUES (354, 23);
INSERT INTO `pe_photos_tags` VALUES (355, 23);
INSERT INTO `pe_photos_tags` VALUES (356, 23);
INSERT INTO `pe_photos_tags` VALUES (357, 23);
INSERT INTO `pe_photos_tags` VALUES (358, 23);
INSERT INTO `pe_photos_tags` VALUES (359, 23);
INSERT INTO `pe_photos_tags` VALUES (360, 23);
INSERT INTO `pe_photos_tags` VALUES (361, 23);
INSERT INTO `pe_photos_tags` VALUES (362, 23);
INSERT INTO `pe_photos_tags` VALUES (363, 23);
INSERT INTO `pe_photos_tags` VALUES (364, 23);
INSERT INTO `pe_photos_tags` VALUES (365, 23);
INSERT INTO `pe_photos_tags` VALUES (366, 23);
INSERT INTO `pe_photos_tags` VALUES (367, 23);
INSERT INTO `pe_photos_tags` VALUES (368, 23);
INSERT INTO `pe_photos_tags` VALUES (369, 23);
INSERT INTO `pe_photos_tags` VALUES (370, 23);
INSERT INTO `pe_photos_tags` VALUES (371, 23);
INSERT INTO `pe_photos_tags` VALUES (372, 23);
INSERT INTO `pe_photos_tags` VALUES (373, 23);
INSERT INTO `pe_photos_tags` VALUES (374, 23);
INSERT INTO `pe_photos_tags` VALUES (375, 23);
INSERT INTO `pe_photos_tags` VALUES (376, 23);
INSERT INTO `pe_photos_tags` VALUES (377, 23);
INSERT INTO `pe_photos_tags` VALUES (378, 23);
INSERT INTO `pe_photos_tags` VALUES (379, 23);
INSERT INTO `pe_photos_tags` VALUES (380, 23);
INSERT INTO `pe_photos_tags` VALUES (381, 23);
INSERT INTO `pe_photos_tags` VALUES (382, 23);
INSERT INTO `pe_photos_tags` VALUES (383, 23);
INSERT INTO `pe_photos_tags` VALUES (384, 23);
INSERT INTO `pe_photos_tags` VALUES (385, 23);
INSERT INTO `pe_photos_tags` VALUES (386, 23);
INSERT INTO `pe_photos_tags` VALUES (387, 23);
INSERT INTO `pe_photos_tags` VALUES (388, 23);
INSERT INTO `pe_photos_tags` VALUES (389, 23);
INSERT INTO `pe_photos_tags` VALUES (390, 23);
INSERT INTO `pe_photos_tags` VALUES (391, 23);
INSERT INTO `pe_photos_tags` VALUES (392, 23);
INSERT INTO `pe_photos_tags` VALUES (393, 23);
INSERT INTO `pe_photos_tags` VALUES (394, 23);
INSERT INTO `pe_photos_tags` VALUES (395, 23);
INSERT INTO `pe_photos_tags` VALUES (396, 23);
INSERT INTO `pe_photos_tags` VALUES (397, 23);
INSERT INTO `pe_photos_tags` VALUES (398, 30);
INSERT INTO `pe_photos_tags` VALUES (399, 30);
INSERT INTO `pe_photos_tags` VALUES (400, 30);
INSERT INTO `pe_photos_tags` VALUES (401, 30);
INSERT INTO `pe_photos_tags` VALUES (402, 30);
INSERT INTO `pe_photos_tags` VALUES (403, 30);
INSERT INTO `pe_photos_tags` VALUES (404, 30);
INSERT INTO `pe_photos_tags` VALUES (405, 30);
INSERT INTO `pe_photos_tags` VALUES (406, 30);
INSERT INTO `pe_photos_tags` VALUES (407, 30);
INSERT INTO `pe_photos_tags` VALUES (408, 30);
INSERT INTO `pe_photos_tags` VALUES (409, 30);
INSERT INTO `pe_photos_tags` VALUES (410, 30);
INSERT INTO `pe_photos_tags` VALUES (411, 30);
INSERT INTO `pe_photos_tags` VALUES (412, 30);
INSERT INTO `pe_photos_tags` VALUES (413, 30);
INSERT INTO `pe_photos_tags` VALUES (414, 30);
INSERT INTO `pe_photos_tags` VALUES (415, 30);
INSERT INTO `pe_photos_tags` VALUES (416, 30);
INSERT INTO `pe_photos_tags` VALUES (417, 30);
INSERT INTO `pe_photos_tags` VALUES (418, 30);
INSERT INTO `pe_photos_tags` VALUES (419, 30);
INSERT INTO `pe_photos_tags` VALUES (420, 30);
INSERT INTO `pe_photos_tags` VALUES (421, 30);
INSERT INTO `pe_photos_tags` VALUES (422, 32);
INSERT INTO `pe_photos_tags` VALUES (422, 33);
INSERT INTO `pe_photos_tags` VALUES (422, 34);
INSERT INTO `pe_photos_tags` VALUES (423, 32);
INSERT INTO `pe_photos_tags` VALUES (423, 33);
INSERT INTO `pe_photos_tags` VALUES (423, 34);
INSERT INTO `pe_photos_tags` VALUES (424, 32);
INSERT INTO `pe_photos_tags` VALUES (424, 33);
INSERT INTO `pe_photos_tags` VALUES (424, 34);
INSERT INTO `pe_photos_tags` VALUES (425, 32);
INSERT INTO `pe_photos_tags` VALUES (425, 33);
INSERT INTO `pe_photos_tags` VALUES (425, 34);
INSERT INTO `pe_photos_tags` VALUES (426, 32);
INSERT INTO `pe_photos_tags` VALUES (426, 33);
INSERT INTO `pe_photos_tags` VALUES (426, 34);
INSERT INTO `pe_photos_tags` VALUES (427, 32);
INSERT INTO `pe_photos_tags` VALUES (427, 33);
INSERT INTO `pe_photos_tags` VALUES (427, 34);
INSERT INTO `pe_photos_tags` VALUES (428, 32);
INSERT INTO `pe_photos_tags` VALUES (428, 33);
INSERT INTO `pe_photos_tags` VALUES (428, 34);
INSERT INTO `pe_photos_tags` VALUES (429, 32);
INSERT INTO `pe_photos_tags` VALUES (429, 33);
INSERT INTO `pe_photos_tags` VALUES (429, 34);
INSERT INTO `pe_photos_tags` VALUES (430, 32);
INSERT INTO `pe_photos_tags` VALUES (430, 33);
INSERT INTO `pe_photos_tags` VALUES (430, 34);
INSERT INTO `pe_photos_tags` VALUES (431, 32);
INSERT INTO `pe_photos_tags` VALUES (431, 33);
INSERT INTO `pe_photos_tags` VALUES (431, 34);
INSERT INTO `pe_photos_tags` VALUES (432, 32);
INSERT INTO `pe_photos_tags` VALUES (432, 33);
INSERT INTO `pe_photos_tags` VALUES (432, 34);
INSERT INTO `pe_photos_tags` VALUES (433, 32);
INSERT INTO `pe_photos_tags` VALUES (433, 33);
INSERT INTO `pe_photos_tags` VALUES (433, 34);
INSERT INTO `pe_photos_tags` VALUES (434, 32);
INSERT INTO `pe_photos_tags` VALUES (434, 33);
INSERT INTO `pe_photos_tags` VALUES (434, 34);
INSERT INTO `pe_photos_tags` VALUES (435, 32);
INSERT INTO `pe_photos_tags` VALUES (435, 33);
INSERT INTO `pe_photos_tags` VALUES (435, 34);
INSERT INTO `pe_photos_tags` VALUES (436, 32);
INSERT INTO `pe_photos_tags` VALUES (436, 33);
INSERT INTO `pe_photos_tags` VALUES (436, 34);
INSERT INTO `pe_photos_tags` VALUES (437, 32);
INSERT INTO `pe_photos_tags` VALUES (437, 33);
INSERT INTO `pe_photos_tags` VALUES (437, 34);
INSERT INTO `pe_photos_tags` VALUES (438, 32);
INSERT INTO `pe_photos_tags` VALUES (438, 33);
INSERT INTO `pe_photos_tags` VALUES (438, 34);
INSERT INTO `pe_photos_tags` VALUES (439, 32);
INSERT INTO `pe_photos_tags` VALUES (439, 33);
INSERT INTO `pe_photos_tags` VALUES (439, 34);
INSERT INTO `pe_photos_tags` VALUES (440, 32);
INSERT INTO `pe_photos_tags` VALUES (440, 33);
INSERT INTO `pe_photos_tags` VALUES (440, 34);
INSERT INTO `pe_photos_tags` VALUES (441, 32);
INSERT INTO `pe_photos_tags` VALUES (441, 33);
INSERT INTO `pe_photos_tags` VALUES (441, 34);
INSERT INTO `pe_photos_tags` VALUES (442, 32);
INSERT INTO `pe_photos_tags` VALUES (442, 33);
INSERT INTO `pe_photos_tags` VALUES (442, 34);
INSERT INTO `pe_photos_tags` VALUES (443, 32);
INSERT INTO `pe_photos_tags` VALUES (443, 33);
INSERT INTO `pe_photos_tags` VALUES (443, 34);
INSERT INTO `pe_photos_tags` VALUES (444, 32);
INSERT INTO `pe_photos_tags` VALUES (444, 33);
INSERT INTO `pe_photos_tags` VALUES (444, 34);
INSERT INTO `pe_photos_tags` VALUES (445, 32);
INSERT INTO `pe_photos_tags` VALUES (445, 33);
INSERT INTO `pe_photos_tags` VALUES (445, 34);
INSERT INTO `pe_photos_tags` VALUES (446, 32);
INSERT INTO `pe_photos_tags` VALUES (446, 33);
INSERT INTO `pe_photos_tags` VALUES (446, 34);
INSERT INTO `pe_photos_tags` VALUES (447, 32);
INSERT INTO `pe_photos_tags` VALUES (447, 33);
INSERT INTO `pe_photos_tags` VALUES (447, 34);
INSERT INTO `pe_photos_tags` VALUES (448, 32);
INSERT INTO `pe_photos_tags` VALUES (448, 33);
INSERT INTO `pe_photos_tags` VALUES (448, 34);
INSERT INTO `pe_photos_tags` VALUES (449, 32);
INSERT INTO `pe_photos_tags` VALUES (449, 33);
INSERT INTO `pe_photos_tags` VALUES (449, 34);
INSERT INTO `pe_photos_tags` VALUES (450, 32);
INSERT INTO `pe_photos_tags` VALUES (450, 33);
INSERT INTO `pe_photos_tags` VALUES (450, 34);
INSERT INTO `pe_photos_tags` VALUES (451, 32);
INSERT INTO `pe_photos_tags` VALUES (451, 33);
INSERT INTO `pe_photos_tags` VALUES (451, 34);
INSERT INTO `pe_photos_tags` VALUES (452, 32);
INSERT INTO `pe_photos_tags` VALUES (452, 33);
INSERT INTO `pe_photos_tags` VALUES (452, 34);
INSERT INTO `pe_photos_tags` VALUES (453, 32);
INSERT INTO `pe_photos_tags` VALUES (453, 33);
INSERT INTO `pe_photos_tags` VALUES (453, 34);
INSERT INTO `pe_photos_tags` VALUES (454, 32);
INSERT INTO `pe_photos_tags` VALUES (454, 33);
INSERT INTO `pe_photos_tags` VALUES (454, 34);
INSERT INTO `pe_photos_tags` VALUES (455, 32);
INSERT INTO `pe_photos_tags` VALUES (455, 33);
INSERT INTO `pe_photos_tags` VALUES (455, 34);
INSERT INTO `pe_photos_tags` VALUES (456, 32);
INSERT INTO `pe_photos_tags` VALUES (456, 33);
INSERT INTO `pe_photos_tags` VALUES (456, 34);
INSERT INTO `pe_photos_tags` VALUES (457, 32);
INSERT INTO `pe_photos_tags` VALUES (457, 33);
INSERT INTO `pe_photos_tags` VALUES (457, 34);
INSERT INTO `pe_photos_tags` VALUES (458, 32);
INSERT INTO `pe_photos_tags` VALUES (458, 33);
INSERT INTO `pe_photos_tags` VALUES (458, 34);
INSERT INTO `pe_photos_tags` VALUES (459, 32);
INSERT INTO `pe_photos_tags` VALUES (459, 33);
INSERT INTO `pe_photos_tags` VALUES (459, 34);
INSERT INTO `pe_photos_tags` VALUES (460, 32);
INSERT INTO `pe_photos_tags` VALUES (460, 33);
INSERT INTO `pe_photos_tags` VALUES (460, 34);
INSERT INTO `pe_photos_tags` VALUES (461, 32);
INSERT INTO `pe_photos_tags` VALUES (461, 33);
INSERT INTO `pe_photos_tags` VALUES (461, 34);
INSERT INTO `pe_photos_tags` VALUES (462, 32);
INSERT INTO `pe_photos_tags` VALUES (462, 33);
INSERT INTO `pe_photos_tags` VALUES (462, 34);
INSERT INTO `pe_photos_tags` VALUES (463, 32);
INSERT INTO `pe_photos_tags` VALUES (463, 33);
INSERT INTO `pe_photos_tags` VALUES (463, 34);
INSERT INTO `pe_photos_tags` VALUES (464, 32);
INSERT INTO `pe_photos_tags` VALUES (464, 33);
INSERT INTO `pe_photos_tags` VALUES (464, 34);
INSERT INTO `pe_photos_tags` VALUES (465, 32);
INSERT INTO `pe_photos_tags` VALUES (465, 33);
INSERT INTO `pe_photos_tags` VALUES (465, 34);
INSERT INTO `pe_photos_tags` VALUES (466, 32);
INSERT INTO `pe_photos_tags` VALUES (466, 33);
INSERT INTO `pe_photos_tags` VALUES (466, 34);
INSERT INTO `pe_photos_tags` VALUES (467, 32);
INSERT INTO `pe_photos_tags` VALUES (467, 33);
INSERT INTO `pe_photos_tags` VALUES (467, 34);
INSERT INTO `pe_photos_tags` VALUES (468, 32);
INSERT INTO `pe_photos_tags` VALUES (468, 33);
INSERT INTO `pe_photos_tags` VALUES (468, 34);
INSERT INTO `pe_photos_tags` VALUES (469, 32);
INSERT INTO `pe_photos_tags` VALUES (469, 33);
INSERT INTO `pe_photos_tags` VALUES (469, 34);
INSERT INTO `pe_photos_tags` VALUES (470, 32);
INSERT INTO `pe_photos_tags` VALUES (470, 33);
INSERT INTO `pe_photos_tags` VALUES (470, 34);
INSERT INTO `pe_photos_tags` VALUES (471, 32);
INSERT INTO `pe_photos_tags` VALUES (471, 33);
INSERT INTO `pe_photos_tags` VALUES (471, 34);
INSERT INTO `pe_photos_tags` VALUES (472, 32);
INSERT INTO `pe_photos_tags` VALUES (472, 33);
INSERT INTO `pe_photos_tags` VALUES (472, 34);
INSERT INTO `pe_photos_tags` VALUES (473, 37);
INSERT INTO `pe_photos_tags` VALUES (474, 37);
INSERT INTO `pe_photos_tags` VALUES (475, 37);
INSERT INTO `pe_photos_tags` VALUES (476, 37);
INSERT INTO `pe_photos_tags` VALUES (477, 37);
INSERT INTO `pe_photos_tags` VALUES (478, 37);
INSERT INTO `pe_photos_tags` VALUES (479, 37);
INSERT INTO `pe_photos_tags` VALUES (480, 37);
INSERT INTO `pe_photos_tags` VALUES (481, 37);
INSERT INTO `pe_photos_tags` VALUES (482, 37);
INSERT INTO `pe_photos_tags` VALUES (483, 37);
INSERT INTO `pe_photos_tags` VALUES (484, 37);
INSERT INTO `pe_photos_tags` VALUES (485, 37);
INSERT INTO `pe_photos_tags` VALUES (486, 37);
INSERT INTO `pe_photos_tags` VALUES (487, 37);
INSERT INTO `pe_photos_tags` VALUES (488, 37);
INSERT INTO `pe_photos_tags` VALUES (489, 37);
INSERT INTO `pe_photos_tags` VALUES (490, 37);
INSERT INTO `pe_photos_tags` VALUES (491, 37);
INSERT INTO `pe_photos_tags` VALUES (492, 37);
INSERT INTO `pe_photos_tags` VALUES (493, 37);
INSERT INTO `pe_photos_tags` VALUES (494, 37);
INSERT INTO `pe_photos_tags` VALUES (495, 37);
INSERT INTO `pe_photos_tags` VALUES (496, 37);
INSERT INTO `pe_photos_tags` VALUES (497, 37);
INSERT INTO `pe_photos_tags` VALUES (498, 37);
INSERT INTO `pe_photos_tags` VALUES (499, 37);
INSERT INTO `pe_photos_tags` VALUES (500, 37);
INSERT INTO `pe_photos_tags` VALUES (501, 37);
INSERT INTO `pe_photos_tags` VALUES (502, 37);
INSERT INTO `pe_photos_tags` VALUES (503, 37);
INSERT INTO `pe_photos_tags` VALUES (504, 37);
INSERT INTO `pe_photos_tags` VALUES (505, 37);
INSERT INTO `pe_photos_tags` VALUES (506, 37);
INSERT INTO `pe_photos_tags` VALUES (507, 37);
INSERT INTO `pe_photos_tags` VALUES (508, 37);
INSERT INTO `pe_photos_tags` VALUES (509, 37);
INSERT INTO `pe_photos_tags` VALUES (510, 37);
INSERT INTO `pe_photos_tags` VALUES (511, 37);
INSERT INTO `pe_photos_tags` VALUES (512, 37);
INSERT INTO `pe_photos_tags` VALUES (513, 37);
INSERT INTO `pe_photos_tags` VALUES (514, 37);
INSERT INTO `pe_photos_tags` VALUES (515, 37);
INSERT INTO `pe_photos_tags` VALUES (516, 37);
INSERT INTO `pe_photos_tags` VALUES (517, 37);
INSERT INTO `pe_photos_tags` VALUES (518, 37);
INSERT INTO `pe_photos_tags` VALUES (519, 37);
INSERT INTO `pe_photos_tags` VALUES (520, 37);
INSERT INTO `pe_photos_tags` VALUES (521, 37);
INSERT INTO `pe_photos_tags` VALUES (522, 37);
INSERT INTO `pe_photos_tags` VALUES (523, 37);
INSERT INTO `pe_photos_tags` VALUES (524, 37);
INSERT INTO `pe_photos_tags` VALUES (525, 37);
INSERT INTO `pe_photos_tags` VALUES (526, 37);
INSERT INTO `pe_photos_tags` VALUES (527, 37);
INSERT INTO `pe_photos_tags` VALUES (528, 37);
INSERT INTO `pe_photos_tags` VALUES (529, 37);
INSERT INTO `pe_photos_tags` VALUES (530, 37);
INSERT INTO `pe_photos_tags` VALUES (531, 37);
INSERT INTO `pe_photos_tags` VALUES (532, 37);
INSERT INTO `pe_photos_tags` VALUES (533, 37);
INSERT INTO `pe_photos_tags` VALUES (534, 37);
INSERT INTO `pe_photos_tags` VALUES (535, 37);
INSERT INTO `pe_photos_tags` VALUES (536, 37);
INSERT INTO `pe_photos_tags` VALUES (537, 37);
INSERT INTO `pe_photos_tags` VALUES (538, 37);
INSERT INTO `pe_photos_tags` VALUES (539, 37);
INSERT INTO `pe_photos_tags` VALUES (540, 37);
INSERT INTO `pe_photos_tags` VALUES (541, 37);
INSERT INTO `pe_photos_tags` VALUES (542, 37);
INSERT INTO `pe_photos_tags` VALUES (543, 37);
INSERT INTO `pe_photos_tags` VALUES (544, 37);
INSERT INTO `pe_photos_tags` VALUES (545, 37);
INSERT INTO `pe_photos_tags` VALUES (546, 37);
INSERT INTO `pe_photos_tags` VALUES (547, 37);
INSERT INTO `pe_photos_tags` VALUES (548, 37);
INSERT INTO `pe_photos_tags` VALUES (549, 37);
INSERT INTO `pe_photos_tags` VALUES (550, 37);
INSERT INTO `pe_photos_tags` VALUES (551, 37);
INSERT INTO `pe_photos_tags` VALUES (552, 37);
INSERT INTO `pe_photos_tags` VALUES (553, 37);
INSERT INTO `pe_photos_tags` VALUES (554, 37);
INSERT INTO `pe_photos_tags` VALUES (555, 37);
INSERT INTO `pe_photos_tags` VALUES (556, 37);
INSERT INTO `pe_photos_tags` VALUES (557, 37);
INSERT INTO `pe_photos_tags` VALUES (558, 37);
INSERT INTO `pe_photos_tags` VALUES (559, 37);
INSERT INTO `pe_photos_tags` VALUES (560, 37);
INSERT INTO `pe_photos_tags` VALUES (561, 37);
INSERT INTO `pe_photos_tags` VALUES (562, 37);
INSERT INTO `pe_photos_tags` VALUES (563, 37);
INSERT INTO `pe_photos_tags` VALUES (564, 37);
INSERT INTO `pe_photos_tags` VALUES (565, 37);
INSERT INTO `pe_photos_tags` VALUES (566, 37);
INSERT INTO `pe_photos_tags` VALUES (567, 37);
INSERT INTO `pe_photos_tags` VALUES (568, 37);
INSERT INTO `pe_photos_tags` VALUES (569, 37);
INSERT INTO `pe_photos_tags` VALUES (570, 37);
INSERT INTO `pe_photos_tags` VALUES (571, 37);
INSERT INTO `pe_photos_tags` VALUES (572, 37);
INSERT INTO `pe_photos_tags` VALUES (573, 37);
INSERT INTO `pe_photos_tags` VALUES (574, 37);
INSERT INTO `pe_photos_tags` VALUES (575, 37);
INSERT INTO `pe_photos_tags` VALUES (576, 37);
INSERT INTO `pe_photos_tags` VALUES (577, 37);
INSERT INTO `pe_photos_tags` VALUES (578, 37);
INSERT INTO `pe_photos_tags` VALUES (579, 37);
INSERT INTO `pe_photos_tags` VALUES (580, 37);
INSERT INTO `pe_photos_tags` VALUES (581, 37);
INSERT INTO `pe_photos_tags` VALUES (582, 37);
INSERT INTO `pe_photos_tags` VALUES (583, 37);
INSERT INTO `pe_photos_tags` VALUES (584, 37);
INSERT INTO `pe_photos_tags` VALUES (585, 37);
INSERT INTO `pe_photos_tags` VALUES (586, 37);
INSERT INTO `pe_photos_tags` VALUES (587, 37);
INSERT INTO `pe_photos_tags` VALUES (588, 37);
INSERT INTO `pe_photos_tags` VALUES (589, 37);
INSERT INTO `pe_photos_tags` VALUES (590, 37);
INSERT INTO `pe_photos_tags` VALUES (717, 37);
INSERT INTO `pe_photos_tags` VALUES (718, 37);
INSERT INTO `pe_photos_tags` VALUES (719, 37);
INSERT INTO `pe_photos_tags` VALUES (720, 37);
INSERT INTO `pe_photos_tags` VALUES (721, 37);
INSERT INTO `pe_photos_tags` VALUES (722, 37);
INSERT INTO `pe_photos_tags` VALUES (723, 37);
INSERT INTO `pe_photos_tags` VALUES (724, 37);
INSERT INTO `pe_photos_tags` VALUES (725, 37);
INSERT INTO `pe_photos_tags` VALUES (726, 37);
INSERT INTO `pe_photos_tags` VALUES (727, 37);
INSERT INTO `pe_photos_tags` VALUES (728, 37);
INSERT INTO `pe_photos_tags` VALUES (729, 37);
INSERT INTO `pe_photos_tags` VALUES (730, 37);
INSERT INTO `pe_photos_tags` VALUES (731, 37);
INSERT INTO `pe_photos_tags` VALUES (732, 37);
INSERT INTO `pe_photos_tags` VALUES (733, 37);
INSERT INTO `pe_photos_tags` VALUES (734, 37);
INSERT INTO `pe_photos_tags` VALUES (740, 18);
INSERT INTO `pe_photos_tags` VALUES (741, 18);
INSERT INTO `pe_photos_tags` VALUES (742, 18);
INSERT INTO `pe_photos_tags` VALUES (743, 18);
INSERT INTO `pe_photos_tags` VALUES (744, 18);
INSERT INTO `pe_photos_tags` VALUES (746, 18);
INSERT INTO `pe_photos_tags` VALUES (747, 18);
INSERT INTO `pe_photos_tags` VALUES (748, 18);

-- --------------------------------------------------------

-- 
-- Structure de la table `pe_protections`
-- 

CREATE TABLE `pe_protections` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `pe_protections`
-- 

INSERT INTO `pe_protections` VALUES (1, 'skarun', 'pwd', 'a105e10d936e2452aee4f560c1a030cd');

-- --------------------------------------------------------

-- 
-- Structure de la table `pe_tags`
-- 

CREATE TABLE `pe_tags` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- 
-- Contenu de la table `pe_tags`
-- 

INSERT INTO `pe_tags` VALUES (1, 'suchet');
INSERT INTO `pe_tags` VALUES (2, 'montagne');
INSERT INTO `pe_tags` VALUES (3, 'suisse');
INSERT INTO `pe_tags` VALUES (4, 'randonnee');
INSERT INTO `pe_tags` VALUES (5, '');
INSERT INTO `pe_tags` VALUES (6, 'su');
INSERT INTO `pe_tags` VALUES (7, 'larmont');
INSERT INTO `pe_tags` VALUES (8, 'grand taureau');
INSERT INTO `pe_tags` VALUES (9, 'randonee');
INSERT INTO `pe_tags` VALUES (10, 'grand');
INSERT INTO `pe_tags` VALUES (11, 'randon');
INSERT INTO `pe_tags` VALUES (12, 'lac du bourget');
INSERT INTO `pe_tags` VALUES (13, 'haut-savoie');
INSERT INTO `pe_tags` VALUES (14, 'dent du chat');
INSERT INTO `pe_tags` VALUES (15, 'molard noir');
INSERT INTO `pe_tags` VALUES (16, 'aix les bains');
INSERT INTO `pe_tags` VALUES (17, 'lac');
INSERT INTO `pe_tags` VALUES (18, 'panoramas');
INSERT INTO `pe_tags` VALUES (19, 'pano');
INSERT INTO `pe_tags` VALUES (20, 'conifer');
INSERT INTO `pe_tags` VALUES (21, 'train');
INSERT INTO `pe_tags` VALUES (22, 'locomotive');
INSERT INTO `pe_tags` VALUES (23, 'new-york');
INSERT INTO `pe_tags` VALUES (24, 'use');
INSERT INTO `pe_tags` VALUES (25, 'new');
INSERT INTO `pe_tags` VALUES (26, 'usa');
INSERT INTO `pe_tags` VALUES (27, 'new-yor');
INSERT INTO `pe_tags` VALUES (28, 'm');
INSERT INTO `pe_tags` VALUES (29, 'ma');
INSERT INTO `pe_tags` VALUES (30, 'maia');
INSERT INTO `pe_tags` VALUES (31, 'mai');
INSERT INTO `pe_tags` VALUES (32, 'mariage');
INSERT INTO `pe_tags` VALUES (33, 'edith');
INSERT INTO `pe_tags` VALUES (34, 'ludo');
INSERT INTO `pe_tags` VALUES (35, 'e');
INSERT INTO `pe_tags` VALUES (36, 'lu');
INSERT INTO `pe_tags` VALUES (37, 'crete');
INSERT INTO `pe_tags` VALUES (38, 'c');
INSERT INTO `pe_tags` VALUES (39, 'cre');

-- --------------------------------------------------------

-- 
-- Structure de la table `pe_users`
-- 

CREATE TABLE `pe_users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL default '',
  `password` varchar(255) NOT NULL default '',
  `groupID` varchar(50) default NULL,
  `prefs_list_item` text,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `pe_users`
-- 

INSERT INTO `pe_users` VALUES (1, 'skarun', '9c3f19c0293c8a02294ac27a442a6048', 'admin', ';');

-- --------------------------------------------------------

-- 
-- Structure de la table `stats`
-- 

CREATE TABLE `stats` (
  `id` int(6) NOT NULL auto_increment,
  `date` char(25) collate latin1_general_ci NOT NULL,
  `ip` char(25) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `ip` (`ip`(8))
) ENGINE=MyISAM AUTO_INCREMENT=3426 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3426 ;

-- 
-- Contenu de la table `stats`
-- 

INSERT INTO `stats` VALUES (5, '26/07/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (4, '26/07/2010', '93.29.139.64');
INSERT INTO `stats` VALUES (6, '27/07/2010', '93.29.139.64');
INSERT INTO `stats` VALUES (7, '27/07/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (8, '29/07/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (9, '30/07/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (10, '30/07/2010', '86.213.78.202');
INSERT INTO `stats` VALUES (11, '02/08/2010', '79.174.230.240');
INSERT INTO `stats` VALUES (12, '04/08/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (13, '04/08/2010', '172.16.90.54');
INSERT INTO `stats` VALUES (14, '05/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (15, '05/08/2010', '82.238.248.110');
INSERT INTO `stats` VALUES (16, '05/08/2010', '77.205.11.80');
INSERT INTO `stats` VALUES (17, '08/08/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (18, '09/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (19, '10/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (20, '11/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (21, '11/08/2010', '62.167.14.147');
INSERT INTO `stats` VALUES (22, '11/08/2010', '66.249.66.11');
INSERT INTO `stats` VALUES (23, '11/08/2010', '10.115.202.41, 10.115.202');
INSERT INTO `stats` VALUES (24, '11/08/2010', '10.115.202.41, 10.115.202');
INSERT INTO `stats` VALUES (25, '12/08/2010', '91.206.113.32');
INSERT INTO `stats` VALUES (26, '12/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (27, '13/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (28, '13/08/2010', '128.30.52.70');
INSERT INTO `stats` VALUES (29, '13/08/2010', '80.14.165.101');
INSERT INTO `stats` VALUES (30, '13/08/2010', '66.249.66.107');
INSERT INTO `stats` VALUES (31, '13/08/2010', '193.253.141.82');
INSERT INTO `stats` VALUES (32, '14/08/2010', '66.249.66.107');
INSERT INTO `stats` VALUES (33, '15/08/2010', '66.249.66.235');
INSERT INTO `stats` VALUES (34, '16/08/2010', '66.249.66.235');
INSERT INTO `stats` VALUES (35, '16/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (36, '17/08/2010', '66.249.66.84');
INSERT INTO `stats` VALUES (37, '17/08/2010', '92.105.119.223');
INSERT INTO `stats` VALUES (38, '17/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (39, '18/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (40, '19/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (41, '19/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (42, '20/08/2010', '66.249.65.19');
INSERT INTO `stats` VALUES (43, '20/08/2010', '66.249.65.23');
INSERT INTO `stats` VALUES (44, '21/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (45, '23/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (46, '23/08/2010', '82.127.77.69');
INSERT INTO `stats` VALUES (47, '23/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (48, '23/08/2010', '66.235.124.58');
INSERT INTO `stats` VALUES (49, '24/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (50, '24/08/2010', '82.127.77.69');
INSERT INTO `stats` VALUES (51, '24/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (52, '25/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (53, '26/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (54, '26/08/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (55, '26/08/2010', '92.105.119.223');
INSERT INTO `stats` VALUES (56, '26/08/2010', '74.52.245.146');
INSERT INTO `stats` VALUES (57, '27/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (58, '27/08/2010', '62.167.14.147');
INSERT INTO `stats` VALUES (59, '28/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (60, '29/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (61, '30/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (62, '30/08/2010', '88.175.189.232');
INSERT INTO `stats` VALUES (63, '30/08/2010', '62.167.14.147');
INSERT INTO `stats` VALUES (64, '30/08/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (65, '31/08/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (66, '31/08/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (67, '01/09/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (68, '01/09/2010', '91.214.45.223');
INSERT INTO `stats` VALUES (69, '01/09/2010', '85.92.222.254');
INSERT INTO `stats` VALUES (70, '01/09/2010', '79.142.65.159');
INSERT INTO `stats` VALUES (71, '02/09/2010', '91.214.45.223');
INSERT INTO `stats` VALUES (72, '02/09/2010', '66.249.66.75');
INSERT INTO `stats` VALUES (73, '03/09/2010', '193.47.80.82');
INSERT INTO `stats` VALUES (74, '03/09/2010', '193.47.80.82');
INSERT INTO `stats` VALUES (75, '03/09/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (76, '05/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (77, '06/09/2010', '41.224.235.31');
INSERT INTO `stats` VALUES (78, '07/09/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (79, '08/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (80, '08/09/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (81, '09/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (82, '12/09/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (83, '12/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (84, '13/09/2010', '93.29.137.85');
INSERT INTO `stats` VALUES (85, '14/09/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (86, '14/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (87, '14/09/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (88, '15/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (89, '15/09/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (90, '15/09/2010', '90.5.65.146');
INSERT INTO `stats` VALUES (91, '16/09/2010', '41.189.232.159');
INSERT INTO `stats` VALUES (92, '16/09/2010', '41.189.233.48');
INSERT INTO `stats` VALUES (93, '16/09/2010', '41.189.233.117');
INSERT INTO `stats` VALUES (94, '16/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (95, '17/09/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (96, '17/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (97, '17/09/2010', '66.249.65.115');
INSERT INTO `stats` VALUES (98, '20/09/2010', '84.14.151.180');
INSERT INTO `stats` VALUES (99, '20/09/2010', '72.1.192.98');
INSERT INTO `stats` VALUES (100, '21/09/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (101, '21/09/2010', '84.14.151.180');
INSERT INTO `stats` VALUES (102, '22/09/2010', '173.179.212.8');
INSERT INTO `stats` VALUES (103, '22/09/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (104, '22/09/2010', '84.14.151.180');
INSERT INTO `stats` VALUES (105, '22/09/2010', '82.237.36.29');
INSERT INTO `stats` VALUES (106, '23/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (107, '24/09/2010', '93.29.138.127');
INSERT INTO `stats` VALUES (108, '25/09/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (109, '26/09/2010', '91.86.95.62');
INSERT INTO `stats` VALUES (110, '27/09/2010', '93.29.138.127');
INSERT INTO `stats` VALUES (111, '27/09/2010', '82.253.143.152');
INSERT INTO `stats` VALUES (112, '28/09/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (113, '28/09/2010', '41.225.229.126');
INSERT INTO `stats` VALUES (114, '28/09/2010', '62.23.180.34');
INSERT INTO `stats` VALUES (115, '28/09/2010', '41.224.56.23');
INSERT INTO `stats` VALUES (116, '29/09/2010', '66.249.66.148');
INSERT INTO `stats` VALUES (117, '29/09/2010', '82.206.251.100');
INSERT INTO `stats` VALUES (118, '30/09/2010', 'unknown');
INSERT INTO `stats` VALUES (119, '02/10/2010', '88.190.11.232');
INSERT INTO `stats` VALUES (120, '05/10/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (121, '05/10/2010', '66.249.66.107');
INSERT INTO `stats` VALUES (122, '05/10/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (123, '06/10/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (124, '06/10/2010', '93.29.138.127');
INSERT INTO `stats` VALUES (125, '06/10/2010', '66.249.66.107');
INSERT INTO `stats` VALUES (126, '06/10/2010', '213.31.11.80');
INSERT INTO `stats` VALUES (127, '07/10/2010', '66.249.66.107');
INSERT INTO `stats` VALUES (128, '07/10/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (129, '07/10/2010', '93.29.138.127');
INSERT INTO `stats` VALUES (130, '08/10/2010', '41.104.17.82');
INSERT INTO `stats` VALUES (131, '08/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (132, '09/10/2010', '66.249.66.107');
INSERT INTO `stats` VALUES (133, '09/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (134, '09/10/2010', '74.52.245.146');
INSERT INTO `stats` VALUES (135, '09/10/2010', '67.195.114.58');
INSERT INTO `stats` VALUES (136, '10/10/2010', '196.217.200.135');
INSERT INTO `stats` VALUES (137, '11/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (138, '11/10/2010', '41.226.214.213');
INSERT INTO `stats` VALUES (139, '12/10/2010', '67.195.112.254');
INSERT INTO `stats` VALUES (140, '12/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (141, '12/10/2010', '41.251.50.212');
INSERT INTO `stats` VALUES (142, '13/10/2010', '66.249.66.180');
INSERT INTO `stats` VALUES (143, '13/10/2010', '213.31.11.80');
INSERT INTO `stats` VALUES (144, '13/10/2010', '193.47.80.43');
INSERT INTO `stats` VALUES (145, '13/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (146, '14/10/2010', '67.195.112.254');
INSERT INTO `stats` VALUES (147, '14/10/2010', '41.224.127.115');
INSERT INTO `stats` VALUES (148, '14/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (149, '15/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (150, '15/10/2010', '213.31.11.80');
INSERT INTO `stats` VALUES (151, '15/10/2010', '67.195.112.254');
INSERT INTO `stats` VALUES (152, '15/10/2010', '128.30.52.70');
INSERT INTO `stats` VALUES (153, '16/10/2010', '88.182.92.20');
INSERT INTO `stats` VALUES (154, '16/10/2010', '194.79.149.100');
INSERT INTO `stats` VALUES (155, '18/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (156, '18/10/2010', '69.70.208.242');
INSERT INTO `stats` VALUES (157, '18/10/2010', '66.220.153.248');
INSERT INTO `stats` VALUES (158, '19/10/2010', '67.195.112.254');
INSERT INTO `stats` VALUES (159, '19/10/2010', '66.249.66.180');
INSERT INTO `stats` VALUES (160, '19/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (161, '19/10/2010', '128.30.52.73');
INSERT INTO `stats` VALUES (162, '19/10/2010', '128.30.52.70');
INSERT INTO `stats` VALUES (163, '19/10/2010', '128.30.52.65');
INSERT INTO `stats` VALUES (164, '19/10/2010', '128.30.52.71');
INSERT INTO `stats` VALUES (165, '20/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (166, '22/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (167, '24/10/2010', '66.249.66.180');
INSERT INTO `stats` VALUES (168, '25/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (169, '26/10/2010', '67.195.112.254');
INSERT INTO `stats` VALUES (170, '27/10/2010', '172.16.1.101');
INSERT INTO `stats` VALUES (171, '27/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (172, '29/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (173, '30/10/2010', '66.249.65.83');
INSERT INTO `stats` VALUES (174, '31/10/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (175, '31/10/2010', '128.30.52.70');
INSERT INTO `stats` VALUES (176, '31/10/2010', '128.30.52.73');
INSERT INTO `stats` VALUES (177, '31/10/2010', '128.30.52.71');
INSERT INTO `stats` VALUES (178, '31/10/2010', '128.30.52.65');
INSERT INTO `stats` VALUES (179, '01/11/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (180, '01/11/2010', '128.30.52.65');
INSERT INTO `stats` VALUES (181, '01/11/2010', '128.30.52.73');
INSERT INTO `stats` VALUES (182, '01/11/2010', '128.30.52.70');
INSERT INTO `stats` VALUES (183, '01/11/2010', '128.30.52.71');
INSERT INTO `stats` VALUES (184, '02/11/2010', '90.45.106.172');
INSERT INTO `stats` VALUES (185, '02/11/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (186, '02/11/2010', '128.30.52.70');
INSERT INTO `stats` VALUES (187, '02/11/2010', '128.30.52.71');
INSERT INTO `stats` VALUES (188, '02/11/2010', '67.195.112.254');
INSERT INTO `stats` VALUES (189, '03/11/2010', '192.150.3.7');
INSERT INTO `stats` VALUES (190, '03/11/2010', '192.150.3.7');
INSERT INTO `stats` VALUES (191, '03/11/2010', '192.150.3.7');
INSERT INTO `stats` VALUES (192, '03/11/2010', '192.150.3.7');
INSERT INTO `stats` VALUES (193, '03/11/2010', '93.29.138.64');
INSERT INTO `stats` VALUES (194, '03/11/2010', '67.195.112.254');
INSERT INTO `stats` VALUES (195, '03/11/2010', '128.30.52.71');
INSERT INTO `stats` VALUES (196, '03/11/2010', '128.30.52.70');
INSERT INTO `stats` VALUES (197, '03/11/2010', '128.30.52.65');
INSERT INTO `stats` VALUES (198, '03/11/2010', '128.30.52.165');
INSERT INTO `stats` VALUES (199, '03/11/2010', '128.30.52.73');
INSERT INTO `stats` VALUES (200, '03/11/2010', '69.63.190.245');
INSERT INTO `stats` VALUES (201, '03/11/2010', '69.63.190.249');
INSERT INTO `stats` VALUES (202, '03/11/2010', '66.220.153.250');
INSERT INTO `stats` VALUES (203, '2010/11/04', '93.29.138.64');
INSERT INTO `stats` VALUES (204, '2010/11/04', '82.123.250.228');
INSERT INTO `stats` VALUES (205, '2010/11/04', '83.193.207.195');
INSERT INTO `stats` VALUES (206, '2010/11/04', '93.17.51.134');
INSERT INTO `stats` VALUES (207, '2010/11/04', '82.216.27.178');
INSERT INTO `stats` VALUES (208, '2010/11/04', '128.30.52.71');
INSERT INTO `stats` VALUES (209, '2010/11/04', '88.164.185.151');
INSERT INTO `stats` VALUES (210, '2010/11/04', '88.184.16.38');
INSERT INTO `stats` VALUES (211, '2010/11/04', '82.247.200.248');
INSERT INTO `stats` VALUES (212, '2010/11/04', '194.4.232.242');
INSERT INTO `stats` VALUES (213, '2010/11/04', '82.66.46.179');
INSERT INTO `stats` VALUES (214, '2010/11/05', '93.29.138.64');
INSERT INTO `stats` VALUES (215, '2010/11/05', '88.184.16.38');
INSERT INTO `stats` VALUES (216, '2010/11/05', '82.239.184.10');
INSERT INTO `stats` VALUES (217, '2010/11/05', '193.253.141.81');
INSERT INTO `stats` VALUES (218, '2010/11/06', '93.29.138.64');
INSERT INTO `stats` VALUES (219, '2010/11/06', '86.71.221.229');
INSERT INTO `stats` VALUES (220, '2010/11/06', '193.253.141.64');
INSERT INTO `stats` VALUES (221, '2010/11/07', '86.15.100.193');
INSERT INTO `stats` VALUES (222, '2010/11/07', '93.29.138.64');
INSERT INTO `stats` VALUES (223, '2010/11/07', '174.129.237.157');
INSERT INTO `stats` VALUES (224, '2010/11/08', '66.249.66.116');
INSERT INTO `stats` VALUES (225, '2010/11/08', '93.29.138.64');
INSERT INTO `stats` VALUES (226, '2010/11/09', '93.29.138.64');
INSERT INTO `stats` VALUES (227, '2010/11/09', '67.195.112.254');
INSERT INTO `stats` VALUES (228, '2010/11/09', '66.249.66.116');
INSERT INTO `stats` VALUES (229, '2010/11/10', '66.249.66.116');
INSERT INTO `stats` VALUES (230, '2010/11/10', '93.29.138.64');
INSERT INTO `stats` VALUES (231, '2010/11/10', '193.253.141.64');
INSERT INTO `stats` VALUES (232, '2010/11/12', '93.29.137.216');
INSERT INTO `stats` VALUES (233, '2010/11/12', '66.249.66.116');
INSERT INTO `stats` VALUES (234, '2010/11/15', '93.29.137.216');
INSERT INTO `stats` VALUES (235, '2010/11/15', '66.249.66.116');
INSERT INTO `stats` VALUES (236, '2010/11/15', '93.29.138.46');
INSERT INTO `stats` VALUES (237, '2010/11/16', '93.29.138.46');
INSERT INTO `stats` VALUES (238, '2010/11/16', '67.195.37.177');
INSERT INTO `stats` VALUES (239, '2010/11/17', '66.249.66.116');
INSERT INTO `stats` VALUES (240, '2010/11/17', '93.29.138.46');
INSERT INTO `stats` VALUES (241, '2010/11/18', '212.147.5.206');
INSERT INTO `stats` VALUES (242, '2010/11/18', '93.29.138.46');
INSERT INTO `stats` VALUES (243, '2010/11/19', '66.249.66.116');
INSERT INTO `stats` VALUES (244, '2010/11/21', '93.29.138.46');
INSERT INTO `stats` VALUES (245, '2010/11/21', '66.249.66.116');
INSERT INTO `stats` VALUES (246, '2010/11/22', '193.253.141.64');
INSERT INTO `stats` VALUES (247, '2010/11/22', '178.239.58.144');
INSERT INTO `stats` VALUES (248, '2010/11/22', '66.249.66.116');
INSERT INTO `stats` VALUES (249, '2010/11/23', '93.29.138.46');
INSERT INTO `stats` VALUES (250, '2010/11/23', '128.30.52.71');
INSERT INTO `stats` VALUES (251, '2010/11/23', '128.30.52.65');
INSERT INTO `stats` VALUES (252, '2010/11/23', '128.30.52.73');
INSERT INTO `stats` VALUES (253, '2010/11/23', '128.30.52.70');
INSERT INTO `stats` VALUES (254, '2010/11/23', '67.195.37.177');
INSERT INTO `stats` VALUES (255, '2010/11/23', '66.249.66.116');
INSERT INTO `stats` VALUES (256, '2010/11/24', '93.29.138.46');
INSERT INTO `stats` VALUES (257, '2010/11/25', '67.195.37.177');
INSERT INTO `stats` VALUES (258, '2010/11/26', '67.195.37.177');
INSERT INTO `stats` VALUES (259, '2010/11/26', '93.29.138.46');
INSERT INTO `stats` VALUES (260, '2010/11/28', '93.29.138.46');
INSERT INTO `stats` VALUES (261, '2010/11/28', '193.47.80.43');
INSERT INTO `stats` VALUES (262, '2010/11/28', '66.249.66.116');
INSERT INTO `stats` VALUES (263, '2010/11/29', '66.249.66.116');
INSERT INTO `stats` VALUES (264, '2010/11/29', '93.29.138.46');
INSERT INTO `stats` VALUES (265, '2010/11/30', '66.249.66.116');
INSERT INTO `stats` VALUES (266, '2010/11/30', '93.29.138.46');
INSERT INTO `stats` VALUES (267, '2010/12/01', '66.249.66.116');
INSERT INTO `stats` VALUES (268, '2010/12/01', '66.249.67.203');
INSERT INTO `stats` VALUES (269, '2010/12/01', '93.29.138.46');
INSERT INTO `stats` VALUES (270, '2010/12/02', '66.249.66.116');
INSERT INTO `stats` VALUES (271, '2010/12/02', '93.29.138.46');
INSERT INTO `stats` VALUES (272, '2010/12/03', '67.195.37.177');
INSERT INTO `stats` VALUES (273, '2010/12/03', '93.29.138.46');
INSERT INTO `stats` VALUES (274, '2010/12/04', '66.249.66.116');
INSERT INTO `stats` VALUES (275, '2010/12/05', '66.249.66.116');
INSERT INTO `stats` VALUES (276, '2010/12/06', '93.29.138.46');
INSERT INTO `stats` VALUES (277, '2010/12/06', '66.249.66.116');
INSERT INTO `stats` VALUES (278, '2010/12/07', '66.249.66.116');
INSERT INTO `stats` VALUES (279, '2010/12/07', '93.29.138.46');
INSERT INTO `stats` VALUES (280, '2010/12/08', '66.249.66.116');
INSERT INTO `stats` VALUES (281, '2010/12/09', '66.249.66.215');
INSERT INTO `stats` VALUES (282, '2010/12/09', '93.29.138.46');
INSERT INTO `stats` VALUES (283, '2010/12/10', '66.249.66.116');
INSERT INTO `stats` VALUES (284, '2010/12/10', '66.249.66.215');
INSERT INTO `stats` VALUES (285, '2010/12/10', '93.29.138.46');
INSERT INTO `stats` VALUES (286, '2010/12/11', '66.249.66.116');
INSERT INTO `stats` VALUES (287, '2010/12/11', '86.218.235.80');
INSERT INTO `stats` VALUES (288, '2010/12/12', '66.249.66.116');
INSERT INTO `stats` VALUES (289, '2010/12/13', '66.249.66.215');
INSERT INTO `stats` VALUES (290, '2010/12/13', '93.29.138.46');
INSERT INTO `stats` VALUES (291, '2010/12/13', '66.249.66.116');
INSERT INTO `stats` VALUES (292, '2010/12/13', '89.85.181.62');
INSERT INTO `stats` VALUES (293, '2010/12/13', '86.69.135.179');
INSERT INTO `stats` VALUES (294, '2010/12/13', '77.84.97.86');
INSERT INTO `stats` VALUES (295, '2010/12/13', '82.216.222.43');
INSERT INTO `stats` VALUES (296, '2010/12/13', '86.67.70.35');
INSERT INTO `stats` VALUES (297, '2010/12/13', '82.232.149.164');
INSERT INTO `stats` VALUES (298, '2010/12/13', '89.158.79.45');
INSERT INTO `stats` VALUES (299, '2010/12/13', '84.102.110.88');
INSERT INTO `stats` VALUES (300, '2010/12/13', '92.150.208.46');
INSERT INTO `stats` VALUES (301, '2010/12/13', '93.22.244.73');
INSERT INTO `stats` VALUES (302, '2010/12/13', '78.112.63.130');
INSERT INTO `stats` VALUES (303, '2010/12/13', '82.230.67.99');
INSERT INTO `stats` VALUES (304, '2010/12/13', '79.82.24.28');
INSERT INTO `stats` VALUES (305, '2010/12/13', '82.67.44.65');
INSERT INTO `stats` VALUES (306, '2010/12/13', '86.69.222.102');
INSERT INTO `stats` VALUES (307, '2010/12/13', '82.238.143.56');
INSERT INTO `stats` VALUES (308, '2010/12/13', '90.54.157.188');
INSERT INTO `stats` VALUES (309, '2010/12/13', '92.141.14.138');
INSERT INTO `stats` VALUES (310, '2010/12/13', '79.91.119.41');
INSERT INTO `stats` VALUES (311, '2010/12/13', '88.173.8.147');
INSERT INTO `stats` VALUES (312, '2010/12/13', '86.221.104.219');
INSERT INTO `stats` VALUES (313, '2010/12/13', '90.8.126.153');
INSERT INTO `stats` VALUES (314, '2010/12/13', '83.112.76.192');
INSERT INTO `stats` VALUES (315, '2010/12/13', '90.13.178.248');
INSERT INTO `stats` VALUES (316, '2010/12/13', '93.4.66.190');
INSERT INTO `stats` VALUES (317, '2010/12/13', '86.220.55.197');
INSERT INTO `stats` VALUES (318, '2010/12/13', '62.235.240.184');
INSERT INTO `stats` VALUES (319, '2010/12/13', '86.66.225.205');
INSERT INTO `stats` VALUES (320, '2010/12/13', '69.63.189.248');
INSERT INTO `stats` VALUES (321, '2010/12/13', '69.63.189.247');
INSERT INTO `stats` VALUES (322, '2010/12/13', '92.130.64.195');
INSERT INTO `stats` VALUES (323, '2010/12/14', '93.16.45.246');
INSERT INTO `stats` VALUES (324, '2010/12/14', '82.126.102.172');
INSERT INTO `stats` VALUES (325, '2010/12/14', '78.234.92.227');
INSERT INTO `stats` VALUES (326, '2010/12/14', '93.29.138.46');
INSERT INTO `stats` VALUES (327, '2010/12/14', '93.9.201.198');
INSERT INTO `stats` VALUES (328, '2010/12/14', '92.145.41.153');
INSERT INTO `stats` VALUES (329, '2010/12/14', '90.6.1.44');
INSERT INTO `stats` VALUES (330, '2010/12/14', '90.6.1.44');
INSERT INTO `stats` VALUES (331, '2010/12/14', '80.119.149.135');
INSERT INTO `stats` VALUES (332, '2010/12/14', '90.24.123.175');
INSERT INTO `stats` VALUES (333, '2010/12/14', '89.3.214.49');
INSERT INTO `stats` VALUES (334, '2010/12/14', '212.8.163.194');
INSERT INTO `stats` VALUES (335, '2010/12/14', '88.181.16.14');
INSERT INTO `stats` VALUES (336, '2010/12/14', '212.99.110.131');
INSERT INTO `stats` VALUES (337, '2010/12/14', '217.167.123.36');
INSERT INTO `stats` VALUES (338, '2010/12/14', '62.35.162.138');
INSERT INTO `stats` VALUES (339, '2010/12/14', '89.83.36.20');
INSERT INTO `stats` VALUES (340, '2010/12/14', '86.204.20.142');
INSERT INTO `stats` VALUES (341, '2010/12/14', '128.30.52.73');
INSERT INTO `stats` VALUES (342, '2010/12/14', '82.239.109.233');
INSERT INTO `stats` VALUES (343, '2010/12/14', '82.124.213.124');
INSERT INTO `stats` VALUES (344, '2010/12/14', '194.9.63.57');
INSERT INTO `stats` VALUES (345, '2010/12/14', '78.237.142.21');
INSERT INTO `stats` VALUES (346, '2010/12/14', '41.231.10.206');
INSERT INTO `stats` VALUES (347, '2010/12/14', '67.195.37.177');
INSERT INTO `stats` VALUES (348, '2010/12/14', '90.19.197.146');
INSERT INTO `stats` VALUES (349, '2010/12/14', '86.213.245.181');
INSERT INTO `stats` VALUES (350, '2010/12/14', '92.162.155.8');
INSERT INTO `stats` VALUES (351, '2010/12/14', '82.127.69.1');
INSERT INTO `stats` VALUES (352, '2010/12/14', '66.249.66.116');
INSERT INTO `stats` VALUES (353, '2010/12/15', '66.249.66.23');
INSERT INTO `stats` VALUES (354, '2010/12/15', '93.29.138.46');
INSERT INTO `stats` VALUES (355, '2010/12/15', '66.249.72.106');
INSERT INTO `stats` VALUES (356, '2010/12/15', '66.249.66.71');
INSERT INTO `stats` VALUES (357, '2010/12/15', '67.195.37.177');
INSERT INTO `stats` VALUES (358, '2010/12/15', '217.128.22.167');
INSERT INTO `stats` VALUES (359, '2010/12/16', '204.236.235.245');
INSERT INTO `stats` VALUES (360, '2010/12/16', '93.29.138.46');
INSERT INTO `stats` VALUES (361, '2010/12/16', '66.249.66.66');
INSERT INTO `stats` VALUES (362, '2010/12/16', '217.128.22.167');
INSERT INTO `stats` VALUES (363, '2010/12/16', '66.249.66.23');
INSERT INTO `stats` VALUES (364, '2010/12/16', '66.249.66.71');
INSERT INTO `stats` VALUES (365, '2010/12/17', '66.249.66.23');
INSERT INTO `stats` VALUES (366, '2010/12/17', '204.236.235.245');
INSERT INTO `stats` VALUES (367, '2010/12/17', '93.29.138.46');
INSERT INTO `stats` VALUES (368, '2010/12/17', '66.249.66.66');
INSERT INTO `stats` VALUES (369, '2010/12/17', '213.31.11.80');
INSERT INTO `stats` VALUES (370, '2010/12/17', '66.249.72.43');
INSERT INTO `stats` VALUES (371, '2010/12/18', '66.249.66.71');
INSERT INTO `stats` VALUES (372, '2010/12/18', '66.249.72.81');
INSERT INTO `stats` VALUES (373, '2010/12/18', '85.68.221.222');
INSERT INTO `stats` VALUES (374, '2010/12/18', '66.249.66.215');
INSERT INTO `stats` VALUES (375, '2010/12/18', '66.249.66.66');
INSERT INTO `stats` VALUES (376, '2010/12/18', '66.249.72.43');
INSERT INTO `stats` VALUES (377, '2010/12/19', '66.249.66.215');
INSERT INTO `stats` VALUES (378, '2010/12/19', '66.249.66.71');
INSERT INTO `stats` VALUES (379, '2010/12/19', '66.249.66.66');
INSERT INTO `stats` VALUES (380, '2010/12/19', '66.249.72.106');
INSERT INTO `stats` VALUES (381, '2010/12/19', '86.77.4.163');
INSERT INTO `stats` VALUES (382, '2010/12/19', '188.165.198.44');
INSERT INTO `stats` VALUES (383, '2010/12/19', '193.47.80.47');
INSERT INTO `stats` VALUES (384, '2010/12/19', '66.249.72.43');
INSERT INTO `stats` VALUES (385, '2010/12/20', '66.249.66.66');
INSERT INTO `stats` VALUES (386, '2010/12/20', '66.249.66.215');
INSERT INTO `stats` VALUES (387, '2010/12/20', '66.249.66.71');
INSERT INTO `stats` VALUES (388, '2010/12/20', '90.2.162.104');
INSERT INTO `stats` VALUES (389, '2010/12/20', '213.31.11.80');
INSERT INTO `stats` VALUES (390, '2010/12/20', '93.29.138.46');
INSERT INTO `stats` VALUES (391, '2010/12/21', '66.249.66.215');
INSERT INTO `stats` VALUES (392, '2010/12/21', '213.31.11.80');
INSERT INTO `stats` VALUES (393, '2010/12/21', '67.195.110.186');
INSERT INTO `stats` VALUES (394, '2010/12/21', '217.108.115.241');
INSERT INTO `stats` VALUES (395, '2010/12/21', '217.108.115.241');
INSERT INTO `stats` VALUES (396, '2010/12/21', '81.80.146.105');
INSERT INTO `stats` VALUES (397, '2010/12/21', '66.249.72.43');
INSERT INTO `stats` VALUES (398, '2010/12/21', '66.249.66.71');
INSERT INTO `stats` VALUES (399, '2010/12/21', '93.29.138.46');
INSERT INTO `stats` VALUES (400, '2010/12/22', '66.249.66.71');
INSERT INTO `stats` VALUES (401, '2010/12/22', '93.29.138.46');
INSERT INTO `stats` VALUES (402, '2010/12/22', '66.249.66.66');
INSERT INTO `stats` VALUES (403, '2010/12/22', '66.249.72.81');
INSERT INTO `stats` VALUES (404, '2010/12/23', '193.47.80.47');
INSERT INTO `stats` VALUES (405, '2010/12/23', '66.249.66.215');
INSERT INTO `stats` VALUES (406, '2010/12/23', '66.249.66.71');
INSERT INTO `stats` VALUES (407, '2010/12/23', '66.249.72.136');
INSERT INTO `stats` VALUES (408, '2010/12/24', '66.249.66.215');
INSERT INTO `stats` VALUES (409, '2010/12/24', '66.249.66.66');
INSERT INTO `stats` VALUES (410, '2010/12/24', '193.47.80.47');
INSERT INTO `stats` VALUES (411, '2010/12/24', '66.249.66.71');
INSERT INTO `stats` VALUES (412, '2010/12/24', '67.195.37.177');
INSERT INTO `stats` VALUES (413, '2010/12/25', '193.47.80.47');
INSERT INTO `stats` VALUES (414, '2010/12/26', '66.249.66.215');
INSERT INTO `stats` VALUES (415, '2010/12/26', '193.47.80.43');
INSERT INTO `stats` VALUES (416, '2010/12/26', '66.249.66.71');
INSERT INTO `stats` VALUES (417, '2010/12/26', '66.249.66.66');
INSERT INTO `stats` VALUES (418, '2010/12/27', '66.249.66.215');
INSERT INTO `stats` VALUES (419, '2010/12/27', '66.249.66.71');
INSERT INTO `stats` VALUES (420, '2010/12/27', '193.47.80.47');
INSERT INTO `stats` VALUES (421, '2010/12/27', '66.249.66.66');
INSERT INTO `stats` VALUES (422, '2010/12/28', '66.249.66.66');
INSERT INTO `stats` VALUES (423, '2010/12/28', '66.249.66.71');
INSERT INTO `stats` VALUES (424, '2010/12/28', '66.249.66.215');
INSERT INTO `stats` VALUES (425, '2010/12/28', '67.195.37.177');
INSERT INTO `stats` VALUES (426, '2010/12/29', '66.249.66.215');
INSERT INTO `stats` VALUES (427, '2010/12/29', '193.47.80.47');
INSERT INTO `stats` VALUES (428, '2010/12/30', '193.47.80.47');
INSERT INTO `stats` VALUES (429, '2010/12/30', '66.249.72.116');
INSERT INTO `stats` VALUES (430, '2010/12/30', '88.175.189.232');
INSERT INTO `stats` VALUES (431, '2010/12/30', '66.249.72.136');
INSERT INTO `stats` VALUES (432, '2010/12/30', '189.88.241.105');
INSERT INTO `stats` VALUES (433, '2010/12/31', '189.88.241.105');
INSERT INTO `stats` VALUES (434, '2010/12/31', '89.3.67.8');
INSERT INTO `stats` VALUES (435, '2010/12/31', '66.249.72.136');
INSERT INTO `stats` VALUES (436, '2010/12/31', '67.195.37.177');
INSERT INTO `stats` VALUES (437, '2011/01/01', '67.195.37.177');
INSERT INTO `stats` VALUES (438, '2011/01/01', '66.249.72.240');
INSERT INTO `stats` VALUES (439, '2011/01/01', '88.175.189.232');
INSERT INTO `stats` VALUES (440, '2011/01/02', '66.249.72.136');
INSERT INTO `stats` VALUES (441, '2011/01/02', '66.249.72.116');
INSERT INTO `stats` VALUES (442, '2011/01/02', '88.175.189.232');
INSERT INTO `stats` VALUES (443, '2011/01/02', '67.164.90.9');
INSERT INTO `stats` VALUES (444, '2011/01/03', '66.249.72.136');
INSERT INTO `stats` VALUES (445, '2011/01/03', '206.220.173.91');
INSERT INTO `stats` VALUES (446, '2011/01/03', '66.249.72.240');
INSERT INTO `stats` VALUES (447, '2011/01/03', '88.162.97.241');
INSERT INTO `stats` VALUES (448, '2011/01/03', '77.198.216.222');
INSERT INTO `stats` VALUES (449, '2011/01/03', '90.50.109.30');
INSERT INTO `stats` VALUES (450, '2011/01/04', '66.249.72.116');
INSERT INTO `stats` VALUES (451, '2011/01/04', '78.125.62.171');
INSERT INTO `stats` VALUES (452, '2011/01/04', '67.195.110.186');
INSERT INTO `stats` VALUES (453, '2011/01/04', '90.50.109.30');
INSERT INTO `stats` VALUES (454, '2011/01/05', '66.249.72.136');
INSERT INTO `stats` VALUES (455, '2011/01/05', '67.195.110.186');
INSERT INTO `stats` VALUES (456, '2011/01/06', '41.141.234.210');
INSERT INTO `stats` VALUES (457, '2011/01/06', '66.249.72.136');
INSERT INTO `stats` VALUES (458, '2011/01/06', '193.47.80.43');
INSERT INTO `stats` VALUES (459, '2011/01/06', '66.249.72.240');
INSERT INTO `stats` VALUES (460, '2011/01/07', '83.112.201.229');
INSERT INTO `stats` VALUES (461, '2011/01/07', '67.195.37.177');
INSERT INTO `stats` VALUES (462, '2011/01/07', '66.249.72.116');
INSERT INTO `stats` VALUES (463, '2011/01/07', '88.175.189.232');
INSERT INTO `stats` VALUES (464, '2011/01/08', '209.190.3.210');
INSERT INTO `stats` VALUES (465, '2011/01/08', '66.249.72.116');
INSERT INTO `stats` VALUES (466, '2011/01/08', '66.249.72.240');
INSERT INTO `stats` VALUES (467, '2011/01/08', '66.249.72.136');
INSERT INTO `stats` VALUES (468, '2011/01/08', '66.249.66.215');
INSERT INTO `stats` VALUES (469, '2011/01/08', '67.195.110.186');
INSERT INTO `stats` VALUES (470, '2011/01/09', '66.249.66.66');
INSERT INTO `stats` VALUES (471, '2011/01/09', '66.249.66.215');
INSERT INTO `stats` VALUES (472, '2011/01/09', '67.195.110.186');
INSERT INTO `stats` VALUES (473, '2011/01/10', '93.29.139.102');
INSERT INTO `stats` VALUES (474, '2011/01/10', '217.128.22.167');
INSERT INTO `stats` VALUES (475, '2011/01/11', '193.47.80.43');
INSERT INTO `stats` VALUES (476, '2011/01/11', '66.249.66.215');
INSERT INTO `stats` VALUES (477, '2011/01/11', '82.249.191.106');
INSERT INTO `stats` VALUES (478, '2011/01/11', '66.249.66.71');
INSERT INTO `stats` VALUES (479, '2011/01/12', '93.29.139.102');
INSERT INTO `stats` VALUES (480, '2011/01/13', '66.249.66.215');
INSERT INTO `stats` VALUES (481, '2011/01/13', '66.249.66.66');
INSERT INTO `stats` VALUES (482, '2011/01/13', '80.219.183.211');
INSERT INTO `stats` VALUES (483, '2011/01/13', '66.249.66.71');
INSERT INTO `stats` VALUES (484, '2011/01/13', '217.128.22.167');
INSERT INTO `stats` VALUES (485, '2011/01/13', '193.200.220.2');
INSERT INTO `stats` VALUES (486, '2011/01/14', '66.249.66.66');
INSERT INTO `stats` VALUES (487, '2011/01/14', '66.249.72.116');
INSERT INTO `stats` VALUES (488, '2011/01/14', '66.249.66.71');
INSERT INTO `stats` VALUES (489, '2011/01/14', '93.29.139.102');
INSERT INTO `stats` VALUES (490, '2011/01/14', '67.195.110.186');
INSERT INTO `stats` VALUES (491, '2011/01/14', '66.249.66.215');
INSERT INTO `stats` VALUES (492, '2011/01/15', '66.249.66.215');
INSERT INTO `stats` VALUES (493, '2011/01/15', '66.249.66.71');
INSERT INTO `stats` VALUES (494, '2011/01/15', '85.17.192.141');
INSERT INTO `stats` VALUES (495, '2011/01/15', '95.108.247.252');
INSERT INTO `stats` VALUES (496, '2011/01/16', '93.29.140.6');
INSERT INTO `stats` VALUES (497, '2011/01/16', '66.249.66.71');
INSERT INTO `stats` VALUES (498, '2011/01/16', '66.249.71.52');
INSERT INTO `stats` VALUES (499, '2011/01/17', '66.249.72.240');
INSERT INTO `stats` VALUES (500, '2011/01/17', '66.249.66.66');
INSERT INTO `stats` VALUES (501, '2011/01/17', '83.194.182.132');
INSERT INTO `stats` VALUES (502, '2011/01/17', '83.196.100.133');
INSERT INTO `stats` VALUES (503, '2011/01/17', '78.237.142.21');
INSERT INTO `stats` VALUES (504, '2011/01/17', '93.29.139.102');
INSERT INTO `stats` VALUES (505, '2011/01/17', '192.114.71.13');
INSERT INTO `stats` VALUES (506, '2011/01/17', '212.195.130.109');
INSERT INTO `stats` VALUES (507, '2011/01/18', '66.249.66.71');
INSERT INTO `stats` VALUES (508, '2011/01/18', '67.16.94.2');
INSERT INTO `stats` VALUES (509, '2011/01/18', '88.184.160.56');
INSERT INTO `stats` VALUES (510, '2011/01/18', '66.249.66.215');
INSERT INTO `stats` VALUES (511, '2011/01/18', '192.168.150.123');
INSERT INTO `stats` VALUES (512, '2011/01/19', '82.80.230.228');
INSERT INTO `stats` VALUES (513, '2011/01/19', '67.195.110.186');
INSERT INTO `stats` VALUES (514, '2011/01/19', '93.29.139.102');
INSERT INTO `stats` VALUES (515, '2011/01/20', '193.47.80.43');
INSERT INTO `stats` VALUES (516, '2011/01/20', '66.249.66.66');
INSERT INTO `stats` VALUES (517, '2011/01/20', '95.28.237.201');
INSERT INTO `stats` VALUES (518, '2011/01/20', '67.195.110.186');
INSERT INTO `stats` VALUES (519, '2011/01/21', '89.178.110.65');
INSERT INTO `stats` VALUES (520, '2011/01/21', '119.63.195.215');
INSERT INTO `stats` VALUES (521, '2011/01/22', '65.55.3.175');
INSERT INTO `stats` VALUES (522, '2011/01/22', '66.249.66.71');
INSERT INTO `stats` VALUES (523, '2011/01/22', '66.249.67.45');
INSERT INTO `stats` VALUES (524, '2011/01/22', '67.195.110.186');
INSERT INTO `stats` VALUES (525, '2011/01/22', '79.151.221.118');
INSERT INTO `stats` VALUES (526, '2011/01/22', '90.45.91.174');
INSERT INTO `stats` VALUES (527, '2011/01/22', '66.249.66.215');
INSERT INTO `stats` VALUES (528, '2011/01/22', '66.249.67.203');
INSERT INTO `stats` VALUES (529, '2011/01/23', '119.63.195.194');
INSERT INTO `stats` VALUES (530, '2011/01/23', '83.196.104.212');
INSERT INTO `stats` VALUES (531, '2011/01/23', '92.135.38.121');
INSERT INTO `stats` VALUES (532, '2011/01/23', '93.29.137.48');
INSERT INTO `stats` VALUES (533, '2011/01/23', '119.63.195.203');
INSERT INTO `stats` VALUES (534, '2011/01/23', '119.63.195.218');
INSERT INTO `stats` VALUES (535, '2011/01/24', '66.249.66.71');
INSERT INTO `stats` VALUES (536, '2011/01/24', '66.249.66.215');
INSERT INTO `stats` VALUES (537, '2011/01/24', '93.29.137.48');
INSERT INTO `stats` VALUES (538, '2011/01/24', '92.85.166.42');
INSERT INTO `stats` VALUES (539, '2011/01/25', '207.46.204.237');
INSERT INTO `stats` VALUES (540, '2011/01/25', '119.63.195.209');
INSERT INTO `stats` VALUES (541, '2011/01/25', '119.63.195.213');
INSERT INTO `stats` VALUES (542, '2011/01/25', '88.140.233.132');
INSERT INTO `stats` VALUES (543, '2011/01/25', '193.47.80.43');
INSERT INTO `stats` VALUES (544, '2011/01/25', '89.82.7.150');
INSERT INTO `stats` VALUES (545, '2011/01/26', '119.63.195.204');
INSERT INTO `stats` VALUES (546, '2011/01/26', '67.195.110.186');
INSERT INTO `stats` VALUES (547, '2011/01/26', '66.249.71.200');
INSERT INTO `stats` VALUES (548, '2011/01/26', '66.249.66.71');
INSERT INTO `stats` VALUES (549, '2011/01/26', '95.108.217.252');
INSERT INTO `stats` VALUES (550, '2011/01/26', '86.65.126.36');
INSERT INTO `stats` VALUES (551, '2011/01/26', '90.35.254.245');
INSERT INTO `stats` VALUES (552, '2011/01/26', '78.237.142.21');
INSERT INTO `stats` VALUES (553, '2011/01/26', '77.207.245.25');
INSERT INTO `stats` VALUES (554, '2011/01/26', '193.47.80.43');
INSERT INTO `stats` VALUES (555, '2011/01/26', '66.249.71.52');
INSERT INTO `stats` VALUES (556, '2011/01/26', '41.96.50.72');
INSERT INTO `stats` VALUES (557, '2011/01/27', '193.47.80.43');
INSERT INTO `stats` VALUES (558, '2011/01/27', '66.249.66.215');
INSERT INTO `stats` VALUES (559, '2011/01/27', '66.249.66.71');
INSERT INTO `stats` VALUES (560, '2011/01/27', '66.249.66.66');
INSERT INTO `stats` VALUES (561, '2011/01/27', '78.237.142.21');
INSERT INTO `stats` VALUES (562, '2011/01/27', '67.195.110.186');
INSERT INTO `stats` VALUES (563, '2011/01/27', '66.249.72.116');
INSERT INTO `stats` VALUES (564, '2011/01/28', '95.108.247.252');
INSERT INTO `stats` VALUES (565, '2011/01/28', '66.249.66.66');
INSERT INTO `stats` VALUES (566, '2011/01/28', '193.47.80.43');
INSERT INTO `stats` VALUES (567, '2011/01/29', '77.250.14.92');
INSERT INTO `stats` VALUES (568, '2011/01/29', '66.249.66.66');
INSERT INTO `stats` VALUES (569, '2011/01/30', '66.249.66.71');
INSERT INTO `stats` VALUES (570, '2011/01/30', '66.249.71.83');
INSERT INTO `stats` VALUES (571, '2011/01/30', '66.249.66.215');
INSERT INTO `stats` VALUES (572, '2011/01/31', '77.250.14.92');
INSERT INTO `stats` VALUES (573, '2011/01/31', '82.254.30.166');
INSERT INTO `stats` VALUES (574, '2011/01/31', '67.195.110.189');
INSERT INTO `stats` VALUES (575, '2011/02/01', '92.130.175.92');
INSERT INTO `stats` VALUES (576, '2011/02/01', '93.29.139.101');
INSERT INTO `stats` VALUES (577, '2011/02/02', '67.195.110.189');
INSERT INTO `stats` VALUES (578, '2011/02/03', '89.178.152.231');
INSERT INTO `stats` VALUES (579, '2011/02/03', '95.27.86.42');
INSERT INTO `stats` VALUES (580, '2011/02/03', '93.29.139.101');
INSERT INTO `stats` VALUES (581, '2011/02/03', '67.195.110.189');
INSERT INTO `stats` VALUES (582, '2011/02/03', '92.148.178.84');
INSERT INTO `stats` VALUES (583, '2011/02/04', '93.29.139.101');
INSERT INTO `stats` VALUES (584, '2011/02/04', '41.231.2.238');
INSERT INTO `stats` VALUES (585, '2011/02/04', '66.249.66.66');
INSERT INTO `stats` VALUES (586, '2011/02/04', '212.113.37.105');
INSERT INTO `stats` VALUES (587, '2011/02/05', '66.249.66.66');
INSERT INTO `stats` VALUES (588, '2011/02/05', '93.29.139.101');
INSERT INTO `stats` VALUES (589, '2011/02/05', '67.195.110.189');
INSERT INTO `stats` VALUES (590, '2011/02/05', '212.113.37.105');
INSERT INTO `stats` VALUES (591, '2011/02/06', '66.249.72.116');
INSERT INTO `stats` VALUES (592, '2011/02/07', '65.55.3.175');
INSERT INTO `stats` VALUES (593, '2011/02/07', '83.201.122.96');
INSERT INTO `stats` VALUES (594, '2011/02/07', '67.195.110.189');
INSERT INTO `stats` VALUES (595, '2011/02/07', '95.108.247.252');
INSERT INTO `stats` VALUES (596, '2011/02/07', '41.226.142.49');
INSERT INTO `stats` VALUES (597, '2011/02/08', '207.46.13.134');
INSERT INTO `stats` VALUES (598, '2011/02/08', '93.29.139.101');
INSERT INTO `stats` VALUES (599, '2011/02/09', '67.195.110.189');
INSERT INTO `stats` VALUES (600, '2011/02/09', '93.29.139.101');
INSERT INTO `stats` VALUES (601, '2011/02/10', '93.29.139.101');
INSERT INTO `stats` VALUES (602, '2011/02/10', '67.195.110.189');
INSERT INTO `stats` VALUES (603, '2011/02/10', '207.46.13.144');
INSERT INTO `stats` VALUES (604, '2011/02/11', '218.213.130.202');
INSERT INTO `stats` VALUES (605, '2011/02/11', '66.249.72.116');
INSERT INTO `stats` VALUES (606, '2011/02/11', '93.29.139.101');
INSERT INTO `stats` VALUES (607, '2011/02/11', '193.50.216.88');
INSERT INTO `stats` VALUES (608, '2011/02/11', '216.239.45.4');
INSERT INTO `stats` VALUES (609, '2011/02/12', '95.108.247.252');
INSERT INTO `stats` VALUES (610, '2011/02/12', '66.249.72.116');
INSERT INTO `stats` VALUES (611, '2011/02/12', '67.195.110.189');
INSERT INTO `stats` VALUES (612, '2011/02/13', '66.249.72.116');
INSERT INTO `stats` VALUES (613, '2011/02/13', '207.46.13.40');
INSERT INTO `stats` VALUES (614, '2011/02/13', '66.249.72.148');
INSERT INTO `stats` VALUES (615, '2011/02/13', '207.46.13.92');
INSERT INTO `stats` VALUES (616, '2011/02/14', '88.183.26.140');
INSERT INTO `stats` VALUES (617, '2011/02/14', '41.104.101.42');
INSERT INTO `stats` VALUES (618, '2011/02/14', '95.108.247.252');
INSERT INTO `stats` VALUES (619, '2011/02/15', '93.29.139.101');
INSERT INTO `stats` VALUES (620, '2011/02/15', '207.46.12.241');
INSERT INTO `stats` VALUES (621, '2011/02/15', '66.249.72.148');
INSERT INTO `stats` VALUES (622, '2011/02/15', '193.47.80.43');
INSERT INTO `stats` VALUES (623, '2011/02/15', '67.195.110.189');
INSERT INTO `stats` VALUES (624, '2011/02/16', '67.195.114.24');
INSERT INTO `stats` VALUES (625, '2011/02/16', '65.52.110.74');
INSERT INTO `stats` VALUES (626, '2011/02/16', '67.195.110.189');
INSERT INTO `stats` VALUES (627, '2011/02/16', '66.249.72.148');
INSERT INTO `stats` VALUES (628, '2011/02/16', '65.55.3.175');
INSERT INTO `stats` VALUES (629, '2011/02/16', '92.143.252.66');
INSERT INTO `stats` VALUES (630, '2011/02/17', '66.249.72.148');
INSERT INTO `stats` VALUES (631, '2011/02/17', '207.46.195.242');
INSERT INTO `stats` VALUES (632, '2011/02/17', '193.27.69.222');
INSERT INTO `stats` VALUES (633, '2011/02/17', '67.195.110.189');
INSERT INTO `stats` VALUES (634, '2011/02/18', '212.113.37.105');
INSERT INTO `stats` VALUES (635, '2011/02/18', '66.249.72.148');
INSERT INTO `stats` VALUES (636, '2011/02/18', '85.25.124.167');
INSERT INTO `stats` VALUES (637, '2011/02/19', '95.108.247.252');
INSERT INTO `stats` VALUES (638, '2011/02/19', '66.249.72.116');
INSERT INTO `stats` VALUES (639, '2011/02/19', '207.46.13.145');
INSERT INTO `stats` VALUES (640, '2011/02/20', '65.55.3.175');
INSERT INTO `stats` VALUES (641, '2011/02/20', '95.108.247.252');
INSERT INTO `stats` VALUES (642, '2011/02/20', '93.29.139.101');
INSERT INTO `stats` VALUES (643, '2011/02/21', '67.195.110.189');
INSERT INTO `stats` VALUES (644, '2011/02/21', '66.249.71.83');
INSERT INTO `stats` VALUES (645, '2011/02/21', '95.28.110.145');
INSERT INTO `stats` VALUES (646, '2011/02/21', '65.52.110.92');
INSERT INTO `stats` VALUES (647, '2011/02/21', '78.237.142.21');
INSERT INTO `stats` VALUES (648, '2011/02/21', '66.249.66.66');
INSERT INTO `stats` VALUES (649, '2011/02/21', '66.249.66.215');
INSERT INTO `stats` VALUES (650, '2011/02/21', '212.113.37.105');
INSERT INTO `stats` VALUES (651, '2011/02/22', '66.249.66.66');
INSERT INTO `stats` VALUES (652, '2011/02/22', '95.108.247.252');
INSERT INTO `stats` VALUES (653, '2011/02/22', '66.249.66.215');
INSERT INTO `stats` VALUES (654, '2011/02/22', '218.213.130.202');
INSERT INTO `stats` VALUES (655, '2011/02/22', '65.52.108.14');
INSERT INTO `stats` VALUES (656, '2011/02/22', '66.249.72.116');
INSERT INTO `stats` VALUES (657, '2011/02/23', '67.195.112.187');
INSERT INTO `stats` VALUES (658, '2011/02/23', '67.195.110.189');
INSERT INTO `stats` VALUES (659, '2011/02/23', '66.249.72.116');
INSERT INTO `stats` VALUES (660, '2011/02/23', '66.249.66.66');
INSERT INTO `stats` VALUES (661, '2011/02/23', '122.177.216.188');
INSERT INTO `stats` VALUES (662, '2011/02/23', '95.108.247.252');
INSERT INTO `stats` VALUES (663, '2011/02/23', '80.14.132.191');
INSERT INTO `stats` VALUES (664, '2011/02/23', '88.165.170.232');
INSERT INTO `stats` VALUES (665, '2011/02/24', '66.249.66.66');
INSERT INTO `stats` VALUES (666, '2011/02/24', '67.195.110.189');
INSERT INTO `stats` VALUES (667, '2011/02/25', '66.249.66.84');
INSERT INTO `stats` VALUES (668, '2011/02/25', '41.140.2.127');
INSERT INTO `stats` VALUES (669, '2011/02/25', '90.1.116.232');
INSERT INTO `stats` VALUES (670, '2011/02/25', '77.68.106.74');
INSERT INTO `stats` VALUES (671, '2011/02/25', '207.46.195.226');
INSERT INTO `stats` VALUES (672, '2011/02/26', '207.46.204.236');
INSERT INTO `stats` VALUES (673, '2011/02/26', '95.108.247.252');
INSERT INTO `stats` VALUES (674, '2011/02/26', '95.108.151.244');
INSERT INTO `stats` VALUES (675, '2011/02/26', '207.46.204.180');
INSERT INTO `stats` VALUES (676, '2011/02/26', '66.249.71.200');
INSERT INTO `stats` VALUES (677, '2011/02/26', '92.130.128.95');
INSERT INTO `stats` VALUES (678, '2011/02/27', '81.50.128.147');
INSERT INTO `stats` VALUES (679, '2011/02/28', '66.249.71.98');
INSERT INTO `stats` VALUES (680, '2011/02/28', '207.46.13.45');
INSERT INTO `stats` VALUES (681, '2011/02/28', '174.133.177.66');
INSERT INTO `stats` VALUES (682, '2011/02/28', '188.138.81.42');
INSERT INTO `stats` VALUES (683, '2011/02/28', '88.168.130.15');
INSERT INTO `stats` VALUES (684, '2011/02/28', '41.226.176.102');
INSERT INTO `stats` VALUES (685, '2011/02/28', '207.46.13.91');
INSERT INTO `stats` VALUES (686, '2011/03/01', '82.238.18.235');
INSERT INTO `stats` VALUES (687, '2011/03/01', '208.115.111.69');
INSERT INTO `stats` VALUES (688, '2011/03/01', '82.64.46.12');
INSERT INTO `stats` VALUES (689, '2011/03/01', '128.30.52.73');
INSERT INTO `stats` VALUES (690, '2011/03/02', '208.115.111.69');
INSERT INTO `stats` VALUES (691, '2011/03/02', '66.249.71.98');
INSERT INTO `stats` VALUES (692, '2011/03/02', '193.47.80.43');
INSERT INTO `stats` VALUES (693, '2011/03/02', '67.195.115.168');
INSERT INTO `stats` VALUES (694, '2011/03/02', '67.195.110.189');
INSERT INTO `stats` VALUES (695, '2011/03/02', '66.249.71.200');
INSERT INTO `stats` VALUES (696, '2011/03/02', '66.249.72.84');
INSERT INTO `stats` VALUES (697, '2011/03/02', '207.46.13.101');
INSERT INTO `stats` VALUES (698, '2011/03/03', '208.115.111.69');
INSERT INTO `stats` VALUES (699, '2011/03/03', '219.137.132.95');
INSERT INTO `stats` VALUES (700, '2011/03/03', '81.49.132.247');
INSERT INTO `stats` VALUES (701, '2011/03/03', '89.83.54.54');
INSERT INTO `stats` VALUES (702, '2011/03/03', '67.195.110.189');
INSERT INTO `stats` VALUES (703, '2011/03/03', '65.55.3.175');
INSERT INTO `stats` VALUES (704, '2011/03/04', '65.55.3.175');
INSERT INTO `stats` VALUES (705, '2011/03/04', '66.249.72.138');
INSERT INTO `stats` VALUES (706, '2011/03/04', '66.249.72.72');
INSERT INTO `stats` VALUES (707, '2011/03/04', '208.115.111.69');
INSERT INTO `stats` VALUES (708, '2011/03/05', '208.115.111.69');
INSERT INTO `stats` VALUES (709, '2011/03/06', '66.249.72.138');
INSERT INTO `stats` VALUES (710, '2011/03/06', '208.115.111.69');
INSERT INTO `stats` VALUES (711, '2011/03/06', '197.1.50.56');
INSERT INTO `stats` VALUES (712, '2011/03/07', '208.115.111.69');
INSERT INTO `stats` VALUES (713, '2011/03/07', '178.77.74.155');
INSERT INTO `stats` VALUES (714, '2011/03/07', '46.163.73.176');
INSERT INTO `stats` VALUES (715, '2011/03/07', '67.195.110.189');
INSERT INTO `stats` VALUES (716, '2011/03/07', '212.113.37.105');
INSERT INTO `stats` VALUES (717, '2011/03/08', '208.115.111.69');
INSERT INTO `stats` VALUES (718, '2011/03/08', '66.249.72.72');
INSERT INTO `stats` VALUES (719, '2011/03/08', '212.113.37.105');
INSERT INTO `stats` VALUES (720, '2011/03/08', '65.55.3.175');
INSERT INTO `stats` VALUES (721, '2011/03/08', '93.29.139.101');
INSERT INTO `stats` VALUES (722, '2011/03/08', '93.80.79.204');
INSERT INTO `stats` VALUES (723, '2011/03/09', '208.115.111.69');
INSERT INTO `stats` VALUES (724, '2011/03/09', '67.195.115.168');
INSERT INTO `stats` VALUES (725, '2011/03/09', '66.249.72.72');
INSERT INTO `stats` VALUES (726, '2011/03/09', '67.195.110.189');
INSERT INTO `stats` VALUES (727, '2011/03/09', '207.46.13.91');
INSERT INTO `stats` VALUES (728, '2011/03/09', '93.29.139.101');
INSERT INTO `stats` VALUES (729, '2011/03/09', '88.162.138.39');
INSERT INTO `stats` VALUES (730, '2011/03/10', '208.115.111.69');
INSERT INTO `stats` VALUES (731, '2011/03/10', '83.159.107.144');
INSERT INTO `stats` VALUES (732, '2011/03/10', '193.47.80.43');
INSERT INTO `stats` VALUES (733, '2011/03/10', '210.127.249.145');
INSERT INTO `stats` VALUES (734, '2011/03/10', '67.195.110.189');
INSERT INTO `stats` VALUES (735, '2011/03/11', '207.46.12.238');
INSERT INTO `stats` VALUES (736, '2011/03/11', '208.115.111.69');
INSERT INTO `stats` VALUES (737, '2011/03/11', '93.22.126.141');
INSERT INTO `stats` VALUES (738, '2011/03/11', '65.52.109.59');
INSERT INTO `stats` VALUES (739, '2011/03/11', '212.113.37.105');
INSERT INTO `stats` VALUES (740, '2011/03/12', '66.249.66.238');
INSERT INTO `stats` VALUES (741, '2011/03/12', '193.47.80.47');
INSERT INTO `stats` VALUES (742, '2011/03/12', '208.115.111.69');
INSERT INTO `stats` VALUES (743, '2011/03/12', '95.108.247.252');
INSERT INTO `stats` VALUES (744, '2011/03/12', '93.29.139.101');
INSERT INTO `stats` VALUES (745, '2011/03/12', '67.195.110.189');
INSERT INTO `stats` VALUES (746, '2011/03/12', '66.249.66.84');
INSERT INTO `stats` VALUES (747, '2011/03/13', '208.115.111.69');
INSERT INTO `stats` VALUES (748, '2011/03/13', '95.108.247.252');
INSERT INTO `stats` VALUES (749, '2011/03/13', '207.46.195.227');
INSERT INTO `stats` VALUES (750, '2011/03/14', '208.115.111.69');
INSERT INTO `stats` VALUES (751, '2011/03/14', '65.52.110.19');
INSERT INTO `stats` VALUES (752, '2011/03/14', '95.108.247.252');
INSERT INTO `stats` VALUES (753, '2011/03/14', '65.55.3.175');
INSERT INTO `stats` VALUES (754, '2011/03/14', '82.244.240.127');
INSERT INTO `stats` VALUES (755, '2011/03/14', '66.249.71.200');
INSERT INTO `stats` VALUES (756, '2011/03/15', '95.108.247.252');
INSERT INTO `stats` VALUES (757, '2011/03/15', '41.226.153.122');
INSERT INTO `stats` VALUES (758, '2011/03/15', '208.115.111.69');
INSERT INTO `stats` VALUES (759, '2011/03/15', '66.249.71.200');
INSERT INTO `stats` VALUES (760, '2011/03/15', '67.195.110.189');
INSERT INTO `stats` VALUES (761, '2011/03/16', '208.115.111.69');
INSERT INTO `stats` VALUES (762, '2011/03/16', '67.195.115.168');
INSERT INTO `stats` VALUES (763, '2011/03/16', '66.249.66.238');
INSERT INTO `stats` VALUES (764, '2011/03/16', '67.195.110.189');
INSERT INTO `stats` VALUES (765, '2011/03/16', '121.254.129.90');
INSERT INTO `stats` VALUES (766, '2011/03/16', '93.29.139.101');
INSERT INTO `stats` VALUES (767, '2011/03/16', '66.249.66.84');
INSERT INTO `stats` VALUES (768, '2011/03/16', '207.46.204.178');
INSERT INTO `stats` VALUES (769, '2011/03/17', '95.108.247.252');
INSERT INTO `stats` VALUES (770, '2011/03/17', '208.115.111.69');
INSERT INTO `stats` VALUES (771, '2011/03/17', '200.124.141.149');
INSERT INTO `stats` VALUES (772, '2011/03/18', '208.115.111.69');
INSERT INTO `stats` VALUES (773, '2011/03/18', '67.195.110.189');
INSERT INTO `stats` VALUES (774, '2011/03/18', '196.217.101.155');
INSERT INTO `stats` VALUES (775, '2011/03/18', '88.163.194.192');
INSERT INTO `stats` VALUES (776, '2011/03/18', '212.113.37.105');
INSERT INTO `stats` VALUES (777, '2011/03/18', '89.2.171.57');
INSERT INTO `stats` VALUES (778, '2011/03/19', '212.113.37.105');
INSERT INTO `stats` VALUES (779, '2011/03/19', '208.115.111.69');
INSERT INTO `stats` VALUES (780, '2011/03/19', '86.67.128.108');
INSERT INTO `stats` VALUES (781, '2011/03/19', '65.52.110.56');
INSERT INTO `stats` VALUES (782, '2011/03/19', '90.5.105.138');
INSERT INTO `stats` VALUES (783, '2011/03/20', '41.230.253.13');
INSERT INTO `stats` VALUES (784, '2011/03/20', '208.115.111.69');
INSERT INTO `stats` VALUES (785, '2011/03/20', '67.195.110.189');
INSERT INTO `stats` VALUES (786, '2011/03/20', '66.249.72.72');
INSERT INTO `stats` VALUES (787, '2011/03/21', '208.115.111.69');
INSERT INTO `stats` VALUES (788, '2011/03/21', '92.141.45.192');
INSERT INTO `stats` VALUES (789, '2011/03/22', '208.115.111.69');
INSERT INTO `stats` VALUES (790, '2011/03/22', '92.85.169.178');
INSERT INTO `stats` VALUES (791, '2011/03/22', '91.121.28.208');
INSERT INTO `stats` VALUES (792, '2011/03/22', '92.105.119.223');
INSERT INTO `stats` VALUES (793, '2011/03/23', '208.115.111.69');
INSERT INTO `stats` VALUES (794, '2011/03/23', '67.195.115.168');
INSERT INTO `stats` VALUES (795, '2011/03/23', '67.195.110.189');
INSERT INTO `stats` VALUES (796, '2011/03/23', '109.2.210.34');
INSERT INTO `stats` VALUES (797, '2011/03/23', '65.52.110.38');
INSERT INTO `stats` VALUES (798, '2011/03/23', '66.249.71.98');
INSERT INTO `stats` VALUES (799, '2011/03/23', '208.115.111.73');
INSERT INTO `stats` VALUES (800, '2011/03/24', '208.115.111.69');
INSERT INTO `stats` VALUES (801, '2011/03/24', '67.195.110.189');
INSERT INTO `stats` VALUES (802, '2011/03/24', '218.213.130.202');
INSERT INTO `stats` VALUES (803, '2011/03/24', '88.183.45.131');
INSERT INTO `stats` VALUES (804, '2011/03/25', '208.115.111.69');
INSERT INTO `stats` VALUES (805, '2011/03/25', '66.249.66.238');
INSERT INTO `stats` VALUES (806, '2011/03/25', '67.195.110.189');
INSERT INTO `stats` VALUES (807, '2011/03/25', '93.29.140.141');
INSERT INTO `stats` VALUES (808, '2011/03/25', '66.249.71.98');
INSERT INTO `stats` VALUES (809, '2011/03/26', '208.115.111.69');
INSERT INTO `stats` VALUES (810, '2011/03/26', '80.14.56.136');
INSERT INTO `stats` VALUES (811, '2011/03/26', '208.115.111.73');
INSERT INTO `stats` VALUES (812, '2011/03/26', '66.249.66.84');
INSERT INTO `stats` VALUES (813, '2011/03/26', '212.113.37.105');
INSERT INTO `stats` VALUES (814, '2011/03/26', '88.184.16.38');
INSERT INTO `stats` VALUES (815, '2011/03/26', '69.63.190.251');
INSERT INTO `stats` VALUES (816, '2011/03/26', '66.220.145.249');
INSERT INTO `stats` VALUES (817, '2011/03/26', '65.52.2.153');
INSERT INTO `stats` VALUES (818, '2011/03/27', '208.115.111.69');
INSERT INTO `stats` VALUES (819, '2011/03/27', '93.29.139.101');
INSERT INTO `stats` VALUES (820, '2011/03/27', '65.52.108.14');
INSERT INTO `stats` VALUES (821, '2011/03/27', '207.182.147.34');
INSERT INTO `stats` VALUES (822, '2011/03/27', '65.52.110.90');
INSERT INTO `stats` VALUES (823, '2011/03/27', '72.14.164.153');
INSERT INTO `stats` VALUES (824, '2011/03/27', '72.14.164.168');
INSERT INTO `stats` VALUES (825, '2011/03/27', '72.14.164.156');
INSERT INTO `stats` VALUES (826, '2011/03/27', '72.14.164.170');
INSERT INTO `stats` VALUES (827, '2011/03/27', '72.14.164.130');
INSERT INTO `stats` VALUES (828, '2011/03/27', '72.14.164.190');
INSERT INTO `stats` VALUES (829, '2011/03/27', '193.47.80.47');
INSERT INTO `stats` VALUES (830, '2011/03/27', '208.115.111.73');
INSERT INTO `stats` VALUES (831, '2011/03/28', '208.115.111.69');
INSERT INTO `stats` VALUES (832, '2011/03/28', '208.115.111.73');
INSERT INTO `stats` VALUES (833, '2011/03/28', '90.23.11.168');
INSERT INTO `stats` VALUES (834, '2011/03/29', '212.113.37.105');
INSERT INTO `stats` VALUES (835, '2011/03/29', '208.115.111.69');
INSERT INTO `stats` VALUES (836, '2011/03/29', '208.115.111.73');
INSERT INTO `stats` VALUES (837, '2011/03/29', '65.52.110.28');
INSERT INTO `stats` VALUES (838, '2011/03/30', '67.195.115.224');
INSERT INTO `stats` VALUES (839, '2011/03/30', '67.195.110.186');
INSERT INTO `stats` VALUES (840, '2011/03/30', '66.249.71.49');
INSERT INTO `stats` VALUES (841, '2011/03/30', '66.249.72.58');
INSERT INTO `stats` VALUES (842, '2011/03/30', '207.46.12.241');
INSERT INTO `stats` VALUES (843, '2011/03/31', '208.115.111.69');
INSERT INTO `stats` VALUES (844, '2011/03/31', '67.195.115.224');
INSERT INTO `stats` VALUES (845, '2011/03/31', '207.46.199.43');
INSERT INTO `stats` VALUES (846, '2011/03/31', '91.91.227.119');
INSERT INTO `stats` VALUES (847, '2011/03/31', '65.52.110.69');
INSERT INTO `stats` VALUES (848, '2011/03/31', '208.115.111.73');
INSERT INTO `stats` VALUES (849, '2011/03/31', '67.195.110.186');
INSERT INTO `stats` VALUES (850, '2011/04/01', '67.195.110.186');
INSERT INTO `stats` VALUES (851, '2011/04/01', '208.115.111.69');
INSERT INTO `stats` VALUES (852, '2011/04/01', '65.52.110.50');
INSERT INTO `stats` VALUES (853, '2011/04/01', '212.113.37.105');
INSERT INTO `stats` VALUES (854, '2011/04/01', '66.249.72.203');
INSERT INTO `stats` VALUES (855, '2011/04/01', '208.115.111.73');
INSERT INTO `stats` VALUES (856, '2011/04/01', '66.249.72.135');
INSERT INTO `stats` VALUES (857, '2011/04/02', '208.115.111.69');
INSERT INTO `stats` VALUES (858, '2011/04/02', '67.195.110.186');
INSERT INTO `stats` VALUES (859, '2011/04/02', '207.46.13.52');
INSERT INTO `stats` VALUES (860, '2011/04/03', '207.46.12.241');
INSERT INTO `stats` VALUES (861, '2011/04/03', '65.52.110.53');
INSERT INTO `stats` VALUES (862, '2011/04/03', '208.115.111.69');
INSERT INTO `stats` VALUES (863, '2011/04/03', '207.46.13.93');
INSERT INTO `stats` VALUES (864, '2011/04/03', '207.46.204.235');
INSERT INTO `stats` VALUES (865, '2011/04/04', '207.46.13.140');
INSERT INTO `stats` VALUES (866, '2011/04/04', '207.46.204.178');
INSERT INTO `stats` VALUES (867, '2011/04/04', '208.115.111.69');
INSERT INTO `stats` VALUES (868, '2011/04/04', '95.108.247.252');
INSERT INTO `stats` VALUES (869, '2011/04/04', '93.29.142.27');
INSERT INTO `stats` VALUES (870, '2011/04/04', '208.115.111.73');
INSERT INTO `stats` VALUES (871, '2011/04/05', '208.115.111.69');
INSERT INTO `stats` VALUES (872, '2011/04/05', '66.249.72.203');
INSERT INTO `stats` VALUES (873, '2011/04/05', '207.46.199.45');
INSERT INTO `stats` VALUES (874, '2011/04/05', '67.195.110.186');
INSERT INTO `stats` VALUES (875, '2011/04/05', '208.115.111.73');
INSERT INTO `stats` VALUES (876, '2011/04/05', '86.207.139.6');
INSERT INTO `stats` VALUES (877, '2011/04/05', '65.52.110.65');
INSERT INTO `stats` VALUES (878, '2011/04/06', '208.115.111.69');
INSERT INTO `stats` VALUES (879, '2011/04/06', '67.195.115.224');
INSERT INTO `stats` VALUES (880, '2011/04/06', '208.115.111.73');
INSERT INTO `stats` VALUES (881, '2011/04/06', '67.195.110.186');
INSERT INTO `stats` VALUES (882, '2011/04/06', '93.29.139.101');
INSERT INTO `stats` VALUES (883, '2011/04/07', '208.115.111.69');
INSERT INTO `stats` VALUES (884, '2011/04/07', '92.82.227.221');
INSERT INTO `stats` VALUES (885, '2011/04/07', '66.249.72.58');
INSERT INTO `stats` VALUES (886, '2011/04/07', '65.55.3.175');
INSERT INTO `stats` VALUES (887, '2011/04/07', '207.46.204.242');
INSERT INTO `stats` VALUES (888, '2011/04/07', '208.115.111.73');
INSERT INTO `stats` VALUES (889, '2011/04/07', '65.52.110.81');
INSERT INTO `stats` VALUES (890, '2011/04/07', '67.195.110.186');
INSERT INTO `stats` VALUES (891, '2011/04/07', '65.52.110.89');
INSERT INTO `stats` VALUES (892, '2011/04/07', '207.46.12.239');
INSERT INTO `stats` VALUES (893, '2011/04/07', '66.249.72.133');
INSERT INTO `stats` VALUES (894, '2011/04/07', '93.29.139.101');
INSERT INTO `stats` VALUES (895, '2011/04/07', '83.203.109.196');
INSERT INTO `stats` VALUES (896, '2011/04/07', '212.113.37.105');
INSERT INTO `stats` VALUES (897, '2011/04/08', '208.115.111.69');
INSERT INTO `stats` VALUES (898, '2011/04/08', '67.195.110.186');
INSERT INTO `stats` VALUES (899, '2011/04/08', '207.46.199.47');
INSERT INTO `stats` VALUES (900, '2011/04/08', '202.22.230.97');
INSERT INTO `stats` VALUES (901, '2011/04/08', '65.52.110.33');
INSERT INTO `stats` VALUES (902, '2011/04/08', '208.115.111.73');
INSERT INTO `stats` VALUES (903, '2011/04/09', '208.115.111.69');
INSERT INTO `stats` VALUES (904, '2011/04/09', '65.52.110.78');
INSERT INTO `stats` VALUES (905, '2011/04/09', '208.115.111.73');
INSERT INTO `stats` VALUES (906, '2011/04/09', '212.113.37.105');
INSERT INTO `stats` VALUES (907, '2011/04/10', '207.46.199.45');
INSERT INTO `stats` VALUES (908, '2011/04/10', '208.115.111.73');
INSERT INTO `stats` VALUES (909, '2011/04/10', '207.46.13.148');
INSERT INTO `stats` VALUES (910, '2011/04/10', '208.115.111.69');
INSERT INTO `stats` VALUES (911, '2011/04/11', '207.46.13.53');
INSERT INTO `stats` VALUES (912, '2011/04/11', '65.52.110.49');
INSERT INTO `stats` VALUES (913, '2011/04/11', '208.115.111.69');
INSERT INTO `stats` VALUES (914, '2011/04/11', '208.115.111.73');
INSERT INTO `stats` VALUES (915, '2011/04/11', '66.249.72.133');
INSERT INTO `stats` VALUES (916, '2011/04/11', '66.249.72.58');
INSERT INTO `stats` VALUES (917, '2011/04/12', '208.115.111.69');
INSERT INTO `stats` VALUES (918, '2011/04/12', '65.52.110.29');
INSERT INTO `stats` VALUES (919, '2011/04/12', '88.161.41.148');
INSERT INTO `stats` VALUES (920, '2011/04/12', '208.115.111.73');
INSERT INTO `stats` VALUES (921, '2011/04/12', '66.249.72.58');
INSERT INTO `stats` VALUES (922, '2011/04/12', '70.83.55.243');
INSERT INTO `stats` VALUES (923, '2011/04/13', '66.249.72.58');
INSERT INTO `stats` VALUES (924, '2011/04/13', '74.53.53.242');
INSERT INTO `stats` VALUES (925, '2011/04/13', '189.35.200.232');
INSERT INTO `stats` VALUES (926, '2011/04/13', '208.115.111.69');
INSERT INTO `stats` VALUES (927, '2011/04/13', '67.195.115.23');
INSERT INTO `stats` VALUES (928, '2011/04/13', '66.249.72.133');
INSERT INTO `stats` VALUES (929, '2011/04/13', '208.115.111.73');
INSERT INTO `stats` VALUES (930, '2011/04/13', '67.195.115.183');
INSERT INTO `stats` VALUES (931, '2011/04/13', '65.52.110.30');
INSERT INTO `stats` VALUES (932, '2011/04/14', '66.249.72.133');
INSERT INTO `stats` VALUES (933, '2011/04/14', '208.115.111.73');
INSERT INTO `stats` VALUES (934, '2011/04/14', '208.115.111.69');
INSERT INTO `stats` VALUES (935, '2011/04/14', '67.195.115.183');
INSERT INTO `stats` VALUES (936, '2011/04/14', '82.127.52.81');
INSERT INTO `stats` VALUES (937, '2011/04/14', '66.249.72.58');
INSERT INTO `stats` VALUES (938, '2011/04/15', '207.46.199.37');
INSERT INTO `stats` VALUES (939, '2011/04/15', '66.249.72.133');
INSERT INTO `stats` VALUES (940, '2011/04/15', '208.115.111.69');
INSERT INTO `stats` VALUES (941, '2011/04/15', '208.115.111.73');
INSERT INTO `stats` VALUES (942, '2011/04/15', '66.249.72.58');
INSERT INTO `stats` VALUES (943, '2011/04/15', '67.195.115.183');
INSERT INTO `stats` VALUES (944, '2011/04/15', '93.1.247.169');
INSERT INTO `stats` VALUES (945, '2011/04/15', '65.52.110.88');
INSERT INTO `stats` VALUES (946, '2011/04/15', '2.5.12.49');
INSERT INTO `stats` VALUES (947, '2011/04/15', '207.46.204.186');
INSERT INTO `stats` VALUES (948, '2011/04/15', '178.77.74.155');
INSERT INTO `stats` VALUES (949, '2011/04/15', '207.46.13.134');
INSERT INTO `stats` VALUES (950, '2011/04/16', '95.108.247.252');
INSERT INTO `stats` VALUES (951, '2011/04/16', '207.46.13.90');
INSERT INTO `stats` VALUES (952, '2011/04/16', '208.115.111.69');
INSERT INTO `stats` VALUES (953, '2011/04/16', '65.52.110.64');
INSERT INTO `stats` VALUES (954, '2011/04/16', '65.52.108.12');
INSERT INTO `stats` VALUES (955, '2011/04/16', '207.46.204.231');
INSERT INTO `stats` VALUES (956, '2011/04/16', '208.115.111.73');
INSERT INTO `stats` VALUES (957, '2011/04/16', '212.113.37.105');
INSERT INTO `stats` VALUES (958, '2011/04/16', '65.52.110.40');
INSERT INTO `stats` VALUES (959, '2011/04/17', '208.115.111.73');
INSERT INTO `stats` VALUES (960, '2011/04/17', '65.52.110.24');
INSERT INTO `stats` VALUES (961, '2011/04/17', '66.249.72.58');
INSERT INTO `stats` VALUES (962, '2011/04/17', '67.195.115.183');
INSERT INTO `stats` VALUES (963, '2011/04/17', '208.115.111.69');
INSERT INTO `stats` VALUES (964, '2011/04/17', '95.108.247.252');
INSERT INTO `stats` VALUES (965, '2011/04/17', '66.249.72.133');
INSERT INTO `stats` VALUES (966, '2011/04/17', '65.52.110.43');
INSERT INTO `stats` VALUES (967, '2011/04/17', '207.46.13.93');
INSERT INTO `stats` VALUES (968, '2011/04/18', '67.195.115.183');
INSERT INTO `stats` VALUES (969, '2011/04/18', '208.115.111.69');
INSERT INTO `stats` VALUES (970, '2011/04/18', '208.115.111.73');
INSERT INTO `stats` VALUES (971, '2011/04/18', '207.46.13.51');
INSERT INTO `stats` VALUES (972, '2011/04/18', '92.82.228.135');
INSERT INTO `stats` VALUES (973, '2011/04/18', '65.52.110.43');
INSERT INTO `stats` VALUES (974, '2011/04/19', '208.115.111.69');
INSERT INTO `stats` VALUES (975, '2011/04/19', '92.82.228.135');
INSERT INTO `stats` VALUES (976, '2011/04/19', '66.249.72.58');
INSERT INTO `stats` VALUES (977, '2011/04/19', '82.228.191.35');
INSERT INTO `stats` VALUES (978, '2011/04/19', '208.115.111.73');
INSERT INTO `stats` VALUES (979, '2011/04/20', '208.115.111.69');
INSERT INTO `stats` VALUES (980, '2011/04/20', '67.195.111.49');
INSERT INTO `stats` VALUES (981, '2011/04/20', '208.115.111.73');
INSERT INTO `stats` VALUES (982, '2011/04/20', '67.195.115.183');
INSERT INTO `stats` VALUES (983, '2011/04/20', '207.46.195.230');
INSERT INTO `stats` VALUES (984, '2011/04/20', '66.249.72.58');
INSERT INTO `stats` VALUES (985, '2011/04/21', '66.249.72.58');
INSERT INTO `stats` VALUES (986, '2011/04/21', '66.249.72.133');
INSERT INTO `stats` VALUES (987, '2011/04/21', '208.115.111.73');
INSERT INTO `stats` VALUES (988, '2011/04/21', '208.115.111.69');
INSERT INTO `stats` VALUES (989, '2011/04/22', '208.115.111.69');
INSERT INTO `stats` VALUES (990, '2011/04/22', '208.115.111.73');
INSERT INTO `stats` VALUES (991, '2011/04/22', '174.121.74.226');
INSERT INTO `stats` VALUES (992, '2011/04/22', '212.99.117.5');
INSERT INTO `stats` VALUES (993, '2011/04/22', '207.46.199.38');
INSERT INTO `stats` VALUES (994, '2011/04/23', '208.115.111.69');
INSERT INTO `stats` VALUES (995, '2011/04/23', '66.249.72.133');
INSERT INTO `stats` VALUES (996, '2011/04/23', '65.52.110.93');
INSERT INTO `stats` VALUES (997, '2011/04/23', '207.46.204.193');
INSERT INTO `stats` VALUES (998, '2011/04/23', '193.47.80.47');
INSERT INTO `stats` VALUES (999, '2011/04/23', '207.46.204.195');
INSERT INTO `stats` VALUES (1000, '2011/04/23', '208.115.111.73');
INSERT INTO `stats` VALUES (1001, '2011/04/23', '207.46.13.146');
INSERT INTO `stats` VALUES (1002, '2011/04/24', '208.115.111.73');
INSERT INTO `stats` VALUES (1003, '2011/04/24', '67.195.115.183');
INSERT INTO `stats` VALUES (1004, '2011/04/24', '207.46.13.44');
INSERT INTO `stats` VALUES (1005, '2011/04/24', '207.46.204.240');
INSERT INTO `stats` VALUES (1006, '2011/04/25', '66.249.72.133');
INSERT INTO `stats` VALUES (1007, '2011/04/25', '208.115.111.73');
INSERT INTO `stats` VALUES (1008, '2011/04/25', '207.46.204.179');
INSERT INTO `stats` VALUES (1009, '2011/04/26', '188.40.42.56');
INSERT INTO `stats` VALUES (1010, '2011/04/26', '66.249.72.133');
INSERT INTO `stats` VALUES (1011, '2011/04/26', '208.115.111.73');
INSERT INTO `stats` VALUES (1012, '2011/04/26', '207.46.204.238');
INSERT INTO `stats` VALUES (1013, '2011/04/26', '88.198.23.23');
INSERT INTO `stats` VALUES (1014, '2011/04/27', '67.195.111.49');
INSERT INTO `stats` VALUES (1015, '2011/04/27', '208.115.111.73');
INSERT INTO `stats` VALUES (1016, '2011/04/27', '67.195.115.183');
INSERT INTO `stats` VALUES (1017, '2011/04/27', '207.46.199.46');
INSERT INTO `stats` VALUES (1018, '2011/04/27', '65.52.110.68');
INSERT INTO `stats` VALUES (1019, '2011/04/27', '193.47.80.47');
INSERT INTO `stats` VALUES (1020, '2011/04/28', '208.115.111.73');
INSERT INTO `stats` VALUES (1021, '2011/04/28', '41.189.32.11');
INSERT INTO `stats` VALUES (1022, '2011/04/28', '93.29.139.101');
INSERT INTO `stats` VALUES (1023, '2011/04/29', '66.249.72.130');
INSERT INTO `stats` VALUES (1024, '2011/04/29', '65.55.3.175');
INSERT INTO `stats` VALUES (1025, '2011/04/30', '207.46.199.42');
INSERT INTO `stats` VALUES (1026, '2011/04/30', '66.249.72.130');
INSERT INTO `stats` VALUES (1027, '2011/04/30', '193.253.141.65');
INSERT INTO `stats` VALUES (1028, '2011/04/30', '80.9.232.68');
INSERT INTO `stats` VALUES (1029, '2011/05/01', '67.195.115.183');
INSERT INTO `stats` VALUES (1030, '2011/05/01', '78.247.92.86');
INSERT INTO `stats` VALUES (1031, '2011/05/02', '207.46.204.236');
INSERT INTO `stats` VALUES (1032, '2011/05/02', '67.195.115.183');
INSERT INTO `stats` VALUES (1033, '2011/05/02', '66.249.72.58');
INSERT INTO `stats` VALUES (1034, '2011/05/02', '93.29.139.101');
INSERT INTO `stats` VALUES (1035, '2011/05/02', '69.63.190.248');
INSERT INTO `stats` VALUES (1036, '2011/05/02', '92.148.152.134');
INSERT INTO `stats` VALUES (1037, '2011/05/03', '207.46.13.45');
INSERT INTO `stats` VALUES (1038, '2011/05/03', '207.46.195.225');
INSERT INTO `stats` VALUES (1039, '2011/05/03', '157.55.17.104');
INSERT INTO `stats` VALUES (1040, '2011/05/03', '66.249.72.58');
INSERT INTO `stats` VALUES (1041, '2011/05/03', '193.47.80.47');
INSERT INTO `stats` VALUES (1042, '2011/05/03', '207.46.13.54');
INSERT INTO `stats` VALUES (1043, '2011/05/03', '80.11.110.191');
INSERT INTO `stats` VALUES (1044, '2011/05/03', '90.9.71.59');
INSERT INTO `stats` VALUES (1045, '2011/05/03', '207.46.13.51');
INSERT INTO `stats` VALUES (1046, '2011/05/04', '67.195.111.49');
INSERT INTO `stats` VALUES (1047, '2011/05/04', '66.249.66.46');
INSERT INTO `stats` VALUES (1048, '2011/05/04', '65.55.3.175');
INSERT INTO `stats` VALUES (1049, '2011/05/04', '67.195.115.183');
INSERT INTO `stats` VALUES (1050, '2011/05/04', '79.83.70.244');
INSERT INTO `stats` VALUES (1051, '2011/05/04', '65.52.110.33');
INSERT INTO `stats` VALUES (1052, '2011/05/04', '207.46.13.84');
INSERT INTO `stats` VALUES (1053, '2011/05/05', '207.46.199.42');
INSERT INTO `stats` VALUES (1054, '2011/05/05', '66.249.66.57');
INSERT INTO `stats` VALUES (1055, '2011/05/05', '88.162.97.241');
INSERT INTO `stats` VALUES (1056, '2011/05/05', '93.29.139.101');
INSERT INTO `stats` VALUES (1057, '2011/05/05', '207.46.13.53');
INSERT INTO `stats` VALUES (1058, '2011/05/05', '88.161.142.106');
INSERT INTO `stats` VALUES (1059, '2011/05/06', '207.46.204.240');
INSERT INTO `stats` VALUES (1060, '2011/05/06', '81.200.176.17');
INSERT INTO `stats` VALUES (1061, '2011/05/06', '207.46.13.143');
INSERT INTO `stats` VALUES (1062, '2011/05/06', '207.46.195.229');
INSERT INTO `stats` VALUES (1063, '2011/05/06', '84.102.148.188');
INSERT INTO `stats` VALUES (1064, '2011/05/06', '207.46.13.136');
INSERT INTO `stats` VALUES (1065, '2011/05/06', '207.46.12.241');
INSERT INTO `stats` VALUES (1066, '2011/05/07', '78.237.142.21');
INSERT INTO `stats` VALUES (1067, '2011/05/07', '89.123.40.114');
INSERT INTO `stats` VALUES (1068, '2011/05/08', '67.195.115.183');
INSERT INTO `stats` VALUES (1069, '2011/05/08', '66.249.66.52');
INSERT INTO `stats` VALUES (1070, '2011/05/08', '65.52.110.91');
INSERT INTO `stats` VALUES (1071, '2011/05/08', '65.52.110.38');
INSERT INTO `stats` VALUES (1072, '2011/05/08', '193.47.80.43');
INSERT INTO `stats` VALUES (1073, '2011/05/09', '41.226.144.26');
INSERT INTO `stats` VALUES (1074, '2011/05/09', '67.195.115.183');
INSERT INTO `stats` VALUES (1075, '2011/05/09', '93.29.139.101');
INSERT INTO `stats` VALUES (1076, '2011/05/09', '128.30.52.65');
INSERT INTO `stats` VALUES (1077, '2011/05/09', '91.121.28.208');
INSERT INTO `stats` VALUES (1078, '2011/05/10', '207.46.12.239');
INSERT INTO `stats` VALUES (1079, '2011/05/10', '66.249.71.43');
INSERT INTO `stats` VALUES (1080, '2011/05/10', '81.80.208.137');
INSERT INTO `stats` VALUES (1081, '2011/05/11', '67.195.111.49');
INSERT INTO `stats` VALUES (1082, '2011/05/11', '207.46.12.115');
INSERT INTO `stats` VALUES (1083, '2011/05/11', '78.237.142.21');
INSERT INTO `stats` VALUES (1084, '2011/05/11', '67.195.115.183');
INSERT INTO `stats` VALUES (1085, '2011/05/11', '93.29.139.101');
INSERT INTO `stats` VALUES (1086, '2011/05/11', '207.46.13.146');
INSERT INTO `stats` VALUES (1087, '2011/05/11', '65.52.110.83');
INSERT INTO `stats` VALUES (1088, '2011/05/12', '208.115.111.73');
INSERT INTO `stats` VALUES (1089, '2011/05/12', '208.115.111.245');
INSERT INTO `stats` VALUES (1090, '2011/05/12', '208.115.111.69');
INSERT INTO `stats` VALUES (1091, '2011/05/12', '88.162.97.241');
INSERT INTO `stats` VALUES (1092, '2011/05/13', '208.115.111.69');
INSERT INTO `stats` VALUES (1093, '2011/05/13', '208.115.111.73');
INSERT INTO `stats` VALUES (1094, '2011/05/13', '93.29.140.69');
INSERT INTO `stats` VALUES (1095, '2011/05/14', '208.115.111.69');
INSERT INTO `stats` VALUES (1096, '2011/05/14', '208.115.111.73');
INSERT INTO `stats` VALUES (1097, '2011/05/14', '65.52.110.72');
INSERT INTO `stats` VALUES (1098, '2011/05/15', '208.115.111.69');
INSERT INTO `stats` VALUES (1099, '2011/05/15', '208.115.111.73');
INSERT INTO `stats` VALUES (1100, '2011/05/15', '67.195.115.183');
INSERT INTO `stats` VALUES (1101, '2011/05/15', '207.46.195.228');
INSERT INTO `stats` VALUES (1102, '2011/05/15', '213.132.255.67');
INSERT INTO `stats` VALUES (1103, '2011/05/15', '93.29.140.69');
INSERT INTO `stats` VALUES (1104, '2011/05/15', '128.30.52.65');
INSERT INTO `stats` VALUES (1105, '2011/05/15', '128.30.52.71');
INSERT INTO `stats` VALUES (1106, '2011/05/15', '128.30.52.70');
INSERT INTO `stats` VALUES (1107, '2011/05/15', '128.30.52.73');
INSERT INTO `stats` VALUES (1108, '2011/05/15', '128.30.52.165');
INSERT INTO `stats` VALUES (1109, '2011/05/16', '208.115.111.69');
INSERT INTO `stats` VALUES (1110, '2011/05/16', '207.46.13.87');
INSERT INTO `stats` VALUES (1111, '2011/05/16', '67.195.115.183');
INSERT INTO `stats` VALUES (1112, '2011/05/16', '95.108.247.252');
INSERT INTO `stats` VALUES (1113, '2011/05/16', '93.29.140.69');
INSERT INTO `stats` VALUES (1114, '2011/05/16', '78.237.142.21');
INSERT INTO `stats` VALUES (1115, '2011/05/16', '192.168.1.57');
INSERT INTO `stats` VALUES (1116, '2011/05/16', '197.128.90.189');
INSERT INTO `stats` VALUES (1117, '2011/05/16', '157.55.38.205');
INSERT INTO `stats` VALUES (1118, '2011/05/17', '208.115.111.69');
INSERT INTO `stats` VALUES (1119, '2011/05/17', '208.115.111.73');
INSERT INTO `stats` VALUES (1120, '2011/05/17', '78.237.142.21');
INSERT INTO `stats` VALUES (1121, '2011/05/17', '67.195.115.183');
INSERT INTO `stats` VALUES (1122, '2011/05/17', '192.168.1.14');
INSERT INTO `stats` VALUES (1123, '2011/05/17', '93.29.140.69');
INSERT INTO `stats` VALUES (1124, '2011/05/18', '208.115.111.69');
INSERT INTO `stats` VALUES (1125, '2011/05/18', '208.115.111.73');
INSERT INTO `stats` VALUES (1126, '2011/05/18', '90.42.50.11');
INSERT INTO `stats` VALUES (1127, '2011/05/18', '67.195.115.183');
INSERT INTO `stats` VALUES (1128, '2011/05/18', '80.14.56.136');
INSERT INTO `stats` VALUES (1129, '2011/05/19', '208.115.111.73');
INSERT INTO `stats` VALUES (1130, '2011/05/19', '66.249.66.57');
INSERT INTO `stats` VALUES (1131, '2011/05/19', '208.115.111.69');
INSERT INTO `stats` VALUES (1132, '2011/05/19', '93.29.140.69');
INSERT INTO `stats` VALUES (1133, '2011/05/19', '85.69.226.239');
INSERT INTO `stats` VALUES (1134, '2011/05/19', '66.249.66.52');
INSERT INTO `stats` VALUES (1135, '2011/05/20', '208.115.111.69');
INSERT INTO `stats` VALUES (1136, '2011/05/20', '208.115.111.73');
INSERT INTO `stats` VALUES (1137, '2011/05/20', '67.195.111.49');
INSERT INTO `stats` VALUES (1138, '2011/05/20', '93.29.140.69');
INSERT INTO `stats` VALUES (1139, '2011/05/20', '85.4.219.145');
INSERT INTO `stats` VALUES (1140, '2011/05/20', '207.46.204.187');
INSERT INTO `stats` VALUES (1141, '2011/05/21', '208.115.111.69');
INSERT INTO `stats` VALUES (1142, '2011/05/21', '208.115.111.73');
INSERT INTO `stats` VALUES (1143, '2011/05/21', '207.46.199.47');
INSERT INTO `stats` VALUES (1144, '2011/05/21', '66.249.66.52');
INSERT INTO `stats` VALUES (1145, '2011/05/21', '193.47.80.43');
INSERT INTO `stats` VALUES (1146, '2011/05/21', '157.55.16.231');
INSERT INTO `stats` VALUES (1147, '2011/05/22', '208.115.111.69');
INSERT INTO `stats` VALUES (1148, '2011/05/22', '208.115.111.73');
INSERT INTO `stats` VALUES (1149, '2011/05/22', '67.195.115.183');
INSERT INTO `stats` VALUES (1150, '2011/05/22', '65.52.110.48');
INSERT INTO `stats` VALUES (1151, '2011/05/23', '208.115.111.69');
INSERT INTO `stats` VALUES (1152, '2011/05/23', '208.115.111.73');
INSERT INTO `stats` VALUES (1153, '2011/05/23', '66.249.66.174');
INSERT INTO `stats` VALUES (1154, '2011/05/23', '196.206.68.74');
INSERT INTO `stats` VALUES (1155, '2011/05/23', '207.46.204.161');
INSERT INTO `stats` VALUES (1156, '2011/05/23', '65.52.110.46');
INSERT INTO `stats` VALUES (1157, '2011/05/23', '67.195.115.183');
INSERT INTO `stats` VALUES (1158, '2011/05/23', '207.46.195.232');
INSERT INTO `stats` VALUES (1159, '2011/05/23', '65.52.110.33');
INSERT INTO `stats` VALUES (1160, '2011/05/23', '193.47.80.47');
INSERT INTO `stats` VALUES (1161, '2011/05/23', '207.46.12.204');
INSERT INTO `stats` VALUES (1162, '2011/05/23', '207.46.12.16');
INSERT INTO `stats` VALUES (1163, '2011/05/23', '207.46.195.205');
INSERT INTO `stats` VALUES (1164, '2011/05/23', '207.46.199.22');
INSERT INTO `stats` VALUES (1165, '2011/05/23', '157.55.112.235');
INSERT INTO `stats` VALUES (1166, '2011/05/24', '207.46.12.123');
INSERT INTO `stats` VALUES (1167, '2011/05/24', '208.115.111.69');
INSERT INTO `stats` VALUES (1168, '2011/05/24', '193.47.80.47');
INSERT INTO `stats` VALUES (1169, '2011/05/24', '66.249.66.174');
INSERT INTO `stats` VALUES (1170, '2011/05/24', '157.55.17.84');
INSERT INTO `stats` VALUES (1171, '2011/05/24', '208.115.111.73');
INSERT INTO `stats` VALUES (1172, '2011/05/24', '207.46.195.206');
INSERT INTO `stats` VALUES (1173, '2011/05/24', '82.226.135.194');
INSERT INTO `stats` VALUES (1174, '2011/05/24', '193.47.80.43');
INSERT INTO `stats` VALUES (1175, '2011/05/24', '93.29.140.69');
INSERT INTO `stats` VALUES (1176, '2011/05/24', '92.136.208.118');
INSERT INTO `stats` VALUES (1177, '2011/05/24', '157.55.112.218');
INSERT INTO `stats` VALUES (1178, '2011/05/25', '66.249.66.110');
INSERT INTO `stats` VALUES (1179, '2011/05/25', '66.249.71.75');
INSERT INTO `stats` VALUES (1180, '2011/05/25', '208.115.111.73');
INSERT INTO `stats` VALUES (1181, '2011/05/25', '208.115.111.69');
INSERT INTO `stats` VALUES (1182, '2011/05/25', '217.128.22.167');
INSERT INTO `stats` VALUES (1183, '2011/05/25', '89.156.60.163');
INSERT INTO `stats` VALUES (1184, '2011/05/25', '77.205.24.225');
INSERT INTO `stats` VALUES (1185, '2011/05/25', '207.46.204.229');
INSERT INTO `stats` VALUES (1186, '2011/05/26', '208.115.111.73');
INSERT INTO `stats` VALUES (1187, '2011/05/26', '208.115.111.69');
INSERT INTO `stats` VALUES (1188, '2011/05/26', '217.128.22.167');
INSERT INTO `stats` VALUES (1189, '2011/05/26', '80.14.56.136');
INSERT INTO `stats` VALUES (1190, '2011/05/27', '208.115.111.69');
INSERT INTO `stats` VALUES (1191, '2011/05/27', '208.115.111.73');
INSERT INTO `stats` VALUES (1192, '2011/05/27', '41.203.226.84');
INSERT INTO `stats` VALUES (1193, '2011/05/27', '92.134.54.176');
INSERT INTO `stats` VALUES (1194, '2011/05/28', '208.115.111.69');
INSERT INTO `stats` VALUES (1195, '2011/05/28', '208.115.111.73');
INSERT INTO `stats` VALUES (1196, '2011/05/28', '193.47.80.47');
INSERT INTO `stats` VALUES (1197, '2011/05/28', '95.108.151.244');
INSERT INTO `stats` VALUES (1198, '2011/05/28', '89.123.19.195');
INSERT INTO `stats` VALUES (1199, '2011/05/29', '208.115.111.69');
INSERT INTO `stats` VALUES (1200, '2011/05/29', '218.213.134.67');
INSERT INTO `stats` VALUES (1201, '2011/05/29', '89.123.7.162');
INSERT INTO `stats` VALUES (1202, '2011/05/29', '208.115.111.73');
INSERT INTO `stats` VALUES (1203, '2011/05/29', '67.195.115.183');
INSERT INTO `stats` VALUES (1204, '2011/05/29', '66.249.66.52');
INSERT INTO `stats` VALUES (1205, '2011/05/30', '208.115.111.69');
INSERT INTO `stats` VALUES (1206, '2011/05/30', '208.115.111.73');
INSERT INTO `stats` VALUES (1207, '2011/05/30', '67.195.115.183');
INSERT INTO `stats` VALUES (1208, '2011/05/30', '93.29.142.167');
INSERT INTO `stats` VALUES (1209, '2011/05/30', '66.249.71.37');
INSERT INTO `stats` VALUES (1210, '2011/05/31', '208.115.111.69');
INSERT INTO `stats` VALUES (1211, '2011/05/31', '66.249.66.151');
INSERT INTO `stats` VALUES (1212, '2011/05/31', '208.115.111.73');
INSERT INTO `stats` VALUES (1213, '2011/05/31', '90.2.161.103');
INSERT INTO `stats` VALUES (1214, '2011/05/31', '207.46.199.55');
INSERT INTO `stats` VALUES (1215, '2011/05/31', '78.237.142.21');
INSERT INTO `stats` VALUES (1216, '2011/05/31', '188.165.98.86');
INSERT INTO `stats` VALUES (1217, '2011/06/01', '208.115.111.69');
INSERT INTO `stats` VALUES (1218, '2011/06/01', '208.115.111.73');
INSERT INTO `stats` VALUES (1219, '2011/06/01', '67.195.115.92');
INSERT INTO `stats` VALUES (1220, '2011/06/01', '66.249.66.151');
INSERT INTO `stats` VALUES (1221, '2011/06/02', '208.115.111.69');
INSERT INTO `stats` VALUES (1222, '2011/06/02', '208.115.111.73');
INSERT INTO `stats` VALUES (1223, '2011/06/02', '66.249.66.52');
INSERT INTO `stats` VALUES (1224, '2011/06/03', '208.115.111.69');
INSERT INTO `stats` VALUES (1225, '2011/06/03', '208.115.111.73');
INSERT INTO `stats` VALUES (1226, '2011/06/03', '46.163.73.178');
INSERT INTO `stats` VALUES (1227, '2011/06/03', '46.163.73.176');
INSERT INTO `stats` VALUES (1228, '2011/06/04', '208.115.111.69');
INSERT INTO `stats` VALUES (1229, '2011/06/04', '66.249.66.52');
INSERT INTO `stats` VALUES (1230, '2011/06/04', '208.115.111.73');
INSERT INTO `stats` VALUES (1231, '2011/06/04', '95.108.247.252');
INSERT INTO `stats` VALUES (1232, '2011/06/04', '67.195.115.92');
INSERT INTO `stats` VALUES (1233, '2011/06/05', '208.115.111.69');
INSERT INTO `stats` VALUES (1234, '2011/06/05', '208.115.111.73');
INSERT INTO `stats` VALUES (1235, '2011/06/05', '65.52.110.87');
INSERT INTO `stats` VALUES (1236, '2011/06/05', '67.195.37.187');
INSERT INTO `stats` VALUES (1237, '2011/06/05', '95.108.247.252');
INSERT INTO `stats` VALUES (1238, '2011/06/06', '208.115.111.69');
INSERT INTO `stats` VALUES (1239, '2011/06/06', '208.115.111.73');
INSERT INTO `stats` VALUES (1240, '2011/06/06', '95.108.247.252');
INSERT INTO `stats` VALUES (1241, '2011/06/06', '67.195.37.187');
INSERT INTO `stats` VALUES (1242, '2011/06/06', '88.168.130.15');
INSERT INTO `stats` VALUES (1243, '2011/06/06', '93.29.139.122');
INSERT INTO `stats` VALUES (1244, '2011/06/06', '90.25.190.85');
INSERT INTO `stats` VALUES (1245, '2011/06/06', '90.60.3.154');
INSERT INTO `stats` VALUES (1246, '2011/06/07', '208.115.111.69');
INSERT INTO `stats` VALUES (1247, '2011/06/07', '208.115.111.73');
INSERT INTO `stats` VALUES (1248, '2011/06/07', '207.46.195.236');
INSERT INTO `stats` VALUES (1249, '2011/06/07', '92.154.114.82');
INSERT INTO `stats` VALUES (1250, '2011/06/07', '207.46.12.241');
INSERT INTO `stats` VALUES (1251, '2011/06/07', '195.42.102.25');
INSERT INTO `stats` VALUES (1252, '2011/06/08', '66.249.66.52');
INSERT INTO `stats` VALUES (1253, '2011/06/08', '208.115.111.73');
INSERT INTO `stats` VALUES (1254, '2011/06/08', '208.115.111.69');
INSERT INTO `stats` VALUES (1255, '2011/06/08', '95.108.247.252');
INSERT INTO `stats` VALUES (1256, '2011/06/08', '93.29.139.122');
INSERT INTO `stats` VALUES (1257, '2011/06/08', '65.52.108.12');
INSERT INTO `stats` VALUES (1258, '2011/06/09', '193.47.80.43');
INSERT INTO `stats` VALUES (1259, '2011/06/09', '208.115.111.73');
INSERT INTO `stats` VALUES (1260, '2011/06/09', '95.108.247.252');
INSERT INTO `stats` VALUES (1261, '2011/06/09', '208.115.111.69');
INSERT INTO `stats` VALUES (1262, '2011/06/09', '66.249.66.52');
INSERT INTO `stats` VALUES (1263, '2011/06/09', '212.113.37.105');
INSERT INTO `stats` VALUES (1264, '2011/06/09', '207.46.195.223');
INSERT INTO `stats` VALUES (1265, '2011/06/10', '208.115.111.69');
INSERT INTO `stats` VALUES (1266, '2011/06/10', '208.115.111.73');
INSERT INTO `stats` VALUES (1267, '2011/06/10', '66.249.66.14');
INSERT INTO `stats` VALUES (1268, '2011/06/11', '208.115.111.73');
INSERT INTO `stats` VALUES (1269, '2011/06/11', '66.249.72.121');
INSERT INTO `stats` VALUES (1270, '2011/06/11', '89.123.2.14');
INSERT INTO `stats` VALUES (1271, '2011/06/11', '208.115.111.69');
INSERT INTO `stats` VALUES (1272, '2011/06/11', '65.52.110.22');
INSERT INTO `stats` VALUES (1273, '2011/06/11', '67.195.112.181');
INSERT INTO `stats` VALUES (1274, '2011/06/11', '66.249.66.14');
INSERT INTO `stats` VALUES (1275, '2011/06/12', '212.113.37.105');
INSERT INTO `stats` VALUES (1276, '2011/06/12', '95.108.247.252');
INSERT INTO `stats` VALUES (1277, '2011/06/12', '208.115.111.73');
INSERT INTO `stats` VALUES (1278, '2011/06/12', '65.52.110.74');
INSERT INTO `stats` VALUES (1279, '2011/06/12', '67.195.114.54');
INSERT INTO `stats` VALUES (1280, '2011/06/12', '208.115.111.69');
INSERT INTO `stats` VALUES (1281, '2011/06/13', '67.195.114.54');
INSERT INTO `stats` VALUES (1282, '2011/06/13', '66.249.66.87');
INSERT INTO `stats` VALUES (1283, '2011/06/13', '207.46.204.234');
INSERT INTO `stats` VALUES (1284, '2011/06/13', '93.29.139.122');
INSERT INTO `stats` VALUES (1285, '2011/06/14', '66.249.66.52');
INSERT INTO `stats` VALUES (1286, '2011/06/14', '66.249.66.87');
INSERT INTO `stats` VALUES (1287, '2011/06/15', '192.168.1.28');
INSERT INTO `stats` VALUES (1288, '2011/06/15', '67.195.114.54');
INSERT INTO `stats` VALUES (1289, '2011/06/16', '93.29.139.122');
INSERT INTO `stats` VALUES (1290, '2011/06/16', '65.52.110.68');
INSERT INTO `stats` VALUES (1291, '2011/06/16', '67.195.114.54');
INSERT INTO `stats` VALUES (1292, '2011/06/17', '195.42.102.21');
INSERT INTO `stats` VALUES (1293, '2011/06/17', '194.206.244.2');
INSERT INTO `stats` VALUES (1294, '2011/06/17', '65.52.110.22');
INSERT INTO `stats` VALUES (1295, '2011/06/17', '41.229.137.120');
INSERT INTO `stats` VALUES (1296, '2011/06/17', '207.46.199.39');
INSERT INTO `stats` VALUES (1297, '2011/06/18', '218.213.134.67');
INSERT INTO `stats` VALUES (1298, '2011/06/19', '67.195.114.54');
INSERT INTO `stats` VALUES (1299, '2011/06/19', '67.195.112.181');
INSERT INTO `stats` VALUES (1300, '2011/06/19', '93.29.139.122');
INSERT INTO `stats` VALUES (1301, '2011/06/19', '66.249.66.37');
INSERT INTO `stats` VALUES (1302, '2011/06/19', '193.47.80.43');
INSERT INTO `stats` VALUES (1303, '2011/06/20', '67.195.114.54');
INSERT INTO `stats` VALUES (1304, '2011/06/20', '207.46.204.196');
INSERT INTO `stats` VALUES (1305, '2011/06/21', '88.183.51.150');
INSERT INTO `stats` VALUES (1306, '2011/06/21', '78.116.183.160');
INSERT INTO `stats` VALUES (1307, '2011/06/21', '66.249.66.75');
INSERT INTO `stats` VALUES (1308, '2011/06/21', '66.249.66.14');
INSERT INTO `stats` VALUES (1309, '2011/06/22', '95.108.247.252');
INSERT INTO `stats` VALUES (1310, '2011/06/23', '212.113.37.105');
INSERT INTO `stats` VALUES (1311, '2011/06/23', '65.52.110.17');
INSERT INTO `stats` VALUES (1312, '2011/06/23', '207.46.13.101');
INSERT INTO `stats` VALUES (1313, '2011/06/24', '207.46.13.85');
INSERT INTO `stats` VALUES (1314, '2011/06/24', '62.201.142.23');
INSERT INTO `stats` VALUES (1315, '2011/06/24', '2.4.183.245');
INSERT INTO `stats` VALUES (1316, '2011/06/25', '66.249.66.46');
INSERT INTO `stats` VALUES (1317, '2011/06/25', '207.46.204.243');
INSERT INTO `stats` VALUES (1318, '2011/06/25', '195.113.214.210');
INSERT INTO `stats` VALUES (1319, '2011/06/25', '77.193.17.118');
INSERT INTO `stats` VALUES (1320, '2011/06/25', '66.249.66.75');
INSERT INTO `stats` VALUES (1321, '2011/06/26', '207.46.204.177');
INSERT INTO `stats` VALUES (1322, '2011/06/26', '67.195.114.54');
INSERT INTO `stats` VALUES (1323, '2011/06/26', '82.66.38.121');
INSERT INTO `stats` VALUES (1324, '2011/06/26', '41.102.249.44');
INSERT INTO `stats` VALUES (1325, '2011/06/28', '207.46.13.84');
INSERT INTO `stats` VALUES (1326, '2011/06/28', '207.46.194.94');
INSERT INTO `stats` VALUES (1327, '2011/06/28', '95.108.151.244');
INSERT INTO `stats` VALUES (1328, '2011/06/28', '67.195.114.54');
INSERT INTO `stats` VALUES (1329, '2011/06/28', '93.29.139.60');
INSERT INTO `stats` VALUES (1330, '2011/06/28', '207.46.195.226');
INSERT INTO `stats` VALUES (1331, '2011/06/28', '86.209.169.38');
INSERT INTO `stats` VALUES (1332, '2011/06/29', '207.46.13.131');
INSERT INTO `stats` VALUES (1333, '2011/06/29', '67.195.114.54');
INSERT INTO `stats` VALUES (1334, '2011/06/29', '66.249.66.75');
INSERT INTO `stats` VALUES (1335, '2011/06/30', '90.44.180.154');
INSERT INTO `stats` VALUES (1336, '2011/06/30', '85.17.171.225');
INSERT INTO `stats` VALUES (1337, '2011/06/30', '207.46.199.216');
INSERT INTO `stats` VALUES (1338, '2011/06/30', '65.52.110.55');
INSERT INTO `stats` VALUES (1339, '2011/06/30', '207.46.199.214');
INSERT INTO `stats` VALUES (1340, '2011/06/30', '67.195.112.181');
INSERT INTO `stats` VALUES (1341, '2011/06/30', '193.47.80.43');
INSERT INTO `stats` VALUES (1342, '2011/06/30', '207.46.204.130');
INSERT INTO `stats` VALUES (1343, '2011/07/01', '207.46.194.39');
INSERT INTO `stats` VALUES (1344, '2011/07/01', '86.219.179.3');
INSERT INTO `stats` VALUES (1345, '2011/07/01', '66.249.66.46');
INSERT INTO `stats` VALUES (1346, '2011/07/01', '66.249.66.75');
INSERT INTO `stats` VALUES (1347, '2011/07/03', '207.46.195.239');
INSERT INTO `stats` VALUES (1348, '2011/07/03', '67.195.114.54');
INSERT INTO `stats` VALUES (1349, '2011/07/03', '193.47.80.43');
INSERT INTO `stats` VALUES (1350, '2011/07/03', '212.113.37.105');
INSERT INTO `stats` VALUES (1351, '2011/07/03', '66.249.72.116');
INSERT INTO `stats` VALUES (1352, '2011/07/03', '65.52.110.56');
INSERT INTO `stats` VALUES (1353, '2011/07/04', '66.249.72.52');
INSERT INTO `stats` VALUES (1354, '2011/07/04', '207.46.204.229');
INSERT INTO `stats` VALUES (1355, '2011/07/04', '109.209.106.71');
INSERT INTO `stats` VALUES (1356, '2011/07/04', '67.195.114.54');
INSERT INTO `stats` VALUES (1357, '2011/07/05', '95.108.247.252');
INSERT INTO `stats` VALUES (1358, '2011/07/05', '208.115.111.245');
INSERT INTO `stats` VALUES (1359, '2011/07/05', '67.195.111.185');
INSERT INTO `stats` VALUES (1360, '2011/07/05', '66.249.72.116');
INSERT INTO `stats` VALUES (1361, '2011/07/06', '212.113.37.105');
INSERT INTO `stats` VALUES (1362, '2011/07/06', '197.28.167.95');
INSERT INTO `stats` VALUES (1363, '2011/07/06', '85.17.171.225');
INSERT INTO `stats` VALUES (1364, '2011/07/06', '41.248.224.20');
INSERT INTO `stats` VALUES (1365, '2011/07/06', '95.108.247.252');
INSERT INTO `stats` VALUES (1366, '2011/07/06', '93.29.138.79');
INSERT INTO `stats` VALUES (1367, '2011/07/06', '92.153.3.252');
INSERT INTO `stats` VALUES (1368, '2011/07/06', '109.209.106.71');
INSERT INTO `stats` VALUES (1369, '2011/07/07', '65.52.110.69');
INSERT INTO `stats` VALUES (1370, '2011/07/07', '78.192.118.245');
INSERT INTO `stats` VALUES (1371, '2011/07/07', '67.195.111.185');
INSERT INTO `stats` VALUES (1372, '2011/07/07', '95.108.247.252');
INSERT INTO `stats` VALUES (1373, '2011/07/07', '208.115.111.73');
INSERT INTO `stats` VALUES (1374, '2011/07/07', '208.115.111.69');
INSERT INTO `stats` VALUES (1375, '2011/07/08', '208.115.111.73');
INSERT INTO `stats` VALUES (1376, '2011/07/08', '95.108.247.252');
INSERT INTO `stats` VALUES (1377, '2011/07/08', '208.115.111.69');
INSERT INTO `stats` VALUES (1378, '2011/07/08', '65.52.110.86');
INSERT INTO `stats` VALUES (1379, '2011/07/08', '189.15.16.114');
INSERT INTO `stats` VALUES (1380, '2011/07/08', '82.247.9.224');
INSERT INTO `stats` VALUES (1381, '2011/07/08', '70.82.33.38');
INSERT INTO `stats` VALUES (1382, '2011/07/08', '85.17.171.225');
INSERT INTO `stats` VALUES (1383, '2011/07/08', '41.214.206.117');
INSERT INTO `stats` VALUES (1384, '2011/07/09', '85.17.171.225');
INSERT INTO `stats` VALUES (1385, '2011/07/09', '208.115.111.73');
INSERT INTO `stats` VALUES (1386, '2011/07/09', '208.115.111.69');
INSERT INTO `stats` VALUES (1387, '2011/07/09', '95.108.247.252');
INSERT INTO `stats` VALUES (1388, '2011/07/09', '207.46.204.188');
INSERT INTO `stats` VALUES (1389, '2011/07/09', '83.101.48.142');
INSERT INTO `stats` VALUES (1390, '2011/07/10', '65.52.110.65');
INSERT INTO `stats` VALUES (1391, '2011/07/10', '66.249.72.116');
INSERT INTO `stats` VALUES (1392, '2011/07/10', '208.115.111.73');
INSERT INTO `stats` VALUES (1393, '2011/07/10', '208.115.111.69');
INSERT INTO `stats` VALUES (1394, '2011/07/10', '65.52.110.68');
INSERT INTO `stats` VALUES (1395, '2011/07/10', '67.195.114.54');
INSERT INTO `stats` VALUES (1396, '2011/07/10', '95.108.247.252');
INSERT INTO `stats` VALUES (1397, '2011/07/10', '88.189.74.23');
INSERT INTO `stats` VALUES (1398, '2011/07/10', '41.248.214.142');
INSERT INTO `stats` VALUES (1399, '2011/07/11', '208.115.111.69');
INSERT INTO `stats` VALUES (1400, '2011/07/11', '67.195.114.54');
INSERT INTO `stats` VALUES (1401, '2011/07/11', '208.115.111.73');
INSERT INTO `stats` VALUES (1402, '2011/07/11', '207.46.204.231');
INSERT INTO `stats` VALUES (1403, '2011/07/11', '82.225.250.90');
INSERT INTO `stats` VALUES (1404, '2011/07/11', '66.249.72.116');
INSERT INTO `stats` VALUES (1405, '2011/07/12', '208.115.111.69');
INSERT INTO `stats` VALUES (1406, '2011/07/12', '208.115.111.73');
INSERT INTO `stats` VALUES (1407, '2011/07/12', '67.195.114.54');
INSERT INTO `stats` VALUES (1408, '2011/07/12', '193.47.80.43');
INSERT INTO `stats` VALUES (1409, '2011/07/12', '207.46.199.53');
INSERT INTO `stats` VALUES (1410, '2011/07/12', '86.215.67.72');
INSERT INTO `stats` VALUES (1411, '2011/07/13', '208.115.111.69');
INSERT INTO `stats` VALUES (1412, '2011/07/13', '208.115.111.73');
INSERT INTO `stats` VALUES (1413, '2011/07/13', '84.98.218.81');
INSERT INTO `stats` VALUES (1414, '2011/07/14', '65.52.104.83');
INSERT INTO `stats` VALUES (1415, '2011/07/14', '67.195.111.185');
INSERT INTO `stats` VALUES (1416, '2011/07/14', '208.115.111.73');
INSERT INTO `stats` VALUES (1417, '2011/07/15', '207.46.204.191');
INSERT INTO `stats` VALUES (1418, '2011/07/15', '93.29.138.79');
INSERT INTO `stats` VALUES (1419, '2011/07/15', '66.249.72.52');
INSERT INTO `stats` VALUES (1420, '2011/07/16', '208.115.111.73');
INSERT INTO `stats` VALUES (1421, '2011/07/16', '66.249.72.52');
INSERT INTO `stats` VALUES (1422, '2011/07/16', '208.115.111.69');
INSERT INTO `stats` VALUES (1423, '2011/07/16', '207.46.199.218');
INSERT INTO `stats` VALUES (1424, '2011/07/16', '189.241.22.197');
INSERT INTO `stats` VALUES (1425, '2011/07/16', '65.52.104.83');
INSERT INTO `stats` VALUES (1426, '2011/07/17', '67.195.114.54');
INSERT INTO `stats` VALUES (1427, '2011/07/17', '207.46.199.246');
INSERT INTO `stats` VALUES (1428, '2011/07/17', '208.115.111.69');
INSERT INTO `stats` VALUES (1429, '2011/07/17', '208.115.111.73');
INSERT INTO `stats` VALUES (1430, '2011/07/17', '212.113.37.105');
INSERT INTO `stats` VALUES (1431, '2011/07/17', '66.249.66.75');
INSERT INTO `stats` VALUES (1432, '2011/07/17', '66.249.66.46');
INSERT INTO `stats` VALUES (1433, '2011/07/18', '208.115.111.73');
INSERT INTO `stats` VALUES (1434, '2011/07/18', '66.249.66.46');
INSERT INTO `stats` VALUES (1435, '2011/07/18', '208.115.111.69');
INSERT INTO `stats` VALUES (1436, '2011/07/19', '208.115.111.69');
INSERT INTO `stats` VALUES (1437, '2011/07/19', '67.195.114.54');
INSERT INTO `stats` VALUES (1438, '2011/07/19', '208.115.111.73');
INSERT INTO `stats` VALUES (1439, '2011/07/19', '66.249.66.75');
INSERT INTO `stats` VALUES (1440, '2011/07/19', '65.52.110.55');
INSERT INTO `stats` VALUES (1441, '2011/07/19', '80.219.111.232');
INSERT INTO `stats` VALUES (1442, '2011/07/20', '208.115.111.69');
INSERT INTO `stats` VALUES (1443, '2011/07/20', '208.115.111.73');
INSERT INTO `stats` VALUES (1444, '2011/07/20', '88.163.194.192');
INSERT INTO `stats` VALUES (1445, '2011/07/20', '90.10.111.39');
INSERT INTO `stats` VALUES (1446, '2011/07/20', '2.10.57.199');
INSERT INTO `stats` VALUES (1447, '2011/07/21', '119.63.196.122');
INSERT INTO `stats` VALUES (1448, '2011/07/21', '208.115.111.69');
INSERT INTO `stats` VALUES (1449, '2011/07/21', '67.195.114.54');
INSERT INTO `stats` VALUES (1450, '2011/07/21', '208.115.111.73');
INSERT INTO `stats` VALUES (1451, '2011/07/21', '66.249.66.119');
INSERT INTO `stats` VALUES (1452, '2011/07/21', '65.52.108.59');
INSERT INTO `stats` VALUES (1453, '2011/07/21', '67.195.111.185');
INSERT INTO `stats` VALUES (1454, '2011/07/22', '95.108.247.252');
INSERT INTO `stats` VALUES (1455, '2011/07/22', '217.69.134.113');
INSERT INTO `stats` VALUES (1456, '2011/07/22', '65.52.108.191');
INSERT INTO `stats` VALUES (1457, '2011/07/22', '208.115.111.69');
INSERT INTO `stats` VALUES (1458, '2011/07/22', '208.115.111.73');
INSERT INTO `stats` VALUES (1459, '2011/07/22', '176.9.0.118');
INSERT INTO `stats` VALUES (1460, '2011/07/23', '208.115.111.73');
INSERT INTO `stats` VALUES (1461, '2011/07/23', '208.115.111.69');
INSERT INTO `stats` VALUES (1462, '2011/07/23', '66.249.66.119');
INSERT INTO `stats` VALUES (1463, '2011/07/23', '66.249.66.130');
INSERT INTO `stats` VALUES (1464, '2011/07/23', '207.46.199.27');
INSERT INTO `stats` VALUES (1465, '2011/07/23', '207.46.195.210');
INSERT INTO `stats` VALUES (1466, '2011/07/23', '207.46.12.123');
INSERT INTO `stats` VALUES (1467, '2011/07/23', '207.46.12.106');
INSERT INTO `stats` VALUES (1468, '2011/07/23', '157.55.112.215');
INSERT INTO `stats` VALUES (1469, '2011/07/23', '207.46.195.207');
INSERT INTO `stats` VALUES (1470, '2011/07/23', '207.46.199.15');
INSERT INTO `stats` VALUES (1471, '2011/07/23', '207.46.199.19');
INSERT INTO `stats` VALUES (1472, '2011/07/23', '207.46.12.15');
INSERT INTO `stats` VALUES (1473, '2011/07/24', '66.249.66.130');
INSERT INTO `stats` VALUES (1474, '2011/07/24', '208.115.111.69');
INSERT INTO `stats` VALUES (1475, '2011/07/24', '67.195.114.54');
INSERT INTO `stats` VALUES (1476, '2011/07/24', '207.46.204.239');
INSERT INTO `stats` VALUES (1477, '2011/07/24', '193.47.80.43');
INSERT INTO `stats` VALUES (1478, '2011/07/24', '208.115.111.73');
INSERT INTO `stats` VALUES (1479, '2011/07/24', '207.46.12.122');
INSERT INTO `stats` VALUES (1480, '2011/07/24', '65.52.108.21');
INSERT INTO `stats` VALUES (1481, '2011/07/24', '65.52.104.19');
INSERT INTO `stats` VALUES (1482, '2011/07/25', '66.249.66.119');
INSERT INTO `stats` VALUES (1483, '2011/07/25', '208.115.111.73');
INSERT INTO `stats` VALUES (1484, '2011/07/25', '208.115.111.69');
INSERT INTO `stats` VALUES (1485, '2011/07/25', '67.195.114.54');
INSERT INTO `stats` VALUES (1486, '2011/07/26', '65.52.109.67');
INSERT INTO `stats` VALUES (1487, '2011/07/26', '208.115.111.73');
INSERT INTO `stats` VALUES (1488, '2011/07/26', '208.115.111.69');
INSERT INTO `stats` VALUES (1489, '2011/07/26', '196.203.53.145');
INSERT INTO `stats` VALUES (1490, '2011/07/26', '67.195.114.54');
INSERT INTO `stats` VALUES (1491, '2011/07/27', '208.115.111.73');
INSERT INTO `stats` VALUES (1492, '2011/07/27', '208.115.111.69');
INSERT INTO `stats` VALUES (1493, '2011/07/27', '95.108.247.252');
INSERT INTO `stats` VALUES (1494, '2011/07/27', '66.249.67.228');
INSERT INTO `stats` VALUES (1495, '2011/07/27', '65.52.110.23');
INSERT INTO `stats` VALUES (1496, '2011/07/28', '208.115.111.69');
INSERT INTO `stats` VALUES (1497, '2011/07/28', '65.52.104.83');
INSERT INTO `stats` VALUES (1498, '2011/07/28', '67.195.114.54');
INSERT INTO `stats` VALUES (1499, '2011/07/28', '208.115.111.73');
INSERT INTO `stats` VALUES (1500, '2011/07/29', '207.46.199.54');
INSERT INTO `stats` VALUES (1501, '2011/07/29', '208.115.111.69');
INSERT INTO `stats` VALUES (1502, '2011/07/29', '65.52.108.152');
INSERT INTO `stats` VALUES (1503, '2011/07/29', '66.249.67.228');
INSERT INTO `stats` VALUES (1504, '2011/07/29', '208.115.111.73');
INSERT INTO `stats` VALUES (1505, '2011/07/29', '65.52.110.191');
INSERT INTO `stats` VALUES (1506, '2011/07/30', '87.231.78.144');
INSERT INTO `stats` VALUES (1507, '2011/07/30', '208.115.111.69');
INSERT INTO `stats` VALUES (1508, '2011/07/30', '208.115.111.73');
INSERT INTO `stats` VALUES (1509, '2011/07/30', '67.195.114.54');
INSERT INTO `stats` VALUES (1510, '2011/07/31', '208.115.111.69');
INSERT INTO `stats` VALUES (1511, '2011/07/31', '157.55.17.105');
INSERT INTO `stats` VALUES (1512, '2011/07/31', '208.115.111.73');
INSERT INTO `stats` VALUES (1513, '2011/07/31', '66.249.72.107');
INSERT INTO `stats` VALUES (1514, '2011/07/31', '207.46.204.188');
INSERT INTO `stats` VALUES (1515, '2011/08/01', '208.115.111.69');
INSERT INTO `stats` VALUES (1516, '2011/08/01', '67.195.114.54');
INSERT INTO `stats` VALUES (1517, '2011/08/01', '67.195.111.185');
INSERT INTO `stats` VALUES (1518, '2011/08/01', '65.52.109.63');
INSERT INTO `stats` VALUES (1519, '2011/08/01', '82.123.39.215');
INSERT INTO `stats` VALUES (1520, '2011/08/01', '207.46.195.234');
INSERT INTO `stats` VALUES (1521, '2011/08/02', '208.115.111.69');
INSERT INTO `stats` VALUES (1522, '2011/08/02', '208.115.111.73');
INSERT INTO `stats` VALUES (1523, '2011/08/02', '193.47.80.47');
INSERT INTO `stats` VALUES (1524, '2011/08/02', '82.234.7.189');
INSERT INTO `stats` VALUES (1525, '2011/08/02', '213.41.240.119');
INSERT INTO `stats` VALUES (1526, '2011/08/02', '67.195.114.54');
INSERT INTO `stats` VALUES (1527, '2011/08/03', '208.115.111.69');
INSERT INTO `stats` VALUES (1528, '2011/08/03', '207.46.195.105');
INSERT INTO `stats` VALUES (1529, '2011/08/03', '67.195.114.54');
INSERT INTO `stats` VALUES (1530, '2011/08/03', '208.115.111.73');
INSERT INTO `stats` VALUES (1531, '2011/08/03', '176.9.9.81');
INSERT INTO `stats` VALUES (1532, '2011/08/03', '65.52.108.59');
INSERT INTO `stats` VALUES (1533, '2011/08/03', '65.52.110.27');
INSERT INTO `stats` VALUES (1534, '2011/08/04', '208.115.111.69');
INSERT INTO `stats` VALUES (1535, '2011/08/04', '67.195.114.54');
INSERT INTO `stats` VALUES (1536, '2011/08/04', '207.46.204.195');
INSERT INTO `stats` VALUES (1537, '2011/08/04', '66.249.72.107');
INSERT INTO `stats` VALUES (1538, '2011/08/04', '207.46.195.240');
INSERT INTO `stats` VALUES (1539, '2011/08/04', '208.115.111.73');
INSERT INTO `stats` VALUES (1540, '2011/08/04', '207.46.195.229');
INSERT INTO `stats` VALUES (1541, '2011/08/04', '193.47.80.47');
INSERT INTO `stats` VALUES (1542, '2011/08/04', '95.133.76.39');
INSERT INTO `stats` VALUES (1543, '2011/08/05', '208.115.111.69');
INSERT INTO `stats` VALUES (1544, '2011/08/05', '67.195.114.54');
INSERT INTO `stats` VALUES (1545, '2011/08/05', '207.46.199.53');
INSERT INTO `stats` VALUES (1546, '2011/08/05', '208.115.111.73');
INSERT INTO `stats` VALUES (1547, '2011/08/05', '66.249.72.107');
INSERT INTO `stats` VALUES (1548, '2011/08/05', '212.113.37.105');
INSERT INTO `stats` VALUES (1549, '2011/08/06', '176.9.0.118');
INSERT INTO `stats` VALUES (1550, '2011/08/06', '208.115.111.69');
INSERT INTO `stats` VALUES (1551, '2011/08/06', '208.115.111.73');
INSERT INTO `stats` VALUES (1552, '2011/08/07', '207.46.194.47');
INSERT INTO `stats` VALUES (1553, '2011/08/07', '207.46.194.39');
INSERT INTO `stats` VALUES (1554, '2011/08/07', '208.115.111.69');
INSERT INTO `stats` VALUES (1555, '2011/08/07', '207.46.199.250');
INSERT INTO `stats` VALUES (1556, '2011/08/07', '65.52.104.20');
INSERT INTO `stats` VALUES (1557, '2011/08/07', '207.46.199.251');
INSERT INTO `stats` VALUES (1558, '2011/08/07', '95.108.247.252');
INSERT INTO `stats` VALUES (1559, '2011/08/08', '207.46.195.228');
INSERT INTO `stats` VALUES (1560, '2011/08/08', '208.115.111.69');
INSERT INTO `stats` VALUES (1561, '2011/08/08', '157.55.17.104');
INSERT INTO `stats` VALUES (1562, '2011/08/08', '66.249.72.87');
INSERT INTO `stats` VALUES (1563, '2011/08/09', '208.115.111.69');
INSERT INTO `stats` VALUES (1564, '2011/08/09', '208.115.111.73');
INSERT INTO `stats` VALUES (1565, '2011/08/09', '66.249.66.135');
INSERT INTO `stats` VALUES (1566, '2011/08/09', '207.46.199.44');
INSERT INTO `stats` VALUES (1567, '2011/08/09', '67.195.114.54');
INSERT INTO `stats` VALUES (1568, '2011/08/10', '208.115.111.69');
INSERT INTO `stats` VALUES (1569, '2011/08/10', '65.52.110.56');
INSERT INTO `stats` VALUES (1570, '2011/08/10', '208.115.111.73');
INSERT INTO `stats` VALUES (1571, '2011/08/10', '93.29.138.79');
INSERT INTO `stats` VALUES (1572, '2011/08/10', '207.46.195.224');
INSERT INTO `stats` VALUES (1573, '2011/08/10', '66.249.71.55');
INSERT INTO `stats` VALUES (1574, '2011/08/10', '66.249.66.119');
INSERT INTO `stats` VALUES (1575, '2011/08/10', '65.52.109.17');
INSERT INTO `stats` VALUES (1576, '2011/08/10', '207.46.204.234');
INSERT INTO `stats` VALUES (1577, '2011/08/11', '208.115.111.69');
INSERT INTO `stats` VALUES (1578, '2011/08/11', '67.195.114.54');
INSERT INTO `stats` VALUES (1579, '2011/08/11', '207.46.195.202');
INSERT INTO `stats` VALUES (1580, '2011/08/11', '208.115.111.73');
INSERT INTO `stats` VALUES (1581, '2011/08/12', '208.115.111.69');
INSERT INTO `stats` VALUES (1582, '2011/08/12', '208.115.111.73');
INSERT INTO `stats` VALUES (1583, '2011/08/12', '212.113.37.105');
INSERT INTO `stats` VALUES (1584, '2011/08/12', '80.13.78.22');
INSERT INTO `stats` VALUES (1585, '2011/08/12', '66.249.66.130');
INSERT INTO `stats` VALUES (1586, '2011/08/12', '66.249.66.238');
INSERT INTO `stats` VALUES (1587, '2011/08/12', '67.195.114.54');
INSERT INTO `stats` VALUES (1588, '2011/08/13', '208.115.111.69');
INSERT INTO `stats` VALUES (1589, '2011/08/13', '208.115.111.245');
INSERT INTO `stats` VALUES (1590, '2011/08/13', '207.46.195.242');
INSERT INTO `stats` VALUES (1591, '2011/08/13', '67.195.114.54');
INSERT INTO `stats` VALUES (1592, '2011/08/13', '67.195.111.185');
INSERT INTO `stats` VALUES (1593, '2011/08/14', '208.115.111.69');
INSERT INTO `stats` VALUES (1594, '2011/08/14', '66.249.72.139');
INSERT INTO `stats` VALUES (1595, '2011/08/14', '65.52.110.191');
INSERT INTO `stats` VALUES (1596, '2011/08/15', '208.115.111.69');
INSERT INTO `stats` VALUES (1597, '2011/08/15', '208.115.111.73');
INSERT INTO `stats` VALUES (1598, '2011/08/16', '208.115.111.69');
INSERT INTO `stats` VALUES (1599, '2011/08/16', '67.195.114.54');
INSERT INTO `stats` VALUES (1600, '2011/08/16', '208.115.111.73');
INSERT INTO `stats` VALUES (1601, '2011/08/16', '157.55.18.13');
INSERT INTO `stats` VALUES (1602, '2011/08/16', '91.205.96.19');
INSERT INTO `stats` VALUES (1603, '2011/08/17', '207.46.204.232');
INSERT INTO `stats` VALUES (1604, '2011/08/17', '208.115.111.69');
INSERT INTO `stats` VALUES (1605, '2011/08/17', '208.115.111.73');
INSERT INTO `stats` VALUES (1606, '2011/08/17', '93.29.143.83');
INSERT INTO `stats` VALUES (1607, '2011/08/17', '67.195.114.54');
INSERT INTO `stats` VALUES (1608, '2011/08/17', '207.46.195.228');
INSERT INTO `stats` VALUES (1609, '2011/08/18', '208.115.111.69');
INSERT INTO `stats` VALUES (1610, '2011/08/18', '95.108.247.252');
INSERT INTO `stats` VALUES (1611, '2011/08/18', '67.195.114.54');
INSERT INTO `stats` VALUES (1612, '2011/08/18', '93.29.143.83');
INSERT INTO `stats` VALUES (1613, '2011/08/18', '90.3.59.250');
INSERT INTO `stats` VALUES (1614, '2011/08/18', '208.115.111.73');
INSERT INTO `stats` VALUES (1615, '2011/08/18', '212.113.37.105');
INSERT INTO `stats` VALUES (1616, '2011/08/19', '65.52.110.53');
INSERT INTO `stats` VALUES (1617, '2011/08/19', '208.115.111.69');
INSERT INTO `stats` VALUES (1618, '2011/08/19', '67.195.114.54');
INSERT INTO `stats` VALUES (1619, '2011/08/19', '208.115.111.73');
INSERT INTO `stats` VALUES (1620, '2011/08/19', '193.47.80.47');
INSERT INTO `stats` VALUES (1621, '2011/08/20', '193.47.80.43');
INSERT INTO `stats` VALUES (1622, '2011/08/20', '208.115.111.73');
INSERT INTO `stats` VALUES (1623, '2011/08/20', '208.115.111.69');
INSERT INTO `stats` VALUES (1624, '2011/08/20', '66.249.72.46');
INSERT INTO `stats` VALUES (1625, '2011/08/20', '66.249.72.49');
INSERT INTO `stats` VALUES (1626, '2011/08/20', '86.218.252.35');
INSERT INTO `stats` VALUES (1627, '2011/08/20', '207.46.199.35');
INSERT INTO `stats` VALUES (1628, '2011/08/21', '208.115.111.73');
INSERT INTO `stats` VALUES (1629, '2011/08/21', '208.115.111.69');
INSERT INTO `stats` VALUES (1630, '2011/08/21', '66.249.72.46');
INSERT INTO `stats` VALUES (1631, '2011/08/21', '95.108.247.252');
INSERT INTO `stats` VALUES (1632, '2011/08/21', '207.46.195.106');
INSERT INTO `stats` VALUES (1633, '2011/08/22', '86.218.180.20');
INSERT INTO `stats` VALUES (1634, '2011/08/22', '208.115.111.69');
INSERT INTO `stats` VALUES (1635, '2011/08/22', '208.115.111.73');
INSERT INTO `stats` VALUES (1636, '2011/08/22', '176.9.9.81');
INSERT INTO `stats` VALUES (1637, '2011/08/22', '212.113.37.105');
INSERT INTO `stats` VALUES (1638, '2011/08/23', '208.115.111.69');
INSERT INTO `stats` VALUES (1639, '2011/08/23', '208.115.111.73');
INSERT INTO `stats` VALUES (1640, '2011/08/23', '188.40.42.56');
INSERT INTO `stats` VALUES (1641, '2011/08/23', '67.195.114.54');
INSERT INTO `stats` VALUES (1642, '2011/08/24', '208.115.111.69');
INSERT INTO `stats` VALUES (1643, '2011/08/24', '66.249.66.87');
INSERT INTO `stats` VALUES (1644, '2011/08/24', '90.4.203.157');
INSERT INTO `stats` VALUES (1645, '2011/08/24', '208.115.111.73');
INSERT INTO `stats` VALUES (1646, '2011/08/24', '66.249.66.130');
INSERT INTO `stats` VALUES (1647, '2011/08/24', '65.52.108.24');
INSERT INTO `stats` VALUES (1648, '2011/08/25', '208.115.111.69');
INSERT INTO `stats` VALUES (1649, '2011/08/25', '66.249.72.46');
INSERT INTO `stats` VALUES (1650, '2011/08/25', '66.249.72.49');
INSERT INTO `stats` VALUES (1651, '2011/08/25', '67.195.114.54');
INSERT INTO `stats` VALUES (1652, '2011/08/25', '208.115.111.73');
INSERT INTO `stats` VALUES (1653, '2011/08/26', '208.115.111.69');
INSERT INTO `stats` VALUES (1654, '2011/08/26', '41.226.248.111');
INSERT INTO `stats` VALUES (1655, '2011/08/26', '208.115.111.73');
INSERT INTO `stats` VALUES (1656, '2011/08/26', '67.195.114.54');
INSERT INTO `stats` VALUES (1657, '2011/08/26', '66.249.72.209');
INSERT INTO `stats` VALUES (1658, '2011/08/26', '66.249.72.183');
INSERT INTO `stats` VALUES (1659, '2011/08/26', '89.89.176.234');
INSERT INTO `stats` VALUES (1660, '2011/08/27', '208.115.111.69');
INSERT INTO `stats` VALUES (1661, '2011/08/27', '65.52.108.24');
INSERT INTO `stats` VALUES (1662, '2011/08/27', '208.115.111.73');
INSERT INTO `stats` VALUES (1663, '2011/08/27', '67.195.111.185');
INSERT INTO `stats` VALUES (1664, '2011/08/27', '90.56.124.58');
INSERT INTO `stats` VALUES (1665, '2011/08/28', '208.115.111.69');
INSERT INTO `stats` VALUES (1666, '2011/08/28', '176.9.0.118');
INSERT INTO `stats` VALUES (1667, '2011/08/28', '91.205.96.19');
INSERT INTO `stats` VALUES (1668, '2011/08/28', '208.115.111.73');
INSERT INTO `stats` VALUES (1669, '2011/08/28', '66.249.72.183');
INSERT INTO `stats` VALUES (1670, '2011/08/28', '66.249.72.10');
INSERT INTO `stats` VALUES (1671, '2011/08/29', '208.115.111.69');
INSERT INTO `stats` VALUES (1672, '2011/08/29', '208.115.111.73');
INSERT INTO `stats` VALUES (1673, '2011/08/29', '67.195.114.54');
INSERT INTO `stats` VALUES (1674, '2011/08/29', '93.29.137.182');
INSERT INTO `stats` VALUES (1675, '2011/08/30', '67.195.114.54');
INSERT INTO `stats` VALUES (1676, '2011/08/30', '208.115.111.73');
INSERT INTO `stats` VALUES (1677, '2011/08/30', '208.115.111.69');
INSERT INTO `stats` VALUES (1678, '2011/08/30', '90.56.121.119');
INSERT INTO `stats` VALUES (1679, '2011/08/30', '66.249.72.183');
INSERT INTO `stats` VALUES (1680, '2011/08/31', '66.249.72.209');
INSERT INTO `stats` VALUES (1681, '2011/08/31', '208.115.111.73');
INSERT INTO `stats` VALUES (1682, '2011/08/31', '208.115.111.69');
INSERT INTO `stats` VALUES (1683, '2011/08/31', '65.52.108.147');
INSERT INTO `stats` VALUES (1684, '2011/08/31', '65.52.109.25');
INSERT INTO `stats` VALUES (1685, '2011/08/31', '93.29.137.182');
INSERT INTO `stats` VALUES (1686, '2011/09/01', '208.115.111.73');
INSERT INTO `stats` VALUES (1687, '2011/09/01', '208.115.111.69');
INSERT INTO `stats` VALUES (1688, '2011/09/01', '195.42.102.25');
INSERT INTO `stats` VALUES (1689, '2011/09/01', '65.52.108.147');
INSERT INTO `stats` VALUES (1690, '2011/09/01', '77.87.228.68');
INSERT INTO `stats` VALUES (1691, '2011/09/01', '67.195.114.54');
INSERT INTO `stats` VALUES (1692, '2011/09/01', '41.188.36.54');
INSERT INTO `stats` VALUES (1693, '2011/09/01', '88.140.219.208');
INSERT INTO `stats` VALUES (1694, '2011/09/01', '203.131.252.175');
INSERT INTO `stats` VALUES (1695, '2011/09/02', '66.249.72.209');
INSERT INTO `stats` VALUES (1696, '2011/09/02', '208.115.111.73');
INSERT INTO `stats` VALUES (1697, '2011/09/02', '208.115.111.69');
INSERT INTO `stats` VALUES (1698, '2011/09/02', '66.249.67.169');
INSERT INTO `stats` VALUES (1699, '2011/09/02', '66.249.72.101');
INSERT INTO `stats` VALUES (1700, '2011/09/02', '81.164.193.195');
INSERT INTO `stats` VALUES (1701, '2011/09/02', '67.195.114.54');
INSERT INTO `stats` VALUES (1702, '2011/09/02', '212.113.37.105');
INSERT INTO `stats` VALUES (1703, '2011/09/03', '208.115.111.73');
INSERT INTO `stats` VALUES (1704, '2011/09/03', '208.115.111.69');
INSERT INTO `stats` VALUES (1705, '2011/09/03', '207.46.195.234');
INSERT INTO `stats` VALUES (1706, '2011/09/03', '41.225.9.155');
INSERT INTO `stats` VALUES (1707, '2011/09/03', '95.133.113.88');
INSERT INTO `stats` VALUES (1708, '2011/09/04', '208.115.111.73');
INSERT INTO `stats` VALUES (1709, '2011/09/04', '208.115.111.69');
INSERT INTO `stats` VALUES (1710, '2011/09/04', '67.195.111.185');
INSERT INTO `stats` VALUES (1711, '2011/09/04', '207.46.195.234');
INSERT INTO `stats` VALUES (1712, '2011/09/04', '66.249.72.218');
INSERT INTO `stats` VALUES (1713, '2011/09/05', '207.46.195.234');
INSERT INTO `stats` VALUES (1714, '2011/09/05', '90.56.249.98');
INSERT INTO `stats` VALUES (1715, '2011/09/05', '208.115.111.69');
INSERT INTO `stats` VALUES (1716, '2011/09/05', '208.115.111.73');
INSERT INTO `stats` VALUES (1717, '2011/09/05', '66.249.72.218');
INSERT INTO `stats` VALUES (1718, '2011/09/05', '207.46.194.87');
INSERT INTO `stats` VALUES (1719, '2011/09/05', '193.47.80.43');
INSERT INTO `stats` VALUES (1720, '2011/09/06', '66.249.72.101');
INSERT INTO `stats` VALUES (1721, '2011/09/06', '208.115.111.69');
INSERT INTO `stats` VALUES (1722, '2011/09/06', '208.115.111.73');
INSERT INTO `stats` VALUES (1723, '2011/09/07', '208.115.111.73');
INSERT INTO `stats` VALUES (1724, '2011/09/07', '67.195.114.54');
INSERT INTO `stats` VALUES (1725, '2011/09/07', '208.115.111.69');
INSERT INTO `stats` VALUES (1726, '2011/09/07', '80.14.56.136');
INSERT INTO `stats` VALUES (1727, '2011/09/08', '208.115.111.69');
INSERT INTO `stats` VALUES (1728, '2011/09/08', '208.115.111.73');
INSERT INTO `stats` VALUES (1729, '2011/09/08', '67.195.114.54');
INSERT INTO `stats` VALUES (1730, '2011/09/08', '207.46.195.234');
INSERT INTO `stats` VALUES (1731, '2011/09/08', '93.29.137.182');
INSERT INTO `stats` VALUES (1732, '2011/09/09', '208.115.111.73');
INSERT INTO `stats` VALUES (1733, '2011/09/09', '208.115.111.69');
INSERT INTO `stats` VALUES (1734, '2011/09/09', '217.128.22.167');
INSERT INTO `stats` VALUES (1735, '2011/09/09', '41.224.219.35');
INSERT INTO `stats` VALUES (1736, '2011/09/09', '93.29.137.182');
INSERT INTO `stats` VALUES (1737, '2011/09/09', '88.168.239.220');
INSERT INTO `stats` VALUES (1738, '2011/09/09', '67.195.114.54');
INSERT INTO `stats` VALUES (1739, '2011/09/10', '212.113.37.105');
INSERT INTO `stats` VALUES (1740, '2011/09/10', '208.115.111.73');
INSERT INTO `stats` VALUES (1741, '2011/09/10', '208.115.111.69');
INSERT INTO `stats` VALUES (1742, '2011/09/10', '66.249.72.218');
INSERT INTO `stats` VALUES (1743, '2011/09/10', '67.195.111.185');
INSERT INTO `stats` VALUES (1744, '2011/09/11', '208.115.111.73');
INSERT INTO `stats` VALUES (1745, '2011/09/11', '208.115.111.69');
INSERT INTO `stats` VALUES (1746, '2011/09/11', '65.52.108.147');
INSERT INTO `stats` VALUES (1747, '2011/09/11', '207.46.195.234');
INSERT INTO `stats` VALUES (1748, '2011/09/11', '95.108.151.244');
INSERT INTO `stats` VALUES (1749, '2011/09/11', '66.249.72.101');
INSERT INTO `stats` VALUES (1750, '2011/09/11', '67.195.114.54');
INSERT INTO `stats` VALUES (1751, '2011/09/12', '208.115.111.73');
INSERT INTO `stats` VALUES (1752, '2011/09/12', '208.115.111.69');
INSERT INTO `stats` VALUES (1753, '2011/09/12', '212.113.37.105');
INSERT INTO `stats` VALUES (1754, '2011/09/12', '80.14.56.136');
INSERT INTO `stats` VALUES (1755, '2011/09/12', '79.81.219.10');
INSERT INTO `stats` VALUES (1756, '2011/09/12', '199.19.249.196');
INSERT INTO `stats` VALUES (1757, '2011/09/12', '194.209.66.41');
INSERT INTO `stats` VALUES (1758, '2011/09/12', '82.242.211.98');
INSERT INTO `stats` VALUES (1759, '2011/09/12', '86.218.184.194');
INSERT INTO `stats` VALUES (1760, '2011/09/12', '65.52.108.147');
INSERT INTO `stats` VALUES (1761, '2011/09/12', '82.228.191.35');
INSERT INTO `stats` VALUES (1762, '2011/09/13', '176.9.0.118');
INSERT INTO `stats` VALUES (1763, '2011/09/13', '208.115.111.69');
INSERT INTO `stats` VALUES (1764, '2011/09/13', '208.115.111.73');
INSERT INTO `stats` VALUES (1765, '2011/09/13', '196.192.35.84');
INSERT INTO `stats` VALUES (1766, '2011/09/14', '208.115.111.69');
INSERT INTO `stats` VALUES (1767, '2011/09/14', '207.46.195.234');
INSERT INTO `stats` VALUES (1768, '2011/09/14', '77.88.42.25');
INSERT INTO `stats` VALUES (1769, '2011/09/14', '208.115.111.73');
INSERT INTO `stats` VALUES (1770, '2011/09/15', '208.115.111.73');
INSERT INTO `stats` VALUES (1771, '2011/09/15', '208.115.111.69');
INSERT INTO `stats` VALUES (1772, '2011/09/15', '65.52.108.147');
INSERT INTO `stats` VALUES (1773, '2011/09/15', '207.46.195.234');
INSERT INTO `stats` VALUES (1774, '2011/09/15', '90.56.121.79');
INSERT INTO `stats` VALUES (1775, '2011/09/16', '208.115.111.69');
INSERT INTO `stats` VALUES (1776, '2011/09/16', '67.195.114.54');
INSERT INTO `stats` VALUES (1777, '2011/09/16', '66.249.72.101');
INSERT INTO `stats` VALUES (1778, '2011/09/16', '208.115.111.73');
INSERT INTO `stats` VALUES (1779, '2011/09/16', '217.128.22.167');
INSERT INTO `stats` VALUES (1780, '2011/09/16', '195.101.156.123');
INSERT INTO `stats` VALUES (1781, '2011/09/16', '207.46.12.212');
INSERT INTO `stats` VALUES (1782, '2011/09/17', '208.115.111.69');
INSERT INTO `stats` VALUES (1783, '2011/09/17', '66.249.72.182');
INSERT INTO `stats` VALUES (1784, '2011/09/17', '208.115.113.88');
INSERT INTO `stats` VALUES (1785, '2011/09/17', '90.56.149.226');
INSERT INTO `stats` VALUES (1786, '2011/09/17', '208.115.113.84');
INSERT INTO `stats` VALUES (1787, '2011/09/18', '66.249.72.218');
INSERT INTO `stats` VALUES (1788, '2011/09/18', '193.47.80.43');
INSERT INTO `stats` VALUES (1789, '2011/09/18', '208.115.113.88');
INSERT INTO `stats` VALUES (1790, '2011/09/18', '208.115.113.84');
INSERT INTO `stats` VALUES (1791, '2011/09/18', '90.45.109.193');
INSERT INTO `stats` VALUES (1792, '2011/09/18', '77.88.42.25');
INSERT INTO `stats` VALUES (1793, '2011/09/19', '208.115.113.84');
INSERT INTO `stats` VALUES (1794, '2011/09/19', '207.46.195.234');
INSERT INTO `stats` VALUES (1795, '2011/09/19', '178.198.199.130');
INSERT INTO `stats` VALUES (1796, '2011/09/20', '66.249.72.235');
INSERT INTO `stats` VALUES (1797, '2011/09/20', '94.75.229.132');
INSERT INTO `stats` VALUES (1798, '2011/09/20', '208.115.113.84');
INSERT INTO `stats` VALUES (1799, '2011/09/20', '67.195.114.54');
INSERT INTO `stats` VALUES (1800, '2011/09/20', '90.56.149.226');
INSERT INTO `stats` VALUES (1801, '2011/09/20', '207.46.195.234');
INSERT INTO `stats` VALUES (1802, '2011/09/21', '208.115.113.84');
INSERT INTO `stats` VALUES (1803, '2011/09/21', '208.115.113.88');
INSERT INTO `stats` VALUES (1804, '2011/09/21', '80.14.56.136');
INSERT INTO `stats` VALUES (1805, '2011/09/21', '84.97.81.80');
INSERT INTO `stats` VALUES (1806, '2011/09/21', '85.171.209.100');
INSERT INTO `stats` VALUES (1807, '2011/09/21', '217.128.22.167');
INSERT INTO `stats` VALUES (1808, '2011/09/21', '207.46.195.234');
INSERT INTO `stats` VALUES (1809, '2011/09/21', '67.195.114.54');
INSERT INTO `stats` VALUES (1810, '2011/09/21', '90.60.3.122');
INSERT INTO `stats` VALUES (1811, '2011/09/22', '208.115.113.84');
INSERT INTO `stats` VALUES (1812, '2011/09/22', '208.115.113.88');
INSERT INTO `stats` VALUES (1813, '2011/09/22', '66.249.72.101');
INSERT INTO `stats` VALUES (1814, '2011/09/22', '65.52.108.147');
INSERT INTO `stats` VALUES (1815, '2011/09/22', '66.249.72.235');
INSERT INTO `stats` VALUES (1816, '2011/09/22', '77.88.42.25');
INSERT INTO `stats` VALUES (1817, '2011/09/23', '77.88.42.25');
INSERT INTO `stats` VALUES (1818, '2011/09/23', '208.115.113.88');
INSERT INTO `stats` VALUES (1819, '2011/09/23', '208.115.113.84');
INSERT INTO `stats` VALUES (1820, '2011/09/23', '67.195.114.54');
INSERT INTO `stats` VALUES (1821, '2011/09/23', '67.195.111.185');
INSERT INTO `stats` VALUES (1822, '2011/09/23', '78.127.7.105');
INSERT INTO `stats` VALUES (1823, '2011/09/23', '65.52.108.23');
INSERT INTO `stats` VALUES (1824, '2011/09/23', '90.56.149.226');
INSERT INTO `stats` VALUES (1825, '2011/09/24', '207.46.12.121');
INSERT INTO `stats` VALUES (1826, '2011/09/24', '207.46.204.207');
INSERT INTO `stats` VALUES (1827, '2011/09/24', '207.46.199.242');
INSERT INTO `stats` VALUES (1828, '2011/09/24', '208.115.113.84');
INSERT INTO `stats` VALUES (1829, '2011/09/24', '208.115.113.88');
INSERT INTO `stats` VALUES (1830, '2011/09/24', '207.46.12.210');
INSERT INTO `stats` VALUES (1831, '2011/09/24', '207.46.12.202');
INSERT INTO `stats` VALUES (1832, '2011/09/24', '207.46.195.234');
INSERT INTO `stats` VALUES (1833, '2011/09/24', '67.195.111.185');
INSERT INTO `stats` VALUES (1834, '2011/09/24', '85.171.209.100');
INSERT INTO `stats` VALUES (1835, '2011/09/24', '66.249.72.101');
INSERT INTO `stats` VALUES (1836, '2011/09/24', '87.231.78.144');
INSERT INTO `stats` VALUES (1837, '2011/09/25', '208.115.113.84');
INSERT INTO `stats` VALUES (1838, '2011/09/25', '208.115.113.88');
INSERT INTO `stats` VALUES (1839, '2011/09/25', '66.249.72.235');
INSERT INTO `stats` VALUES (1840, '2011/09/25', '193.47.80.43');
INSERT INTO `stats` VALUES (1841, '2011/09/25', '157.55.17.88');
INSERT INTO `stats` VALUES (1842, '2011/09/25', '67.195.114.54');
INSERT INTO `stats` VALUES (1843, '2011/09/25', '207.46.204.207');
INSERT INTO `stats` VALUES (1844, '2011/09/26', '67.195.114.54');
INSERT INTO `stats` VALUES (1845, '2011/09/26', '77.88.42.25');
INSERT INTO `stats` VALUES (1846, '2011/09/26', '208.115.113.84');
INSERT INTO `stats` VALUES (1847, '2011/09/26', '208.115.113.88');
INSERT INTO `stats` VALUES (1848, '2011/09/26', '83.134.205.16');
INSERT INTO `stats` VALUES (1849, '2011/09/26', '212.113.37.105');
INSERT INTO `stats` VALUES (1850, '2011/09/26', '86.218.190.251');
INSERT INTO `stats` VALUES (1851, '2011/09/27', '208.115.113.84');
INSERT INTO `stats` VALUES (1852, '2011/09/27', '67.195.114.54');
INSERT INTO `stats` VALUES (1853, '2011/09/27', '66.249.72.101');
INSERT INTO `stats` VALUES (1854, '2011/09/28', '208.115.113.84');
INSERT INTO `stats` VALUES (1855, '2011/09/28', '208.115.113.88');
INSERT INTO `stats` VALUES (1856, '2011/09/28', '65.52.108.147');
INSERT INTO `stats` VALUES (1857, '2011/09/28', '77.88.42.25');
INSERT INTO `stats` VALUES (1858, '2011/09/28', '207.46.12.207');
INSERT INTO `stats` VALUES (1859, '2011/09/28', '207.46.12.166');
INSERT INTO `stats` VALUES (1860, '2011/09/28', '88.168.130.15');
INSERT INTO `stats` VALUES (1861, '2011/09/28', '78.236.213.228');
INSERT INTO `stats` VALUES (1862, '2011/09/29', '208.115.113.84');
INSERT INTO `stats` VALUES (1863, '2011/09/29', '67.195.114.54');
INSERT INTO `stats` VALUES (1864, '2011/09/30', '66.249.72.139');
INSERT INTO `stats` VALUES (1865, '2011/09/30', '66.249.72.110');
INSERT INTO `stats` VALUES (1866, '2011/09/30', '65.52.108.147');
INSERT INTO `stats` VALUES (1867, '2011/09/30', '207.46.195.234');
INSERT INTO `stats` VALUES (1868, '2011/09/30', '67.195.111.185');
INSERT INTO `stats` VALUES (1869, '2011/09/30', '208.115.113.88');
INSERT INTO `stats` VALUES (1870, '2011/09/30', '88.168.237.131');
INSERT INTO `stats` VALUES (1871, '2011/10/01', '66.249.72.139');
INSERT INTO `stats` VALUES (1872, '2011/10/01', '207.46.12.209');
INSERT INTO `stats` VALUES (1873, '2011/10/02', '88.161.142.106');
INSERT INTO `stats` VALUES (1874, '2011/10/02', '67.195.114.54');
INSERT INTO `stats` VALUES (1875, '2011/10/02', '207.46.12.162');
INSERT INTO `stats` VALUES (1876, '2011/10/03', '207.46.204.204');
INSERT INTO `stats` VALUES (1877, '2011/10/03', '207.46.195.234');
INSERT INTO `stats` VALUES (1878, '2011/10/03', '78.127.7.105');
INSERT INTO `stats` VALUES (1879, '2011/10/04', '77.88.42.25');
INSERT INTO `stats` VALUES (1880, '2011/10/05', '66.249.72.110');
INSERT INTO `stats` VALUES (1881, '2011/10/05', '66.249.72.211');
INSERT INTO `stats` VALUES (1882, '2011/10/05', '82.230.159.171');
INSERT INTO `stats` VALUES (1883, '2011/10/05', '78.237.142.21');
INSERT INTO `stats` VALUES (1884, '2011/10/05', '67.195.114.54');
INSERT INTO `stats` VALUES (1885, '2011/10/06', '207.46.195.234');
INSERT INTO `stats` VALUES (1886, '2011/10/06', '207.46.195.234');
INSERT INTO `stats` VALUES (1887, '2011/10/07', '67.195.114.54');
INSERT INTO `stats` VALUES (1888, '2011/10/07', '222.88.244.26');
INSERT INTO `stats` VALUES (1889, '2011/10/07', '67.195.111.185');
INSERT INTO `stats` VALUES (1890, '2011/10/07', '90.33.193.193');
INSERT INTO `stats` VALUES (1891, '2011/10/08', '207.46.194.42');
INSERT INTO `stats` VALUES (1892, '2011/10/08', '207.46.194.51');
INSERT INTO `stats` VALUES (1893, '2011/10/08', '207.46.194.33');
INSERT INTO `stats` VALUES (1894, '2011/10/08', '109.10.209.37');
INSERT INTO `stats` VALUES (1895, '2011/10/09', '208.115.113.84');
INSERT INTO `stats` VALUES (1896, '2011/10/09', '207.46.194.42');
INSERT INTO `stats` VALUES (1897, '2011/10/09', '78.127.7.105');
INSERT INTO `stats` VALUES (1898, '2011/10/09', '66.249.72.116');
INSERT INTO `stats` VALUES (1899, '2011/10/10', '208.115.113.84');
INSERT INTO `stats` VALUES (1900, '2011/10/10', '67.195.114.54');
INSERT INTO `stats` VALUES (1901, '2011/10/10', '89.224.69.56');
INSERT INTO `stats` VALUES (1902, '2011/10/11', '66.249.71.84');
INSERT INTO `stats` VALUES (1903, '2011/10/11', '66.249.71.16');
INSERT INTO `stats` VALUES (1904, '2011/10/11', '212.113.37.105');
INSERT INTO `stats` VALUES (1905, '2011/10/12', '212.113.37.105');
INSERT INTO `stats` VALUES (1906, '2011/10/12', '77.88.42.25');
INSERT INTO `stats` VALUES (1907, '2011/10/12', '90.13.20.129');
INSERT INTO `stats` VALUES (1908, '2011/10/13', '83.167.34.226');
INSERT INTO `stats` VALUES (1909, '2011/10/13', '66.249.72.232');
INSERT INTO `stats` VALUES (1910, '2011/10/13', '66.249.66.123');
INSERT INTO `stats` VALUES (1911, '2011/10/13', '66.249.66.238');
INSERT INTO `stats` VALUES (1912, '2011/10/14', '208.115.111.68');
INSERT INTO `stats` VALUES (1913, '2011/10/15', '66.249.72.171');
INSERT INTO `stats` VALUES (1914, '2011/10/16', '67.195.114.54');
INSERT INTO `stats` VALUES (1915, '2011/10/17', '193.47.80.43');
INSERT INTO `stats` VALUES (1916, '2011/10/17', '67.195.114.54');
INSERT INTO `stats` VALUES (1917, '2011/10/17', '208.115.111.68');
INSERT INTO `stats` VALUES (1918, '2011/10/18', '67.195.114.54');
INSERT INTO `stats` VALUES (1919, '2011/10/18', '81.51.159.120');
INSERT INTO `stats` VALUES (1920, '2011/10/18', '208.115.111.68');
INSERT INTO `stats` VALUES (1921, '2011/10/18', '157.55.17.200');
INSERT INTO `stats` VALUES (1922, '2011/10/19', '66.249.72.171');
INSERT INTO `stats` VALUES (1923, '2011/10/19', '66.249.72.116');
INSERT INTO `stats` VALUES (1924, '2011/10/19', '95.211.1.141');
INSERT INTO `stats` VALUES (1925, '2011/10/20', '95.211.1.22');
INSERT INTO `stats` VALUES (1926, '2011/10/20', '65.52.108.199');
INSERT INTO `stats` VALUES (1927, '2011/10/21', '207.46.13.144');
INSERT INTO `stats` VALUES (1928, '2011/10/21', '194.199.7.23');
INSERT INTO `stats` VALUES (1929, '2011/10/21', '67.195.111.185');
INSERT INTO `stats` VALUES (1930, '2011/10/21', '66.249.72.171');
INSERT INTO `stats` VALUES (1931, '2011/10/21', '66.249.72.116');
INSERT INTO `stats` VALUES (1932, '2011/10/21', '67.195.114.54');
INSERT INTO `stats` VALUES (1933, '2011/10/21', '92.144.57.182');
INSERT INTO `stats` VALUES (1934, '2011/10/21', '205.237.9.16');
INSERT INTO `stats` VALUES (1935, '2011/10/22', '77.204.155.89');
INSERT INTO `stats` VALUES (1936, '2011/10/22', '67.195.114.54');
INSERT INTO `stats` VALUES (1937, '2011/10/22', '89.123.7.212');
INSERT INTO `stats` VALUES (1938, '2011/10/22', '157.55.17.148');
INSERT INTO `stats` VALUES (1939, '2011/10/23', '95.108.151.244');
INSERT INTO `stats` VALUES (1940, '2011/10/23', '95.108.151.244');
INSERT INTO `stats` VALUES (1941, '2011/10/23', '66.249.71.151');
INSERT INTO `stats` VALUES (1942, '2011/10/23', '208.115.111.68');
INSERT INTO `stats` VALUES (1943, '2011/10/24', '119.63.196.94');
INSERT INTO `stats` VALUES (1944, '2011/10/24', '77.88.42.25');
INSERT INTO `stats` VALUES (1945, '2011/10/25', '67.195.114.54');
INSERT INTO `stats` VALUES (1946, '2011/10/25', '208.115.111.68');
INSERT INTO `stats` VALUES (1947, '2011/10/25', '207.46.204.177');
INSERT INTO `stats` VALUES (1948, '2011/10/25', '157.55.17.195');
INSERT INTO `stats` VALUES (1949, '2011/10/25', '192.114.71.13');
INSERT INTO `stats` VALUES (1950, '2011/10/26', '157.55.17.148');
INSERT INTO `stats` VALUES (1951, '2011/10/26', '207.46.199.44');
INSERT INTO `stats` VALUES (1952, '2011/10/26', '67.195.114.54');
INSERT INTO `stats` VALUES (1953, '2011/10/26', '77.88.42.25');
INSERT INTO `stats` VALUES (1954, '2011/10/27', '81.64.10.181');
INSERT INTO `stats` VALUES (1955, '2011/10/28', '66.249.71.49');
INSERT INTO `stats` VALUES (1956, '2011/10/28', '194.199.7.22');
INSERT INTO `stats` VALUES (1957, '2011/10/28', '83.172.200.137');
INSERT INTO `stats` VALUES (1958, '2011/10/28', '207.46.13.144');
INSERT INTO `stats` VALUES (1959, '2011/10/28', '157.55.16.178');
INSERT INTO `stats` VALUES (1960, '2011/10/29', '208.115.111.68');
INSERT INTO `stats` VALUES (1961, '2011/10/29', '77.88.42.25');
INSERT INTO `stats` VALUES (1962, '2011/10/30', '77.198.124.188');
INSERT INTO `stats` VALUES (1963, '2011/10/30', '66.249.72.171');
INSERT INTO `stats` VALUES (1964, '2011/10/30', '65.52.110.22');
INSERT INTO `stats` VALUES (1965, '2011/10/30', '77.88.42.25');
INSERT INTO `stats` VALUES (1966, '2011/10/31', '93.29.139.217');
INSERT INTO `stats` VALUES (1967, '2011/10/31', '84.253.20.91');
INSERT INTO `stats` VALUES (1968, '2011/10/31', '93.182.214.3');
INSERT INTO `stats` VALUES (1969, '2011/10/31', '207.46.204.177');
INSERT INTO `stats` VALUES (1970, '2011/11/01', '207.46.199.44');
INSERT INTO `stats` VALUES (1971, '2011/11/01', '66.249.72.171');
INSERT INTO `stats` VALUES (1972, '2011/11/01', '77.88.42.25');
INSERT INTO `stats` VALUES (1973, '2011/11/02', '217.128.86.64');
INSERT INTO `stats` VALUES (1974, '2011/11/02', '95.108.151.244');
INSERT INTO `stats` VALUES (1975, '2011/11/02', '95.108.151.244');
INSERT INTO `stats` VALUES (1976, '2011/11/03', '66.249.72.171');
INSERT INTO `stats` VALUES (1977, '2011/11/03', '157.55.16.221');
INSERT INTO `stats` VALUES (1978, '2011/11/03', '66.249.72.116');
INSERT INTO `stats` VALUES (1979, '2011/11/03', '65.52.109.200');
INSERT INTO `stats` VALUES (1980, '2011/11/03', '192.114.71.13');
INSERT INTO `stats` VALUES (1981, '2011/11/03', '80.15.116.121');
INSERT INTO `stats` VALUES (1982, '2011/11/03', '77.88.42.25');
INSERT INTO `stats` VALUES (1983, '2011/11/04', '207.46.13.143');
INSERT INTO `stats` VALUES (1984, '2011/11/04', '66.249.72.148');
INSERT INTO `stats` VALUES (1985, '2011/11/04', '66.249.71.90');
INSERT INTO `stats` VALUES (1986, '2011/11/05', '207.46.194.94');
INSERT INTO `stats` VALUES (1987, '2011/11/05', '66.249.71.90');
INSERT INTO `stats` VALUES (1988, '2011/11/05', '66.249.71.183');
INSERT INTO `stats` VALUES (1989, '2011/11/05', '65.52.110.17');
INSERT INTO `stats` VALUES (1990, '2011/11/06', '77.88.42.25');
INSERT INTO `stats` VALUES (1991, '2011/11/07', '207.46.195.239');
INSERT INTO `stats` VALUES (1992, '2011/11/08', '66.249.71.247');
INSERT INTO `stats` VALUES (1993, '2011/11/08', '77.196.128.163');
INSERT INTO `stats` VALUES (1994, '2011/11/08', '77.88.42.25');
INSERT INTO `stats` VALUES (1995, '2011/11/08', '65.52.108.198');
INSERT INTO `stats` VALUES (1996, '2011/11/09', '65.52.108.198');
INSERT INTO `stats` VALUES (1997, '2011/11/09', '66.249.71.90');
INSERT INTO `stats` VALUES (1998, '2011/11/10', '77.88.42.25');
INSERT INTO `stats` VALUES (1999, '2011/11/10', '66.249.71.148');
INSERT INTO `stats` VALUES (2000, '2011/11/10', '207.46.195.105');
INSERT INTO `stats` VALUES (2001, '2011/11/10', '208.115.111.68');
INSERT INTO `stats` VALUES (2002, '2011/11/10', '90.35.46.31');
INSERT INTO `stats` VALUES (2003, '2011/11/11', '66.249.71.90');
INSERT INTO `stats` VALUES (2004, '2011/11/11', '157.55.16.220');
INSERT INTO `stats` VALUES (2005, '2011/11/11', '77.88.42.25');
INSERT INTO `stats` VALUES (2006, '2011/11/11', '208.115.111.68');
INSERT INTO `stats` VALUES (2007, '2011/11/12', '212.113.37.105');
INSERT INTO `stats` VALUES (2008, '2011/11/12', '77.88.42.25');
INSERT INTO `stats` VALUES (2009, '2011/11/12', '157.55.16.220');
INSERT INTO `stats` VALUES (2010, '2011/11/12', '207.46.199.221');
INSERT INTO `stats` VALUES (2011, '2011/11/13', '208.115.111.72');
INSERT INTO `stats` VALUES (2012, '2011/11/13', '207.46.199.218');
INSERT INTO `stats` VALUES (2013, '2011/11/13', '208.115.111.68');
INSERT INTO `stats` VALUES (2014, '2011/11/14', '208.115.111.68');
INSERT INTO `stats` VALUES (2015, '2011/11/14', '207.46.199.47');
INSERT INTO `stats` VALUES (2016, '2011/11/14', '207.46.13.145');
INSERT INTO `stats` VALUES (2017, '2011/11/14', '77.88.42.25');
INSERT INTO `stats` VALUES (2018, '2011/11/15', '65.52.108.198');
INSERT INTO `stats` VALUES (2019, '2011/11/16', '66.249.71.148');
INSERT INTO `stats` VALUES (2020, '2011/11/17', '66.249.71.203');
INSERT INTO `stats` VALUES (2021, '2011/11/17', '207.46.194.112');
INSERT INTO `stats` VALUES (2022, '2011/11/17', '207.46.194.87');
INSERT INTO `stats` VALUES (2023, '2011/11/17', '207.46.194.77');
INSERT INTO `stats` VALUES (2024, '2011/11/17', '92.153.19.160');
INSERT INTO `stats` VALUES (2025, '2011/11/17', '77.88.42.25');
INSERT INTO `stats` VALUES (2026, '2011/11/18', '207.46.194.70');
INSERT INTO `stats` VALUES (2027, '2011/11/18', '207.46.199.250');
INSERT INTO `stats` VALUES (2028, '2011/11/18', '207.46.199.215');
INSERT INTO `stats` VALUES (2029, '2011/11/18', '208.115.111.68');
INSERT INTO `stats` VALUES (2030, '2011/11/19', '66.219.58.41');
INSERT INTO `stats` VALUES (2031, '2011/11/20', '207.46.204.192');
INSERT INTO `stats` VALUES (2032, '2011/11/20', '66.249.66.229');
INSERT INTO `stats` VALUES (2033, '2011/11/21', '77.88.42.25');
INSERT INTO `stats` VALUES (2034, '2011/11/21', '157.55.17.201');
INSERT INTO `stats` VALUES (2035, '2011/11/21', '157.55.16.220');
INSERT INTO `stats` VALUES (2036, '2011/11/21', '207.46.199.47');
INSERT INTO `stats` VALUES (2037, '2011/11/21', '66.249.66.231');
INSERT INTO `stats` VALUES (2038, '2011/11/22', '66.249.66.16');
INSERT INTO `stats` VALUES (2039, '2011/11/22', '41.188.48.73');
INSERT INTO `stats` VALUES (2040, '2011/11/22', '62.147.136.72');
INSERT INTO `stats` VALUES (2041, '2011/11/22', '208.115.111.72');
INSERT INTO `stats` VALUES (2042, '2011/11/22', '208.115.113.84');
INSERT INTO `stats` VALUES (2043, '2011/11/22', '86.69.208.24');
INSERT INTO `stats` VALUES (2044, '2011/11/22', '207.46.199.47');
INSERT INTO `stats` VALUES (2045, '2011/11/23', '80.14.56.136');
INSERT INTO `stats` VALUES (2046, '2011/11/23', '208.115.111.68');
INSERT INTO `stats` VALUES (2047, '2011/11/23', '217.128.22.167');
INSERT INTO `stats` VALUES (2048, '2011/11/23', '207.46.195.241');
INSERT INTO `stats` VALUES (2049, '2011/11/23', '77.88.42.25');
INSERT INTO `stats` VALUES (2050, '2011/11/24', '217.128.22.167');
INSERT INTO `stats` VALUES (2051, '2011/11/24', '90.84.146.240');
INSERT INTO `stats` VALUES (2052, '2011/11/24', '65.52.108.12');
INSERT INTO `stats` VALUES (2053, '2011/11/25', '119.63.196.31');
INSERT INTO `stats` VALUES (2054, '2011/11/25', '66.249.72.148');
INSERT INTO `stats` VALUES (2055, '2011/11/25', '217.128.22.167');
INSERT INTO `stats` VALUES (2056, '2011/11/25', '66.249.66.16');
INSERT INTO `stats` VALUES (2057, '2011/11/25', '208.115.113.84');
INSERT INTO `stats` VALUES (2058, '2011/11/25', '207.46.194.42');
INSERT INTO `stats` VALUES (2059, '2011/11/26', '93.29.137.4');
INSERT INTO `stats` VALUES (2060, '2011/11/26', '65.52.108.199');
INSERT INTO `stats` VALUES (2061, '2011/11/26', '66.249.66.16');
INSERT INTO `stats` VALUES (2062, '2011/11/26', '90.51.144.35');
INSERT INTO `stats` VALUES (2063, '2011/11/27', '66.249.66.231');
INSERT INTO `stats` VALUES (2064, '2011/11/27', '157.55.16.55');
INSERT INTO `stats` VALUES (2065, '2011/11/27', '86.213.162.8');
INSERT INTO `stats` VALUES (2066, '2011/11/27', '65.52.110.192');
INSERT INTO `stats` VALUES (2067, '2011/11/28', '208.115.111.72');
INSERT INTO `stats` VALUES (2068, '2011/11/28', '65.52.108.199');
INSERT INTO `stats` VALUES (2069, '2011/11/28', '66.219.58.41');
INSERT INTO `stats` VALUES (2070, '2011/11/29', '105.140.160.99');
INSERT INTO `stats` VALUES (2071, '2011/11/29', '66.249.66.231');
INSERT INTO `stats` VALUES (2072, '2011/11/29', '66.249.66.16');
INSERT INTO `stats` VALUES (2073, '2011/11/29', '109.190.17.138');
INSERT INTO `stats` VALUES (2074, '2011/11/29', '109.190.17.138');
INSERT INTO `stats` VALUES (2075, '2011/11/30', '65.52.104.90');
INSERT INTO `stats` VALUES (2076, '2011/11/30', '212.113.37.105');
INSERT INTO `stats` VALUES (2077, '2011/11/30', '157.55.16.56');
INSERT INTO `stats` VALUES (2078, '2011/12/01', '86.69.208.24');
INSERT INTO `stats` VALUES (2079, '2011/12/02', '77.88.42.25');
INSERT INTO `stats` VALUES (2080, '2011/12/02', '212.113.37.105');
INSERT INTO `stats` VALUES (2081, '2011/12/02', '208.115.111.68');
INSERT INTO `stats` VALUES (2082, '2011/12/03', '77.199.34.194');
INSERT INTO `stats` VALUES (2083, '2011/12/03', '207.46.204.135');
INSERT INTO `stats` VALUES (2084, '2011/12/03', '193.47.80.43');
INSERT INTO `stats` VALUES (2085, '2011/12/04', '208.115.111.68');
INSERT INTO `stats` VALUES (2086, '2011/12/04', '65.255.176.26');
INSERT INTO `stats` VALUES (2087, '2011/12/04', '212.54.226.117');
INSERT INTO `stats` VALUES (2088, '2011/12/04', '46.105.5.195');
INSERT INTO `stats` VALUES (2089, '2011/12/04', '195.19.200.72');
INSERT INTO `stats` VALUES (2090, '2011/12/04', '62.33.217.1');
INSERT INTO `stats` VALUES (2091, '2011/12/04', '93.84.116.216');
INSERT INTO `stats` VALUES (2092, '2011/12/04', '65.52.109.146');
INSERT INTO `stats` VALUES (2093, '2011/12/04', '88.183.232.54');
INSERT INTO `stats` VALUES (2094, '2011/12/05', '208.115.111.72');
INSERT INTO `stats` VALUES (2095, '2011/12/05', '66.249.67.174');
INSERT INTO `stats` VALUES (2096, '2011/12/05', '212.113.37.105');
INSERT INTO `stats` VALUES (2097, '2011/12/06', '212.113.37.105');
INSERT INTO `stats` VALUES (2098, '2011/12/06', '207.46.194.50');
INSERT INTO `stats` VALUES (2099, '2011/12/06', '208.115.113.84');
INSERT INTO `stats` VALUES (2100, '2011/12/06', '207.46.13.144');
INSERT INTO `stats` VALUES (2101, '2011/12/06', '66.249.66.16');
INSERT INTO `stats` VALUES (2102, '2011/12/07', '65.52.110.191');
INSERT INTO `stats` VALUES (2103, '2011/12/07', '88.190.11.232');
INSERT INTO `stats` VALUES (2104, '2011/12/07', '66.249.66.231');
INSERT INTO `stats` VALUES (2105, '2011/12/07', '66.249.66.229');
INSERT INTO `stats` VALUES (2106, '2011/12/07', '212.113.37.105');
INSERT INTO `stats` VALUES (2107, '2011/12/08', '88.190.11.232');
INSERT INTO `stats` VALUES (2108, '2011/12/08', '77.88.42.25');
INSERT INTO `stats` VALUES (2109, '2011/12/08', '193.47.80.47');
INSERT INTO `stats` VALUES (2110, '2011/12/08', '66.249.66.16');
INSERT INTO `stats` VALUES (2111, '2011/12/08', '95.108.151.244');
INSERT INTO `stats` VALUES (2112, '2011/12/09', '65.52.110.200');
INSERT INTO `stats` VALUES (2113, '2011/12/09', '157.55.17.194');
INSERT INTO `stats` VALUES (2114, '2011/12/09', '78.114.8.133');
INSERT INTO `stats` VALUES (2115, '2011/12/10', '208.115.111.68');
INSERT INTO `stats` VALUES (2116, '2011/12/10', '212.113.37.105');
INSERT INTO `stats` VALUES (2117, '2011/12/10', '208.115.113.84');
INSERT INTO `stats` VALUES (2118, '2011/12/10', '157.55.18.9');
INSERT INTO `stats` VALUES (2119, '2011/12/10', '208.115.111.72');
INSERT INTO `stats` VALUES (2120, '2011/12/11', '66.249.66.231');
INSERT INTO `stats` VALUES (2121, '2011/12/11', '77.204.106.20');
INSERT INTO `stats` VALUES (2122, '2011/12/11', '207.46.13.144');
INSERT INTO `stats` VALUES (2123, '2011/12/11', '93.29.137.126');
INSERT INTO `stats` VALUES (2124, '2011/12/11', '202.158.52.211');
INSERT INTO `stats` VALUES (2125, '2011/12/12', '81.221.15.140');
INSERT INTO `stats` VALUES (2126, '2011/12/12', '77.88.42.25');
INSERT INTO `stats` VALUES (2127, '2011/12/12', '81.92.159.194');
INSERT INTO `stats` VALUES (2128, '2011/12/12', '207.46.204.241');
INSERT INTO `stats` VALUES (2129, '2011/12/12', '66.249.71.212');
INSERT INTO `stats` VALUES (2130, '2011/12/12', '146.48.84.52');
INSERT INTO `stats` VALUES (2131, '2011/12/12', '95.108.151.244');
INSERT INTO `stats` VALUES (2132, '2011/12/12', '122.255.96.45');
INSERT INTO `stats` VALUES (2133, '2011/12/13', '212.113.37.105');
INSERT INTO `stats` VALUES (2134, '2011/12/13', '77.88.42.25');
INSERT INTO `stats` VALUES (2135, '2011/12/13', '208.115.113.84');
INSERT INTO `stats` VALUES (2136, '2011/12/13', '66.249.66.231');
INSERT INTO `stats` VALUES (2137, '2011/12/13', '66.249.71.90');
INSERT INTO `stats` VALUES (2138, '2011/12/13', '93.29.137.126');
INSERT INTO `stats` VALUES (2139, '2011/12/14', '211.147.221.42');
INSERT INTO `stats` VALUES (2140, '2011/12/14', '66.249.66.16');
INSERT INTO `stats` VALUES (2141, '2011/12/14', '65.52.109.200');
INSERT INTO `stats` VALUES (2142, '2011/12/14', '65.52.109.198');
INSERT INTO `stats` VALUES (2143, '2011/12/14', '66.249.66.231');
INSERT INTO `stats` VALUES (2144, '2011/12/15', '195.113.214.210');
INSERT INTO `stats` VALUES (2145, '2011/12/15', '77.88.42.25');
INSERT INTO `stats` VALUES (2146, '2011/12/15', '66.249.66.231');
INSERT INTO `stats` VALUES (2147, '2011/12/15', '208.115.111.72');
INSERT INTO `stats` VALUES (2148, '2011/12/16', '208.115.113.84');
INSERT INTO `stats` VALUES (2149, '2011/12/16', '66.249.66.16');
INSERT INTO `stats` VALUES (2150, '2011/12/16', '66.249.72.168');
INSERT INTO `stats` VALUES (2151, '2011/12/16', '157.55.17.145');
INSERT INTO `stats` VALUES (2152, '2011/12/17', '66.249.72.168');
INSERT INTO `stats` VALUES (2153, '2011/12/17', '221.224.13.25');
INSERT INTO `stats` VALUES (2154, '2011/12/17', '46.105.5.195');
INSERT INTO `stats` VALUES (2155, '2011/12/17', '217.115.199.40');
INSERT INTO `stats` VALUES (2156, '2011/12/17', '58.254.143.204');
INSERT INTO `stats` VALUES (2157, '2011/12/17', '201.25.53.34');
INSERT INTO `stats` VALUES (2158, '2011/12/18', '212.113.37.105');
INSERT INTO `stats` VALUES (2159, '2011/12/18', '69.162.70.2');
INSERT INTO `stats` VALUES (2160, '2011/12/18', '77.88.42.25');
INSERT INTO `stats` VALUES (2161, '2011/12/19', '66.249.72.168');
INSERT INTO `stats` VALUES (2162, '2011/12/19', '207.46.199.47');
INSERT INTO `stats` VALUES (2163, '2011/12/19', '208.115.111.68');
INSERT INTO `stats` VALUES (2164, '2011/12/19', '66.249.72.81');
INSERT INTO `stats` VALUES (2165, '2011/12/20', '80.243.191.178');
INSERT INTO `stats` VALUES (2166, '2011/12/20', '95.108.151.244');
INSERT INTO `stats` VALUES (2167, '2011/12/20', '77.88.42.25');
INSERT INTO `stats` VALUES (2168, '2011/12/20', '208.115.111.68');
INSERT INTO `stats` VALUES (2169, '2011/12/20', '81.51.138.134');
INSERT INTO `stats` VALUES (2170, '2011/12/20', '93.29.137.52');
INSERT INTO `stats` VALUES (2171, '2011/12/21', '193.47.80.47');
INSERT INTO `stats` VALUES (2172, '2011/12/21', '10.180.9.155, unknown');
INSERT INTO `stats` VALUES (2173, '2011/12/21', '66.249.66.16');
INSERT INTO `stats` VALUES (2174, '2011/12/22', '206.51.231.26');
INSERT INTO `stats` VALUES (2175, '2011/12/22', '208.115.113.84');
INSERT INTO `stats` VALUES (2176, '2011/12/23', '193.47.80.47');
INSERT INTO `stats` VALUES (2177, '2011/12/24', '207.46.13.115');
INSERT INTO `stats` VALUES (2178, '2011/12/24', '95.108.151.244');
INSERT INTO `stats` VALUES (2179, '2011/12/24', '207.46.204.177');
INSERT INTO `stats` VALUES (2180, '2011/12/25', '77.88.42.25');
INSERT INTO `stats` VALUES (2181, '2011/12/26', '119.63.196.62');
INSERT INTO `stats` VALUES (2182, '2011/12/26', '66.249.66.49');
INSERT INTO `stats` VALUES (2183, '2011/12/27', '66.249.66.34');
INSERT INTO `stats` VALUES (2184, '2011/12/28', '77.88.42.25');
INSERT INTO `stats` VALUES (2185, '2011/12/28', '78.215.172.16');
INSERT INTO `stats` VALUES (2186, '2011/12/28', '88.168.130.15');
INSERT INTO `stats` VALUES (2187, '2011/12/28', '75.101.181.182');
INSERT INTO `stats` VALUES (2188, '2011/12/28', '207.46.12.238');
INSERT INTO `stats` VALUES (2189, '2011/12/29', '157.55.17.148');
INSERT INTO `stats` VALUES (2190, '2011/12/29', '193.47.80.43');
INSERT INTO `stats` VALUES (2191, '2011/12/29', '66.249.66.34');
INSERT INTO `stats` VALUES (2192, '2011/12/29', '66.249.72.168');
INSERT INTO `stats` VALUES (2193, '2011/12/29', '207.46.194.86');
INSERT INTO `stats` VALUES (2194, '2011/12/29', '81.57.102.114');
INSERT INTO `stats` VALUES (2195, '2011/12/30', '65.52.109.72');
INSERT INTO `stats` VALUES (2196, '2011/12/30', '93.29.137.26');
INSERT INTO `stats` VALUES (2197, '2011/12/30', '128.30.52.71');
INSERT INTO `stats` VALUES (2198, '2011/12/30', '208.115.113.84');
INSERT INTO `stats` VALUES (2199, '2011/12/31', '65.52.104.19');
INSERT INTO `stats` VALUES (2200, '2011/12/31', '207.46.12.238');
INSERT INTO `stats` VALUES (2201, '2011/12/31', '77.88.42.25');
INSERT INTO `stats` VALUES (2202, '2011/12/31', '208.115.113.84');
INSERT INTO `stats` VALUES (2203, '2011/12/31', '66.249.72.81');
INSERT INTO `stats` VALUES (2204, '2012/01/02', '193.47.80.47');
INSERT INTO `stats` VALUES (2205, '2012/01/02', '207.46.199.37');
INSERT INTO `stats` VALUES (2206, '2012/01/02', '217.67.150.110');
INSERT INTO `stats` VALUES (2207, '2012/01/02', '65.52.109.72');
INSERT INTO `stats` VALUES (2208, '2012/01/02', '78.226.101.103');
INSERT INTO `stats` VALUES (2209, '2012/01/02', '208.115.113.84');
INSERT INTO `stats` VALUES (2210, '2012/01/02', '77.88.42.25');
INSERT INTO `stats` VALUES (2211, '2012/01/03', '66.249.71.98');
INSERT INTO `stats` VALUES (2212, '2012/01/03', '65.52.110.17');
INSERT INTO `stats` VALUES (2213, '2012/01/04', '207.46.12.238');
INSERT INTO `stats` VALUES (2214, '2012/01/04', '66.249.71.212');
INSERT INTO `stats` VALUES (2215, '2012/01/04', '88.168.130.15');
INSERT INTO `stats` VALUES (2216, '2012/01/04', '10.139.29.163, 127.0.0.1');
INSERT INTO `stats` VALUES (2217, '2012/01/04', '208.115.111.68');
INSERT INTO `stats` VALUES (2218, '2012/01/04', '66.249.72.168');
INSERT INTO `stats` VALUES (2219, '2012/01/05', '66.249.72.215');
INSERT INTO `stats` VALUES (2220, '2012/01/05', '208.115.113.84');
INSERT INTO `stats` VALUES (2221, '2012/01/05', '208.115.111.68');
INSERT INTO `stats` VALUES (2222, '2012/01/05', '93.29.137.26');
INSERT INTO `stats` VALUES (2223, '2012/01/05', '83.156.180.10');
INSERT INTO `stats` VALUES (2224, '2012/01/06', '208.115.111.68');
INSERT INTO `stats` VALUES (2225, '2012/01/06', '66.249.72.78');
INSERT INTO `stats` VALUES (2226, '2012/01/06', '66.249.72.215');
INSERT INTO `stats` VALUES (2227, '2012/01/06', '95.108.151.244');
INSERT INTO `stats` VALUES (2228, '2012/01/06', '85.69.69.242');
INSERT INTO `stats` VALUES (2229, '2012/01/06', '78.234.212.83');
INSERT INTO `stats` VALUES (2230, '2012/01/07', '109.11.103.82');
INSERT INTO `stats` VALUES (2231, '2012/01/07', '77.88.42.25');
INSERT INTO `stats` VALUES (2232, '2012/01/07', '66.249.66.34');
INSERT INTO `stats` VALUES (2233, '2012/01/08', '207.46.204.243');
INSERT INTO `stats` VALUES (2234, '2012/01/08', '207.46.199.44');
INSERT INTO `stats` VALUES (2235, '2012/01/08', '93.29.137.26');
INSERT INTO `stats` VALUES (2236, '2012/01/08', '66.249.72.78');
INSERT INTO `stats` VALUES (2237, '2012/01/08', '207.46.194.83');
INSERT INTO `stats` VALUES (2238, '2012/01/09', '66.249.66.34');
INSERT INTO `stats` VALUES (2239, '2012/01/09', '212.113.37.105');
INSERT INTO `stats` VALUES (2240, '2012/01/09', '207.46.199.215');
INSERT INTO `stats` VALUES (2241, '2012/01/09', '157.55.18.9');
INSERT INTO `stats` VALUES (2242, '2012/01/09', '92.130.149.107');
INSERT INTO `stats` VALUES (2243, '2012/01/10', '207.46.199.248');
INSERT INTO `stats` VALUES (2244, '2012/01/10', '157.55.16.220');
INSERT INTO `stats` VALUES (2245, '2012/01/10', '66.249.66.49');
INSERT INTO `stats` VALUES (2246, '2012/01/10', '207.46.199.249');
INSERT INTO `stats` VALUES (2247, '2012/01/10', '90.37.11.175');
INSERT INTO `stats` VALUES (2248, '2012/01/10', '77.88.42.25');
INSERT INTO `stats` VALUES (2249, '2012/01/11', '157.55.18.9');
INSERT INTO `stats` VALUES (2250, '2012/01/11', '208.115.111.68');
INSERT INTO `stats` VALUES (2251, '2012/01/11', '66.249.66.34');
INSERT INTO `stats` VALUES (2252, '2012/01/11', '208.115.113.84');
INSERT INTO `stats` VALUES (2253, '2012/01/12', '66.249.66.49');
INSERT INTO `stats` VALUES (2254, '2012/01/13', '207.46.13.157');
INSERT INTO `stats` VALUES (2255, '2012/01/13', '190.190.29.7');
INSERT INTO `stats` VALUES (2256, '2012/01/13', '65.52.104.89');
INSERT INTO `stats` VALUES (2257, '2012/01/13', '88.168.130.15');
INSERT INTO `stats` VALUES (2258, '2012/01/14', '65.52.110.199');
INSERT INTO `stats` VALUES (2259, '2012/01/14', '207.46.204.241');
INSERT INTO `stats` VALUES (2260, '2012/01/14', '93.29.137.26');
INSERT INTO `stats` VALUES (2261, '2012/01/15', '208.115.113.84');
INSERT INTO `stats` VALUES (2262, '2012/01/16', '66.249.66.49');
INSERT INTO `stats` VALUES (2263, '2012/01/16', '77.88.42.25');
INSERT INTO `stats` VALUES (2264, '2012/01/16', '157.55.17.192');
INSERT INTO `stats` VALUES (2265, '2012/01/17', '77.88.42.25');
INSERT INTO `stats` VALUES (2266, '2012/01/17', '66.249.72.241');
INSERT INTO `stats` VALUES (2267, '2012/01/17', '66.249.66.34');
INSERT INTO `stats` VALUES (2268, '2012/01/17', '65.52.110.17');
INSERT INTO `stats` VALUES (2269, '2012/01/18', '208.115.113.84');
INSERT INTO `stats` VALUES (2270, '2012/01/18', '207.46.204.192');
INSERT INTO `stats` VALUES (2271, '2012/01/18', '65.52.110.17');
INSERT INTO `stats` VALUES (2272, '2012/01/19', '41.225.14.2');
INSERT INTO `stats` VALUES (2273, '2012/01/19', '75.101.181.182');
INSERT INTO `stats` VALUES (2274, '2012/01/19', '66.249.66.49');
INSERT INTO `stats` VALUES (2275, '2012/01/19', '66.249.72.218');
INSERT INTO `stats` VALUES (2276, '2012/01/19', '208.115.111.68');
INSERT INTO `stats` VALUES (2277, '2012/01/20', '77.88.42.25');
INSERT INTO `stats` VALUES (2278, '2012/01/20', '65.52.104.29');
INSERT INTO `stats` VALUES (2279, '2012/01/21', '212.113.37.105');
INSERT INTO `stats` VALUES (2280, '2012/01/21', '208.115.113.84');
INSERT INTO `stats` VALUES (2281, '2012/01/21', '208.115.111.68');
INSERT INTO `stats` VALUES (2282, '2012/01/21', '66.249.71.200');
INSERT INTO `stats` VALUES (2283, '2012/01/21', '195.42.102.21');
INSERT INTO `stats` VALUES (2284, '2012/01/23', '194.167.235.232');
INSERT INTO `stats` VALUES (2285, '2012/01/24', '78.114.80.163');
INSERT INTO `stats` VALUES (2286, '2012/01/24', '66.249.72.218');
INSERT INTO `stats` VALUES (2287, '2012/01/24', '77.88.42.25');
INSERT INTO `stats` VALUES (2288, '2012/01/25', '207.46.192.50');
INSERT INTO `stats` VALUES (2289, '2012/01/25', '130.223.16.188');
INSERT INTO `stats` VALUES (2290, '2012/01/25', '95.108.151.244');
INSERT INTO `stats` VALUES (2291, '2012/01/25', '66.249.72.218');
INSERT INTO `stats` VALUES (2292, '2012/01/26', '82.231.177.126');
INSERT INTO `stats` VALUES (2293, '2012/01/26', '119.63.196.126');
INSERT INTO `stats` VALUES (2294, '2012/01/26', '66.249.66.184');
INSERT INTO `stats` VALUES (2295, '2012/01/27', '66.249.66.184');
INSERT INTO `stats` VALUES (2296, '2012/01/27', '207.46.192.50');
INSERT INTO `stats` VALUES (2297, '2012/01/27', '77.88.42.25');
INSERT INTO `stats` VALUES (2298, '2012/01/27', '78.127.12.21');
INSERT INTO `stats` VALUES (2299, '2012/01/28', '66.249.66.184');
INSERT INTO `stats` VALUES (2300, '2012/01/28', '157.55.17.193');
INSERT INTO `stats` VALUES (2301, '2012/01/29', '90.6.145.111');
INSERT INTO `stats` VALUES (2302, '2012/01/30', '66.249.66.184');
INSERT INTO `stats` VALUES (2303, '2012/01/30', '66.249.66.49');
INSERT INTO `stats` VALUES (2304, '2012/01/30', '46.4.104.188');
INSERT INTO `stats` VALUES (2305, '2012/01/30', '82.253.11.221');
INSERT INTO `stats` VALUES (2306, '2012/01/30', '217.172.172.126');
INSERT INTO `stats` VALUES (2307, '2012/01/30', '89.80.161.91');
INSERT INTO `stats` VALUES (2308, '2012/01/30', '65.52.104.28');
INSERT INTO `stats` VALUES (2309, '2012/01/30', '77.222.128.221');
INSERT INTO `stats` VALUES (2310, '2012/01/31', '65.52.104.84');
INSERT INTO `stats` VALUES (2311, '2012/01/31', '207.46.13.117');
INSERT INTO `stats` VALUES (2312, '2012/01/31', '66.249.66.49');
INSERT INTO `stats` VALUES (2313, '2012/01/31', '78.127.12.21');
INSERT INTO `stats` VALUES (2314, '2012/01/31', '87.89.136.88');
INSERT INTO `stats` VALUES (2315, '2012/02/01', '66.249.72.40');
INSERT INTO `stats` VALUES (2316, '2012/02/01', '89.123.25.82');
INSERT INTO `stats` VALUES (2317, '2012/02/01', '176.74.192.88');
INSERT INTO `stats` VALUES (2318, '2012/02/01', '77.88.42.25');
INSERT INTO `stats` VALUES (2319, '2012/02/01', '78.127.12.21');
INSERT INTO `stats` VALUES (2320, '2012/02/02', '66.249.71.98');
INSERT INTO `stats` VALUES (2321, '2012/02/02', '77.88.42.25');
INSERT INTO `stats` VALUES (2322, '2012/02/02', '65.52.110.190');
INSERT INTO `stats` VALUES (2323, '2012/02/03', '66.249.71.200');
INSERT INTO `stats` VALUES (2324, '2012/02/04', '77.88.42.25');
INSERT INTO `stats` VALUES (2325, '2012/02/06', '207.46.199.39');
INSERT INTO `stats` VALUES (2326, '2012/02/06', '77.88.42.25');
INSERT INTO `stats` VALUES (2327, '2012/02/07', '66.249.72.218');
INSERT INTO `stats` VALUES (2328, '2012/02/08', '65.52.108.148');
INSERT INTO `stats` VALUES (2329, '2012/02/08', '66.249.72.218');
INSERT INTO `stats` VALUES (2330, '2012/02/09', '83.156.180.10');
INSERT INTO `stats` VALUES (2331, '2012/02/09', '66.249.71.200');
INSERT INTO `stats` VALUES (2332, '2012/02/10', '193.47.80.43');
INSERT INTO `stats` VALUES (2333, '2012/02/11', '66.249.72.40');
INSERT INTO `stats` VALUES (2334, '2012/02/12', '207.46.204.175');
INSERT INTO `stats` VALUES (2335, '2012/02/13', '66.249.72.40');
INSERT INTO `stats` VALUES (2336, '2012/02/14', '65.52.108.69');
INSERT INTO `stats` VALUES (2337, '2012/02/14', '207.46.204.177');
INSERT INTO `stats` VALUES (2338, '2012/02/14', '207.46.199.49');
INSERT INTO `stats` VALUES (2339, '2012/02/14', '65.52.108.68');
INSERT INTO `stats` VALUES (2340, '2012/02/15', '66.249.72.218');
INSERT INTO `stats` VALUES (2341, '2012/02/15', '78.127.12.136');
INSERT INTO `stats` VALUES (2342, '2012/02/16', '66.249.72.49');
INSERT INTO `stats` VALUES (2343, '2012/02/16', '82.228.191.35');
INSERT INTO `stats` VALUES (2344, '2012/02/16', '65.52.110.190');
INSERT INTO `stats` VALUES (2345, '2012/02/16', '77.88.42.25');
INSERT INTO `stats` VALUES (2346, '2012/02/17', '207.46.199.52');
INSERT INTO `stats` VALUES (2347, '2012/02/17', '66.249.72.49');
INSERT INTO `stats` VALUES (2348, '2012/02/17', '207.46.194.86');
INSERT INTO `stats` VALUES (2349, '2012/02/17', '77.88.42.25');
INSERT INTO `stats` VALUES (2350, '2012/02/17', '65.52.108.198');
INSERT INTO `stats` VALUES (2351, '2012/02/17', '78.127.12.136');
INSERT INTO `stats` VALUES (2352, '2012/02/17', '66.249.66.184');
INSERT INTO `stats` VALUES (2353, '2012/02/18', '77.88.42.25');
INSERT INTO `stats` VALUES (2354, '2012/02/18', '66.249.66.184');
INSERT INTO `stats` VALUES (2355, '2012/02/19', '78.122.155.101');
INSERT INTO `stats` VALUES (2356, '2012/02/20', '66.249.72.218');
INSERT INTO `stats` VALUES (2357, '2012/02/20', '69.84.207.147');
INSERT INTO `stats` VALUES (2358, '2012/02/21', '157.55.17.144');
INSERT INTO `stats` VALUES (2359, '2012/02/21', '77.222.128.221');
INSERT INTO `stats` VALUES (2360, '2012/02/21', '207.46.195.105');
INSERT INTO `stats` VALUES (2361, '2012/02/21', '78.127.12.136');
INSERT INTO `stats` VALUES (2362, '2012/02/22', '92.141.201.72');
INSERT INTO `stats` VALUES (2363, '2012/02/23', '157.55.18.25');
INSERT INTO `stats` VALUES (2364, '2012/02/23', '66.249.66.184');
INSERT INTO `stats` VALUES (2365, '2012/02/23', '46.4.100.138');
INSERT INTO `stats` VALUES (2366, '2012/02/23', '66.249.66.49');
INSERT INTO `stats` VALUES (2367, '2012/02/23', '66.249.66.123');
INSERT INTO `stats` VALUES (2368, '2012/02/23', '66.249.72.49');
INSERT INTO `stats` VALUES (2369, '2012/02/24', '92.85.42.209');
INSERT INTO `stats` VALUES (2370, '2012/02/24', '69.84.207.147');
INSERT INTO `stats` VALUES (2371, '2012/02/24', '77.88.42.25');
INSERT INTO `stats` VALUES (2372, '2012/02/24', '91.67.170.7');
INSERT INTO `stats` VALUES (2373, '2012/02/25', '77.88.42.25');
INSERT INTO `stats` VALUES (2374, '2012/02/25', '193.47.80.47');
INSERT INTO `stats` VALUES (2375, '2012/02/25', '91.67.170.7');
INSERT INTO `stats` VALUES (2376, '2012/02/26', '77.88.42.25');
INSERT INTO `stats` VALUES (2377, '2012/02/26', '119.63.196.60');
INSERT INTO `stats` VALUES (2378, '2012/02/26', '78.127.12.136');
INSERT INTO `stats` VALUES (2379, '2012/02/27', '193.47.80.47');
INSERT INTO `stats` VALUES (2380, '2012/02/27', '77.222.128.221');
INSERT INTO `stats` VALUES (2381, '2012/02/27', '66.249.66.123');
INSERT INTO `stats` VALUES (2382, '2012/02/27', '77.88.42.25');
INSERT INTO `stats` VALUES (2383, '2012/02/28', '207.46.13.49');
INSERT INTO `stats` VALUES (2384, '2012/02/28', '66.249.72.250');
INSERT INTO `stats` VALUES (2385, '2012/02/28', '86.74.242.159');
INSERT INTO `stats` VALUES (2386, '2012/02/28', '41.251.183.95');
INSERT INTO `stats` VALUES (2387, '2012/02/28', '207.46.204.180');
INSERT INTO `stats` VALUES (2388, '2012/02/29', '213.186.127.13');
INSERT INTO `stats` VALUES (2389, '2012/03/01', '66.249.71.58');
INSERT INTO `stats` VALUES (2390, '2012/03/01', '78.127.190.108');
INSERT INTO `stats` VALUES (2391, '2012/03/01', '66.249.66.123');
INSERT INTO `stats` VALUES (2392, '2012/03/01', '207.46.13.93');
INSERT INTO `stats` VALUES (2393, '2012/03/02', '66.249.71.58');
INSERT INTO `stats` VALUES (2394, '2012/03/02', '65.52.109.73');
INSERT INTO `stats` VALUES (2395, '2012/03/03', '157.55.17.146');
INSERT INTO `stats` VALUES (2396, '2012/03/04', '91.67.170.7');
INSERT INTO `stats` VALUES (2397, '2012/03/04', '66.249.66.123');
INSERT INTO `stats` VALUES (2398, '2012/03/04', '213.186.127.13');
INSERT INTO `stats` VALUES (2399, '2012/03/04', '77.88.42.25');
INSERT INTO `stats` VALUES (2400, '2012/03/04', '78.232.89.249');
INSERT INTO `stats` VALUES (2401, '2012/03/05', '207.46.13.206');
INSERT INTO `stats` VALUES (2402, '2012/03/05', '207.46.199.53');
INSERT INTO `stats` VALUES (2403, '2012/03/05', '208.115.111.68');
INSERT INTO `stats` VALUES (2404, '2012/03/05', '213.186.127.13');
INSERT INTO `stats` VALUES (2405, '2012/03/05', '66.249.66.123');
INSERT INTO `stats` VALUES (2406, '2012/03/05', '65.52.109.153');
INSERT INTO `stats` VALUES (2407, '2012/03/06', '208.115.111.68');
INSERT INTO `stats` VALUES (2408, '2012/03/06', '65.52.104.28');
INSERT INTO `stats` VALUES (2409, '2012/03/06', '213.186.127.13');
INSERT INTO `stats` VALUES (2410, '2012/03/06', '217.11.47.143');
INSERT INTO `stats` VALUES (2411, '2012/03/07', '77.88.42.25');
INSERT INTO `stats` VALUES (2412, '2012/03/07', '213.186.127.13');
INSERT INTO `stats` VALUES (2413, '2012/03/07', '41.202.70.203');
INSERT INTO `stats` VALUES (2414, '2012/03/07', '66.249.66.238');
INSERT INTO `stats` VALUES (2415, '2012/03/07', '208.115.113.84');
INSERT INTO `stats` VALUES (2416, '2012/03/08', '157.55.17.146');
INSERT INTO `stats` VALUES (2417, '2012/03/08', '77.88.42.25');
INSERT INTO `stats` VALUES (2418, '2012/03/08', '207.46.199.55');
INSERT INTO `stats` VALUES (2419, '2012/03/09', '65.52.109.152');
INSERT INTO `stats` VALUES (2420, '2012/03/09', '82.249.75.138');
INSERT INTO `stats` VALUES (2421, '2012/03/09', '82.254.254.44');
INSERT INTO `stats` VALUES (2422, '2012/03/09', '41.248.108.7');
INSERT INTO `stats` VALUES (2423, '2012/03/09', '66.249.66.123');
INSERT INTO `stats` VALUES (2424, '2012/03/09', '77.88.42.25');
INSERT INTO `stats` VALUES (2425, '2012/03/09', '66.249.66.238');
INSERT INTO `stats` VALUES (2426, '2012/03/09', '37.8.174.160');
INSERT INTO `stats` VALUES (2427, '2012/03/09', '65.52.104.26');
INSERT INTO `stats` VALUES (2428, '2012/03/10', '213.186.127.13');
INSERT INTO `stats` VALUES (2429, '2012/03/10', '66.249.72.250');
INSERT INTO `stats` VALUES (2430, '2012/03/10', '107.22.147.101');
INSERT INTO `stats` VALUES (2431, '2012/03/10', '197.28.112.101');
INSERT INTO `stats` VALUES (2432, '2012/03/11', '77.88.42.25');
INSERT INTO `stats` VALUES (2433, '2012/03/11', '208.115.111.68');
INSERT INTO `stats` VALUES (2434, '2012/03/11', '66.219.58.44');
INSERT INTO `stats` VALUES (2435, '2012/03/11', '37.8.169.230');
INSERT INTO `stats` VALUES (2436, '2012/03/12', '66.249.72.250');
INSERT INTO `stats` VALUES (2437, '2012/03/12', '66.249.72.90');
INSERT INTO `stats` VALUES (2438, '2012/03/13', '77.88.42.25');
INSERT INTO `stats` VALUES (2439, '2012/03/13', '78.127.12.136');
INSERT INTO `stats` VALUES (2440, '2012/03/13', '128.30.52.165');
INSERT INTO `stats` VALUES (2441, '2012/03/13', '213.186.127.13');
INSERT INTO `stats` VALUES (2442, '2012/03/13', '208.115.113.84');
INSERT INTO `stats` VALUES (2443, '2012/03/13', '41.227.157.139');
INSERT INTO `stats` VALUES (2444, '2012/03/14', '178.63.159.75');
INSERT INTO `stats` VALUES (2445, '2012/03/14', '66.249.71.229');
INSERT INTO `stats` VALUES (2446, '2012/03/14', '66.249.71.58');
INSERT INTO `stats` VALUES (2447, '2012/03/14', '77.88.42.25');
INSERT INTO `stats` VALUES (2448, '2012/03/14', '66.249.72.250');
INSERT INTO `stats` VALUES (2449, '2012/03/14', '213.186.127.13');
INSERT INTO `stats` VALUES (2450, '2012/03/14', '184.173.115.50');
INSERT INTO `stats` VALUES (2451, '2012/03/15', '193.47.80.47');
INSERT INTO `stats` VALUES (2452, '2012/03/15', '77.88.42.25');
INSERT INTO `stats` VALUES (2453, '2012/03/15', '88.168.130.15');
INSERT INTO `stats` VALUES (2454, '2012/03/15', '213.186.127.13');
INSERT INTO `stats` VALUES (2455, '2012/03/15', '77.75.77.11');
INSERT INTO `stats` VALUES (2456, '2012/03/15', '66.249.66.177');
INSERT INTO `stats` VALUES (2457, '2012/03/15', '91.67.65.55');
INSERT INTO `stats` VALUES (2458, '2012/03/16', '66.249.72.90');
INSERT INTO `stats` VALUES (2459, '2012/03/16', '69.20.12.93');
INSERT INTO `stats` VALUES (2460, '2012/03/16', '66.249.66.177');
INSERT INTO `stats` VALUES (2461, '2012/03/16', '193.47.80.47');
INSERT INTO `stats` VALUES (2462, '2012/03/16', '91.67.65.55');
INSERT INTO `stats` VALUES (2463, '2012/03/16', '208.115.113.84');
INSERT INTO `stats` VALUES (2464, '2012/03/16', '193.47.80.43');
INSERT INTO `stats` VALUES (2465, '2012/03/17', '66.249.66.86');
INSERT INTO `stats` VALUES (2466, '2012/03/17', '193.47.80.47');
INSERT INTO `stats` VALUES (2467, '2012/03/17', '208.115.113.84');
INSERT INTO `stats` VALUES (2468, '2012/03/17', '62.73.5.173');
INSERT INTO `stats` VALUES (2469, '2012/03/17', '66.249.72.90');
INSERT INTO `stats` VALUES (2470, '2012/03/17', '66.249.66.177');
INSERT INTO `stats` VALUES (2471, '2012/03/17', '66.249.72.250');
INSERT INTO `stats` VALUES (2472, '2012/03/17', '213.186.127.13');
INSERT INTO `stats` VALUES (2473, '2012/03/18', '66.249.72.250');
INSERT INTO `stats` VALUES (2474, '2012/03/18', '79.86.89.59');
INSERT INTO `stats` VALUES (2475, '2012/03/19', '66.249.66.177');
INSERT INTO `stats` VALUES (2476, '2012/03/19', '207.46.192.48');
INSERT INTO `stats` VALUES (2477, '2012/03/19', '157.55.18.25');
INSERT INTO `stats` VALUES (2478, '2012/03/19', '208.115.111.68');
INSERT INTO `stats` VALUES (2479, '2012/03/19', '208.115.113.84');
INSERT INTO `stats` VALUES (2480, '2012/03/19', '66.249.66.86');
INSERT INTO `stats` VALUES (2481, '2012/03/19', '66.249.72.250');
INSERT INTO `stats` VALUES (2482, '2012/03/20', '188.94.113.95');
INSERT INTO `stats` VALUES (2483, '2012/03/20', '157.55.18.25');
INSERT INTO `stats` VALUES (2484, '2012/03/20', '213.186.127.13');
INSERT INTO `stats` VALUES (2485, '2012/03/20', '77.88.42.25');
INSERT INTO `stats` VALUES (2486, '2012/03/20', '66.249.72.250');
INSERT INTO `stats` VALUES (2487, '2012/03/20', '208.115.111.68');
INSERT INTO `stats` VALUES (2488, '2012/03/20', '66.249.66.177');
INSERT INTO `stats` VALUES (2489, '2012/03/21', '65.52.108.66');
INSERT INTO `stats` VALUES (2490, '2012/03/21', '77.75.77.17');
INSERT INTO `stats` VALUES (2491, '2012/03/21', '66.249.71.58');
INSERT INTO `stats` VALUES (2492, '2012/03/21', '66.249.66.86');
INSERT INTO `stats` VALUES (2493, '2012/03/21', '66.219.58.45');
INSERT INTO `stats` VALUES (2494, '2012/03/22', '213.186.127.13');
INSERT INTO `stats` VALUES (2495, '2012/03/22', '208.115.113.84');
INSERT INTO `stats` VALUES (2496, '2012/03/22', '66.249.71.229');
INSERT INTO `stats` VALUES (2497, '2012/03/22', '66.249.66.86');
INSERT INTO `stats` VALUES (2498, '2012/03/22', '65.52.110.201');
INSERT INTO `stats` VALUES (2499, '2012/03/23', '77.88.42.25');
INSERT INTO `stats` VALUES (2500, '2012/03/23', '207.46.204.241');
INSERT INTO `stats` VALUES (2501, '2012/03/23', '66.249.66.86');
INSERT INTO `stats` VALUES (2502, '2012/03/23', '213.186.127.13');
INSERT INTO `stats` VALUES (2503, '2012/03/23', '109.10.210.232');
INSERT INTO `stats` VALUES (2504, '2012/03/23', '66.249.66.177');
INSERT INTO `stats` VALUES (2505, '2012/03/24', '77.75.77.11');
INSERT INTO `stats` VALUES (2506, '2012/03/24', '80.185.182.233');
INSERT INTO `stats` VALUES (2507, '2012/03/24', '78.232.89.249');
INSERT INTO `stats` VALUES (2508, '2012/03/24', '77.88.42.25');
INSERT INTO `stats` VALUES (2509, '2012/03/24', '66.249.71.58');
INSERT INTO `stats` VALUES (2510, '2012/03/24', '107.22.53.157');
INSERT INTO `stats` VALUES (2511, '2012/03/25', '208.115.111.68');
INSERT INTO `stats` VALUES (2512, '2012/03/25', '213.186.127.13');
INSERT INTO `stats` VALUES (2513, '2012/03/25', '207.46.199.54');
INSERT INTO `stats` VALUES (2514, '2012/03/25', '157.55.16.231');
INSERT INTO `stats` VALUES (2515, '2012/03/25', '66.249.71.229');
INSERT INTO `stats` VALUES (2516, '2012/03/25', '207.46.195.237');
INSERT INTO `stats` VALUES (2517, '2012/03/25', '193.47.80.47');
INSERT INTO `stats` VALUES (2518, '2012/03/25', '66.249.71.58');
INSERT INTO `stats` VALUES (2519, '2012/03/26', '207.46.195.237');
INSERT INTO `stats` VALUES (2520, '2012/03/26', '207.46.199.54');
INSERT INTO `stats` VALUES (2521, '2012/03/26', '77.75.77.17');
INSERT INTO `stats` VALUES (2522, '2012/03/26', '157.55.112.239');
INSERT INTO `stats` VALUES (2523, '2012/03/26', '141.227.1.38');
INSERT INTO `stats` VALUES (2524, '2012/03/26', '46.218.165.74');
INSERT INTO `stats` VALUES (2525, '2012/03/26', '66.249.71.58');
INSERT INTO `stats` VALUES (2526, '2012/03/26', '93.20.168.120');
INSERT INTO `stats` VALUES (2527, '2012/03/27', '66.249.71.58');
INSERT INTO `stats` VALUES (2528, '2012/03/27', '77.88.42.25');
INSERT INTO `stats` VALUES (2529, '2012/03/27', '66.249.71.229');
INSERT INTO `stats` VALUES (2530, '2012/03/27', '193.47.80.43');
INSERT INTO `stats` VALUES (2531, '2012/03/27', '157.55.18.23');
INSERT INTO `stats` VALUES (2532, '2012/03/27', '66.249.71.244');
INSERT INTO `stats` VALUES (2533, '2012/03/27', '79.86.89.59');
INSERT INTO `stats` VALUES (2534, '2012/03/28', '208.115.113.84');
INSERT INTO `stats` VALUES (2535, '2012/03/28', '77.88.42.25');
INSERT INTO `stats` VALUES (2536, '2012/03/28', '66.249.71.58');
INSERT INTO `stats` VALUES (2537, '2012/03/28', '157.55.18.22');
INSERT INTO `stats` VALUES (2538, '2012/03/28', '77.75.77.17');
INSERT INTO `stats` VALUES (2539, '2012/03/28', '65.52.108.200');
INSERT INTO `stats` VALUES (2540, '2012/03/28', '193.47.80.43');
INSERT INTO `stats` VALUES (2541, '2012/03/28', '213.186.127.13');
INSERT INTO `stats` VALUES (2542, '2012/03/29', '66.249.71.58');
INSERT INTO `stats` VALUES (2543, '2012/03/29', '184.73.96.165');
INSERT INTO `stats` VALUES (2544, '2012/03/29', '157.55.18.22');
INSERT INTO `stats` VALUES (2545, '2012/03/29', '207.46.12.60');
INSERT INTO `stats` VALUES (2546, '2012/03/29', '77.75.77.11');
INSERT INTO `stats` VALUES (2547, '2012/03/30', '77.88.42.25');
INSERT INTO `stats` VALUES (2548, '2012/03/30', '46.105.5.195');
INSERT INTO `stats` VALUES (2549, '2012/03/30', '66.249.71.238');
INSERT INTO `stats` VALUES (2550, '2012/03/30', '80.13.157.218');
INSERT INTO `stats` VALUES (2551, '2012/03/31', '77.75.77.11');
INSERT INTO `stats` VALUES (2552, '2012/03/31', '66.249.71.58');
INSERT INTO `stats` VALUES (2553, '2012/03/31', '217.67.144.198');
INSERT INTO `stats` VALUES (2554, '2012/03/31', '208.115.113.84');
INSERT INTO `stats` VALUES (2555, '2012/03/31', '65.52.110.16');
INSERT INTO `stats` VALUES (2556, '2012/03/31', '88.174.228.56');
INSERT INTO `stats` VALUES (2557, '2012/04/01', '91.67.80.223');
INSERT INTO `stats` VALUES (2558, '2012/04/01', '77.88.42.25');
INSERT INTO `stats` VALUES (2559, '2012/04/01', '204.11.219.91');
INSERT INTO `stats` VALUES (2560, '2012/04/02', '91.67.80.223');
INSERT INTO `stats` VALUES (2561, '2012/04/02', '189.23.28.90');
INSERT INTO `stats` VALUES (2562, '2012/04/02', '184.73.75.144');
INSERT INTO `stats` VALUES (2563, '2012/04/02', '208.115.111.68');
INSERT INTO `stats` VALUES (2564, '2012/04/02', '66.249.71.58');
INSERT INTO `stats` VALUES (2565, '2012/04/03', '77.88.42.25');
INSERT INTO `stats` VALUES (2566, '2012/04/03', '208.115.113.84');
INSERT INTO `stats` VALUES (2567, '2012/04/03', '65.52.108.66');
INSERT INTO `stats` VALUES (2568, '2012/04/03', '66.249.71.58');
INSERT INTO `stats` VALUES (2569, '2012/04/03', '207.46.199.248');
INSERT INTO `stats` VALUES (2570, '2012/04/03', '207.46.194.83');
INSERT INTO `stats` VALUES (2571, '2012/04/03', '208.115.111.68');
INSERT INTO `stats` VALUES (2572, '2012/04/04', '66.249.71.58');
INSERT INTO `stats` VALUES (2573, '2012/04/04', '207.46.192.48');
INSERT INTO `stats` VALUES (2574, '2012/04/04', '65.52.110.16');
INSERT INTO `stats` VALUES (2575, '2012/04/04', '93.20.229.20');
INSERT INTO `stats` VALUES (2576, '2012/04/04', '82.228.191.35');
INSERT INTO `stats` VALUES (2577, '2012/04/04', '174.129.176.169');
INSERT INTO `stats` VALUES (2578, '2012/04/05', '207.46.192.48');
INSERT INTO `stats` VALUES (2579, '2012/04/05', '119.63.196.126');
INSERT INTO `stats` VALUES (2580, '2012/04/05', '66.249.72.232');
INSERT INTO `stats` VALUES (2581, '2012/04/05', '66.249.71.34');
INSERT INTO `stats` VALUES (2582, '2012/04/06', '77.88.42.25');
INSERT INTO `stats` VALUES (2583, '2012/04/07', '77.75.77.11');
INSERT INTO `stats` VALUES (2584, '2012/04/07', '77.88.42.25');
INSERT INTO `stats` VALUES (2585, '2012/04/07', '66.249.71.34');
INSERT INTO `stats` VALUES (2586, '2012/04/07', '65.52.110.16');
INSERT INTO `stats` VALUES (2587, '2012/04/07', '89.123.36.219');
INSERT INTO `stats` VALUES (2588, '2012/04/08', '157.55.18.25');
INSERT INTO `stats` VALUES (2589, '2012/04/09', '208.115.111.68');
INSERT INTO `stats` VALUES (2590, '2012/04/10', '66.249.71.34');
INSERT INTO `stats` VALUES (2591, '2012/04/10', '77.88.42.25');
INSERT INTO `stats` VALUES (2592, '2012/04/10', '204.11.219.71');
INSERT INTO `stats` VALUES (2593, '2012/04/10', '79.86.120.234');
INSERT INTO `stats` VALUES (2594, '2012/04/11', '66.249.71.34');
INSERT INTO `stats` VALUES (2595, '2012/04/11', '77.75.77.17');
INSERT INTO `stats` VALUES (2596, '2012/04/11', '157.55.16.231');
INSERT INTO `stats` VALUES (2597, '2012/04/11', '207.46.195.237');
INSERT INTO `stats` VALUES (2598, '2012/04/11', '208.115.113.84');
INSERT INTO `stats` VALUES (2599, '2012/04/12', '207.46.195.237');
INSERT INTO `stats` VALUES (2600, '2012/04/12', '193.47.80.47');
INSERT INTO `stats` VALUES (2601, '2012/04/12', '77.88.42.25');
INSERT INTO `stats` VALUES (2602, '2012/04/13', '157.55.18.23');
INSERT INTO `stats` VALUES (2603, '2012/04/13', '172.21.12.8');
INSERT INTO `stats` VALUES (2604, '2012/04/14', '77.88.42.25');
INSERT INTO `stats` VALUES (2605, '2012/04/14', '207.46.194.89');
INSERT INTO `stats` VALUES (2606, '2012/04/14', '208.115.113.84');
INSERT INTO `stats` VALUES (2607, '2012/04/15', '193.47.80.47');
INSERT INTO `stats` VALUES (2608, '2012/04/15', '65.52.108.200');
INSERT INTO `stats` VALUES (2609, '2012/04/15', '66.249.71.34');
INSERT INTO `stats` VALUES (2610, '2012/04/15', '208.115.113.84');
INSERT INTO `stats` VALUES (2611, '2012/04/15', '79.86.105.3');
INSERT INTO `stats` VALUES (2612, '2012/04/15', '172.24.20.4');
INSERT INTO `stats` VALUES (2613, '2012/04/16', '77.88.42.25');
INSERT INTO `stats` VALUES (2614, '2012/04/16', '77.75.77.17');
INSERT INTO `stats` VALUES (2615, '2012/04/16', '195.220.244.35');
INSERT INTO `stats` VALUES (2616, '2012/04/16', '193.47.80.47');
INSERT INTO `stats` VALUES (2617, '2012/04/17', '193.47.80.43');
INSERT INTO `stats` VALUES (2618, '2012/04/17', '77.88.42.25');
INSERT INTO `stats` VALUES (2619, '2012/04/17', '193.47.80.47');
INSERT INTO `stats` VALUES (2620, '2012/04/17', '77.75.77.17');
INSERT INTO `stats` VALUES (2621, '2012/04/17', '157.55.18.22');
INSERT INTO `stats` VALUES (2622, '2012/04/17', '207.46.199.54');
INSERT INTO `stats` VALUES (2623, '2012/04/17', '41.190.65.18');
INSERT INTO `stats` VALUES (2624, '2012/04/17', '208.115.111.68');
INSERT INTO `stats` VALUES (2625, '2012/04/18', '213.186.127.13');
INSERT INTO `stats` VALUES (2626, '2012/04/18', '212.198.229.233');
INSERT INTO `stats` VALUES (2627, '2012/04/18', '208.115.113.84');
INSERT INTO `stats` VALUES (2628, '2012/04/18', '90.26.62.14');
INSERT INTO `stats` VALUES (2629, '2012/04/18', '66.249.66.16');
INSERT INTO `stats` VALUES (2630, '2012/04/18', '208.115.111.68');
INSERT INTO `stats` VALUES (2631, '2012/04/19', '208.115.111.68');
INSERT INTO `stats` VALUES (2632, '2012/04/19', '213.186.127.13');
INSERT INTO `stats` VALUES (2633, '2012/04/19', '77.88.42.25');
INSERT INTO `stats` VALUES (2634, '2012/04/19', '66.249.66.16');
INSERT INTO `stats` VALUES (2635, '2012/04/19', '212.198.229.233');
INSERT INTO `stats` VALUES (2636, '2012/04/20', '66.249.68.152');
INSERT INTO `stats` VALUES (2637, '2012/04/20', '66.249.68.77');
INSERT INTO `stats` VALUES (2638, '2012/04/21', '77.88.42.25');
INSERT INTO `stats` VALUES (2639, '2012/04/21', '66.249.72.232');
INSERT INTO `stats` VALUES (2640, '2012/04/21', '95.211.1.151');
INSERT INTO `stats` VALUES (2641, '2012/04/21', '77.75.77.11');
INSERT INTO `stats` VALUES (2642, '2012/04/22', '66.249.66.16');
INSERT INTO `stats` VALUES (2643, '2012/04/22', '193.47.80.47');
INSERT INTO `stats` VALUES (2644, '2012/04/22', '77.75.77.11');
INSERT INTO `stats` VALUES (2645, '2012/04/23', '193.47.80.47');
INSERT INTO `stats` VALUES (2646, '2012/04/23', '66.249.72.232');
INSERT INTO `stats` VALUES (2647, '2012/04/23', '207.46.204.181');
INSERT INTO `stats` VALUES (2648, '2012/04/23', '41.104.93.219');
INSERT INTO `stats` VALUES (2649, '2012/04/23', '77.88.42.25');
INSERT INTO `stats` VALUES (2650, '2012/04/24', '208.115.113.84');
INSERT INTO `stats` VALUES (2651, '2012/04/24', '77.88.42.25');
INSERT INTO `stats` VALUES (2652, '2012/04/24', '65.52.108.66');
INSERT INTO `stats` VALUES (2653, '2012/04/24', '65.52.110.201');
INSERT INTO `stats` VALUES (2654, '2012/04/24', '208.115.111.68');
INSERT INTO `stats` VALUES (2655, '2012/04/25', '77.88.42.25');
INSERT INTO `stats` VALUES (2656, '2012/04/26', '77.88.42.25');
INSERT INTO `stats` VALUES (2657, '2012/04/26', '208.115.111.68');
INSERT INTO `stats` VALUES (2658, '2012/04/27', '208.115.113.84');
INSERT INTO `stats` VALUES (2659, '2012/04/27', '66.249.71.34');
INSERT INTO `stats` VALUES (2660, '2012/04/28', '213.186.122.2');
INSERT INTO `stats` VALUES (2661, '2012/04/28', '77.88.42.25');
INSERT INTO `stats` VALUES (2662, '2012/04/28', '208.115.113.84');
INSERT INTO `stats` VALUES (2663, '2012/04/28', '184.173.0.167');
INSERT INTO `stats` VALUES (2664, '2012/04/28', '207.46.195.237');
INSERT INTO `stats` VALUES (2665, '2012/04/28', '72.37.249.36');
INSERT INTO `stats` VALUES (2666, '2012/04/28', '213.186.127.13');
INSERT INTO `stats` VALUES (2667, '2012/04/28', '66.249.72.232');
INSERT INTO `stats` VALUES (2668, '2012/04/28', '66.219.58.44');
INSERT INTO `stats` VALUES (2669, '2012/04/28', '77.75.77.17');
INSERT INTO `stats` VALUES (2670, '2012/04/28', '65.52.110.16');
INSERT INTO `stats` VALUES (2671, '2012/04/29', '88.181.90.121');
INSERT INTO `stats` VALUES (2672, '2012/04/29', '65.52.109.151');
INSERT INTO `stats` VALUES (2673, '2012/04/29', '157.55.16.231');
INSERT INTO `stats` VALUES (2674, '2012/04/29', '77.88.42.25');
INSERT INTO `stats` VALUES (2675, '2012/04/29', '207.46.195.237');
INSERT INTO `stats` VALUES (2676, '2012/04/29', '65.52.109.200');
INSERT INTO `stats` VALUES (2677, '2012/04/29', '207.46.204.240');
INSERT INTO `stats` VALUES (2678, '2012/04/30', '208.115.113.84');
INSERT INTO `stats` VALUES (2679, '2012/04/30', '176.9.21.194');
INSERT INTO `stats` VALUES (2680, '2012/04/30', '197.253.153.193');
INSERT INTO `stats` VALUES (2681, '2012/05/01', '208.115.111.68');
INSERT INTO `stats` VALUES (2682, '2012/05/01', '66.249.72.232');
INSERT INTO `stats` VALUES (2683, '2012/05/01', '77.88.42.25');
INSERT INTO `stats` VALUES (2684, '2012/05/01', '208.115.113.84');
INSERT INTO `stats` VALUES (2685, '2012/05/02', '208.115.111.68');
INSERT INTO `stats` VALUES (2686, '2012/05/02', '77.88.42.25');
INSERT INTO `stats` VALUES (2687, '2012/05/02', '208.115.113.84');
INSERT INTO `stats` VALUES (2688, '2012/05/03', '66.249.71.101');
INSERT INTO `stats` VALUES (2689, '2012/05/03', '65.52.108.200');
INSERT INTO `stats` VALUES (2690, '2012/05/04', '66.249.71.101');
INSERT INTO `stats` VALUES (2691, '2012/05/04', '213.186.122.2');
INSERT INTO `stats` VALUES (2692, '2012/05/04', '77.88.42.25');
INSERT INTO `stats` VALUES (2693, '2012/05/04', '41.225.223.53');
INSERT INTO `stats` VALUES (2694, '2012/05/05', '119.63.196.28');
INSERT INTO `stats` VALUES (2695, '2012/05/05', '65.52.110.16');
INSERT INTO `stats` VALUES (2696, '2012/05/05', '77.88.42.25');
INSERT INTO `stats` VALUES (2697, '2012/05/05', '208.115.113.84');
INSERT INTO `stats` VALUES (2698, '2012/05/06', '213.186.122.2');
INSERT INTO `stats` VALUES (2699, '2012/05/06', '77.88.42.25');
INSERT INTO `stats` VALUES (2700, '2012/05/06', '66.219.58.44');
INSERT INTO `stats` VALUES (2701, '2012/05/06', '208.115.113.84');
INSERT INTO `stats` VALUES (2702, '2012/05/06', '86.76.102.43');
INSERT INTO `stats` VALUES (2703, '2012/05/07', '208.115.111.68');
INSERT INTO `stats` VALUES (2704, '2012/05/07', '58.246.90.202');
INSERT INTO `stats` VALUES (2705, '2012/05/07', '66.249.72.145');
INSERT INTO `stats` VALUES (2706, '2012/05/07', '66.249.66.59');
INSERT INTO `stats` VALUES (2707, '2012/05/07', '207.46.192.48');
INSERT INTO `stats` VALUES (2708, '2012/05/07', '192.168.224.247, 10.128.4');
INSERT INTO `stats` VALUES (2709, '2012/05/07', '192.168.224.247, 10.128.4');
INSERT INTO `stats` VALUES (2710, '2012/05/07', '67.221.59.56');
INSERT INTO `stats` VALUES (2711, '2012/05/07', '66.249.66.174');
INSERT INTO `stats` VALUES (2712, '2012/05/07', '207.46.204.240');
INSERT INTO `stats` VALUES (2713, '2012/05/08', '66.249.71.139');
INSERT INTO `stats` VALUES (2714, '2012/05/08', '65.52.110.16');
INSERT INTO `stats` VALUES (2715, '2012/05/08', '208.115.111.68');
INSERT INTO `stats` VALUES (2716, '2012/05/08', '157.55.18.25');
INSERT INTO `stats` VALUES (2717, '2012/05/08', '208.115.113.84');
INSERT INTO `stats` VALUES (2718, '2012/05/08', '65.52.110.199');
INSERT INTO `stats` VALUES (2719, '2012/05/09', '66.249.71.113');
INSERT INTO `stats` VALUES (2720, '2012/05/09', '213.186.122.2');
INSERT INTO `stats` VALUES (2721, '2012/05/09', '207.46.204.241');
INSERT INTO `stats` VALUES (2722, '2012/05/10', '213.186.122.2');
INSERT INTO `stats` VALUES (2723, '2012/05/10', '66.249.71.113');
INSERT INTO `stats` VALUES (2724, '2012/05/10', '157.55.18.23');
INSERT INTO `stats` VALUES (2725, '2012/05/10', '207.46.204.241');
INSERT INTO `stats` VALUES (2726, '2012/05/10', '84.98.2.102');
INSERT INTO `stats` VALUES (2727, '2012/05/10', '193.47.80.47');
INSERT INTO `stats` VALUES (2728, '2012/05/10', '82.192.66.250');
INSERT INTO `stats` VALUES (2729, '2012/05/11', '65.52.109.200');
INSERT INTO `stats` VALUES (2730, '2012/05/11', '66.249.71.113');
INSERT INTO `stats` VALUES (2731, '2012/05/11', '213.186.122.2');
INSERT INTO `stats` VALUES (2732, '2012/05/11', '157.55.18.23');
INSERT INTO `stats` VALUES (2733, '2012/05/11', '208.115.111.68');
INSERT INTO `stats` VALUES (2734, '2012/05/12', '208.115.113.84');
INSERT INTO `stats` VALUES (2735, '2012/05/12', '65.52.109.151');
INSERT INTO `stats` VALUES (2736, '2012/05/13', '66.249.71.113');
INSERT INTO `stats` VALUES (2737, '2012/05/13', '77.88.42.25');
INSERT INTO `stats` VALUES (2738, '2012/05/13', '208.115.113.84');
INSERT INTO `stats` VALUES (2739, '2012/05/13', '193.47.80.43');
INSERT INTO `stats` VALUES (2740, '2012/05/13', '207.46.204.181');
INSERT INTO `stats` VALUES (2741, '2012/05/14', '207.46.194.82');
INSERT INTO `stats` VALUES (2742, '2012/05/14', '207.46.194.125');
INSERT INTO `stats` VALUES (2743, '2012/05/14', '207.46.194.47');
INSERT INTO `stats` VALUES (2744, '2012/05/14', '217.128.22.167');
INSERT INTO `stats` VALUES (2745, '2012/05/14', '207.46.199.225');
INSERT INTO `stats` VALUES (2746, '2012/05/15', '207.46.194.40');
INSERT INTO `stats` VALUES (2747, '2012/05/15', '207.46.194.33');
INSERT INTO `stats` VALUES (2748, '2012/05/15', '77.88.42.25');
INSERT INTO `stats` VALUES (2749, '2012/05/15', '208.115.113.84');
INSERT INTO `stats` VALUES (2750, '2012/05/15', '207.46.195.237');
INSERT INTO `stats` VALUES (2751, '2012/05/15', '77.222.128.221');
INSERT INTO `stats` VALUES (2752, '2012/05/16', '77.222.128.221');
INSERT INTO `stats` VALUES (2753, '2012/05/16', '213.186.120.196');
INSERT INTO `stats` VALUES (2754, '2012/05/16', '207.46.204.240');
INSERT INTO `stats` VALUES (2755, '2012/05/16', '213.186.119.134');
INSERT INTO `stats` VALUES (2756, '2012/05/16', '213.186.127.14');
INSERT INTO `stats` VALUES (2757, '2012/05/16', '213.186.127.8');
INSERT INTO `stats` VALUES (2758, '2012/05/16', '213.186.119.138');
INSERT INTO `stats` VALUES (2759, '2012/05/16', '207.46.204.241');
INSERT INTO `stats` VALUES (2760, '2012/05/16', '213.186.119.144');
INSERT INTO `stats` VALUES (2761, '2012/05/16', '213.186.119.135');
INSERT INTO `stats` VALUES (2762, '2012/05/16', '213.186.122.3');
INSERT INTO `stats` VALUES (2763, '2012/05/16', '213.186.127.10');
INSERT INTO `stats` VALUES (2764, '2012/05/16', '213.186.127.12');
INSERT INTO `stats` VALUES (2765, '2012/05/16', '208.115.111.68');
INSERT INTO `stats` VALUES (2766, '2012/05/16', '208.115.113.84');
INSERT INTO `stats` VALUES (2767, '2012/05/16', '66.249.71.113');
INSERT INTO `stats` VALUES (2768, '2012/05/16', '157.55.18.23');
INSERT INTO `stats` VALUES (2769, '2012/05/17', '207.46.204.240');
INSERT INTO `stats` VALUES (2770, '2012/05/17', '157.55.16.231');
INSERT INTO `stats` VALUES (2771, '2012/05/17', '197.15.33.247');
INSERT INTO `stats` VALUES (2772, '2012/05/17', '213.186.122.3');
INSERT INTO `stats` VALUES (2773, '2012/05/17', '213.186.127.12');
INSERT INTO `stats` VALUES (2774, '2012/05/17', '213.186.119.137');
INSERT INTO `stats` VALUES (2775, '2012/05/17', '66.249.71.241');
INSERT INTO `stats` VALUES (2776, '2012/05/17', '207.46.195.237');
INSERT INTO `stats` VALUES (2777, '2012/05/17', '208.115.111.68');
INSERT INTO `stats` VALUES (2778, '2012/05/17', '199.187.122.98');
INSERT INTO `stats` VALUES (2779, '2012/05/17', '65.52.110.16');
INSERT INTO `stats` VALUES (2780, '2012/05/18', '208.115.111.68');
INSERT INTO `stats` VALUES (2781, '2012/05/18', '208.115.113.84');
INSERT INTO `stats` VALUES (2782, '2012/05/19', '207.46.194.45');
INSERT INTO `stats` VALUES (2783, '2012/05/19', '77.88.42.25');
INSERT INTO `stats` VALUES (2784, '2012/05/19', '85.168.219.190');
INSERT INTO `stats` VALUES (2785, '2012/05/19', '66.249.72.148');
INSERT INTO `stats` VALUES (2786, '2012/05/19', '65.52.110.16');
INSERT INTO `stats` VALUES (2787, '2012/05/19', '193.47.80.47');
INSERT INTO `stats` VALUES (2788, '2012/05/20', '177.19.99.186');
INSERT INTO `stats` VALUES (2789, '2012/05/20', '177.98.198.69');
INSERT INTO `stats` VALUES (2790, '2012/05/20', '66.249.72.148');
INSERT INTO `stats` VALUES (2791, '2012/05/21', '186.213.47.20');
INSERT INTO `stats` VALUES (2792, '2012/05/21', '196.206.235.71');
INSERT INTO `stats` VALUES (2793, '2012/05/22', '66.249.72.148');
INSERT INTO `stats` VALUES (2794, '2012/05/22', '207.46.204.240');
INSERT INTO `stats` VALUES (2795, '2012/05/22', '208.115.113.84');
INSERT INTO `stats` VALUES (2796, '2012/05/22', '199.187.122.98');
INSERT INTO `stats` VALUES (2797, '2012/05/22', '65.52.110.16');
INSERT INTO `stats` VALUES (2798, '2012/05/23', '213.186.119.139');
INSERT INTO `stats` VALUES (2799, '2012/05/23', '213.186.119.140');
INSERT INTO `stats` VALUES (2800, '2012/05/23', '213.186.127.4');
INSERT INTO `stats` VALUES (2801, '2012/05/23', '212.113.37.106');
INSERT INTO `stats` VALUES (2802, '2012/05/23', '213.186.127.6');
INSERT INTO `stats` VALUES (2803, '2012/05/23', '193.47.80.47');
INSERT INTO `stats` VALUES (2804, '2012/05/23', '213.186.122.3');
INSERT INTO `stats` VALUES (2805, '2012/05/23', '213.186.127.7');
INSERT INTO `stats` VALUES (2806, '2012/05/23', '213.186.120.196');
INSERT INTO `stats` VALUES (2807, '2012/05/23', '187.40.2.189');
INSERT INTO `stats` VALUES (2808, '2012/05/23', '208.115.113.84');
INSERT INTO `stats` VALUES (2809, '2012/05/23', '213.186.127.8');
INSERT INTO `stats` VALUES (2810, '2012/05/23', '157.55.18.22');
INSERT INTO `stats` VALUES (2811, '2012/05/24', '208.115.111.68');
INSERT INTO `stats` VALUES (2812, '2012/05/24', '212.113.37.105');
INSERT INTO `stats` VALUES (2813, '2012/05/24', '213.186.119.134');
INSERT INTO `stats` VALUES (2814, '2012/05/24', '213.186.127.28');
INSERT INTO `stats` VALUES (2815, '2012/05/24', '212.113.37.106');
INSERT INTO `stats` VALUES (2816, '2012/05/24', '213.186.119.140');
INSERT INTO `stats` VALUES (2817, '2012/05/24', '213.186.127.8');
INSERT INTO `stats` VALUES (2818, '2012/05/24', '65.52.108.200');
INSERT INTO `stats` VALUES (2819, '2012/05/24', '65.52.111.69');
INSERT INTO `stats` VALUES (2820, '2012/05/24', '65.52.110.199');
INSERT INTO `stats` VALUES (2821, '2012/05/25', '208.115.111.68');
INSERT INTO `stats` VALUES (2822, '2012/05/25', '208.115.113.84');
INSERT INTO `stats` VALUES (2823, '2012/05/26', '77.88.42.25');
INSERT INTO `stats` VALUES (2824, '2012/05/26', '65.52.111.208');
INSERT INTO `stats` VALUES (2825, '2012/05/28', '65.52.109.200');
INSERT INTO `stats` VALUES (2826, '2012/05/28', '82.192.66.250');
INSERT INTO `stats` VALUES (2827, '2012/05/28', '23.20.65.142');
INSERT INTO `stats` VALUES (2828, '2012/05/29', '208.115.113.84');
INSERT INTO `stats` VALUES (2829, '2012/05/29', '66.249.71.113');
INSERT INTO `stats` VALUES (2830, '2012/05/29', '207.46.199.241');
INSERT INTO `stats` VALUES (2831, '2012/05/29', '207.46.194.142');
INSERT INTO `stats` VALUES (2832, '2012/05/29', '157.55.18.23');
INSERT INTO `stats` VALUES (2833, '2012/05/29', '207.46.194.150');
INSERT INTO `stats` VALUES (2834, '2012/05/29', '207.46.194.71');
INSERT INTO `stats` VALUES (2835, '2012/05/29', '86.73.80.63');
INSERT INTO `stats` VALUES (2836, '2012/05/30', '23.20.112.121');
INSERT INTO `stats` VALUES (2837, '2012/05/30', '213.186.119.136');
INSERT INTO `stats` VALUES (2838, '2012/05/30', '65.52.109.151');
INSERT INTO `stats` VALUES (2839, '2012/05/30', '213.186.119.144');
INSERT INTO `stats` VALUES (2840, '2012/05/30', '212.113.37.105');
INSERT INTO `stats` VALUES (2841, '2012/05/30', '213.186.119.140');
INSERT INTO `stats` VALUES (2842, '2012/05/30', '213.186.119.138');
INSERT INTO `stats` VALUES (2843, '2012/05/30', '213.186.122.2');
INSERT INTO `stats` VALUES (2844, '2012/05/30', '208.115.113.84');
INSERT INTO `stats` VALUES (2845, '2012/05/31', '66.249.72.197');
INSERT INTO `stats` VALUES (2846, '2012/05/31', '77.88.42.25');
INSERT INTO `stats` VALUES (2847, '2012/05/31', '217.128.22.167');
INSERT INTO `stats` VALUES (2848, '2012/05/31', '80.13.233.234');
INSERT INTO `stats` VALUES (2849, '2012/06/01', '85.17.171.225');
INSERT INTO `stats` VALUES (2850, '2012/06/01', '65.52.110.16');
INSERT INTO `stats` VALUES (2851, '2012/06/01', '69.84.207.246');
INSERT INTO `stats` VALUES (2852, '2012/06/02', '193.47.80.47');
INSERT INTO `stats` VALUES (2853, '2012/06/02', '208.115.113.84');
INSERT INTO `stats` VALUES (2854, '2012/06/02', '82.227.246.147');
INSERT INTO `stats` VALUES (2855, '2012/06/02', '65.52.110.16');
INSERT INTO `stats` VALUES (2856, '2012/06/02', '66.249.72.20');
INSERT INTO `stats` VALUES (2857, '2012/06/02', '207.46.199.54');
INSERT INTO `stats` VALUES (2858, '2012/06/02', '157.55.18.23');
INSERT INTO `stats` VALUES (2859, '2012/06/02', '207.46.204.241');
INSERT INTO `stats` VALUES (2860, '2012/06/03', '187.40.56.166');
INSERT INTO `stats` VALUES (2861, '2012/06/03', '208.115.113.84');
INSERT INTO `stats` VALUES (2862, '2012/06/03', '66.249.72.235');
INSERT INTO `stats` VALUES (2863, '2012/06/04', '207.46.204.240');
INSERT INTO `stats` VALUES (2864, '2012/06/04', '130.79.208.41');
INSERT INTO `stats` VALUES (2865, '2012/06/04', '157.55.16.231');
INSERT INTO `stats` VALUES (2866, '2012/06/04', '193.47.80.43');
INSERT INTO `stats` VALUES (2867, '2012/06/05', '83.203.111.77');
INSERT INTO `stats` VALUES (2868, '2012/06/06', '178.154.173.29');
INSERT INTO `stats` VALUES (2869, '2012/06/06', '78.121.77.240');
INSERT INTO `stats` VALUES (2870, '2012/06/06', '207.46.194.79');
INSERT INTO `stats` VALUES (2871, '2012/06/07', '207.46.199.52');
INSERT INTO `stats` VALUES (2872, '2012/06/07', '207.46.199.242');
INSERT INTO `stats` VALUES (2873, '2012/06/07', '213.186.119.143');
INSERT INTO `stats` VALUES (2874, '2012/06/07', '178.154.173.29');
INSERT INTO `stats` VALUES (2875, '2012/06/07', '41.96.5.211');
INSERT INTO `stats` VALUES (2876, '2012/06/08', '213.186.127.12');
INSERT INTO `stats` VALUES (2877, '2012/06/08', '213.186.127.11');
INSERT INTO `stats` VALUES (2878, '2012/06/08', '157.55.16.219');
INSERT INTO `stats` VALUES (2879, '2012/06/09', '213.186.122.2');
INSERT INTO `stats` VALUES (2880, '2012/06/09', '187.40.49.139');
INSERT INTO `stats` VALUES (2881, '2012/06/09', '66.249.72.235');
INSERT INTO `stats` VALUES (2882, '2012/06/09', '87.91.201.109');
INSERT INTO `stats` VALUES (2883, '2012/06/09', '213.186.120.196');
INSERT INTO `stats` VALUES (2884, '2012/06/09', '213.186.119.139');
INSERT INTO `stats` VALUES (2885, '2012/06/10', '196.206.98.158');
INSERT INTO `stats` VALUES (2886, '2012/06/10', '66.249.72.235');
INSERT INTO `stats` VALUES (2887, '2012/06/10', '200.98.175.103');
INSERT INTO `stats` VALUES (2888, '2012/06/10', '212.113.37.105');
INSERT INTO `stats` VALUES (2889, '2012/06/10', '157.55.16.231');
INSERT INTO `stats` VALUES (2890, '2012/06/11', '193.47.80.47');
INSERT INTO `stats` VALUES (2891, '2012/06/11', '207.46.194.135');
INSERT INTO `stats` VALUES (2892, '2012/06/11', '157.55.16.219');
INSERT INTO `stats` VALUES (2893, '2012/06/11', '82.127.98.106');
INSERT INTO `stats` VALUES (2894, '2012/06/11', '213.186.119.135');
INSERT INTO `stats` VALUES (2895, '2012/06/11', '82.192.66.250');
INSERT INTO `stats` VALUES (2896, '2012/06/12', '65.52.108.24');
INSERT INTO `stats` VALUES (2897, '2012/06/12', '66.249.71.113');
INSERT INTO `stats` VALUES (2898, '2012/06/12', '212.113.35.162');
INSERT INTO `stats` VALUES (2899, '2012/06/12', '88.198.70.238');
INSERT INTO `stats` VALUES (2900, '2012/06/13', '193.47.80.47');
INSERT INTO `stats` VALUES (2901, '2012/06/13', '178.154.173.29');
INSERT INTO `stats` VALUES (2902, '2012/06/13', '82.123.221.249');
INSERT INTO `stats` VALUES (2903, '2012/06/14', '193.47.80.43');
INSERT INTO `stats` VALUES (2904, '2012/06/14', '207.46.13.143');
INSERT INTO `stats` VALUES (2905, '2012/06/14', '212.113.37.105');
INSERT INTO `stats` VALUES (2906, '2012/06/14', '91.194.209.68');
INSERT INTO `stats` VALUES (2907, '2012/06/14', '82.127.98.106');
INSERT INTO `stats` VALUES (2908, '2012/06/15', '213.186.120.196');
INSERT INTO `stats` VALUES (2909, '2012/06/15', '65.52.110.18');
INSERT INTO `stats` VALUES (2910, '2012/06/15', '78.251.141.116');
INSERT INTO `stats` VALUES (2911, '2012/06/15', '213.186.119.140');
INSERT INTO `stats` VALUES (2912, '2012/06/15', '173.242.125.196');
INSERT INTO `stats` VALUES (2913, '2012/06/15', '213.186.119.143');
INSERT INTO `stats` VALUES (2914, '2012/06/15', '173.242.125.206');
INSERT INTO `stats` VALUES (2915, '2012/06/15', '188.40.89.145');
INSERT INTO `stats` VALUES (2916, '2012/06/15', '78.251.128.248');
INSERT INTO `stats` VALUES (2917, '2012/06/16', '207.46.204.244');
INSERT INTO `stats` VALUES (2918, '2012/06/16', '213.186.119.138');
INSERT INTO `stats` VALUES (2919, '2012/06/16', '66.249.72.235');
INSERT INTO `stats` VALUES (2920, '2012/06/16', '88.88.190.251');
INSERT INTO `stats` VALUES (2921, '2012/06/17', '108.59.8.70');
INSERT INTO `stats` VALUES (2922, '2012/06/17', '213.186.127.2');
INSERT INTO `stats` VALUES (2923, '2012/06/17', '213.186.119.132');
INSERT INTO `stats` VALUES (2924, '2012/06/17', '213.186.119.142');
INSERT INTO `stats` VALUES (2925, '2012/06/17', '213.186.119.136');
INSERT INTO `stats` VALUES (2926, '2012/06/18', '213.186.127.4');
INSERT INTO `stats` VALUES (2927, '2012/06/18', '65.52.110.151');
INSERT INTO `stats` VALUES (2928, '2012/06/18', '207.46.194.89');
INSERT INTO `stats` VALUES (2929, '2012/06/18', '65.52.108.68');
INSERT INTO `stats` VALUES (2930, '2012/06/18', '46.165.197.142');
INSERT INTO `stats` VALUES (2931, '2012/06/18', '199.58.86.211');
INSERT INTO `stats` VALUES (2932, '2012/06/18', '178.137.83.13');
INSERT INTO `stats` VALUES (2933, '2012/06/18', '78.30.248.11');
INSERT INTO `stats` VALUES (2934, '2012/06/18', '173.236.21.106');
INSERT INTO `stats` VALUES (2935, '2012/06/18', '188.165.248.204');
INSERT INTO `stats` VALUES (2936, '2012/06/18', '173.242.125.196');
INSERT INTO `stats` VALUES (2937, '2012/06/18', '213.186.122.3');
INSERT INTO `stats` VALUES (2938, '2012/06/18', '190.244.180.155');
INSERT INTO `stats` VALUES (2939, '2012/06/18', '213.186.119.134');
INSERT INTO `stats` VALUES (2940, '2012/06/18', '85.23.163.14');
INSERT INTO `stats` VALUES (2941, '2012/06/19', '65.52.108.25');
INSERT INTO `stats` VALUES (2942, '2012/06/19', '173.242.125.206');
INSERT INTO `stats` VALUES (2943, '2012/06/19', '212.113.37.106');
INSERT INTO `stats` VALUES (2944, '2012/06/19', '213.186.122.3');
INSERT INTO `stats` VALUES (2945, '2012/06/19', '157.55.16.57');
INSERT INTO `stats` VALUES (2946, '2012/06/19', '217.128.22.167');
INSERT INTO `stats` VALUES (2947, '2012/06/19', '207.46.204.244');
INSERT INTO `stats` VALUES (2948, '2012/06/20', '212.113.37.105');
INSERT INTO `stats` VALUES (2949, '2012/06/20', '66.249.72.20');
INSERT INTO `stats` VALUES (2950, '2012/06/20', '213.186.120.196');
INSERT INTO `stats` VALUES (2951, '2012/06/20', '207.46.199.231');
INSERT INTO `stats` VALUES (2952, '2012/06/21', '65.52.110.151');
INSERT INTO `stats` VALUES (2953, '2012/06/21', '176.9.21.194');
INSERT INTO `stats` VALUES (2954, '2012/06/21', '88.168.130.15');
INSERT INTO `stats` VALUES (2955, '2012/06/21', '66.249.68.10');
INSERT INTO `stats` VALUES (2956, '2012/06/22', '81.255.163.2');
INSERT INTO `stats` VALUES (2957, '2012/06/22', '157.55.17.200');
INSERT INTO `stats` VALUES (2958, '2012/06/23', '66.249.72.20');
INSERT INTO `stats` VALUES (2959, '2012/06/23', '81.144.138.34');
INSERT INTO `stats` VALUES (2960, '2012/06/23', '65.52.110.190');
INSERT INTO `stats` VALUES (2961, '2012/06/23', '65.52.108.25');
INSERT INTO `stats` VALUES (2962, '2012/06/23', '207.46.199.238');
INSERT INTO `stats` VALUES (2963, '2012/06/24', '178.154.173.29');
INSERT INTO `stats` VALUES (2964, '2012/06/24', '66.249.72.235');
INSERT INTO `stats` VALUES (2965, '2012/06/24', '207.46.204.189');
INSERT INTO `stats` VALUES (2966, '2012/06/25', '193.47.80.43');
INSERT INTO `stats` VALUES (2967, '2012/06/25', '178.154.173.29');
INSERT INTO `stats` VALUES (2968, '2012/06/25', '65.52.110.143');
INSERT INTO `stats` VALUES (2969, '2012/06/25', '66.249.72.20');
INSERT INTO `stats` VALUES (2970, '2012/06/25', '87.106.61.84');
INSERT INTO `stats` VALUES (2971, '2012/06/26', '178.154.173.29');
INSERT INTO `stats` VALUES (2972, '2012/06/26', '65.52.104.89');
INSERT INTO `stats` VALUES (2973, '2012/06/27', '207.46.199.50');
INSERT INTO `stats` VALUES (2974, '2012/06/27', '207.46.199.50');
INSERT INTO `stats` VALUES (2975, '2012/06/27', '91.67.80.223');
INSERT INTO `stats` VALUES (2976, '2012/06/27', '207.46.204.189');
INSERT INTO `stats` VALUES (2977, '2012/06/28', '66.249.66.98');
INSERT INTO `stats` VALUES (2978, '2012/06/28', '157.55.17.103');
INSERT INTO `stats` VALUES (2979, '2012/06/28', '208.115.111.68');
INSERT INTO `stats` VALUES (2980, '2012/06/28', '41.141.81.24');
INSERT INTO `stats` VALUES (2981, '2012/06/29', '208.115.113.84');
INSERT INTO `stats` VALUES (2982, '2012/06/29', '213.186.119.134');
INSERT INTO `stats` VALUES (2983, '2012/06/29', '66.249.66.219');
INSERT INTO `stats` VALUES (2984, '2012/06/29', '66.249.66.98');
INSERT INTO `stats` VALUES (2985, '2012/06/29', '213.186.127.6');
INSERT INTO `stats` VALUES (2986, '2012/06/29', '213.186.127.3');
INSERT INTO `stats` VALUES (2987, '2012/06/29', '213.186.122.2');
INSERT INTO `stats` VALUES (2988, '2012/06/29', '213.186.127.7');
INSERT INTO `stats` VALUES (2989, '2012/06/29', '213.186.119.142');
INSERT INTO `stats` VALUES (2990, '2012/06/29', '212.113.37.105');
INSERT INTO `stats` VALUES (2991, '2012/06/29', '212.113.37.106');
INSERT INTO `stats` VALUES (2992, '2012/06/29', '213.186.127.11');
INSERT INTO `stats` VALUES (2993, '2012/06/29', '213.186.127.10');
INSERT INTO `stats` VALUES (2994, '2012/06/30', '212.113.35.162');
INSERT INTO `stats` VALUES (2995, '2012/06/30', '213.186.119.132');
INSERT INTO `stats` VALUES (2996, '2012/06/30', '213.186.127.4');
INSERT INTO `stats` VALUES (2997, '2012/06/30', '213.186.119.138');
INSERT INTO `stats` VALUES (2998, '2012/06/30', '213.186.127.3');
INSERT INTO `stats` VALUES (2999, '2012/06/30', '193.47.80.47');
INSERT INTO `stats` VALUES (3000, '2012/07/01', '208.115.111.68');
INSERT INTO `stats` VALUES (3001, '2012/07/01', '213.186.127.11');
INSERT INTO `stats` VALUES (3002, '2012/07/01', '212.113.35.162');
INSERT INTO `stats` VALUES (3003, '2012/07/01', '193.47.80.43');
INSERT INTO `stats` VALUES (3004, '2012/07/01', '213.186.127.3');
INSERT INTO `stats` VALUES (3005, '2012/07/01', '66.249.72.235');
INSERT INTO `stats` VALUES (3006, '2012/07/01', '100.43.83.154');
INSERT INTO `stats` VALUES (3007, '2012/07/02', '66.249.72.235');
INSERT INTO `stats` VALUES (3008, '2012/07/02', '213.186.127.3');
INSERT INTO `stats` VALUES (3009, '2012/07/02', '213.186.127.9');
INSERT INTO `stats` VALUES (3010, '2012/07/03', '208.115.113.84');
INSERT INTO `stats` VALUES (3011, '2012/07/03', '157.55.17.147');
INSERT INTO `stats` VALUES (3012, '2012/07/03', '66.249.72.235');
INSERT INTO `stats` VALUES (3013, '2012/07/03', '208.115.111.68');
INSERT INTO `stats` VALUES (3014, '2012/07/03', '88.168.130.15');
INSERT INTO `stats` VALUES (3015, '2012/07/03', '173.236.21.106');
INSERT INTO `stats` VALUES (3016, '2012/07/04', '208.115.111.68');
INSERT INTO `stats` VALUES (3017, '2012/07/04', '208.115.113.84');
INSERT INTO `stats` VALUES (3018, '2012/07/04', '66.249.72.214');
INSERT INTO `stats` VALUES (3019, '2012/07/04', '88.168.130.15');
INSERT INTO `stats` VALUES (3020, '2012/07/04', '92.148.173.34');
INSERT INTO `stats` VALUES (3021, '2012/07/05', '207.46.204.188');
INSERT INTO `stats` VALUES (3022, '2012/07/05', '208.115.111.68');
INSERT INTO `stats` VALUES (3023, '2012/07/05', '88.168.130.15');
INSERT INTO `stats` VALUES (3024, '2012/07/05', '194.250.178.225');
INSERT INTO `stats` VALUES (3025, '2012/07/05', '66.249.72.235');
INSERT INTO `stats` VALUES (3026, '2012/07/05', '217.128.22.167');
INSERT INTO `stats` VALUES (3027, '2012/07/05', '208.80.194.57');
INSERT INTO `stats` VALUES (3028, '2012/07/05', '65.52.110.151');
INSERT INTO `stats` VALUES (3029, '2012/07/06', '157.55.17.193');
INSERT INTO `stats` VALUES (3030, '2012/07/06', '65.52.104.89');
INSERT INTO `stats` VALUES (3031, '2012/07/06', '208.115.111.68');
INSERT INTO `stats` VALUES (3032, '2012/07/06', '86.66.40.164');
INSERT INTO `stats` VALUES (3033, '2012/07/07', '208.115.113.84');
INSERT INTO `stats` VALUES (3034, '2012/07/07', '207.46.199.45');
INSERT INTO `stats` VALUES (3035, '2012/07/07', '193.47.80.47');
INSERT INTO `stats` VALUES (3036, '2012/07/07', '207.46.199.47');
INSERT INTO `stats` VALUES (3037, '2012/07/07', '207.46.199.50');
INSERT INTO `stats` VALUES (3038, '2012/07/07', '213.186.122.2');
INSERT INTO `stats` VALUES (3039, '2012/07/07', '66.249.72.235');
INSERT INTO `stats` VALUES (3040, '2012/07/08', '66.249.72.235');
INSERT INTO `stats` VALUES (3041, '2012/07/08', '208.115.111.68');
INSERT INTO `stats` VALUES (3042, '2012/07/09', '208.115.111.68');
INSERT INTO `stats` VALUES (3043, '2012/07/09', '88.168.130.15');
INSERT INTO `stats` VALUES (3044, '2012/07/09', '176.9.51.203');
INSERT INTO `stats` VALUES (3045, '2012/07/10', '173.242.125.191');
INSERT INTO `stats` VALUES (3046, '2012/07/10', '208.115.113.84');
INSERT INTO `stats` VALUES (3047, '2012/07/10', '208.115.111.68');
INSERT INTO `stats` VALUES (3048, '2012/07/10', '92.82.227.105');
INSERT INTO `stats` VALUES (3049, '2012/07/10', '82.234.79.69');
INSERT INTO `stats` VALUES (3050, '2012/07/10', '65.52.108.148');
INSERT INTO `stats` VALUES (3051, '2012/07/11', '87.106.58.89');
INSERT INTO `stats` VALUES (3052, '2012/07/11', '86.210.175.238');
INSERT INTO `stats` VALUES (3053, '2012/07/11', '66.249.71.75');
INSERT INTO `stats` VALUES (3054, '2012/07/11', '88.168.130.15');
INSERT INTO `stats` VALUES (3055, '2012/07/12', '78.158.11.226');
INSERT INTO `stats` VALUES (3056, '2012/07/12', '208.115.111.68');
INSERT INTO `stats` VALUES (3057, '2012/07/12', '157.55.17.193');
INSERT INTO `stats` VALUES (3058, '2012/07/12', '65.52.110.16');
INSERT INTO `stats` VALUES (3059, '2012/07/13', '66.249.72.250');
INSERT INTO `stats` VALUES (3060, '2012/07/13', '87.106.58.89');
INSERT INTO `stats` VALUES (3061, '2012/07/13', '77.203.45.236');
INSERT INTO `stats` VALUES (3062, '2012/07/13', '207.46.199.50');
INSERT INTO `stats` VALUES (3063, '2012/07/14', '92.161.169.248');
INSERT INTO `stats` VALUES (3064, '2012/07/14', '78.158.11.226');
INSERT INTO `stats` VALUES (3065, '2012/07/14', '207.46.199.50');
INSERT INTO `stats` VALUES (3066, '2012/07/15', '178.255.215.71');
INSERT INTO `stats` VALUES (3067, '2012/07/15', '66.249.72.250');
INSERT INTO `stats` VALUES (3068, '2012/07/15', '208.115.111.68');
INSERT INTO `stats` VALUES (3069, '2012/07/16', '207.46.194.47');
INSERT INTO `stats` VALUES (3070, '2012/07/16', '208.115.111.68');
INSERT INTO `stats` VALUES (3071, '2012/07/16', '66.249.72.46');
INSERT INTO `stats` VALUES (3072, '2012/07/17', '66.249.72.250');
INSERT INTO `stats` VALUES (3073, '2012/07/17', '217.128.22.167');
INSERT INTO `stats` VALUES (3074, '2012/07/18', '41.140.16.73');
INSERT INTO `stats` VALUES (3075, '2012/07/18', '208.115.111.68');
INSERT INTO `stats` VALUES (3076, '2012/07/18', '72.14.164.122');
INSERT INTO `stats` VALUES (3077, '2012/07/18', '178.154.173.29');
INSERT INTO `stats` VALUES (3078, '2012/07/18', '178.255.215.75');
INSERT INTO `stats` VALUES (3079, '2012/07/18', '65.52.109.62');
INSERT INTO `stats` VALUES (3080, '2012/07/18', '207.46.13.49');
INSERT INTO `stats` VALUES (3081, '2012/07/19', '157.55.17.200');
INSERT INTO `stats` VALUES (3082, '2012/07/19', '65.52.110.23');
INSERT INTO `stats` VALUES (3083, '2012/07/20', '88.168.130.15');
INSERT INTO `stats` VALUES (3084, '2012/07/20', '208.115.111.68');
INSERT INTO `stats` VALUES (3085, '2012/07/20', '157.55.17.200');
INSERT INTO `stats` VALUES (3086, '2012/07/21', '208.115.111.68');
INSERT INTO `stats` VALUES (3087, '2012/07/21', '178.154.173.29');
INSERT INTO `stats` VALUES (3088, '2012/07/21', '65.52.109.152');
INSERT INTO `stats` VALUES (3089, '2012/07/21', '178.255.215.75');
INSERT INTO `stats` VALUES (3090, '2012/07/21', '208.115.113.84');
INSERT INTO `stats` VALUES (3091, '2012/07/21', '207.46.204.244');
INSERT INTO `stats` VALUES (3092, '2012/07/22', '208.115.113.84');
INSERT INTO `stats` VALUES (3093, '2012/07/22', '157.55.17.200');
INSERT INTO `stats` VALUES (3094, '2012/07/22', '66.249.72.250');
INSERT INTO `stats` VALUES (3095, '2012/07/22', '178.154.173.29');
INSERT INTO `stats` VALUES (3096, '2012/07/22', '207.46.199.224');
INSERT INTO `stats` VALUES (3097, '2012/07/22', '207.46.194.116');
INSERT INTO `stats` VALUES (3098, '2012/07/22', '213.186.127.11');
INSERT INTO `stats` VALUES (3099, '2012/07/22', '66.249.71.75');
INSERT INTO `stats` VALUES (3100, '2012/07/22', '207.46.194.150');
INSERT INTO `stats` VALUES (3101, '2012/07/23', '208.115.113.84');
INSERT INTO `stats` VALUES (3102, '2012/07/23', '65.52.108.147');
INSERT INTO `stats` VALUES (3103, '2012/07/23', '178.154.173.29');
INSERT INTO `stats` VALUES (3104, '2012/07/23', '65.52.108.177');
INSERT INTO `stats` VALUES (3105, '2012/07/23', '66.249.71.75');
INSERT INTO `stats` VALUES (3106, '2012/07/23', '217.128.22.167');
INSERT INTO `stats` VALUES (3107, '2012/07/23', '207.46.192.50');
INSERT INTO `stats` VALUES (3108, '2012/07/24', '157.55.17.200');
INSERT INTO `stats` VALUES (3109, '2012/07/24', '65.52.110.190');
INSERT INTO `stats` VALUES (3110, '2012/07/24', '207.46.204.244');
INSERT INTO `stats` VALUES (3111, '2012/07/24', '66.249.72.250');
INSERT INTO `stats` VALUES (3112, '2012/07/24', '213.186.119.143');
INSERT INTO `stats` VALUES (3113, '2012/07/24', '213.186.127.11');
INSERT INTO `stats` VALUES (3114, '2012/07/24', '213.186.127.3');
INSERT INTO `stats` VALUES (3115, '2012/07/24', '213.186.119.141');
INSERT INTO `stats` VALUES (3116, '2012/07/24', '178.154.173.29');
INSERT INTO `stats` VALUES (3117, '2012/07/24', '213.186.127.12');
INSERT INTO `stats` VALUES (3118, '2012/07/24', '213.186.127.7');
INSERT INTO `stats` VALUES (3119, '2012/07/25', '212.113.37.106');
INSERT INTO `stats` VALUES (3120, '2012/07/25', '213.186.127.7');
INSERT INTO `stats` VALUES (3121, '2012/07/25', '65.52.109.19');
INSERT INTO `stats` VALUES (3122, '2012/07/25', '213.186.127.6');
INSERT INTO `stats` VALUES (3123, '2012/07/25', '65.52.104.11');
INSERT INTO `stats` VALUES (3124, '2012/07/26', '157.55.16.220');
INSERT INTO `stats` VALUES (3125, '2012/07/26', '207.46.13.203');
INSERT INTO `stats` VALUES (3126, '2012/07/26', '172.16.0.15, 127.0.0.1');
INSERT INTO `stats` VALUES (3127, '2012/07/26', '208.115.113.84');
INSERT INTO `stats` VALUES (3128, '2012/07/27', '66.249.72.250');
INSERT INTO `stats` VALUES (3129, '2012/07/27', '207.46.194.36');
INSERT INTO `stats` VALUES (3130, '2012/07/27', '131.253.41.47');
INSERT INTO `stats` VALUES (3131, '2012/07/27', '131.253.40.40');
INSERT INTO `stats` VALUES (3132, '2012/07/27', '208.115.111.68');
INSERT INTO `stats` VALUES (3133, '2012/07/27', '213.186.127.9');
INSERT INTO `stats` VALUES (3134, '2012/07/27', '207.46.204.181');
INSERT INTO `stats` VALUES (3135, '2012/07/27', '213.186.127.14');
INSERT INTO `stats` VALUES (3136, '2012/07/27', '213.186.127.3');
INSERT INTO `stats` VALUES (3137, '2012/07/27', '213.186.119.138');
INSERT INTO `stats` VALUES (3138, '2012/07/28', '208.115.111.68');
INSERT INTO `stats` VALUES (3139, '2012/07/28', '213.186.127.12');
INSERT INTO `stats` VALUES (3140, '2012/07/29', '66.249.72.250');
INSERT INTO `stats` VALUES (3141, '2012/07/30', '208.115.113.84');
INSERT INTO `stats` VALUES (3142, '2012/07/30', '208.115.111.68');
INSERT INTO `stats` VALUES (3143, '2012/07/30', '213.207.103.125');
INSERT INTO `stats` VALUES (3144, '2012/07/31', '213.186.127.5');
INSERT INTO `stats` VALUES (3145, '2012/07/31', '213.186.127.13');
INSERT INTO `stats` VALUES (3146, '2012/07/31', '65.52.108.142');
INSERT INTO `stats` VALUES (3147, '2012/07/31', '212.113.37.105');
INSERT INTO `stats` VALUES (3148, '2012/07/31', '213.186.127.14');
INSERT INTO `stats` VALUES (3149, '2012/08/01', '208.115.113.84');
INSERT INTO `stats` VALUES (3150, '2012/08/01', '207.46.204.234');
INSERT INTO `stats` VALUES (3151, '2012/08/01', '178.154.173.29');
INSERT INTO `stats` VALUES (3152, '2012/08/02', '66.249.71.75');
INSERT INTO `stats` VALUES (3153, '2012/08/02', '157.55.17.193');
INSERT INTO `stats` VALUES (3154, '2012/08/02', '157.55.17.148');
INSERT INTO `stats` VALUES (3155, '2012/08/02', '65.52.109.200');
INSERT INTO `stats` VALUES (3156, '2012/08/02', '207.46.13.50');
INSERT INTO `stats` VALUES (3157, '2012/08/02', '207.46.204.181');
INSERT INTO `stats` VALUES (3158, '2012/08/03', '65.52.108.68');
INSERT INTO `stats` VALUES (3159, '2012/08/03', '208.115.113.84');
INSERT INTO `stats` VALUES (3160, '2012/08/03', '77.75.77.17');
INSERT INTO `stats` VALUES (3161, '2012/08/03', '208.115.111.68');
INSERT INTO `stats` VALUES (3162, '2012/08/03', '198.168.97.2');
INSERT INTO `stats` VALUES (3163, '2012/08/03', '212.113.35.162');
INSERT INTO `stats` VALUES (3164, '2012/08/03', '207.46.13.144');
INSERT INTO `stats` VALUES (3165, '2012/08/03', '66.249.72.250');
INSERT INTO `stats` VALUES (3166, '2012/08/04', '66.249.72.46');
INSERT INTO `stats` VALUES (3167, '2012/08/04', '66.249.72.250');
INSERT INTO `stats` VALUES (3168, '2012/08/04', '207.46.13.214');
INSERT INTO `stats` VALUES (3169, '2012/08/05', '66.249.72.250');
INSERT INTO `stats` VALUES (3170, '2012/08/05', '208.115.111.68');
INSERT INTO `stats` VALUES (3171, '2012/08/05', '66.249.72.46');
INSERT INTO `stats` VALUES (3172, '2012/08/05', '65.52.110.201');
INSERT INTO `stats` VALUES (3173, '2012/08/06', '65.52.109.62');
INSERT INTO `stats` VALUES (3174, '2012/08/06', '66.249.72.250');
INSERT INTO `stats` VALUES (3175, '2012/08/06', '207.46.204.181');
INSERT INTO `stats` VALUES (3176, '2012/08/06', '66.249.72.46');
INSERT INTO `stats` VALUES (3177, '2012/08/07', '66.249.72.250');
INSERT INTO `stats` VALUES (3178, '2012/08/07', '207.46.13.14');
INSERT INTO `stats` VALUES (3179, '2012/08/07', '178.154.173.29');
INSERT INTO `stats` VALUES (3180, '2012/08/07', '207.46.204.242');
INSERT INTO `stats` VALUES (3181, '2012/08/07', '91.205.96.13');
INSERT INTO `stats` VALUES (3182, '2012/08/07', '208.115.111.68');
INSERT INTO `stats` VALUES (3183, '2012/08/08', '66.249.72.250');
INSERT INTO `stats` VALUES (3184, '2012/08/08', '88.140.34.108');
INSERT INTO `stats` VALUES (3185, '2012/08/08', '207.46.204.233');
INSERT INTO `stats` VALUES (3186, '2012/08/08', '131.253.40.173');
INSERT INTO `stats` VALUES (3187, '2012/08/08', '157.55.16.231');
INSERT INTO `stats` VALUES (3188, '2012/08/08', '208.115.113.84');
INSERT INTO `stats` VALUES (3189, '2012/08/09', '208.115.113.84');
INSERT INTO `stats` VALUES (3190, '2012/08/09', '92.85.63.221');
INSERT INTO `stats` VALUES (3191, '2012/08/09', '207.46.13.171');
INSERT INTO `stats` VALUES (3192, '2012/08/09', '66.249.72.46');
INSERT INTO `stats` VALUES (3193, '2012/08/09', '178.255.215.71');
INSERT INTO `stats` VALUES (3194, '2012/08/09', '208.115.111.68');
INSERT INTO `stats` VALUES (3195, '2012/08/10', '178.255.215.71');
INSERT INTO `stats` VALUES (3196, '2012/08/10', '66.249.72.194');
INSERT INTO `stats` VALUES (3197, '2012/08/10', '208.115.111.68');
INSERT INTO `stats` VALUES (3198, '2012/08/10', '207.46.194.40');
INSERT INTO `stats` VALUES (3199, '2012/08/10', '88.138.187.245');
INSERT INTO `stats` VALUES (3200, '2012/08/10', '207.46.13.171');
INSERT INTO `stats` VALUES (3201, '2012/08/11', '81.144.138.34');
INSERT INTO `stats` VALUES (3202, '2012/08/11', '178.154.173.29');
INSERT INTO `stats` VALUES (3203, '2012/08/11', '157.55.17.86');
INSERT INTO `stats` VALUES (3204, '2012/08/11', '207.46.13.118');
INSERT INTO `stats` VALUES (3205, '2012/08/12', '66.249.72.194');
INSERT INTO `stats` VALUES (3206, '2012/08/12', '119.63.196.126');
INSERT INTO `stats` VALUES (3207, '2012/08/13', '66.249.72.194');
INSERT INTO `stats` VALUES (3208, '2012/08/13', '119.63.196.93');
INSERT INTO `stats` VALUES (3209, '2012/08/13', '65.52.108.68');
INSERT INTO `stats` VALUES (3210, '2012/08/14', '213.186.119.140');
INSERT INTO `stats` VALUES (3211, '2012/08/14', '208.115.113.84');
INSERT INTO `stats` VALUES (3212, '2012/08/14', '66.249.72.194');
INSERT INTO `stats` VALUES (3213, '2012/08/14', '41.211.129.44');
INSERT INTO `stats` VALUES (3214, '2012/08/15', '178.154.173.29');
INSERT INTO `stats` VALUES (3215, '2012/08/15', '207.46.192.47');
INSERT INTO `stats` VALUES (3216, '2012/08/15', '208.115.113.84');
INSERT INTO `stats` VALUES (3217, '2012/08/15', '207.46.194.91');
INSERT INTO `stats` VALUES (3218, '2012/08/15', '65.52.104.10');
INSERT INTO `stats` VALUES (3219, '2012/08/16', '69.58.178.56');
INSERT INTO `stats` VALUES (3220, '2012/08/16', '207.46.13.94');
INSERT INTO `stats` VALUES (3221, '2012/08/16', '131.253.41.150');
INSERT INTO `stats` VALUES (3222, '2012/08/16', '131.253.41.61');
INSERT INTO `stats` VALUES (3223, '2012/08/16', '65.52.108.46');
INSERT INTO `stats` VALUES (3224, '2012/08/16', '131.253.41.190');
INSERT INTO `stats` VALUES (3225, '2012/08/17', '77.75.77.17');
INSERT INTO `stats` VALUES (3226, '2012/08/17', '65.52.108.68');
INSERT INTO `stats` VALUES (3227, '2012/08/17', '41.202.77.118');
INSERT INTO `stats` VALUES (3228, '2012/08/17', '207.46.13.171');
INSERT INTO `stats` VALUES (3229, '2012/08/17', '41.189.45.3');
INSERT INTO `stats` VALUES (3230, '2012/08/17', '213.186.127.5');
INSERT INTO `stats` VALUES (3231, '2012/08/17', '66.219.58.38');
INSERT INTO `stats` VALUES (3232, '2012/08/18', '77.75.77.11');
INSERT INTO `stats` VALUES (3233, '2012/08/18', '213.186.127.9');
INSERT INTO `stats` VALUES (3234, '2012/08/18', '189.15.199.58');
INSERT INTO `stats` VALUES (3235, '2012/08/18', '66.249.66.238');
INSERT INTO `stats` VALUES (3236, '2012/08/18', '212.113.37.105');
INSERT INTO `stats` VALUES (3237, '2012/08/19', '213.186.122.3');
INSERT INTO `stats` VALUES (3238, '2012/08/19', '178.154.173.29');
INSERT INTO `stats` VALUES (3239, '2012/08/19', '86.77.99.247');
INSERT INTO `stats` VALUES (3240, '2012/08/19', '213.186.119.144');
INSERT INTO `stats` VALUES (3241, '2012/08/19', '213.186.119.139');
INSERT INTO `stats` VALUES (3242, '2012/08/19', '66.249.66.238');
INSERT INTO `stats` VALUES (3243, '2012/08/20', '178.255.215.75');
INSERT INTO `stats` VALUES (3244, '2012/08/20', '131.253.41.61');
INSERT INTO `stats` VALUES (3245, '2012/08/20', '77.78.104.222');
INSERT INTO `stats` VALUES (3246, '2012/08/20', '77.75.77.11');
INSERT INTO `stats` VALUES (3247, '2012/08/20', '208.115.113.84');
INSERT INTO `stats` VALUES (3248, '2012/08/20', '157.55.17.194');
INSERT INTO `stats` VALUES (3249, '2012/08/21', '178.154.173.29');
INSERT INTO `stats` VALUES (3250, '2012/08/21', '65.52.110.23');
INSERT INTO `stats` VALUES (3251, '2012/08/22', '207.46.13.171');
INSERT INTO `stats` VALUES (3252, '2012/08/22', '77.75.77.11');
INSERT INTO `stats` VALUES (3253, '2012/08/22', '41.204.112.138');
INSERT INTO `stats` VALUES (3254, '2012/08/22', '84.101.156.93');
INSERT INTO `stats` VALUES (3255, '2012/08/22', '157.55.18.23');
INSERT INTO `stats` VALUES (3256, '2012/08/22', '213.186.127.7');
INSERT INTO `stats` VALUES (3257, '2012/08/22', '207.46.13.94');
INSERT INTO `stats` VALUES (3258, '2012/08/23', '66.249.72.232');
INSERT INTO `stats` VALUES (3259, '2012/08/23', '213.186.119.133');
INSERT INTO `stats` VALUES (3260, '2012/08/23', '81.50.224.250');
INSERT INTO `stats` VALUES (3261, '2012/08/23', '84.101.156.93');
INSERT INTO `stats` VALUES (3262, '2012/08/23', '31.11.220.94');
INSERT INTO `stats` VALUES (3263, '2012/08/23', '213.186.119.138');
INSERT INTO `stats` VALUES (3264, '2012/08/23', '65.52.108.200');
INSERT INTO `stats` VALUES (3265, '2012/08/23', '77.75.77.17');
INSERT INTO `stats` VALUES (3266, '2012/08/24', '208.115.113.84');
INSERT INTO `stats` VALUES (3267, '2012/08/24', '88.177.236.55');
INSERT INTO `stats` VALUES (3268, '2012/08/24', '66.249.66.238');
INSERT INTO `stats` VALUES (3269, '2012/08/24', '212.113.35.162');
INSERT INTO `stats` VALUES (3270, '2012/08/25', '65.52.108.46');
INSERT INTO `stats` VALUES (3271, '2012/08/25', '157.55.17.194');
INSERT INTO `stats` VALUES (3272, '2012/08/25', '208.115.113.84');
INSERT INTO `stats` VALUES (3273, '2012/08/25', '41.141.94.68');
INSERT INTO `stats` VALUES (3274, '2012/08/25', '65.52.110.18');
INSERT INTO `stats` VALUES (3275, '2012/08/25', '207.46.13.94');
INSERT INTO `stats` VALUES (3276, '2012/08/26', '208.115.111.68');
INSERT INTO `stats` VALUES (3277, '2012/08/26', '66.249.72.232');
INSERT INTO `stats` VALUES (3278, '2012/08/26', '66.249.66.238');
INSERT INTO `stats` VALUES (3279, '2012/08/26', '77.75.77.17');
INSERT INTO `stats` VALUES (3280, '2012/08/26', '178.154.173.29');
INSERT INTO `stats` VALUES (3281, '2012/08/26', '207.46.13.171');
INSERT INTO `stats` VALUES (3282, '2012/08/26', '65.52.108.12');
INSERT INTO `stats` VALUES (3283, '2012/08/26', '92.106.42.25');
INSERT INTO `stats` VALUES (3284, '2012/08/26', '213.186.127.12');
INSERT INTO `stats` VALUES (3285, '2012/08/27', '213.186.122.2');
INSERT INTO `stats` VALUES (3286, '2012/08/27', '192.162.19.193');
INSERT INTO `stats` VALUES (3287, '2012/08/27', '65.52.108.58');
INSERT INTO `stats` VALUES (3288, '2012/08/27', '213.186.127.13');
INSERT INTO `stats` VALUES (3289, '2012/08/27', '65.52.108.24');
INSERT INTO `stats` VALUES (3290, '2012/08/27', '207.46.13.14');
INSERT INTO `stats` VALUES (3291, '2012/08/27', '213.186.127.7');
INSERT INTO `stats` VALUES (3292, '2012/08/28', '66.249.66.86');
INSERT INTO `stats` VALUES (3293, '2012/08/28', '65.52.108.46');
INSERT INTO `stats` VALUES (3294, '2012/08/28', '66.249.72.244');
INSERT INTO `stats` VALUES (3295, '2012/08/28', '213.186.119.141');
INSERT INTO `stats` VALUES (3296, '2012/08/28', '88.162.97.241');
INSERT INTO `stats` VALUES (3297, '2012/08/29', '213.186.127.10');
INSERT INTO `stats` VALUES (3298, '2012/08/29', '213.186.127.11');
INSERT INTO `stats` VALUES (3299, '2012/08/29', '66.249.66.86');
INSERT INTO `stats` VALUES (3300, '2012/08/29', '157.55.35.80');
INSERT INTO `stats` VALUES (3301, '2012/08/30', '65.55.55.230');
INSERT INTO `stats` VALUES (3302, '2012/08/30', '178.154.173.29');
INSERT INTO `stats` VALUES (3303, '2012/08/31', '65.55.52.97');
INSERT INTO `stats` VALUES (3304, '2012/08/31', '66.249.66.113');
INSERT INTO `stats` VALUES (3305, '2012/08/31', '82.192.66.250');
INSERT INTO `stats` VALUES (3306, '2012/08/31', '82.80.249.139');
INSERT INTO `stats` VALUES (3307, '2012/08/31', '82.80.249.137');
INSERT INTO `stats` VALUES (3308, '2012/09/01', '157.55.33.181');
INSERT INTO `stats` VALUES (3309, '2012/09/01', '65.55.24.219');
INSERT INTO `stats` VALUES (3310, '2012/09/01', '157.55.34.180');
INSERT INTO `stats` VALUES (3311, '2012/09/02', '178.154.173.29');
INSERT INTO `stats` VALUES (3312, '2012/09/02', '66.249.66.86');
INSERT INTO `stats` VALUES (3313, '2012/09/02', '66.249.72.244');
INSERT INTO `stats` VALUES (3314, '2012/09/03', '213.186.119.143');
INSERT INTO `stats` VALUES (3315, '2012/09/03', '92.151.202.138');
INSERT INTO `stats` VALUES (3316, '2012/09/03', '131.253.47.248');
INSERT INTO `stats` VALUES (3317, '2012/09/03', '208.115.113.84');
INSERT INTO `stats` VALUES (3318, '2012/09/04', '65.55.52.87');
INSERT INTO `stats` VALUES (3319, '2012/09/04', '66.249.72.244');
INSERT INTO `stats` VALUES (3320, '2012/09/04', '213.186.127.2');
INSERT INTO `stats` VALUES (3321, '2012/09/04', '78.113.11.222');
INSERT INTO `stats` VALUES (3322, '2012/09/05', '178.154.173.29');
INSERT INTO `stats` VALUES (3323, '2012/09/06', '131.253.46.114');
INSERT INTO `stats` VALUES (3324, '2012/09/06', '65.55.24.243');
INSERT INTO `stats` VALUES (3325, '2012/09/06', '208.115.113.84');
INSERT INTO `stats` VALUES (3326, '2012/09/06', '41.92.106.1');
INSERT INTO `stats` VALUES (3327, '2012/09/07', '77.75.77.11');
INSERT INTO `stats` VALUES (3328, '2012/09/07', '69.84.207.246');
INSERT INTO `stats` VALUES (3329, '2012/09/07', '66.249.66.86');
INSERT INTO `stats` VALUES (3330, '2012/09/07', '157.56.93.150');
INSERT INTO `stats` VALUES (3331, '2012/09/07', '66.249.71.75');
INSERT INTO `stats` VALUES (3332, '2012/09/08', '66.249.66.33');
INSERT INTO `stats` VALUES (3333, '2012/09/08', '66.249.71.241');
INSERT INTO `stats` VALUES (3334, '2012/09/08', '77.78.104.141');
INSERT INTO `stats` VALUES (3335, '2012/09/08', '157.55.33.81');
INSERT INTO `stats` VALUES (3336, '2012/09/08', '131.253.46.237');
INSERT INTO `stats` VALUES (3337, '2012/09/08', '66.249.66.86');
INSERT INTO `stats` VALUES (3338, '2012/09/08', '66.249.71.86');
INSERT INTO `stats` VALUES (3339, '2012/09/08', '157.55.34.25');
INSERT INTO `stats` VALUES (3340, '2012/09/08', '65.55.52.116');
INSERT INTO `stats` VALUES (3341, '2012/09/09', '157.55.35.47');
INSERT INTO `stats` VALUES (3342, '2012/09/09', '178.154.173.29');
INSERT INTO `stats` VALUES (3343, '2012/09/09', '157.55.35.53');
INSERT INTO `stats` VALUES (3344, '2012/09/09', '157.55.32.60');
INSERT INTO `stats` VALUES (3345, '2012/09/09', '178.255.215.71');
INSERT INTO `stats` VALUES (3346, '2012/09/09', '213.186.119.132');
INSERT INTO `stats` VALUES (3347, '2012/09/09', '81.144.138.34');
INSERT INTO `stats` VALUES (3348, '2012/09/10', '66.249.66.86');
INSERT INTO `stats` VALUES (3349, '2012/09/10', '208.115.113.84');
INSERT INTO `stats` VALUES (3350, '2012/09/10', '66.249.66.201');
INSERT INTO `stats` VALUES (3351, '2012/09/10', '157.55.32.106');
INSERT INTO `stats` VALUES (3352, '2012/09/10', '157.55.33.50');
INSERT INTO `stats` VALUES (3353, '2012/09/10', '213.186.119.144');
INSERT INTO `stats` VALUES (3354, '2012/09/11', '213.186.119.138');
INSERT INTO `stats` VALUES (3355, '2012/09/11', '157.55.33.29');
INSERT INTO `stats` VALUES (3356, '2012/09/11', '157.55.33.31');
INSERT INTO `stats` VALUES (3357, '2012/09/11', '178.255.215.75');
INSERT INTO `stats` VALUES (3358, '2012/09/11', '178.154.173.29');
INSERT INTO `stats` VALUES (3359, '2012/09/11', '208.115.113.84');
INSERT INTO `stats` VALUES (3360, '2012/09/11', '157.55.33.20');
INSERT INTO `stats` VALUES (3361, '2012/09/11', '157.55.33.253');
INSERT INTO `stats` VALUES (3362, '2012/09/12', '66.249.66.86');
INSERT INTO `stats` VALUES (3363, '2012/09/12', '178.154.173.29');
INSERT INTO `stats` VALUES (3364, '2012/09/12', '208.115.113.84');
INSERT INTO `stats` VALUES (3365, '2012/09/12', '157.55.33.22');
INSERT INTO `stats` VALUES (3366, '2012/09/13', '157.56.93.191');
INSERT INTO `stats` VALUES (3367, '2012/09/13', '208.115.111.68');
INSERT INTO `stats` VALUES (3368, '2012/09/13', '208.115.113.84');
INSERT INTO `stats` VALUES (3369, '2012/09/13', '65.55.52.115');
INSERT INTO `stats` VALUES (3370, '2012/09/13', '157.55.33.14');
INSERT INTO `stats` VALUES (3371, '2012/09/13', '178.154.173.29');
INSERT INTO `stats` VALUES (3372, '2012/09/13', '119.63.196.94');
INSERT INTO `stats` VALUES (3373, '2012/09/14', '66.249.66.86');
INSERT INTO `stats` VALUES (3374, '2012/09/14', '66.249.66.201');
INSERT INTO `stats` VALUES (3375, '2012/09/14', '66.249.71.75');
INSERT INTO `stats` VALUES (3376, '2012/09/14', '208.115.113.84');
INSERT INTO `stats` VALUES (3377, '2012/09/14', '178.255.215.75');
INSERT INTO `stats` VALUES (3378, '2012/09/14', '119.63.196.124');
INSERT INTO `stats` VALUES (3379, '2012/09/15', '157.56.93.202');
INSERT INTO `stats` VALUES (3380, '2012/09/15', '66.249.72.244');
INSERT INTO `stats` VALUES (3381, '2012/09/15', '157.55.33.22');
INSERT INTO `stats` VALUES (3382, '2012/09/15', '157.55.32.164');
INSERT INTO `stats` VALUES (3383, '2012/09/15', '208.115.111.68');
INSERT INTO `stats` VALUES (3384, '2012/09/15', '157.55.33.18');
INSERT INTO `stats` VALUES (3385, '2012/09/16', '157.55.33.100');
INSERT INTO `stats` VALUES (3386, '2012/09/16', '77.75.77.11');
INSERT INTO `stats` VALUES (3387, '2012/09/16', '66.249.66.86');
INSERT INTO `stats` VALUES (3388, '2012/09/16', '178.154.173.29');
INSERT INTO `stats` VALUES (3389, '2012/09/17', '66.249.71.75');
INSERT INTO `stats` VALUES (3390, '2012/09/17', '66.249.66.86');
INSERT INTO `stats` VALUES (3391, '2012/09/17', '157.55.33.47');
INSERT INTO `stats` VALUES (3392, '2012/09/17', '157.56.93.194');
INSERT INTO `stats` VALUES (3393, '2012/09/17', '157.56.93.207');
INSERT INTO `stats` VALUES (3394, '2012/09/17', '66.249.66.33');
INSERT INTO `stats` VALUES (3395, '2012/09/17', '109.20.51.7');
INSERT INTO `stats` VALUES (3396, '2012/09/18', '157.55.34.166');
INSERT INTO `stats` VALUES (3397, '2012/09/18', '69.58.178.59');
INSERT INTO `stats` VALUES (3398, '2012/09/18', '66.249.66.86');
INSERT INTO `stats` VALUES (3399, '2012/09/18', '208.115.113.84');
INSERT INTO `stats` VALUES (3400, '2012/09/19', '208.115.113.84');
INSERT INTO `stats` VALUES (3401, '2012/09/19', '66.249.66.86');
INSERT INTO `stats` VALUES (3402, '2012/09/19', '208.115.111.68');
INSERT INTO `stats` VALUES (3403, '2012/09/19', '217.128.22.167');
INSERT INTO `stats` VALUES (3404, '2012/09/19', '131.253.47.183');
INSERT INTO `stats` VALUES (3405, '2012/09/19', '131.253.47.145');
INSERT INTO `stats` VALUES (3406, '2012/09/19', '157.55.33.100');
INSERT INTO `stats` VALUES (3407, '2012/09/20', '157.56.93.207');
INSERT INTO `stats` VALUES (3408, '2012/09/20', '131.253.47.219');
INSERT INTO `stats` VALUES (3409, '2012/09/20', '131.253.46.102');
INSERT INTO `stats` VALUES (3410, '2012/09/20', '208.115.113.84');
INSERT INTO `stats` VALUES (3411, '2012/09/20', '88.181.25.144');
INSERT INTO `stats` VALUES (3412, '2012/09/20', '66.249.66.86');
INSERT INTO `stats` VALUES (3413, '2012/09/20', '86.200.227.90');
INSERT INTO `stats` VALUES (3414, '2012/09/21', '66.249.66.86');
INSERT INTO `stats` VALUES (3415, '2012/09/21', '157.55.32.190');
INSERT INTO `stats` VALUES (3416, '2012/09/21', '157.56.93.202');
INSERT INTO `stats` VALUES (3417, '2012/09/21', '131.253.47.145');
INSERT INTO `stats` VALUES (3418, '2012/09/21', '131.253.47.183');
INSERT INTO `stats` VALUES (3419, '2012/09/21', '66.249.71.75');
INSERT INTO `stats` VALUES (3420, '2012/09/22', '41.226.246.176');
INSERT INTO `stats` VALUES (3421, '2012/09/22', '178.154.173.29');
INSERT INTO `stats` VALUES (3422, '2012/09/22', '77.193.136.205');
INSERT INTO `stats` VALUES (3423, '2012/09/23', '213.186.119.144');
INSERT INTO `stats` VALUES (3424, '2012/09/23', '208.115.113.84');
INSERT INTO `stats` VALUES (3425, '2012/09/23', '77.193.136.205');

-- --------------------------------------------------------

-- 
-- Structure de la table `sw_refs`
-- 

CREATE TABLE `sw_refs` (
  `id` int(3) NOT NULL auto_increment,
  `online` int(2) NOT NULL default '1',
  `status` int(2) NOT NULL default '1',
  `cat` char(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `descr` varchar(500) NOT NULL,
  `type` char(40) NOT NULL,
  `techno` char(80) NOT NULL,
  `url` varchar(40) NOT NULL,
  `url2` varchar(40) NOT NULL,
  `url3` varchar(40) NOT NULL,
  `url4` varchar(40) NOT NULL,
  `url5` varchar(40) NOT NULL,
  `photo` varchar(40) NOT NULL default 'no-pic.jpg',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Contenu de la table `sw_refs`
-- 

INSERT INTO `sw_refs` VALUES (1, 1, 1, 'web', 'Amarina - L''essentiel de l''accessoire informatique', '2007-2009', 'Maintenance du site de la marque AMARINA / Ajout de fonctionnalités / Administration du site ( ajout de nouveaux produits ) / Création de bannières produits / Prise de vue produit / Animation produit', 'SITE WEB CONSTRUCTEUR', 'xHtml / Css / Php / MySql', 'http://www.amarina.fr', '', '', '', '', 'scn-amarina.jpg');
INSERT INTO `sw_refs` VALUES (2, 1, 1, 'web', 'Configurateur BTO - Calculez votre prix de vente', '2008', 'Outil de configuration et calculateur de prix pour PC monté / Servant aux revendeurs pour évaluer leur devis et celui pour leur client.', 'SITE/APPLICATION WEB', 'xHtml / Css / Php / MySql / Javascript / Fireworks', 'webdev/config-nemo', '', '', '', '', 'scn-config.jpg');
INSERT INTO `sw_refs` VALUES (3, 1, 0, 'web', 'Viboost - Accélérateur de performances pour VISTA', '2008', 'Mini site promotionnel conçu en flash pour présenter le produit Viboost ( module de mémoire IDE permettant d''accélérer les performances sous Windows VISTA ', 'SITE WEB FLASH', 'Flash / Photoshop / ActionScript', 'webdev/viboost', '', '', '', '', 'scn-viboost.jpg');
INSERT INTO `sw_refs` VALUES (4, 1, 1, 'web', 'Portfolio Webmaster - Concepteur Web', '2006', 'Mon ancien portfolio réalisé en flash', 'SITE WEB FLASH', 'Flash / Photoshop / Fireworks / ActionScript', 'http://j.escaravage.free.fr', '', '', '', '', 'scn-portfolio.jpg');
INSERT INTO `sw_refs` VALUES (5, 1, 1, 'web', 'Le Château des Ormes', '2005', 'Site en flash présentant le Château des ormes (86) / Visite photo / Actu / Historique', 'SITE WEB FLASH', 'Flash / Photoshop / Fireworks / ActionScript', 'http://chateaudesormes.free.fr', '', '', '', '', 'scn-ormes.jpg');
INSERT INTO `sw_refs` VALUES (6, 1, 1, 'print', 'Nemo Grossiste Informatique', '2009', 'Conception d''un catalogue produit pour un grossiste distributeur informatique ', 'CATALOGUE IMPRIME', 'Photoshop / Illustrator', 'sc-catanemo.jpg', 'sc-catanemo1.jpg', 'sc-catanemo2.jpg', '', '', 'scn-catanemo.jpg');
INSERT INTO `sw_refs` VALUES (7, 1, 1, 'print', 'Souris Fashion AMARINA', '', 'Affiche promotionnelle d''un produit lors de sa sortie sur le marché', 'AFFICHE PDF/IMPRIME', 'Photoshop / Illustrator', 'sc-fashion-bleue.jpg', 'sc-fashion-jaune.jpg', 'sc-fashion-rose', 'sc-fashion-verte', '', 'scn-fashion.jpg');
INSERT INTO `sw_refs` VALUES (8, 1, 1, 'print', 'Clé USB INTENSO', '', 'Affiche promotionnelle réalisée lors d''une vente flash sur un produit informatique', 'AFFICHE PDF/IMPRIME', 'Photoshop / Fireworks', 'sc-intenso.jpg', '', '', '', '', 'scn-intenso.jpg');
INSERT INTO `sw_refs` VALUES (9, 1, 1, 'print', 'Gamme PC Montés', '', 'Affiches créées lors du lancement du service en ligne de configuration de pc montés<br/>Voir aussi <a href=''''>Configurateur BTO</a> (Built to order)', 'AFFICHE PDF/IMPRIME/A2/A3', 'Photoshop / Fireworks', 'sc-plaquette-prog.jpg', 'sc-plaquette-imag.jpg', 'sc-plaquette-bnet.jpg', '', '', 'scn-plaquette.jpg');
INSERT INTO `sw_refs` VALUES (10, 1, 1, 'print', 'i-Buddy votre compagnon msn !', '', 'Affiche crée lors de la vente du produit i-Buddy, objet servant à transmettre visuellement les émoticones du logiciel de messagerie', 'AFFICHE IMPRIME/CATALOGUE', 'Photoshop', 'sc-ibuddy.jpg', '', '', '', '', 'scn-ibuddy.jpg');
INSERT INTO `sw_refs` VALUES (11, 1, 1, 'offline', 'Présentation des produits AMARINA', '', 'Démonstration CD-ROM Flash des différents produits de la gamme Amarina <br/><a href=''files/demo_osx.zip''>Demo OSX</a> | <a href=''files/demo_win.zip''>Demo Windows</a>', 'DEMO FLASH CD-ROM', 'Flash / Photoshop / ActionScript', 'files/demo_win.zip', 'files/demo_osx.zip', '', '', '', 'scn-demoama.jpg');
INSERT INTO `sw_refs` VALUES (12, 1, 1, 'print', 'Navytech - Objets et cadeaux de communication', '', 'Maquette de catalogue presentant des produits destinés aux comités d''entreprises ou clientèle de particuliers', 'CATALOGUE IMPRIME', 'Illustrator / Photoshop', 'sc-navy.jpg', 'sc-navy1.jpg', 'sc-navy2.jpg', 'sc-navy3.jpg', '', 'scn-navytech.jpg');
INSERT INTO `sw_refs` VALUES (20, 1, 2, 'web', 'Mundo Latino - Ecole de danses latines', '2010.12.01', 'Réalisation du site de l''association/Ecole de danses latines Mundo Latino présentant les activités de l''association et les évènement/animations à venir.', 'SITE WEB HTML', ' Photoshop /  Fireworks /  xHtml /  Css /  Php', 'http://www.mundo-latino.org', 'pics/works/', 'pics/works/', 'pics/works/', 'pics/works/', 'sc-mundo.jpg');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_authors`
-- 

CREATE TABLE `sym_authors` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `username` varchar(20) NOT NULL default '',
  `password` varchar(40) NOT NULL,
  `first_name` varchar(100) default NULL,
  `last_name` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `last_seen` datetime default '0000-00-00 00:00:00',
  `user_type` enum('author','developer') NOT NULL default 'author',
  `primary` enum('yes','no') NOT NULL default 'no',
  `default_area` varchar(255) default NULL,
  `auth_token_active` enum('yes','no') NOT NULL default 'no',
  `language` varchar(15) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `sym_authors`
-- 

INSERT INTO `sym_authors` VALUES (1, 'skarun', '4fabf877e04661bcc6d39b8b20e099284a97ab2d', 'Jonathan', 'Escaravage', 'skarun@free.fr', '2011-08-18 14:01:48', 'developer', 'yes', NULL, 'no', NULL);

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_cache`
-- 

CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `hash` varchar(32) NOT NULL default '',
  `creation` int(14) NOT NULL default '0',
  `expiry` int(14) unsigned default NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `expiry` (`expiry`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `sym_cache`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries`
-- 

CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Contenu de la table `sym_entries`
-- 

INSERT INTO `sym_entries` VALUES (1, 2, 1, '2011-07-21 15:03:54', '2011-07-21 05:03:54');
INSERT INTO `sym_entries` VALUES (2, 2, 1, '2011-07-21 15:05:01', '2011-07-21 05:05:01');
INSERT INTO `sym_entries` VALUES (3, 1, 1, '2011-07-21 15:05:45', '2011-07-21 05:05:45');
INSERT INTO `sym_entries` VALUES (4, 1, 1, '2011-07-21 15:06:00', '2011-07-21 05:06:00');
INSERT INTO `sym_entries` VALUES (5, 3, 1, '2011-07-21 15:06:19', '2011-07-21 05:06:19');
INSERT INTO `sym_entries` VALUES (6, 3, 1, '2011-07-21 15:06:31', '2011-07-21 05:06:31');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_1`
-- 

CREATE TABLE `sym_entries_data_1` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Contenu de la table `sym_entries_data_1`
-- 

INSERT INTO `sym_entries_data_1` VALUES (12, 3, 'a-primer-to-symphony-2s-default-theme', 'A primer to Symphony 2''s default theme');
INSERT INTO `sym_entries_data_1` VALUES (11, 4, 'an-example-draft-article', 'An example draft article');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_10`
-- 

CREATE TABLE `sym_entries_data_10` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Contenu de la table `sym_entries_data_10`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_11`
-- 

CREATE TABLE `sym_entries_data_11` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Contenu de la table `sym_entries_data_11`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_12`
-- 

CREATE TABLE `sym_entries_data_12` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Contenu de la table `sym_entries_data_12`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_13`
-- 

CREATE TABLE `sym_entries_data_13` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) default NULL,
  `local` int(11) default NULL,
  `gmt` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Contenu de la table `sym_entries_data_13`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_14`
-- 

CREATE TABLE `sym_entries_data_14` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Contenu de la table `sym_entries_data_14`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_15`
-- 

CREATE TABLE `sym_entries_data_15` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Contenu de la table `sym_entries_data_15`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_16`
-- 

CREATE TABLE `sym_entries_data_16` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `sym_entries_data_16`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_17`
-- 

CREATE TABLE `sym_entries_data_17` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `sym_entries_data_17`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_18`
-- 

CREATE TABLE `sym_entries_data_18` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `sym_entries_data_18`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_19`
-- 

CREATE TABLE `sym_entries_data_19` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `sym_entries_data_19`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_2`
-- 

CREATE TABLE `sym_entries_data_2` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Contenu de la table `sym_entries_data_2`
-- 

INSERT INTO `sym_entries_data_2` VALUES (12, 3, 'Every theme in Symphony has an important mission: to introduce newcomers to Symphony by way of a working example. *Spectrum*, the name of this version''s default theme, was designed and developed with such a mission in mind by following a set of constraints. A default theme is required to:\r\n\r\n1. be presented in a format that is universally identified and intuitive.\r\n2. have a clear and simple HTML structure.\r\n3. demonstrate the fundamental concepts in Symphony—[sections](http://symphony-cms.com/learn/concepts/view/sections/), [fields](http://symphony-cms.com/learn/concepts/view/fields/), [data sources](http://symphony-cms.com/learn/concepts/view/data-sources/) and [events](http://symphony-cms.com/learn/concepts/view/events/)—and their interactions together.\r\n4. avoid functionality that does not have any educational value.\r\n\r\n#### The design ####\r\n\r\nOur first rule states that a default theme needs to be in a format that is instantly recognisable to a user. As a result, all of the themes created in Symphony''s history have emphasised a weblog structure. *Spectrum* continues this tradition.\r\n\r\n*Cubic*, the name of a previous default theme, followed the teaching mandate very closely. However, the theme took it one step further and removed complex structure and colour in favour of a simplified look and feel. The main design goal for *Spectrum* is to introduce more colours but still follow the philosophy of a simplistic layout.\r\n\r\n#### Features ####\r\n\r\n*Spectrum* has a handful of additional features that you won''t find in previous default themes. These new features are not only meant to demonstrate the capabilities of the system but also explain some fundamental philosophies in Symphony 2. Below is a list of features:\r\n\r\n- Logged in users will see links to Symphony''s admin to edit articles, manage comments and add notes.\r\n- Logged in users will see 3 protected menu items, article drafts, the debug page and a link to the Symphony admin.\r\n- Articles on the drafts page sport a button to publish the article.\r\n- Article images take advantage of Symphony''s build-in image manipulation feature to crop and size the image automatically.\r\n- The contact form on the about page saves the content to the Messages section on the back end and emails the website''s owner.\r\n\r\n#### Philosophy ####\r\n\r\nAll of the above takes advantage of new features found in version 2. An important concept that is being advocated in Symphony is the practise of creating a tighter connection between the front end and the back end. Developers are encouraged to take advantage of the simplified URL structure of the admin to create a more convenient environment for their users.\r\n\r\nWith the introduction of the Event editor, developers now have even more control when developing a website. For example, the *Publish* button on the [article drafts page](/drafts/) utilises the event editor to create an interaction between the front end and the back end. This allows the *Publish* button to update the "Publish this article" checkbox field from the "Articles" section. This feature also compliments and encourages the philosophy of a more seamless environment between the website and the admin interface.', '<p>Every theme in Symphony has an important mission: to introduce newcomers to Symphony by way of a working example. <em>Spectrum</em>, the name of this version''s default theme, was designed and developed with such a mission in mind by following a set of constraints. A default theme is required to:</p><ol><li>be presented in a format that is universally identified and intuitive.</li><li>have a clear and simple HTML structure.</li><li>demonstrate the fundamental concepts in Symphony—<a href="http://symphony-cms.com/learn/concepts/view/sections/">sections</a>, <a href="http://symphony-cms.com/learn/concepts/view/fields/">fields</a>, <a href="http://symphony-cms.com/learn/concepts/view/data-sources/">data sources</a> and <a href="http://symphony-cms.com/learn/concepts/view/events/">events</a>—and their interactions together.</li><li>avoid functionality that does not have any educational value.</li></ol><h4>The design</h4><p>Our first rule states that a default theme needs to be in a format that is instantly recognisable to a user. As a result, all of the themes created in Symphony''s history have emphasised a weblog structure. <em>Spectrum</em> continues this tradition.</p><p><em>Cubic</em>, the name of a previous default theme, followed the teaching mandate very closely. However, the theme took it one step further and removed complex structure and colour in favour of a simplified look and feel. The main design goal for <em>Spectrum</em> is to introduce more colours but still follow the philosophy of a simplistic layout.</p><h4>Features</h4><p><em>Spectrum</em> has a handful of additional features that you won''t find in previous default themes. These new features are not only meant to demonstrate the capabilities of the system but also explain some fundamental philosophies in Symphony 2. Below is a list of features:</p><ul><li>Logged in users will see links to Symphony''s admin to edit articles, manage comments and add notes.</li><li>Logged in users will see 3 protected menu items, article drafts, the debug page and a link to the Symphony admin.</li><li>Articles on the drafts page sport a button to publish the article.</li><li>Article images take advantage of Symphony''s built-in image manipulation feature to crop and size the image automatically.</li><li>The contact form on the about page saves the content to the Messages section on the back end and emails the website''s owner.</li></ul><h4>Philosophy</h4><p>All of the above takes advantage of new features found in version 2. An important concept that is being advocated in Symphony is the practise of creating a tighter connection between the front end and the back end. Developers are encouraged to take advantage of the simplified URL structure of the admin to create a more convenient environment for their users.</p><p>With the introduction of the Event editor, developers now have even more control when developing a website. For example, the <em>Publish</em> button on the <a href="/drafts/">article drafts page</a> utilises the event editor to create an interaction between the front end and the back end. This allows the <em>Publish</em> button to update the "Publish this article" checkbox field from the "Articles" section. This feature also complements and encourages the philosophy of a more seamless environment between the website and the admin interface.</p>\n');
INSERT INTO `sym_entries_data_2` VALUES (11, 4, 'This is an example draft article. Feel free to test the system by pressing the *publish* button.', '<p>This is an example draft article. Feel free to test the system by pressing the <em>publish</em> button.</p>\n');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_20`
-- 

CREATE TABLE `sym_entries_data_20` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `sym_entries_data_20`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_21`
-- 

CREATE TABLE `sym_entries_data_21` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `sym_entries_data_21`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_22`
-- 

CREATE TABLE `sym_entries_data_22` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `sym_entries_data_22`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_3`
-- 

CREATE TABLE `sym_entries_data_3` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) default NULL,
  `local` int(11) default NULL,
  `gmt` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Contenu de la table `sym_entries_data_3`
-- 

INSERT INTO `sym_entries_data_3` VALUES (12, 3, '2011-07-20T12:34:00+10:00', 1294079640, 1294079640);
INSERT INTO `sym_entries_data_3` VALUES (11, 4, '2011-07-21T13:57:00+10:00', 1294084620, 1294084620);

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_4`
-- 

CREATE TABLE `sym_entries_data_4` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Contenu de la table `sym_entries_data_4`
-- 

INSERT INTO `sym_entries_data_4` VALUES (12, 3, 1);
INSERT INTO `sym_entries_data_4` VALUES (11, 4, 2);

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_5`
-- 

CREATE TABLE `sym_entries_data_5` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Contenu de la table `sym_entries_data_5`
-- 

INSERT INTO `sym_entries_data_5` VALUES (12, 3, 'yes');
INSERT INTO `sym_entries_data_5` VALUES (11, 4, 'no');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_6`
-- 

CREATE TABLE `sym_entries_data_6` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Contenu de la table `sym_entries_data_6`
-- 

INSERT INTO `sym_entries_data_6` VALUES (1, 1, 'symphony', 'Symphony');
INSERT INTO `sym_entries_data_6` VALUES (2, 2, 'announcement', 'Announcement');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_7`
-- 

CREATE TABLE `sym_entries_data_7` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Contenu de la table `sym_entries_data_7`
-- 

INSERT INTO `sym_entries_data_7` VALUES (1, 1, 'All about Symphony, an open source XSLT Content Management System.', '<p>All about Symphony, an open source XSLT Content Management System.</p>\n');
INSERT INTO `sym_entries_data_7` VALUES (2, 2, 'Important news and updates.', '<p>Important news and updates.</p>\n');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_8`
-- 

CREATE TABLE `sym_entries_data_8` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) default NULL,
  `local` int(11) default NULL,
  `gmt` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Contenu de la table `sym_entries_data_8`
-- 

INSERT INTO `sym_entries_data_8` VALUES (4, 5, '2011-07-20T14:54:00+10:00', 1266900840, 1266900840);
INSERT INTO `sym_entries_data_8` VALUES (3, 6, '2011-07-21T14:55:00+10:00', 1266900900, 1266900900);

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_entries_data_9`
-- 

CREATE TABLE `sym_entries_data_9` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Contenu de la table `sym_entries_data_9`
-- 

INSERT INTO `sym_entries_data_9` VALUES (4, 5, 'Check the official [Symphony downloads page](http://symphony-cms.com/downloads/) for a full list of extensions, ensembles and XSLT utilities.', '<p>Check the official <a href="http://symphony-cms.com/downloads/">Symphony downloads page</a> for a full list of extensions, ensembles and XSLT utilities.</p>\n');
INSERT INTO `sym_entries_data_9` VALUES (3, 6, 'Follow the Symphony team ([@symphonycms](http://twitter.com/symphonycms)) and the Symphony community ([#symphonycms](http://twitter.com/search?q=%23symphonycms)) on Twitter.', '<p>Follow the Symphony team (<a href="http://twitter.com/symphonycms">@symphonycms</a>) and the Symphony community (<a href="http://twitter.com/search?q=%23symphonycms">#symphonycms</a>) on Twitter.</p>\n');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_extensions`
-- 

CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `status` enum('enabled','disabled') NOT NULL default 'enabled',
  `version` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 AUTO_INCREMENT=137 ;

-- 
-- Contenu de la table `sym_extensions`
-- 

INSERT INTO `sym_extensions` VALUES (129, 'debugdevkit', 'enabled', '1.2');
INSERT INTO `sym_extensions` VALUES (130, 'export_ensemble', 'enabled', '1.16');
INSERT INTO `sym_extensions` VALUES (131, 'selectbox_link_field', 'enabled', '1.20');
INSERT INTO `sym_extensions` VALUES (132, 'jit_image_manipulation', 'enabled', '1.11');
INSERT INTO `sym_extensions` VALUES (133, 'maintenance_mode', 'enabled', '1.4');
INSERT INTO `sym_extensions` VALUES (134, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `sym_extensions` VALUES (135, 'markdown', 'enabled', '1.13');
INSERT INTO `sym_extensions` VALUES (136, 'xssfilter', 'enabled', '1.1');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_extensions_delegates`
-- 

CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) NOT NULL,
  `delegate` varchar(100) NOT NULL,
  `callback` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 AUTO_INCREMENT=185 ;

-- 
-- Contenu de la table `sym_extensions_delegates`
-- 

INSERT INTO `sym_extensions_delegates` VALUES (169, 129, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` VALUES (170, 129, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` VALUES (171, 130, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` VALUES (172, 132, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` VALUES (173, 132, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` VALUES (174, 133, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` VALUES (175, 133, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` VALUES (176, 133, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `sym_extensions_delegates` VALUES (177, 133, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `sym_extensions_delegates` VALUES (178, 133, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `sym_extensions_delegates` VALUES (179, 133, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `sym_extensions_delegates` VALUES (180, 134, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` VALUES (181, 134, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` VALUES (182, 136, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` VALUES (183, 136, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` VALUES (184, 136, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields`
-- 

CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `label` varchar(255) NOT NULL,
  `element_name` varchar(50) NOT NULL,
  `type` varchar(32) NOT NULL,
  `parent_section` int(11) NOT NULL default '0',
  `required` enum('yes','no') NOT NULL default 'yes',
  `sortorder` int(11) NOT NULL default '1',
  `location` enum('main','sidebar') NOT NULL default 'main',
  `show_column` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- 
-- Contenu de la table `sym_fields`
-- 

INSERT INTO `sym_fields` VALUES (1, 'Title', 'title', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (2, 'Body', 'body', 'textarea', 1, 'yes', 1, 'main', 'no');
INSERT INTO `sym_fields` VALUES (3, 'Date', 'date', 'date', 1, 'no', 2, 'sidebar', 'yes');
INSERT INTO `sym_fields` VALUES (4, 'Categories', 'categories', 'selectbox_link', 1, 'yes', 3, 'sidebar', 'yes');
INSERT INTO `sym_fields` VALUES (5, 'Publish', 'publish', 'checkbox', 1, 'no', 4, 'sidebar', 'yes');
INSERT INTO `sym_fields` VALUES (6, 'Title', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (7, 'Description', 'description', 'textarea', 2, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (8, 'Date', 'date', 'date', 3, 'no', 0, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (9, 'Note', 'note', 'textarea', 3, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (10, 'Author', 'author', 'input', 4, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (11, 'Email', 'email', 'input', 4, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (12, 'Website', 'website', 'input', 4, 'no', 2, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (13, 'Date', 'date', 'date', 4, 'no', 3, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (14, 'Article', 'article', 'selectbox_link', 4, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `sym_fields` VALUES (15, 'Comment', 'comment', 'textarea', 4, 'yes', 5, 'sidebar', 'no');
INSERT INTO `sym_fields` VALUES (16, 'Image', 'image', 'upload', 5, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (17, 'Article', 'article', 'selectbox_link', 5, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (18, 'Description', 'description', 'textarea', 5, 'yes', 2, 'sidebar', 'no');
INSERT INTO `sym_fields` VALUES (19, 'Name', 'name', 'input', 6, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (20, 'Email', 'email', 'input', 6, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (21, 'Subject', 'subject', 'input', 6, 'no', 2, 'main', 'yes');
INSERT INTO `sym_fields` VALUES (22, 'Message', 'message', 'textarea', 6, 'no', 3, 'sidebar', 'no');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields_author`
-- 

CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL default 'no',
  `default_to_current_user` enum('yes','no') NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `sym_fields_author`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields_checkbox`
-- 

CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') NOT NULL default 'on',
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Contenu de la table `sym_fields_checkbox`
-- 

INSERT INTO `sym_fields_checkbox` VALUES (4, 5, 'off', 'Publish this article');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields_date`
-- 

CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Contenu de la table `sym_fields_date`
-- 

INSERT INTO `sym_fields_date` VALUES (6, 3, 'yes');
INSERT INTO `sym_fields_date` VALUES (2, 8, 'yes');
INSERT INTO `sym_fields_date` VALUES (3, 13, 'yes');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields_input`
-- 

CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Contenu de la table `sym_fields_input`
-- 

INSERT INTO `sym_fields_input` VALUES (11, 1, NULL);
INSERT INTO `sym_fields_input` VALUES (2, 6, NULL);
INSERT INTO `sym_fields_input` VALUES (3, 10, NULL);
INSERT INTO `sym_fields_input` VALUES (4, 11, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `sym_fields_input` VALUES (5, 12, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `sym_fields_input` VALUES (6, 19, NULL);
INSERT INTO `sym_fields_input` VALUES (7, 20, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `sym_fields_input` VALUES (8, 21, NULL);

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields_select`
-- 

CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL default 'no',
  `show_association` enum('yes','no') NOT NULL default 'yes',
  `sort_options` enum('yes','no') NOT NULL default 'no',
  `static_options` text,
  `dynamic_options` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `sym_fields_select`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields_selectbox_link`
-- 

CREATE TABLE `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL default 'no',
  `show_association` enum('yes','no') NOT NULL default 'yes',
  `related_field_id` varchar(255) NOT NULL,
  `limit` int(4) unsigned NOT NULL default '20',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Contenu de la table `sym_fields_selectbox_link`
-- 

INSERT INTO `sym_fields_selectbox_link` VALUES (1, 14, 'no', 'yes', '1', 20);
INSERT INTO `sym_fields_selectbox_link` VALUES (2, 17, 'no', 'yes', '1', 20);
INSERT INTO `sym_fields_selectbox_link` VALUES (4, 4, 'no', 'yes', '6', 20);

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields_taglist`
-- 

CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) default NULL,
  `pre_populate_source` varchar(15) default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `sym_fields_taglist`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields_textarea`
-- 

CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) default NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Contenu de la table `sym_fields_textarea`
-- 

INSERT INTO `sym_fields_textarea` VALUES (1, 2, 'markdown', 20);
INSERT INTO `sym_fields_textarea` VALUES (2, 7, 'markdown', 5);
INSERT INTO `sym_fields_textarea` VALUES (3, 9, 'markdown', 15);
INSERT INTO `sym_fields_textarea` VALUES (4, 15, 'markdown_with_purifier', 8);
INSERT INTO `sym_fields_textarea` VALUES (5, 18, 'markdown', 9);
INSERT INTO `sym_fields_textarea` VALUES (6, 22, NULL, 9);

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_fields_upload`
-- 

CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) NOT NULL,
  `validator` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `sym_fields_upload`
-- 

INSERT INTO `sym_fields_upload` VALUES (1, 16, '/workspace/uploads', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_forgotpass`
-- 

CREATE TABLE `sym_forgotpass` (
  `author_id` int(11) NOT NULL default '0',
  `token` varchar(6) NOT NULL,
  `expiry` varchar(25) NOT NULL,
  PRIMARY KEY  (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `sym_forgotpass`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `sym_pages`
-- 

CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `parent` int(11) default NULL,
  `title` varchar(255) NOT NULL default '',
  `handle` varchar(255) default NULL,
  `path` varchar(255) default NULL,
  `params` varchar(255) default NULL,
  `data_sources` text,
  `events` text,
  `sortorder` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

-- 
-- Contenu de la table `sym_pages`
-- 

INSERT INTO `sym_pages` VALUES (64, NULL, 'Home', 'home', NULL, 'category', 'article_images,homepage_articles,navigation,notes', 'login', 1);
INSERT INTO `sym_pages` VALUES (66, NULL, 'About', 'about', NULL, NULL, 'navigation,website_owner', 'login,save_message', 5);
INSERT INTO `sym_pages` VALUES (67, NULL, 'RSS', 'rss', NULL, NULL, 'rss_articles', NULL, 9);
INSERT INTO `sym_pages` VALUES (68, NULL, 'Archive', 'archive', NULL, 'year', 'archive,navigation', 'login', 4);
INSERT INTO `sym_pages` VALUES (69, NULL, 'Articles', 'articles', NULL, 'entry/cat', 'article,article_images,comments,navigation', 'login,save_comment', 2);
INSERT INTO `sym_pages` VALUES (70, NULL, 'Drafts', 'drafts', NULL, 'entry', 'article_images,drafts,navigation', 'login,publish_article', 3);
INSERT INTO `sym_pages` VALUES (75, NULL, 'Maintenance', 'maintenance', NULL, NULL, NULL, NULL, 10);
INSERT INTO `sym_pages` VALUES (76, NULL, 'Page Not Found', 'page-not-found', NULL, NULL, NULL, NULL, 11);

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_pages_types`
-- 

CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=674 DEFAULT CHARSET=utf8 AUTO_INCREMENT=674 ;

-- 
-- Contenu de la table `sym_pages_types`
-- 

INSERT INTO `sym_pages_types` VALUES (659, 76, 'hidden');
INSERT INTO `sym_pages_types` VALUES (655, 70, 'admin');
INSERT INTO `sym_pages_types` VALUES (656, 75, 'hidden');
INSERT INTO `sym_pages_types` VALUES (672, 64, 'hidden');
INSERT INTO `sym_pages_types` VALUES (654, 69, 'hidden');
INSERT INTO `sym_pages_types` VALUES (463, 67, 'XML');
INSERT INTO `sym_pages_types` VALUES (462, 67, 'hidden');
INSERT INTO `sym_pages_types` VALUES (673, 64, 'index');
INSERT INTO `sym_pages_types` VALUES (657, 75, 'maintenance');
INSERT INTO `sym_pages_types` VALUES (658, 76, '404');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_sections`
-- 

CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `handle` varchar(255) NOT NULL,
  `sortorder` int(11) NOT NULL default '0',
  `entry_order` varchar(7) default NULL,
  `entry_order_direction` enum('asc','desc') default 'asc',
  `hidden` enum('yes','no') NOT NULL default 'no',
  `navigation_group` varchar(255) NOT NULL default 'Content',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Contenu de la table `sym_sections`
-- 

INSERT INTO `sym_sections` VALUES (1, 'Articles', 'articles', 1, NULL, 'asc', 'no', 'Content');
INSERT INTO `sym_sections` VALUES (2, 'Categories', 'categories', 2, NULL, 'asc', 'no', 'Content');
INSERT INTO `sym_sections` VALUES (3, 'Notes', 'notes', 3, NULL, 'asc', 'no', 'Content');
INSERT INTO `sym_sections` VALUES (4, 'Comments', 'comments', 4, NULL, 'asc', 'no', 'Content');
INSERT INTO `sym_sections` VALUES (5, 'Images', 'images', 5, NULL, 'asc', 'yes', 'Content');
INSERT INTO `sym_sections` VALUES (6, 'Messages', 'messages', 6, NULL, 'asc', 'no', 'Content');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_sections_association`
-- 

CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned default NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Contenu de la table `sym_sections_association`
-- 

INSERT INTO `sym_sections_association` VALUES (1, 1, 1, 4, 14, 'no');
INSERT INTO `sym_sections_association` VALUES (2, 1, 1, 5, 17, 'no');
INSERT INTO `sym_sections_association` VALUES (4, 2, 6, 1, 4, 'no');

-- --------------------------------------------------------

-- 
-- Structure de la table `sym_sessions`
-- 

CREATE TABLE `sym_sessions` (
  `session` varchar(100) NOT NULL,
  `session_expires` int(10) unsigned NOT NULL default '0',
  `session_data` text,
  PRIMARY KEY  (`session`),
  KEY `session_expires` (`session_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `sym_sessions`
-- 

