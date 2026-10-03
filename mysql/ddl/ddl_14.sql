/*
2.9 表操作实战
要求1: 创建表格employees
要求2: 将表employees的mobile字段修改到code字段后面。
要求3: 将表employees的birth字段改名为birthday;
要求4: 修改sex字段，数据类型为char(1)。
要求5: 删除字段note;
要求6: 增加字段名favoriate_activity，数据类型为varchar(100);
要求7: 将表employees的名称修改为 employees_info
*/

# 要求1: 创建表格employees
 CREATE TABLE employees(
    emp_num INT,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    mobile VARCHAR(25),
    code INT,
    job_title VARCHAR(25),
    birth DATE,
    note VARCHAR(255),
    sex VARCHAR(5)
 );
# 要求2: 将表employees的mobile字段修改到code字段后面。
ALTER TABLE employees MODIFY mobile VARCHAR(25) AFTER code;
# 要求3: 将表employees的birth字段改名为birthday;
ALTER TABLE employees CHANGE birth birthday DATE;
# 要求4: 修改sex字段，数据类型为char(1)。
ALTER TABLE employees MODIFY sex CHAR(1);
# 要求5: 删除字段note;
ALTER TABLE employees DROP note;
# 要求6: 增加字段名favoriate_activity，数据类型为varchar(100);
ALTER TABLE employees ADD favoriate_activity VARCHAR(100);
# 要求7: 将表employees的名称修改为 employees_info
ALTER TABLE employees RENAME employees_info;
