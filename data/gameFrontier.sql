-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para information_schema
CREATE DATABASE IF NOT EXISTS `information_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `information_schema`;

-- Volcando estructura para tabla information_schema.CHARACTER_SETS
CREATE TEMPORARY TABLE IF NOT EXISTS `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATE_NAME` varchar(32) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(60) NOT NULL DEFAULT '',
  `MAXLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.COLLATIONS
CREATE TEMPORARY TABLE IF NOT EXISTS `COLLATIONS` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `ID` bigint(11) NOT NULL DEFAULT '0',
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT '',
  `IS_COMPILED` varchar(3) NOT NULL DEFAULT '',
  `SORTLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.COLLATION_CHARACTER_SET_APPLICABILITY
CREATE TEMPORARY TABLE IF NOT EXISTS `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.COLUMNS
CREATE TEMPORARY TABLE IF NOT EXISTS `COLUMNS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` bigint(21) unsigned DEFAULT NULL,
  `DATETIME_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(32) DEFAULT NULL,
  `COLLATION_NAME` varchar(32) DEFAULT NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL DEFAULT '',
  `EXTRA` varchar(30) NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(80) NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(1024) NOT NULL DEFAULT '',
  `GENERATION_EXPRESSION` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.COLUMN_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.ENGINES
CREATE TEMPORARY TABLE IF NOT EXISTS `ENGINES` (
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `SUPPORT` varchar(8) NOT NULL DEFAULT '',
  `COMMENT` varchar(80) NOT NULL DEFAULT '',
  `TRANSACTIONS` varchar(3) DEFAULT NULL,
  `XA` varchar(3) DEFAULT NULL,
  `SAVEPOINTS` varchar(3) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.EVENTS
CREATE TEMPORARY TABLE IF NOT EXISTS `EVENTS` (
  `EVENT_CATALOG` varchar(64) NOT NULL DEFAULT '',
  `EVENT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(93) NOT NULL DEFAULT '',
  `TIME_ZONE` varchar(64) NOT NULL DEFAULT '',
  `EVENT_BODY` varchar(8) NOT NULL DEFAULT '',
  `EVENT_DEFINITION` longtext NOT NULL,
  `EVENT_TYPE` varchar(9) NOT NULL DEFAULT '',
  `EXECUTE_AT` datetime DEFAULT NULL,
  `INTERVAL_VALUE` varchar(256) DEFAULT NULL,
  `INTERVAL_FIELD` varchar(18) DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `STARTS` datetime DEFAULT NULL,
  `ENDS` datetime DEFAULT NULL,
  `STATUS` varchar(18) NOT NULL DEFAULT '',
  `ON_COMPLETION` varchar(12) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `EVENT_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `ORIGINATOR` bigint(10) NOT NULL DEFAULT '0',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.FILES
CREATE TEMPORARY TABLE IF NOT EXISTS `FILES` (
  `FILE_ID` bigint(4) NOT NULL DEFAULT '0',
  `FILE_NAME` varchar(4000) DEFAULT NULL,
  `FILE_TYPE` varchar(20) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL,
  `TABLE_CATALOG` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `TABLE_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NUMBER` bigint(4) DEFAULT NULL,
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `FULLTEXT_KEYS` varchar(64) DEFAULT NULL,
  `DELETED_ROWS` bigint(4) DEFAULT NULL,
  `UPDATE_COUNT` bigint(4) DEFAULT NULL,
  `FREE_EXTENTS` bigint(4) DEFAULT NULL,
  `TOTAL_EXTENTS` bigint(4) DEFAULT NULL,
  `EXTENT_SIZE` bigint(4) NOT NULL DEFAULT '0',
  `INITIAL_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `LAST_ACCESS_TIME` datetime DEFAULT NULL,
  `RECOVER_TIME` bigint(4) DEFAULT NULL,
  `TRANSACTION_COUNTER` bigint(4) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL DEFAULT '',
  `EXTRA` varchar(255) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.GLOBAL_STATUS
