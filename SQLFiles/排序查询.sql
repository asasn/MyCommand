/*
	排序查询:对查询结构进行排序
		关键字:order by 字段名 [ASC|DESC]
		ASC:升序(从小到大),默认的
		DESC:降序(从大到小)
*/
# 查询所有记录的name和price,结构按照价格 从大到小进行排序
SELECT pname,price FROM product ORDER BY price ;   
SELECT pname,price FROM product ORDER BY price DESC;
#1.查询所有商品信息,使用价格排序(降序)
SELECT * FROM product ORDER BY price DESC;

#2.查询所有商品信息,在价格排序(降序)的基础上，以分类排序(降序)
#先将查询结果 在价格上进行降序,如果价格相同再以分类进行降序,如果价格不相同,不在对分类进行排序
SELECT * FROM product ORDER BY price DESC,category_id DESC;

#3.显示商品的价格(去重复)，并排序(降序)
SELECT DISTINCT price FROM product ORDER BY price DESC;