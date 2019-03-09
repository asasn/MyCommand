/*
	主键约束: primary key
	作用:保证该字段 唯一并且不为空
	
	语法:
	***1.在创建表的时候,直接在字段后面添加主键约束
	
	2.在创建表的时候,不直接在字段后面添加主键
			在表的约束区域添加主键
		[constraint 名称] primary key (字段列表)
	3.在创建表时,不写主键
		表创建后,再通过修改表的结构 给某个字段添加主键
	删除主键约束
		ALTER TABLE Persons DROP PRIMARY KEY
*/
# 创建一张表 并且直接给字段添加主键约束
CREATE TABLE books(
	bid INT PRIMARY KEY,						# 主键约束
	bname VARCHAR(50),
	bprice DOUBLE
	
);
SELECT * FROM books;
#插入几条记录
INSERT INTO books VALUES (1,'java菜鸟入门',10.0);
# 因为bid是主键 所以重复数据不能插入
INSERT INTO books VALUES(1,'java高手进阶',20.0);
# 
INSERT INTO books (bname,bprice) VALUES ('java高级工程师颈椎恢复指南',30.0);

INSERT INTO books (bname,bprice) VALUES ('java究极工程师颈椎恢复指南',40.0);

INSERT INTO books VALUES (NULL,'java究极工程师颈椎不恢复指南',50.0);

#删除表
DROP TABLE books;
# 在创建表的时候,不直接在字段后面添加主键
#			在表的约束区域添加主键
CREATE TABLE books(
	bid INT ,
	bname VARCHAR(50),
	bprice DOUBLE,
	# 在这里叫做约束区域
	CONSTRAINT pk_bid PRIMARY KEY(bid)
	
);
#在创建表时,不写主键
		#表创建后,再通过修改表的结构 给某个字段添加主键
CREATE TABLE books(
	bid INT ,
	bname VARCHAR(50),
	bprice DOUBLE
);	

dbtest01books
# 删除主键约束
ALTER TABLE books DROP PRIMARY KEY;