CREATE TEMPORARY TABLE IF NOT EXISTS `GLOBAL_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.GLOBAL_VARIABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `GLOBAL_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_BUFFER_PAGE
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_BUFFER_PAGE` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `BLOCK_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `SPACE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_TYPE` varchar(64) DEFAULT NULL,
  `FLUSH_TYPE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `FIX_COUNT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `IS_HASHED` varchar(3) DEFAULT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `ACCESS_TIME` bigint(21) unsigned NOT NULL DEFAULT '0',
  `TABLE_NAME` varchar(1024) DEFAULT NULL,
  `INDEX_NAME` varchar(1024) DEFAULT NULL,
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_STATE` varchar(64) DEFAULT NULL,
  `IO_FIX` varchar(64) DEFAULT NULL,
  `IS_OLD` varchar(3) DEFAULT NULL,
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_BUFFER_PAGE_LRU
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_BUFFER_PAGE_LRU` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `LRU_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `SPACE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_TYPE` varchar(64) DEFAULT NULL,
  `FLUSH_TYPE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `FIX_COUNT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `IS_HASHED` varchar(3) DEFAULT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `ACCESS_TIME` bigint(21) unsigned NOT NULL DEFAULT '0',
  `TABLE_NAME` varchar(1024) DEFAULT NULL,
  `INDEX_NAME` varchar(1024) DEFAULT NULL,
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COMPRESSED` varchar(3) DEFAULT NULL,
  `IO_FIX` varchar(64) DEFAULT NULL,
  `IS_OLD` varchar(3) DEFAULT NULL,
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_BUFFER_POOL_STATS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_BUFFER_POOL_STATS` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `POOL_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `FREE_BUFFERS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OLD_DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MODIFIED_DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_DECOMPRESS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_READS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_FLUSH_LRU` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_FLUSH_LIST` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_MADE_YOUNG` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_NOT_MADE_YOUNG` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_MADE_YOUNG_RATE` double NOT NULL DEFAULT '0',
  `PAGES_MADE_NOT_YOUNG_RATE` double NOT NULL DEFAULT '0',
  `NUMBER_PAGES_READ` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_PAGES_CREATED` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_PAGES_WRITTEN` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_READ_RATE` double NOT NULL DEFAULT '0',
  `PAGES_CREATE_RATE` double NOT NULL DEFAULT '0',
  `PAGES_WRITTEN_RATE` double NOT NULL DEFAULT '0',
  `NUMBER_PAGES_GET` bigint(21) unsigned NOT NULL DEFAULT '0',
  `HIT_RATE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NOT_YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_PAGES_READ_AHEAD` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_READ_AHEAD_EVICTED` bigint(21) unsigned NOT NULL DEFAULT '0',
  `READ_AHEAD_RATE` double NOT NULL DEFAULT '0',
  `READ_AHEAD_EVICTED_RATE` double NOT NULL DEFAULT '0',
  `LRU_IO_TOTAL` bigint(21) unsigned NOT NULL DEFAULT '0',
  `LRU_IO_CURRENT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `UNCOMPRESS_TOTAL` bigint(21) unsigned NOT NULL DEFAULT '0',
  `UNCOMPRESS_CURRENT` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_CMP
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `compress_ops` int(11) NOT NULL DEFAULT '0',
  `compress_ops_ok` int(11) NOT NULL DEFAULT '0',
  `compress_time` int(11) NOT NULL DEFAULT '0',
  `uncompress_ops` int(11) NOT NULL DEFAULT '0',
  `uncompress_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_CMPMEM
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMPMEM` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `buffer_pool_instance` int(11) NOT NULL DEFAULT '0',
  `pages_used` int(11) NOT NULL DEFAULT '0',
  `pages_free` int(11) NOT NULL DEFAULT '0',
  `relocation_ops` bigint(21) NOT NULL DEFAULT '0',
  `relocation_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_CMPMEM_RESET
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMPMEM_RESET` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `buffer_pool_instance` int(11) NOT NULL DEFAULT '0',
  `pages_used` int(11) NOT NULL DEFAULT '0',
  `pages_free` int(11) NOT NULL DEFAULT '0',
  `relocation_ops` bigint(21) NOT NULL DEFAULT '0',
  `relocation_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_CMP_PER_INDEX
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP_PER_INDEX` (
  `database_name` varchar(192) NOT NULL DEFAULT '',
  `table_name` varchar(192) NOT NULL DEFAULT '',
  `index_name` varchar(192) NOT NULL DEFAULT '',
  `compress_ops` int(11) NOT NULL DEFAULT '0',
  `compress_ops_ok` int(11) NOT NULL DEFAULT '0',
  `compress_time` int(11) NOT NULL DEFAULT '0',
  `uncompress_ops` int(11) NOT NULL DEFAULT '0',
  `uncompress_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_CMP_PER_INDEX_RESET
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP_PER_INDEX_RESET` (
  `database_name` varchar(192) NOT NULL DEFAULT '',
  `table_name` varchar(192) NOT NULL DEFAULT '',
  `index_name` varchar(192) NOT NULL DEFAULT '',
  `compress_ops` int(11) NOT NULL DEFAULT '0',
  `compress_ops_ok` int(11) NOT NULL DEFAULT '0',
  `compress_time` int(11) NOT NULL DEFAULT '0',
  `uncompress_ops` int(11) NOT NULL DEFAULT '0',
  `uncompress_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_CMP_RESET
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP_RESET` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `compress_ops` int(11) NOT NULL DEFAULT '0',
  `compress_ops_ok` int(11) NOT NULL DEFAULT '0',
  `compress_time` int(11) NOT NULL DEFAULT '0',
  `uncompress_ops` int(11) NOT NULL DEFAULT '0',
  `uncompress_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_FT_BEING_DELETED
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_BEING_DELETED` (
  `DOC_ID` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_FT_CONFIG
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_CONFIG` (
  `KEY` varchar(193) NOT NULL DEFAULT '',
  `VALUE` varchar(193) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_FT_DEFAULT_STOPWORD
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_DEFAULT_STOPWORD` (
  `value` varchar(18) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_FT_DELETED
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_DELETED` (
  `DOC_ID` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_FT_INDEX_CACHE
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_INDEX_CACHE` (
  `WORD` varchar(337) NOT NULL DEFAULT '',
  `FIRST_DOC_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `LAST_DOC_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DOC_COUNT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DOC_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `POSITION` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_FT_INDEX_TABLE
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_INDEX_TABLE` (
  `WORD` varchar(337) NOT NULL DEFAULT '',
  `FIRST_DOC_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `LAST_DOC_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DOC_COUNT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DOC_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `POSITION` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_LOCKS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_LOCKS` (
  `lock_id` varchar(81) NOT NULL DEFAULT '',
  `lock_trx_id` varchar(18) NOT NULL DEFAULT '',
  `lock_mode` varchar(32) NOT NULL DEFAULT '',
  `lock_type` varchar(32) NOT NULL DEFAULT '',
  `lock_table` varchar(1024) NOT NULL DEFAULT '',
  `lock_index` varchar(1024) DEFAULT NULL,
  `lock_space` bigint(21) unsigned DEFAULT NULL,
  `lock_page` bigint(21) unsigned DEFAULT NULL,
  `lock_rec` bigint(21) unsigned DEFAULT NULL,
  `lock_data` varchar(8192) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_LOCK_WAITS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_LOCK_WAITS` (
  `requesting_trx_id` varchar(18) NOT NULL DEFAULT '',
  `requested_lock_id` varchar(81) NOT NULL DEFAULT '',
  `blocking_trx_id` varchar(18) NOT NULL DEFAULT '',
  `blocking_lock_id` varchar(81) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_METRICS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_METRICS` (
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `SUBSYSTEM` varchar(193) NOT NULL DEFAULT '',
  `COUNT` bigint(21) NOT NULL DEFAULT '0',
  `MAX_COUNT` bigint(21) DEFAULT NULL,
  `MIN_COUNT` bigint(21) DEFAULT NULL,
  `AVG_COUNT` double DEFAULT NULL,
  `COUNT_RESET` bigint(21) NOT NULL DEFAULT '0',
  `MAX_COUNT_RESET` bigint(21) DEFAULT NULL,
  `MIN_COUNT_RESET` bigint(21) DEFAULT NULL,
  `AVG_COUNT_RESET` double DEFAULT NULL,
  `TIME_ENABLED` datetime DEFAULT NULL,
  `TIME_DISABLED` datetime DEFAULT NULL,
  `TIME_ELAPSED` bigint(21) DEFAULT NULL,
  `TIME_RESET` datetime DEFAULT NULL,
  `STATUS` varchar(193) NOT NULL DEFAULT '',
  `TYPE` varchar(193) NOT NULL DEFAULT '',
  `COMMENT` varchar(193) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_COLUMNS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_COLUMNS` (
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `POS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MTYPE` int(11) NOT NULL DEFAULT '0',
  `PRTYPE` int(11) NOT NULL DEFAULT '0',
  `LEN` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_DATAFILES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_DATAFILES` (
  `SPACE` int(11) unsigned NOT NULL DEFAULT '0',
  `PATH` varchar(4000) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_FIELDS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_FIELDS` (
  `INDEX_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `POS` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_FOREIGN
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_FOREIGN` (
  `ID` varchar(193) NOT NULL DEFAULT '',
  `FOR_NAME` varchar(193) NOT NULL DEFAULT '',
  `REF_NAME` varchar(193) NOT NULL DEFAULT '',
  `N_COLS` int(11) unsigned NOT NULL DEFAULT '0',
  `TYPE` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_FOREIGN_COLS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_FOREIGN_COLS` (
  `ID` varchar(193) NOT NULL DEFAULT '',
  `FOR_COL_NAME` varchar(193) NOT NULL DEFAULT '',
  `REF_COL_NAME` varchar(193) NOT NULL DEFAULT '',
  `POS` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_INDEXES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_INDEXES` (
  `INDEX_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `TYPE` int(11) NOT NULL DEFAULT '0',
  `N_FIELDS` int(11) NOT NULL DEFAULT '0',
  `PAGE_NO` int(11) NOT NULL DEFAULT '0',
  `SPACE` int(11) NOT NULL DEFAULT '0',
  `MERGE_THRESHOLD` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_TABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_TABLES` (
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(655) NOT NULL DEFAULT '',
  `FLAG` int(11) NOT NULL DEFAULT '0',
  `N_COLS` int(11) NOT NULL DEFAULT '0',
  `SPACE` int(11) NOT NULL DEFAULT '0',
  `FILE_FORMAT` varchar(10) DEFAULT NULL,
  `ROW_FORMAT` varchar(12) DEFAULT NULL,
  `ZIP_PAGE_SIZE` int(11) unsigned NOT NULL DEFAULT '0',
  `SPACE_TYPE` varchar(10) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_TABLESPACES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_TABLESPACES` (
  `SPACE` int(11) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(655) NOT NULL DEFAULT '',
  `FLAG` int(11) unsigned NOT NULL DEFAULT '0',
  `FILE_FORMAT` varchar(10) DEFAULT NULL,
  `ROW_FORMAT` varchar(22) DEFAULT NULL,
  `PAGE_SIZE` int(11) unsigned NOT NULL DEFAULT '0',
  `ZIP_PAGE_SIZE` int(11) unsigned NOT NULL DEFAULT '0',
  `SPACE_TYPE` varchar(10) DEFAULT NULL,
  `FS_BLOCK_SIZE` int(11) unsigned NOT NULL DEFAULT '0',
  `FILE_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `ALLOCATED_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_TABLESTATS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_TABLESTATS` (
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `STATS_INITIALIZED` varchar(193) NOT NULL DEFAULT '',
  `NUM_ROWS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `CLUST_INDEX_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OTHER_INDEX_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MODIFIED_COUNTER` bigint(21) unsigned NOT NULL DEFAULT '0',
  `AUTOINC` bigint(21) unsigned NOT NULL DEFAULT '0',
  `REF_COUNT` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_SYS_VIRTUAL
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_VIRTUAL` (
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `POS` int(11) unsigned NOT NULL DEFAULT '0',
  `BASE_POS` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_TEMP_TABLE_INFO
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TEMP_TABLE_INFO` (
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(202) DEFAULT NULL,
  `N_COLS` int(11) unsigned NOT NULL DEFAULT '0',
  `SPACE` int(11) unsigned NOT NULL DEFAULT '0',
  `PER_TABLE_TABLESPACE` varchar(64) DEFAULT NULL,
  `IS_COMPRESSED` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.INNODB_TRX
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TRX` (
  `trx_id` varchar(18) NOT NULL DEFAULT '',
  `trx_state` varchar(13) NOT NULL DEFAULT '',
  `trx_started` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trx_requested_lock_id` varchar(81) DEFAULT NULL,
  `trx_wait_started` datetime DEFAULT NULL,
  `trx_weight` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_mysql_thread_id` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_query` varchar(1024) DEFAULT NULL,
  `trx_operation_state` varchar(64) DEFAULT NULL,
  `trx_tables_in_use` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_tables_locked` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_lock_structs` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_lock_memory_bytes` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_rows_locked` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_rows_modified` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_concurrency_tickets` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_isolation_level` varchar(16) NOT NULL DEFAULT '',
  `trx_unique_checks` int(1) NOT NULL DEFAULT '0',
  `trx_foreign_key_checks` int(1) NOT NULL DEFAULT '0',
  `trx_last_foreign_key_error` varchar(256) DEFAULT NULL,
  `trx_adaptive_hash_latched` int(1) NOT NULL DEFAULT '0',
  `trx_adaptive_hash_timeout` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_is_read_only` int(1) NOT NULL DEFAULT '0',
  `trx_autocommit_non_locking` int(1) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.KEY_COLUMN_USAGE
CREATE TEMPORARY TABLE IF NOT EXISTS `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(10) NOT NULL DEFAULT '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) DEFAULT NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `REFERENCED_TABLE_NAME` varchar(64) DEFAULT NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.OPTIMIZER_TRACE
CREATE TEMPORARY TABLE IF NOT EXISTS `OPTIMIZER_TRACE` (
  `QUERY` longtext NOT NULL,
  `TRACE` longtext NOT NULL,
  `MISSING_BYTES_BEYOND_MAX_MEM_SIZE` int(20) NOT NULL DEFAULT '0',
  `INSUFFICIENT_PRIVILEGES` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.PARAMETERS
CREATE TEMPORARY TABLE IF NOT EXISTS `PARAMETERS` (
  `SPECIFIC_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `SPECIFIC_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` int(21) NOT NULL DEFAULT '0',
  `PARAMETER_MODE` varchar(5) DEFAULT NULL,
  `PARAMETER_NAME` varchar(64) DEFAULT NULL,
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` int(21) DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` int(21) DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` int(21) DEFAULT NULL,
  `DATETIME_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(64) DEFAULT NULL,
  `COLLATION_NAME` varchar(64) DEFAULT NULL,
  `DTD_IDENTIFIER` longtext NOT NULL,
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.PARTITIONS
CREATE TEMPORARY TABLE IF NOT EXISTS `PARTITIONS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PARTITION_NAME` varchar(64) DEFAULT NULL,
  `SUBPARTITION_NAME` varchar(64) DEFAULT NULL,
  `PARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `SUBPARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_METHOD` varchar(18) DEFAULT NULL,
  `SUBPARTITION_METHOD` varchar(12) DEFAULT NULL,
  `PARTITION_EXPRESSION` longtext,
  `SUBPARTITION_EXPRESSION` longtext,
  `PARTITION_DESCRIPTION` longtext,
  `TABLE_ROWS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `AVG_ROW_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_FREE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_COMMENT` varchar(80) NOT NULL DEFAULT '',
  `NODEGROUP` varchar(12) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.PLUGINS
CREATE TEMPORARY TABLE IF NOT EXISTS `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_STATUS` varchar(10) NOT NULL DEFAULT '',
  `PLUGIN_TYPE` varchar(80) NOT NULL DEFAULT '',
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_LIBRARY` varchar(64) DEFAULT NULL,
  `PLUGIN_LIBRARY_VERSION` varchar(20) DEFAULT NULL,
  `PLUGIN_AUTHOR` varchar(64) DEFAULT NULL,
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) DEFAULT NULL,
  `LOAD_OPTION` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.PROCESSLIST
CREATE TEMPORARY TABLE IF NOT EXISTS `PROCESSLIST` (
  `ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `USER` varchar(32) NOT NULL DEFAULT '',
  `HOST` varchar(64) NOT NULL DEFAULT '',
  `DB` varchar(64) DEFAULT NULL,
  `COMMAND` varchar(16) NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT '0',
  `STATE` varchar(64) DEFAULT NULL,
  `INFO` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.PROFILING
CREATE TEMPORARY TABLE IF NOT EXISTS `PROFILING` (
  `QUERY_ID` int(20) NOT NULL DEFAULT '0',
  `SEQ` int(20) NOT NULL DEFAULT '0',
  `STATE` varchar(30) NOT NULL DEFAULT '',
  `DURATION` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `CPU_USER` decimal(9,6) DEFAULT NULL,
  `CPU_SYSTEM` decimal(9,6) DEFAULT NULL,
  `CONTEXT_VOLUNTARY` int(20) DEFAULT NULL,
  `CONTEXT_INVOLUNTARY` int(20) DEFAULT NULL,
  `BLOCK_OPS_IN` int(20) DEFAULT NULL,
  `BLOCK_OPS_OUT` int(20) DEFAULT NULL,
  `MESSAGES_SENT` int(20) DEFAULT NULL,
  `MESSAGES_RECEIVED` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MAJOR` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MINOR` int(20) DEFAULT NULL,
  `SWAPS` int(20) DEFAULT NULL,
  `SOURCE_FUNCTION` varchar(30) DEFAULT NULL,
  `SOURCE_FILE` varchar(20) DEFAULT NULL,
  `SOURCE_LINE` int(20) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.REFERENTIAL_CONSTRAINTS
CREATE TEMPORARY TABLE IF NOT EXISTS `REFERENTIAL_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_NAME` varchar(64) DEFAULT NULL,
  `MATCH_OPTION` varchar(64) NOT NULL DEFAULT '',
  `UPDATE_RULE` varchar(64) NOT NULL DEFAULT '',
  `DELETE_RULE` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `REFERENCED_TABLE_NAME` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.ROUTINES
CREATE TEMPORARY TABLE IF NOT EXISTS `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `ROUTINE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` int(21) DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` int(21) DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` int(21) DEFAULT NULL,
  `DATETIME_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(64) DEFAULT NULL,
  `COLLATION_NAME` varchar(64) DEFAULT NULL,
  `DTD_IDENTIFIER` longtext,
  `ROUTINE_BODY` varchar(8) NOT NULL DEFAULT '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) DEFAULT NULL,
  `EXTERNAL_LANGUAGE` varchar(64) DEFAULT NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL DEFAULT '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL DEFAULT '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(64) DEFAULT NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `ROUTINE_COMMENT` longtext NOT NULL,
  `DEFINER` varchar(93) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.SCHEMATA
CREATE TEMPORARY TABLE IF NOT EXISTS `SCHEMATA` (
  `CATALOG_NAME` varchar(512) NOT NULL DEFAULT '',
  `SCHEMA_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(512) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.SCHEMA_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.SESSION_STATUS
CREATE TEMPORARY TABLE IF NOT EXISTS `SESSION_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.SESSION_VARIABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `SESSION_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `STATISTICS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `NON_UNIQUE` bigint(1) NOT NULL DEFAULT '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `INDEX_NAME` varchar(64) NOT NULL DEFAULT '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL DEFAULT '0',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLLATION` varchar(1) DEFAULT NULL,
  `CARDINALITY` bigint(21) DEFAULT NULL,
  `SUB_PART` bigint(3) DEFAULT NULL,
  `PACKED` varchar(10) DEFAULT NULL,
  `NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `INDEX_TYPE` varchar(16) NOT NULL DEFAULT '',
  `COMMENT` varchar(16) DEFAULT NULL,
  `INDEX_COMMENT` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.TABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLES` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `AUTO_INCREMENT` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `TABLE_COLLATION` varchar(32) DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `CREATE_OPTIONS` varchar(255) DEFAULT NULL,
  `TABLE_COMMENT` varchar(2048) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.TABLESPACES
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLESPACES` (
  `TABLESPACE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `TABLESPACE_TYPE` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `EXTENT_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `NODEGROUP_ID` bigint(21) unsigned DEFAULT NULL,
  `TABLESPACE_COMMENT` varchar(2048) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.TABLE_CONSTRAINTS
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.TABLE_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.TRIGGERS
CREATE TEMPORARY TABLE IF NOT EXISTS `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TRIGGER_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TRIGGER_NAME` varchar(64) NOT NULL DEFAULT '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL DEFAULT '',
  `EVENT_OBJECT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL DEFAULT '',
  `ACTION_ORDER` bigint(4) NOT NULL DEFAULT '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL DEFAULT '',
  `ACTION_TIMING` varchar(6) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL DEFAULT '',
  `CREATED` datetime(2) DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `DEFINER` varchar(93) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.USER_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla information_schema.VIEWS
CREATE TEMPORARY TABLE IF NOT EXISTS `VIEWS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL DEFAULT '',
  `IS_UPDATABLE` varchar(3) NOT NULL DEFAULT '',
  `DEFINER` varchar(93) NOT NULL DEFAULT '',
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura de base de datos para gamefrontier
CREATE DATABASE IF NOT EXISTS `gamefrontier` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gamefrontier`;

-- Volcando estructura para tabla gamefrontier.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla gamefrontier.colores
CREATE TABLE IF NOT EXISTS `colores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla gamefrontier.marcas
CREATE TABLE IF NOT EXISTS `marcas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla gamefrontier.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(10) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo` int(10) NOT NULL,
  `usuarioId` int(10) unsigned DEFAULT NULL,
  `marcaId` int(10) unsigned DEFAULT NULL,
  `categoriaId` int(10) unsigned DEFAULT NULL,
  `subcategoriaId` int(10) unsigned DEFAULT NULL,
  `colorId` int(10) unsigned DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuarioId` (`usuarioId`),
  KEY `marcaId` (`marcaId`),
  KEY `categoriaId` (`categoriaId`),
  KEY `colorId` (`colorId`),
  KEY `productos_subcategorias_id_fk` (`subcategoriaId`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`usuarioId`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`marcaId`) REFERENCES `marcas` (`id`),
  CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`categoriaId`) REFERENCES `categorias` (`id`),
  CONSTRAINT `productos_ibfk_4` FOREIGN KEY (`colorId`) REFERENCES `colores` (`id`),
  CONSTRAINT `productos_subcategorias_id_fk` FOREIGN KEY (`subcategoriaId`) REFERENCES `subcategorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla gamefrontier.subcategorias
CREATE TABLE IF NOT EXISTS `subcategorias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla gamefrontier.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `localidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dni` int(8) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura de base de datos para musimundos
CREATE DATABASE IF NOT EXISTS `musimundos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `musimundos`;

-- Volcando estructura para tabla musimundos.albumes
CREATE TABLE IF NOT EXISTS `albumes` (
  `id` smallint(6) NOT NULL,
  `titulo` varchar(95) DEFAULT NULL,
  `id_artista` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.artistas
CREATE TABLE IF NOT EXISTS `artistas` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(85) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.canciones
CREATE TABLE IF NOT EXISTS `canciones` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(123) DEFAULT NULL,
  `id_album` smallint(6) DEFAULT NULL,
  `id_tipo_de_medio` tinyint(4) DEFAULT NULL,
  `id_genero` tinyint(4) DEFAULT NULL,
  `compositor` varchar(188) DEFAULT NULL,
  `milisegundos` int(11) DEFAULT NULL,
  `bytes` bigint(20) DEFAULT NULL,
  `precio_unitario` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.canciones_de_playlists
CREATE TABLE IF NOT EXISTS `canciones_de_playlists` (
  `id_playlist` tinyint(4) DEFAULT NULL,
  `id_cancion` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` tinyint(4) NOT NULL,
  `primer_nombre` varchar(9) DEFAULT NULL,
  `apellido` varchar(12) DEFAULT NULL,
  `empresa` varchar(48) DEFAULT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `ciudad` varchar(19) DEFAULT NULL,
  `estado_o_provincia` varchar(6) DEFAULT NULL,
  `pais` varchar(14) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `telefono` varchar(19) DEFAULT NULL,
  `fax` varchar(18) DEFAULT NULL,
  `email` varchar(29) DEFAULT NULL,
  `id_representante` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` tinyint(4) NOT NULL,
  `apellido` varchar(8) DEFAULT NULL,
  `nombre` varchar(8) DEFAULT NULL,
  `titulo` varchar(19) DEFAULT NULL,
  `reporta_a` varchar(1) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_de_contratacion` date DEFAULT NULL,
  `direccion` varchar(27) DEFAULT NULL,
  `ciudad` varchar(10) DEFAULT NULL,
  `estado_o_provincia` varchar(2) DEFAULT NULL,
  `pais` varchar(6) DEFAULT NULL,
  `codigo_postal` varchar(7) DEFAULT NULL,
  `telefono` varchar(17) DEFAULT NULL,
  `fax` varchar(17) DEFAULT NULL,
  `email` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.facturas
CREATE TABLE IF NOT EXISTS `facturas` (
  `id` smallint(6) NOT NULL,
  `id_cliente` tinyint(4) DEFAULT NULL,
  `fecha_factura` date DEFAULT NULL,
  `direccion_de_facturacion` varchar(40) DEFAULT NULL,
  `ciudad_de_facturacion` varchar(19) DEFAULT NULL,
  `estado_o_provincia_de_facturacion` varchar(6) DEFAULT NULL,
  `pais_de_facturacion` varchar(14) DEFAULT NULL,
  `codigo_postal_de_facturacion` varchar(10) DEFAULT NULL,
  `total` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.generos
CREATE TABLE IF NOT EXISTS `generos` (
  `id` tinyint(4) NOT NULL,
  `nombre` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.items_de_facturas
CREATE TABLE IF NOT EXISTS `items_de_facturas` (
  `id` smallint(6) NOT NULL,
  `id_factura` smallint(6) DEFAULT NULL,
  `id_cancion` smallint(6) DEFAULT NULL,
  `precio_unitario` decimal(3,2) DEFAULT NULL,
  `cantidad` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.playlists
CREATE TABLE IF NOT EXISTS `playlists` (
  `id` tinyint(4) DEFAULT NULL,
  `nombre` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla musimundos.tipos_de_medio
CREATE TABLE IF NOT EXISTS `tipos_de_medio` (
  `id` tinyint(4) DEFAULT NULL,
  `nombre` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura de base de datos para mysql
CREATE DATABASE IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mysql`;

-- Volcando estructura para tabla mysql.columns_priv
CREATE TABLE IF NOT EXISTS `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.db
CREATE TABLE IF NOT EXISTS `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.engine_cost
CREATE TABLE IF NOT EXISTS `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int(11) NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.event
CREATE TABLE IF NOT EXISTS `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(93) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.func
CREATE TABLE IF NOT EXISTS `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.general_log
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.gtid_executed
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint(20) NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint(20) NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.help_category
CREATE TABLE IF NOT EXISTS `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help categories';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.help_keyword
CREATE TABLE IF NOT EXISTS `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help keywords';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.help_relation
CREATE TABLE IF NOT EXISTS `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='keyword-topic relation';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.help_topic
CREATE TABLE IF NOT EXISTS `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help topics';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.innodb_index_stats
CREATE TABLE IF NOT EXISTS `innodb_index_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.innodb_table_stats
CREATE TABLE IF NOT EXISTS `innodb_table_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.ndb_binlog_index
CREATE TABLE IF NOT EXISTS `ndb_binlog_index` (
  `Position` bigint(20) unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) unsigned NOT NULL,
  `inserts` int(10) unsigned NOT NULL,
  `updates` int(10) unsigned NOT NULL,
  `deletes` int(10) unsigned NOT NULL,
  `schemaops` int(10) unsigned NOT NULL,
  `orig_server_id` int(10) unsigned NOT NULL,
  `orig_epoch` bigint(20) unsigned NOT NULL,
  `gci` int(10) unsigned NOT NULL,
  `next_position` bigint(20) unsigned NOT NULL,
  `next_file` varchar(255) NOT NULL,
  PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.plugin
CREATE TABLE IF NOT EXISTS `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='MySQL plugins';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.proc
CREATE TABLE IF NOT EXISTS `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(93) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.procs_priv
CREATE TABLE IF NOT EXISTS `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.proxies_priv
CREATE TABLE IF NOT EXISTS `proxies_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User proxy privileges';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.servers
CREATE TABLE IF NOT EXISTS `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='MySQL Foreign Servers table';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.server_cost
CREATE TABLE IF NOT EXISTS `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`cost_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.slave_master_info
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int(10) unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int(10) unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint(20) unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version',
  PRIMARY KEY (`Channel_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Master Information';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.slave_relay_log_info
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int(11) NOT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int(10) unsigned NOT NULL,
  `Id` int(10) unsigned NOT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Relay Log Information';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.slave_worker_info
CREATE TABLE IF NOT EXISTS `slave_worker_info` (
  `Id` int(10) unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint(20) unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_seqno` int(10) unsigned NOT NULL,
  `Checkpoint_group_size` int(10) unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Worker Information';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.slow_log
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.tables_priv
CREATE TABLE IF NOT EXISTS `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.time_zone
CREATE TABLE IF NOT EXISTS `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zones';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.time_zone_leap_second
CREATE TABLE IF NOT EXISTS `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Leap seconds information for time zones';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.time_zone_name
CREATE TABLE IF NOT EXISTS `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zone names';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.time_zone_transition
CREATE TABLE IF NOT EXISTS `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zone transitions';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.time_zone_transition_type
CREATE TABLE IF NOT EXISTS `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zone transition types';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mysql.user
CREATE TABLE IF NOT EXISTS `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL DEFAULT '0',
  `max_updates` int(11) unsigned NOT NULL DEFAULT '0',
  `max_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'mysql_native_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint(5) unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';

-- La exportación de datos fue deseleccionada.


-- Volcando estructura de base de datos para performance_schema
CREATE DATABASE IF NOT EXISTS `performance_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `performance_schema`;

-- Volcando estructura para tabla performance_schema.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.cond_instances
CREATE TABLE IF NOT EXISTS `cond_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_stages_current
CREATE TABLE IF NOT EXISTS `events_stages_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `WORK_COMPLETED` bigint(20) unsigned DEFAULT NULL,
  `WORK_ESTIMATED` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_stages_history
CREATE TABLE IF NOT EXISTS `events_stages_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `WORK_COMPLETED` bigint(20) unsigned DEFAULT NULL,
  `WORK_ESTIMATED` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_stages_history_long
CREATE TABLE IF NOT EXISTS `events_stages_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `WORK_COMPLETED` bigint(20) unsigned DEFAULT NULL,
  `WORK_ESTIMATED` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_stages_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_stages_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_stages_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_stages_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_stages_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_current
CREATE TABLE IF NOT EXISTS `events_statements_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SQL_TEXT` longtext,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `MYSQL_ERRNO` int(11) DEFAULT NULL,
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL,
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL,
  `ERRORS` bigint(20) unsigned NOT NULL,
  `WARNINGS` bigint(20) unsigned NOT NULL,
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `ROWS_SENT` bigint(20) unsigned NOT NULL,
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SORT_SCAN` bigint(20) unsigned NOT NULL,
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `NESTING_EVENT_LEVEL` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_history
CREATE TABLE IF NOT EXISTS `events_statements_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SQL_TEXT` longtext,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `MYSQL_ERRNO` int(11) DEFAULT NULL,
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL,
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL,
  `ERRORS` bigint(20) unsigned NOT NULL,
  `WARNINGS` bigint(20) unsigned NOT NULL,
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `ROWS_SENT` bigint(20) unsigned NOT NULL,
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SORT_SCAN` bigint(20) unsigned NOT NULL,
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `NESTING_EVENT_LEVEL` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_history_long
CREATE TABLE IF NOT EXISTS `events_statements_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SQL_TEXT` longtext,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `MYSQL_ERRNO` int(11) DEFAULT NULL,
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL,
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL,
  `ERRORS` bigint(20) unsigned NOT NULL,
  `WARNINGS` bigint(20) unsigned NOT NULL,
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `ROWS_SENT` bigint(20) unsigned NOT NULL,
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SORT_SCAN` bigint(20) unsigned NOT NULL,
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `NESTING_EVENT_LEVEL` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_summary_by_digest
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_digest` (
  `SCHEMA_NAME` varchar(64) DEFAULT NULL,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_summary_by_program
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_program` (
  `OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) NOT NULL,
  `OBJECT_NAME` varchar(64) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_STATEMENTS` bigint(20) unsigned NOT NULL,
  `SUM_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_statements_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_transactions_current
CREATE TABLE IF NOT EXISTS `events_transactions_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `STATE` enum('ACTIVE','COMMITTED','ROLLED BACK') DEFAULT NULL,
  `TRX_ID` bigint(20) unsigned DEFAULT NULL,
  `GTID` varchar(64) DEFAULT NULL,
  `XID_FORMAT_ID` int(11) DEFAULT NULL,
  `XID_GTRID` varchar(130) DEFAULT NULL,
  `XID_BQUAL` varchar(130) DEFAULT NULL,
  `XA_STATE` varchar(64) DEFAULT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `ACCESS_MODE` enum('READ ONLY','READ WRITE') DEFAULT NULL,
  `ISOLATION_LEVEL` varchar(64) DEFAULT NULL,
  `AUTOCOMMIT` enum('YES','NO') NOT NULL,
  `NUMBER_OF_SAVEPOINTS` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_ROLLBACK_TO_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_RELEASE_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_transactions_history
CREATE TABLE IF NOT EXISTS `events_transactions_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `STATE` enum('ACTIVE','COMMITTED','ROLLED BACK') DEFAULT NULL,
  `TRX_ID` bigint(20) unsigned DEFAULT NULL,
  `GTID` varchar(64) DEFAULT NULL,
  `XID_FORMAT_ID` int(11) DEFAULT NULL,
  `XID_GTRID` varchar(130) DEFAULT NULL,
  `XID_BQUAL` varchar(130) DEFAULT NULL,
  `XA_STATE` varchar(64) DEFAULT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `ACCESS_MODE` enum('READ ONLY','READ WRITE') DEFAULT NULL,
  `ISOLATION_LEVEL` varchar(64) DEFAULT NULL,
  `AUTOCOMMIT` enum('YES','NO') NOT NULL,
  `NUMBER_OF_SAVEPOINTS` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_ROLLBACK_TO_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_RELEASE_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_transactions_history_long
CREATE TABLE IF NOT EXISTS `events_transactions_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `STATE` enum('ACTIVE','COMMITTED','ROLLED BACK') DEFAULT NULL,
  `TRX_ID` bigint(20) unsigned DEFAULT NULL,
  `GTID` varchar(64) DEFAULT NULL,
  `XID_FORMAT_ID` int(11) DEFAULT NULL,
  `XID_GTRID` varchar(130) DEFAULT NULL,
  `XID_BQUAL` varchar(130) DEFAULT NULL,
  `XA_STATE` varchar(64) DEFAULT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `ACCESS_MODE` enum('READ ONLY','READ WRITE') DEFAULT NULL,
  `ISOLATION_LEVEL` varchar(64) DEFAULT NULL,
  `AUTOCOMMIT` enum('YES','NO') NOT NULL,
  `NUMBER_OF_SAVEPOINTS` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_ROLLBACK_TO_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_RELEASE_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_transactions_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_transactions_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_transactions_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_transactions_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_transactions_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_waits_current
CREATE TABLE IF NOT EXISTS `events_waits_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `SPINS` int(10) unsigned DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `OPERATION` varchar(32) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL,
  `FLAGS` int(10) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_waits_history
CREATE TABLE IF NOT EXISTS `events_waits_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `SPINS` int(10) unsigned DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `OPERATION` varchar(32) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL,
  `FLAGS` int(10) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_waits_history_long
CREATE TABLE IF NOT EXISTS `events_waits_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `SPINS` int(10) unsigned DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `OPERATION` varchar(32) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL,
  `FLAGS` int(10) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_waits_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_waits_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_waits_summary_by_instance
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_waits_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_waits_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.events_waits_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.file_instances
CREATE TABLE IF NOT EXISTS `file_instances` (
  `FILE_NAME` varchar(512) NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `OPEN_COUNT` int(10) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.file_summary_by_event_name
CREATE TABLE IF NOT EXISTS `file_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL,
  `COUNT_MISC` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.file_summary_by_instance
CREATE TABLE IF NOT EXISTS `file_summary_by_instance` (
  `FILE_NAME` varchar(512) NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL,
  `COUNT_MISC` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.global_status
CREATE TABLE IF NOT EXISTS `global_status` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.global_variables
CREATE TABLE IF NOT EXISTS `global_variables` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.hosts
CREATE TABLE IF NOT EXISTS `hosts` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.host_cache
CREATE TABLE IF NOT EXISTS `host_cache` (
  `IP` varchar(64) NOT NULL,
  `HOST` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST_VALIDATED` enum('YES','NO') NOT NULL,
  `SUM_CONNECT_ERRORS` bigint(20) NOT NULL,
  `COUNT_HOST_BLOCKED_ERRORS` bigint(20) NOT NULL,
  `COUNT_NAMEINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_NAMEINFO_PERMANENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_FORMAT_ERRORS` bigint(20) NOT NULL,
  `COUNT_ADDRINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_ADDRINFO_PERMANENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_FCRDNS_ERRORS` bigint(20) NOT NULL,
  `COUNT_HOST_ACL_ERRORS` bigint(20) NOT NULL,
  `COUNT_NO_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL,
  `COUNT_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL,
  `COUNT_HANDSHAKE_ERRORS` bigint(20) NOT NULL,
  `COUNT_PROXY_USER_ERRORS` bigint(20) NOT NULL,
  `COUNT_PROXY_USER_ACL_ERRORS` bigint(20) NOT NULL,
  `COUNT_AUTHENTICATION_ERRORS` bigint(20) NOT NULL,
  `COUNT_SSL_ERRORS` bigint(20) NOT NULL,
  `COUNT_MAX_USER_CONNECTIONS_ERRORS` bigint(20) NOT NULL,
  `COUNT_MAX_USER_CONNECTIONS_PER_HOUR_ERRORS` bigint(20) NOT NULL,
  `COUNT_DEFAULT_DATABASE_ERRORS` bigint(20) NOT NULL,
  `COUNT_INIT_CONNECT_ERRORS` bigint(20) NOT NULL,
  `COUNT_LOCAL_ERRORS` bigint(20) NOT NULL,
  `COUNT_UNKNOWN_ERRORS` bigint(20) NOT NULL,
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FIRST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.memory_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.memory_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.memory_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.memory_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.memory_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.metadata_locks
CREATE TABLE IF NOT EXISTS `metadata_locks` (
  `OBJECT_TYPE` varchar(64) NOT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `LOCK_TYPE` varchar(32) NOT NULL,
  `LOCK_DURATION` varchar(32) NOT NULL,
  `LOCK_STATUS` varchar(32) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `OWNER_THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `OWNER_EVENT_ID` bigint(20) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.mutex_instances
CREATE TABLE IF NOT EXISTS `mutex_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `LOCKED_BY_THREAD_ID` bigint(20) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.objects_summary_global_by_type
CREATE TABLE IF NOT EXISTS `objects_summary_global_by_type` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.performance_timers
CREATE TABLE IF NOT EXISTS `performance_timers` (
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL,
  `TIMER_FREQUENCY` bigint(20) DEFAULT NULL,
  `TIMER_RESOLUTION` bigint(20) DEFAULT NULL,
  `TIMER_OVERHEAD` bigint(20) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.prepared_statements_instances
CREATE TABLE IF NOT EXISTS `prepared_statements_instances` (
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `STATEMENT_ID` bigint(20) unsigned NOT NULL,
  `STATEMENT_NAME` varchar(64) DEFAULT NULL,
  `SQL_TEXT` longtext NOT NULL,
  `OWNER_THREAD_ID` bigint(20) unsigned NOT NULL,
  `OWNER_EVENT_ID` bigint(20) unsigned NOT NULL,
  `OWNER_OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') DEFAULT NULL,
  `OWNER_OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OWNER_OBJECT_NAME` varchar(64) DEFAULT NULL,
  `TIMER_PREPARE` bigint(20) unsigned NOT NULL,
  `COUNT_REPREPARE` bigint(20) unsigned NOT NULL,
  `COUNT_EXECUTE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_EXECUTE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_EXECUTE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_EXECUTE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_EXECUTE` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.replication_applier_configuration
CREATE TABLE IF NOT EXISTS `replication_applier_configuration` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `DESIRED_DELAY` int(11) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.replication_applier_status
CREATE TABLE IF NOT EXISTS `replication_applier_status` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `SERVICE_STATE` enum('ON','OFF') NOT NULL,
  `REMAINING_DELAY` int(10) unsigned DEFAULT NULL,
  `COUNT_TRANSACTIONS_RETRIES` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.replication_applier_status_by_coordinator
CREATE TABLE IF NOT EXISTS `replication_applier_status_by_coordinator` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `SERVICE_STATE` enum('ON','OFF') NOT NULL,
  `LAST_ERROR_NUMBER` int(11) NOT NULL,
  `LAST_ERROR_MESSAGE` varchar(1024) NOT NULL,
  `LAST_ERROR_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.replication_applier_status_by_worker
CREATE TABLE IF NOT EXISTS `replication_applier_status_by_worker` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `WORKER_ID` bigint(20) unsigned NOT NULL,
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `SERVICE_STATE` enum('ON','OFF') NOT NULL,
  `LAST_SEEN_TRANSACTION` char(57) NOT NULL,
  `LAST_ERROR_NUMBER` int(11) NOT NULL,
  `LAST_ERROR_MESSAGE` varchar(1024) NOT NULL,
  `LAST_ERROR_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.replication_connection_configuration
CREATE TABLE IF NOT EXISTS `replication_connection_configuration` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PORT` int(11) NOT NULL,
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NETWORK_INTERFACE` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `AUTO_POSITION` enum('1','0') NOT NULL,
  `SSL_ALLOWED` enum('YES','NO','IGNORED') NOT NULL,
  `SSL_CA_FILE` varchar(512) NOT NULL,
  `SSL_CA_PATH` varchar(512) NOT NULL,
  `SSL_CERTIFICATE` varchar(512) NOT NULL,
  `SSL_CIPHER` varchar(512) NOT NULL,
  `SSL_KEY` varchar(512) NOT NULL,
  `SSL_VERIFY_SERVER_CERTIFICATE` enum('YES','NO') NOT NULL,
  `SSL_CRL_FILE` varchar(255) NOT NULL,
  `SSL_CRL_PATH` varchar(255) NOT NULL,
  `CONNECTION_RETRY_INTERVAL` int(11) NOT NULL,
  `CONNECTION_RETRY_COUNT` bigint(20) unsigned NOT NULL,
  `HEARTBEAT_INTERVAL` double(10,3) unsigned NOT NULL COMMENT 'Number of seconds after which a heartbeat will be sent .',
  `TLS_VERSION` varchar(255) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.replication_connection_status
CREATE TABLE IF NOT EXISTS `replication_connection_status` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `GROUP_NAME` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SOURCE_UUID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `SERVICE_STATE` enum('ON','OFF','CONNECTING') NOT NULL,
  `COUNT_RECEIVED_HEARTBEATS` bigint(20) unsigned NOT NULL DEFAULT '0',
  `LAST_HEARTBEAT_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Shows when the most recent heartbeat signal was received.',
  `RECEIVED_TRANSACTION_SET` longtext NOT NULL,
  `LAST_ERROR_NUMBER` int(11) NOT NULL,
  `LAST_ERROR_MESSAGE` varchar(1024) NOT NULL,
  `LAST_ERROR_TIMESTAMP` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.replication_group_members
CREATE TABLE IF NOT EXISTS `replication_group_members` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `MEMBER_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MEMBER_HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MEMBER_PORT` int(11) DEFAULT NULL,
  `MEMBER_STATE` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.replication_group_member_stats
CREATE TABLE IF NOT EXISTS `replication_group_member_stats` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `VIEW_ID` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MEMBER_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `COUNT_TRANSACTIONS_IN_QUEUE` bigint(20) unsigned NOT NULL,
  `COUNT_TRANSACTIONS_CHECKED` bigint(20) unsigned NOT NULL,
  `COUNT_CONFLICTS_DETECTED` bigint(20) unsigned NOT NULL,
  `COUNT_TRANSACTIONS_ROWS_VALIDATING` bigint(20) unsigned NOT NULL,
  `TRANSACTIONS_COMMITTED_ALL_MEMBERS` longtext NOT NULL,
  `LAST_CONFLICT_FREE_TRANSACTION` text NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.rwlock_instances
CREATE TABLE IF NOT EXISTS `rwlock_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `WRITE_LOCKED_BY_THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `READ_LOCKED_BY_COUNT` int(10) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.session_account_connect_attrs
CREATE TABLE IF NOT EXISTS `session_account_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL,
  `ATTR_NAME` varchar(32) COLLATE utf8_bin NOT NULL,
  `ATTR_VALUE` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `ORDINAL_POSITION` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.session_connect_attrs
CREATE TABLE IF NOT EXISTS `session_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL,
  `ATTR_NAME` varchar(32) COLLATE utf8_bin NOT NULL,
  `ATTR_VALUE` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `ORDINAL_POSITION` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.session_status
CREATE TABLE IF NOT EXISTS `session_status` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.session_variables
CREATE TABLE IF NOT EXISTS `session_variables` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.setup_actors
CREATE TABLE IF NOT EXISTS `setup_actors` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%',
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%',
  `ROLE` char(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%',
  `ENABLED` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `HISTORY` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.setup_consumers
CREATE TABLE IF NOT EXISTS `setup_consumers` (
  `NAME` varchar(64) NOT NULL,
  `ENABLED` enum('YES','NO') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.setup_instruments
CREATE TABLE IF NOT EXISTS `setup_instruments` (
  `NAME` varchar(128) NOT NULL,
  `ENABLED` enum('YES','NO') NOT NULL,
  `TIMED` enum('YES','NO') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.setup_objects
CREATE TABLE IF NOT EXISTS `setup_objects` (
  `OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') NOT NULL DEFAULT 'TABLE',
  `OBJECT_SCHEMA` varchar(64) DEFAULT '%',
  `OBJECT_NAME` varchar(64) NOT NULL DEFAULT '%',
  `ENABLED` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `TIMED` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.setup_timers
CREATE TABLE IF NOT EXISTS `setup_timers` (
  `NAME` varchar(64) NOT NULL,
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.socket_instances
CREATE TABLE IF NOT EXISTS `socket_instances` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `SOCKET_ID` int(11) NOT NULL,
  `IP` varchar(64) NOT NULL,
  `PORT` int(11) NOT NULL,
  `STATE` enum('IDLE','ACTIVE') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.socket_summary_by_event_name
CREATE TABLE IF NOT EXISTS `socket_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_MISC` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.socket_summary_by_instance
CREATE TABLE IF NOT EXISTS `socket_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_MISC` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.status_by_account
CREATE TABLE IF NOT EXISTS `status_by_account` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.status_by_host
CREATE TABLE IF NOT EXISTS `status_by_host` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.status_by_thread
CREATE TABLE IF NOT EXISTS `status_by_thread` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.status_by_user
CREATE TABLE IF NOT EXISTS `status_by_user` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.table_handles
CREATE TABLE IF NOT EXISTS `table_handles` (
  `OBJECT_TYPE` varchar(64) NOT NULL,
  `OBJECT_SCHEMA` varchar(64) NOT NULL,
  `OBJECT_NAME` varchar(64) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `OWNER_THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `OWNER_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `INTERNAL_LOCK` varchar(64) DEFAULT NULL,
  `EXTERNAL_LOCK` varchar(64) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.table_io_waits_summary_by_index_usage
CREATE TABLE IF NOT EXISTS `table_io_waits_summary_by_index_usage` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_FETCH` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `COUNT_INSERT` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `COUNT_UPDATE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `COUNT_DELETE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_DELETE` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.table_io_waits_summary_by_table
CREATE TABLE IF NOT EXISTS `table_io_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_FETCH` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `COUNT_INSERT` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `COUNT_UPDATE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `COUNT_DELETE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_DELETE` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.table_lock_waits_summary_by_table
CREATE TABLE IF NOT EXISTS `table_lock_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `COUNT_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `COUNT_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.threads
CREATE TABLE IF NOT EXISTS `threads` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `NAME` varchar(128) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `PROCESSLIST_ID` bigint(20) unsigned DEFAULT NULL,
  `PROCESSLIST_USER` varchar(32) DEFAULT NULL,
  `PROCESSLIST_HOST` varchar(60) DEFAULT NULL,
  `PROCESSLIST_DB` varchar(64) DEFAULT NULL,
  `PROCESSLIST_COMMAND` varchar(16) DEFAULT NULL,
  `PROCESSLIST_TIME` bigint(20) DEFAULT NULL,
  `PROCESSLIST_STATE` varchar(64) DEFAULT NULL,
  `PROCESSLIST_INFO` longtext,
  `PARENT_THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `ROLE` varchar(64) DEFAULT NULL,
  `INSTRUMENTED` enum('YES','NO') NOT NULL,
  `HISTORY` enum('YES','NO') NOT NULL,
  `CONNECTION_TYPE` varchar(16) DEFAULT NULL,
  `THREAD_OS_ID` bigint(20) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.users
CREATE TABLE IF NOT EXISTS `users` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.user_variables_by_thread
CREATE TABLE IF NOT EXISTS `user_variables_by_thread` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` longblob
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla performance_schema.variables_by_thread
CREATE TABLE IF NOT EXISTS `variables_by_thread` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura de base de datos para sys
CREATE DATABASE IF NOT EXISTS `sys` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sys`;

-- Volcando estructura para procedimiento sys.create_synonym_db
DELIMITER //
CREATE PROCEDURE `create_synonym_db`( IN in_db_name VARCHAR(64),  IN in_synonym VARCHAR(64) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a source database name and synonym name, and then creates the \n synonym database with views that point to all of the tables within\n the source database.\n \n Useful for creating a "ps" synonym for "performance_schema",\n or "is" instead of "information_schema", for example.\n \n Parameters\n \n in_db_name (VARCHAR(64)):\n The database name that you would like to create a synonym for.\n in_synonym (VARCHAR(64)):\n The database synonym name.\n \n Example\n \n mysql> SHOW DATABASES;\n +--------------------+\n | Database           |\n +--------------------+\n | information_schema |\n | mysql              |\n | performance_schema |\n | sys                |\n | test               |\n +--------------------+\n 5 rows in set (0.00 sec)\n \n mysql> CALL sys.create_synonym_db(''performance_schema'', ''ps'');\n +---------------------------------------+\n | summary                               |\n +---------------------------------------+\n | Created 74 views in the `ps` database |\n +---------------------------------------+\n 1 row in set (8.57 sec)\n \n Query OK, 0 rows affected (8.57 sec)\n \n mysql> SHOW DATABASES;\n +--------------------+\n | Database           |\n +--------------------+\n | information_schema |\n | mysql              |\n | performance_schema |\n | ps                 |\n | sys                |\n | test               |\n +--------------------+\n 6 rows in set (0.00 sec)\n \n mysql> SHOW FULL TABLES FROM ps;\n +------------------------------------------------------+------------+\n | Tables_in_ps                                         | Table_type |\n +------------------------------------------------------+------------+\n | accounts                                             | VIEW       |\n | cond_instances                                       | VIEW       |\n | events_stages_current                                | VIEW       |\n | events_stages_history                                | VIEW       |\n ...\n '
BEGIN DECLARE v_done bool DEFAULT FALSE; DECLARE v_db_name_check VARCHAR(64); DECLARE v_db_err_msg TEXT; DECLARE v_table VARCHAR(64); DECLARE v_views_created INT DEFAULT 0;  DECLARE db_doesnt_exist CONDITION FOR SQLSTATE '42000'; DECLARE db_name_exists CONDITION FOR SQLSTATE 'HY000';  DECLARE c_table_names CURSOR FOR  SELECT TABLE_NAME  FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = in_db_name;  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SELECT SCHEMA_NAME INTO v_db_name_check FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = in_db_name;  IF v_db_name_check IS NULL THEN SET v_db_err_msg = CONCAT('Unknown database ', in_db_name); SIGNAL SQLSTATE 'HY000' SET MESSAGE_TEXT = v_db_err_msg; END IF;  SELECT SCHEMA_NAME INTO v_db_name_check FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = in_synonym;  IF v_db_name_check = in_synonym THEN SET v_db_err_msg = CONCAT('Can\'t create database ', in_synonym, '; database exists'); SIGNAL SQLSTATE 'HY000' SET MESSAGE_TEXT = v_db_err_msg; END IF;  SET @create_db_stmt := CONCAT('CREATE DATABASE ', sys.quote_identifier(in_synonym)); PREPARE create_db_stmt FROM @create_db_stmt; EXECUTE create_db_stmt; DEALLOCATE PREPARE create_db_stmt;  SET v_done = FALSE; OPEN c_table_names; c_table_names: LOOP FETCH c_table_names INTO v_table; IF v_done THEN LEAVE c_table_names; END IF;  SET @create_view_stmt = CONCAT( 'CREATE SQL SECURITY INVOKER VIEW ', sys.quote_identifier(in_synonym), '.', sys.quote_identifier(v_table), ' AS SELECT * FROM ', sys.quote_identifier(in_db_name), '.', sys.quote_identifier(v_table) ); PREPARE create_view_stmt FROM @create_view_stmt; EXECUTE create_view_stmt; DEALLOCATE PREPARE create_view_stmt;  SET v_views_created = v_views_created + 1; END LOOP; CLOSE c_table_names;  SELECT CONCAT( 'Created ', v_views_created, ' view', IF(v_views_created != 1, 's', ''), ' in the ', sys.quote_identifier(in_synonym), ' database' ) AS summary;  END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.diagnostics
DELIMITER //
CREATE PROCEDURE `diagnostics`( IN in_max_runtime int unsigned, IN in_interval int unsigned, IN in_auto_config enum ('current', 'medium', 'full') )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Create a report of the current status of the server for diagnostics purposes. Data collected includes (some items depends on versions and settings):\n \n * The GLOBAL VARIABLES\n * Several sys schema views including metrics or equivalent (depending on version and settings)\n * Queries in the 95th percentile\n * Several ndbinfo views for MySQL Cluster\n * Replication (both master and slave) information.\n \n Some of the sys schema views are calculated as initial (optional), overall, delta:\n \n * The initial view is the content of the view at the start of this procedure.\n This output will be the same as the the start values used for the delta view.\n The initial view is included if @sys.diagnostics.include_raw = ''ON''.\n * The overall view is the content of the view at the end of this procedure.\n This output is the same as the end values used for the delta view.\n The overall view is always included.\n * The delta view is the difference from the beginning to the end. Note that for min and max values\n they are simply the min or max value from the end view respectively, so does not necessarily reflect\n the minimum/maximum value in the monitored period.\n Note: except for the metrics views the delta is only calculation between the first and last outputs.\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Versions supported:\n * MySQL 5.6: 5.6.10 and later\n * MySQL 5.7: 5.7.9 and later\n \n Parameters\n \n in_max_runtime (INT UNSIGNED):\n The maximum time to keep collecting data.\n Use NULL to get the default which is 60 seconds, otherwise enter a value greater than 0.\n in_interval (INT UNSIGNED):\n How long to sleep between data collections.\n Use NULL to get the default which is 30 seconds, otherwise enter a value greater than 0.\n in_auto_config (ENUM(''current'', ''medium'', ''full''))\n Automatically enable Performance Schema instruments and consumers.\n NOTE: The more that are enabled, the more impact on the performance.\n Supported values are:\n * current - use the current settings.\n * medium - enable some settings.\n * full - enables all settings. This will have a big impact on the\n performance - be careful using this option.\n If another setting the ''current'' is chosen, the current settings\n are restored at the end of the procedure.\n \n \n Configuration Options\n \n sys.diagnostics.allow_i_s_tables\n Specifies whether it is allowed to do table scan queries on information_schema.TABLES. This can be expensive if there\n are many tables. Set to ''ON'' to allow, ''OFF'' to not allow.\n Default is ''OFF''.\n \n sys.diagnostics.include_raw\n Set to ''ON'' to include the raw data (e.g. the original output of "SELECT * FROM sys.metrics").\n Use this to get the initial values of the various views.\n Default is ''OFF''.\n \n sys.statement_truncate_len\n How much of queries in the process list output to include.\n Default is 64.\n \n sys.debug\n Whether to provide debugging output.\n Default is ''OFF''. Set to ''ON'' to include.\n \n \n Example\n \n To create a report and append it to the file diag.out:\n \n mysql> TEE diag.out;\n mysql> CALL sys.diagnostics(120, 30, ''current'');\n ...\n mysql> NOTEE;\n '
BEGIN DECLARE v_start, v_runtime, v_iter_start, v_sleep DECIMAL(20,2) DEFAULT 0.0; DECLARE v_has_innodb, v_has_ndb, v_has_ps, v_has_replication, v_has_ps_replication VARCHAR(8) CHARSET utf8 DEFAULT 'NO'; DECLARE v_this_thread_enabled, v_has_ps_vars, v_has_metrics ENUM('YES', 'NO'); DECLARE v_table_name, v_banner VARCHAR(64) CHARSET utf8; DECLARE v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from, v_no_delta_names TEXT; DECLARE v_output_time, v_output_time_prev DECIMAL(20,3) UNSIGNED; DECLARE v_output_count, v_count, v_old_group_concat_max_len INT UNSIGNED DEFAULT 0; DECLARE v_status_summary_width TINYINT UNSIGNED DEFAULT 50; DECLARE v_done BOOLEAN DEFAULT FALSE; DECLARE c_ndbinfo CURSOR FOR SELECT TABLE_NAME FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'ndbinfo' AND TABLE_NAME NOT IN ( 'blocks', 'config_params', 'dict_obj_types', 'disk_write_speed_base', 'memory_per_fragment', 'memoryusage', 'operations_per_fragment', 'threadblocks' ); DECLARE c_sysviews_w_delta CURSOR FOR SELECT table_name FROM tmp_sys_views_delta ORDER BY table_name;  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID(); IF (v_this_thread_enabled = 'YES') THEN CALL sys.ps_setup_disable_thread(CONNECTION_ID()); END IF;  IF (in_max_runtime < in_interval) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'in_max_runtime must be greater than or equal to in_interval'; END IF; IF (in_max_runtime = 0) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'in_max_runtime must be greater than 0'; END IF; IF (in_interval = 0) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'in_interval must be greater than 0'; END IF;  IF (@sys.diagnostics.allow_i_s_tables IS NULL) THEN SET @sys.diagnostics.allow_i_s_tables = sys.sys_get_config('diagnostics.allow_i_s_tables', 'OFF'); END IF; IF (@sys.diagnostics.include_raw IS NULL) THEN SET @sys.diagnostics.include_raw      = sys.sys_get_config('diagnostics.include_raw'     , 'OFF'); END IF; IF (@sys.debug IS NULL) THEN SET @sys.debug                        = sys.sys_get_config('debug'                       , 'OFF'); END IF; IF (@sys.statement_truncate_len IS NULL) THEN SET @sys.statement_truncate_len       = sys.sys_get_config('statement_truncate_len'      , '64' ); END IF;  SET @log_bin := @@sql_log_bin; IF (@log_bin = 1) THEN SET sql_log_bin = 0; END IF;  SET v_no_delta_names = CONCAT('s%{COUNT}.Variable_name NOT IN (', '''innodb_buffer_pool_pages_total'', ', '''innodb_page_size'', ', '''last_query_cost'', ', '''last_query_partial_plans'', ', '''qcache_total_blocks'', ', '''slave_last_heartbeat'', ', '''ssl_ctx_verify_depth'', ', '''ssl_ctx_verify_mode'', ', '''ssl_session_cache_size'', ', '''ssl_verify_depth'', ', '''ssl_verify_mode'', ', '''ssl_version'', ', '''buffer_flush_lsn_avg_rate'', ', '''buffer_flush_pct_for_dirty'', ', '''buffer_flush_pct_for_lsn'', ', '''buffer_pool_pages_total'', ', '''lock_row_lock_time_avg'', ', '''lock_row_lock_time_max'', ', '''innodb_page_size''', ')');  IF (in_auto_config <> 'current') THEN IF (@sys.debug = 'ON') THEN SELECT CONCAT('Updating Performance Schema configuration to ', in_auto_config) AS 'Debug'; END IF; CALL sys.ps_setup_save(0);  IF (in_auto_config = 'medium') THEN UPDATE performance_schema.setup_consumers SET ENABLED = 'YES' WHERE NAME NOT LIKE '%\_history%';  UPDATE performance_schema.setup_instruments SET ENABLED = 'YES', TIMED   = 'YES' WHERE NAME NOT LIKE 'wait/synch/%'; ELSEIF (in_auto_config = 'full') THEN UPDATE performance_schema.setup_consumers SET ENABLED = 'YES';  UPDATE performance_schema.setup_instruments SET ENABLED = 'YES', TIMED   = 'YES'; END IF;  UPDATE performance_schema.threads SET INSTRUMENTED = 'YES' WHERE PROCESSLIST_ID <> CONNECTION_ID(); END IF;  SET v_start        = UNIX_TIMESTAMP(NOW(2)), in_interval    = IFNULL(in_interval, 30), in_max_runtime = IFNULL(in_max_runtime, 60);  SET v_banner = REPEAT( '-', LEAST( GREATEST( 36, CHAR_LENGTH(VERSION()), CHAR_LENGTH(@@global.version_comment), CHAR_LENGTH(@@global.version_compile_os), CHAR_LENGTH(@@global.version_compile_machine), CHAR_LENGTH(@@global.socket), CHAR_LENGTH(@@global.datadir) ), 64 ) ); SELECT 'Hostname' AS 'Name', @@global.hostname AS 'Value' UNION ALL SELECT 'Port' AS 'Name', @@global.port AS 'Value' UNION ALL SELECT 'Socket' AS 'Name', @@global.socket AS 'Value' UNION ALL SELECT 'Datadir' AS 'Name', @@global.datadir AS 'Value' UNION ALL SELECT 'Server UUID' AS 'Name', @@global.server_uuid AS 'Value' UNION ALL SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value' UNION ALL SELECT 'MySQL Version' AS 'Name', VERSION() AS 'Value' UNION ALL SELECT 'Sys Schema Version' AS 'Name', (SELECT sys_version FROM sys.version) AS 'Value' UNION ALL SELECT 'Version Comment' AS 'Name', @@global.version_comment AS 'Value' UNION ALL SELECT 'Version Compile OS' AS 'Name', @@global.version_compile_os AS 'Value' UNION ALL SELECT 'Version Compile Machine' AS 'Name', @@global.version_compile_machine AS 'Value' UNION ALL SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value' UNION ALL SELECT 'UTC Time' AS 'Name', UTC_TIMESTAMP() AS 'Value' UNION ALL SELECT 'Local Time' AS 'Name', NOW() AS 'Value' UNION ALL SELECT 'Time Zone' AS 'Name', @@global.time_zone AS 'Value' UNION ALL SELECT 'System Time Zone' AS 'Name', @@global.system_time_zone AS 'Value' UNION ALL SELECT 'Time Zone Offset' AS 'Name', TIMEDIFF(NOW(), UTC_TIMESTAMP()) AS 'Value';  SET v_has_innodb         = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'InnoDB'), 'NO'), v_has_ndb            = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'NDBCluster'), 'NO'), v_has_ps             = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'PERFORMANCE_SCHEMA'), 'NO'), v_has_ps_replication = IF(v_has_ps = 'YES' AND EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'replication_applier_status'), 'YES', 'NO' ), v_has_replication    =  IF(v_has_ps_replication = 'YES', IF((SELECT COUNT(*) FROM performance_schema.replication_connection_status) > 0, 'YES', 'NO'), IF(@@master_info_repository = 'TABLE', IF((SELECT COUNT(*) FROM mysql.slave_master_info) > 0, 'YES', 'NO'), IF(@@relay_log_info_repository = 'TABLE', IF((SELECT COUNT(*) FROM mysql.slave_relay_log_info) > 0, 'YES', 'NO'), 'MAYBE')) ) , v_has_metrics        = IF(v_has_ps = 'YES' OR (sys.version_major() = 5 AND sys.version_minor() = 6), 'YES', 'NO'), v_has_ps_vars        = 'NO';   SET v_has_ps_vars = IF(@@global.show_compatibility_56, 'NO', 'YES');  SET v_has_ps_vars = 'YES';  IF (@sys.debug = 'ON') THEN SELECT v_has_innodb AS 'Has_InnoDB', v_has_ndb AS 'Has_NDBCluster', v_has_ps AS 'Has_Performance_Schema', v_has_ps_vars AS 'Has_P_S_SHOW_Variables', v_has_metrics AS 'Has_metrics', v_has_ps_replication 'AS Has_P_S_Replication', v_has_replication AS 'Has_Replication'; END IF;  IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN SET @sys.diagnostics.sql = 'SHOW ENGINE InnoDB STATUS'; PREPARE stmt_innodb_status FROM @sys.diagnostics.sql; END IF;  IF (v_has_ps = 'YES') THEN SET @sys.diagnostics.sql = 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS'; PREPARE stmt_ps_status FROM @sys.diagnostics.sql; END IF;  IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN SET @sys.diagnostics.sql = 'SHOW ENGINE NDBCLUSTER STATUS'; PREPARE stmt_ndbcluster_status FROM @sys.diagnostics.sql; END IF;  SET @sys.diagnostics.sql_gen_query_template = 'SELECT CONCAT( ''SELECT '', GROUP_CONCAT( CASE WHEN (SUBSTRING(TABLE_NAME, 3), COLUMN_NAME) IN ( (''io_global_by_file_by_bytes'', ''total''), (''io_global_by_wait_by_bytes'', ''total_requested'') ) THEN CONCAT(''sys.format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -8) = ''_latency'' THEN CONCAT(''sys.format_time('', COLUMN_NAME, '') AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated'' OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'') THEN CONCAT(''sys.format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME) ELSE COLUMN_NAME END ORDER BY ORDINAL_POSITION SEPARATOR '',\n       '' ), ''\n  FROM tmp_'', SUBSTRING(TABLE_NAME FROM 3), ''_%{OUTPUT}'' ) AS Query INTO @sys.diagnostics.sql_select FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = ''sys'' AND TABLE_NAME = ? GROUP BY TABLE_NAME';  SET @sys.diagnostics.sql_gen_query_delta = 'SELECT CONCAT( ''SELECT '', GROUP_CONCAT( CASE WHEN FIND_IN_SET(COLUMN_NAME, diag.pk) THEN COLUMN_NAME WHEN diag.TABLE_NAME = ''io_global_by_file_by_bytes'' AND COLUMN_NAME = ''write_pct'' THEN CONCAT(''IFNULL(ROUND(100-(((e.total_read-IFNULL(s.total_read, 0))'', ''/NULLIF(((e.total_read-IFNULL(s.total_read, 0))+(e.total_written-IFNULL(s.total_written, 0))), 0))*100), 2), 0.00) AS '', COLUMN_NAME) WHEN (diag.TABLE_NAME, COLUMN_NAME) IN ( (''io_global_by_file_by_bytes'', ''total''), (''io_global_by_wait_by_bytes'', ''total_requested'') ) THEN CONCAT(''sys.format_bytes(e.'', COLUMN_NAME, ''-IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, 1, 4) IN (''max_'', ''min_'') AND SUBSTRING(COLUMN_NAME, -8) = ''_latency'' THEN CONCAT(''sys.format_time(e.'', COLUMN_NAME, '') AS '', COLUMN_NAME) WHEN COLUMN_NAME = ''avg_latency'' THEN CONCAT(''sys.format_time((e.total_latency - IFNULL(s.total_latency, 0))'', ''/NULLIF(e.total - IFNULL(s.total, 0), 0)) AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -12) = ''_avg_latency'' THEN CONCAT(''sys.format_time((e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency, 0))'', ''/NULLIF(e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s, 0), 0)) AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -8) = ''_latency'' THEN CONCAT(''sys.format_time(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME) WHEN COLUMN_NAME IN (''avg_read'', ''avg_write'', ''avg_written'') THEN CONCAT(''sys.format_bytes(IFNULL((e.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), ''-IFNULL(s.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), '', 0))'', ''/NULLIF(e.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), ''-IFNULL(s.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), '', 0), 0), 0)) AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated'' OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'') THEN CONCAT(''sys.format_bytes(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME) ELSE CONCAT(''(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME) END ORDER BY ORDINAL_POSITION SEPARATOR '',\n       '' ), ''\n  FROM tmp_'', diag.TABLE_NAME, ''_end e LEFT OUTER JOIN tmp_'', diag.TABLE_NAME, ''_start s USING ('', diag.pk, '')'' ) AS Query INTO @sys.diagnostics.sql_select FROM tmp_sys_views_delta diag INNER JOIN information_schema.COLUMNS c ON c.TABLE_NAME = CONCAT(''x$'', diag.TABLE_NAME) WHERE c.TABLE_SCHEMA = ''sys'' AND diag.TABLE_NAME = ? GROUP BY diag.TABLE_NAME';  IF (v_has_ps = 'YES') THEN DROP TEMPORARY TABLE IF EXISTS tmp_sys_views_delta; CREATE TEMPORARY TABLE tmp_sys_views_delta ( TABLE_NAME varchar(64) NOT NULL, order_by text COMMENT 'ORDER BY clause for the initial and overall views', order_by_delta text COMMENT 'ORDER BY clause for the delta views', where_delta text COMMENT 'WHERE clause to use for delta views to only include rows with a "count" > 0', limit_rows int unsigned COMMENT 'The maximum number of rows to include for the view', pk varchar(128) COMMENT 'Used with the FIND_IN_SET() function so use comma separated list without whitespace', PRIMARY KEY (TABLE_NAME) );  IF (@sys.debug = 'ON') THEN SELECT 'Populating tmp_sys_views_delta' AS 'Debug'; END IF; INSERT INTO tmp_sys_views_delta VALUES ('host_summary'                       , '%{TABLE}.statement_latency DESC', '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC', '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'host'), ('host_summary_by_file_io'            , '%{TABLE}.io_latency DESC', '(e.io_latency-IFNULL(s.io_latency, 0)) DESC', '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'host'), ('host_summary_by_file_io_type'       , '%{TABLE}.host, %{TABLE}.total_latency DESC', 'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'), ('host_summary_by_stages'             , '%{TABLE}.host, %{TABLE}.total_latency DESC', 'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'), ('host_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host'), ('host_summary_by_statement_type'     , '%{TABLE}.host, %{TABLE}.total_latency DESC', 'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,statement'), ('io_by_thread_by_latency'            , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,thread_id,processlist_id'), ('io_global_by_file_by_bytes'         , '%{TABLE}.total DESC', '(e.total-IFNULL(s.total, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'), ('io_global_by_file_by_latency'       , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'), ('io_global_by_wait_by_bytes'         , '%{TABLE}.total_requested DESC', '(e.total_requested-IFNULL(s.total_requested, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'), ('io_global_by_wait_by_latency'       , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'), ('schema_index_statistics'            , '(%{TABLE}.select_latency+%{TABLE}.insert_latency+%{TABLE}.update_latency+%{TABLE}.delete_latency) DESC', '((e.select_latency+e.insert_latency+e.update_latency+e.delete_latency)-IFNULL(s.select_latency+s.insert_latency+s.update_latency+s.delete_latency, 0)) DESC', '((e.rows_selected+e.insert_latency+e.rows_updated+e.rows_deleted)-IFNULL(s.rows_selected+s.rows_inserted+s.rows_updated+s.rows_deleted, 0)) > 0', 100, 'table_schema,table_name,index_name'), ('schema_table_statistics'            , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) > 0', 100, 'table_schema,table_name'), ('schema_tables_with_full_table_scans', '%{TABLE}.rows_full_scanned DESC', '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) DESC', '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) > 0', 100, 'object_schema,object_name'), ('user_summary'                       , '%{TABLE}.statement_latency DESC', '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC', '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'user'), ('user_summary_by_file_io'            , '%{TABLE}.io_latency DESC', '(e.io_latency-IFNULL(s.io_latency, 0)) DESC', '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'user'), ('user_summary_by_file_io_type'       , '%{TABLE}.user, %{TABLE}.latency DESC', 'e.user, (e.latency-IFNULL(s.latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'), ('user_summary_by_stages'             , '%{TABLE}.user, %{TABLE}.total_latency DESC', 'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'), ('user_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user'), ('user_summary_by_statement_type'     , '%{TABLE}.user, %{TABLE}.total_latency DESC', 'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,statement'), ('wait_classes_global_by_avg_latency' , 'IFNULL(%{TABLE}.total_latency / NULLIF(%{TABLE}.total, 0), 0) DESC', 'IFNULL((e.total_latency-IFNULL(s.total_latency, 0)) / NULLIF((e.total - IFNULL(s.total, 0)), 0), 0) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'), ('wait_classes_global_by_latency'     , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'), ('waits_by_host_by_latency'           , '%{TABLE}.host, %{TABLE}.total_latency DESC', 'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event'), ('waits_by_user_by_latency'           , '%{TABLE}.user, %{TABLE}.total_latency DESC', 'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event'), ('waits_global_by_latency'            , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'events') ; END IF;   SELECT '  =======================  Configuration  =======================  ' AS ''; SELECT 'GLOBAL VARIABLES' AS 'The following output is:'; IF (v_has_ps_vars = 'YES') THEN SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM performance_schema.global_variables ORDER BY VARIABLE_NAME; ELSE SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM information_schema.GLOBAL_VARIABLES ORDER BY VARIABLE_NAME; END IF;  IF (v_has_ps = 'YES') THEN SELECT 'Performance Schema Setup - Actors' AS 'The following output is:'; SELECT * FROM performance_schema.setup_actors;  SELECT 'Performance Schema Setup - Consumers' AS 'The following output is:'; SELECT NAME AS Consumer, ENABLED, sys.ps_is_consumer_enabled(NAME) AS COLLECTS FROM performance_schema.setup_consumers;  SELECT 'Performance Schema Setup - Instruments' AS 'The following output is:'; SELECT SUBSTRING_INDEX(NAME, '/', 2) AS 'InstrumentClass', ROUND(100*SUM(IF(ENABLED = 'YES', 1, 0))/COUNT(*), 2) AS 'EnabledPct', ROUND(100*SUM(IF(TIMED = 'YES', 1, 0))/COUNT(*), 2) AS 'TimedPct' FROM performance_schema.setup_instruments GROUP BY SUBSTRING_INDEX(NAME, '/', 2) ORDER BY SUBSTRING_INDEX(NAME, '/', 2);  SELECT 'Performance Schema Setup - Objects' AS 'The following output is:'; SELECT * FROM performance_schema.setup_objects;  SELECT 'Performance Schema Setup - Threads' AS 'The following output is:'; SELECT `TYPE` AS ThreadType, COUNT(*) AS 'Total', ROUND(100*SUM(IF(INSTRUMENTED = 'YES', 1, 0))/COUNT(*), 2) AS 'InstrumentedPct' FROM performance_schema.threads GROUP BY TYPE; END IF;   IF (v_has_replication = 'NO') THEN SELECT 'No Replication Configured' AS 'Replication Status'; ELSE SELECT CONCAT('Replication Configured: ', v_has_replication, ' - Performance Schema Replication Tables: ', v_has_ps_replication) AS 'Replication Status';  IF (v_has_ps_replication = 'YES') THEN SELECT 'Replication - Connection Configuration' AS 'The following output is:'; SELECT * FROM performance_schema.replication_connection_configuration ORDER BY CHANNEL_NAME ; END IF;  IF (v_has_ps_replication = 'YES') THEN SELECT 'Replication - Applier Configuration' AS 'The following output is:'; SELECT * FROM performance_schema.replication_applier_configuration ORDER BY CHANNEL_NAME; END IF;  IF (@@master_info_repository = 'TABLE') THEN SELECT 'Replication - Master Info Repository Configuration' AS 'The following output is:'; SELECT  Channel_name, Host, User_name, Port, Connect_retry, Enabled_ssl, Ssl_ca, Ssl_capath, Ssl_cert, Ssl_cipher, Ssl_key, Ssl_verify_server_cert, Heartbeat, Bind, Ignored_server_ids, Uuid, Retry_count, Ssl_crl, Ssl_crlpath, Tls_version, Enabled_auto_position FROM mysql.slave_master_info ORDER BY Channel_name ; END IF;  IF (@@relay_log_info_repository = 'TABLE') THEN SELECT 'Replication - Relay Log Repository Configuration' AS 'The following output is:'; SELECT  Channel_name, Sql_delay, Number_of_workers, Id FROM mysql.slave_relay_log_info ORDER BY Channel_name ; END IF; END IF;   IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN SELECT 'Cluster Thread Blocks' AS 'The following output is:'; SELECT * FROM ndbinfo.threadblocks; END IF;  IF (v_has_ps = 'YES') THEN IF (@sys.diagnostics.include_raw = 'ON') THEN SELECT '  ========================  Initial Status  ========================  ' AS ''; END IF;  DROP TEMPORARY TABLE IF EXISTS tmp_digests_start; CALL sys.statement_performance_analyzer('create_tmp', 'tmp_digests_start', NULL); CALL sys.statement_performance_analyzer('snapshot', NULL, NULL); CALL sys.statement_performance_analyzer('save', 'tmp_digests_start', NULL);  IF (@sys.diagnostics.include_raw = 'ON') THEN SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'start'); IF (@sys.debug = 'ON') THEN SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug'; SELECT @sys.diagnostics.sql AS 'Debug'; END IF; PREPARE stmt_gen_query FROM @sys.diagnostics.sql; END IF; SET v_done = FALSE; OPEN c_sysviews_w_delta; c_sysviews_w_delta_loop: LOOP FETCH c_sysviews_w_delta INTO v_table_name; IF v_done THEN LEAVE c_sysviews_w_delta_loop; END IF;  IF (@sys.debug = 'ON') THEN SELECT CONCAT('The following queries are for storing the initial content of ', v_table_name) AS 'Debug'; END IF;  CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_start`')); CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_start` SELECT * FROM `sys`.`x$', v_table_name, '`'));  IF (@sys.diagnostics.include_raw = 'ON') THEN SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name); EXECUTE stmt_gen_query USING @sys.diagnostics.table_name; SELECT CONCAT(@sys.diagnostics.sql_select, IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_start'))), ''), IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '') ) INTO @sys.diagnostics.sql_select FROM tmp_sys_views_delta WHERE TABLE_NAME = v_table_name; SELECT CONCAT('Initial ', v_table_name) AS 'The following output is:'; CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select); END IF; END LOOP; CLOSE c_sysviews_w_delta;  IF (@sys.diagnostics.include_raw = 'ON') THEN DEALLOCATE PREPARE stmt_gen_query; END IF; END IF;  SET v_sql_status_summary_select = 'SELECT Variable_name', v_sql_status_summary_delta  = '', v_sql_status_summary_from   = '';  REPEAT  SET v_output_count = v_output_count + 1; IF (v_output_count > 1) THEN SET v_sleep = in_interval-(UNIX_TIMESTAMP(NOW(2))-v_iter_start); SELECT NOW() AS 'Time', CONCAT('Going to sleep for ', v_sleep, ' seconds. Please do not interrupt') AS 'The following output is:'; DO SLEEP(in_interval); END IF; SET v_iter_start = UNIX_TIMESTAMP(NOW(2));  SELECT NOW(), CONCAT('Iteration Number ', IFNULL(v_output_count, 'NULL')) AS 'The following output is:';  IF (@@log_bin = 1) THEN SELECT 'SHOW MASTER STATUS' AS 'The following output is:'; SHOW MASTER STATUS; END IF;  IF (v_has_replication <> 'NO') THEN SELECT 'SHOW SLAVE STATUS' AS 'The following output is:'; SHOW SLAVE STATUS;  IF (v_has_ps_replication = 'YES') THEN SELECT 'Replication Connection Status' AS 'The following output is:'; SELECT * FROM performance_schema.replication_connection_status;  SELECT 'Replication Applier Status' AS 'The following output is:'; SELECT * FROM performance_schema.replication_applier_status ORDER BY CHANNEL_NAME;  SELECT 'Replication Applier Status - Coordinator' AS 'The following output is:'; SELECT * FROM performance_schema.replication_applier_status_by_coordinator ORDER BY CHANNEL_NAME;  SELECT 'Replication Applier Status - Worker' AS 'The following output is:'; SELECT * FROM performance_schema.replication_applier_status_by_worker ORDER BY CHANNEL_NAME, WORKER_ID; END IF;  IF (@@master_info_repository = 'TABLE') THEN SELECT 'Replication - Master Log Status' AS 'The following output is:'; SELECT Master_log_name, Master_log_pos FROM mysql.slave_master_info; END IF;  IF (@@relay_log_info_repository = 'TABLE') THEN SELECT 'Replication - Relay Log Status' AS 'The following output is:'; SELECT sys.format_path(Relay_log_name) AS Relay_log_name, Relay_log_pos, Master_log_name, Master_log_pos FROM mysql.slave_relay_log_info;  SELECT 'Replication - Worker Status' AS 'The following output is:'; SELECT Id, sys.format_path(Relay_log_name) AS Relay_log_name, Relay_log_pos, Master_log_name, Master_log_pos, sys.format_path(Checkpoint_relay_log_name) AS Checkpoint_relay_log_name, Checkpoint_relay_log_pos, Checkpoint_master_log_name, Checkpoint_master_log_pos, Checkpoint_seqno, Checkpoint_group_size, HEX(Checkpoint_group_bitmap) AS Checkpoint_group_bitmap , Channel_name FROM mysql.slave_worker_info ORDER BY  Channel_name, Id; END IF; END IF;  SET v_table_name = CONCAT('tmp_metrics_', v_output_count); CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));  CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE ', v_table_name, ' ( Variable_name VARCHAR(193) NOT NULL, Variable_value VARCHAR(1024), Type VARCHAR(225) NOT NULL, Enabled ENUM(''YES'', ''NO'', ''PARTIAL'') NOT NULL, PRIMARY KEY (Type, Variable_name) ) ENGINE = InnoDB DEFAULT CHARSET=utf8'));  IF (v_has_metrics) THEN SET @sys.diagnostics.sql = CONCAT( 'INSERT INTO ', v_table_name, ' SELECT Variable_name, REPLACE(Variable_value, ''\n'', ''\\\\n'') AS Variable_value, Type, Enabled FROM sys.metrics' ); ELSE SET @sys.diagnostics.sql = CONCAT( 'INSERT INTO ', v_table_name, '(SELECT LOWER(VARIABLE_NAME) AS Variable_name, REPLACE(VARIABLE_VALUE, ''\n'', ''\\\\n'') AS Variable_value, ''Global Status'' AS Type, ''YES'' AS Enabled FROM performance_schema.global_status ) UNION ALL ( SELECT NAME AS Variable_name, COUNT AS Variable_value, CONCAT(''InnoDB Metrics - '', SUBSYSTEM) AS Type, IF(STATUS = ''enabled'', ''YES'', ''NO'') AS Enabled FROM information_schema.INNODB_METRICS WHERE NAME NOT IN ( ''lock_row_lock_time'', ''lock_row_lock_time_avg'', ''lock_row_lock_time_max'', ''lock_row_lock_waits'', ''buffer_pool_reads'', ''buffer_pool_read_requests'', ''buffer_pool_write_requests'', ''buffer_pool_wait_free'', ''buffer_pool_read_ahead'', ''buffer_pool_read_ahead_evicted'', ''buffer_pool_pages_total'', ''buffer_pool_pages_misc'', ''buffer_pool_pages_data'', ''buffer_pool_bytes_data'', ''buffer_pool_pages_dirty'', ''buffer_pool_bytes_dirty'', ''buffer_pool_pages_free'', ''buffer_pages_created'', ''buffer_pages_written'', ''buffer_pages_read'', ''buffer_data_reads'', ''buffer_data_written'', ''file_num_open_files'', ''os_log_bytes_written'', ''os_log_fsyncs'', ''os_log_pending_fsyncs'', ''os_log_pending_writes'', ''log_waits'', ''log_write_requests'', ''log_writes'', ''innodb_dblwr_writes'', ''innodb_dblwr_pages_written'', ''innodb_page_size'') ) UNION ALL ( SELECT ''NOW()'' AS Variable_name, NOW(3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled ) UNION ALL ( SELECT ''UNIX_TIMESTAMP()'' AS Variable_name, ROUND(UNIX_TIMESTAMP(NOW(3)), 3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled ) ORDER BY Type, Variable_name;' ); END IF; CALL sys.execute_prepared_stmt(@sys.diagnostics.sql);  CALL sys.execute_prepared_stmt( CONCAT('(SELECT Variable_value INTO @sys.diagnostics.output_time FROM ', v_table_name, ' WHERE Type = ''System Time'' AND Variable_name = ''UNIX_TIMESTAMP()'')') ); SET v_output_time = @sys.diagnostics.output_time;  SET v_sql_status_summary_select = CONCAT(v_sql_status_summary_select, ', CONCAT( LEFT(s', v_output_count, '.Variable_value, ', v_status_summary_width, '), IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'', CONCAT('' ('', ROUND(s', v_output_count, '.Variable_value/', v_output_time, ', 2), ''/sec)''), '''') ) AS ''Output ', v_output_count, ''''), v_sql_status_summary_from   = CONCAT(v_sql_status_summary_from, ' ', IF(v_output_count = 1, '  FROM ', '       INNER JOIN '), v_table_name, ' s', v_output_count, IF (v_output_count = 1, '', ' USING (Type, Variable_name)')); IF (v_output_count > 1) THEN SET v_sql_status_summary_delta  = CONCAT(v_sql_status_summary_delta, ', IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'', CONCAT(IF(s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'' OR s', v_output_count, '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'', ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value), 2), (s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value) ), '' ('', ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)/(', v_output_time, '-', v_output_time_prev, '), 2), ''/sec)'' ), '''' ) AS ''Delta (', (v_output_count-1), ' -> ', v_output_count, ')'''); END IF;  SET v_output_time_prev = v_output_time;  IF (@sys.diagnostics.include_raw = 'ON') THEN IF (v_has_metrics) THEN SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:'; ELSE SELECT 'sys.metrics equivalent' AS 'The following output is:'; END IF; CALL sys.execute_prepared_stmt(CONCAT('SELECT Type, Variable_name, Enabled, Variable_value FROM ', v_table_name, ' ORDER BY Type, Variable_name')); END IF;  IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN SELECT 'SHOW ENGINE INNODB STATUS' AS 'The following output is:'; EXECUTE stmt_innodb_status; SELECT 'InnoDB - Transactions' AS 'The following output is:'; SELECT * FROM information_schema.INNODB_TRX; END IF;  IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN SELECT 'SHOW ENGINE NDBCLUSTER STATUS' AS 'The following output is:'; EXECUTE stmt_ndbcluster_status;  SELECT 'ndbinfo.memoryusage' AS 'The following output is:'; SELECT node_id, memory_type, sys.format_bytes(used) AS used, used_pages, sys.format_bytes(total) AS total, total_pages, ROUND(100*(used/total), 2) AS 'Used %' FROM ndbinfo.memoryusage;  SET v_done = FALSE; OPEN c_ndbinfo; c_ndbinfo_loop: LOOP FETCH c_ndbinfo INTO v_table_name; IF v_done THEN LEAVE c_ndbinfo_loop; END IF;  SELECT CONCAT('SELECT * FROM ndbinfo.', v_table_name) AS 'The following output is:'; CALL sys.execute_prepared_stmt(CONCAT('SELECT * FROM `ndbinfo`.`', v_table_name, '`')); END LOOP; CLOSE c_ndbinfo;  SELECT * FROM information_schema.FILES; END IF;  SELECT 'SELECT * FROM sys.processlist' AS 'The following output is:'; SELECT processlist.* FROM sys.processlist;  IF (v_has_ps = 'YES') THEN IF (sys.ps_is_consumer_enabled('events_waits_history_long') = 'YES') THEN SELECT 'SELECT * FROM sys.latest_file_io' AS 'The following output is:'; SELECT * FROM sys.latest_file_io; END IF;  IF (EXISTS(SELECT 1 FROM performance_schema.setup_instruments WHERE NAME LIKE 'memory/%' AND ENABLED = 'YES')) THEN SELECT 'SELECT * FROM sys.memory_by_host_by_current_bytes' AS 'The following output is:'; SELECT * FROM sys.memory_by_host_by_current_bytes;  SELECT 'SELECT * FROM sys.memory_by_thread_by_current_bytes' AS 'The following output is:'; SELECT * FROM sys.memory_by_thread_by_current_bytes;  SELECT 'SELECT * FROM sys.memory_by_user_by_current_bytes' AS 'The following output is:'; SELECT * FROM sys.memory_by_user_by_current_bytes;  SELECT 'SELECT * FROM sys.memory_global_by_current_bytes' AS 'The following output is:'; SELECT * FROM sys.memory_global_by_current_bytes; END IF; END IF;  SET v_runtime = (UNIX_TIMESTAMP(NOW(2)) - v_start); UNTIL (v_runtime + in_interval >= in_max_runtime) END REPEAT;  IF (v_has_ps = 'YES') THEN SELECT 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS' AS 'The following output is:'; EXECUTE stmt_ps_status; END IF;  IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN DEALLOCATE PREPARE stmt_innodb_status; END IF; IF (v_has_ps = 'YES') THEN DEALLOCATE PREPARE stmt_ps_status; END IF; IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN DEALLOCATE PREPARE stmt_ndbcluster_status; END IF;   SELECT '  ============================  Schema Information  ============================  ' AS '';  SELECT COUNT(*) AS 'Total Number of Tables' FROM information_schema.TABLES;  IF (@sys.diagnostics.allow_i_s_tables = 'ON') THEN SELECT 'Storage Engine Usage' AS 'The following output is:'; SELECT ENGINE, COUNT(*) AS NUM_TABLES, sys.format_bytes(SUM(DATA_LENGTH)) AS DATA_LENGTH, sys.format_bytes(SUM(INDEX_LENGTH)) AS INDEX_LENGTH, sys.format_bytes(SUM(DATA_LENGTH+INDEX_LENGTH)) AS TOTAL FROM information_schema.TABLES GROUP BY ENGINE;  SELECT 'Schema Object Overview' AS 'The following output is:'; SELECT * FROM sys.schema_object_overview;  SELECT 'Tables without a PRIMARY KEY' AS 'The following output is:'; SELECT TABLES.TABLE_SCHEMA, ENGINE, COUNT(*) AS NumTables FROM information_schema.TABLES LEFT OUTER JOIN information_schema.STATISTICS ON STATISTICS.TABLE_SCHEMA = TABLES.TABLE_SCHEMA AND STATISTICS.TABLE_NAME = TABLES.TABLE_NAME AND STATISTICS.INDEX_NAME = 'PRIMARY' WHERE STATISTICS.TABLE_NAME IS NULL AND TABLES.TABLE_SCHEMA NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys') AND TABLES.TABLE_TYPE = 'BASE TABLE' GROUP BY TABLES.TABLE_SCHEMA, ENGINE; END IF;  IF (v_has_ps = 'YES') THEN SELECT 'Unused Indexes' AS 'The following output is:'; SELECT object_schema, COUNT(*) AS NumUnusedIndexes FROM performance_schema.table_io_waits_summary_by_index_usage  WHERE index_name IS NOT NULL AND count_star = 0 AND object_schema NOT IN ('mysql', 'sys') AND index_name != 'PRIMARY' GROUP BY object_schema; END IF;  IF (v_has_ps = 'YES') THEN SELECT '  =========================  Overall Status  =========================  ' AS '';  SELECT 'CALL sys.ps_statement_avg_latency_histogram()' AS 'The following output is:'; CALL sys.ps_statement_avg_latency_histogram();  CALL sys.statement_performance_analyzer('snapshot', NULL, NULL); CALL sys.statement_performance_analyzer('overall', NULL, 'with_runtimes_in_95th_percentile');  SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'end'); IF (@sys.debug = 'ON') THEN SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug'; SELECT @sys.diagnostics.sql AS 'Debug'; END IF; PREPARE stmt_gen_query FROM @sys.diagnostics.sql;  SET v_done = FALSE; OPEN c_sysviews_w_delta; c_sysviews_w_delta_loop: LOOP FETCH c_sysviews_w_delta INTO v_table_name; IF v_done THEN LEAVE c_sysviews_w_delta_loop; END IF;  IF (@sys.debug = 'ON') THEN SELECT CONCAT('The following queries are for storing the final content of ', v_table_name) AS 'Debug'; END IF;  CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_end`')); CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_end` SELECT * FROM `sys`.`x$', v_table_name, '`'));  IF (@sys.diagnostics.include_raw = 'ON') THEN SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name); EXECUTE stmt_gen_query USING @sys.diagnostics.table_name; SELECT CONCAT(@sys.diagnostics.sql_select, IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_end'))), ''), IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '') ) INTO @sys.diagnostics.sql_select FROM tmp_sys_views_delta WHERE TABLE_NAME = v_table_name; SELECT CONCAT('Overall ', v_table_name) AS 'The following output is:'; CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select); END IF; END LOOP; CLOSE c_sysviews_w_delta;  DEALLOCATE PREPARE stmt_gen_query;   SELECT '  ======================  Delta Status  ======================  ' AS '';  CALL sys.statement_performance_analyzer('delta', 'tmp_digests_start', 'with_runtimes_in_95th_percentile'); CALL sys.statement_performance_analyzer('cleanup', NULL, NULL);  DROP TEMPORARY TABLE tmp_digests_start;  IF (@sys.debug = 'ON') THEN SELECT 'The following query will be used to generate the query for each sys view delta' AS 'Debug'; SELECT @sys.diagnostics.sql_gen_query_delta AS 'Debug'; END IF; PREPARE stmt_gen_query_delta FROM @sys.diagnostics.sql_gen_query_delta;  SET v_old_group_concat_max_len = @@session.group_concat_max_len; SET @@session.group_concat_max_len = 2048; SET v_done = FALSE; OPEN c_sysviews_w_delta; c_sysviews_w_delta_loop: LOOP FETCH c_sysviews_w_delta INTO v_table_name; IF v_done THEN LEAVE c_sysviews_w_delta_loop; END IF;  SET @sys.diagnostics.table_name = v_table_name; EXECUTE stmt_gen_query_delta USING @sys.diagnostics.table_name; SELECT CONCAT(@sys.diagnostics.sql_select, IF(where_delta IS NOT NULL, CONCAT('\n WHERE ', where_delta), ''), IF(order_by_delta IS NOT NULL, CONCAT('\n ORDER BY ', order_by_delta), ''), IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '') ) INTO @sys.diagnostics.sql_select FROM tmp_sys_views_delta WHERE TABLE_NAME = v_table_name;  SELECT CONCAT('Delta ', v_table_name) AS 'The following output is:'; CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);  CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_end`')); CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_start`')); END LOOP; CLOSE c_sysviews_w_delta; SET @@session.group_concat_max_len = v_old_group_concat_max_len;  DEALLOCATE PREPARE stmt_gen_query_delta; DROP TEMPORARY TABLE tmp_sys_views_delta; END IF;  IF (v_has_metrics) THEN SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:'; ELSE SELECT 'sys.metrics equivalent' AS 'The following output is:'; END IF; CALL sys.execute_prepared_stmt( CONCAT(v_sql_status_summary_select, v_sql_status_summary_delta, ', Type, s1.Enabled', v_sql_status_summary_from, ' ORDER BY Type, Variable_name' ) );  SET v_count = 0; WHILE (v_count < v_output_count) DO SET v_count = v_count + 1; SET v_table_name = CONCAT('tmp_metrics_', v_count); CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name)); END WHILE;  IF (in_auto_config <> 'current') THEN CALL sys.ps_setup_reload_saved(); SET sql_log_bin = @log_bin; END IF;  SET @sys.diagnostics.output_time            = NULL, @sys.diagnostics.sql                    = NULL, @sys.diagnostics.sql_gen_query_delta    = NULL, @sys.diagnostics.sql_gen_query_template = NULL, @sys.diagnostics.sql_select             = NULL, @sys.diagnostics.table_name             = NULL;  IF (v_this_thread_enabled = 'YES') THEN CALL sys.ps_setup_enable_thread(CONNECTION_ID()); END IF;  IF (@log_bin = 1) THEN SET sql_log_bin = @log_bin; END IF; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.execute_prepared_stmt
DELIMITER //
CREATE PROCEDURE `execute_prepared_stmt`( IN in_query longtext CHARACTER SET UTF8 )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes the query in the argument and executes it using a prepared statement. The prepared statement is deallocated,\n so the procedure is mainly useful for executing one off dynamically created queries.\n \n The sys_execute_prepared_stmt prepared statement name is used for the query and is required not to exist.\n \n \n Parameters\n \n in_query (longtext CHARACTER SET UTF8):\n The query to execute.\n \n \n Configuration Options\n \n sys.debug\n Whether to provide debugging output.\n Default is ''OFF''. Set to ''ON'' to include.\n \n \n Example\n \n mysql> CALL sys.execute_prepared_stmt(''SELECT * FROM sys.sys_config'');\n +------------------------+-------+---------------------+--------+\n | variable               | value | set_time            | set_by |\n +------------------------+-------+---------------------+--------+\n | statement_truncate_len | 64    | 2015-06-30 13:06:00 | NULL   |\n +------------------------+-------+---------------------+--------+\n 1 row in set (0.00 sec)\n \n Query OK, 0 rows affected (0.00 sec)\n '
BEGIN IF (@sys.debug IS NULL) THEN SET @sys.debug = sys.sys_get_config('debug', 'OFF'); END IF;  IF (in_query IS NULL OR LENGTH(in_query) < 4) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "The @sys.execute_prepared_stmt.sql must contain a query"; END IF;  SET @sys.execute_prepared_stmt.sql = in_query;  IF (@sys.debug = 'ON') THEN SELECT @sys.execute_prepared_stmt.sql AS 'Debug'; END IF; PREPARE sys_execute_prepared_stmt FROM @sys.execute_prepared_stmt.sql; EXECUTE sys_execute_prepared_stmt; DEALLOCATE PREPARE sys_execute_prepared_stmt;  SET @sys.execute_prepared_stmt.sql = NULL; END//
DELIMITER ;

-- Volcando estructura para función sys.extract_schema_from_file_name
DELIMITER //
CREATE FUNCTION `extract_schema_from_file_name`( path VARCHAR(512) ) RETURNS varchar(64) CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw file path, and attempts to extract the schema name from it.\n \n Useful for when interacting with Performance Schema data \n concerning IO statistics, for example.\n \n Currently relies on the fact that a table data file will be within a \n specified database directory (will not work with partitions or tables\n that specify an individual DATA_DIRECTORY).\n \n Parameters\n \n path (VARCHAR(512)):\n The full file path to a data file to extract the schema name from.\n \n Returns\n \n VARCHAR(64)\n \n Example\n \n mysql> SELECT sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n +----------------------------------------------------------------------------+\n | sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n +----------------------------------------------------------------------------+\n | employees                                                                  |\n +----------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -2), '/', 1), 64); END//
DELIMITER ;

-- Volcando estructura para función sys.extract_table_from_file_name
DELIMITER //
CREATE FUNCTION `extract_table_from_file_name`( path VARCHAR(512) ) RETURNS varchar(64) CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw file path, and extracts the table name from it.\n \n Useful for when interacting with Performance Schema data \n concerning IO statistics, for example.\n \n Parameters\n \n path (VARCHAR(512)):\n The full file path to a data file to extract the table name from.\n \n Returns\n \n VARCHAR(64)\n \n Example\n \n mysql> SELECT sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n +---------------------------------------------------------------------------+\n | sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n +---------------------------------------------------------------------------+\n | employee                                                                  |\n +---------------------------------------------------------------------------+\n 1 row in set (0.02 sec)\n '
BEGIN RETURN LEFT(SUBSTRING_INDEX(REPLACE(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -1), '@0024', '$'), '.', 1), 64); END//
DELIMITER ;

-- Volcando estructura para función sys.format_bytes
DELIMITER //
CREATE FUNCTION `format_bytes`( bytes TEXT ) RETURNS text CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw bytes value, and converts it to a human readable format.\n \n Parameters\n \n bytes (TEXT):\n A raw bytes value.\n \n Returns\n \n TEXT\n \n Example\n \n mysql> SELECT sys.format_bytes(2348723492723746) AS size;\n +----------+\n | size     |\n +----------+\n | 2.09 PiB |\n +----------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.format_bytes(2348723492723) AS size;\n +----------+\n | size     |\n +----------+\n | 2.14 TiB |\n +----------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.format_bytes(23487234) AS size;\n +-----------+\n | size      |\n +-----------+\n | 22.40 MiB |\n +-----------+\n 1 row in set (0.00 sec)\n '
BEGIN IF bytes IS NULL THEN RETURN NULL; ELSEIF bytes >= 1125899906842624 THEN RETURN CONCAT(ROUND(bytes / 1125899906842624, 2), ' PiB'); ELSEIF bytes >= 1099511627776 THEN RETURN CONCAT(ROUND(bytes / 1099511627776, 2), ' TiB'); ELSEIF bytes >= 1073741824 THEN RETURN CONCAT(ROUND(bytes / 1073741824, 2), ' GiB'); ELSEIF bytes >= 1048576 THEN RETURN CONCAT(ROUND(bytes / 1048576, 2), ' MiB'); ELSEIF bytes >= 1024 THEN RETURN CONCAT(ROUND(bytes / 1024, 2), ' KiB'); ELSE RETURN CONCAT(ROUND(bytes, 0), ' bytes'); END IF; END//
DELIMITER ;

-- Volcando estructura para función sys.format_path
DELIMITER //
CREATE FUNCTION `format_path`( in_path VARCHAR(512) ) RETURNS varchar(512) CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw path value, and strips out the datadir or tmpdir\n replacing with @@datadir and @@tmpdir respectively. \n \n Also normalizes the paths across operating systems, so backslashes\n on Windows are converted to forward slashes\n \n Parameters\n \n path (VARCHAR(512)):\n The raw file path value to format.\n \n Returns\n \n VARCHAR(512) CHARSET UTF8\n \n Example\n \n mysql> select @@datadir;\n +-----------------------------------------------+\n | @@datadir                                     |\n +-----------------------------------------------+\n | /Users/mark/sandboxes/SmallTree/AMaster/data/ |\n +-----------------------------------------------+\n 1 row in set (0.06 sec)\n \n mysql> select format_path(''/Users/mark/sandboxes/SmallTree/AMaster/data/mysql/proc.MYD'') AS path;\n +--------------------------+\n | path                     |\n +--------------------------+\n | @@datadir/mysql/proc.MYD |\n +--------------------------+\n 1 row in set (0.03 sec)\n '
BEGIN DECLARE v_path VARCHAR(512); DECLARE v_undo_dir VARCHAR(1024);  DECLARE path_separator CHAR(1) DEFAULT '/';  IF @@global.version_compile_os LIKE 'win%' THEN SET path_separator = '\\'; END IF;  IF in_path LIKE '/private/%' THEN SET v_path = REPLACE(in_path, '/private', ''); ELSE SET v_path = in_path; END IF;  SET v_undo_dir = IFNULL((SELECT VARIABLE_VALUE FROM performance_schema.global_variables WHERE VARIABLE_NAME = 'innodb_undo_directory'), '');  IF v_path IS NULL THEN RETURN NULL; ELSEIF v_path LIKE CONCAT(@@global.datadir, IF(SUBSTRING(@@global.datadir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.datadir, CONCAT('@@datadir', IF(SUBSTRING(@@global.datadir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.tmpdir, IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.tmpdir, CONCAT('@@tmpdir', IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.slave_load_tmpdir, IF(SUBSTRING(@@global.slave_load_tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.slave_load_tmpdir, CONCAT('@@slave_load_tmpdir', IF(SUBSTRING(@@global.slave_load_tmpdir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.innodb_data_home_dir, IF(SUBSTRING(@@global.innodb_data_home_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.innodb_data_home_dir, CONCAT('@@innodb_data_home_dir', IF(SUBSTRING(@@global.innodb_data_home_dir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.innodb_log_group_home_dir, IF(SUBSTRING(@@global.innodb_log_group_home_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.innodb_log_group_home_dir, CONCAT('@@innodb_log_group_home_dir', IF(SUBSTRING(@@global.innodb_log_group_home_dir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(v_undo_dir, IF(SUBSTRING(v_undo_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, v_undo_dir, CONCAT('@@innodb_undo_directory', IF(SUBSTRING(v_undo_dir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.basedir, IF(SUBSTRING(@@global.basedir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.basedir, CONCAT('@@basedir', IF(SUBSTRING(@@global.basedir, -1) = path_separator, path_separator, ''))); END IF;  RETURN v_path; END//
DELIMITER ;

-- Volcando estructura para función sys.format_statement
DELIMITER //
CREATE FUNCTION `format_statement`( statement LONGTEXT ) RETURNS longtext CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Formats a normalized statement, truncating it if it is > 64 characters long by default.\n \n To configure the length to truncate the statement to by default, update the `statement_truncate_len`\n variable with `sys_config` table to a different value. Alternatively, to change it just for just \n your particular session, use `SET @sys.statement_truncate_len := <some new value>`.\n \n Useful for printing statement related data from Performance Schema from \n the command line.\n \n Parameters\n \n statement (LONGTEXT): \n The statement to format.\n \n Returns\n \n LONGTEXT\n \n Example\n \n mysql> SELECT sys.format_statement(digest_text)\n ->   FROM performance_schema.events_statements_summary_by_digest\n ->  ORDER by sum_timer_wait DESC limit 5;\n +-------------------------------------------------------------------+\n | sys.format_statement(digest_text)                                 |\n +-------------------------------------------------------------------+\n | CREATE SQL SECURITY INVOKER VI ... KE ? AND `variable_value` > ?  |\n | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `esc` . ... |\n | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `sys` . ... |\n | CREATE SQL SECURITY INVOKER VI ...  , `compressed_size` ) ) DESC  |\n | CREATE SQL SECURITY INVOKER VI ... LIKE ? ORDER BY `timer_start`  |\n +-------------------------------------------------------------------+\n 5 rows in set (0.00 sec)\n '
BEGIN IF @sys.statement_truncate_len IS NULL THEN SET @sys.statement_truncate_len = sys_get_config('statement_truncate_len', 64); END IF;  IF CHAR_LENGTH(statement) > @sys.statement_truncate_len THEN RETURN REPLACE(CONCAT(LEFT(statement, (@sys.statement_truncate_len/2)-2), ' ... ', RIGHT(statement, (@sys.statement_truncate_len/2)-2)), '\n', ' '); ELSE  RETURN REPLACE(statement, '\n', ' '); END IF; END//
DELIMITER ;

-- Volcando estructura para función sys.format_time
DELIMITER //
CREATE FUNCTION `format_time`( picoseconds TEXT ) RETURNS text CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw picoseconds value, and converts it to a human readable form.\n \n Picoseconds are the precision that all latency values are printed in \n within Performance Schema, however are not user friendly when wanting\n to scan output from the command line.\n \n Parameters\n \n picoseconds (TEXT): \n The raw picoseconds value to convert.\n \n Returns\n \n TEXT\n \n Example\n \n mysql> select format_time(342342342342345);\n +------------------------------+\n | format_time(342342342342345) |\n +------------------------------+\n | 00:05:42                     |\n +------------------------------+\n 1 row in set (0.00 sec)\n \n mysql> select format_time(342342342);\n +------------------------+\n | format_time(342342342) |\n +------------------------+\n | 342.34 us              |\n +------------------------+\n 1 row in set (0.00 sec)\n \n mysql> select format_time(34234);\n +--------------------+\n | format_time(34234) |\n +--------------------+\n | 34.23 ns           |\n +--------------------+\n 1 row in set (0.00 sec)\n '
BEGIN IF picoseconds IS NULL THEN RETURN NULL; ELSEIF picoseconds >= 604800000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 604800000000000000, 2), ' w'); ELSEIF picoseconds >= 86400000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 86400000000000000, 2), ' d'); ELSEIF picoseconds >= 3600000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 3600000000000000, 2), ' h'); ELSEIF picoseconds >= 60000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 60000000000000, 2), ' m'); ELSEIF picoseconds >= 1000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000000, 2), ' s'); ELSEIF picoseconds >= 1000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000, 2), ' ms'); ELSEIF picoseconds >= 1000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000, 2), ' us'); ELSEIF picoseconds >= 1000 THEN RETURN CONCAT(ROUND(picoseconds / 1000, 2), ' ns'); ELSE RETURN CONCAT(picoseconds, ' ps'); END IF; END//
DELIMITER ;

-- Volcando estructura para vista sys.host_summary
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `host_summary` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`statements` DECIMAL(64,0) NULL,
	`statement_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`statement_avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`table_scans` DECIMAL(65,0) NULL,
	`file_ios` DECIMAL(64,0) NULL,
	`file_io_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_connections` DECIMAL(41,0) NULL,
	`total_connections` DECIMAL(41,0) NULL,
	`unique_users` BIGINT(21) NOT NULL,
	`current_memory` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`total_memory_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.host_summary_by_file_io
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `host_summary_by_file_io` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`ios` DECIMAL(42,0) NULL,
	`io_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.host_summary_by_file_io_type
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `host_summary_by_file_io_type` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.host_summary_by_stages
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `host_summary_by_stages` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.host_summary_by_statement_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `host_summary_by_statement_latency` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`lock_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_sent` DECIMAL(42,0) NULL,
	`rows_examined` DECIMAL(42,0) NULL,
	`rows_affected` DECIMAL(42,0) NULL,
	`full_scans` DECIMAL(43,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.host_summary_by_statement_type
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `host_summary_by_statement_type` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`statement` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`lock_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL,
	`full_scans` BIGINT(21) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.innodb_buffer_stats_by_schema
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `innodb_buffer_stats_by_schema` (
	`object_schema` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`data` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`pages` BIGINT(21) NOT NULL,
	`pages_hashed` BIGINT(21) NOT NULL,
	`pages_old` BIGINT(21) NOT NULL,
	`rows_cached` DECIMAL(44,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.innodb_buffer_stats_by_table
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `innodb_buffer_stats_by_table` (
	`object_schema` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`object_name` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`data` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`pages` BIGINT(21) NOT NULL,
	`pages_hashed` BIGINT(21) NOT NULL,
	`pages_old` BIGINT(21) NOT NULL,
	`rows_cached` DECIMAL(44,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.innodb_lock_waits
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `innodb_lock_waits` (
	`wait_started` DATETIME NULL,
	`wait_age` TIME NULL,
	`wait_age_secs` BIGINT(21) NULL,
	`locked_table` VARCHAR(1024) NOT NULL COLLATE 'utf8_general_ci',
	`locked_index` VARCHAR(1024) NULL COLLATE 'utf8_general_ci',
	`locked_type` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_trx_id` VARCHAR(18) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_trx_started` DATETIME NOT NULL,
	`waiting_trx_age` TIME NULL,
	`waiting_trx_rows_locked` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_trx_rows_modified` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_pid` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`waiting_lock_id` VARCHAR(81) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_lock_mode` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_trx_id` VARCHAR(18) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_pid` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`blocking_lock_id` VARCHAR(81) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_lock_mode` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_trx_started` DATETIME NOT NULL,
	`blocking_trx_age` TIME NULL,
	`blocking_trx_rows_locked` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_trx_rows_modified` BIGINT(21) UNSIGNED NOT NULL,
	`sql_kill_blocking_query` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`sql_kill_blocking_connection` VARCHAR(26) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.io_by_thread_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `io_by_thread_by_latency` (
	`user` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`min_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`thread_id` BIGINT(20) UNSIGNED NOT NULL,
	`processlist_id` BIGINT(20) UNSIGNED NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.io_global_by_file_by_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `io_global_by_file_by_bytes` (
	`file` VARCHAR(512) NULL COLLATE 'utf8_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL,
	`total_read` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_read` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`count_write` BIGINT(20) UNSIGNED NOT NULL,
	`total_written` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_write` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`total` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`write_pct` DECIMAL(26,2) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.io_global_by_file_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `io_global_by_file_by_latency` (
	`file` VARCHAR(512) NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL,
	`read_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`count_write` BIGINT(20) UNSIGNED NOT NULL,
	`write_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`count_misc` BIGINT(20) UNSIGNED NOT NULL,
	`misc_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.io_global_by_wait_by_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `io_global_by_wait_by_bytes` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`min_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL,
	`total_read` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_read` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`count_write` BIGINT(20) UNSIGNED NOT NULL,
	`total_written` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_written` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`total_requested` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.io_global_by_wait_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `io_global_by_wait_by_latency` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`read_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`write_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`misc_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL,
	`total_read` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_read` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`count_write` BIGINT(20) UNSIGNED NOT NULL,
	`total_written` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_written` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.latest_file_io
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `latest_file_io` (
	`thread` VARCHAR(149) NULL COLLATE 'utf8_general_ci',
	`file` VARCHAR(512) NULL COLLATE 'utf8_general_ci',
	`latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`operation` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`requested` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para función sys.list_add
DELIMITER //
CREATE FUNCTION `list_add`( in_list TEXT, in_add_value TEXT ) RETURNS text CHARSET utf8
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a list, and a value to add to the list, and returns the resulting list.\n \n Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n \n Parameters\n \n in_list (TEXT):\n The comma separated list to add a value to\n \n in_add_value (TEXT):\n The value to add to the input list\n \n Returns\n \n TEXT\n \n Example\n \n mysql> select @@sql_mode;\n +-----------------------------------------------------------------------------------+\n | @@sql_mode                                                                        |\n +-----------------------------------------------------------------------------------+\n | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +-----------------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n mysql> set sql_mode = sys.list_add(@@sql_mode, ''ANSI_QUOTES'');\n Query OK, 0 rows affected (0.06 sec)\n \n mysql> select @@sql_mode;\n +-----------------------------------------------------------------------------------------------+\n | @@sql_mode                                                                                    |\n +-----------------------------------------------------------------------------------------------+\n | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +-----------------------------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n '
BEGIN  IF (in_add_value IS NULL) THEN SIGNAL SQLSTATE '02200' SET MESSAGE_TEXT = 'Function sys.list_add: in_add_value input variable should not be NULL', MYSQL_ERRNO = 1138; END IF;  IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN RETURN in_add_value; END IF;  RETURN (SELECT CONCAT(TRIM(BOTH ',' FROM TRIM(in_list)), ',', in_add_value));  END//
DELIMITER ;

-- Volcando estructura para función sys.list_drop
DELIMITER //
CREATE FUNCTION `list_drop`( in_list TEXT, in_drop_value TEXT ) RETURNS text CHARSET utf8
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a list, and a value to attempt to remove from the list, and returns the resulting list.\n \n Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n \n Parameters\n \n in_list (TEXT):\n The comma separated list to drop a value from\n \n in_drop_value (TEXT):\n The value to drop from the input list\n \n Returns\n \n TEXT\n \n Example\n \n mysql> select @@sql_mode;\n +-----------------------------------------------------------------------------------------------+\n | @@sql_mode                                                                                    |\n +-----------------------------------------------------------------------------------------------+\n | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +-----------------------------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n mysql> set sql_mode = sys.list_drop(@@sql_mode, ''ONLY_FULL_GROUP_BY'');\n Query OK, 0 rows affected (0.03 sec)\n \n mysql> select @@sql_mode;\n +----------------------------------------------------------------------------+\n | @@sql_mode                                                                 |\n +----------------------------------------------------------------------------+\n | ANSI_QUOTES,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +----------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n '
BEGIN  IF (in_drop_value IS NULL) THEN SIGNAL SQLSTATE '02200' SET MESSAGE_TEXT = 'Function sys.list_drop: in_drop_value input variable should not be NULL', MYSQL_ERRNO = 1138; END IF;  IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN RETURN in_list; END IF;  RETURN (SELECT TRIM(BOTH ',' FROM REPLACE(REPLACE(CONCAT(',', in_list), CONCAT(',', in_drop_value), ''), CONCAT(', ', in_drop_value), '')));  END//
DELIMITER ;

-- Volcando estructura para vista sys.memory_by_host_by_current_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `memory_by_host_by_current_bytes` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_avg_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_max_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`total_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.memory_by_thread_by_current_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `memory_by_thread_by_current_bytes` (
	`thread_id` BIGINT(20) UNSIGNED NOT NULL,
	`user` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_avg_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_max_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`total_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.memory_by_user_by_current_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `memory_by_user_by_current_bytes` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_avg_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_max_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`total_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.memory_global_by_current_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `memory_global_by_current_bytes` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`current_count` BIGINT(20) NOT NULL,
	`current_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_avg_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`high_count` BIGINT(20) NOT NULL,
	`high_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`high_avg_alloc` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.memory_global_total
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `memory_global_total` (
	`total_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.metrics
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `metrics` (
	`Variable_name` VARCHAR(193) NOT NULL COLLATE 'utf8_general_ci',
	`Variable_value` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`Type` VARCHAR(210) NOT NULL COLLATE 'utf8_general_ci',
	`Enabled` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.processlist
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `processlist` (
	`thd_id` BIGINT(20) UNSIGNED NOT NULL,
	`conn_id` BIGINT(20) UNSIGNED NULL,
	`user` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`command` VARCHAR(16) NULL COLLATE 'utf8_general_ci',
	`state` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`time` BIGINT(20) NULL,
	`current_statement` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`statement_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`progress` DECIMAL(26,2) NULL,
	`lock_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_examined` BIGINT(20) UNSIGNED NULL,
	`rows_sent` BIGINT(20) UNSIGNED NULL,
	`rows_affected` BIGINT(20) UNSIGNED NULL,
	`tmp_tables` BIGINT(20) UNSIGNED NULL,
	`tmp_disk_tables` BIGINT(20) UNSIGNED NULL,
	`full_scan` VARCHAR(3) NOT NULL COLLATE 'utf8_general_ci',
	`last_statement` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`last_statement_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_memory` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`last_wait` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`last_wait_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`source` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`trx_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`trx_state` ENUM('ACTIVE','COMMITTED','ROLLED BACK') NULL COLLATE 'utf8_general_ci',
	`trx_autocommit` ENUM('YES','NO') NULL COLLATE 'utf8_general_ci',
	`pid` VARCHAR(1024) NULL COLLATE 'utf8_bin',
	`program_name` VARCHAR(1024) NULL COLLATE 'utf8_bin'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.ps_check_lost_instrumentation
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `ps_check_lost_instrumentation` (
	`variable_name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`variable_value` VARCHAR(1024) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para función sys.ps_is_account_enabled
DELIMITER //
CREATE FUNCTION `ps_is_account_enabled`( in_host VARCHAR(60),  in_user VARCHAR(32) ) RETURNS enum('YES','NO') CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Determines whether instrumentation of an account is enabled \n within Performance Schema.\n \n Parameters\n \n in_host VARCHAR(60): \n The hostname of the account to check.\n in_user VARCHAR(32):\n The username of the account to check.\n \n Returns\n \n ENUM(''YES'', ''NO'', ''PARTIAL'')\n \n Example\n \n mysql> SELECT sys.ps_is_account_enabled(''localhost'', ''root'');\n +------------------------------------------------+\n | sys.ps_is_account_enabled(''localhost'', ''root'') |\n +------------------------------------------------+\n | YES                                            |\n +------------------------------------------------+\n 1 row in set (0.01 sec)\n '
BEGIN RETURN IF(EXISTS(SELECT 1 FROM performance_schema.setup_actors WHERE (`HOST` = '%' OR in_host LIKE `HOST`) AND (`USER` = '%' OR `USER` = in_user) AND (`ENABLED` = 'YES') ), 'YES', 'NO' ); END//
DELIMITER ;

-- Volcando estructura para función sys.ps_is_consumer_enabled
DELIMITER //
CREATE FUNCTION `ps_is_consumer_enabled`( in_consumer varchar(64) ) RETURNS enum('YES','NO') CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Determines whether a consumer is enabled (taking the consumer hierarchy into consideration)\n within the Performance Schema.\n \n Parameters\n \n in_consumer VARCHAR(64): \n The name of the consumer to check.\n \n Returns\n \n ENUM(''YES'', ''NO'')\n \n Example\n \n mysql> SELECT sys.ps_is_consumer_enabled(''events_stages_history'');\n +-----------------------------------------------------+\n | sys.ps_is_consumer_enabled(''events_stages_history'') |\n +-----------------------------------------------------+\n | NO                                                  |\n +-----------------------------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN ( SELECT (CASE WHEN c.NAME = 'global_instrumentation' THEN c.ENABLED WHEN c.NAME = 'thread_instrumentation' THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO') WHEN c.NAME LIKE '%\_digest'           THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO') WHEN c.NAME LIKE '%\_current'          THEN IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO') ELSE IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES' AND ( SELECT cc.ENABLED FROM performance_schema.setup_consumers cc WHERE NAME = CONCAT(SUBSTRING_INDEX(c.NAME, '_', 2), '_current') ) = 'YES', 'YES', 'NO') END) AS IsEnabled FROM performance_schema.setup_consumers c INNER JOIN performance_schema.setup_consumers cg INNER JOIN performance_schema.setup_consumers ct WHERE cg.NAME       = 'global_instrumentation' AND ct.NAME   = 'thread_instrumentation' AND c.NAME    = in_consumer ); END//
DELIMITER ;

-- Volcando estructura para función sys.ps_is_instrument_default_enabled
DELIMITER //
CREATE FUNCTION `ps_is_instrument_default_enabled`( in_instrument VARCHAR(128) ) RETURNS enum('YES','NO') CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns whether an instrument is enabled by default in this version of MySQL.\n \n Parameters\n \n in_instrument VARCHAR(128): \n The instrument to check.\n \n Returns\n \n ENUM(''YES'', ''NO'')\n \n Example\n \n mysql> SELECT sys.ps_is_instrument_default_enabled(''statement/sql/select'');\n +--------------------------------------------------------------+\n | sys.ps_is_instrument_default_enabled(''statement/sql/select'') |\n +--------------------------------------------------------------+\n | YES                                                          |\n +--------------------------------------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN DECLARE v_enabled ENUM('YES', 'NO');  SET v_enabled = IF(in_instrument LIKE 'wait/io/file/%' OR in_instrument LIKE 'wait/io/table/%' OR in_instrument LIKE 'statement/%' OR in_instrument LIKE 'memory/performance_schema/%' OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')  OR in_instrument LIKE 'stage/innodb/%' OR in_instrument = 'stage/sql/copy to tmp table'  , 'YES', 'NO' );  RETURN v_enabled; END//
DELIMITER ;

-- Volcando estructura para función sys.ps_is_instrument_default_timed
DELIMITER //
CREATE FUNCTION `ps_is_instrument_default_timed`( in_instrument VARCHAR(128) ) RETURNS enum('YES','NO') CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns whether an instrument is timed by default in this version of MySQL.\n \n Parameters\n \n in_instrument VARCHAR(128): \n The instrument to check.\n \n Returns\n \n ENUM(''YES'', ''NO'')\n \n Example\n \n mysql> SELECT sys.ps_is_instrument_default_timed(''statement/sql/select'');\n +------------------------------------------------------------+\n | sys.ps_is_instrument_default_timed(''statement/sql/select'') |\n +------------------------------------------------------------+\n | YES                                                        |\n +------------------------------------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN DECLARE v_timed ENUM('YES', 'NO');  SET v_timed = IF(in_instrument LIKE 'wait/io/file/%' OR in_instrument LIKE 'wait/io/table/%' OR in_instrument LIKE 'statement/%' OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')  OR in_instrument LIKE 'stage/innodb/%' OR in_instrument = 'stage/sql/copy to tmp table'  , 'YES', 'NO' );  RETURN v_timed; END//
DELIMITER ;

-- Volcando estructura para función sys.ps_is_thread_instrumented
DELIMITER //
CREATE FUNCTION `ps_is_thread_instrumented`( in_connection_id BIGINT UNSIGNED ) RETURNS enum('YES','NO','UNKNOWN') CHARSET utf8
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Checks whether the provided connection id is instrumented within Performance Schema.\n \n Parameters\n \n in_connection_id (BIGINT UNSIGNED):\n The id of the connection to check.\n \n Returns\n \n ENUM(''YES'', ''NO'', ''UNKNOWN'')\n \n Example\n \n mysql> SELECT sys.ps_is_thread_instrumented(CONNECTION_ID());\n +------------------------------------------------+\n | sys.ps_is_thread_instrumented(CONNECTION_ID()) |\n +------------------------------------------------+\n | YES                                            |\n +------------------------------------------------+\n '
BEGIN DECLARE v_enabled ENUM('YES', 'NO', 'UNKNOWN');  IF (in_connection_id IS NULL) THEN RETURN NULL; END IF;  SELECT INSTRUMENTED INTO v_enabled FROM performance_schema.threads  WHERE PROCESSLIST_ID = in_connection_id;  IF (v_enabled IS NULL) THEN RETURN 'UNKNOWN'; ELSE RETURN v_enabled; END IF; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_disable_background_threads
DELIMITER //
CREATE PROCEDURE `ps_setup_disable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Disable all background thread instrumentation within Performance Schema.\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_setup_disable_background_threads();\n +--------------------------------+\n | summary                        |\n +--------------------------------+\n | Disabled 18 background threads |\n +--------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.threads SET instrumented = 'NO' WHERE type = 'BACKGROUND';  SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_disable_consumer
DELIMITER //
CREATE PROCEDURE `ps_setup_disable_consumer`( IN consumer VARCHAR(128) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Disables consumers within Performance Schema \n matching the input pattern.\n \n Parameters\n \n consumer (VARCHAR(128)):\n A LIKE pattern match (using "%consumer%") of consumers to disable\n \n Example\n \n To disable all consumers:\n \n mysql> CALL sys.ps_setup_disable_consumer('''');\n +--------------------------+\n | summary                  |\n +--------------------------+\n | Disabled 15 consumers    |\n +--------------------------+\n 1 row in set (0.02 sec)\n \n To disable just the event_stage consumers:\n \n mysql> CALL sys.ps_setup_disable_comsumers(''stage'');\n +------------------------+\n | summary                |\n +------------------------+\n | Disabled 3 consumers   |\n +------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.setup_consumers SET enabled = 'NO' WHERE name LIKE CONCAT('%', consumer, '%');  SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_disable_instrument
DELIMITER //
CREATE PROCEDURE `ps_setup_disable_instrument`( IN in_pattern VARCHAR(128) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Disables instruments within Performance Schema \n matching the input pattern.\n \n Parameters\n \n in_pattern (VARCHAR(128)):\n A LIKE pattern match (using "%in_pattern%") of events to disable\n \n Example\n \n To disable all mutex instruments:\n \n mysql> CALL sys.ps_setup_disable_instrument(''wait/synch/mutex'');\n +--------------------------+\n | summary                  |\n +--------------------------+\n | Disabled 155 instruments |\n +--------------------------+\n 1 row in set (0.02 sec)\n \n To disable just a specific TCP/IP based network IO instrument:\n \n mysql> CALL sys.ps_setup_disable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n +------------------------+\n | summary                |\n +------------------------+\n | Disabled 1 instruments |\n +------------------------+\n 1 row in set (0.00 sec)\n \n To disable all instruments:\n \n mysql> CALL sys.ps_setup_disable_instrument('''');\n +--------------------------+\n | summary                  |\n +--------------------------+\n | Disabled 547 instruments |\n +--------------------------+\n 1 row in set (0.01 sec)\n '
BEGIN UPDATE performance_schema.setup_instruments SET enabled = 'NO', timed = 'NO' WHERE name LIKE CONCAT('%', in_pattern, '%');  SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_disable_thread
DELIMITER //
CREATE PROCEDURE `ps_setup_disable_thread`( IN in_connection_id BIGINT )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Disable the given connection/thread in Performance Schema.\n \n Parameters\n \n in_connection_id (BIGINT):\n The connection ID (PROCESSLIST_ID from performance_schema.threads\n or the ID shown within SHOW PROCESSLIST)\n \n Example\n \n mysql> CALL sys.ps_setup_disable_thread(3);\n +-------------------+\n | summary           |\n +-------------------+\n | Disabled 1 thread |\n +-------------------+\n 1 row in set (0.01 sec)\n \n To disable the current connection:\n \n mysql> CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n +-------------------+\n | summary           |\n +-------------------+\n | Disabled 1 thread |\n +-------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.threads SET instrumented = 'NO' WHERE processlist_id = in_connection_id;  SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_enable_background_threads
DELIMITER //
CREATE PROCEDURE `ps_setup_enable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Enable all background thread instrumentation within Performance Schema.\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_setup_enable_background_threads();\n +-------------------------------+\n | summary                       |\n +-------------------------------+\n | Enabled 18 background threads |\n +-------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.threads SET instrumented = 'YES' WHERE type = 'BACKGROUND';  SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_enable_consumer
DELIMITER //
CREATE PROCEDURE `ps_setup_enable_consumer`( IN consumer VARCHAR(128) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Enables consumers within Performance Schema \n matching the input pattern.\n \n Parameters\n \n consumer (VARCHAR(128)):\n A LIKE pattern match (using "%consumer%") of consumers to enable\n \n Example\n \n To enable all consumers:\n \n mysql> CALL sys.ps_setup_enable_consumer('''');\n +-------------------------+\n | summary                 |\n +-------------------------+\n | Enabled 10 consumers    |\n +-------------------------+\n 1 row in set (0.02 sec)\n \n Query OK, 0 rows affected (0.02 sec)\n \n To enable just "waits" consumers:\n \n mysql> CALL sys.ps_setup_enable_consumer(''waits'');\n +-----------------------+\n | summary               |\n +-----------------------+\n | Enabled 3 consumers   |\n +-----------------------+\n 1 row in set (0.00 sec)\n \n Query OK, 0 rows affected (0.00 sec)\n '
BEGIN UPDATE performance_schema.setup_consumers SET enabled = 'YES' WHERE name LIKE CONCAT('%', consumer, '%');  SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_enable_instrument
DELIMITER //
CREATE PROCEDURE `ps_setup_enable_instrument`( IN in_pattern VARCHAR(128) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Enables instruments within Performance Schema \n matching the input pattern.\n \n Parameters\n \n in_pattern (VARCHAR(128)):\n A LIKE pattern match (using "%in_pattern%") of events to enable\n \n Example\n \n To enable all mutex instruments:\n \n mysql> CALL sys.ps_setup_enable_instrument(''wait/synch/mutex'');\n +-------------------------+\n | summary                 |\n +-------------------------+\n | Enabled 155 instruments |\n +-------------------------+\n 1 row in set (0.02 sec)\n \n Query OK, 0 rows affected (0.02 sec)\n \n To enable just a specific TCP/IP based network IO instrument:\n \n mysql> CALL sys.ps_setup_enable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n +-----------------------+\n | summary               |\n +-----------------------+\n | Enabled 1 instruments |\n +-----------------------+\n 1 row in set (0.00 sec)\n \n Query OK, 0 rows affected (0.00 sec)\n \n To enable all instruments:\n \n mysql> CALL sys.ps_setup_enable_instrument('''');\n +-------------------------+\n | summary                 |\n +-------------------------+\n | Enabled 547 instruments |\n +-------------------------+\n 1 row in set (0.01 sec)\n \n Query OK, 0 rows affected (0.01 sec)\n '
BEGIN UPDATE performance_schema.setup_instruments SET enabled = 'YES', timed = 'YES' WHERE name LIKE CONCAT('%', in_pattern, '%');  SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_enable_thread
DELIMITER //
CREATE PROCEDURE `ps_setup_enable_thread`( IN in_connection_id BIGINT )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Enable the given connection/thread in Performance Schema.\n \n Parameters\n \n in_connection_id (BIGINT):\n The connection ID (PROCESSLIST_ID from performance_schema.threads\n or the ID shown within SHOW PROCESSLIST)\n \n Example\n \n mysql> CALL sys.ps_setup_enable_thread(3);\n +------------------+\n | summary          |\n +------------------+\n | Enabled 1 thread |\n +------------------+\n 1 row in set (0.01 sec)\n \n To enable the current connection:\n \n mysql> CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n +------------------+\n | summary          |\n +------------------+\n | Enabled 1 thread |\n +------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.threads SET instrumented = 'YES' WHERE processlist_id = in_connection_id;  SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_reload_saved
DELIMITER //
CREATE PROCEDURE `ps_setup_reload_saved`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Reloads a saved Performance Schema configuration,\n so that you can alter the setup for debugging purposes, \n but restore it to a previous state.\n \n Use the companion procedure - ps_setup_save(), to \n save a configuration.\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_setup_save();\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> UPDATE performance_schema.setup_instruments SET enabled = ''YES'', timed = ''YES'';\n Query OK, 547 rows affected (0.40 sec)\n Rows matched: 784  Changed: 547  Warnings: 0\n \n /* Run some tests that need more detailed instrumentation here */\n \n mysql> CALL sys.ps_setup_reload_saved();\n Query OK, 0 rows affected (0.32 sec)\n '
BEGIN DECLARE v_done bool DEFAULT FALSE; DECLARE v_lock_result INT; DECLARE v_lock_used_by BIGINT; DECLARE v_signal_message TEXT; DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN SIGNAL SQLSTATE VALUE '90001' SET MESSAGE_TEXT = 'An error occurred, was sys.ps_setup_save() run before this procedure?'; END;  SET @log_bin := @@sql_log_bin; SET sql_log_bin = 0;  SELECT IS_USED_LOCK('sys.ps_setup_save') INTO v_lock_used_by;  IF (v_lock_used_by != CONNECTION_ID()) THEN SET v_signal_message = CONCAT('The sys.ps_setup_save lock is currently owned by ', v_lock_used_by); SIGNAL SQLSTATE VALUE '90002' SET MESSAGE_TEXT = v_signal_message; END IF;  DELETE FROM performance_schema.setup_actors; INSERT INTO performance_schema.setup_actors SELECT * FROM tmp_setup_actors;  BEGIN DECLARE v_name varchar(64); DECLARE v_enabled enum('YES', 'NO'); DECLARE c_consumers CURSOR FOR SELECT NAME, ENABLED FROM tmp_setup_consumers; DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SET v_done = FALSE; OPEN c_consumers; c_consumers_loop: LOOP FETCH c_consumers INTO v_name, v_enabled; IF v_done THEN LEAVE c_consumers_loop; END IF;  UPDATE performance_schema.setup_consumers SET ENABLED = v_enabled WHERE NAME = v_name; END LOOP; CLOSE c_consumers; END;  UPDATE performance_schema.setup_instruments INNER JOIN tmp_setup_instruments USING (NAME) SET performance_schema.setup_instruments.ENABLED = tmp_setup_instruments.ENABLED, performance_schema.setup_instruments.TIMED   = tmp_setup_instruments.TIMED; BEGIN DECLARE v_thread_id bigint unsigned; DECLARE v_instrumented enum('YES', 'NO'); DECLARE c_threads CURSOR FOR SELECT THREAD_ID, INSTRUMENTED FROM tmp_threads; DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SET v_done = FALSE; OPEN c_threads; c_threads_loop: LOOP FETCH c_threads INTO v_thread_id, v_instrumented; IF v_done THEN LEAVE c_threads_loop; END IF;  UPDATE performance_schema.threads SET INSTRUMENTED = v_instrumented WHERE THREAD_ID = v_thread_id; END LOOP; CLOSE c_threads; END;  UPDATE performance_schema.threads SET INSTRUMENTED = IF(PROCESSLIST_USER IS NOT NULL, sys.ps_is_account_enabled(PROCESSLIST_HOST, PROCESSLIST_USER), 'YES') WHERE THREAD_ID NOT IN (SELECT THREAD_ID FROM tmp_threads);  DROP TEMPORARY TABLE tmp_setup_actors; DROP TEMPORARY TABLE tmp_setup_consumers; DROP TEMPORARY TABLE tmp_setup_instruments; DROP TEMPORARY TABLE tmp_threads;  SELECT RELEASE_LOCK('sys.ps_setup_save') INTO v_lock_result;  SET sql_log_bin = @log_bin;  END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_reset_to_default
DELIMITER //
CREATE PROCEDURE `ps_setup_reset_to_default`( IN in_verbose BOOLEAN )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Resets the Performance Schema setup to the default settings.\n \n Parameters\n \n in_verbose (BOOLEAN):\n Whether to print each setup stage (including the SQL) whilst running.\n \n Example\n \n mysql> CALL sys.ps_setup_reset_to_default(true)\\G\n *************************** 1. row ***************************\n status: Resetting: setup_actors\n DELETE\n FROM performance_schema.setup_actors\n WHERE NOT (HOST = ''%'' AND USER = ''%'' AND ROLE = ''%'')\n 1 row in set (0.00 sec)\n \n *************************** 1. row ***************************\n status: Resetting: setup_actors\n INSERT IGNORE INTO performance_schema.setup_actors\n VALUES (''%'', ''%'', ''%'')\n 1 row in set (0.00 sec)\n ...\n \n mysql> CALL sys.ps_setup_reset_to_default(false)\\G\n Query OK, 0 rows affected (0.00 sec)\n '
BEGIN SET @query = 'DELETE FROM performance_schema.setup_actors WHERE NOT (HOST = ''%'' AND USER = ''%'' AND ROLE = ''%'')';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'INSERT IGNORE INTO performance_schema.setup_actors VALUES (''%'', ''%'', ''%'', ''YES'', ''YES'')';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'UPDATE performance_schema.setup_instruments SET ENABLED = sys.ps_is_instrument_default_enabled(NAME), TIMED   = sys.ps_is_instrument_default_timed(NAME)';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_instruments\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'UPDATE performance_schema.setup_consumers SET ENABLED = IF(NAME IN (''events_statements_current'', ''events_transactions_current'', ''global_instrumentation'', ''thread_instrumentation'', ''statements_digest''), ''YES'', ''NO'')';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_consumers\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'DELETE FROM performance_schema.setup_objects WHERE NOT (OBJECT_TYPE IN (''EVENT'', ''FUNCTION'', ''PROCEDURE'', ''TABLE'', ''TRIGGER'') AND OBJECT_NAME = ''%''  AND (OBJECT_SCHEMA = ''mysql''              AND ENABLED = ''NO''  AND TIMED = ''NO'' ) OR (OBJECT_SCHEMA = ''performance_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' ) OR (OBJECT_SCHEMA = ''information_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' ) OR (OBJECT_SCHEMA = ''%''                  AND ENABLED = ''YES'' AND TIMED = ''YES''))';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'INSERT IGNORE INTO performance_schema.setup_objects VALUES (''EVENT''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''EVENT''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''EVENT''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''EVENT''    , ''%''                 , ''%'', ''YES'', ''YES''), (''FUNCTION'' , ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''FUNCTION'' , ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''FUNCTION'' , ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''FUNCTION'' , ''%''                 , ''%'', ''YES'', ''YES''), (''PROCEDURE'', ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''PROCEDURE'', ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''PROCEDURE'', ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''PROCEDURE'', ''%''                 , ''%'', ''YES'', ''YES''), (''TABLE''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''TABLE''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''TABLE''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''TABLE''    , ''%''                 , ''%'', ''YES'', ''YES''), (''TRIGGER''  , ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''TRIGGER''  , ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''TRIGGER''  , ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''TRIGGER''  , ''%''                 , ''%'', ''YES'', ''YES'')';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'UPDATE performance_schema.threads SET INSTRUMENTED = ''YES''';  IF (in_verbose) THEN SELECT CONCAT('Resetting: threads\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_save
DELIMITER //
CREATE PROCEDURE `ps_setup_save`( IN in_timeout INT )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Saves the current configuration of Performance Schema, \n so that you can alter the setup for debugging purposes, \n but restore it to a previous state.\n \n Use the companion procedure - ps_setup_reload_saved(), to \n restore the saved config.\n \n The named lock "sys.ps_setup_save" is taken before the\n current configuration is saved. If the attempt to get the named\n lock times out, an error occurs.\n \n The lock is released after the settings have been restored by\n calling ps_setup_reload_saved().\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n in_timeout INT\n The timeout in seconds used when trying to obtain the lock.\n A negative timeout means infinite timeout.\n \n Example\n \n mysql> CALL sys.ps_setup_save(-1);\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> UPDATE performance_schema.setup_instruments \n ->    SET enabled = ''YES'', timed = ''YES'';\n Query OK, 547 rows affected (0.40 sec)\n Rows matched: 784  Changed: 547  Warnings: 0\n \n /* Run some tests that need more detailed instrumentation here */\n \n mysql> CALL sys.ps_setup_reload_saved();\n Query OK, 0 rows affected (0.32 sec)\n '
BEGIN DECLARE v_lock_result INT;  SET @log_bin := @@sql_log_bin; SET sql_log_bin = 0;  SELECT GET_LOCK('sys.ps_setup_save', in_timeout) INTO v_lock_result;  IF v_lock_result THEN DROP TEMPORARY TABLE IF EXISTS tmp_setup_actors; DROP TEMPORARY TABLE IF EXISTS tmp_setup_consumers; DROP TEMPORARY TABLE IF EXISTS tmp_setup_instruments; DROP TEMPORARY TABLE IF EXISTS tmp_threads;  CREATE TEMPORARY TABLE tmp_setup_actors LIKE performance_schema.setup_actors; CREATE TEMPORARY TABLE tmp_setup_consumers LIKE performance_schema.setup_consumers; CREATE TEMPORARY TABLE tmp_setup_instruments LIKE performance_schema.setup_instruments; CREATE TEMPORARY TABLE tmp_threads (THREAD_ID bigint unsigned NOT NULL PRIMARY KEY, INSTRUMENTED enum('YES','NO') NOT NULL);  INSERT INTO tmp_setup_actors SELECT * FROM performance_schema.setup_actors; INSERT INTO tmp_setup_consumers SELECT * FROM performance_schema.setup_consumers; INSERT INTO tmp_setup_instruments SELECT * FROM performance_schema.setup_instruments; INSERT INTO tmp_threads SELECT THREAD_ID, INSTRUMENTED FROM performance_schema.threads; ELSE SIGNAL SQLSTATE VALUE '90000' SET MESSAGE_TEXT = 'Could not lock the sys.ps_setup_save user lock, another thread has a saved configuration'; END IF;  SET sql_log_bin = @log_bin; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_show_disabled
DELIMITER //
CREATE PROCEDURE `ps_setup_show_disabled`( IN in_show_instruments BOOLEAN, IN in_show_threads BOOLEAN )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently disable Performance Schema configuration.\n \n Disabled users is only available for MySQL 5.7.6 and later.\n In earlier versions it was only possible to enable users.\n \n Parameters\n \n in_show_instruments (BOOLEAN):\n Whether to print disabled instruments (can print many items)\n \n in_show_threads (BOOLEAN):\n Whether to print disabled threads\n \n Example\n \n mysql> CALL sys.ps_setup_show_disabled(TRUE, TRUE);\n +----------------------------+\n | performance_schema_enabled |\n +----------------------------+\n |                          1 |\n +----------------------------+\n 1 row in set (0.00 sec)\n \n +--------------------+\n | disabled_users     |\n +--------------------+\n | ''mark''@''localhost'' |\n +--------------------+\n 1 row in set (0.00 sec)\n \n +-------------+----------------------+---------+-------+\n | object_type | objects              | enabled | timed |\n +-------------+----------------------+---------+-------+\n | EVENT       | mysql.%              | NO      | NO    |\n | EVENT       | performance_schema.% | NO      | NO    |\n | EVENT       | information_schema.% | NO      | NO    |\n | FUNCTION    | mysql.%              | NO      | NO    |\n | FUNCTION    | performance_schema.% | NO      | NO    |\n | FUNCTION    | information_schema.% | NO      | NO    |\n | PROCEDURE   | mysql.%              | NO      | NO    |\n | PROCEDURE   | performance_schema.% | NO      | NO    |\n | PROCEDURE   | information_schema.% | NO      | NO    |\n | TABLE       | mysql.%              | NO      | NO    |\n | TABLE       | performance_schema.% | NO      | NO    |\n | TABLE       | information_schema.% | NO      | NO    |\n | TRIGGER     | mysql.%              | NO      | NO    |\n | TRIGGER     | performance_schema.% | NO      | NO    |\n | TRIGGER     | information_schema.% | NO      | NO    |\n +-------------+----------------------+---------+-------+\n 15 rows in set (0.00 sec)\n \n +----------------------------------+\n | disabled_consumers               |\n +----------------------------------+\n | events_stages_current            |\n | events_stages_history            |\n | events_stages_history_long       |\n | events_statements_history        |\n | events_statements_history_long   |\n | events_transactions_history      |\n | events_transactions_history_long |\n | events_waits_current             |\n | events_waits_history             |\n | events_waits_history_long        |\n +----------------------------------+\n 10 rows in set (0.00 sec)\n \n Empty set (0.00 sec)\n \n +---------------------------------------------------------------------------------------+-------+\n | disabled_instruments                                                                  | timed |\n +---------------------------------------------------------------------------------------+-------+\n | wait/synch/mutex/sql/TC_LOG_MMAP::LOCK_tc                                             | NO    |\n | wait/synch/mutex/sql/LOCK_des_key_file                                                | NO    |\n | wait/synch/mutex/sql/MYSQL_BIN_LOG::LOCK_commit                                       | NO    |\n ...\n | memory/sql/servers_cache                                                              | NO    |\n | memory/sql/udf_mem                                                                    | NO    |\n | wait/lock/metadata/sql/mdl                                                            | NO    |\n +---------------------------------------------------------------------------------------+-------+\n 547 rows in set (0.00 sec)\n \n Query OK, 0 rows affected (0.01 sec)\n '
BEGIN SELECT @@performance_schema AS performance_schema_enabled;   SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS disabled_users FROM performance_schema.setup_actors WHERE enabled = 'NO' ORDER BY disabled_users;   SELECT object_type, CONCAT(object_schema, '.', object_name) AS objects, enabled, timed FROM performance_schema.setup_objects WHERE enabled = 'NO' ORDER BY object_type, objects;  SELECT name AS disabled_consumers FROM performance_schema.setup_consumers WHERE enabled = 'NO' ORDER BY disabled_consumers;  IF (in_show_threads) THEN SELECT IF(name = 'thread/sql/one_connection',  CONCAT(processlist_user, '@', processlist_host),  REPLACE(name, 'thread/', '')) AS disabled_threads, TYPE AS thread_type FROM performance_schema.threads WHERE INSTRUMENTED = 'NO' ORDER BY disabled_threads; END IF;  IF (in_show_instruments) THEN SELECT name AS disabled_instruments, timed FROM performance_schema.setup_instruments WHERE enabled = 'NO' ORDER BY disabled_instruments; END IF; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_show_disabled_consumers
DELIMITER //
CREATE PROCEDURE `ps_setup_show_disabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently disabled consumers.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_disabled_consumers();\n \n +---------------------------+\n | disabled_consumers        |\n +---------------------------+\n | events_statements_current |\n | global_instrumentation    |\n | thread_instrumentation    |\n | statements_digest         |\n +---------------------------+\n 4 rows in set (0.05 sec)\n '
BEGIN SELECT name AS disabled_consumers FROM performance_schema.setup_consumers WHERE enabled = 'NO' ORDER BY disabled_consumers; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_show_disabled_instruments
DELIMITER //
CREATE PROCEDURE `ps_setup_show_disabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently disabled instruments.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_disabled_instruments();\n '
BEGIN SELECT name AS disabled_instruments, timed FROM performance_schema.setup_instruments WHERE enabled = 'NO' ORDER BY disabled_instruments; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_show_enabled
DELIMITER //
CREATE PROCEDURE `ps_setup_show_enabled`( IN in_show_instruments BOOLEAN, IN in_show_threads BOOLEAN )
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently enabled Performance Schema configuration.\n \n Parameters\n \n in_show_instruments (BOOLEAN):\n Whether to print enabled instruments (can print many items)\n \n in_show_threads (BOOLEAN):\n Whether to print enabled threads\n \n Example\n \n mysql> CALL sys.ps_setup_show_enabled(TRUE, TRUE);\n +----------------------------+\n | performance_schema_enabled |\n +----------------------------+\n |                          1 |\n +----------------------------+\n 1 row in set (0.00 sec)\n \n +---------------+\n | enabled_users |\n +---------------+\n | ''%''@''%''       |\n +---------------+\n 1 row in set (0.01 sec)\n \n +-------------+---------+---------+-------+\n | object_type | objects | enabled | timed |\n +-------------+---------+---------+-------+\n | EVENT       | %.%     | YES     | YES   |\n | FUNCTION    | %.%     | YES     | YES   |\n | PROCEDURE   | %.%     | YES     | YES   |\n | TABLE       | %.%     | YES     | YES   |\n | TRIGGER     | %.%     | YES     | YES   |\n +-------------+---------+---------+-------+\n 5 rows in set (0.01 sec)\n \n +---------------------------+\n | enabled_consumers         |\n +---------------------------+\n | events_statements_current |\n | global_instrumentation    |\n | thread_instrumentation    |\n | statements_digest         |\n +---------------------------+\n 4 rows in set (0.05 sec)\n \n +---------------------------------+-------------+\n | enabled_threads                 | thread_type |\n +---------------------------------+-------------+\n | sql/main                        | BACKGROUND  |\n | sql/thread_timer_notifier       | BACKGROUND  |\n | innodb/io_ibuf_thread           | BACKGROUND  |\n | innodb/io_log_thread            | BACKGROUND  |\n | innodb/io_read_thread           | BACKGROUND  |\n | innodb/io_read_thread           | BACKGROUND  |\n | innodb/io_write_thread          | BACKGROUND  |\n | innodb/io_write_thread          | BACKGROUND  |\n | innodb/page_cleaner_thread      | BACKGROUND  |\n | innodb/srv_lock_timeout_thread  | BACKGROUND  |\n | innodb/srv_error_monitor_thread | BACKGROUND  |\n | innodb/srv_monitor_thread       | BACKGROUND  |\n | innodb/srv_master_thread        | BACKGROUND  |\n | innodb/srv_purge_thread         | BACKGROUND  |\n | innodb/srv_worker_thread        | BACKGROUND  |\n | innodb/srv_worker_thread        | BACKGROUND  |\n | innodb/srv_worker_thread        | BACKGROUND  |\n | innodb/buf_dump_thread          | BACKGROUND  |\n | innodb/dict_stats_thread        | BACKGROUND  |\n | sql/signal_handler              | BACKGROUND  |\n | sql/compress_gtid_table         | FOREGROUND  |\n | root@localhost                  | FOREGROUND  |\n +---------------------------------+-------------+\n 22 rows in set (0.01 sec)\n \n +-------------------------------------+-------+\n | enabled_instruments                 | timed |\n +-------------------------------------+-------+\n | wait/io/file/sql/map                | YES   |\n | wait/io/file/sql/binlog             | YES   |\n ...\n | statement/com/Error                 | YES   |\n | statement/com/                      | YES   |\n | idle                                | YES   |\n +-------------------------------------+-------+\n 210 rows in set (0.08 sec)\n \n Query OK, 0 rows affected (0.89 sec)\n '
BEGIN SELECT @@performance_schema AS performance_schema_enabled;  SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS enabled_users FROM performance_schema.setup_actors  WHERE enabled = 'YES'  ORDER BY enabled_users;  SELECT object_type, CONCAT(object_schema, '.', object_name) AS objects, enabled, timed FROM performance_schema.setup_objects WHERE enabled = 'YES' ORDER BY object_type, objects;  SELECT name AS enabled_consumers FROM performance_schema.setup_consumers WHERE enabled = 'YES' ORDER BY enabled_consumers;  IF (in_show_threads) THEN SELECT IF(name = 'thread/sql/one_connection',  CONCAT(processlist_user, '@', processlist_host),  REPLACE(name, 'thread/', '')) AS enabled_threads, TYPE AS thread_type FROM performance_schema.threads WHERE INSTRUMENTED = 'YES' ORDER BY enabled_threads; END IF;  IF (in_show_instruments) THEN SELECT name AS enabled_instruments, timed FROM performance_schema.setup_instruments WHERE enabled = 'YES' ORDER BY enabled_instruments; END IF; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_show_enabled_consumers
DELIMITER //
CREATE PROCEDURE `ps_setup_show_enabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently enabled consumers.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_enabled_consumers();\n \n +---------------------------+\n | enabled_consumers         |\n +---------------------------+\n | events_statements_current |\n | global_instrumentation    |\n | thread_instrumentation    |\n | statements_digest         |\n +---------------------------+\n 4 rows in set (0.05 sec)\n '
BEGIN SELECT name AS enabled_consumers FROM performance_schema.setup_consumers WHERE enabled = 'YES' ORDER BY enabled_consumers; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_setup_show_enabled_instruments
DELIMITER //
CREATE PROCEDURE `ps_setup_show_enabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently enabled instruments.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_enabled_instruments();\n '
BEGIN SELECT name AS enabled_instruments, timed FROM performance_schema.setup_instruments WHERE enabled = 'YES' ORDER BY enabled_instruments; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_statement_avg_latency_histogram
DELIMITER //
CREATE PROCEDURE `ps_statement_avg_latency_histogram`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Outputs a textual histogram graph of the average latency values\n across all normalized queries tracked within the Performance Schema\n events_statements_summary_by_digest table.\n \n Can be used to show a very high level picture of what kind of \n latency distribution statements running within this instance have.\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_statement_avg_latency_histogram()\\G\n *************************** 1. row ***************************\n Performance Schema Statement Digest Average Latency Histogram:\n \n . = 1 unit\n * = 2 units\n # = 3 units\n \n (0 - 38ms)     240 | ################################################################################\n (38 - 77ms)    38  | ......................................\n (77 - 115ms)   3   | ...\n (115 - 154ms)  62  | *******************************\n (154 - 192ms)  3   | ...\n (192 - 231ms)  0   |\n (231 - 269ms)  0   |\n (269 - 307ms)  0   |\n (307 - 346ms)  0   |\n (346 - 384ms)  1   | .\n (384 - 423ms)  1   | .\n (423 - 461ms)  0   |\n (461 - 499ms)  0   |\n (499 - 538ms)  0   |\n (538 - 576ms)  0   |\n (576 - 615ms)  1   | .\n \n Total Statements: 350; Buckets: 16; Bucket Size: 38 ms;\n '
BEGIN SELECT CONCAT('\n', '\n  . = 1 unit', '\n  * = 2 units', '\n  # = 3 units\n', @label := CONCAT(@label_inner := CONCAT('\n(0 - ', ROUND((@bucket_size := (SELECT ROUND((MAX(avg_us) - MIN(avg_us)) / (@buckets := 16)) AS size FROM sys.x$ps_digest_avg_latency_distribution)) / (@unit_div := 1000)), (@unit := 'ms'), ')'), REPEAT(' ', (@max_label_size := ((1 + LENGTH(ROUND((@bucket_size * 15) / @unit_div)) + 3 + LENGTH(ROUND(@bucket_size * 16) / @unit_div)) + 1)) - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us <= @bucket_size), 0)), REPEAT(' ', (@max_label_len := (@max_label_size + LENGTH((@total_queries := (SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution)))) + 1) - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < (@one_unit := 40), '.', IF(@count_in_bucket < (@two_unit := 80), '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),  @label := CONCAT(@label_inner := CONCAT('\n(', ROUND(@bucket_size / @unit_div), ' - ', ROUND((@bucket_size * 2) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size AND b1.avg_us <= @bucket_size * 2), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 2) / @unit_div), ' - ', ROUND((@bucket_size * 3) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 2 AND b1.avg_us <= @bucket_size * 3), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 3) / @unit_div), ' - ', ROUND((@bucket_size * 4) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 3 AND b1.avg_us <= @bucket_size * 4), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 4) / @unit_div), ' - ', ROUND((@bucket_size * 5) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 4 AND b1.avg_us <= @bucket_size * 5), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 5) / @unit_div), ' - ', ROUND((@bucket_size * 6) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 5 AND b1.avg_us <= @bucket_size * 6), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 6) / @unit_div), ' - ', ROUND((@bucket_size * 7) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 6 AND b1.avg_us <= @bucket_size * 7), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 7) / @unit_div), ' - ', ROUND((@bucket_size * 8) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 7 AND b1.avg_us <= @bucket_size * 8), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 8) / @unit_div), ' - ', ROUND((@bucket_size * 9) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 8 AND b1.avg_us <= @bucket_size * 9), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 9) / @unit_div), ' - ', ROUND((@bucket_size * 10) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 9 AND b1.avg_us <= @bucket_size * 10), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 10) / @unit_div), ' - ', ROUND((@bucket_size * 11) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 10 AND b1.avg_us <= @bucket_size * 11), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 11) / @unit_div), ' - ', ROUND((@bucket_size * 12) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 11 AND b1.avg_us <= @bucket_size * 12), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 12) / @unit_div), ' - ', ROUND((@bucket_size * 13) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 12 AND b1.avg_us <= @bucket_size * 13), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 13) / @unit_div), ' - ', ROUND((@bucket_size * 14) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 13 AND b1.avg_us <= @bucket_size * 14), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 14) / @unit_div), ' - ', ROUND((@bucket_size * 15) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 14 AND b1.avg_us <= @bucket_size * 15), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 15) / @unit_div), ' - ', ROUND((@bucket_size * 16) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 15 AND b1.avg_us <= @bucket_size * 16), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),  '\n\n  Total Statements: ', @total_queries, '; Buckets: ', @buckets , '; Bucket Size: ', ROUND(@bucket_size / @unit_div) , ' ', @unit, ';\n'  ) AS `Performance Schema Statement Digest Average Latency Histogram`;  END//
DELIMITER ;

-- Volcando estructura para función sys.ps_thread_account
DELIMITER //
CREATE FUNCTION `ps_thread_account`( in_thread_id BIGINT UNSIGNED ) RETURNS text CHARSET utf8
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Return the user@host account for the given Performance Schema thread id.\n \n Parameters\n \n in_thread_id (BIGINT UNSIGNED):\n The id of the thread to return the account for.\n \n Example\n \n mysql> select thread_id, processlist_user, processlist_host from performance_schema.threads where type = ''foreground'';\n +-----------+------------------+------------------+\n | thread_id | processlist_user | processlist_host |\n +-----------+------------------+------------------+\n |        23 | NULL             | NULL             |\n |        30 | root             | localhost        |\n |        31 | msandbox         | localhost        |\n |        32 | msandbox         | localhost        |\n +-----------+------------------+------------------+\n 4 rows in set (0.00 sec)\n \n mysql> select sys.ps_thread_account(31);\n +---------------------------+\n | sys.ps_thread_account(31) |\n +---------------------------+\n | msandbox@localhost        |\n +---------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN (SELECT IF( type = 'FOREGROUND', CONCAT(processlist_user, '@', processlist_host), type ) AS account FROM `performance_schema`.`threads` WHERE thread_id = in_thread_id); END//
DELIMITER ;

-- Volcando estructura para función sys.ps_thread_id
DELIMITER //
CREATE FUNCTION `ps_thread_id`( in_connection_id BIGINT UNSIGNED ) RETURNS bigint(20) unsigned
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Return the Performance Schema THREAD_ID for the specified connection ID.\n \n Parameters\n \n in_connection_id (BIGINT UNSIGNED):\n The id of the connection to return the thread id for. If NULL, the current\n connection thread id is returned.\n \n Example\n \n mysql> SELECT sys.ps_thread_id(79);\n +----------------------+\n | sys.ps_thread_id(79) |\n +----------------------+\n |                   98 |\n +----------------------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.ps_thread_id(CONNECTION_ID());\n +-----------------------------------+\n | sys.ps_thread_id(CONNECTION_ID()) |\n +-----------------------------------+\n |                                98 |\n +-----------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN (SELECT THREAD_ID FROM `performance_schema`.`threads` WHERE PROCESSLIST_ID = IFNULL(in_connection_id, CONNECTION_ID()) ); END//
DELIMITER ;

-- Volcando estructura para función sys.ps_thread_stack
DELIMITER //
CREATE FUNCTION `ps_thread_stack`( thd_id BIGINT UNSIGNED, debug BOOLEAN ) RETURNS longtext CHARSET latin1
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Outputs a JSON formatted stack of all statements, stages and events\n within Performance Schema for the specified thread.\n \n Parameters\n \n thd_id (BIGINT UNSIGNED):\n The id of the thread to trace. This should match the thread_id\n column from the performance_schema.threads table.\n in_verbose (BOOLEAN):\n Include file:lineno information in the events.\n \n Example\n \n (line separation added for output)\n \n mysql> SELECT sys.ps_thread_stack(37, FALSE) AS thread_stack\\G\n *************************** 1. row ***************************\n thread_stack: {"rankdir": "LR","nodesep": "0.10","stack_created": "2014-02-19 13:39:03",\n "mysql_version": "5.7.3-m13","mysql_user": "root@localhost","events": \n [{"nesting_event_id": "0", "event_id": "10", "timer_wait": 256.35, "event_info": \n "sql/select", "wait_info": "select @@version_comment limit 1\\nerrors: 0\\nwarnings: 0\\nlock time:\n ...\n '
BEGIN  DECLARE json_objects LONGTEXT;   UPDATE performance_schema.threads SET instrumented = 'NO' WHERE processlist_id = CONNECTION_ID();   SET SESSION group_concat_max_len=@@global.max_allowed_packet;  SELECT GROUP_CONCAT(CONCAT( '{' , CONCAT_WS( ', ' , CONCAT('"nesting_event_id": "', IF(nesting_event_id IS NULL, '0', nesting_event_id), '"') , CONCAT('"event_id": "', event_id, '"') , CONCAT( '"timer_wait": ', ROUND(timer_wait/1000000, 2))   , CONCAT( '"event_info": "' , CASE WHEN event_name NOT LIKE 'wait/io%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -2), '\\', '\\\\') WHEN event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -4), '\\', '\\\\') ELSE event_name END , '"' ) , CONCAT( '"wait_info": "', IFNULL(wait_info, ''), '"') , CONCAT( '"source": "', IF(true AND event_name LIKE 'wait%', IFNULL(wait_info, ''), ''), '"') , CASE  WHEN event_name LIKE 'wait/io/file%'      THEN '"event_type": "io/file"' WHEN event_name LIKE 'wait/io/table%'     THEN '"event_type": "io/table"' WHEN event_name LIKE 'wait/io/socket%'    THEN '"event_type": "io/socket"' WHEN event_name LIKE 'wait/synch/mutex%'  THEN '"event_type": "synch/mutex"' WHEN event_name LIKE 'wait/synch/cond%'   THEN '"event_type": "synch/cond"' WHEN event_name LIKE 'wait/synch/rwlock%' THEN '"event_type": "synch/rwlock"' WHEN event_name LIKE 'wait/lock%'         THEN '"event_type": "lock"' WHEN event_name LIKE 'statement/%'        THEN '"event_type": "stmt"' WHEN event_name LIKE 'stage/%'            THEN '"event_type": "stage"' WHEN event_name LIKE '%idle%'             THEN '"event_type": "idle"' ELSE ''  END                    ) , '}' ) ORDER BY event_id ASC SEPARATOR ',') event INTO json_objects FROM (  (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,  CONCAT(sql_text, '\\n', 'errors: ', errors, '\\n', 'warnings: ', warnings, '\\n', 'lock time: ', ROUND(lock_time/1000000, 2),'us\\n', 'rows affected: ', rows_affected, '\\n', 'rows sent: ', rows_sent, '\\n', 'rows examined: ', rows_examined, '\\n', 'tmp tables: ', created_tmp_tables, '\\n', 'tmp disk tables: ', created_tmp_disk_tables, '\\n', 'select scan: ', select_scan, '\\n', 'select full join: ', select_full_join, '\\n', 'select full range join: ', select_full_range_join, '\\n', 'select range: ', select_range, '\\n', 'select range check: ', select_range_check, '\\n',  'sort merge passes: ', sort_merge_passes, '\\n', 'sort rows: ', sort_rows, '\\n', 'sort range: ', sort_range, '\\n', 'sort scan: ', sort_scan, '\\n', 'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n', 'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n' ) AS wait_info FROM performance_schema.events_statements_history_long WHERE thread_id = thd_id) UNION  (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info FROM performance_schema.events_stages_history_long WHERE thread_id = thd_id)  UNION  (SELECT thread_id, event_id,  CONCAT(event_name ,  IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''),  IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''), IF(event_name LIKE 'wait/io/file%', '\\n', ''), IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''),  IF(object_name IS NOT NULL,  IF (event_name LIKE 'wait/io/socket%', CONCAT(IF (object_name LIKE ':0%', @@socket, object_name)), object_name), ''),  IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''), '\\n' ) AS event_name, timer_wait, timer_start, nesting_event_id, source AS wait_info FROM performance_schema.events_waits_history_long WHERE thread_id = thd_id)) events  ORDER BY event_id;  RETURN CONCAT('{',  CONCAT_WS(',',  '"rankdir": "LR"', '"nodesep": "0.10"', CONCAT('"stack_created": "', NOW(), '"'), CONCAT('"mysql_version": "', VERSION(), '"'), CONCAT('"mysql_user": "', CURRENT_USER(), '"'), CONCAT('"events": [', IFNULL(json_objects,''), ']') ), '}');  END//
DELIMITER ;

-- Volcando estructura para función sys.ps_thread_trx_info
DELIMITER //
CREATE FUNCTION `ps_thread_trx_info`( in_thread_id BIGINT UNSIGNED ) RETURNS longtext CHARSET utf8
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns a JSON object with info on the given threads current transaction, \n and the statements it has already executed, derived from the\n performance_schema.events_transactions_current and\n performance_schema.events_statements_history tables (so the consumers \n for these also have to be enabled within Performance Schema to get full\n data in the object).\n \n When the output exceeds the default truncation length (65535), a JSON error\n object is returned, such as:\n \n { "error": "Trx info truncated: Row 6 was cut by GROUP_CONCAT()" }\n \n Similar error objects are returned for other warnings/and exceptions raised\n when calling the function.\n \n The max length of the output of this function can be controlled with the\n ps_thread_trx_info.max_length variable set via sys_config, or the\n @sys.ps_thread_trx_info.max_length user variable, as appropriate.\n \n Parameters\n \n in_thread_id (BIGINT UNSIGNED):\n The id of the thread to return the transaction info for.\n \n Example\n \n SELECT sys.ps_thread_trx_info(48)\\G\n *************************** 1. row ***************************\n sys.ps_thread_trx_info(48): [\n {\n "time": "790.70 us",\n "state": "COMMITTED",\n "mode": "READ WRITE",\n "autocommitted": "NO",\n "gtid": "AUTOMATIC",\n "isolation": "REPEATABLE READ",\n "statements_executed": [\n {\n "sql_text": "INSERT INTO info VALUES (1, ''foo'')",\n "time": "471.02 us",\n "schema": "trx",\n "rows_examined": 0,\n "rows_affected": 1,\n "rows_sent": 0,\n "tmp_tables": 0,\n "tmp_disk_tables": 0,\n "sort_rows": 0,\n "sort_merge_passes": 0\n },\n {\n "sql_text": "COMMIT",\n "time": "254.42 us",\n "schema": "trx",\n "rows_examined": 0,\n "rows_affected": 0,\n "rows_sent": 0,\n "tmp_tables": 0,\n "tmp_disk_tables": 0,\n "sort_rows": 0,\n "sort_merge_passes": 0\n }\n ]\n },\n {\n "time": "426.20 us",\n "state": "COMMITTED",\n "mode": "READ WRITE",\n "autocommitted": "NO",\n "gtid": "AUTOMATIC",\n "isolation": "REPEATABLE READ",\n "statements_executed": [\n {\n "sql_text": "INSERT INTO info VALUES (2, ''bar'')",\n "time": "107.33 us",\n "schema": "trx",\n "rows_examined": 0,\n "rows_affected": 1,\n "rows_sent": 0,\n "tmp_tables": 0,\n "tmp_disk_tables": 0,\n "sort_rows": 0,\n "sort_merge_passes": 0\n },\n {\n "sql_text": "COMMIT",\n "time": "213.23 us",\n "schema": "trx",\n "rows_examined": 0,\n "rows_affected": 0,\n "rows_sent": 0,\n "tmp_tables": 0,\n "tmp_disk_tables": 0,\n "sort_rows": 0,\n "sort_merge_passes": 0\n }\n ]\n }\n ]\n 1 row in set (0.03 sec)\n '
BEGIN DECLARE v_output LONGTEXT DEFAULT '{}'; DECLARE v_msg_text TEXT DEFAULT ''; DECLARE v_signal_msg TEXT DEFAULT ''; DECLARE v_mysql_errno INT; DECLARE v_max_output_len BIGINT; DECLARE EXIT HANDLER FOR SQLWARNING, SQLEXCEPTION BEGIN GET DIAGNOSTICS CONDITION 1 v_msg_text = MESSAGE_TEXT, v_mysql_errno = MYSQL_ERRNO;  IF v_mysql_errno = 1260 THEN SET v_signal_msg = CONCAT('{ "error": "Trx info truncated: ', v_msg_text, '" }'); ELSE SET v_signal_msg = CONCAT('{ "error": "', v_msg_text, '" }'); END IF;  RETURN v_signal_msg; END;  IF (@sys.ps_thread_trx_info.max_length IS NULL) THEN SET @sys.ps_thread_trx_info.max_length = sys.sys_get_config('ps_thread_trx_info.max_length', 65535); END IF;  IF (@sys.ps_thread_trx_info.max_length != @@session.group_concat_max_len) THEN SET @old_group_concat_max_len = @@session.group_concat_max_len; SET v_max_output_len = (@sys.ps_thread_trx_info.max_length - 5); SET SESSION group_concat_max_len = v_max_output_len; END IF;  SET v_output = ( SELECT CONCAT('[', IFNULL(GROUP_CONCAT(trx_info ORDER BY event_id), ''), '\n]') AS trx_info FROM (SELECT trxi.thread_id,  trxi.event_id, GROUP_CONCAT( IFNULL( CONCAT('\n  {\n', '    "time": "', IFNULL(sys.format_time(trxi.timer_wait), ''), '",\n', '    "state": "', IFNULL(trxi.state, ''), '",\n', '    "mode": "', IFNULL(trxi.access_mode, ''), '",\n', '    "autocommitted": "', IFNULL(trxi.autocommit, ''), '",\n', '    "gtid": "', IFNULL(trxi.gtid, ''), '",\n', '    "isolation": "', IFNULL(trxi.isolation_level, ''), '",\n', '    "statements_executed": [', IFNULL(s.stmts, ''), IF(s.stmts IS NULL, ' ]\n', '\n    ]\n'), '  }' ),  '')  ORDER BY event_id) AS trx_info  FROM ( (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level FROM performance_schema.events_transactions_current WHERE thread_id = in_thread_id AND end_event_id IS NULL) UNION (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level FROM performance_schema.events_transactions_history WHERE thread_id = in_thread_id) ) AS trxi LEFT JOIN (SELECT thread_id, nesting_event_id, GROUP_CONCAT( IFNULL( CONCAT('\n      {\n', '        "sql_text": "', IFNULL(sys.format_statement(REPLACE(sql_text, '\\', '\\\\')), ''), '",\n', '        "time": "', IFNULL(sys.format_time(timer_wait), ''), '",\n', '        "schema": "', IFNULL(current_schema, ''), '",\n', '        "rows_examined": ', IFNULL(rows_examined, ''), ',\n', '        "rows_affected": ', IFNULL(rows_affected, ''), ',\n', '        "rows_sent": ', IFNULL(rows_sent, ''), ',\n', '        "tmp_tables": ', IFNULL(created_tmp_tables, ''), ',\n', '        "tmp_disk_tables": ', IFNULL(created_tmp_disk_tables, ''), ',\n', '        "sort_rows": ', IFNULL(sort_rows, ''), ',\n', '        "sort_merge_passes": ', IFNULL(sort_merge_passes, ''), '\n', '      }'), '') ORDER BY event_id) AS stmts FROM performance_schema.events_statements_history WHERE sql_text IS NOT NULL AND thread_id = in_thread_id GROUP BY thread_id, nesting_event_id ) AS s  ON trxi.thread_id = s.thread_id  AND trxi.event_id = s.nesting_event_id WHERE trxi.thread_id = in_thread_id GROUP BY trxi.thread_id, trxi.event_id ) trxs GROUP BY thread_id );  IF (@old_group_concat_max_len IS NOT NULL) THEN SET SESSION group_concat_max_len = @old_group_concat_max_len; END IF;  RETURN v_output; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_trace_statement_digest
DELIMITER //
CREATE PROCEDURE `ps_trace_statement_digest`( IN in_digest VARCHAR(32), IN in_runtime INT,  IN in_interval DECIMAL(2,2), IN in_start_fresh BOOLEAN, IN in_auto_enable BOOLEAN )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Traces all instrumentation within Performance Schema for a specific\n Statement Digest. \n \n When finding a statement of interest within the \n performance_schema.events_statements_summary_by_digest table, feed\n the DIGEST MD5 value in to this procedure, set how long to poll for, \n and at what interval to poll, and it will generate a report of all \n statistics tracked within Performance Schema for that digest for the\n interval.\n \n It will also attempt to generate an EXPLAIN for the longest running \n example of the digest during the interval. Note this may fail, as:\n \n * Performance Schema truncates long SQL_TEXT values (and hence the \n EXPLAIN will fail due to parse errors)\n * the default schema is sys (so tables that are not fully qualified\n in the query may not be found)\n * some queries such as SHOW are not supported in EXPLAIN.\n \n When the EXPLAIN fails, the error will be ignored and no EXPLAIN\n output generated.\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n in_digest (VARCHAR(32)):\n The statement digest identifier you would like to analyze\n in_runtime (INT):\n The number of seconds to run analysis for\n in_interval (DECIMAL(2,2)):\n The interval (in seconds, may be fractional) at which to try\n and take snapshots\n in_start_fresh (BOOLEAN):\n Whether to TRUNCATE the events_statements_history_long and\n events_stages_history_long tables before starting\n in_auto_enable (BOOLEAN):\n Whether to automatically turn on required consumers\n \n Example\n \n mysql> call ps_trace_statement_digest(''891ec6860f98ba46d89dd20b0c03652c'', 10, 0.1, true, true);\n +--------------------+\n | SUMMARY STATISTICS |\n +--------------------+\n | SUMMARY STATISTICS |\n +--------------------+\n 1 row in set (9.11 sec)\n \n +------------+-----------+-----------+-----------+---------------+------------+------------+\n | executions | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scans |\n +------------+-----------+-----------+-----------+---------------+------------+------------+\n |         21 | 4.11 ms   | 2.00 ms   |         0 |            21 |          0 |          0 |\n +------------+-----------+-----------+-----------+---------------+------------+------------+\n 1 row in set (9.11 sec)\n \n +------------------------------------------+-------+-----------+\n | event_name                               | count | latency   |\n +------------------------------------------+-------+-----------+\n | stage/sql/checking query cache for query |    16 | 724.37 us |\n | stage/sql/statistics                     |    16 | 546.92 us |\n | stage/sql/freeing items                  |    18 | 520.11 us |\n | stage/sql/init                           |    51 | 466.80 us |\n ...\n | stage/sql/cleaning up                    |    18 | 11.92 us  |\n | stage/sql/executing                      |    16 | 6.95 us   |\n +------------------------------------------+-------+-----------+\n 17 rows in set (9.12 sec)\n \n +---------------------------+\n | LONGEST RUNNING STATEMENT |\n +---------------------------+\n | LONGEST RUNNING STATEMENT |\n +---------------------------+\n 1 row in set (9.16 sec)\n \n +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n | thread_id | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scan |\n +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n |    166646 | 618.43 us | 1.00 ms   |         0 |             1 |          0 |         0 |\n +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n 1 row in set (9.16 sec)\n \n // Truncated for clarity...\n +-----------------------------------------------------------------+\n | sql_text                                                        |\n +-----------------------------------------------------------------+\n | select hibeventhe0_.id as id1382_, hibeventhe0_.createdTime ... |\n +-----------------------------------------------------------------+\n 1 row in set (9.17 sec)\n \n +------------------------------------------+-----------+\n | event_name                               | latency   |\n +------------------------------------------+-----------+\n | stage/sql/init                           | 8.61 us   |\n | stage/sql/Waiting for query cache lock   | 453.23 us |\n | stage/sql/init                           | 331.07 ns |\n | stage/sql/checking query cache for query | 43.04 us  |\n ...\n | stage/sql/freeing items                  | 30.46 us  |\n | stage/sql/cleaning up                    | 662.13 ns |\n +------------------------------------------+-----------+\n 18 rows in set (9.23 sec)\n \n +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n | id | select_type | table        | type  | possible_keys | key       | key_len | ref         | rows | Extra |\n +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n |  1 | SIMPLE      | hibeventhe0_ | const | fixedTime     | fixedTime | 775     | const,const |    1 | NULL  |\n +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n 1 row in set (9.27 sec)\n \n Query OK, 0 rows affected (9.28 sec)\n '
BEGIN  DECLARE v_start_fresh BOOLEAN DEFAULT false; DECLARE v_auto_enable BOOLEAN DEFAULT false; DECLARE v_explain     BOOLEAN DEFAULT true; DECLARE v_this_thread_enabed ENUM('YES', 'NO'); DECLARE v_runtime INT DEFAULT 0; DECLARE v_start INT DEFAULT 0; DECLARE v_found_stmts INT;  SET @log_bin := @@sql_log_bin; SET sql_log_bin = 0;  SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID(); CALL sys.ps_setup_disable_thread(CONNECTION_ID());  DROP TEMPORARY TABLE IF EXISTS stmt_trace; CREATE TEMPORARY TABLE stmt_trace ( thread_id BIGINT UNSIGNED, timer_start BIGINT UNSIGNED, event_id BIGINT UNSIGNED, sql_text longtext, timer_wait BIGINT UNSIGNED, lock_time BIGINT UNSIGNED, errors BIGINT UNSIGNED, mysql_errno INT, rows_sent BIGINT UNSIGNED, rows_affected BIGINT UNSIGNED, rows_examined BIGINT UNSIGNED, created_tmp_tables BIGINT UNSIGNED, created_tmp_disk_tables BIGINT UNSIGNED, no_index_used BIGINT UNSIGNED, PRIMARY KEY (thread_id, timer_start) );  DROP TEMPORARY TABLE IF EXISTS stmt_stages; CREATE TEMPORARY TABLE stmt_stages ( event_id BIGINT UNSIGNED, stmt_id BIGINT UNSIGNED, event_name VARCHAR(128), timer_wait BIGINT UNSIGNED, PRIMARY KEY (event_id) );  SET v_start_fresh = in_start_fresh; IF v_start_fresh THEN TRUNCATE TABLE performance_schema.events_statements_history_long; TRUNCATE TABLE performance_schema.events_stages_history_long; END IF;  SET v_auto_enable = in_auto_enable; IF v_auto_enable THEN CALL sys.ps_setup_save(0);  UPDATE performance_schema.threads SET INSTRUMENTED = IF(PROCESSLIST_ID IS NOT NULL, 'YES', 'NO');  UPDATE performance_schema.setup_consumers SET ENABLED = 'YES' WHERE NAME NOT LIKE '%\_history' AND NAME NOT LIKE 'events_wait%' AND NAME NOT LIKE 'events_transactions%' AND NAME <> 'statements_digest';  UPDATE performance_schema.setup_instruments SET ENABLED = 'YES', TIMED   = 'YES' WHERE NAME LIKE 'statement/%' OR NAME LIKE 'stage/%'; END IF;  WHILE v_runtime < in_runtime DO SELECT UNIX_TIMESTAMP() INTO v_start;  INSERT IGNORE INTO stmt_trace SELECT thread_id, timer_start, event_id, sql_text, timer_wait, lock_time, errors, mysql_errno,  rows_sent, rows_affected, rows_examined, created_tmp_tables, created_tmp_disk_tables, no_index_used FROM performance_schema.events_statements_history_long WHERE digest = in_digest;  INSERT IGNORE INTO stmt_stages SELECT stages.event_id, stmt_trace.event_id, stages.event_name, stages.timer_wait FROM performance_schema.events_stages_history_long AS stages JOIN stmt_trace ON stages.nesting_event_id = stmt_trace.event_id;  SELECT SLEEP(in_interval) INTO @sleep; SET v_runtime = v_runtime + (UNIX_TIMESTAMP() - v_start); END WHILE;  SELECT "SUMMARY STATISTICS";  SELECT COUNT(*) executions, sys.format_time(SUM(timer_wait)) AS exec_time, sys.format_time(SUM(lock_time)) AS lock_time, SUM(rows_sent) AS rows_sent, SUM(rows_affected) AS rows_affected, SUM(rows_examined) AS rows_examined, SUM(created_tmp_tables) AS tmp_tables, SUM(no_index_used) AS full_scans FROM stmt_trace;  SELECT event_name, COUNT(*) as count, sys.format_time(SUM(timer_wait)) as latency FROM stmt_stages GROUP BY event_name ORDER BY SUM(timer_wait) DESC;  SELECT "LONGEST RUNNING STATEMENT";  SELECT thread_id, sys.format_time(timer_wait) AS exec_time, sys.format_time(lock_time) AS lock_time, rows_sent, rows_affected, rows_examined, created_tmp_tables AS tmp_tables, no_index_used AS full_scan FROM stmt_trace ORDER BY timer_wait DESC LIMIT 1;  SELECT sql_text FROM stmt_trace ORDER BY timer_wait DESC LIMIT 1;  SELECT sql_text, event_id INTO @sql, @sql_id FROM stmt_trace ORDER BY timer_wait DESC LIMIT 1;  IF (@sql_id IS NOT NULL) THEN SELECT event_name, sys.format_time(timer_wait) as latency FROM stmt_stages WHERE stmt_id = @sql_id ORDER BY event_id; END IF;  DROP TEMPORARY TABLE stmt_trace; DROP TEMPORARY TABLE stmt_stages;  IF (@sql IS NOT NULL) THEN SET @stmt := CONCAT("EXPLAIN FORMAT=JSON ", @sql); BEGIN DECLARE CONTINUE HANDLER FOR 1064, 1146 SET v_explain = false;  PREPARE explain_stmt FROM @stmt; END;  IF (v_explain) THEN EXECUTE explain_stmt; DEALLOCATE PREPARE explain_stmt; END IF; END IF;  IF v_auto_enable THEN CALL sys.ps_setup_reload_saved(); END IF; IF (v_this_thread_enabed = 'YES') THEN CALL sys.ps_setup_enable_thread(CONNECTION_ID()); END IF;  SET sql_log_bin = @log_bin; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_trace_thread
DELIMITER //
CREATE PROCEDURE `ps_trace_thread`( IN in_thread_id BIGINT UNSIGNED, IN in_outfile VARCHAR(255), IN in_max_runtime DECIMAL(20,2), IN in_interval DECIMAL(20,2), IN in_start_fresh BOOLEAN, IN in_auto_setup BOOLEAN, IN in_debug BOOLEAN )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Dumps all data within Performance Schema for an instrumented thread,\n to create a DOT formatted graph file. \n \n Each resultset returned from the procedure should be used for a complete graph\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n in_thread_id (BIGINT UNSIGNED):\n The thread that you would like a stack trace for\n in_outfile  (VARCHAR(255)):\n The filename the dot file will be written to\n in_max_runtime (DECIMAL(20,2)):\n The maximum time to keep collecting data.\n Use NULL to get the default which is 60 seconds.\n in_interval (DECIMAL(20,2)): \n How long to sleep between data collections. \n Use NULL to get the default which is 1 second.\n in_start_fresh (BOOLEAN):\n Whether to reset all Performance Schema data before tracing.\n in_auto_setup (BOOLEAN):\n Whether to disable all other threads and enable all consumers/instruments. \n This will also reset the settings at the end of the run.\n in_debug (BOOLEAN):\n Whether you would like to include file:lineno in the graph\n \n Example\n \n mysql> CALL sys.ps_trace_thread(25, CONCAT(''/tmp/stack-'', REPLACE(NOW(), '' '', ''-''), ''.dot''), NULL, NULL, TRUE, TRUE, TRUE);\n +-------------------+\n | summary           |\n +-------------------+\n | Disabled 1 thread |\n +-------------------+\n 1 row in set (0.00 sec)\n \n +---------------------------------------------+\n | Info                                        |\n +---------------------------------------------+\n | Data collection starting for THREAD_ID = 25 |\n +---------------------------------------------+\n 1 row in set (0.03 sec)\n \n +-----------------------------------------------------------+\n | Info                                                      |\n +-----------------------------------------------------------+\n | Stack trace written to /tmp/stack-2014-02-16-21:18:41.dot |\n +-----------------------------------------------------------+\n 1 row in set (60.07 sec)\n \n +-------------------------------------------------------------------+\n | Convert to PDF                                                    |\n +-------------------------------------------------------------------+\n | dot -Tpdf -o /tmp/stack_25.pdf /tmp/stack-2014-02-16-21:18:41.dot |\n +-------------------------------------------------------------------+\n 1 row in set (60.07 sec)\n \n +-------------------------------------------------------------------+\n | Convert to PNG                                                    |\n +-------------------------------------------------------------------+\n | dot -Tpng -o /tmp/stack_25.png /tmp/stack-2014-02-16-21:18:41.dot |\n +-------------------------------------------------------------------+\n 1 row in set (60.07 sec)\n \n +------------------+\n | summary          |\n +------------------+\n | Enabled 1 thread |\n +------------------+\n 1 row in set (60.32 sec)\n '
BEGIN DECLARE v_done bool DEFAULT FALSE; DECLARE v_start, v_runtime DECIMAL(20,2) DEFAULT 0.0; DECLARE v_min_event_id bigint unsigned DEFAULT 0; DECLARE v_this_thread_enabed ENUM('YES', 'NO'); DECLARE v_event longtext; DECLARE c_stack CURSOR FOR SELECT CONCAT(IF(nesting_event_id IS NOT NULL, CONCAT(nesting_event_id, ' -> '), ''),  event_id, '; ', event_id, ' [label="', '(', sys.format_time(timer_wait), ') ', IF (event_name NOT LIKE 'wait/io%',  SUBSTRING_INDEX(event_name, '/', -2),  IF (event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%', SUBSTRING_INDEX(event_name, '/', -4), event_name) ), IF (event_name LIKE 'transaction', IFNULL(CONCAT('\\n', wait_info), ''), ''), IF (event_name LIKE 'statement/%', IFNULL(CONCAT('\\n', wait_info), ''), ''), IF (in_debug AND event_name LIKE 'wait%', wait_info, ''), '", ',  CASE WHEN event_name LIKE 'wait/io/file%' THEN  'shape=box, style=filled, color=red' WHEN event_name LIKE 'wait/io/table%' THEN  'shape=box, style=filled, color=green' WHEN event_name LIKE 'wait/io/socket%' THEN 'shape=box, style=filled, color=yellow' WHEN event_name LIKE 'wait/synch/mutex%' THEN 'style=filled, color=lightskyblue' WHEN event_name LIKE 'wait/synch/cond%' THEN 'style=filled, color=darkseagreen3' WHEN event_name LIKE 'wait/synch/rwlock%' THEN 'style=filled, color=orchid' WHEN event_name LIKE 'wait/synch/sxlock%' THEN 'style=filled, color=palevioletred'  WHEN event_name LIKE 'wait/lock%' THEN 'shape=box, style=filled, color=tan' WHEN event_name LIKE 'statement/%' THEN CONCAT('shape=box, style=bold', CASE WHEN event_name LIKE 'statement/com/%' THEN ' style=filled, color=darkseagreen' ELSE IF((timer_wait/1000000000000) > @@long_query_time,  ' style=filled, color=red',  ' style=filled, color=lightblue') END ) WHEN event_name LIKE 'transaction' THEN 'shape=box, style=filled, color=lightblue3' WHEN event_name LIKE 'stage/%' THEN 'style=filled, color=slategray3' WHEN event_name LIKE '%idle%' THEN 'shape=box, style=filled, color=firebrick3' ELSE '' END, '];\n' ) event, event_id FROM ( (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, CONCAT('trx_id: ',  IFNULL(trx_id, ''), '\\n', 'gtid: ', IFNULL(gtid, ''), '\\n', 'state: ', state, '\\n', 'mode: ', access_mode, '\\n', 'isolation: ', isolation_level, '\\n', 'autocommit: ', autocommit, '\\n', 'savepoints: ', number_of_savepoints, '\\n' ) AS wait_info FROM performance_schema.events_transactions_history_long WHERE thread_id = in_thread_id AND event_id > v_min_event_id) UNION (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,  CONCAT('statement: ', sql_text, '\\n', 'errors: ', errors, '\\n', 'warnings: ', warnings, '\\n', 'lock time: ', sys.format_time(lock_time),'\\n', 'rows affected: ', rows_affected, '\\n', 'rows sent: ', rows_sent, '\\n', 'rows examined: ', rows_examined, '\\n', 'tmp tables: ', created_tmp_tables, '\\n', 'tmp disk tables: ', created_tmp_disk_tables, '\\n' 'select scan: ', select_scan, '\\n', 'select full join: ', select_full_join, '\\n', 'select full range join: ', select_full_range_join, '\\n', 'select range: ', select_range, '\\n', 'select range check: ', select_range_check, '\\n',  'sort merge passes: ', sort_merge_passes, '\\n', 'sort rows: ', sort_rows, '\\n', 'sort range: ', sort_range, '\\n', 'sort scan: ', sort_scan, '\\n', 'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n', 'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n' ) AS wait_info FROM performance_schema.events_statements_history_long WHERE thread_id = in_thread_id AND event_id > v_min_event_id) UNION (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info FROM performance_schema.events_stages_history_long  WHERE thread_id = in_thread_id AND event_id > v_min_event_id) UNION  (SELECT thread_id, event_id,  CONCAT(event_name,  IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''),  IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''), IF(event_name LIKE 'wait/io/file%', '\\n', ''), IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''),  IF(object_name IS NOT NULL,  IF (event_name LIKE 'wait/io/socket%', CONCAT('\\n', IF (object_name LIKE ':0%', @@socket, object_name)), object_name), '' ), IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''), '\\n' ) AS event_name, timer_wait, timer_start, nesting_event_id, source AS wait_info FROM performance_schema.events_waits_history_long WHERE thread_id = in_thread_id AND event_id > v_min_event_id) ) events  ORDER BY event_id; DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SET @log_bin := @@sql_log_bin; SET sql_log_bin = 0;  SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID(); CALL sys.ps_setup_disable_thread(CONNECTION_ID());  IF (in_auto_setup) THEN CALL sys.ps_setup_save(0);  DELETE FROM performance_schema.setup_actors;  UPDATE performance_schema.threads SET INSTRUMENTED = IF(THREAD_ID = in_thread_id, 'YES', 'NO');  UPDATE performance_schema.setup_consumers SET ENABLED = 'YES' WHERE NAME NOT LIKE '%\_history';  UPDATE performance_schema.setup_instruments SET ENABLED = 'YES', TIMED   = 'YES'; END IF;  IF (in_start_fresh) THEN TRUNCATE performance_schema.events_transactions_history_long; TRUNCATE performance_schema.events_statements_history_long; TRUNCATE performance_schema.events_stages_history_long; TRUNCATE performance_schema.events_waits_history_long; END IF;  DROP TEMPORARY TABLE IF EXISTS tmp_events; CREATE TEMPORARY TABLE tmp_events ( event_id bigint unsigned NOT NULL, event longblob, PRIMARY KEY (event_id) );  INSERT INTO tmp_events VALUES (0, CONCAT('digraph events { rankdir=LR; nodesep=0.10;\n', '// Stack created .....: ', NOW(), '\n', '// MySQL version .....: ', VERSION(), '\n', '// MySQL hostname ....: ', @@hostname, '\n', '// MySQL port ........: ', @@port, '\n', '// MySQL socket ......: ', @@socket, '\n', '// MySQL user ........: ', CURRENT_USER(), '\n'));  SELECT CONCAT('Data collection starting for THREAD_ID = ', in_thread_id) AS 'Info';  SET v_min_event_id = 0, v_start        = UNIX_TIMESTAMP(), in_interval    = IFNULL(in_interval, 1.00), in_max_runtime = IFNULL(in_max_runtime, 60.00);  WHILE (v_runtime < in_max_runtime AND (SELECT INSTRUMENTED FROM performance_schema.threads WHERE THREAD_ID = in_thread_id) = 'YES') DO SET v_done = FALSE; OPEN c_stack; c_stack_loop: LOOP FETCH c_stack INTO v_event, v_min_event_id; IF v_done THEN LEAVE c_stack_loop; END IF;  IF (LENGTH(v_event) > 0) THEN INSERT INTO tmp_events VALUES (v_min_event_id, v_event); END IF; END LOOP; CLOSE c_stack;  SELECT SLEEP(in_interval) INTO @sleep; SET v_runtime = (UNIX_TIMESTAMP() - v_start); END WHILE;  INSERT INTO tmp_events VALUES (v_min_event_id+1, '}');  SET @query = CONCAT('SELECT event FROM tmp_events ORDER BY event_id INTO OUTFILE ''', in_outfile, ''' FIELDS ESCAPED BY '''' LINES TERMINATED BY '''''); PREPARE stmt_output FROM @query; EXECUTE stmt_output; DEALLOCATE PREPARE stmt_output;  SELECT CONCAT('Stack trace written to ', in_outfile) AS 'Info'; SELECT CONCAT('dot -Tpdf -o /tmp/stack_', in_thread_id, '.pdf ', in_outfile) AS 'Convert to PDF'; SELECT CONCAT('dot -Tpng -o /tmp/stack_', in_thread_id, '.png ', in_outfile) AS 'Convert to PNG'; DROP TEMPORARY TABLE tmp_events;  IF (in_auto_setup) THEN CALL sys.ps_setup_reload_saved(); END IF; IF (v_this_thread_enabed = 'YES') THEN CALL sys.ps_setup_enable_thread(CONNECTION_ID()); END IF;  SET sql_log_bin = @log_bin; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.ps_truncate_all_tables
DELIMITER //
CREATE PROCEDURE `ps_truncate_all_tables`( IN in_verbose BOOLEAN )
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Truncates all summary tables within Performance Schema, \n resetting all aggregated instrumentation as a snapshot.\n \n Parameters\n \n in_verbose (BOOLEAN):\n Whether to print each TRUNCATE statement before running\n \n Example\n \n mysql> CALL sys.ps_truncate_all_tables(false);\n +---------------------+\n | summary             |\n +---------------------+\n | Truncated 44 tables |\n +---------------------+\n 1 row in set (0.10 sec)\n \n Query OK, 0 rows affected (0.10 sec)\n '
BEGIN DECLARE v_done INT DEFAULT FALSE; DECLARE v_total_tables INT DEFAULT 0; DECLARE v_ps_table VARCHAR(64); DECLARE ps_tables CURSOR FOR SELECT table_name  FROM INFORMATION_SCHEMA.TABLES  WHERE table_schema = 'performance_schema'  AND (table_name LIKE '%summary%'  OR table_name LIKE '%history%'); DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  OPEN ps_tables;  ps_tables_loop: LOOP FETCH ps_tables INTO v_ps_table; IF v_done THEN LEAVE ps_tables_loop; END IF;  SET @truncate_stmt := CONCAT('TRUNCATE TABLE performance_schema.', v_ps_table); IF in_verbose THEN SELECT CONCAT('Running: ', @truncate_stmt) AS status; END IF;  PREPARE truncate_stmt FROM @truncate_stmt; EXECUTE truncate_stmt; DEALLOCATE PREPARE truncate_stmt;  SET v_total_tables = v_total_tables + 1; END LOOP;  CLOSE ps_tables;  SELECT CONCAT('Truncated ', v_total_tables, ' tables') AS summary;  END//
DELIMITER ;

-- Volcando estructura para función sys.quote_identifier
DELIMITER //
CREATE FUNCTION `quote_identifier`(in_identifier TEXT) RETURNS text CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes an unquoted identifier (schema name, table name, etc.) and\n returns the identifier quoted with backticks.\n \n Parameters\n \n in_identifier (TEXT):\n The identifier to quote.\n \n Returns\n \n TEXT\n \n Example\n \n mysql> SELECT sys.quote_identifier(''my_identifier'') AS Identifier;\n +-----------------+\n | Identifier      |\n +-----------------+\n | `my_identifier` |\n +-----------------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.quote_identifier(''my`idenfier'') AS Identifier;\n +----------------+\n | Identifier     |\n +----------------+\n | `my``idenfier` |\n +----------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN CONCAT('`', REPLACE(in_identifier, '`', '``'), '`'); END//
DELIMITER ;

-- Volcando estructura para vista sys.schema_auto_increment_columns
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `schema_auto_increment_columns` (
	`table_schema` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`column_name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`data_type` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`column_type` LONGTEXT NOT NULL COLLATE 'utf8_general_ci',
	`is_signed` INT(1) NOT NULL,
	`is_unsigned` INT(1) NOT NULL,
	`max_value` BIGINT(21) UNSIGNED NULL,
	`auto_increment` BIGINT(21) UNSIGNED NULL,
	`auto_increment_ratio` DECIMAL(25,4) UNSIGNED NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.schema_index_statistics
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `schema_index_statistics` (
	`table_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`index_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`rows_selected` BIGINT(20) UNSIGNED NOT NULL,
	`select_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL,
	`insert_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL,
	`update_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL,
	`delete_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.schema_object_overview
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `schema_object_overview` (
	`db` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`object_type` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.schema_redundant_indexes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `schema_redundant_indexes` (
	`table_schema` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`redundant_index_name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`redundant_index_columns` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`redundant_index_non_unique` BIGINT(1) NULL,
	`dominant_index_name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`dominant_index_columns` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`dominant_index_non_unique` BIGINT(1) NULL,
	`subpart_exists` INT(1) NOT NULL,
	`sql_drop_index` VARCHAR(223) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.schema_tables_with_full_table_scans
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `schema_tables_with_full_table_scans` (
	`object_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`object_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`rows_full_scanned` BIGINT(20) UNSIGNED NOT NULL,
	`latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.schema_table_lock_waits
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `schema_table_lock_waits` (
	`object_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`object_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`waiting_thread_id` BIGINT(20) UNSIGNED NOT NULL,
	`waiting_pid` BIGINT(20) UNSIGNED NULL,
	`waiting_account` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`waiting_lock_type` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_lock_duration` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`waiting_query_secs` BIGINT(20) NULL,
	`waiting_query_rows_affected` BIGINT(20) UNSIGNED NULL,
	`waiting_query_rows_examined` BIGINT(20) UNSIGNED NULL,
	`blocking_thread_id` BIGINT(20) UNSIGNED NOT NULL,
	`blocking_pid` BIGINT(20) UNSIGNED NULL,
	`blocking_account` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`blocking_lock_type` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_lock_duration` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`sql_kill_blocking_query` VARCHAR(31) NULL COLLATE 'utf8_general_ci',
	`sql_kill_blocking_connection` VARCHAR(25) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.schema_table_statistics
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `schema_table_statistics` (
	`table_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_fetched` BIGINT(20) UNSIGNED NOT NULL,
	`fetch_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL,
	`insert_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL,
	`update_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL,
	`delete_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_read_requests` DECIMAL(42,0) NULL,
	`io_read` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_read_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_write_requests` DECIMAL(42,0) NULL,
	`io_write` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_write_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_misc_requests` DECIMAL(42,0) NULL,
	`io_misc_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.schema_table_statistics_with_buffer
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `schema_table_statistics_with_buffer` (
	`table_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`rows_fetched` BIGINT(20) UNSIGNED NOT NULL,
	`fetch_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL,
	`insert_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL,
	`update_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL,
	`delete_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_read_requests` DECIMAL(42,0) NULL,
	`io_read` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_read_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_write_requests` DECIMAL(42,0) NULL,
	`io_write` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_write_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`io_misc_requests` DECIMAL(42,0) NULL,
	`io_misc_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`innodb_buffer_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`innodb_buffer_data` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`innodb_buffer_free` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`innodb_buffer_pages` BIGINT(21) NULL,
	`innodb_buffer_pages_hashed` BIGINT(21) NULL,
	`innodb_buffer_pages_old` BIGINT(21) NULL,
	`innodb_buffer_rows_cached` DECIMAL(44,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.schema_unused_indexes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `schema_unused_indexes` (
	`object_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`object_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`index_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.session
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `session` (
	`thd_id` BIGINT(20) UNSIGNED NOT NULL,
	`conn_id` BIGINT(20) UNSIGNED NULL,
	`user` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`command` VARCHAR(16) NULL COLLATE 'utf8_general_ci',
	`state` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`time` BIGINT(20) NULL,
	`current_statement` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`statement_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`progress` DECIMAL(26,2) NULL,
	`lock_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_examined` BIGINT(20) UNSIGNED NULL,
	`rows_sent` BIGINT(20) UNSIGNED NULL,
	`rows_affected` BIGINT(20) UNSIGNED NULL,
	`tmp_tables` BIGINT(20) UNSIGNED NULL,
	`tmp_disk_tables` BIGINT(20) UNSIGNED NULL,
	`full_scan` VARCHAR(3) NOT NULL COLLATE 'utf8_general_ci',
	`last_statement` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`last_statement_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_memory` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`last_wait` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`last_wait_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`source` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`trx_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`trx_state` ENUM('ACTIVE','COMMITTED','ROLLED BACK') NULL COLLATE 'utf8_general_ci',
	`trx_autocommit` ENUM('YES','NO') NULL COLLATE 'utf8_general_ci',
	`pid` VARCHAR(1024) NULL COLLATE 'utf8_bin',
	`program_name` VARCHAR(1024) NULL COLLATE 'utf8_bin'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.session_ssl_status
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `session_ssl_status` (
	`thread_id` BIGINT(20) UNSIGNED NOT NULL,
	`ssl_version` VARCHAR(1024) NULL COLLATE 'utf8_general_ci',
	`ssl_cipher` VARCHAR(1024) NULL COLLATE 'utf8_general_ci',
	`ssl_sessions_reused` VARCHAR(1024) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.statements_with_errors_or_warnings
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `statements_with_errors_or_warnings` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`errors` BIGINT(20) UNSIGNED NOT NULL,
	`error_pct` DECIMAL(27,4) NOT NULL,
	`warnings` BIGINT(20) UNSIGNED NOT NULL,
	`warning_pct` DECIMAL(27,4) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.statements_with_full_table_scans
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `statements_with_full_table_scans` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`no_index_used_count` BIGINT(20) UNSIGNED NOT NULL,
	`no_good_index_used_count` BIGINT(20) UNSIGNED NOT NULL,
	`no_index_used_pct` DECIMAL(24,0) NOT NULL,
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent_avg` DECIMAL(21,0) UNSIGNED NULL,
	`rows_examined_avg` DECIMAL(21,0) UNSIGNED NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.statements_with_runtimes_in_95th_percentile
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `statements_with_runtimes_in_95th_percentile` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`full_scan` VARCHAR(1) NOT NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`err_count` BIGINT(20) UNSIGNED NOT NULL,
	`warn_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent_avg` DECIMAL(21,0) NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined_avg` DECIMAL(21,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.statements_with_sorting
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `statements_with_sorting` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`sort_merge_passes` BIGINT(20) UNSIGNED NOT NULL,
	`avg_sort_merges` DECIMAL(21,0) NOT NULL,
	`sorts_using_scans` BIGINT(20) UNSIGNED NOT NULL,
	`sort_using_range` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sorted` BIGINT(20) UNSIGNED NOT NULL,
	`avg_rows_sorted` DECIMAL(21,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.statements_with_temp_tables
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `statements_with_temp_tables` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`memory_tmp_tables` BIGINT(20) UNSIGNED NOT NULL,
	`disk_tmp_tables` BIGINT(20) UNSIGNED NOT NULL,
	`avg_tmp_tables_per_query` DECIMAL(21,0) NOT NULL,
	`tmp_tables_to_disk_pct` DECIMAL(24,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.statement_analysis
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `statement_analysis` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`full_scan` VARCHAR(1) NOT NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`err_count` BIGINT(20) UNSIGNED NOT NULL,
	`warn_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`lock_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent_avg` DECIMAL(21,0) NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined_avg` DECIMAL(21,0) NOT NULL,
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL,
	`rows_affected_avg` DECIMAL(21,0) NOT NULL,
	`tmp_tables` BIGINT(20) UNSIGNED NOT NULL,
	`tmp_disk_tables` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sorted` BIGINT(20) UNSIGNED NOT NULL,
	`sort_merge_passes` BIGINT(20) UNSIGNED NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para procedimiento sys.statement_performance_analyzer
DELIMITER //
CREATE PROCEDURE `statement_performance_analyzer`( IN in_action ENUM('snapshot', 'overall', 'delta', 'create_table', 'create_tmp', 'save', 'cleanup'), IN in_table VARCHAR(129), IN in_views SET ('with_runtimes_in_95th_percentile', 'analysis', 'with_errors_or_warnings', 'with_full_table_scans', 'with_sorting', 'with_temp_tables', 'custom') )
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Create a report of the statements running on the server.\n \n The views are calculated based on the overall and/or delta activity.\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n in_action (ENUM(''snapshot'', ''overall'', ''delta'', ''create_tmp'', ''create_table'', ''save'', ''cleanup'')):\n The action to take. Supported actions are:\n * snapshot      Store a snapshot. The default is to make a snapshot of the current content of\n performance_schema.events_statements_summary_by_digest, but by setting in_table\n this can be overwritten to copy the content of the specified table.\n The snapshot is stored in the sys.tmp_digests temporary table.\n * overall       Generate analyzis based on the content specified by in_table. For the overall analyzis,\n in_table can be NOW() to use a fresh snapshot. This will overwrite an existing snapshot.\n Use NULL for in_table to use the existing snapshot. If in_table IS NULL and no snapshot\n exists, a new will be created.\n See also in_views and @sys.statement_performance_analyzer.limit.\n * delta         Generate a delta analysis. The delta will be calculated between the reference table in\n in_table and the snapshot. An existing snapshot must exist.\n The action uses the sys.tmp_digests_delta temporary table.\n See also in_views and @sys.statement_performance_analyzer.limit.\n * create_table  Create a regular table suitable for storing the snapshot for later use, e.g. for\n calculating deltas.\n * create_tmp    Create a temporary table suitable for storing the snapshot for later use, e.g. for\n calculating deltas.\n * save          Save the snapshot in the table specified by in_table. The table must exists and have\n the correct structure.\n If no snapshot exists, a new is created.\n * cleanup       Remove the temporary tables used for the snapshot and delta.\n \n in_table (VARCHAR(129)):\n The table argument used for some actions. Use the format ''db1.t1'' or ''t1'' without using any backticks (`)\n for quoting. Periods (.) are not supported in the database and table names.\n \n The meaning of the table for each action supporting the argument is:\n \n * snapshot      The snapshot is created based on the specified table. Set to NULL or NOW() to use\n the current content of performance_schema.events_statements_summary_by_digest.\n * overall       The table with the content to create the overall analyzis for. The following values\n can be used:\n - A table name - use the content of that table.\n - NOW()        - create a fresh snapshot and overwrite the existing snapshot.\n - NULL         - use the last stored snapshot.\n * delta         The table name is mandatory and specified the reference view to compare the currently\n stored snapshot against. If no snapshot exists, a new will be created.\n * create_table  The name of the regular table to create.\n * create_tmp    The name of the temporary table to create.\n * save          The name of the table to save the currently stored snapshot into.\n \n in_views (SET (''with_runtimes_in_95th_percentile'', ''analysis'', ''with_errors_or_warnings'',\n ''with_full_table_scans'', ''with_sorting'', ''with_temp_tables'', ''custom''))\n Which views to include:  * with_runtimes_in_95th_percentile  Based on the sys.statements_with_runtimes_in_95th_percentile view * analysis                          Based on the sys.statement_analysis view * with_errors_or_warnings           Based on the sys.statements_with_errors_or_warnings view * with_full_table_scans             Based on the sys.statements_with_full_table_scans view * with_sorting                      Based on the sys.statements_with_sorting view * with_temp_tables                  Based on the sys.statements_with_temp_tables view * custom                            Use a custom view. This view must be specified in @sys.statement_performance_analyzer.view to an existing view or a query  Default is to include all except ''custom''.   Configuration Options  sys.statement_performance_analyzer.limit The maximum number of rows to include for the views that does not have a built-in limit (e.g. the 95th percentile view). If not set the limit is 100.  sys.statement_performance_analyzer.view Used together with the ''custom'' view. If the value contains a space, it is considered a query, otherwise it must be an existing view querying the performance_schema.events_statements_summary_by_digest table. There cannot be any limit clause including in the query or view definition if @sys.statement_performance_analyzer.limit > 0. If specifying a view, use the same format as for in_table.  sys.debug Whether to provide debugging output. Default is ''OFF''. Set to ''ON'' to include.   Example  To create a report with the queries in the 95th percentile since last truncate of performance_schema.events_statements_summary_by_digest and the delta for a 1 minute period:  1. Create a temporary table to store the initial snapshot. 2. Create the initial snapshot. 3. Save the initial snapshot in the temporary table. 4. Wait one minute. 5. Create a new snapshot. 6. Perform analyzis based on the new snapshot. 7. Perform analyzis based on the delta between the initial and new snapshots.  mysql> CALL sys.statement_performance_analyzer(''create_tmp'', ''mydb.tmp_digests_ini'', NULL); Query OK, 0 rows affected (0.08 sec)  mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL); Query OK, 0 rows affected (0.02 sec)  mysql> CALL sys.statement_performance_analyzer(''save'', ''mydb.tmp_digests_ini'', NULL); Query OK, 0 rows affected (0.00 sec)  mysql> DO SLEEP(60); Query OK, 0 rows affected (1 min 0.00 sec)  mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL); Query OK, 0 rows affected (0.02 sec)  mysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile''); +-----------------------------------------+ | Next Output                             | +-----------------------------------------+ | Queries with Runtime in 95th Percentile | +-----------------------------------------+ 1 row in set (0.05 sec)  ...  mysql> CALL sys.statement_performance_analyzer(''delta'', ''mydb.tmp_digests_ini'', ''with_runtimes_in_95th_percentile''); +-----------------------------------------+ | Next Output                             | +-----------------------------------------+ | Queries with Runtime in 95th Percentile | +-----------------------------------------+ 1 row in set (0.03 sec)  ...   To create an overall report of the 95th percentile queries and the top 10 queries with full table scans:  mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL); Query OK, 0 rows affected (0.01 sec)                                     mysql> SET @sys.statement_performance_analyzer.limit = 10; Query OK, 0 rows affected (0.00 sec)            mysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile,with_full_table_scans''); +-----------------------------------------+ | Next Output                             | +-----------------------------------------+ | Queries with Runtime in 95th Percentile | +-----------------------------------------+ 1 row in set (0.01 sec)  ...  +-------------------------------------+ | Next Output                         | +-------------------------------------+ | Top 10 Queries with Full Table Scan | +-------------------------------------+ 1 row in set (0.09 sec)  ...   Use a custom view showing the top 10 query sorted by total execution time refreshing the view every minute using the watch command in Linux.  mysql> CREATE OR REPLACE VIEW mydb.my_statements AS -> SELECT sys.format_statement(DIGEST_TEXT) AS query, ->        SCHEMA_NAME AS db, ->        COUNT_STAR AS exec_count, ->        sys.format_time(SUM_TIMER_WAIT) AS total_latency, ->        sys.format_time(AVG_TIMER_WAIT) AS avg_latency, ->        ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg, ->        ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0)) AS rows_examined_avg, ->        ROUND(IFNULL(SUM_ROWS_AFFECTED / NULLIF(COUNT_STAR, 0), 0)) AS rows_affected_avg, ->        DIGEST AS digest ->   FROM performance_schema.events_statements_summary_by_digest -> ORDER BY SUM_TIMER_WAIT DESC; Query OK, 0 rows affected (0.01 sec)  mysql> CALL sys.statement_performance_analyzer(''create_table'', ''mydb.digests_prev'', NULL); Query OK, 0 rows affected (0.10 sec)  shell$ watch -n 60 "mysql sys --table -e " > SET @sys.statement_performance_analyzer.view = ''mydb.my_statements''; > SET @sys.statement_performance_analyzer.limit = 10; > CALL statement_performance_analyzer(''snapshot'', NULL, NULL); > CALL statement_performance_analyzer(''delta'', ''mydb.digests_prev'', ''custom''); > CALL statement_performance_analyzer(''save'', ''mydb.digests_prev'', NULL); > ""  Every 60.0s: mysql sys --table -e "                                                                                                   ...  Mon Dec 22 10:58:51 2014  +----------------------------------+ | Next Output                      | +----------------------------------+ | Top 10 Queries Using Custom View | +----------------------------------+ +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+ | query             | db    | exec_count | total_latency | avg_latency | rows_sent_avg | rows_examined_avg | rows_affected_avg | digest                           | +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+ ... '
BEGIN DECLARE v_table_exists, v_tmp_digests_table_exists, v_custom_view_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY') DEFAULT ''; DECLARE v_this_thread_enabled ENUM('YES', 'NO'); DECLARE v_force_new_snapshot BOOLEAN DEFAULT FALSE; DECLARE v_digests_table VARCHAR(133); DECLARE v_quoted_table, v_quoted_custom_view VARCHAR(133) DEFAULT ''; DECLARE v_table_db, v_table_name, v_custom_db, v_custom_name VARCHAR(64); DECLARE v_digest_table_template, v_checksum_ref, v_checksum_table text; DECLARE v_sql longtext; DECLARE v_error_msg VARCHAR(128);   SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID(); IF (v_this_thread_enabled = 'YES') THEN CALL sys.ps_setup_disable_thread(CONNECTION_ID()); END IF;  SET @log_bin := @@sql_log_bin; IF (@log_bin = 1) THEN SET sql_log_bin = 0; END IF;   IF (@sys.statement_performance_analyzer.limit IS NULL) THEN SET @sys.statement_performance_analyzer.limit = sys.sys_get_config('statement_performance_analyzer.limit', '100'); END IF; IF (@sys.debug IS NULL) THEN SET @sys.debug                                = sys.sys_get_config('debug'                               , 'OFF'); END IF;   IF (in_table = 'NOW()') THEN SET v_force_new_snapshot = TRUE, in_table             = NULL; ELSEIF (in_table IS NOT NULL) THEN IF (NOT INSTR(in_table, '.')) THEN SET v_table_db   = DATABASE(), v_table_name = in_table; ELSE SET v_table_db   = SUBSTRING_INDEX(in_table, '.', 1); SET v_table_name = SUBSTRING(in_table, CHAR_LENGTH(v_table_db)+2); END IF;  SET v_quoted_table = CONCAT('`', v_table_db, '`.`', v_table_name, '`');  IF (@sys.debug = 'ON') THEN SELECT CONCAT('in_table is: db = ''', v_table_db, ''', table = ''', v_table_name, '''') AS 'Debug'; END IF;  IF (v_table_db = DATABASE() AND (v_table_name = 'tmp_digests' OR v_table_name = 'tmp_digests_delta')) THEN SET v_error_msg = CONCAT('Invalid value for in_table: ', v_quoted_table, ' is reserved table name.'); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF;  CALL sys.table_exists(v_table_db, v_table_name, v_table_exists); IF (@sys.debug = 'ON') THEN SELECT CONCAT('v_table_exists = ', v_table_exists) AS 'Debug'; END IF;  IF (v_table_exists = 'BASE TABLE') THEN SET v_checksum_ref = ( SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'events_statements_summary_by_digest' ), v_checksum_table = ( SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = v_table_db AND TABLE_NAME = v_table_name );  IF (v_checksum_ref <> v_checksum_table) THEN SET v_error_msg = CONCAT('The table ', IF(CHAR_LENGTH(v_quoted_table) > 93, CONCAT('...', SUBSTRING(v_quoted_table, -90)), v_quoted_table), ' has the wrong definition.'); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF; END IF; END IF;   IF (in_views IS NULL OR in_views = '') THEN SET in_views = 'with_runtimes_in_95th_percentile,analysis,with_errors_or_warnings,with_full_table_scans,with_sorting,with_temp_tables'; END IF;   CALL sys.table_exists(DATABASE(), 'tmp_digests', v_tmp_digests_table_exists); IF (@sys.debug = 'ON') THEN SELECT CONCAT('v_tmp_digests_table_exists = ', v_tmp_digests_table_exists) AS 'Debug'; END IF;  CASE WHEN in_action IN ('snapshot', 'overall') THEN IF (in_table IS NOT NULL) THEN IF (NOT v_table_exists IN ('TEMPORARY', 'BASE TABLE')) THEN SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be NULL, NOW() or specify an existing table.', ' The table ', IF(CHAR_LENGTH(v_quoted_table) > 16, CONCAT('...', SUBSTRING(v_quoted_table, -13)), v_quoted_table), ' does not exist.'); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF; END IF;  WHEN in_action IN ('delta', 'save') THEN IF (v_table_exists NOT IN ('TEMPORARY', 'BASE TABLE')) THEN SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be an existing table.', IF(in_table IS NOT NULL, CONCAT(' The table ', IF(CHAR_LENGTH(v_quoted_table) > 39, CONCAT('...', SUBSTRING(v_quoted_table, -36)), v_quoted_table), ' does not exist.'), '')); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF;  IF (in_action = 'delta' AND v_tmp_digests_table_exists <> 'TEMPORARY') THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'An existing snapshot generated with the statement_performance_analyzer() must exist.'; END IF; WHEN in_action = 'create_tmp' THEN IF (v_table_exists = 'TEMPORARY') THEN SET v_error_msg = CONCAT('Cannot create the table ', IF(CHAR_LENGTH(v_quoted_table) > 72, CONCAT('...', SUBSTRING(v_quoted_table, -69)), v_quoted_table), ' as it already exists.'); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF;  WHEN in_action = 'create_table' THEN IF (v_table_exists <> '') THEN SET v_error_msg = CONCAT('Cannot create the table ', IF(CHAR_LENGTH(v_quoted_table) > 52, CONCAT('...', SUBSTRING(v_quoted_table, -49)), v_quoted_table), ' as it already exists', IF(v_table_exists = 'TEMPORARY', ' as a temporary table.', '.')); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF;  WHEN in_action = 'cleanup' THEN DO (SELECT 1); ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Unknown action. Supported actions are: cleanup, create_table, create_tmp, delta, overall, save, snapshot'; END CASE;  SET v_digest_table_template = 'CREATE %{TEMPORARY}TABLE %{TABLE_NAME} ( `SCHEMA_NAME` varchar(64) DEFAULT NULL, `DIGEST` varchar(32) DEFAULT NULL, `DIGEST_TEXT` longtext, `COUNT_STAR` bigint(20) unsigned NOT NULL, `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL, `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL, `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL, `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL, `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL, `SUM_ERRORS` bigint(20) unsigned NOT NULL, `SUM_WARNINGS` bigint(20) unsigned NOT NULL, `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL, `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL, `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL, `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL, `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL, `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL, `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL, `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL, `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL, `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL, `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL, `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL, `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL, `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL, `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL, `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL, `FIRST_SEEN` timestamp NULL DEFAULT NULL, `LAST_SEEN` timestamp NULL DEFAULT NULL, INDEX (SCHEMA_NAME, DIGEST) ) DEFAULT CHARSET=utf8';  IF (v_force_new_snapshot OR in_action = 'snapshot' OR (in_action = 'overall' AND in_table IS NULL) OR (in_action = 'save' AND v_tmp_digests_table_exists <> 'TEMPORARY') ) THEN IF (v_tmp_digests_table_exists = 'TEMPORARY') THEN IF (@sys.debug = 'ON') THEN SELECT 'DROP TEMPORARY TABLE IF EXISTS tmp_digests' AS 'Debug'; END IF; DROP TEMPORARY TABLE IF EXISTS tmp_digests; END IF; CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', 'tmp_digests'));  SET v_sql = CONCAT('INSERT INTO tmp_digests SELECT * FROM ', IF(in_table IS NULL OR in_action = 'save', 'performance_schema.events_statements_summary_by_digest', v_quoted_table)); CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (in_action IN ('create_table', 'create_tmp')) THEN IF (in_action = 'create_table') THEN CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', ''), '%{TABLE_NAME}', v_quoted_table)); ELSE CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', v_quoted_table)); END IF; ELSEIF (in_action = 'save') THEN CALL sys.execute_prepared_stmt(CONCAT('DELETE FROM ', v_quoted_table)); CALL sys.execute_prepared_stmt(CONCAT('INSERT INTO ', v_quoted_table, ' SELECT * FROM tmp_digests')); ELSEIF (in_action = 'cleanup') THEN DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests; DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests_delta; ELSEIF (in_action IN ('overall', 'delta')) THEN IF (in_action = 'overall') THEN IF (in_table IS NULL) THEN SET v_digests_table = 'tmp_digests'; ELSE SET v_digests_table = v_quoted_table; END IF; ELSE SET v_digests_table = 'tmp_digests_delta'; DROP TEMPORARY TABLE IF EXISTS tmp_digests_delta; CREATE TEMPORARY TABLE tmp_digests_delta LIKE tmp_digests; SET v_sql = CONCAT('INSERT INTO tmp_digests_delta SELECT `d_end`.`SCHEMA_NAME`, `d_end`.`DIGEST`, `d_end`.`DIGEST_TEXT`, `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) AS ''COUNT_STAR'', `d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0) AS ''SUM_TIMER_WAIT'', `d_end`.`MIN_TIMER_WAIT` AS ''MIN_TIMER_WAIT'', IFNULL((`d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0))/NULLIF(`d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0), 0), 0) AS ''AVG_TIMER_WAIT'', `d_end`.`MAX_TIMER_WAIT` AS ''MAX_TIMER_WAIT'', `d_end`.`SUM_LOCK_TIME`-IFNULL(`d_start`.`SUM_LOCK_TIME`, 0) AS ''SUM_LOCK_TIME'', `d_end`.`SUM_ERRORS`-IFNULL(`d_start`.`SUM_ERRORS`, 0) AS ''SUM_ERRORS'', `d_end`.`SUM_WARNINGS`-IFNULL(`d_start`.`SUM_WARNINGS`, 0) AS ''SUM_WARNINGS'', `d_end`.`SUM_ROWS_AFFECTED`-IFNULL(`d_start`.`SUM_ROWS_AFFECTED`, 0) AS ''SUM_ROWS_AFFECTED'', `d_end`.`SUM_ROWS_SENT`-IFNULL(`d_start`.`SUM_ROWS_SENT`, 0) AS ''SUM_ROWS_SENT'', `d_end`.`SUM_ROWS_EXAMINED`-IFNULL(`d_start`.`SUM_ROWS_EXAMINED`, 0) AS ''SUM_ROWS_EXAMINED'', `d_end`.`SUM_CREATED_TMP_DISK_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_DISK_TABLES`, 0) AS ''SUM_CREATED_TMP_DISK_TABLES'', `d_end`.`SUM_CREATED_TMP_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_TABLES`, 0) AS ''SUM_CREATED_TMP_TABLES'', `d_end`.`SUM_SELECT_FULL_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_JOIN`, 0) AS ''SUM_SELECT_FULL_JOIN'', `d_end`.`SUM_SELECT_FULL_RANGE_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_RANGE_JOIN`, 0) AS ''SUM_SELECT_FULL_RANGE_JOIN'', `d_end`.`SUM_SELECT_RANGE`-IFNULL(`d_start`.`SUM_SELECT_RANGE`, 0) AS ''SUM_SELECT_RANGE'', `d_end`.`SUM_SELECT_RANGE_CHECK`-IFNULL(`d_start`.`SUM_SELECT_RANGE_CHECK`, 0) AS ''SUM_SELECT_RANGE_CHECK'', `d_end`.`SUM_SELECT_SCAN`-IFNULL(`d_start`.`SUM_SELECT_SCAN`, 0) AS ''SUM_SELECT_SCAN'', `d_end`.`SUM_SORT_MERGE_PASSES`-IFNULL(`d_start`.`SUM_SORT_MERGE_PASSES`, 0) AS ''SUM_SORT_MERGE_PASSES'', `d_end`.`SUM_SORT_RANGE`-IFNULL(`d_start`.`SUM_SORT_RANGE`, 0) AS ''SUM_SORT_RANGE'', `d_end`.`SUM_SORT_ROWS`-IFNULL(`d_start`.`SUM_SORT_ROWS`, 0) AS ''SUM_SORT_ROWS'', `d_end`.`SUM_SORT_SCAN`-IFNULL(`d_start`.`SUM_SORT_SCAN`, 0) AS ''SUM_SORT_SCAN'', `d_end`.`SUM_NO_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_INDEX_USED`, 0) AS ''SUM_NO_INDEX_USED'', `d_end`.`SUM_NO_GOOD_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_GOOD_INDEX_USED`, 0) AS ''SUM_NO_GOOD_INDEX_USED'', `d_end`.`FIRST_SEEN`, `d_end`.`LAST_SEEN` FROM tmp_digests d_end LEFT OUTER JOIN ', v_quoted_table, ' d_start ON `d_start`.`DIGEST` = `d_end`.`DIGEST` AND (`d_start`.`SCHEMA_NAME` = `d_end`.`SCHEMA_NAME` OR (`d_start`.`SCHEMA_NAME` IS NULL AND `d_end`.`SCHEMA_NAME` IS NULL) ) WHERE `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) > 0'); CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_runtimes_in_95th_percentile', in_views)) THEN SELECT 'Queries with Runtime in 95th Percentile' AS 'Next Output';  DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution1; DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution2; DROP TEMPORARY TABLE IF EXISTS tmp_digest_95th_percentile_by_avg_us;  CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution1 ( cnt bigint unsigned NOT NULL, avg_us decimal(21,0) NOT NULL, PRIMARY KEY (avg_us) ) ENGINE=InnoDB;  SET v_sql = CONCAT('INSERT INTO tmp_digest_avg_latency_distribution1 SELECT COUNT(*) cnt,  ROUND(avg_timer_wait/1000000) AS avg_us FROM ', v_digests_table, ' GROUP BY avg_us'); CALL sys.execute_prepared_stmt(v_sql);  CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution2 LIKE tmp_digest_avg_latency_distribution1; INSERT INTO tmp_digest_avg_latency_distribution2 SELECT * FROM tmp_digest_avg_latency_distribution1;  CREATE TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us ( avg_us decimal(21,0) NOT NULL, percentile decimal(46,4) NOT NULL, PRIMARY KEY (avg_us) ) ENGINE=InnoDB;  SET v_sql = CONCAT('INSERT INTO tmp_digest_95th_percentile_by_avg_us SELECT s2.avg_us avg_us, IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM ', v_digests_table, '), 0), 0) percentile FROM tmp_digest_avg_latency_distribution1 AS s1 JOIN tmp_digest_avg_latency_distribution2 AS s2 ON s1.avg_us <= s2.avg_us GROUP BY s2.avg_us HAVING percentile > 0.95 ORDER BY percentile LIMIT 1'); CALL sys.execute_prepared_stmt(v_sql);  SET v_sql = REPLACE( REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_runtimes_in_95th_percentile' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ), 'sys.x$ps_digest_95th_percentile_by_avg_us', '`sys`.`x$ps_digest_95th_percentile_by_avg_us`' ); CALL sys.execute_prepared_stmt(v_sql);  DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution1; DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution2; DROP TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us; END IF;  IF (FIND_IN_SET('analysis', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Ordered by Total Latency') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statement_analysis' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_errors_or_warnings', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Errors') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_errors_or_warnings' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_full_table_scans', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Full Table Scan') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_full_table_scans' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_sorting', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Sorting') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_sorting' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_temp_tables', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Internal Temporary Tables') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_temp_tables' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('custom', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Using Custom View') AS 'Next Output';  IF (@sys.statement_performance_analyzer.view IS NULL) THEN SET @sys.statement_performance_analyzer.view = sys.sys_get_config('statement_performance_analyzer.view', NULL); END IF; IF (@sys.statement_performance_analyzer.view IS NULL) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable must be set with the view or query to use.'; END IF;  IF (NOT INSTR(@sys.statement_performance_analyzer.view, ' ')) THEN IF (NOT INSTR(@sys.statement_performance_analyzer.view, '.')) THEN SET v_custom_db   = DATABASE(), v_custom_name = @sys.statement_performance_analyzer.view; ELSE SET v_custom_db   = SUBSTRING_INDEX(@sys.statement_performance_analyzer.view, '.', 1); SET v_custom_name = SUBSTRING(@sys.statement_performance_analyzer.view, CHAR_LENGTH(v_custom_db)+2); END IF;  CALL sys.table_exists(v_custom_db, v_custom_name, v_custom_view_exists); IF (v_custom_view_exists <> 'VIEW') THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable is set but specified neither an existing view nor a query.'; END IF;  SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = v_custom_db AND TABLE_NAME = v_custom_name ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); ELSE SET v_sql = REPLACE(@sys.statement_performance_analyzer.view, '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table); END IF;  IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF;  CALL sys.execute_prepared_stmt(v_sql); END IF; END IF;  IF (v_this_thread_enabled = 'YES') THEN CALL sys.ps_setup_enable_thread(CONNECTION_ID()); END IF;  IF (@log_bin = 1) THEN SET sql_log_bin = @log_bin; END IF; END//
DELIMITER ;

-- Volcando estructura para tabla sys.sys_config
CREATE TABLE IF NOT EXISTS `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para función sys.sys_get_config
DELIMITER //
CREATE FUNCTION `sys_get_config`( in_variable_name VARCHAR(128), in_default_value VARCHAR(128) ) RETURNS varchar(128) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns the value for the requested variable using the following logic:\n \n 1. If the option exists in sys.sys_config return the value from there.\n 2. Else fall back on the provided default value.\n \n Notes for using sys_get_config():\n \n * If the default value argument to sys_get_config() is NULL and case 2. is reached, NULL is returned.\n It is then expected that the caller is able to handle NULL for the given configuration option.\n * The convention is to name the user variables @sys.<name of variable>. It is <name of variable> that\n is stored in the sys_config table and is what is expected as the argument to sys_get_config().\n * If you want to check whether the configuration option has already been set and if not assign with\n the return value of sys_get_config() you can use IFNULL(...) (see example below). However this should\n not be done inside a loop (e.g. for each row in a result set) as for repeated calls where assignment\n is only needed in the first iteration using IFNULL(...) is expected to be significantly slower than\n using an IF (...) THEN ... END IF; block (see example below).\n \n Parameters\n \n in_variable_name (VARCHAR(128)):\n The name of the config option to return the value for.\n \n in_default_value (VARCHAR(128)):\n The default value to return if the variable does not exist in sys.sys_config.\n \n Returns\n \n VARCHAR(128)\n \n Example\n \n mysql> SELECT sys.sys_get_config(''statement_truncate_len'', 128) AS Value;\n +-------+\n | Value |\n +-------+\n | 64    |\n +-------+\n 1 row in set (0.00 sec)\n \n mysql> SET @sys.statement_truncate_len = IFNULL(@sys.statement_truncate_len, sys.sys_get_config(''statement_truncate_len'', 64));\n Query OK, 0 rows affected (0.00 sec)\n \n IF (@sys.statement_truncate_len IS NULL) THEN\n SET @sys.statement_truncate_len = sys.sys_get_config(''statement_truncate_len'', 64);\n END IF;\n '
BEGIN DECLARE v_value VARCHAR(128) DEFAULT NULL;  SET v_value = (SELECT value FROM sys.sys_config WHERE variable = in_variable_name);  IF (v_value IS NULL) THEN SET v_value = in_default_value; END IF;  RETURN v_value; END//
DELIMITER ;

-- Volcando estructura para procedimiento sys.table_exists
DELIMITER //
CREATE PROCEDURE `table_exists`( IN in_db VARCHAR(64), IN in_table VARCHAR(64), OUT out_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY') )
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Tests whether the table specified in in_db and in_table exists either as a regular\n table, or as a temporary table. The returned value corresponds to the table that\n will be used, so if there''s both a temporary and a permanent table with the given\n name, then ''TEMPORARY'' will be returned.\n \n Parameters\n \n in_db (VARCHAR(64)):\n The database name to check for the existance of the table in.\n \n in_table (VARCHAR(64)):\n The name of the table to check the existance of.\n \n out_exists ENUM('''', ''BASE TABLE'', ''VIEW'', ''TEMPORARY''):\n The return value: whether the table exists. The value is one of:\n * ''''           - the table does not exist neither as a base table, view, nor temporary table.\n * ''BASE TABLE'' - the table name exists as a permanent base table table.\n * ''VIEW''       - the table name exists as a view.\n * ''TEMPORARY''  - the table name exists as a temporary table.\n \n Example\n \n mysql> CREATE DATABASE db1;\n Query OK, 1 row affected (0.07 sec)\n \n mysql> use db1;\n Database changed\n mysql> CREATE TABLE t1 (id INT PRIMARY KEY);\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> CREATE TABLE t2 (id INT PRIMARY KEY);\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> CREATE view v_t1 AS SELECT * FROM t1;\n Query OK, 0 rows affected (0.00 sec)\n \n mysql> CREATE TEMPORARY TABLE t1 (id INT PRIMARY KEY);\n Query OK, 0 rows affected (0.00 sec)\n \n mysql> CALL sys.table_exists(''db1'', ''t1'', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.00 sec)\n \n +------------+\n | @exists    |\n +------------+\n | TEMPORARY  |\n +------------+\n 1 row in set (0.00 sec)\n \n mysql> CALL sys.table_exists(''db1'', ''t2'', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.00 sec)\n \n +------------+\n | @exists    |\n +------------+\n | BASE TABLE |\n +------------+\n 1 row in set (0.01 sec)\n \n mysql> CALL sys.table_exists(''db1'', ''v_t1'', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.00 sec)\n \n +---------+\n | @exists |\n +---------+\n | VIEW    |\n +---------+\n 1 row in set (0.00 sec)\n \n mysql> CALL sys.table_exists(''db1'', ''t3'', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.01 sec)\n \n +---------+\n | @exists |\n +---------+\n |         |\n +---------+\n 1 row in set (0.00 sec)\n '
BEGIN DECLARE v_error BOOLEAN DEFAULT FALSE; DECLARE CONTINUE HANDLER FOR 1050 SET v_error = TRUE; DECLARE CONTINUE HANDLER FOR 1146 SET v_error = TRUE;  SET out_exists = '';  IF (EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table)) THEN SET @sys.tmp.table_exists.SQL = CONCAT('CREATE TEMPORARY TABLE `', in_db, '`.`', in_table, '` (id INT PRIMARY KEY)'); PREPARE stmt_create_table FROM @sys.tmp.table_exists.SQL; EXECUTE stmt_create_table; DEALLOCATE PREPARE stmt_create_table; IF (v_error) THEN SET out_exists = 'TEMPORARY'; ELSE SET @sys.tmp.table_exists.SQL = CONCAT('DROP TEMPORARY TABLE `', in_db, '`.`', in_table, '`'); PREPARE stmt_drop_table FROM @sys.tmp.table_exists.SQL; EXECUTE stmt_drop_table; DEALLOCATE PREPARE stmt_drop_table; SET out_exists = (SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table); END IF; ELSE SET @sys.tmp.table_exists.SQL = CONCAT('SELECT COUNT(*) FROM `', in_db, '`.`', in_table, '`'); PREPARE stmt_select FROM @sys.tmp.table_exists.SQL; IF (NOT v_error) THEN DEALLOCATE PREPARE stmt_select; SET out_exists = 'TEMPORARY'; END IF; END IF; END//
DELIMITER ;

-- Volcando estructura para vista sys.user_summary
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `user_summary` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`statements` DECIMAL(64,0) NULL,
	`statement_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`statement_avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`table_scans` DECIMAL(65,0) NULL,
	`file_ios` DECIMAL(64,0) NULL,
	`file_io_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`current_connections` DECIMAL(41,0) NULL,
	`total_connections` DECIMAL(41,0) NULL,
	`unique_hosts` BIGINT(21) NOT NULL,
	`current_memory` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`total_memory_allocated` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.user_summary_by_file_io
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `user_summary_by_file_io` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`ios` DECIMAL(42,0) NULL,
	`io_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.user_summary_by_file_io_type
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `user_summary_by_file_io_type` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.user_summary_by_stages
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `user_summary_by_stages` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.user_summary_by_statement_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `user_summary_by_statement_latency` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`lock_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_sent` DECIMAL(42,0) NULL,
	`rows_examined` DECIMAL(42,0) NULL,
	`rows_affected` DECIMAL(42,0) NULL,
	`full_scans` DECIMAL(43,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.user_summary_by_statement_type
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `user_summary_by_statement_type` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`statement` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`lock_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL,
	`full_scans` BIGINT(21) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.version
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `version` (
	`sys_version` VARCHAR(5) NOT NULL COLLATE 'utf8_general_ci',
	`mysql_version` VARCHAR(6) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para función sys.version_major
DELIMITER //
CREATE FUNCTION `version_major`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns the major version of MySQL Server.\n \n Returns\n \n TINYINT UNSIGNED\n \n Example\n \n mysql> SELECT VERSION(), sys.version_major();\n +--------------------------------------+---------------------+\n | VERSION()                            | sys.version_major() |\n +--------------------------------------+---------------------+\n | 5.7.9-enterprise-commercial-advanced | 5                   |\n +--------------------------------------+---------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 1); END//
DELIMITER ;

-- Volcando estructura para función sys.version_minor
DELIMITER //
CREATE FUNCTION `version_minor`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns the minor (release series) version of MySQL Server.\n \n Returns\n \n TINYINT UNSIGNED\n \n Example\n \n mysql> SELECT VERSION(), sys.server_minor();\n +--------------------------------------+---------------------+\n | VERSION()                            | sys.version_minor() |\n +--------------------------------------+---------------------+\n | 5.7.9-enterprise-commercial-advanced | 7                   |\n +--------------------------------------+---------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 2), '.', -1); END//
DELIMITER ;

-- Volcando estructura para función sys.version_patch
DELIMITER //
CREATE FUNCTION `version_patch`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns the patch release version of MySQL Server.\n \n Returns\n \n TINYINT UNSIGNED\n \n Example\n \n mysql> SELECT VERSION(), sys.version_patch();\n +--------------------------------------+---------------------+\n | VERSION()                            | sys.version_patch() |\n +--------------------------------------+---------------------+\n | 5.7.9-enterprise-commercial-advanced | 9                   |\n +--------------------------------------+---------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', -1); END//
DELIMITER ;

-- Volcando estructura para vista sys.waits_by_host_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `waits_by_host_by_latency` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`event` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.waits_by_user_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `waits_by_user_by_latency` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`event` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.waits_global_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `waits_global_by_latency` (
	`events` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.wait_classes_global_by_avg_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `wait_classes_global_by_avg_latency` (
	`event_class` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`min_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.wait_classes_global_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `wait_classes_global_by_latency` (
	`event_class` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`min_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`avg_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`max_latency` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$host_summary
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$host_summary` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`statements` DECIMAL(64,0) NULL,
	`statement_latency` DECIMAL(64,0) NULL,
	`statement_avg_latency` DECIMAL(65,4) NULL,
	`table_scans` DECIMAL(65,0) NULL,
	`file_ios` DECIMAL(64,0) NULL,
	`file_io_latency` DECIMAL(64,0) NULL,
	`current_connections` DECIMAL(41,0) NULL,
	`total_connections` DECIMAL(41,0) NULL,
	`unique_users` BIGINT(21) NOT NULL,
	`current_memory` DECIMAL(63,0) NULL,
	`total_memory_allocated` DECIMAL(64,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$host_summary_by_file_io
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$host_summary_by_file_io` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`ios` DECIMAL(42,0) NULL,
	`io_latency` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$host_summary_by_file_io_type
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$host_summary_by_file_io_type` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$host_summary_by_stages
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$host_summary_by_stages` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$host_summary_by_statement_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$host_summary_by_statement_latency` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`max_latency` BIGINT(20) UNSIGNED NULL,
	`lock_latency` DECIMAL(42,0) NULL,
	`rows_sent` DECIMAL(42,0) NULL,
	`rows_examined` DECIMAL(42,0) NULL,
	`rows_affected` DECIMAL(42,0) NULL,
	`full_scans` DECIMAL(43,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$host_summary_by_statement_type
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$host_summary_by_statement_type` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`statement` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL,
	`lock_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL,
	`full_scans` BIGINT(21) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$innodb_buffer_stats_by_schema
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$innodb_buffer_stats_by_schema` (
	`object_schema` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`allocated` DECIMAL(43,0) NULL,
	`data` DECIMAL(43,0) NULL,
	`pages` BIGINT(21) NOT NULL,
	`pages_hashed` BIGINT(21) NOT NULL,
	`pages_old` BIGINT(21) NOT NULL,
	`rows_cached` DECIMAL(44,0) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$innodb_buffer_stats_by_table
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$innodb_buffer_stats_by_table` (
	`object_schema` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`object_name` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`allocated` DECIMAL(43,0) NULL,
	`data` DECIMAL(43,0) NULL,
	`pages` BIGINT(21) NOT NULL,
	`pages_hashed` BIGINT(21) NOT NULL,
	`pages_old` BIGINT(21) NOT NULL,
	`rows_cached` DECIMAL(44,0) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$innodb_lock_waits
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$innodb_lock_waits` (
	`wait_started` DATETIME NULL,
	`wait_age` TIME NULL,
	`wait_age_secs` BIGINT(21) NULL,
	`locked_table` VARCHAR(1024) NOT NULL COLLATE 'utf8_general_ci',
	`locked_index` VARCHAR(1024) NULL COLLATE 'utf8_general_ci',
	`locked_type` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_trx_id` VARCHAR(18) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_trx_started` DATETIME NOT NULL,
	`waiting_trx_age` TIME NULL,
	`waiting_trx_rows_locked` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_trx_rows_modified` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_pid` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_query` VARCHAR(1024) NULL COLLATE 'utf8_general_ci',
	`waiting_lock_id` VARCHAR(81) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_lock_mode` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_trx_id` VARCHAR(18) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_pid` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_query` VARCHAR(1024) NULL COLLATE 'utf8_general_ci',
	`blocking_lock_id` VARCHAR(81) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_lock_mode` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_trx_started` DATETIME NOT NULL,
	`blocking_trx_age` TIME NULL,
	`blocking_trx_rows_locked` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_trx_rows_modified` BIGINT(21) UNSIGNED NOT NULL,
	`sql_kill_blocking_query` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`sql_kill_blocking_connection` VARCHAR(26) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$io_by_thread_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$io_by_thread_by_latency` (
	`user` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`min_latency` BIGINT(20) UNSIGNED NULL,
	`avg_latency` DECIMAL(24,4) NULL,
	`max_latency` BIGINT(20) UNSIGNED NULL,
	`thread_id` BIGINT(20) UNSIGNED NOT NULL,
	`processlist_id` BIGINT(20) UNSIGNED NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$io_global_by_file_by_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$io_global_by_file_by_bytes` (
	`file` VARCHAR(512) NOT NULL COLLATE 'utf8_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL,
	`total_read` BIGINT(20) NOT NULL,
	`avg_read` DECIMAL(23,4) NOT NULL,
	`count_write` BIGINT(20) UNSIGNED NOT NULL,
	`total_written` BIGINT(20) NOT NULL,
	`avg_write` DECIMAL(23,4) NOT NULL,
	`total` BIGINT(21) NOT NULL,
	`write_pct` DECIMAL(26,2) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$io_global_by_file_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$io_global_by_file_by_latency` (
	`file` VARCHAR(512) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`count_read` BIGINT(20) UNSIGNED NOT NULL,
	`read_latency` BIGINT(20) UNSIGNED NOT NULL,
	`count_write` BIGINT(20) UNSIGNED NOT NULL,
	`write_latency` BIGINT(20) UNSIGNED NOT NULL,
	`count_misc` BIGINT(20) UNSIGNED NOT NULL,
	`misc_latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$io_global_by_wait_by_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$io_global_by_wait_by_bytes` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`min_latency` BIGINT(20) UNSIGNED NOT NULL,
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL,
	`count_read` BIGINT(20) UNSIGNED NOT NULL,
	`total_read` BIGINT(20) NOT NULL,
	`avg_read` DECIMAL(23,4) NOT NULL,
	`count_write` BIGINT(20) UNSIGNED NOT NULL,
	`total_written` BIGINT(20) NOT NULL,
	`avg_written` DECIMAL(23,4) NOT NULL,
	`total_requested` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$io_global_by_wait_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$io_global_by_wait_by_latency` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL,
	`read_latency` BIGINT(20) UNSIGNED NOT NULL,
	`write_latency` BIGINT(20) UNSIGNED NOT NULL,
	`misc_latency` BIGINT(20) UNSIGNED NOT NULL,
	`count_read` BIGINT(20) UNSIGNED NOT NULL,
	`total_read` BIGINT(20) NOT NULL,
	`avg_read` DECIMAL(23,4) NOT NULL,
	`count_write` BIGINT(20) UNSIGNED NOT NULL,
	`total_written` BIGINT(20) NOT NULL,
	`avg_written` DECIMAL(23,4) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$latest_file_io
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$latest_file_io` (
	`thread` VARCHAR(149) NULL COLLATE 'utf8_general_ci',
	`file` VARCHAR(512) NULL COLLATE 'utf8_general_ci',
	`latency` BIGINT(20) UNSIGNED NULL,
	`operation` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`requested` BIGINT(20) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$memory_by_host_by_current_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$memory_by_host_by_current_bytes` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` DECIMAL(41,0) NULL,
	`current_avg_alloc` DECIMAL(45,4) NOT NULL,
	`current_max_alloc` BIGINT(20) NULL,
	`total_allocated` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$memory_by_thread_by_current_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$memory_by_thread_by_current_bytes` (
	`thread_id` BIGINT(20) UNSIGNED NOT NULL,
	`user` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` DECIMAL(41,0) NULL,
	`current_avg_alloc` DECIMAL(45,4) NOT NULL,
	`current_max_alloc` BIGINT(20) NULL,
	`total_allocated` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$memory_by_user_by_current_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$memory_by_user_by_current_bytes` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` DECIMAL(41,0) NULL,
	`current_avg_alloc` DECIMAL(45,4) NOT NULL,
	`current_max_alloc` BIGINT(20) NULL,
	`total_allocated` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$memory_global_by_current_bytes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$memory_global_by_current_bytes` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`current_count` BIGINT(20) NOT NULL,
	`current_alloc` BIGINT(20) NOT NULL,
	`current_avg_alloc` DECIMAL(23,4) NOT NULL,
	`high_count` BIGINT(20) NOT NULL,
	`high_alloc` BIGINT(20) NOT NULL,
	`high_avg_alloc` DECIMAL(23,4) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$memory_global_total
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$memory_global_total` (
	`total_allocated` DECIMAL(41,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$processlist
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$processlist` (
	`thd_id` BIGINT(20) UNSIGNED NOT NULL,
	`conn_id` BIGINT(20) UNSIGNED NULL,
	`user` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`command` VARCHAR(16) NULL COLLATE 'utf8_general_ci',
	`state` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`time` BIGINT(20) NULL,
	`current_statement` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`statement_latency` BIGINT(20) UNSIGNED NULL,
	`progress` DECIMAL(26,2) NULL,
	`lock_latency` BIGINT(20) UNSIGNED NULL,
	`rows_examined` BIGINT(20) UNSIGNED NULL,
	`rows_sent` BIGINT(20) UNSIGNED NULL,
	`rows_affected` BIGINT(20) UNSIGNED NULL,
	`tmp_tables` BIGINT(20) UNSIGNED NULL,
	`tmp_disk_tables` BIGINT(20) UNSIGNED NULL,
	`full_scan` VARCHAR(3) NOT NULL COLLATE 'utf8_general_ci',
	`last_statement` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`last_statement_latency` BIGINT(20) UNSIGNED NULL,
	`current_memory` DECIMAL(41,0) NULL,
	`last_wait` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`last_wait_latency` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`source` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`trx_latency` BIGINT(20) UNSIGNED NULL,
	`trx_state` ENUM('ACTIVE','COMMITTED','ROLLED BACK') NULL COLLATE 'utf8_general_ci',
	`trx_autocommit` ENUM('YES','NO') NULL COLLATE 'utf8_general_ci',
	`pid` VARCHAR(1024) NULL COLLATE 'utf8_bin',
	`program_name` VARCHAR(1024) NULL COLLATE 'utf8_bin'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$ps_digest_95th_percentile_by_avg_us
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$ps_digest_95th_percentile_by_avg_us` (
	`avg_us` DECIMAL(21,0) NULL,
	`percentile` DECIMAL(46,4) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$ps_digest_avg_latency_distribution
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$ps_digest_avg_latency_distribution` (
	`cnt` BIGINT(21) NOT NULL,
	`avg_us` DECIMAL(21,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$ps_schema_table_statistics_io
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$ps_schema_table_statistics_io` (
	`table_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`count_read` DECIMAL(42,0) NULL,
	`sum_number_of_bytes_read` DECIMAL(41,0) NULL,
	`sum_timer_read` DECIMAL(42,0) NULL,
	`count_write` DECIMAL(42,0) NULL,
	`sum_number_of_bytes_write` DECIMAL(41,0) NULL,
	`sum_timer_write` DECIMAL(42,0) NULL,
	`count_misc` DECIMAL(42,0) NULL,
	`sum_timer_misc` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$schema_flattened_keys
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$schema_flattened_keys` (
	`table_schema` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`index_name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`non_unique` BIGINT(1) NULL,
	`subpart_exists` BIGINT(1) NULL,
	`index_columns` TEXT(65535) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$schema_index_statistics
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$schema_index_statistics` (
	`table_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`index_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`rows_selected` BIGINT(20) UNSIGNED NOT NULL,
	`select_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL,
	`insert_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL,
	`update_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL,
	`delete_latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$schema_tables_with_full_table_scans
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$schema_tables_with_full_table_scans` (
	`object_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`object_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`rows_full_scanned` BIGINT(20) UNSIGNED NOT NULL,
	`latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$schema_table_lock_waits
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$schema_table_lock_waits` (
	`object_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`object_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`waiting_thread_id` BIGINT(20) UNSIGNED NOT NULL,
	`waiting_pid` BIGINT(20) UNSIGNED NULL,
	`waiting_account` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`waiting_lock_type` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_lock_duration` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`waiting_query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`waiting_query_secs` BIGINT(20) NULL,
	`waiting_query_rows_affected` BIGINT(20) UNSIGNED NULL,
	`waiting_query_rows_examined` BIGINT(20) UNSIGNED NULL,
	`blocking_thread_id` BIGINT(20) UNSIGNED NOT NULL,
	`blocking_pid` BIGINT(20) UNSIGNED NULL,
	`blocking_account` TEXT(65535) NULL COLLATE 'utf8_general_ci',
	`blocking_lock_type` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`blocking_lock_duration` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`sql_kill_blocking_query` VARCHAR(31) NULL COLLATE 'utf8_general_ci',
	`sql_kill_blocking_connection` VARCHAR(25) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$schema_table_statistics
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$schema_table_statistics` (
	`table_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_fetched` BIGINT(20) UNSIGNED NOT NULL,
	`fetch_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL,
	`insert_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL,
	`update_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL,
	`delete_latency` BIGINT(20) UNSIGNED NOT NULL,
	`io_read_requests` DECIMAL(42,0) NULL,
	`io_read` DECIMAL(41,0) NULL,
	`io_read_latency` DECIMAL(42,0) NULL,
	`io_write_requests` DECIMAL(42,0) NULL,
	`io_write` DECIMAL(41,0) NULL,
	`io_write_latency` DECIMAL(42,0) NULL,
	`io_misc_requests` DECIMAL(42,0) NULL,
	`io_misc_latency` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$schema_table_statistics_with_buffer
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$schema_table_statistics_with_buffer` (
	`table_schema` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`table_name` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`rows_fetched` BIGINT(20) UNSIGNED NOT NULL,
	`fetch_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL,
	`insert_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL,
	`update_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL,
	`delete_latency` BIGINT(20) UNSIGNED NOT NULL,
	`io_read_requests` DECIMAL(42,0) NULL,
	`io_read` DECIMAL(41,0) NULL,
	`io_read_latency` DECIMAL(42,0) NULL,
	`io_write_requests` DECIMAL(42,0) NULL,
	`io_write` DECIMAL(41,0) NULL,
	`io_write_latency` DECIMAL(42,0) NULL,
	`io_misc_requests` DECIMAL(42,0) NULL,
	`io_misc_latency` DECIMAL(42,0) NULL,
	`innodb_buffer_allocated` DECIMAL(43,0) NULL,
	`innodb_buffer_data` DECIMAL(43,0) NULL,
	`innodb_buffer_free` DECIMAL(44,0) NULL,
	`innodb_buffer_pages` BIGINT(21) NULL,
	`innodb_buffer_pages_hashed` BIGINT(21) NULL,
	`innodb_buffer_pages_old` BIGINT(21) NULL,
	`innodb_buffer_rows_cached` DECIMAL(44,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$session
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$session` (
	`thd_id` BIGINT(20) UNSIGNED NOT NULL,
	`conn_id` BIGINT(20) UNSIGNED NULL,
	`user` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`command` VARCHAR(16) NULL COLLATE 'utf8_general_ci',
	`state` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`time` BIGINT(20) NULL,
	`current_statement` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`statement_latency` BIGINT(20) UNSIGNED NULL,
	`progress` DECIMAL(26,2) NULL,
	`lock_latency` BIGINT(20) UNSIGNED NULL,
	`rows_examined` BIGINT(20) UNSIGNED NULL,
	`rows_sent` BIGINT(20) UNSIGNED NULL,
	`rows_affected` BIGINT(20) UNSIGNED NULL,
	`tmp_tables` BIGINT(20) UNSIGNED NULL,
	`tmp_disk_tables` BIGINT(20) UNSIGNED NULL,
	`full_scan` VARCHAR(3) NOT NULL COLLATE 'utf8_general_ci',
	`last_statement` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`last_statement_latency` BIGINT(20) UNSIGNED NULL,
	`current_memory` DECIMAL(41,0) NULL,
	`last_wait` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`last_wait_latency` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`source` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`trx_latency` BIGINT(20) UNSIGNED NULL,
	`trx_state` ENUM('ACTIVE','COMMITTED','ROLLED BACK') NULL COLLATE 'utf8_general_ci',
	`trx_autocommit` ENUM('YES','NO') NULL COLLATE 'utf8_general_ci',
	`pid` VARCHAR(1024) NULL COLLATE 'utf8_bin',
	`program_name` VARCHAR(1024) NULL COLLATE 'utf8_bin'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$statements_with_errors_or_warnings
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$statements_with_errors_or_warnings` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`errors` BIGINT(20) UNSIGNED NOT NULL,
	`error_pct` DECIMAL(27,4) NOT NULL,
	`warnings` BIGINT(20) UNSIGNED NOT NULL,
	`warning_pct` DECIMAL(27,4) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$statements_with_full_table_scans
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$statements_with_full_table_scans` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`no_index_used_count` BIGINT(20) UNSIGNED NOT NULL,
	`no_good_index_used_count` BIGINT(20) UNSIGNED NOT NULL,
	`no_index_used_pct` DECIMAL(24,0) NOT NULL,
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent_avg` DECIMAL(21,0) UNSIGNED NULL,
	`rows_examined_avg` DECIMAL(21,0) UNSIGNED NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$statements_with_runtimes_in_95th_percentile
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$statements_with_runtimes_in_95th_percentile` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`full_scan` VARCHAR(1) NOT NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`err_count` BIGINT(20) UNSIGNED NOT NULL,
	`warn_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL,
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent_avg` DECIMAL(21,0) NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined_avg` DECIMAL(21,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$statements_with_sorting
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$statements_with_sorting` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`sort_merge_passes` BIGINT(20) UNSIGNED NOT NULL,
	`avg_sort_merges` DECIMAL(21,0) NOT NULL,
	`sorts_using_scans` BIGINT(20) UNSIGNED NOT NULL,
	`sort_using_range` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sorted` BIGINT(20) UNSIGNED NOT NULL,
	`avg_rows_sorted` DECIMAL(21,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$statements_with_temp_tables
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$statements_with_temp_tables` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`memory_tmp_tables` BIGINT(20) UNSIGNED NOT NULL,
	`disk_tmp_tables` BIGINT(20) UNSIGNED NOT NULL,
	`avg_tmp_tables_per_query` DECIMAL(21,0) NOT NULL,
	`tmp_tables_to_disk_pct` DECIMAL(24,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$statement_analysis
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$statement_analysis` (
	`query` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`db` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`full_scan` VARCHAR(1) NOT NULL COLLATE 'utf8_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL,
	`err_count` BIGINT(20) UNSIGNED NOT NULL,
	`warn_count` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL,
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL,
	`lock_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent_avg` DECIMAL(21,0) NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined_avg` DECIMAL(21,0) NOT NULL,
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL,
	`rows_affected_avg` DECIMAL(21,0) NOT NULL,
	`tmp_tables` BIGINT(20) UNSIGNED NOT NULL,
	`tmp_disk_tables` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sorted` BIGINT(20) UNSIGNED NOT NULL,
	`sort_merge_passes` BIGINT(20) UNSIGNED NOT NULL,
	`digest` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`first_seen` TIMESTAMP NOT NULL,
	`last_seen` TIMESTAMP NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$user_summary
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$user_summary` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`statements` DECIMAL(64,0) NULL,
	`statement_latency` DECIMAL(64,0) NULL,
	`statement_avg_latency` DECIMAL(65,4) NOT NULL,
	`table_scans` DECIMAL(65,0) NULL,
	`file_ios` DECIMAL(64,0) NULL,
	`file_io_latency` DECIMAL(64,0) NULL,
	`current_connections` DECIMAL(41,0) NULL,
	`total_connections` DECIMAL(41,0) NULL,
	`unique_hosts` BIGINT(21) NOT NULL,
	`current_memory` DECIMAL(63,0) NULL,
	`total_memory_allocated` DECIMAL(64,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$user_summary_by_file_io
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$user_summary_by_file_io` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`ios` DECIMAL(42,0) NULL,
	`io_latency` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$user_summary_by_file_io_type
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$user_summary_by_file_io_type` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$user_summary_by_stages
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$user_summary_by_stages` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$user_summary_by_statement_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$user_summary_by_statement_latency` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`max_latency` DECIMAL(42,0) NULL,
	`lock_latency` DECIMAL(42,0) NULL,
	`rows_sent` DECIMAL(42,0) NULL,
	`rows_examined` DECIMAL(42,0) NULL,
	`rows_affected` DECIMAL(42,0) NULL,
	`full_scans` DECIMAL(43,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$user_summary_by_statement_type
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$user_summary_by_statement_type` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`statement` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL,
	`lock_latency` BIGINT(20) UNSIGNED NOT NULL,
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL,
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL,
	`full_scans` BIGINT(21) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$waits_by_host_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$waits_by_host_by_latency` (
	`host` VARCHAR(60) NULL COLLATE 'utf8_bin',
	`event` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$waits_by_user_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$waits_by_user_by_latency` (
	`user` VARCHAR(32) NULL COLLATE 'utf8_bin',
	`event` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$waits_global_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$waits_global_by_latency` (
	`events` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL,
	`total_latency` BIGINT(20) UNSIGNED NOT NULL,
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$wait_classes_global_by_avg_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$wait_classes_global_by_avg_latency` (
	`event_class` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`min_latency` BIGINT(20) UNSIGNED NULL,
	`avg_latency` DECIMAL(46,4) NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sys.x$wait_classes_global_by_latency
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `x$wait_classes_global_by_latency` (
	`event_class` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`min_latency` BIGINT(20) UNSIGNED NULL,
	`avg_latency` DECIMAL(46,4) NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NULL
) ENGINE=MyISAM;

-- Volcando estructura para disparador sys.sys_config_insert_set_user
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER sys_config_insert_set_user BEFORE INSERT on sys_config FOR EACH ROW BEGIN IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN SET NEW.set_by = USER(); END IF; END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador sys.sys_config_update_set_user
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER sys_config_update_set_user BEFORE UPDATE on sys_config FOR EACH ROW BEGIN IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN SET NEW.set_by = USER(); END IF; END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para vista sys.host_summary
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `host_summary`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`);

-- Volcando estructura para vista sys.host_summary_by_file_io
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `host_summary_by_file_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.host_summary_by_file_io_type
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.host_summary_by_stages
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `host_summary_by_stages`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.host_summary_by_statement_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.host_summary_by_statement_type
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `host_summary_by_statement_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.innodb_buffer_stats_by_schema
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc;

-- Volcando estructura para vista sys.innodb_buffer_stats_by_table
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc;

-- Volcando estructura para vista sys.innodb_lock_waits
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `innodb_lock_waits`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`innodb_trx` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`innodb_locks` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`innodb_locks` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started`;

-- Volcando estructura para vista sys.io_by_thread_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `io_by_thread_by_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.io_global_by_file_by_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`io_global_by_file_by_bytes` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc;

-- Volcando estructura para vista sys.io_global_by_file_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`io_global_by_file_by_latency` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.io_global_by_wait_by_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc;

-- Volcando estructura para vista sys.io_global_by_wait_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.latest_file_io
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `latest_file_io`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,`sys`.`format_time`(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`sys`.`format_bytes`(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START`;

-- Volcando estructura para vista sys.memory_by_host_by_current_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc;

-- Volcando estructura para vista sys.memory_by_thread_by_current_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`memory_by_thread_by_current_bytes` AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc;

-- Volcando estructura para vista sys.memory_by_user_by_current_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc;

-- Volcando estructura para vista sys.memory_global_by_current_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc;

-- Volcando estructura para vista sys.memory_global_total
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `memory_global_total`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`memory_global_total` AS select `sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name`;

-- Volcando estructura para vista sys.metrics
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `metrics`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`metrics` AS (select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status`) union all (select `information_schema`.`innodb_metrics`.`NAME` AS `Variable_name`,`information_schema`.`innodb_metrics`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`innodb_metrics`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`innodb_metrics`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`innodb_metrics` where (`information_schema`.`innodb_metrics`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size'))) union all (select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) union all (select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) order by `Type`,`Variable_name`;

-- Volcando estructura para vista sys.processlist
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `processlist`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` = 'thread/sql/one_connection'),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`sys`.`format_time`(`esc`.`LOCK_TIME`) AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,`sys`.`format_bytes`(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`sys`.`format_time`(`ewc`.`TIMER_WAIT`)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`sys`.`format_time`(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc;

-- Volcando estructura para vista sys.ps_check_lost_instrumentation
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`ps_check_lost_instrumentation` AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0));

-- Volcando estructura para vista sys.schema_auto_increment_columns
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `schema_auto_increment_columns`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`schema_auto_increment_columns` AS select `information_schema`.`columns`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`columns`.`TABLE_NAME` AS `table_name`,`information_schema`.`columns`.`COLUMN_NAME` AS `column_name`,`information_schema`.`columns`.`DATA_TYPE` AS `data_type`,`information_schema`.`columns`.`COLUMN_TYPE` AS `column_type`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`tables`.`AUTO_INCREMENT` AS `auto_increment`,(`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`columns` join `information_schema`.`tables` on(((`information_schema`.`columns`.`TABLE_SCHEMA` = `information_schema`.`tables`.`TABLE_SCHEMA`) and (`information_schema`.`columns`.`TABLE_NAME` = `information_schema`.`tables`.`TABLE_NAME`)))) where ((`information_schema`.`columns`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`tables`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`columns`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1));

-- Volcando estructura para vista sys.schema_index_statistics
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `schema_index_statistics`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.schema_object_overview
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `schema_object_overview`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`schema_object_overview` AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`routines` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`tables` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`statistics` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`triggers` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`events` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type`;

-- Volcando estructura para vista sys.schema_redundant_indexes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `schema_redundant_indexes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`schema_redundant_indexes` AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if((`redundant_keys`.`subpart_exists` or `dominant_keys`.`subpart_exists`),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`sys`.`x$schema_flattened_keys` `redundant_keys` join `sys`.`x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0))));

-- Volcando estructura para vista sys.schema_tables_with_full_table_scans
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc;

-- Volcando estructura para vista sys.schema_table_lock_waits
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `schema_table_lock_waits`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE');

-- Volcando estructura para vista sys.schema_table_statistics
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `schema_table_statistics`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`sys`.`format_time`(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.schema_table_statistics_with_buffer
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,`sys`.`format_bytes`(`ibp`.`allocated`) AS `innodb_buffer_allocated`,`sys`.`format_bytes`(`ibp`.`data`) AS `innodb_buffer_data`,`sys`.`format_bytes`((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.schema_unused_indexes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `schema_unused_indexes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`schema_unused_indexes` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_STAR` = 0) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` <> 'mysql') and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` <> 'PRIMARY')) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME`;

-- Volcando estructura para vista sys.session
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `session`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY INVOKER VIEW `sys`.`session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `sys`.`processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon'));

-- Volcando estructura para vista sys.session_ssl_status
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `session_ssl_status`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`session_ssl_status` AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version');

-- Volcando estructura para vista sys.statements_with_errors_or_warnings
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`statements_with_errors_or_warnings` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc;

-- Volcando estructura para vista sys.statements_with_full_table_scans
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `statements_with_full_table_scans`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`statements_with_full_table_scans` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.statements_with_runtimes_in_95th_percentile
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`statements_with_runtimes_in_95th_percentile` AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.statements_with_sorting
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `statements_with_sorting`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`statements_with_sorting` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.statements_with_temp_tables
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `statements_with_temp_tables`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`statements_with_temp_tables` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc;

-- Volcando estructura para vista sys.statement_analysis
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `statement_analysis`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`statement_analysis` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.user_summary
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `user_summary`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc;

-- Volcando estructura para vista sys.user_summary_by_file_io
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `user_summary_by_file_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.user_summary_by_file_io_type
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.user_summary_by_stages
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `user_summary_by_stages`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.user_summary_by_statement_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.user_summary_by_statement_type
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `user_summary_by_statement_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.version
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `version`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY INVOKER VIEW `sys`.`version` AS select '1.5.1' AS `sys_version`,version() AS `mysql_version`;

-- Volcando estructura para vista sys.waits_by_host_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `waits_by_host_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.waits_by_user_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `waits_by_user_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.waits_global_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `waits_global_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.wait_classes_global_by_avg_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc;

-- Volcando estructura para vista sys.wait_classes_global_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.x$host_summary
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$host_summary`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`);

-- Volcando estructura para vista sys.x$host_summary_by_file_io
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.x$host_summary_by_file_io_type
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$host_summary_by_stages
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$host_summary_by_stages`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$host_summary_by_statement_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.x$host_summary_by_statement_type
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$innodb_buffer_stats_by_schema
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc;

-- Volcando estructura para vista sys.x$innodb_buffer_stats_by_table
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc;

-- Volcando estructura para vista sys.x$innodb_lock_waits
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$innodb_lock_waits`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`innodb_trx` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`innodb_locks` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`innodb_locks` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started`;

-- Volcando estructura para vista sys.x$io_by_thread_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.x$io_global_by_file_by_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$io_global_by_file_by_bytes` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc;

-- Volcando estructura para vista sys.x$io_global_by_file_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$io_global_by_file_by_latency` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$io_global_by_wait_by_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc;

-- Volcando estructura para vista sys.x$io_global_by_wait_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$latest_file_io
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$latest_file_io`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START`;

-- Volcando estructura para vista sys.x$memory_by_host_by_current_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc;

-- Volcando estructura para vista sys.x$memory_by_thread_by_current_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$memory_by_thread_by_current_bytes` AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc;

-- Volcando estructura para vista sys.x$memory_by_user_by_current_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc;

-- Volcando estructura para vista sys.x$memory_global_by_current_bytes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc;

-- Volcando estructura para vista sys.x$memory_global_total
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$memory_global_total`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$memory_global_total` AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name`;

-- Volcando estructura para vista sys.x$processlist
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$processlist`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` = 'thread/sql/one_connection'),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc;

-- Volcando estructura para vista sys.x$ps_digest_95th_percentile_by_avg_us
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$ps_digest_95th_percentile_by_avg_us` AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1;

-- Volcando estructura para vista sys.x$ps_digest_avg_latency_distribution
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$ps_digest_avg_latency_distribution` AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us`;

-- Volcando estructura para vista sys.x$ps_schema_table_statistics_io
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$ps_schema_table_statistics_io` AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name`;

-- Volcando estructura para vista sys.x$schema_flattened_keys
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$schema_flattened_keys`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$schema_flattened_keys` AS select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`statistics`.`TABLE_NAME` AS `table_name`,`information_schema`.`statistics`.`INDEX_NAME` AS `index_name`,max(`information_schema`.`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if(isnull(`information_schema`.`statistics`.`SUB_PART`),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`statistics`.`COLUMN_NAME` order by `information_schema`.`statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`statistics` where ((`information_schema`.`statistics`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME`;

-- Volcando estructura para vista sys.x$schema_index_statistics
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$schema_index_statistics`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$schema_tables_with_full_table_scans
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc;

-- Volcando estructura para vista sys.x$schema_table_lock_waits
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE');

-- Volcando estructura para vista sys.x$schema_table_statistics
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$schema_table_statistics`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$schema_table_statistics_with_buffer
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$session
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$session`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY INVOKER VIEW `sys`.`x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `sys`.`x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon'));

-- Volcando estructura para vista sys.x$statements_with_errors_or_warnings
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_errors_or_warnings` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc;

-- Volcando estructura para vista sys.x$statements_with_full_table_scans
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_full_table_scans` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$statements_with_runtimes_in_95th_percentile
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_runtimes_in_95th_percentile` AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$statements_with_sorting
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$statements_with_sorting`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_sorting` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$statements_with_temp_tables
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_temp_tables` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc;

-- Volcando estructura para vista sys.x$statement_analysis
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$statement_analysis`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statement_analysis` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$user_summary
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$user_summary`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc;

-- Volcando estructura para vista sys.x$user_summary_by_file_io
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.x$user_summary_by_file_io_type
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$user_summary_by_stages
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$user_summary_by_stages`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$user_summary_by_statement_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Volcando estructura para vista sys.x$user_summary_by_statement_type
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$waits_by_host_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$waits_by_user_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$waits_global_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$waits_global_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Volcando estructura para vista sys.x$wait_classes_global_by_avg_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc;

-- Volcando estructura para vista sys.x$wait_classes_global_by_latency
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
