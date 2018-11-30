替换canal包说明
================================================================
下载canal 可参考：https://github.com/alibaba/canal/releases
下载版本为canal-1.1.1  （之前的canal-1.0.22版本太老了，也不支持GTID）

需要替换canal.parse-1.1.1.jar


可用https://github.com/BriData/DBus/blob/master/third-party-packages/canal/canal.parse-1.1.1.jar替换原始jar包






更新文件说明：
===============================================================
* 更新版本为canal-1.1.1

* 更新canal的文件路径是canal\parse\src\main\java\com\alibaba\otter\canal\parse\inbound\mysql\dbsync\LogEventConvert.java  主要做了如下修改：
（1）EntryHead增加了rowCount参数（canal.parse-1.0.22.jar中没有rowCount，canal.parse-1.1.1.jar，原始代码中增加了rowsCount，而非rowCount）
（2）由于DBUS是使用kafka作为消息引擎的，其默认的消息大小10MB（传大消息会带来很多副作用），所以在LogEventConvert.java类中将MEDIUMTEXT、LONGTEXT、MEDIUMBLOB、LONGBLOB类型的字段全部过滤成空字符串。

* 修改编译收到影响的jar包是canal.parse-1.1.1.jar


