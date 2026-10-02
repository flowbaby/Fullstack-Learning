/*
1.3 数据库修改
	修改字符集
    ALTER DATABASE 数据库名 CHARACTER SET 字符集;
	修改排序方式
    ALTER DATABASE 数据库名 COLLATE 排序方式;
	修改字符集和排序方式
    ALTER DATABASE 数据库名 CHARACTER SET 字符集 COLLATE 排序方式;
	注意：数据库中没有修改名称的指令，如果你想改名字，备份数据，删除旧库，创建新库，恢复数据即可！
*/