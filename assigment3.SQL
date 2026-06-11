mysql> use ak;
Database changed
mysql> create table info(empid int not null,empsalary double not null,empaddress int not null,empname varchar(50) not null);
Query OK, 0 rows affected (0.08 sec)
mysql> use ak;
Database changed
mysql> create table info(empid int not null,empsalary double not null,empaddress int not null,empname varchar(50) not null);
Query OK, 0 rows affected (0.08 sec)


mysql> create table info(empid int not null,empsalary double not null,empaddress varchar(50) not null,empname varchar(50) not null);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into info values(1,20000,'vijay','atul'),(2,30000,'vijaynagar','jyoti'),(3,40000,'diva','aashutosh'),(4,50000,'airoli','laxmi');
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql>
mysql> select * from info;
+-------+-----------+------------+-----------+
| empid | empsalary | empaddress | empname   |
+-------+-----------+------------+-----------+
|     1 |     20000 | vijay      | atul      |
|     2 |     30000 | vijaynagar | jyoti     |
|     3 |     40000 | diva       | aashutosh |
|     4 |     50000 | airoli     | laxmi     |
+-------+-----------+------------+-----------+
4 rows in set (0.00 sec)

mysql> select empname,count(*) from info group by empname;
+-----------+----------+
| empname   | count(*) |
+-----------+----------+
| atul      |        1 |
| jyoti     |        1 |
| aashutosh |        1 |
| laxmi     |        1 |
+-----------+----------+
4 rows in set (0.00 sec)

mysql> select empsalary,sum(empsalary) from info group by empsalary;
+-----------+----------------+
| empsalary | sum(empsalary) |
+-----------+----------------+
|     20000 |          20000 |
|     30000 |          30000 |
|     40000 |          40000 |
|     50000 |          50000 |
+-----------+----------------+
4 rows in set (0.00 sec)

mysql> select empname,avg(empsalary) from info group by empname;
+-----------+----------------+
| empname   | avg(empsalary) |
+-----------+----------------+
| atul      |          20000 |
| jyoti     |          30000 |
| aashutosh |          40000 |
| laxmi     |          50000 |
+-----------+----------------+
4 rows in set (0.00 sec)

mysql> select empname,max(empsalary) from info group by empname;
+-----------+----------------+
| empname   | max(empsalary) |
+-----------+----------------+
| atul      |          20000 |
| jyoti     |          30000 |
| aashutosh |          40000 |
| laxmi     |          50000 |
+-----------+----------------+
4 rows in set (0.02 sec)

mysql> select empname,min(empsalary) from info group by empname having min(empsalary)>10000;
+-----------+----------------+
| empname   | min(empsalary) |
+-----------+----------------+
| atul      |          20000 |
| jyoti     |          30000 |
| aashutosh |          40000 |
| laxmi     |          50000 |
+-----------+----------------+
4 rows in set (0.02 sec)

mysql> select empname,min(empsalary) from info group by empname having min(empsalary)>100000;
Empty set (0.00 sec)

mysql>