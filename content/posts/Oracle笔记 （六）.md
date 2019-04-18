---
title: Oracle笔记 （六）
date: 2017-11-26 19:23:25
draft: false
tags: ["oracel"]
---
## 一、相等连接

### 1、三个步骤

A、先列出要显示的列： select ename,job,comm,emp,deptno,dname

B、列出查询的表： from emp,dept

C、列出多表相连条件（主外键）：where emp.deptno=dept.deptno

*注意：如果两个表有同名列，那么前面必须接表名 如： emp.deptno ,如果不是同名字段则表名可以省略*

### 2、inner join 的写法
```SQL
select enaem,job,sal,comm,emp.deptno,dname from emp inner join dept on emp.deptno = dept.deptno;
```
### 3、三表或三表以上的写法
```SQL
select 字段1，字段2 , 字段3 ...from 表1，表2，表3...where 表1.外键 = 表2.主键  and 表1.外键 = 表3.主键 and ...
```
*注意：两个表有一个条件 ，三个表有两个条件 ，四个表有三个条件 以此类推*

## 二、外连接（不等连接）

*左外连接即在内连接的基础上，左边表中有但右边表中没有的记录也以null的形式显示出来，右外连接则反之*

###1、写法1
*(右外连接)*  
```SQL
select ename,d.deptno,dname from emp e,dept d where e.deptno(+) = d.deptno
```
*(左外连接)* 
```SQL
select ename,d.deptno,dname from emp e,dept d where d.deptno = e.deptno(+)    
```
### 2、写法2 
```SQL
select ename,d.deptno,dname from emp e right join dept d on e.deptno = d.deptno  
```