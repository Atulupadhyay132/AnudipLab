/*Create Database StudentManagementSystem

1.Create Table student

with attribute  StudentID (Primary Key)
Name
Age
Address

2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback
Add 5 Records in table*/





mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.03 sec)

mysql> use StudentManagementSystem;
Database changed

mysql> create table student(studentid varchar(50) primary key,name varchar(50) not null,age int not null,address varchar(50) not null);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into student values(1,'atul',20,'thane'),(2,'jyoti',21,'airoli'),(3,'Aashutosh',22,'turba');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from student;
+-----------+-----------+-----+---------+
| studentid | name      | age | address |
+-----------+-----------+-----+---------+
| 1         | atul      |  20 | thane   |
| 2         | jyoti     |  21 | airoli  |
| 3         | Aashutosh |  22 | turba   |
+-----------+-----------+-----+---------+
3 rows in set (0.02 sec)

 create table feedback(feedbackid varchar(50) primary key,studentid varchar(50),date datetime not null,instructorname varchar(50) not null,feedback varchar(50) not null,foreign key(studentid) references student(studentid));
Query OK, 0 rows affected (0.17 sec)

 mysql> insert into feedback values(11,1,'2026-04-02','vinay','customerservice'),(12,2,'2026-05-01','arya','service'),(13,3,'2026-05-06','rahul','studynice');
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+------------+-----------+---------------------+----------------+-----------------+
| feedbackid | studentid | date                | instructorname | feedback        |
+------------+-----------+---------------------+----------------+-----------------+
| 11         | 1         | 2026-04-02 00:00:00 | vinay          | customerservice |
| 12         | 2         | 2026-05-01 00:00:00 | arya           | service         |
| 13         | 3         | 2026-05-06 00:00:00 | rahul          | studynice       |
+------------+-----------+---------------------+----------------+-----------------+
3 rows in set (0.00 sec)

mysql> insert into student(studentid,name,age,address)values(4,'aakash',43,'mulun'),(5,'akash',63,'kalyan');
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from student;
+-----------+-----------+-----+---------+
| studentid | name      | age | address |
+-----------+-----------+-----+---------+
| 1         | atul      |  20 | thane   |
| 2         | jyoti     |  21 | airoli  |
| 3         | Aashutosh |  22 | turba   |
| 4         | aakash    |  43 | mulun   |
| 5         | akash     |  63 | kalyan  |
+-----------+-----------+-----+---------+
5 rows in set (0.00 sec)

mysql> insert into feedback(feedbackid,studentid,date,instructorname,feedback)values(14,4,'2026-04-09','laxmi','goodbehaviour');
Query OK, 1 row affected (0.03 sec)

mysql> insert into feedback(feedbackid,studentid,date,instructorname,feedback)values(15,5,'2026-07-04','swati','behaviour');
Query OK, 1 row affected (0.04 sec)

mysql> select * from feedback;
+------------+-----------+---------------------+----------------+-----------------+
| feedbackid | studentid | date                | instructorname | feedback        |
+------------+-----------+---------------------+----------------+-----------------+
| 11         | 1         | 2026-04-02 00:00:00 | vinay          | customerservice |
| 12         | 2         | 2026-05-01 00:00:00 | arya           | service         |
| 13         | 3         | 2026-05-06 00:00:00 | rahul          | studynice       |
| 14         | 4         | 2026-04-09 00:00:00 | laxmi          | goodbehaviour   |
| 15         | 5         | 2026-07-04 00:00:00 | swati          | behaviour       |
+------------+-----------+---------------------+----------------+-----------------+
5 rows in set (0.01 sec)