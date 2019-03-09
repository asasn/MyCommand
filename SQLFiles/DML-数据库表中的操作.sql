/*
	DML:数据库操作语言
		主要对表中的数据库进行 增删改
	****增:插入一条记录
		insert into 表名 (列名1,列名2..) values (值1,值2..)
		注意: 1.列名可以在表中选择一列或者几列
			2.后面的值 必须和前面的列 一一对应
			3.在SQL中除了int类型的数据,其他数据必须用''或者""引起来
				我们推荐用单引号
			4.如果要插入的数据所有字段都有,那么以上的
	   		(列名1,列名2..) 可以省略
	****删:删除一条记录
		格式: delete from 表名;					//删除表中的所有记录
			delete from 表名 where条件;
	****改:修改表中的记录信息
		update 表名 set 字段名 = 值;			//把所有记录的该列都改了
		update 表名 set 字段名 = 值 where条件;		
*/
#向students 表中插入一个学生信息(id:001 name:李四 )
INSERT INTO students (sid,NAME) VALUES ('001','李四');
#向students 表中插入一个学生信息(id:002 name:王五 age:18 )
INSERT INTO students (sid,NAME,sage) VALUES ('002','王五',18);
INSERT INTO students VALUES ('003','赵六',28);
#删除students表中的记录
DELETE FROM students;
#删除某一条记录
DELETE FROM students WHERE sid=3;      # 这里条件sid=3不能写成 sid==3,sid.equals(3);
#修改students表,把sage这一列的值 改为20
UPDATE students SET sage=20;
#修改students表,把王五的sage这一列的值 改为 50
UPDATE students SET sage = 50 WHERE NAME='王五';	
SHOW TABLES
SELECT * FROM students;