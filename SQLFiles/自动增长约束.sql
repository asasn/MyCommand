/*
	自动增长约束: auto_increment
	作用: 把该字段的值 交给 数据库去维护
		数据库默认每次增加1
	给某个字段添加自动增长约束 (该字段必须是一种键,一般来说是主键)
	*** 1.在创建表的同时,直接在字段后面添加自动增长约束
	2.创建表之后,添加自动增长约束
		ALTER TABLE books MODIFY bid INT  AUTO_INCREMENT;
	删除自动增长约束
		ALTER TABLE books MODIFY bid INT ;		
*/

#删除books
DROP TABLE books;
#.在创建表的同时,直接在字段后面添加自动增长约束
CREATE TABLE books(
	bid INT PRIMARY KEY AUTO_INCREMENT,
	bname VARCHAR(50)
);

#添加记录
INSERT INTO books(bname) VALUES ('java入门');
INSERT INTO books VALUES(NULL,'php入门');
INSERT INTO books(bname) VALUES ('android'),('iOS'),('winphone');

#删除表
DROP TABLE books;
#创建表之后,添加自动增长约束
CREATE TABLE books(
	bid INT PRIMARY KEY ,
	bname VARCHAR(50)
);
#check the manual that corresponds to your MySQL server version for the right syntax to use near 'AUTO_INCREMENT(bid)' at line 1
# 这种方式竟然不行
ALTER TABLE books ADD CONSTRAINT ai_bid AUTO_INCREMENT(bid);
# 使用以下方式
ALTER TABLE books MODIFY bid INT  AUTO_INCREMENT;
# 删除自动增长约束
ALTER TABLE books MODIFY bid INT ;

# 添加记录
INSERT INTO books VALUES(NULL,'aaa');
INSERT INTO books(bname) VALUES('aaa');
INSERT INTO books VALUES(100,'bbb');
INSERT INTO books VALUES(NULL,'bbb');
INSERT INTO books(bname) VALUES('bbb');
ALTER TABLE books AUTO_INCREMENT=130;   # AUTO_INCREMENT 的开始值默认是1，如果希望修改起始值，可用此行SQL语句
SELECT * FROM books;