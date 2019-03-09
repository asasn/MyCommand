CREATE TABLE product(
	pid INT PRIMARY KEY,
	pname VARCHAR(20),
	price DOUBLE,
	category_id VARCHAR(32)
);
INSERT INTO product(pid,pname,price,category_id) VALUES(1,'联想',5000,'c001');
INSERT INTO product(pid,pname,price,category_id) VALUES(2,'海尔',3000,'c001');
INSERT INTO product(pid,pname,price,category_id) VALUES(3,'雷神',5000,'c001');
INSERT INTO product(pid,pname,price,category_id) VALUES(4,'JACK JONES',800,'c002');
INSERT INTO product(pid,pname,price,category_id) VALUES(5,'真维斯',200,'c002');
INSERT INTO product(pid,pname,price,category_id) VALUES(6,'花花公子',440,'c002');
INSERT INTO product(pid,pname,price,category_id) VALUES(7,'劲霸',2000,'c002');
INSERT INTO product(pid,pname,price,category_id) VALUES(8,'香奈儿',800,'c003');
INSERT INTO product(pid,pname,price,category_id) VALUES(9,'相宜本草',200,'c003');
INSERT INTO product(pid,pname,price,category_id) VALUES(10,'面霸',5,'c003');
INSERT INTO product(pid,pname,price,category_id) VALUES(11,'好想你枣',56,'c004');
INSERT INTO product(pid,pname,price,category_id) VALUES(12,'香飘飘奶茶',1,'c005');
INSERT INTO product(pid,pname,price,category_id) VALUES(13,'果9',1,NULL);

SHOW TABLES
DESC product

SELECT * FROM product;					# 查询所有的商品.
SELECT pname,price FROM product;		# 查询商品名和商品价格				
SELECT DISTINCT price FROM product;		# 去掉价格重复值
SELECT price+10 FROM product;			# 查询结果是表达式（运算查询）：将所有商品的价格+10元进行显示.
# 5.别名查询.使用的关键字是as（as可以省略的）.
SELECT price+10 AS 打折价格 FROM product;
SELECT price+10 打折价格 FROM product;

-- 	条件查询练习
#查询商品名称为“花花公子”的商品所有信息：
SELECT * FROM product WHERE pname='花花公子'

#查询价格为800商品
SELECT * FROM product WHERE price=800;

#查询价格不是800的所有商品
SELECT * FROM product WHERE price <> 800;
SELECT * FROM product WHERE price > 800 OR price < 800;
SELECT * FROM product WHERE NOT (price=800);

#查询商品价格大于60元的所有商品信息
SELECT * FROM product WHERE price > 60;
SELECT * FROM product WHERE NOT (price <= 60);

#查询商品价格在200到1000之间所有商品
SELECT * FROM product  WHERE price >= 200 AND price <=1000;
SELECT * FROM product  WHERE price BETWEEN 200 AND 1000;

#查询商品价格是200或800的所有商品
SELECT * FROM product WHERE price IN (200,800);
SELECT * FROM product  WHERE price = 200 OR price = 800;

#查询含有'霸'字的所有商品
SELECT * FROM product WHERE pname  LIKE '%霸%';
#查询以'香'开头的所有商品
SELECT * FROM product WHERE pname LIKE '香%';

#查询第二个字为'想'的所有商品
SELECT * FROM product WHERE pname LIKE '_想%';

#查询没有分类的商品
SELECT * FROM product WHERE category_id IS NULL;
#SELECT * FROM product where category_id = null;# 错误的 判断空 不能用"="

#查询有分类的商品
SELECT * FROM product WHERE category_id IS NOT NULL;
#SELECT * FROM product WHERE category_id <> NULL;# 错误的 判断不为空 不用"<>"

#查询所有价格大于2000的电脑商品(catetory_id是c001)
#或者价格大于2000的服装商品(catetory_id是c002)**
SELECT * FROM product WHERE (price > 2000 AND category_id = 'c001') 
		OR (price > 2000 AND category_id = 'c002');		
SELECT * FROM product WHERE price > 2000 AND category_id IN ('c001','c002');
		
















