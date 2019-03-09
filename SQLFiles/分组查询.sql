/*
	分组查询:
		把查询数据分为几个组
		关键字: group by 字段
		
		先分组,再查询,具体查询到的结果数,取决于能分多少组		
		如果分组后 还有需要条件判断 那么请用having关键字
		
		where和having的区别:		
		where 写在 基本查询后面的
		having 写在 分组查询后面的		
		where后面是不能写 count sum等聚合函数
		having后面可以写count和sum等聚合函数		
*/

#查询所有以category_id分组后的价格的总和
# 具体有多少个总和 取决于可以分多少组
SELECT SUM(price) FROM product GROUP BY category_id;

#0 统计所有商品的个数
SELECT COUNT(*) FROM product;

#1 统计各个分类商品的个数
SELECT COUNT(*),category_id FROM product GROUP BY category_id;

#2 统计各个分类商品的个数,且只显示个数大于1的信息
SELECT category_id, COUNT(*) 个数  FROM product  GROUP BY category_id  HAVING 个数 > 1;

