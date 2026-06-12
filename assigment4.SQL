mysql> -- Create Database
mysql> CREATE DATABASE joints;
Query OK, 1 row affected (0.06 sec)

mysql>
mysql> -- Use Database
mysql> USE joints;
Database changed
mysql>
mysql> -- Create Department Table
mysql> CREATE TABLE Department (
    ->     DepartmentID INT PRIMARY KEY,
    ->     DepartmentName VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql>
mysql> -- Insert 4 Records into Department Table
mysql> INSERT INTO Department VALUES
    -> (1, 'HR'),
    -> (2, 'IT'),
    -> (3, 'Finance'),
    -> (4, 'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Create Employee Table
mysql> CREATE TABLE Employee (
    ->     EmployeeID INT PRIMARY KEY,
    ->     EmployeeName VARCHAR(50),
    ->     DepartmentID INT,
    ->     FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> -- Insert 5 Records into Employee Table
mysql> INSERT INTO Employee VALUES
    -> (101, 'Rahul', 1),
    -> (102, 'Amit', 2),
    -> (103, 'Priya', 2),
    -> (104, 'Neha', 3),
    -> (105, 'Karan', 4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Display Department Table
mysql> SELECT * FROM Department;
+--------------+----------------+
| DepartmentID | DepartmentName |
+--------------+----------------+
|            1 | HR             |
|            2 | IT             |
|            3 | Finance        |
|            4 | Marketing      |
+--------------+----------------+
4 rows in set (0.00 sec)

mysql>
mysql> -- Display Employee Table
mysql> SELECT * FROM Employee;
+------------+--------------+--------------+
| EmployeeID | EmployeeName | DepartmentID |
+------------+--------------+--------------+
|        101 | Rahul        |            1 |
|        102 | Amit         |            2 |
|        103 | Priya        |            2 |
|        104 | Neha         |            3 |
|        105 | Karan        |            4 |
+------------+--------------+--------------+
5 rows in set (0.02 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| EmployeeID   | int         | NO   | PRI | NULL    |       |
| EmployeeName | varchar(50) | YES  |     | NULL    |       |
| DepartmentID | int         | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

mysql> select DepartmentName,EmployeeName from Employee inner join Department on Employee.DepartmentID = Department.DepartmentID;
+----------------+--------------+
| DepartmentName | EmployeeName |
+----------------+--------------+
| HR             | Rahul        |
| IT             | Amit         |
| IT             | Priya        |
| Finance        | Neha         |
| Marketing      | Karan        |
+----------------+--------------+
5 rows in set (0.00 sec)

mysql> select DepartmentName,EmployeeName from Employee left join Department on Employee.DepartmentID = Department.DepartmentID;
+----------------+--------------+
| DepartmentName | EmployeeName |
+----------------+--------------+
| HR             | Rahul        |
| IT             | Amit         |
| IT             | Priya        |
| Finance        | Neha         |
| Marketing      | Karan        |
+----------------+--------------+
5 rows in set (0.02 sec)

mysql> select DepartmentName,EmployeeName from Employee right join Department on Employee.DepartmentID = Department.DepartmentID;
+----------------+--------------+
| DepartmentName | EmployeeName |
+----------------+--------------+
| HR             | Rahul        |
| IT             | Amit         |
| IT             | Priya        |
| Finance        | Neha         |
| Marketing      | Karan        |
+----------------+--------------+
5 rows in set (0.00 sec)

mysql> select DepartmentName,EmployeeName from Employee cross join Department;
+----------------+--------------+
| DepartmentName | EmployeeName |
+----------------+--------------+
| Marketing      | Rahul        |
| Finance        | Rahul        |
| IT             | Rahul        |
| HR             | Rahul        |
| Marketing      | Amit         |
| Finance        | Amit         |
| IT             | Amit         |
| HR             | Amit         |
| Marketing      | Priya        |
| Finance        | Priya        |
| IT             | Priya        |
| HR             | Priya        |
| Marketing      | Neha         |
| Finance        | Neha         |
| IT             | Neha         |
| HR             | Neha         |
| Marketing      | Karan        |
| Finance        | Karan        |
| IT             | Karan        |
| HR             | Karan        |
+----------------+--------------+
20 rows in set (0.02 sec)

mysql>