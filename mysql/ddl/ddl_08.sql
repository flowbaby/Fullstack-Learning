/*
2.3 建表类型[整数]
整数类型(类型,占有空间,范围)

标准sql:
  int / integer    4字节  无符号 0 ~ 2^32-1    有符号 -2^31 ~ 2^31-1
  smallint         2字节  无符号 0 ~ 2^16-1    有符号 -2^15 ~ 2^15-1

mysql方言:
  tinyint          1字节  无符号 0 ~ 2^8-1     有符号 -2^7 ~ 2^7-1
  mediumint        3字节  无符号 0 ~ 2^24-1    有符号 -2^23 ~ 2^23-1
  bigint           8字节  无符号 0 ~ 2^64-1    有符号 -2^63 ~ 2^63-1

有符号: 列名 整数类型 -> 有符号 | 有符号 有负值和正值
        列名 整数类型 unsigned -> 无符号 | 无符号 没有负值,都是正值,将负值部分绝对值后,加入正值部分!

注意: 选合适范围,范围合适先占有空间最小的!

创建一个ddl_d1库中,创建一个t1表,包含: 年龄和学号(范围不确定,但是没有负值)
*/

CREATE DATABASE IF NOT EXISTS ddl_d1;
USE ddl_d1;
CREATE TABLE IF NOT EXISTS t1(
    age INT UNSIGNED COMMENT '年龄',
    id INT UNSIGNED COMMENT '学号'
); 