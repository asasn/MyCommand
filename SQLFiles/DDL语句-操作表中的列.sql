/*
	DDL之修改表中的列  增删改查
	增:增加一个列
		alter table 表名 add 列名 类型(长度) [约束]
	删:删除一个列
		alter table 表名 drop 列名;
	查:查看表的数据结构
		desc 表名;
	改:修改列
		可以修改的名字,类型,约束等..
		修改列名:
		alter table 表名 change 旧列名 新列名 类型(长度) 约束; 
		修改列的类型和约束
		alter table 表名 modify 列名 类型(长度) 约束;
		修改表的字符集
		alter table 表名 character set 字符集;(一般不修改)	
*/

ALTER TABLE students ADD phone VARCHAR(30);		#给students表 添加一列 "电话"
ALTER TABLE students DROP phone;			#把students表中 "电话"这一列删除
DESC students;						#查看students表有多少列 分别是什么
ALTER TABLE students CHANGE sname NAME VARCHAR(30);	#修改列名
ALTER TABLE students MODIFY NAME VARCHAR(50);		#修改列的类型和约束
SELECT * FROM students
ALTER TABLE students MODIFY NAME VARCHAR(35);
