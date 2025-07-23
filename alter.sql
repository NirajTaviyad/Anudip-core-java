mysql> create database student;
Query OK, 1 row affected (0.06 sec)

mysql> use student;
Database changed
mysql> create table student_info(stud_id int(20) primary key not null,stud_name varchar(10) not null,stud_address varchar(10) not null , stud_age int(10) not null);
Query OK, 0 rows affected, 2 warnings (0.12 sec)

mysql> insert into student_info(stud_id,stud_name,stud_address,stud_age)values('s101','ravi','ahmedabad',20);
ERROR 1366 (HY000): Incorrect integer value: 's101' for column 'stud_id' at row 1
mysql> insert into student_info(stud_id,stud_name,stud_address,stud_age)values(1,'ravi','ahmedabad',20);
Query OK, 1 row affected (0.04 sec)

mysql> insert into student_info values(2,'karan','ahmedabad',21),(3,'vishal','baroda',20),(4,'ishan','gandhinagar',19),(5,'devansh','rajkot',20);
ERROR 1406 (22001): Data too long for column 'stud_address' at row 3
mysql> insert into student_info values(2,'karan','ahmedabad',21),(3,'vishal','baroda',20),(4,'ishan','surat',19),(5,'devansh','rajkot',20);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from student_info;
+---------+-----------+--------------+----------+
| stud_id | stud_name | stud_address | stud_age |
+---------+-----------+--------------+----------+
|       1 | ravi      | ahmedabad    |       20 |
|       2 | karan     | ahmedabad    |       21 |
|       3 | vishal    | baroda       |       20 |
|       4 | ishan     | surat        |       19 |
|       5 | devansh   | rajkot       |       20 |
+---------+-----------+--------------+----------+
5 rows in set (0.00 sec)

mysql> alter table student_info add mobile_number int not null;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_info;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| stud_id       | int         | NO   | PRI | NULL    |       |
| stud_name     | varchar(10) | NO   |     | NULL    |       |
| stud_address  | varchar(10) | NO   |     | NULL    |       |
| stud_age      | int         | NO   |     | NULL    |       |
| mobile_number | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.04 sec)

mysql> alter table student_info drop column  mobile_number;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_info;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| stud_id      | int         | NO   | PRI | NULL    |       |
| stud_name    | varchar(10) | NO   |     | NULL    |       |
| stud_address | varchar(10) | NO   |     | NULL    |       |
| stud_age     | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

mysql> alter table student_info drop primary key;
Query OK, 5 rows affected (0.14 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student_info;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| stud_id      | int         | NO   |     | NULL    |       |
| stud_name    | varchar(10) | NO   |     | NULL    |       |
| stud_address | varchar(10) | NO   |     | NULL    |       |
| stud_age     | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> alter table student_info add constraint stud_id primary key(stud_id);
Query OK, 0 rows affected (0.20 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_info;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| stud_id      | int         | NO   | PRI | NULL    |       |
| stud_name    | varchar(10) | NO   |     | NULL    |       |
| stud_address | varchar(10) | NO   |     | NULL    |       |
| stud_age     | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table student_info rename stud_age to age;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to age' at line 1
mysql> alter table student_info rename stud_address to address;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to address' at line 1
mysql> alter  table student_info modify column stud_address varchar(40);
Query OK, 0 rows affected (0.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_info;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| stud_id      | int         | NO   | PRI | NULL    |       |
| stud_name    | varchar(10) | NO   |     | NULL    |       |
| stud_address | varchar(40) | YES  |     | NULL    |       |
| stud_age     | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table student_info rename stud_address to address not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to address not null' at line 1
mysql> alter  table student_info modify column stud_address varchar(40) not null;
Query OK, 0 rows affected (0.16 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_info;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| stud_id      | int         | NO   | PRI | NULL    |       |
| stud_name    | varchar(10) | NO   |     | NULL    |       |
| stud_address | varchar(40) | NO   |     | NULL    |       |
| stud_age     | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)