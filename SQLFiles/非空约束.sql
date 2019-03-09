/*
	非空约束: not null
	作用:被not null约束的字段 不能为null值
	语法:
	*** 1. 在创建表时,直接在字段后添加非空约束
	2.在创建表之后,通过修改表的结构
	ALTER TABLE 表名 MODIFY 字段 varchar(255) NOT NULL
	删除非空约束
	ALTER TABLE 表名 MODIFY 字段 varchar(255) 
*/
#删除
DROP TABLE books;
# 在创建表时,直接在字段后添加非空约束
CREATE TABLE books(
	bid INT PRIMARY KEY ,
	bname VARCHAR(50) NOT NULL
);

INSERT INTO books VALUES(1,NULL);
INSERT INTO books VALUES(1,'null')
INSERT INTO books VALUES(2,'')
#.在创建表之后,通过修改表的结构
CREATE TABLE books(
	bid INT PRIMARY KEY ,
	bname VARCHAR(50)
);
ALTER TABLE books MODIFY bname VARCHAR(50) NOT NULL;
#删除非空 
ALTER TABLE books MODIFY bname VARCHAR(50);
