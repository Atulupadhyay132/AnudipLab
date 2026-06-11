/*Task Description	
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order*/



mysql> create database studentinfo;
Query OK, 1 row affected (0.03 sec)

mysql> use studentinfo;
Database changed
mysql> create table stu(stu_id int not null primary key,first_name varchar(50) not null,last_name varchar(50) not null,age int not null,phoneno double not null,address varchar(50) not null);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into stu values(1,'atul','upadhyay',20,9167435451,'vijay'),(2,'jyoti','mourya',21,9167765451,'diva'),(3,'aashutosh','tiwari',20,9156435451,'vijay'),(4,'aasifa','shika',30,9144435451,'pakistan'),(5,'shilpa','mourya',40,9156435451,'vijay');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> student * from stu;

+--------+------------+-----------+-----+------------+----------+
| stu_id | first_name | last_name | age | phoneno    | address  |
+--------+------------+-----------+-----+------------+----------+
|      1 | atul       | upadhyay  |  20 | 9167435451 | vijay    |
|      2 | jyoti      | mourya    |  21 | 9167765451 | diva     |
|      3 | aashutosh  | tiwari    |  20 | 9156435451 | vijay    |
|      4 | aasifa     | shika     |  30 | 9144435451 | pakistan |
|      5 | shilpa     | mourya    |  40 | 9156435451 | vijay    |
+--------+------------+-----------+-----+------------+----------+
5 rows in set (0.00 sec)

mysql> select * from stu order  by last_name;
+--------+------------+-----------+-----+------------+----------+
| stu_id | first_name | last_name | age | phoneno    | address  |
+--------+------------+-----------+-----+------------+----------+
|      2 | jyoti      | mourya    |  21 | 9167765451 | diva     |
|      5 | shilpa     | mourya    |  40 | 9156435451 | vijay    |
|      4 | aasifa     | shika     |  30 | 9144435451 | pakistan |
|      3 | aashutosh  | tiwari    |  20 | 9156435451 | vijay    |
|      1 | atul       | upadhyay  |  20 | 9167435451 | vijay    |
+--------+------------+-----------+-----+------------+----------+
5 rows in set (0.00 sec)

mysql>