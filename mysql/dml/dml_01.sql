# 3. 数据操作语言

/*
3.1 数据操作语言[插入]
语法
  全列插入[不推荐]
    insert into 表名 values | value (值,值,值...)
    值的数量要等于表的所有列的数量
    值的类型和顺序要和表的列的类型和顺序一一对应

  指定列插入[推荐]
    insert into 表名 (列名,列名...) values | value (值,值,值...)
    值的数量要等于表的指定的列的数量
    值的类型和顺序要和[指定列的]顺序一一对应

  多行插入
    insert into 表名 (列名,列名...) values | value (值,值,值...),(值,值,值...),(值,值,值...)
    insert into 表名 values | value (值,值,值...),(值,值,值...),(值,值,值...)

注意
  1. values 或者 value 推荐使用 values
  2. 插入的是字符串或者时间类型用 '' 包裹
  3. 值的顺序和类型要和表的列名或者指定的列名一一对应

练习
  # 1.插入一名学生的所有信息，包括学号、名字、年龄、生日和身高。
  # 2.插入一名学生的学号、名字、年龄，其他列使用默认值。
  # 3.插入两名学生的信息，包括学号、名字、年龄、生日和身高。
  # 4.插入一名学生的信息，只提供学号、名字和年龄，其他列为空值。
*/

#创建数据库dml_d1
CREATE DATABASE IF NOT EXISTS dml_d1;
#指定使用数据库
USE dml_d1;
CREATE TABLE students(
    stu_id INT COMMENT '学号',
    stu_name VARCHAR(100) COMMENT '姓名',
    stu_age TINYINT UNSIGNED COMMENT '年龄',
    stu_birthday DATE COMMENT '生日',
    stu_height DECIMAL(4,1) DEFAULT 200 COMMENT '身高，保留一位小数'
);
# 1.插入一名学生的所有信息，包括学号、名字、年龄、生日和身高。
INSERT INTO students (stu_id,stu_name,stu_age,stu_birthday,stu_height) VALUES (1,'林宏涛',21,'2005-01-10',170.5);
# 2.插入一名学生的学号、名字、年龄，其他列使用默认值。
INSERT INTO students (stu_id,stu_name,stu_age) VALUES (2,'LHT',21);
# 3.插入两名学生的信息，包括学号、名字、年龄、生日和身高。
INSERT INTO students (stu_id,stu_name,stu_age,stu_birthday,stu_height) VALUES (3,'林宏涛2',21,'2005-01-10',170.5),(4,'LHT3',21,'2005-01-10',170.5);
# 4.插入一名学生的信息，只提供学号、名字和年龄，其他列为空值。
INSERT INTO students (stu_id,stu_name,stu_age,stu_birthday,stu_height) VALUES (5,'LHT4',21,NULL,NULL);
