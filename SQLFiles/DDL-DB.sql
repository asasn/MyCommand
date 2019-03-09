/*
	DDL:数据库定义语言
		主要是操作数据库,操作数据库表
		对数据库进行增删改查
	****增:创建一个数据库
		create database 数据库名;    //默认编号,安装的时候您选择的那个编号
		create database 数据库名 charset 编码;
	删:
		drop database 数据库名; 删除一个数据库
	修:修改数据库名字很麻烦 		
		use 数据库名;  		修改正在使用的数据库
	查:	 
		select database();      查询正在使用的数据库:	  
		show databases;   	查询所有的数据库
*/
CREATE DATABASE dbtest02;		    # 创建一个数据库,默认编码,安装的时候您选择的那个编码
CREATE DATABASE dbtest01 CHARSET GBK ;      # 创建一个指定编码的数据库	
DROP DATABASE dbtest;		            # 删除一个数据库
SHOW DATABASES;	    		   	    # 查询所有的数据库
SELECT DATABASE();  			    # 查询正在使用的数据库:
SHOW CREATE DATABASE dbtest02	    	    # 查询一个数据库的信息	