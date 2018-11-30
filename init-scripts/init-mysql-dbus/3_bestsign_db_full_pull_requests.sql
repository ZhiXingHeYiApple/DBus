SET FOREIGN_KEY_CHECKS=0;

USE dbus;
-- ----------------------------
-- Table structure for db_full_pull_requests
-- ----------------------------
DROP TABLE IF EXISTS `db_full_pull_requests`;
CREATE TABLE `db_full_pull_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，seqno',
  `schema_name` varchar(64) DEFAULT NULL COMMENT '库名',
  `table_name` varchar(64) NOT NULL COMMENT '表名',
  `physical_tables` varchar(10240) DEFAULT NULL COMMENT '心跳表主键',
  `scn_no` int(11) DEFAULT NULL COMMENT '心跳表主键',
  `split_col` varchar(50) DEFAULT NULL COMMENT '拆片列的名称',
  `split_bounding_query` varchar(512) DEFAULT NULL COMMENT '拆片列查询',
  `pull_target_cols` varchar(512) DEFAULT NULL COMMENT '需要同步的列字段',
  `pull_req_create_time` timestamp(6) NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '全量拉取请求创建时间',
  `pull_start_time` timestamp(6) NULL DEFAULT NULL COMMENT '全量拉取开始时间',
  `pull_end_time` timestamp(6) NULL DEFAULT NULL COMMENT '全量拉取结束时间',
  `pull_status` varchar(16) DEFAULT NULL COMMENT '全量拉取的状态',
  `pull_remark` varchar(1024) DEFAULT NULL COMMENT '全量拉取备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '全量拉取请求表';
