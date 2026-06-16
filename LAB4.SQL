
mysql> -- 1. Create Database
mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> -- 2. Use Database
mysql> USE StudentManagementSystem;
Database changed
mysql>
mysql> -- 3. Create Student Table
mysql> CREATE TABLE Student (
    ->     StudentId INT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> -- 4. Create Course Table
mysql> CREATE TABLE Course (
    ->     CourseId INT PRIMARY KEY,
    ->     CourseName VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> -- 5. Create Enrollment Table (with Foreign Keys)
mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT PRIMARY KEY,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentId),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseId)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql>
mysql> -- 6. Insert Data into Student
mysql> INSERT INTO Student VALUES
    -> (1, 'Amit', 'Sharma'),
    -> (2, 'Riya', 'Verma'),
    -> (3, 'John', 'Doe');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> -- 7. Insert Data into Course
mysql> INSERT INTO Course VALUES
    -> (101, 'SQL'),
    -> (102, 'Python'),
    -> (103, 'Java');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> -- 8. Insert Data into Enrollment
mysql> INSERT INTO Enrollment VALUES
    -> (1, 1, 101),
    -> (2, 1, 102),
    -> (3, 2, 103),
    -> (4, 3, 101);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT
    ->     s.StudentId,
    ->     s.FirstName,
    ->     s.LastName,
    ->     c.CourseId,
    ->     c.CourseName
    -> FROM Enrollment e
    -> INNER JOIN Student s ON e.StudentID = s.StudentId
    -> INNER JOIN Course c ON e.CourseID = c.CourseId;
+-----------+-----------+----------+----------+------------+
| StudentId | FirstName | LastName | CourseId | CourseName |
+-----------+-----------+----------+----------+------------+
|         1 | Amit      | Sharma   |      101 | SQL        |
|         1 | Amit      | Sharma   |      102 | Python     |
|         2 | Riya      | Verma    |      103 | Java       |
|         3 | John      | Doe      |      101 | SQL        |
+-----------+-----------+----------+----------+------------+
4 rows in set (0.00 sec)

