mysql> create database bank1;
Query OK, 1 row affected (0.04 sec)

mysql> use bank1;
Database changed

mysql> insert into BankAccount values(1,'atul',20000),(2,'sanika',10000),(3,'aashutosh',40000),(4,'jyoti',80000),(5,'atul',20000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | atul                |           20000 |
|          2 | sanika              |           10000 |
|          3 | aashutosh           |           40000 |
|          4 | jyoti               |           80000 |
|          5 | atul                |           20000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| atul                |           20000 |
| sanika              |           10000 |
| aashutosh           |           40000 |
| jyoti               |           80000 |
| atul                |           20000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from BankAccount where account_balance>30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| aashutosh           |           40000 |
| jyoti               |           80000 |
+---------------------+-----------------+
2 rows in set (0.02 sec)

mysql> update BankAccount set account_balance=1000 where account_id = 1;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | atul                |            1000 |
|          2 | sanika              |           10000 |
|          3 | aashutosh           |           40000 |
|          4 | jyoti               |           80000 |
|          5 | atul                |           20000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql>