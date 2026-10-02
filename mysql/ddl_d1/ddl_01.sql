# 1. DDL之数据库操作
/*
1.1 数据库创建
	创建数据库
	判断再创建数据库
	创建数据库指定字符集
	创建数据库指定排序方式
	创建数据库指定字符集和排序方式
	查询数据库的字符集和排序方式
  CREATE DATABASE ddl_d1;
  CREATE DATABASE IF NOT EXISTS ddl_d1;
  CREATE DATABASE IF NOT EXISTS ddl_d1 CHARACTER SET utf8;
  CREATE DATABASE IF NOT EXISTS ddl_d1 COLLATE utf8mb4_0900_as_cs;
  CREATE DATABASE IF NOT EXISTS ddl_d1 CHARACTER SET utf8 COLLATE utf8mb4_0900_as_cs;
  USE ddl_d1;
  SHOW VARIABLES LIKE 'character_set_database';
  SHOW VARIABLES LIKE 'collation_database';
	练习：
		创建ddl_d1库,指定字符集为utf8,且排序方式用大小写敏感的utf8mb4_0900_as_cs模式
*/
CREATE DATABASE IF NOT EXISTS ddl_d1 CHARACTER SET utf8mb4  COLLATE utf8mb4_0900_as_cs; 