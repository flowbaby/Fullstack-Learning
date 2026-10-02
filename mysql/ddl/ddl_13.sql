/*
2.8 修改和删除表
  修改表中列
    添加列
    ALTER TABLE 表名 ADD 字段名 字段类型 [FIRST|AFTER];
    修改列名
    ALTER TABLE 表名 CHANGE 原字段名 字段名 新字段类型 [FIRST|AFTER];
    修改列类型
    ALTER TABLE 表名 MODIFY 字段名 新字段类型 [FIRST|AFTER];
    删除列
    ALTER TABLE 表名 DROP 字段名;
  修改表名
  ALTER TABLE 表名 RENAME [TO] 新表名;
  删除表
  DROP TABLE [IF EXISTS] 表名;
  清空表数据
  TRUNCATE TABLE 表名;
*/
