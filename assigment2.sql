mysql> use customer;
Database changed
mysql> select * from customer;
+-------------+-----------+---------+------------------+------------+--------------+----------+
| customer_id | name      | city    | email            | phone_no   | address      | pin_code |
+-------------+-----------+---------+------------------+------------+--------------+----------+
| 1           | atul      | mumbai  | atul@gmail.com   | 9167435451 | vijayngar    |   400708 |
| 2           | atul      | mumbai  | atul@gmail.com   | 9167435451 | vijayngar    |   400708 |
| 3           | aashutosh | thane   | ashu@gmail.com   | 9167434551 | vishnungar   |   400708 |
| 4           | shail     | nadekar | vishal@gmail.com | 9156435451 | shankaryngar |   400708 |
| 6           | jyoti     | diva    | jyoti@gmail.com  | 9145635451 | anyyngar     |   400708 |
+-------------+-----------+---------+------------------+------------+--------------+----------+
5 rows in set (0.02 sec)

mysql> select * from customer order by city;
+-------------+-----------+---------+------------------+------------+--------------+----------+
| customer_id | name      | city    | email            | phone_no   | address      | pin_code |
+-------------+-----------+---------+------------------+------------+--------------+----------+
| 6           | jyoti     | diva    | jyoti@gmail.com  | 9145635451 | anyyngar     |   400708 |
| 1           | atul      | mumbai  | atul@gmail.com   | 9167435451 | vijayngar    |   400708 |
| 2           | atul      | mumbai  | atul@gmail.com   | 9167435451 | vijayngar    |   400708 |
| 4           | shail     | nadekar | vishal@gmail.com | 9156435451 | shankaryngar |   400708 |
| 3           | aashutosh | thane   | ashu@gmail.com   | 9167434551 | vishnungar   |   400708 |
+-------------+-----------+---------+------------------+------------+--------------+----------+
5 rows in set (0.02 sec)

mysql> select * from customer order by phone_no asc limit 2;
+-------------+-------+---------+------------------+------------+--------------+----------+
| customer_id | name  | city    | email            | phone_no   | address      | pin_code |
+-------------+-------+---------+------------------+------------+--------------+----------+
| 6           | jyoti | diva    | jyoti@gmail.com  | 9145635451 | anyyngar     |   400708 |
| 4           | shail | nadekar | vishal@gmail.com | 9156435451 | shankaryngar |   400708 |
+-------------+-------+---------+------------------+------------+--------------+----------+
2 rows in set (0.00 sec)

mysql> seleect * from customer where name between 'jyoti' and 'aasutosh';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seleect * from customer where name between 'jyoti' and 'aasutosh'' at line 1
mysql> seleect * from customer where name between 'jyoti' and 'aashutosh';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seleect * from customer where name between 'jyoti' and 'aashutosh'' at line 1
mysql>
mysql> select * from customer where name between 'jyoti' and 'aashutosh';
Empty set (0.02 sec)

mysql>
mysql> select * from customer where city between 'diva' and 'thane';
+-------------+-----------+---------+------------------+------------+--------------+----------+
| customer_id | name      | city    | email            | phone_no   | address      | pin_code |
+-------------+-----------+---------+------------------+------------+--------------+----------+
| 1           | atul      | mumbai  | atul@gmail.com   | 9167435451 | vijayngar    |   400708 |
| 2           | atul      | mumbai  | atul@gmail.com   | 9167435451 | vijayngar    |   400708 |
| 3           | aashutosh | thane   | ashu@gmail.com   | 9167434551 | vishnungar   |   400708 |
| 4           | shail     | nadekar | vishal@gmail.com | 9156435451 | shankaryngar |   400708 |
| 6           | jyoti     | diva    | jyoti@gmail.com  | 9145635451 | anyyngar     |   400708 |
+-------------+-----------+---------+------------------+------------+--------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer in(1,3,6);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'in(1,3,6)' at line 1
mysql> select * from customer where in(1,3,6);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'in(1,3,6)' at line 1
mysql> select * from customer where customer_id IN(1,3,6);
+-------------+-----------+--------+-----------------+------------+------------+----------+
| customer_id | name      | city   | email           | phone_no   | address    | pin_code |
+-------------+-----------+--------+-----------------+------------+------------+----------+
| 1           | atul      | mumbai | atul@gmail.com  | 9167435451 | vijayngar  |   400708 |
| 3           | aashutosh | thane  | ashu@gmail.com  | 9167434551 | vishnungar |   400708 |
| 6           | jyoti     | diva   | jyoti@gmail.com | 9145635451 | anyyngar   |   400708 |
+-------------+-----------+--------+-----------------+------------+------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not null;
+-------------+-----------+---------+------------------+------------+--------------+----------+
| customer_id | name      | city    | email            | phone_no   | address      | pin_code |
+-------------+-----------+---------+------------------+------------+--------------+----------+
| 1           | atul      | mumbai  | atul@gmail.com   | 9167435451 | vijayngar    |   400708 |
| 2           | atul      | mumbai  | atul@gmail.com   | 9167435451 | vijayngar    |   400708 |
| 3           | aashutosh | thane   | ashu@gmail.com   | 9167434551 | vishnungar   |   400708 |
| 4           | shail     | nadekar | vishal@gmail.com | 9156435451 | shankaryngar |   400708 |
| 6           | jyoti     | diva    | jyoti@gmail.com  | 9145635451 | anyyngar     |   400708 |
+-------------+-----------+---------+------------------+------------+--------------+----------+
5 rows in set (0.00 sec)

mysql>
mysql> select distinct city from customer;
+---------+
| city    |
+---------+
| mumbai  |
| thane   |
| nadekar |
| diva    |
+---------+
4 rows in set (0.02 sec)

mysql>