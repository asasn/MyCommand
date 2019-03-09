/*
	默认约束: default
	作用: 给该字段添加一个默认值(如果添加记录时,没赋值的话)
	语法:
	***1.在创建表时 直接在字段后添加默认约束
	2.在创建表之后,通过修改表的结构添加
	  ALTER TABLE 表名 MODIFY 字段名 VARCHAR(255) DEFAULT 默认值 
*/
#在创建表时 直接在字段后添加默认约束
CREATE TABLE books(
	bid INT PRIMARY KEY AUTO_INCREMENT,
	bname VARCHAR(50) DEFAULT 'java入门'	
);

SELECT COUNT(*) FROM books;

#添加数据
INSERT INTO books VALUES();

INSERT INTO books VALUES(NULL,'php入门');

#在创建表之后,通过修改表的结构添加
CREATE TABLE books(
	bid INT PRIMARY KEY AUTO_INCREMENT,
	bname VARCHAR(50)	
);
ALTER TABLE books MODIFY bname VARCHAR(50) DEFAULT 'java入门';
