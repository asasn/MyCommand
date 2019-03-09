/*
	DDL之数据库表
	对数据库表进行增删改查
	****增:创建一个表
	create table 表名(
		字段名1 数据类型1(长度) [约束],
		字段名2 数据类型2(长度) [约束]
		);
	删:删除表	
	    drop table 表名;
	查:查看表
	    desc 表名; 		查看一个表的详细信息
	    show tables;	查看所有的表
	改:改名字
	    rename table 表名 to 新表名;

*/
				
CREATE TABLE student(		        #创建一个表,学生表(编号,姓名,年龄)
	sid INT PRIMARY KEY, -- 主键约束
	sname VARCHAR(30),
	sage INT
);

DROP TABLE student;			#删除 student表
DESC students;			        #查看一个表的详细信息
SHOW TABLES;			        #查看所有的表
RENAME TABLE student TO students;       #修改表的名字
SELECT * FROM student
