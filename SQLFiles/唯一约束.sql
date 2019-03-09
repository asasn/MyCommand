/*
	唯一约束: unique
	作用:保证该字段 唯一,可以为null
	给字段添加唯一约束
	
	***1.在创建表时,直接在字段后面写上唯一约束
	2.创建表时，在约束区域，声明唯一约束：
	3. 创建表后,给表的字段添加唯一约束
	删除唯一约束:
	alter table 表名 drop unique(约束名);
		如果添加唯一约束的时候 没有给唯一约束起名字 那么默认是字段名
*/
# 在创建表时,直接在字段后面写上唯一约束
CREATE TABLE books(
	bid INT UNIQUE,
	bname VARCHAR(50),
	bprice DOUBLE	
);

#删除表
DROP TABLE books;
DESC books;
#创建表时，在约束区域，声明唯一约束：
CREATE TABLE books(
	bid INT ,
	bname VARCHAR(50),
	bprice DOUBLE,
	# 在约束区域 声明唯一约束
	CONSTRAINT unique_bid UNIQUE(bid)
	
);

#创建表后,给表的字段添加唯一约束
CREATE TABLE books(
	bid INT ,
	bname VARCHAR(50),
	bprice DOUBLE
	
);

# 通过修改表的结构 添加唯一约束
ALTER TABLE books ADD CONSTRAINT unique_bid UNIQUE(bid);
# 删除唯一约束
ALTER TABLE books DROP INDEX unique_bid;

