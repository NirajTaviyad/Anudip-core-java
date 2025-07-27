mysql> create database data;
Query OK, 1 row affected (1.296 sec)

mysql> use data;
Database changed

mysql> create table customer(customer_id int primary key not null,first_name varchar(10) not null,last_name varchar(10) not null);
Query OK, 0 rows affected (1.801 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | int         | NO   | PRI | NULL    |       |
| first_name  | varchar(10) | NO   |     | NULL    |       |
| last_name   | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
mysql> create table orders(order_id int primary key not null,customer_id int not null,order_date date not null,total_amount int not null,foreign key(customer_id) references customer(customer_id));
Query OK, 0 rows affected (1.501 sec)

mysql> desc orders;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| order_id     | int  | NO   | PRI | NULL    |       |
| customer_id  | int  | NO   | MUL | NULL    |       |
| order_date   | date | NO   |     | NULL    |       |
| total_amount | int  | NO   |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
4 rows in set (0.289 sec)


mysql> insert into customer values (1,'niraj','tavitad');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer values (2,'karan','rabari');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer values (3,'harsh','rathod');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer values (4,'ishan','thakkar');
Query OK, 1 row affected (0.04 sec)

mysql> insert into orders values (1,4,"2025-7-6",2000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into orders values (2,2,"2025-7-12",1500);
Query OK, 1 row affected (0.04 sec)

mysql> insert into orders values (3,1,"2025-7-12",3000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into orders values (4,3,"2025-7-18",4500);
Query OK, 1 row affected (0.02 sec)

mysql> select*from customer;
+-------------+------------+-----------+
| customer_id | first_name | last_name |
+-------------+------------+-----------+
|           1 | niraj      | Taviyad   |
|           2 | karan      | Rabari    |
|           3 | harsh      | Rathod    |
|           4 | ishan      | Thakkar   |
+-------------+------------+-----------+
4 rows in set (0.00 sec)

mysql> select*from orders;
+----------+-------------+------------+--------------+
| order_id | customer_id | order_date | total_amount |
+----------+-------------+------------+--------------+
|        1 |           4 | 2025-07-06 |         2000 |
|        2 |           2 | 2025-07-12 |         1500 |
|        3 |           1 | 2025-07-12 |         3000 |
|        4 |           3 | 2025-07-18 |         4500 |
+----------+-------------+------------+--------------+
4 rows in set (0.00 sec)

select first_name,last_name,order_date,total_amount from customer inner join orders on customer.customer_id=orders.customer_id;
+------------+-----------+------------+--------------+
| first_name | last_name | order_date | total_amount |
+------------+-----------+------------+--------------+
| niraj      | Taviyad   | 2025-07-12 |         3000 |
| karan      | Rabari    | 2025-07-12 |         1500 |
| harsh      | Rathod    | 2025-07-18 |         4500 |
| ishan      | Thakkar   | 2025-07-06 |         2000 |
+------------+-----------+------------+--------------+
4 rows in set (0.00 sec)




create table department(department_id int primary key not null,department_name varchar(10) not null);
Query OK, 0 rows affected (0.07 sec)

mysql> create table employee(employee_id int primary key not null,first_name varchar(10) not null,last_name varchar(10) not null,department_id int not null,foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (0.08 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(10) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| first_name    | varchar(10) | NO   |     | NULL    |       |
| last_name     | varchar(10) | NO   |     | NULL    |       |
| department_id | int         | NO   | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into department values(1,"IT"),(2,"HR"),(3,"finance"),(4,"marketing");
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> insert into employee values(1,"kishan","thakkar",1),(2,"ronak","soni",2),(3,"harsh","rathod",2),(4,"jay","mishra",4);
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | IT              |
|             2 | HR              |
|             3 | finance         |
|             4 | marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select*from employee;
+-------------+------------+-----------+---------------+
| employee_id | first_name | last_name | department_id |
+-------------+------------+-----------+---------------+
|           1 | kishan     | thakkar   |             1 |
|           2 | ronak      | soni      |             2 |
|           3 | harsh      | rathod    |             2 |
|           4 | jay        | mishra    |             4 |
+-------------+------------+-----------+---------------+
4 rows in set (0.00 sec)

mysql>  select department_name,first_name from department left join employee on department.department_id=employee.department_id;
+-----------------+------------+
| department_name | first_name |
+-----------------+------------+
| IT              | kishan     |
| HR              | ronak      |
| HR              | harsh      |
| finance         | NULL       |
| marketing       | jay        |
+-----------------+------------+
5 rows in set (0.00 sec)