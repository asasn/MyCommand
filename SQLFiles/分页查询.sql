/*
分页查询:
	只查询记录中的一部分
	关键字: limit 数值1(下标,从0开始),数值2(需要查出来记录数，即每次(页)显示的记录数)
*/
SELECT * FROM product LIMIT 0,5;
SELECT * FROM product LIMIT 5,5;
SELECT * FROM product LIMIT 10,5;

# 查询的公式: 假设每一页我要查询 n条 
# 第1页 limit (1-1)*n,n ,即0，n
# 第2页 limit (2-1)n,n
# 第100页 limit (100-1)*n,n
# 第m页 limit (m-1)*n,n


