/*
2.8 创建表实战
场景2：
创建一个学生表(student)来存储借书的学员信息，其中应包含学生姓名、年龄、身高、生日以及注册时间和更新时间等属性

student -> 字符集 -> 默认
  姓名 -> stu_name
  性别 -> stu_sex
  年龄 -> stu_age
  身高 -> stu_height
  生日 -> stu_birthday
  注册 -> stu_regtime
  更新 -> stu_uptime
*/
CREATE TABLE IF NOT EXISTS student(
    stu_name VARCHAR(10) COMMENT '学生的姓名',
    stu_sex CHAR(1) COMMENT '学生的性别',
    stu_age TINYINT UNSIGNED COMMENT '年龄 0-255',
    stu_height DOUBLE(4,1) COMMENT '身高',
    stu_birthday DATE COMMENT '生日',
    stu_regtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
    stu_uptime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
);