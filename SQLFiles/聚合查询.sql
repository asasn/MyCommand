/*
	聚合查询:
		以前的查询都是横向记录查询
		而聚合查询是 纵向个数查询
			聚合查询的特点:查询到的结构 是单一值
		
		聚合函数:
		count:求记录数的聚合函数,count函数会自动忽略空值
		以下四个,通常用于数值的计算
		max:求最大值
		min:求最小值
		avg:求平均值
		sum:求和
*/

#查询统计多有商品的个数
SELECT COUNT(*) FROM product;
#查询统计一共有多少个分类(去重)
SELECT COUNT(DISTINCT category_id) FROM product;
#查询所有商品价格的最大值
SELECT MAX(price) FROM product;
#查询所有商品价格的最小值
SELECT MIN(price) FROM product;
#查询所有商品价格的最平均值
SELECT AVG(price) FROM product;

#查询所有商品价格的总值
SELECT SUM(price) FROM product;

# 同时查询所有商品价格的个数，最大值，最小值，平均值，总和,并且起别名
SELECT COUNT(price) AS 计数,MAX(price) AS 最大值 ,MIN(price) 最小值,AVG(price) 平均值,SUM(price) 总和 FROM product;

SELECT * FROM product;