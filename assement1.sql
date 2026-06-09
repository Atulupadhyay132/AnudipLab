mysql> use e_commerce;
Database changed
mysql> create table employee(id int primary key,name  varchar(50) not null,salary double not null);
Query OK, 0 rows affected (0.15 sec)

mysql> insert into employee values(1,'atul',20000),(2,'jyoti',30000),(3,'Aahutosh',40000),(4,'akash',60000),(5,'ak',50000);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+----+----------+--------+
| id | name     | salary |
+----+----------+--------+
|  1 | atul     |  20000 |
|  2 | jyoti    |  30000 |
|  3 | Aahutosh |  40000 |
|  4 | akash    |  60000 |
|  5 | ak       |  50000 |
+----+----------+--------+
5 rows in set (0.02 sec)

mysql> update employee set salary = 40000 where id = 5;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+----+----------+--------+
| id | name     | salary |
+----+----------+--------+
|  1 | atul     |  20000 |
|  2 | jyoti    |  30000 |
|  3 | Aahutosh |  40000 |
|  4 | akash    |  60000 |
|  5 | ak       |  40000 |
+----+----------+--------+
5 rows in set (0.00 sec)

mysql> update employee set name = 'laxmi' where id = 2;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+----+----------+--------+
| id | name     | salary |
+----+----------+--------+
|  1 | atul     |  20000 |
|  2 | laxmi    |  30000 |
|  3 | Aahutosh |  40000 |
|  4 | akash    |  60000 |
|  5 | ak       |  40000 |
+----+----------+--------+
5 rows in set (0.00 sec)

mysql> rename table employee to emp;
Query OK, 0 rows affected (0.06 sec)

mysql> select * from emp;
+----+----------+--------+
| id | name     | salary |
+----+----------+--------+
|  1 | atul     |  20000 |
|  2 | laxmi    |  30000 |
|  3 | Aahutosh |  40000 |
|  4 | akash    |  60000 |
|  5 | ak       |  40000 |
+----+----------+--------+
5 rows in set (0.00 sec)

mysql> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   | PRI | NULL    |       |
| name   | varchar(50) | NO   |     | NULL    |       |
| salary | double      | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> alter table employee add email varchar(50) not null;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> alter table emp add email varchar(50) not null;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>
mysql> select * from emp;
+----+----------+--------+-------+
| id | name     | salary | email |
+----+----------+--------+-------+
|  1 | atul     |  20000 |       |
|  2 | laxmi    |  30000 |       |
|  3 | Aahutosh |  40000 |       |
|  4 | akash    |  60000 |       |
|  5 | ak       |  40000 |       |
+----+----------+--------+-------+
5 rows in set (0.00 sec)

mysql> update emp set email = 'atul@gmail.com' where id = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+----+----------+--------+----------------+
| id | name     | salary | email          |
+----+----------+--------+----------------+
|  1 | atul     |  20000 | atul@gmail.com |
|  2 | laxmi    |  30000 |                |
|  3 | Aahutosh |  40000 |                |
|  4 | akash    |  60000 |                |
|  5 | ak       |  40000 |                |
+----+----------+--------+----------------+
5 rows in set (0.00 sec)

mysql> insert into emp(email) values('atul@gmail.com''jyoti@gmail.com','atl@gmail.com');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> alter table emp drop column salary;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+----+----------+----------------+
| id | name     | email          |
+----+----------+----------------+
|  1 | atul     | atul@gmail.com |
|  2 | laxmi    |                |
|  3 | Aahutosh |                |
|  4 | akash    |                |
|  5 | ak       |                |
+----+----------+----------------+
5 rows in set (0.00 sec)

mysql> alter table emp modify name varchar(100) not null;
Query OK, 5 rows affected (0.12 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc emp;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id    | int          | NO   | PRI | NULL    |       |
| name  | varchar(100) | NO   |     | NULL    |       |
| email | varchar(50)  | NO   |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table emp rename column id to id_d;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc emp;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id_d  | int          | NO   | PRI | NULL    |       |
| name  | varchar(100) | NO   |     | NULL    |       |
| email | varchar(50)  | NO   |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table emp drop primary key;
Query OK, 5 rows affected (0.11 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc emp;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id_d  | int          | NO   |     | NULL    |       |
| name  | varchar(100) | NO   |     | NULL    |       |
| email | varchar(50)  | NO   |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table emp add constraint primary key(id_d);
Query OK, 0 rows affected (0.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc emp;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id_d  | int          | NO   | PRI | NULL    |       |
| name  | varchar(100) | NO   |     | NULL    |       |
| email | varchar(50)  | NO   |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>