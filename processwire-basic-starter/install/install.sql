# --- WireDatabaseBackup {"time":"2022-10-13 00:20:19","user":"","dbName":"db","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1016', '165');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Clone');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Clone a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Clone a tree of pages');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fields_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text DEFAULT NULL,
  `value` varchar(230) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(230),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_ft` (`title`),
  FULLTEXT KEY `value_ft` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '{\"replacements\":{\"\\u00e6\":\"ae\",\"\\u00e5\":\"a\",\"\\u00e4\":\"ae\",\"\\u00e3\":\"a\",\"\\u00df\":\"ss\",\"\\u00f6\":\"oe\",\"\\u00fc\":\"ue\",\"\\u0111\":\"dj\",\"\\u0436\":\"zh\",\"\\u0445\":\"kh\",\"\\u0446\":\"tc\",\"\\u0447\":\"ch\",\"\\u0448\":\"sh\",\"\\u0449\":\"shch\",\"\\u044e\":\"iu\",\"\\u044f\":\"ia\",\":\":\"-\",\",\":\"-\",\"\\u00e0\":\"a\",\"\\u00e1\":\"a\",\"\\u00e2\":\"a\",\"\\u00e8\":\"e\",\"\\u00e9\":\"e\",\"\\u00eb\":\"e\",\"\\u00ea\":\"e\",\"\\u011b\":\"e\",\"\\u00ec\":\"i\",\"\\u00ed\":\"i\",\"\\u00ef\":\"i\",\"\\u00ee\":\"i\",\"\\u0131\":\"i\",\"\\u0130\":\"i\",\"\\u011f\":\"g\",\"\\u00f5\":\"o\",\"\\u00f2\":\"o\",\"\\u00f3\":\"o\",\"\\u00f4\":\"o\",\"\\u00f8\":\"o\",\"\\u00f9\":\"u\",\"\\u00fa\":\"u\",\"\\u00fb\":\"u\",\"\\u016f\":\"u\",\"\\u00f1\":\"n\",\"\\u00e7\":\"c\",\"\\u010d\":\"c\",\"\\u0107\":\"c\",\"\\u00c7\":\"c\",\"\\u010f\":\"d\",\"\\u013a\":\"l\",\"\\u013e\":\"l\",\"\\u0144\":\"n\",\"\\u0148\":\"n\",\"\\u0155\":\"r\",\"\\u0159\":\"r\",\"\\u0161\":\"s\",\"\\u015f\":\"s\",\"\\u015e\":\"s\",\"\\u0165\":\"t\",\"\\u00fd\":\"y\",\"\\u017e\":\"z\",\"\\u0430\":\"a\",\"\\u0431\":\"b\",\"\\u0432\":\"v\",\"\\u0433\":\"g\",\"\\u0434\":\"d\",\"\\u0435\":\"e\",\"\\u0451\":\"e\",\"\\u0437\":\"z\",\"\\u0438\":\"i\",\"\\u0439\":\"i\",\"\\u043a\":\"k\",\"\\u043b\":\"l\",\"\\u043c\":\"m\",\"\\u043d\":\"n\",\"\\u043e\":\"o\",\"\\u043f\":\"p\",\"\\u0440\":\"r\",\"\\u0441\":\"s\",\"\\u0442\":\"t\",\"\\u0443\":\"u\",\"\\u0444\":\"f\",\"\\u044b\":\"y\",\"\\u044d\":\"e\",\"\\u0119\":\"e\",\"\\u0105\":\"a\",\"\\u015b\":\"s\",\"\\u0142\":\"l\",\"\\u017c\":\"z\",\"\\u017a\":\"z\"}}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":20,\"coreVersion\":\"3.0.206\"}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2022-10-12 22:02:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2022-10-12 22:02:21');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2022-10-12 22:02:21');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2022-10-12 22:02:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2022-10-12 22:02:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1015}', '2022-10-12 22:12:29');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'InputfieldRepeater', '0', '', '2022-10-12 22:12:29');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'ProcessPageClone', '11', '', '2022-10-12 22:12:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'AutocompleteModuleClassName', '10', '{\"directory_list\":\"Abbreviate\\nAccessByQueryString\\nAddImageUrls\\nAddTemplateEnhancements\\nAdminActionsUnorderedListToPages\\nAdminAutosizeTextareas\\nAdminBar\\nAdminCustomFiles\\nAdminDeselectRadios\\nAdminHelp\\nAdminHelperLinks\\nAdminLinksInFrontend\\nAdminModalception\\nAdminOnSteroids\\nAdminPageFieldEditLinks\\nAdminRestrictBranch\\nAdminRestrictBranchSelect\\nAdminRestrictPageTree\\nAdminSaveActions\\nAdminStyleRock\\nAdminTemplateColumns\\nAdminThemeApertus\\nAdminThemeBoss\\nAdminThemeCanvas\\nAdminTouch\\nAdoptDefaultsFromParents\\nAjaxIntercoolerJS\\nAllInOneMinify\\nAlternativeGridFiles\\nAlternativeGridImages\\nAmazonS3Cloudfront\\nAngularJS\\nAnonymizeFields\\nAppApi\\nAppApiFile\\nAppApiPage\\nAssets\\nAudio_MP3\\nAuth2FactorPPP\\nAutocompleteModuleClassName\\nAutoExportTemplatesAndFields\\nAutoFbPost\\nAutoSmush\\nAutoTemplateStubs\\nBatchChildEditor\\nbbstarter\\nBlackhole\\nBlueVrSiteProfile\\nBreadcrumbDropdowns\\nCacheNesting\\nCachePlaceholders\\nCacheRedis\\nCheckboxReversed\\nCiTrigger\\nCkeLinkFiles\\nCompliance\\nConnectPageFields\\nContinentsAndCountries\\nCookieManagementBanner\\nCopyMarkdown\\nCountViews\\nCronjobDatabaseBackup\\nCronjobEmptyTrash\\nCroppableImage\\nCroppableImage3\\nCryptoPPP\\nCustomAdminMenus\\nCustomInputfieldDependencies\\nCustomPaths\\nDashboard\\nDatabaseCounters\\nDataSet\\nDebugModeSwitch\\nDebugPerfmon\\nDiscussions\\nDownloadGuard\\nDrLunesTypeManager\\nDuplicator\\nDynamicDescriptionNotes\\nEditorialResponsiveBlogProfile\\nElasticSearch\\nElasticsearchFeeder\\nEleganceAdminTheme\\nEmailNewUser\\nEmailObfuscation\\nEmailVerification\\nEventLoader\\nFacebookEvents\\nFacebookLogin\\nFieldDescriptionsExtended\\nFieldtypeBusinessHours\\nFieldtypeButton\\nFieldtypeColor\\nFieldtypeColorPicker\\nFieldtypeComments\\nFieldtypeConcat\\nFieldtypeCropImage\\nFieldtypeDatetimeAdvanced\\nFieldtypeDecimal\\nFieldtypeDynamicOptions\\nFieldtypeEmailLanguage\\nFieldtypeEvents\\nFieldtypeFields\\nFieldtypeFontIconPicker\\nFieldtypeGeocoder\\nFieldtypeGridSpace\\nFieldtypeHandsontable\\nFieldtypeImageMarker\\nFieldtypeLeafletMapMarker\\nFieldtypeMapMarker\\nFieldtypeMatrix\\nFieldtypeMeasurement\\nFieldtypeModules\\nFieldtypeMultiplier\\nFieldtypeOembed\\nFieldtypeOpenWeatherMap\\nFieldtypePageContextData\\nFieldtypePageIDs\\nFieldtypePagesSelectorQuery\\nFieldtypePageTableExtended\\nFieldtypePageWithDate\\nFieldtypePDF\\nFieldtypePhone\\nFieldtypePoll\\nFieldtypeQRCode\\nFieldtypeRepeater\\nFieldtypeRockAwesome\\nFieldtypeRockGrid\\nFieldtypeRuntimeMarkup\\nFieldtypeRuntimeOnly\\nFieldtypeSelectExtOption\\nFieldtypeSelectFile\\nFieldtypeStarRating\\nFieldtypeStreetAddress\\nFieldtypeTable\\nFieldtypeTextareas\\nFieldtypeTextUnique\\nFieldtypeURLLanguage\\nFieldtypeYaml\\nFilesRenameReplace\\nFileValidatorImage\\nFileValidatorSvgSanitizer\\nFindMerge\\nFlagPages\\nFlowtiAppPerformance\\nFormBuilder\\nFormHelper\\nFormTemplateProcessor\\nFormTemplateProcessorMailer\\nFoundationSiteProfile\\nFredi\\nFrontEndEditLightbox\\nFrontendUser\\nFrontendUserProfile\\nGeoInfo\\nGithubConnect\\nGoogleClientAPI\\nGraphQLFieldtypeMapMarker\\nGrayscalePw\\nGuidGenerator\\nHannaCodeDialog\\nHannaCodeHelper\\nHelloworld\\nHelperFieldLinks\\nHTML5Boilerplate\\nIcsGenerator\\nImageAnimatedGif\\nImageBlurhash\\nImageCropRatios\\nImageExtra\\nImageFileDependencies\\nImageOptim\\nImageRasterizer\\nImageSizerEngineIMagickCLI\\nImageSizerEngineNetpbmCLI\\nImageThumbnailTags\\nImportExternalImages\\nImportPagesCSV\\nImportPagesPrestashop\\nImportPagesXml\\nIndexer\\nInlineEditor\\nInputfieldAceExtended\\nInputfieldChosenSelect\\nInputfieldEasyMDE\\nInputfieldFileSort\\nInputfieldFlickr\\nInputfieldFloatRange\\nInputfieldHCaptcha\\nInputfieldImageMarkdownCodeAdditionalFields\\nInputfieldMarkupCKEditor\\nInputfieldPageAutocomplete\\nInputfieldRecurme\\nInputfieldRepeaterMatrixDuplicate\\nInputfieldSelectImages\\nInputfieldSelectize\\nInputfieldSelectMultipleTransfer\\nInputfieldSelectorSelectID\\nInputfieldSimpleMDE\\nInputfieldSourceCode\\nInputfieldTextareaMarkup\\nInputfieldTextareaTabKey\\nInputfieldTime\\nInputfieldTinyMCE\\nInputfieldTrumbowyg\\nInputfieldURLChecker\\nInstagramBasicDisplayApi\\nInstagramFeed\\nIntegerAutoIncrement\\nItrkService\\nJqueryCollagePlus\\nJqueryFileUpload\\nJqueryIonRangeSlider\\nJquerySelectize\\nKnowledgeBaseSiteProfile\\nLanguageSupport\\nLanguageTranslatorTwig\\nLazyCron\\nLess\\nLibLocalisation\\nLimitPageTable\\nLimitRepeater\\nLimitTable\\nLinkShortener\\nListerNativeDateFormat\\nListerToClipboard\\nLiveChatTawkTo\\nLocalAudioFiles\\nLoginFacebook\\nLoginFailNotifier\\nLoginNotifier\\nLoginPersist\\nLoginScheduler\\nLoginWithEmail\\nLoolEditor\\nLumberjack\\nMailDebugger\\nMaintenanceMode\\nMarkInPageTree\\nMarkupActivityLog\\nMarkupAdaptive\\nMarkupBrowserUpdate\\nMarkupCache\\nMarkupContentSecurityPolicy\\nMarkupCookieConsent\\nMarkupCrossfade\\nMarkupCustomPageList\\nMarkupDribbbleFeed\\nMarkupGoogleRecaptcha\\nMarkupHTMLPurifier\\nMarkupiCalendar\\nMarkupJsonLDSchema\\nMarkupLoadAtom\\nMarkupLoadRSS\\nMarkupMenu\\nMarkupMetadata\\nMarkupPlyrMediaPlayer\\nMarkupProcesswirePhotoswipe\\nMarkupRSS\\nMarkupRSSEnhanced\\nMarkupSimpleNavigation\\nMarkupSitemap\\nMarkupSitemapXML\\nMarkupSocialShareButtons\\nMarkupSrcSet\\nMarkupTwitterFeed\\nMatomoWire\\nMediaLibrary\\nMetadataExif\\nMetroWire\\nMigrations\\nMillBlog\\nMillSite\\nMinify\\nMinifyPageRender\\nMinimalFieldset\\nMinimalistBlueAdminTheme\\nModuleReleaseNotes\\nModuleSettingsImportExport\\nModulesManager2\\nModulesQuickFilter\\nMystique\\nNewsletterSubscription\\nNiftyPasswordsPlus\\nOauth2Login\\nOneTimeOnlyCode\\nPageAccessReleasetime\\nPageCleanEmptyDirs\\nPageEditFieldPermission\\nPageEditPerRole\\nPageEditPerUser\\nPageFieldInfo\\nPagefieldPairs\\nPageHitCounter\\nPageimageAssistant\\nPageImageManipulator\\nPageimageRemoveVariations\\nPageimageSource\\nPageimageSrcset\\nPageListBetterLabels\\nPageListImageLabel\\nPageListSelectMultipleQuickly\\nPageListSelectUnselectButton\\nPageListShowPageId\\nPageMjmlToHtml\\nPageProtector\\nPageQueryBoss\\nPageReferenceDefaultValue\\nPageRenameOptions\\nPageRenderFindReplace\\nPageRenderIPRestriction\\nPages2JSON\\nPages2Pdf\\nPagesAtBottom\\nPagesMapManager\\nPagesSum\\nPageTableExtraActions\\nPageTableNext\\nPageTreeAddNewChildsReverse\\nPageUseIdAsName\\nPasswordBannedList\\nPasswordForceChange\\nPasswordGenerator\\nPaymentModule\\nPaymentMollie\\nPaymentPaypal\\nPaymentStripe\\nPayWhirlAPI\\nPodcastProfile\\nPostProcessUrl\\nPrevNextTabs\\nPrivacyWire\\nProCache\\nProcess404Logger\\nProcess404Search\\nProcessAccessOverview\\nProcessAdminActions\\nProcessAdminCustomPages\\nProcessAssetsBackups\\nProcessBlog\\nProcessCacheControl\\nProcessChangelog\\nProcessCustomUploadNames\\nProcessDashboard\\nProcessDashboardTasks\\nProcessDatabaseBackups\\nProcessDataImport\\nProcessDateArchiver\\nProcessDebugPageFields\\nProcessDiagnostics\\nProcessDocumentation\\nProcessDynamicSelects\\nProcessEmailToPage\\nProcessExportProfile\\nProcessFieldChangeNotifier\\nProcessFileEdit\\nProcessFileManager\\nProcessForgotPassword\\nProcessGcalEmbed\\nProcessGeneralSettings\\nProcessGetVideoThumbs\\nProcessGraphQL\\nProcessHello\\nProcessIndieAuth\\nProcessJumplinks\\nProcessLanguageFieldExportImport\\nProcessListerSelector\\nProcessLoginHistory\\nProcessLogstash\\nProcessMediaManager\\nProcessMenuBuilder\\nProcessModuleApiDoc\\nProcessModuleLicense\\nProcessNetteTester\\nProcessPageClone\\nProcessPageCloneAdaptUrls\\nProcessPageFieldSelectCreator\\nProcessPageListerUrls\\nProcessPageListMultipleSorting\\nProcessPageRedirects\\nProcessPagesExport\\nProcessPageViewStat\\nProcessPodcastSubscriptions\\nProcessRecurringEvents\\nProcessRedirectIds\\nProcessRedirects\\nProcessSetupPageName\\nProcessSlider\\nProcessSwitchUser\\nProcessTagParserTest\\nProcessTerminal\\nProcessTranslatePage\\nProcessTrashman\\nProcessVariations\\nProcessVisualPageSelector\\nProcessWireBootstrap4\\nProcessWireFoundation6\\nProcessWirePublishDate\\nProcessWireUpgrade\\nProtectedMode\\nPublishAsHidden\\nPublishToTwitter\\nPulsewayPush\\nPushAlert\\nPwat\\nPWCron\\nPWpodcast\\nRedBeanPHP\\nRepeaterDepthHelper\\nRepeaterEasySort\\nRepeaterImages\\nRestApi\\nRestApiProfile\\nRestrictMultiLanguageBranch\\nRestrictRepeaterMatrix\\nRestrictTabView\\nRockBirthday\\nRockCalculator\\nRockFinder\\nRockFinder2\\nRockFinder3\\nRockFrontend\\nRockIframe\\nRockLanguage\\nRockLESS\\nRockMailLogger\\nRockMigrations\\nRockMigrations1\\nRockPdf\\nRockSkinUikit\\nSamlAuth\\nSanitizerEasySlugger\\nSanitizerTransliterate\\nSassify\\nScheduleCloudBackups\\nSearchEngine\\nSearchEngineFileIndexer\\nSelectizeAll\\nSelectizeImageTags\\nSelectizeTemplateFieldTags\\nSelectOncePerTable\\nSeoMaestro\\nServiceCurrencyConversion\\nServiceIPGeolocation\\nSessionAllow\\nSessionHandlerRedis\\nSessionLoginAlarm\\nSessionViewer\\nSettingsFactory\\nSimpleContactForm\\nSimpleForms\\nSite-Simple-Blog\\nsite-simple-blog-multilanguage\\nSiteBs4\\nSiteMinimal\\nSiteSpectre\\nSiteTwilight\\nSmartyTemplating\\nSnippets\\nSnipWire\\nSpex\\nStaticWire\\nStripedTravelBlogTemplateResponsive\\nStronglyTypedTravelBlogTemplate\\nSubscribers\\nSubscribeToMailchimp\\nSymmetricEncryptedText\\nTableCsvImportExport\\nTasker\\nTemplateEngineFactory\\nTemplateEngineMustache\\nTemplateEnginePug\\nTemplateEngineSmarty\\nTemplateEngineTwig\\nTemplateFieldWidths\\nTemplateFileHelper\\nTemplateLatteReplace\\nTemplateOncePerParent\\nTemplateParents\\nTemplatePreviewImages\\nTemplatesChildPages\\nTemplateTagsEditList\\nTemplateTwig\\nTextformatterAccordion\\nTextformatterAudioEmbed\\nTextformatterAutoAnchor\\nTextformatterAutoLinks\\nTextformatterAutoParagraph\\nTextformatterAutoSchema\\nTextformatterBBCode\\nTextformatterCodeBlocks\\nTextformatterCurrency\\nTextformatterEmoji\\nTextformatterExternalRedirect\\nTextformatterFileInfo\\nTextformatterFindReplace\\nTextformatterFluidImages\\nTextformatterGlossary\\nTextformatterGoogleMaps\\nTextformatterHannaCode\\nTextformatterImageFieldMarkup\\nTextformatterImageInterceptor\\nTextformatterImageTags\\nTextformatterMakeLinks\\nTextformatterMarkdownInMarkup\\nTextformatterMultiValue\\nTextformatterOEmbed\\nTextformatterPageImages\\nTextformatterPageTitleLinks\\nTextformatterPagination\\nTextformatterParsedownExtraPlugin\\nTextformatterPrism\\nTextformatterProcessImages\\nTextformatterRemoveBlocks\\nTextformatterRemoveEmptyParagraphs\\nTextformatterReplaceCurlyQuotes\\nTextformatterRockHeadlineIDs\\nTextformatterSoundmanager\\nTextformatterTagParser\\nTextformatterTextile\\nTextformatterThinspace\\nTextformatterThinspacePlus\\nTextformatterTypographer\\nTextformatterVideoEmbed\\nTextformatterVideoEmbedOptions\\nTextformatterVideoMarkup\\nTextformatterWebpImages\\nTextformatterWrapTable\\nTextInputAwesomplete\\nTfaEmail\\nTfaTotp\\nTfaU2F\\nTfaWebAuthn\\nTinyBar\\nTracyDebugger\\nTrelloWire\\nTwack\\nTwigExtensions\\nUikit3MinimalProfile\\nUnify\\nUniqueImageVariations\\nUnsemanticSiteProfile\\nValidation\\nVersionControl\\nVersionControlForTextFields\\nVideoOrSocialPostEmbed\\nWayFathomAnalytics\\nWebmention\\nWireframe\\nWireframeRendererLatte\\nWireframeRendererTwig\\nWireMailBranding\\nWireMailChimp\\nWireMailGmail\\nWireMailgun\\nWireMailMailgun\\nWireMailMandrill\\nWireMailPHPMailer\\nWireMailPostmark\\nWireMailRouter\\nWireMailSendGrid\\nWireMailSmtp\\nWireMailSwiftMailer\\nWireQueue\\nWireWordTools\",\"options_type\":\"directory_list\",\"custom_list\":\"\",\"url_list\":\"\",\"use_fuzzy\":1,\"awesomplete_options\":\"autoFirst: true,\\nmaxItems: 15\"}', '2022-10-12 22:15:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'FieldtypeDecimal', '1', '', '2022-10-12 22:17:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'FieldtypeOptions', '1', '', '2022-10-12 22:17:16');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'InputfieldPageAutocomplete', '0', '', '2022-10-12 22:17:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'InputfieldToggle', '0', '', '2022-10-12 22:17:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'FieldtypeToggle', '1', '', '2022-10-12 22:18:07');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'LazyCron', '3', '', '2022-10-12 22:18:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'PagePathHistory', '3', '{\"minimumAge\":120}', '2022-10-12 22:19:03');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'ProcessForgotPassword', '1', '{\"emailFrom\":\"\",\"askEmail\":\"\",\"maxPerIP\":3,\"useLog\":1,\"confirmFields\":[\"email:92\"],\"allowRoles\":[],\"blockRoles\":[]}', '2022-10-12 22:19:16');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT 0,
  `templates_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8mb4;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2022-10-12 22:02:21', '40', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2022-10-12 22:02:29', '40', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2022-10-12 22:02:29', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2022-10-12 22:02:29', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '3', '2022-10-12 22:02:06', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2022-10-12 22:02:21', '40', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '41', '2022-10-12 22:02:06', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2022-10-12 22:02:06', '40', '2022-10-12 22:02:06', '40', '2022-10-12 22:02:06', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2022-10-12 22:02:06', '40', '2022-10-12 22:02:06', '40', '2022-10-12 22:02:06', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2022-10-12 22:02:21', '40', '2022-10-12 22:02:21', '40', '2022-10-12 22:02:21', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2022-10-12 22:02:21', '40', '2022-10-12 22:02:21', '40', '2022-10-12 22:02:21', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2022-10-12 22:02:26', '40', '2022-10-12 22:02:26', '40', '2022-10-12 22:02:26', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2022-10-12 22:02:26', '40', '2022-10-12 22:02:26', '40', '2022-10-12 22:02:26', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2022-10-12 22:02:26', '40', '2022-10-12 22:02:26', '40', '2022-10-12 22:02:26', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '2', '2', 'repeaters', '1036', '2022-10-12 22:12:29', '41', '2022-10-12 22:12:29', '41', '2022-10-12 22:12:29', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '3', '2', 'clone', '1024', '2022-10-12 22:12:37', '41', '2022-10-12 22:12:37', '41', '2022-10-12 22:12:37', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '31', '5', 'page-clone', '1', '2022-10-12 22:12:37', '41', '2022-10-12 22:12:37', '41', '2022-10-12 22:12:37', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '31', '5', 'page-clone-tree', '1', '2022-10-12 22:12:37', '41', '2022-10-12 22:12:37', '41', '2022-10-12 22:12:37', '14');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2022-10-12 22:02:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2022-10-12 22:02:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2022-10-12 22:02:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2022-10-12 22:02:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '2', '2022-10-12 22:12:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2022-10-12 22:12:37');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('7', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `process_forgot_password`;
CREATE TABLE `process_forgot_password` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `token` char(32) NOT NULL,
  `ts` int(10) unsigned NOT NULL,
  `ip` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `ts` (`ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT 0,
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `cache_time` mediumint(9) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1665611957,\"ns\":\"ProcessWire\",\"_lazy\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1665611957,\"ns\":\"ProcessWire\",\"_lazy\":1,\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1665611957,\"ns\":\"ProcessWire\",\"_lazy\":\"*\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":14,"numCreateTables":21,"numInserts":276,"numSeconds":0}