/*
2.7 建表类型[时间类型]
时间类型
  year      1字节  yyyy | yy            '09' -> 2009
  time      3字节  HH:MM:SS             '10:10:10'
  date      3字节  YY-MM-DD             '2000-10-10'
  datetime  8字节  YY-MM-DD HH:MM:SS
  timestamp 4字节  YY-MM-DD HH:MM:SS

注意情况
  1. year类型有两位或者四位的表达形式,两位 00-69 = 2000-2069  70-99 = 1970-1999
  2. 时间类型就是一个特殊格式的字符串,插入数据的时候用 '',时间类型需要自动赋值,需要手动添加相关的设置!

扩展自动填写时间:
  1. 插入默认添加时间
     datetime | timestamp default current_timestamp;
  2. 修改默认更改时间(插入的默认时间)
     datetime | timestamp default current_timestamp on update current_timestamp;

演示: 创建t2表,
  注册日期 字段插入自动添加时间,更新数据不变 (插入数据的时候,自动维护时间,后续修改数据,时间不变!)
  更新日期 字段插入自动添加时间,更新数据时间改变 (插入数据需要自动维护时间,修改数据也需要维护时间!)
*/
CREATE TABLE IF NOT EXISTS t2(
    name VARCHAR(20),
    register_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '插入自动维护时间',
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIME COMMENT '插入自动维护时间，修改数据自动维护时间',
    only_updata_time TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP COMMENT '只有更新时自动维护时间，插入时为NULL'
);